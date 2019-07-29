function alpha = cal_alpha(a,b,la,lp)
    up = la^2 + ((b(1)-a(1))^2 + (b(2) - a(2))^2) - lp^2;
    down = 2*sqrt((b(1)-a(1))^2 + (b(2) - a(2))^2)*la;
    k = up/down;
    alpha = acos(k);
end