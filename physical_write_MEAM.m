%%%Physical program to wirte MEAM%%%
clear all
speed = 0.05;
theta = pi/2;
%M
QM1 = cal_line([10,10],[10,13],speed,theta);
QM2 = cal_line([10,13],[12,10],speed,theta);
QM3 = cal_line([12,10],[13,13],speed,theta);
QM4 = cal_line([13,13],[13,10],speed,theta);
QM = [QM1;QM2;QM3;QM4]
%E
QE1 = cal_line([13,10],[16,10],speed,theta);
QE2 = cal_line([16,10],[13,10],speed,theta);
QE3 = cal_line([13,10],[13,11.5],speed,theta);
QE4 = cal_line([13,11.5],[16,11.5],speed,theta);
QE5 = cal_line([16,11.5],[13,11.5],speed,theta);
QE6 = cal_line([13,11.5],[13,13],speed,theta);
QE7 = cal_line([13,13],[16,13],speed,theta);
QE = [QE1;QE2;QE3;QE4;QE5;QE6;QE7];
%A
QA1 = cal_line([16,13],[18,13],speed,theta);
QA2 = cal_line([18,13],[16.5,9],speed,theta);
QA3 = cal_line([16.5,9],[17.5,11.5],speed,theta);
QA4 = cal_line([17.5,11.5],[18.5,11],speed,theta);
QA5 = cal_line([18.5,11],[17.5,13],speed,theta);
QA6 = cal_line([17.5,13],[19,9],speed,theta);
QA = [QA1;QA2;QA3;QA4;QA5;QA6];
%M
QMM1 = cal_line([19,9],[20,9],speed,theta);
QMM2 = cal_line([20,9],[20,13],speed,theta);
QMM3 = cal_line([20,13],[21,9],speed,theta);
QMM4 = cal_line([21,9],[22,13],speed,theta);
QMM5 = cal_line([22,13],[22,7],speed,theta);
QMM = [QMM1;QMM2;QMM3;QMM4;QMM5];
Q = [QM;QE;QA;QMM]
a=arduino;
s1=servo(a, 'D4');
s2=servo(a,'D7');
s3=servo(a,'D8');
%   writePosition(s1, 1);
q1=Q(:,1);
q2=Q(:,2);
q3=Q(:,3);
for i=1:length(Q)
     writePosition(s1, q1(i));
     q1(i)
     current_pos = readPosition(s1);
       writePosition(s2, q2(i));
         writePosition(s3, q3(i));
%           pause(0.01);
end