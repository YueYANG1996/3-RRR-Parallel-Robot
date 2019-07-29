function draw_circle(center,r,theta)
    %%%simulation%%%%
%     center = [15,10];
%     r = 5;
%     theta = pi/2;
    alpha = 0;
    for i = 1:100
        theta1 = pi/4;
        P1(1) = center(1) + r*sin(alpha);
        P1(2) = center(2) + r*cos(alpha);
        q = Ik(P1,theta);
        alpha = alpha + pi/50;
    end
end