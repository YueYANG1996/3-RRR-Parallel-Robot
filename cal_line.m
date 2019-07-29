function Q = cal_line(start,goal,speed,theta)
    %%%%for physical%%%%
    epsilon = 0.2;
    current_position = start;
    dist = cal_dist(current_position,goal);
    direction = (goal - start)/dist;
    i = 1;
    Q = [];
    while dist > epsilon
        q = cal_Ik(current_position,theta);
        current_position = current_position + speed*direction;
        dist = cal_dist(current_position,goal);
        Q(i,:) = q;
        i = i + 1;
    end
end 