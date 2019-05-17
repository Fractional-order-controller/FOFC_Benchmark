gam=0.5;
Ts=0.01;
dfod=irid_fod(gam,Ts,5);
%% 

kp=2.6;
ki=0;
kd=1.631;
s=tf('s');
cd=kp+kd*dfod*s;

s=tf('s');
K=1.102; T1=0.17936;
p=K/(T1*s+1)/s;
pd=c2d(p,Ts,'tustin');%plant

phiz=cd*pd/(1+cd*pd);