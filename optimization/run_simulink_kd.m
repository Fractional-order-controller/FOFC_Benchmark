% global K T1
% global iokp ioki iokd
% global lamda kd kp
% assignin('base','Kp',kp);
% assignin('base','Kd',kd);
% assignin('base','Lambda',lamda);
%
% assignin('base','ioKp',iokp);
% assignin('base','ioKi',ioki);
% assignin('base','ioKd',iokd);
% ioKp=iokp;
% ioKi=ioki;
% ioKd=iokd;

% assignin('base','tau',T1);
% assignin('base','k',K);
% k=K;tau=T1;

[t_time,x_state,y_out]=sim('model.slx',[0,20]);
%% draw step response comparison

h=plot(FOPD.Time,FOPD.Data,'-',IOPID.Time,IOPID.Data,'--');
% legend('FOPD','IOPID')
%legend(h,['FOPD: K=' num2str(K)],['IOPID: K=' num2str(K) ', I=' num2str(ioki)])
legend(h,['FOPD: ITAE=' num2str(ITAE_F.Data(end))],['IOPID: ITAE=' num2str(ITAE_I.Data(end))]);
%%
% % kp=Kp;
% % kd=Kd;
% % lamda=Lambda;
% 
% s=fotf('s');
% c_tf=kp*(1+kd*(s^lamda));
% p_tf=k/(tau*s+1)/s;
% sys_tf=c_tf*p_tf;
% %
% ioc_tf=ioKp+ioKi/s+ioKd*s;
% p_tf=k/(tau*s+1)/s;
% iosys_tf=ioc_tf*p_tf;
% %
% h1=figure(4);
% bode(sys_tf);
% 
% grid on
% hold on
% bode(iosys_tf);
% 
% lgd=legend('FOPD','IOPID');
% % hold off