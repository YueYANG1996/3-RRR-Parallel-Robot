function Q = cal_circle(center,r,theta)
    %%%physical%%%
    alpha = 0;
    i = 1;
    Q = [];
    for i = 1:100
        theta1 = pi/4;
        P1(1) = center(1) + r*sin(alpha);
        P1(2) = center(2) + r*cos(alpha);
        q = cal_Ik(P1,theta);
        alpha = alpha + pi/50;
        Q(i,:) = q;
        i = i + 1;
    end
end