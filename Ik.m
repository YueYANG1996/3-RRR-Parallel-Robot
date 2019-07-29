function q = Ik(P,theta)
%%%% Simulation %%%%%%%
    %Define Plot Area
    xlim([-10 50])
    ylim([-20 50])
    axis equal
    %Define Parameters la is the active link;
    %lp is the passive link
    %b is the joint center
    %rp is the radius of the triangle
    h1 = findobj('type','line');
    delete(h1);
    la1 = 11.25;
    la2 = 11.25;
    la3 = 11.25;
    lp1 = 18.75;
    lp2 = 18.75;
    lp3 = 18.75;
    b3 = [0, 0];
    b1 = [30, 0];
    b2 = [15, 15*sqrt(3)];
    rp = 6;
    %Draw joint center
    scatter(b1(1),b1(2),'k','filled');
    scatter(b2(1),b2(2),'k','filled');
    scatter(b3(1),b3(2),'k','filled');
    scatter(P(1),P(2),'b','filled');
    hold on
    a1x = P(1) + rp*cos(theta - pi/6);
    a1y = P(2) + rp*sin(theta - pi/6);
    a1 = [a1x, a1y];
    h2 = scatter(a1x,a1y,'r','filled');
    a2x = P(1) + rp*cos(theta + pi/2);
    a2y = P(2) + rp*sin(theta + pi/2);
    a2 = [a2x, a2y];
    h3 = scatter(a2x,a2y,'r','filled');
    a3x = P(1) + rp*cos(theta + 7*pi/6);
    a3y = P(2) + rp*sin(theta + 7*pi/6);
    a3 = [a3x, a3y];
    h4 = scatter(a3x,a3y,'r','filled');
    phi1 = atan2(a1(2) - b1(2), a1(1) - b1(1));
    phi2 = atan2(a2(2) - b2(2), a2(1) - b2(1));
    phi3 = atan2(a3(2) - b3(2), a3(1) - b3(1));
    alpha1 = cal_alpha(a1,b1,la1,lp1);
    alpha2 = cal_alpha(a2,b2,la2,lp2);
    alpha3 = cal_alpha(a3,b3,la3,lp3);
    q1 = phi1 - alpha1;
    q2 = phi2 - alpha2;
    q3 = phi3 - alpha3;
    e1x = b1(1) + la1*cos(q1);
    e1y = b1(2) + la1*sin(q1);
    h5 = scatter(e1x,e1y,'b','filled');
    e1 = [e1x, e1y];
    e2x = b2(1) + la2*cos(q2);
    e2y = b2(2) + la2*sin(q2);
    h6 = scatter(e2x,e2y,'b','filled');
    e2 = [e2x, e2y];
    e3x = b3(1) + la3*cos(q3);
    e3y = b3(2) + la3*sin(q3);
    h7 = scatter(e3x,e3y,'b','filled');
    e3 = [e3x, e3y];
    plot ([e1(1) b1(1)],[e1(2) b1(2)],'k');
    plot ([e2(1) b2(1)],[e2(2) b2(2)],'k');
    plot ([e3(1) b3(1)],[e3(2) b3(2)],'k');
    plot ([e1(1) a1(1)],[e1(2) a1(2)],'k');
    plot ([e2(1) a2(1)],[e2(2) a2(2)],'k');
    plot ([e3(1) a3(1)],[e3(2) a3(2)],'k');
    plot ([a2(1) a1(1)],[a2(2) a1(2)],'k');
    plot ([a2(1) a3(1)],[a2(2) a3(2)],'k');
    plot ([a1(1) a3(1)],[a1(2) a3(2)],'k');
    q = [q1 q2 q3];
    drawnow
    h = [h2, h3, h4, h5, h6, h7]
    delete(h);
end