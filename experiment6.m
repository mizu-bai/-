% ʵ��6 ԭ�����չ��׷��ⶨ����ˮ�иƺ���

% ��ʼ��

clear; clc;

% ԭʼ����¼��

origin = table; % ����ԭʼ���ݱ��
origin.c = (0: 2: 10)'; % ��׼ҺŨ��
origin.A = [0, 0.006, 0.012, 0.018, 0.024, 0.030]'; % ��Ӧ����ȣ��ǵô˴������Լ�������Ŷ��

% ��׼���߻���

% �������

k = polyfit(origin.c, origin.A, 1);

% ��׼����

standard = table; % ������׼���߱��
standard.c = (0: 2: 10)'; % ��׼����Ũ�ȷ�Χ
standard.A = polyval(k, standard.c); % ��Ӧ�����

% ������������Ũ�����

Ax = 0.011; % δ֪������ȣ��ǵô˴������Լ�������Ŷ��
cx = (Ax - k(2)) / k(1); % ���ñ�׼���߷��Ƴ���ӦŨ��

% ��ͼ

plot(origin.c, origin.A, 'ro', standard.c, standard.A, 'b-', cx, Ax, 'g*');
xlabel('$$ c({Ca} ^ {2+}) / ({\mu g} \cdot {L} ^ {-1}) $$', 'Interpreter', 'latex');
ylabel('$$ A $$', 'Interpreter', 'latex');
title('�������׼����');

% ������������Ũ��������

fprintf('�������и�����Ũ��Ϊ%.2f��g/L\n', cx);
