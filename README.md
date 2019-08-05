# 3-RRR-Parallel-Robot
3-RRR Robot is a type of parallel robot which consists of three kinematic chains with three revolute joints in each chain. This paper studied the kinematic model of the 3-RRR robot including the FK and IK and compile the mathematical expression into MATLAB program to conduct the simulation. The workspace and singularity of 3-RRR manipulator were analyzed via simulation. The physical construction of the robot was done by laser cut and then using Arduino toolbox in MATLAB to realize the control of the robot. After debugging both the hardware and software, the 3-RRR robot arm could finally realize the function of writing simple words and drawing geometries. 

To watch the simulation and actual robot demo: https://www.yueyang.host/3-rrr

Function description:
IK -- the main function that conduct the inverse kinematics and the visualization process, the input is the path of end-point of the robot, the output is the simulation process and a sequsence of angles of each joints.

drawline and drawcircle: generate the path of the end-point and call the IK function to conduct the simulation

cal_line and cal_circle: these functions are for control of the actual robots, generate the angles for the servos via Arduino.
