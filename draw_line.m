function draw_line(start,goal,speed,theta)
    %%%simulation%%%
    %define the speed
    epsilon = 0.2;
    current_position = start;
    dist = cal_dist(current_position,goal);
    direction = (goal - start)/dist;
    while dist > epsilon
        q = Ik(current_position,theta);
        current_position = current_position + speed*direction;
        dist = cal_dist(current_position,goal);
    end
end