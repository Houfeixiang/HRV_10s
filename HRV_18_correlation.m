clc;
clear;
close all;
global fs;
fs=1000;
%% 10秒为一个数据段，循环，求HRV的18个特征参数值。
%% 数据下载
load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11升压.mat')
%% 20180329
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29失血1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29失血2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29失血3.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29失血4.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29失血5.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29失血6.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29打药1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29打药2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180329/清洗后分段数据/3.29打药3.mat')

%% 20180411
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11升压.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11失血1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11失血2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11失血3.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11失血4.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11失血5.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11失血6.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11补液1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11补液2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180411/清洗后分段数据/4.11降压.mat')

%% 20180509
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180509/清洗后分段数据/5.09失血1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180509/清洗后分段数据/5.09失血2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180509/清洗后分段数据/5.09补液.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180509/清洗后分段数据/5.09降压1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180509/清洗后分段数据/5.09降压2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180509/清洗后分段数据/5.09降压3.mat')
%% 20180606(透射式)
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06升压1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06升压2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06升压3.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06升压整合.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06失血1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06失血2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06降压1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06降压2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06降压3.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06降压4.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06降压5.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06降压6.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06降压7.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/旧数据/20180606/清洗后分段数据/6.06降压8.mat')
% data=data(1:720000,:);
%% 20180703
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/升压1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/升压2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/升压3.1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/升压3.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/升压4.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/基线.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/失血1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/失血2.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/失血3.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/失血4.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/失血5.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/失血6.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/降压1.mat')
% load('/Users/houfeixiang/Downloads/军科院动物实验/动物实验数据/新数据/0703/透射式仪器测量数据/降压2.mat')
%% 
data=data(1:160000,:);
ECG=data(:,2);
BP=data(:,3);
[st_ll1,d1,uu1]=ECG250( ECG,fs);
T=10000;%取10s为一个周期。
n=length(data)/T;
wn=floor(n);
for wn=1:1:wn
   segment=data(((wn-1)*T+1):wn*T,:);
    ecg=segment(:,2);
    bp=segment(:,4);
   %% ecg
[st_ll,d,uu]=ECG250(ecg,fs);
%% bp
[BP]=BP250_3(bp,fs);
[p3,loc3]=findpeaks(BP,'MinPeakDistance',(min(diff(d))-20));
%% 两个R波之间BP只能有一个波峰，一个波谷。
s=1;
for i=1:1:length(d)-1
    m=1;
    num_min=[];
    for j=1:1:length(loc3)
        if loc3(j)>d(i)&&loc3(j)<d(i+1)
            num_min(m)=loc3(j);
            m=m+1;
        end
    end
    l_m=length(num_min);
    if l_m==1
        c3(i)=num_min;
    else
        c3(i)=0;
    end
end
c3(c3==0)=[];
%% 
% % % ecg=data(:,2);
% % % plot(ecg);
A=ecg;
N=length(A);
t=(0:N-1)/fs; %时间段（总样本数/ Fs）
% % figure;% ECG的原始信号图形。
% % plot(t,A,'r');
% % grid on;
% % title('ECG SIGNAL')             
% % xlabel('Time (s)')
% % ylabel('Amplitude (mv)')
%% 滤波和频谱
ecg_smooth=filter_lb(A,t);  %滤波
spectrum=FCG(A);  %原始心电频谱图
f_spectrum=f_FCG(ecg_smooth);  %滤波后心电频谱
[qrs_amp_raw,qrs_i_raw,delay]=pan_tompkin(A,fs,0);
RT=[];
N2=length(qrs_i_raw);
for i1=1:N2
     RT(i1)=(qrs_i_raw(i1)-1)/fs;
end

m=RT';               % converting rows in column;转换列中的行;
k=length(m);
rr2=[m(2:k)]*1000;       %s从第二点到最后一点的第二个数组;
rr1=[m(1:k-1)]*1000;    %从第一到第二个最后一个点的第一个数组
                                   % rr2＆rr1现在是等长的;
rr7 = rr2-rr1; 
% % % figure;
% % % subplot(211);plot(rr7);         %axis([0 600 200 1400])
% % % title('原始rr间期波形');
rr3 = clear_RR_abp(rr7);
% % % subplot(212);plot(rr3);         %axis([0 600 200 1400])
% % % title('异常点剔除后rr间期波形');
rr8=(rr3');

hr=60000./rr8;         % computate heart rate variation ;计算心率
                               % rr33=(rr3)';
% % % figure;
% % % hist(rr8,25);              % axis([450 900 0 200]);
% % % title('RR INTERVAL HISTOGRAM');
% % % xlabel('RR interval (ms)');
% % % ylabel('interval numbers');
k1=length(rr3);
rr4=rr3(2:k1); 
rr5=rr3(1:k1-1);
rr6=rr4-rr5;
% % % figure;
% % % hist(rr6,25); 
% % % axis([-400 400 0 500]);
% % % title('THE HISTOGRAM OF RR INTERVAL DIFFERENCE');
% % % xlabel('RR interval difference (ms)');
% % % ylabel('interval numbers');

% % % figure;   
% % % plot(rr5,rr4,'r*') %plot  R-R(n)(X-Axis) vs R-R(n-1)(Y-Axis)
% % % title('SCATTER DIAGRAM'), xlabel('RnRn+1 (ms)') ,ylabel('Rn+1Rn+2 (ms)')
%%axis([0 1400 0 1400]);
%% 时域
out1(wn)=SDNN(rr8);
%RR间期标准差

out2(wn)=HRVindex(rr8);
%RR间期的总个数除以RR间期直方图高度

out3(wn)=SDANN(rr8);
%RR间期平均值的标准差

out4(wn)=RMSSD(rr8);
%全程相邻RR间期之差的均方根

out5(wn)=SDNNindex(rr8);
%RR间期标准差的平均值

out6(wn)=SDSD(rr8);
%全程RR间期差的标准差

out7(wn)=NN50count(rr8);
%相邻RR间期差大于50ms的个数

out8(wn)=pNN50(rr8);
%NN50除以RR间期个数

out9(wn)=TINN(rr8);
%当使用最小方差的方法，以三角形来近似地描述NN间期的直方图时，所得到的近似三角形的底宽，单位 为ms。

%% 频域
A1(wn)=HF(rr8);
%高频段功率。

A2(wn)=HFn(rr8);
%归一化高频段功率

A3(wn)=LF(rr8);
%低频段功率

A4(wn)=LFdividesHF(rr8);
%低频段与高频段的比

A5(wn)=LFn(rr8);
%归一化低频率段功率

A6(wn)=VLF(rr8);
%超低频段功率

A7(wn)=totalpower(rr8);
%总功率谱

mean_c3(wn)=mean(BP(c3));
%10秒血压峰值的平均值 
end
