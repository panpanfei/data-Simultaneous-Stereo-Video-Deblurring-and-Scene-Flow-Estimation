function Q = crossTerm_flowDisp_1(S,D,F,P1)
% project points to Ir{2} via left sparse flow observations + SGM 

  nS = numel(S);
  [h,w]=size(D);
  Fu = F(:,:,1); % u_flow
  Fv = F(:,:,2);
p1=P1(:,:,1);
p2=P1(:,:,2);
  Fi = zeros(h,w);
  iD = sub2ind([h,w],p1(:),p2(:));
  Fi(iD) = 1;

  Q_x = zeros(h,w);
  Q_y = zeros(h,w);

  for iS = 1:nS

    % project points to Il{2} via left flow
    
    % - find valid flow observations
    valid = Fi(S(iS).idx)>0;

    % - get flow from features
    fu = Fu(S(iS).idx(valid));
    fv = Fv(S(iS).idx(valid));

    % - project img coordinates
    uv2 = [S(iS).u(valid)+fu,S(iS).v(valid)+fv];% (x_p+u,y_p+v)
    uv2_int = round(uv2);

    u1 = S(iS).u(valid); % x_p
    v1 = S(iS).v(valid);

    % find valid disparity observations
    idx_d = sub2ind(size(D),uv2_int(:,2),uv2_int(:,1));
    valid = D(idx_d)>0;

    % avoid strange behaviour in case of only one invalid observation
    if sum(valid) == 0, continue; end

    % project points to Ir{2} via D{2}
    u4 = uv2(valid,1)-D(idx_d(valid));
    v4 = uv2(valid,2);
    Q_x(S(iS).idx) = u4;
    Q_y(S(iS).idx) = v4;

  end
  Q = cat(3,Q_x,Q_y,ones(size(Q_x)));

end