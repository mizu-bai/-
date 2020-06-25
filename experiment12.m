% ʵ��12 �����ܳ��������������ⶨ����ˮ�е�΢��п

% ��ʼ��

clear; clc;

% ԭʼ����¼��

origin = table; % ����ԭʼ���ݱ��
origin.c = (0.2: 0.2: 0.8)' * 4.0E-2 / 50; % ��׼ҺŨ��
origin.ip = [1.307, 4.842, 6.686, 8.791]' * 1E-5; % ��Ӧ������߶ȣ��ǵô˴������Լ�������Ŷ��

% ��׼���߻���

% �������

k = polyfit(origin.c, origin.ip, 1);

% ��׼����

standard = table; % ������׼���߱��
standard.c = (0: 0.2: 1)' * 4.0E-2 / 50; % ��׼����Ũ�ȷ�Χ
standard.ip = polyval(k, standard.c); % ��Ӧ������߶�

% ������п����Ũ�����

ipx = 5.115E-5; % δ֪��������߶ȣ��ǵô˴������Լ�������Ŷ��
cx = (ipx - k(2)) / k(1); % ���ñ�׼���߷��Ƴ���ӦŨ��

% ��ͼ

plot(origin.c, origin.ip, 'ro', standard.c, standard.ip, 'b-', cx, ipx, 'g*');
xlabel('$$ c/({mol} \cdot {L} ^ {-1}) $$', 'Interpreter','latex');
ylabel('$$ {I}_{p} / A $$', 'Interpreter','latex');
title('п�ܳ���׼����');

% ������п����Ũ��������

fprintf('��������п����Ũ��Ϊ%.2f*10^(-4)mol/L\n', cx * 1E4);
