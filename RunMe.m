%  MATLAB Source Codes for the book "Cooperative Decision and Planning for
%  Connected and Automated Vehicles" published by Mechanical Industry Press
%  in 2020.
% ��������������Эͬ������滮�������鼮���״���
%  Copyright (C) 2020 Bai Li
%  2020.02.07
% ==============================================================================
%  ������ 4.1.1С��.����QP��ָ�������ɱ�ѡ���⹹�������
% ==============================================================================
%  ��ע��
%  1. ��ǰ�������һ����AMPL��Ҫ�������н��ܵķ�ʽ����.
%  2. �÷��������������ʧ�ܣ�������ٶȿ�.
%  3. �÷�����������һ������ָ���ߵķ�������ȫ�������ڽṹ����·�ϵĹ켣�滮��·���滮.
% ==============================================================================
clear all; close all; clc
warning off

distance = 12; % ��ʹ��ȫ����AMPLʱ���Խ��ò������õø�����Ѱ�AMPL��300��������
delta_s = 1.0;
global waypoints
waypoints = GenerateRandomWaypoints(distance, delta_s);
WriteWaypointsInFile(waypoints);

!ampl rr.run
IllustrateSolution();