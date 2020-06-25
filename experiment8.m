% ʵ��8 ����ɼ�ӫ����׷��ⶨ��˾ƥ����ˮ���Ậ��

%{
    ���ȵ����Լ���ʵ�����������д˴��룡����

    ��Ҫ������������£�

        Emission: Emission.WaveLength, Emission.Intensity
        Excitation: Excitation.WaveLength, Excitation.Intensity
        Standard: Standard.Conc, Standard.Int
        k: [k1, k2]
        Sample: Sample.Conc, Standard.Int

    ������'expriment8_data'Ŀ¼��
%}

% �������ͼ

figure(1);

plot(Emission.Wavelength, Emission.Intensity);
title('�������ͼ��Ex=312.0nm��');
xlabel('���䲨����nm��');
ylabel('ӫ��ǿ��');

% ��������ͼ

figure(2);

plot(Excitation.Wavelength, Excitation.Intensity);
title('��������ͼ��Em=445.0nm��');
xlabel('����������nm��');
ylabel('ӫ��ǿ��');

% ��׼���߻��Ƽ����������

figure(3);

% ��׼����

Standard = table; % ������׼���߱��
Standard.Concs = 0: 0.1: 1.6; % ��׼����Ũ�ȷ�Χ
Standard.Ints = polyval(k, Standard.Concs); % ��Ӧӫ��ǿ��

% ��ͼ

plot(Origin.Conc, Origin.Int, 'ro', Standard.Concs, Standard.Ints, 'b-', Sample.Conc, Sample.Int, '*');
xlabel('$$ c / (\mu g \cdot {mL} ^ {-1})$$', 'Interpreter', 'latex');
ylabel('Intensity');
title('��׼����');

% ������ˮ����Ũ�����

fprintf('��������ˮ�����Ũ��Ϊ%.2f��g/mL\n', Sample.Conc);
