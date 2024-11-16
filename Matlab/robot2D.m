clc;
close all;
clear all;
%%

% Load Robotics System Toolbox
robot = rigidBodyTree('DataFormat', 'column', 'MaxNumBodies', 2);

% Define each link as a rigid body with a joint
% Link 1
body1 = rigidBody('link1');
joint1 = rigidBodyJoint('joint1', 'revolute');
setFixedTransform(joint1, trvec2tform([0, 0, 0])); % Base at origin
joint1.JointAxis = [0 0 1]; % Rotation about z-axis
body1.Joint = joint1;
addBody(robot, body1, 'base');

% Link 2
body2 = rigidBody('link2');
joint2 = rigidBodyJoint('joint2', 'revolute');
setFixedTransform(joint2, trvec2tform([1, 0, 0])); % Length of link1
joint2.JointAxis = [0 0 1];
body2.Joint = joint2;
addBody(robot, body2, 'link1');

% % Add more links as needed
% % Link 3
% body3 = rigidBody('link3');
% joint3 = rigidBodyJoint('joint3', 'revolute');
% setFixedTransform(joint3, trvec2tform([1, 0, 0])); % Length of link2
% joint3.JointAxis = [0 0 1];
% body3.Joint = joint3;
% addBody(robot, body3, 'link2');
%%
% Set the joint angles (in radians)
% Define joint angles directly as a column vector
jointAngles = [pi/4; pi/6]; % 3 joint angles (in radians)

% Plot the manipulator
figure;
show(robot, jointAngles, 'Frames', 'on', 'PreservePlot', false);
xlim([-2, 2]);
ylim([-2, 2]);
title('2D Serial Manipulator');

% Display individual frames
hold on;
T1 = getTransform(robot, jointAngles, 'link1'); % Frame of link1
T2 = getTransform(robot, jointAngles, 'link2'); % Frame of link2
%T3 = getTransform(robot, jointAngles, 'link3'); % Frame of link3

% Use 'plotTransforms' to visualize frames as arrows
% plotTransforms([T1(1:3,4)'; T2(1:3,4)'], ...
%                [T1(1:3,1:3); T2(1:3,1:3)], ...
%                'FrameSize', 0.2);
% Adding labels for joints
text(T1(1,4), T1(2,4), 'O1', 'FontSize', 10, 'Color', 'r');
text(T2(1,4), T2(2,4), 'O2', 'FontSize', 10, 'Color', 'r');
% text(T3(1,4), T3(2,4), 'O3', 'FontSize', 10, 'Color', 'r');

% Draw an angle arc (example)
theta = linspace(0, pi/4, 50); % Example angle
x = 0.5 * cos(theta) + T1(1,4);
y = 0.5 * sin(theta) + T1(2,4);
plot(x, y, 'k--'); % Dashed line for angle indicator
