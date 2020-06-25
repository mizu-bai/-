% ʵ��4 ����ɫ�׷��ⶨˮ�������Ӻ���

% ��ʼ��

clear; clc;

% ԭʼ����¼��

origin = table; % ����ԭʼ���ݱ��
origin.c = [10, 20, 50, 100, 200]'; % ��׼ҺŨ��
origin.a = [185.698, 583.354, 1416.234, 3148.396, 5220.963]'; % ��Ӧ��������ǵô˴������Լ�������Ŷ��

% ��׼���߻���

% �������

k = polyfit(origin.c, origin.a, 1);

% ��׼����

standard = table; % ������׼���߱��
standard.c = (0: 10: 200)'; % ��׼����Ũ�ȷ�Χ
standard.a = polyval(k, standard.c); % ��Ӧ�����

% ������������Ũ�����

ax = 818.283; % δ֪����������ǵô˴������Լ�������Ŷ��
cx = (ax - k(2)) / k(1); % ���ñ�׼���߷��Ƴ���ӦŨ��

% ��ͼ

plot(origin.c, origin.a, 'ro', standard.c, standard.a, 'b-', cx, ax, 'g*');
xlabel('$$ c({Cl} ^ {-}) / ({mg} \cdot {L} ^ {-1}) $$', 'Interpreter', 'latex');
ylabel('$$ A({Cl} ^ {-}) / ({uS} \cdot {sec}) $$', 'Interpreter', 'latex');
title('�����ӱ�׼����');

% ������������Ũ��������

fprintf('��������������Ũ��Ϊ%.2fmg/L\n', cx);

