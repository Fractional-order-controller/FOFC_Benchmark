function [itae_out] = obj_fun(wb,wh)
%OBJ_FUN �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
disp(wh);
assignin('base','wb',wb);
assignin('base','wh',wh);
sim('../Models/Quadrotor_Controller.slx');
itae_out=itae.Data(end);
disp(vpa(itae.Data(end)));
end

