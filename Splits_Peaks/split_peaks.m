clear all;
close all;
clc;

%% import all data
eda1 = csvread('Track1_eq1_eda_CS.csv');   %% bad equalization eda data
eda2 = csvread('Track1_eq2_eda_CS.csv');     %%clipping equalization eda data
eda3 = csvread('Track1_eq3_eda_CS.csv');   %% flat response equalization eda data
eda4 = csvread('Track1_eq4_eda_CS.csv');    %% flat response+3kHz equalization eda data

tag1=csvread('tags1.csv');    %%bad equalization tags
tag2=csvread('tags2.csv');    %% clipping equalization tags
tag3=csvread('tags3.csv');    %%flat response equalization tags
tag4=csvread('tags4.csv');     %%flat response+3khz equalization tags

%%bad equalization 
tag_start_initial=tag1(1)*4    % % first row of tag file = initial time
tag_start_Ref1=tag1(1)*4-tag_start_initial+1 %%sample at which the ref1 starts
tag_stop_Ref1=tag1(2)*4-tag_start_initial+1  %%sample at which the ref1 stops 
tag_start_Q1=tag1(3)*4-tag_start_initial+1   %%sample at which the Q1 starts
tag_stop_Q1=tag1(4)*4-tag_start_initial+1   %%sample at which the Q1 stops
tag_start_Ref2=tag1(5)*4-tag_start_initial+1  %%sample at which the ref2 starts
tag_stop_Ref2=tag1(6)*4-tag_start_initial+1     %%sample at which the ref2 stops
tag_start_Q2=tag1(7)*4-tag_start_initial+1      %%sample at which the q2 starts
tag_stop_Q2=tag1(8)*4-tag_start_initial+1      %%sample at which the q2 stops
csvwrite('S11_Track1_eq1_eda_CS_ref1.csv',eda1(tag_start_Ref1:tag_stop_Ref1))  %% save ref1 data
csvwrite('S11_Track1_eq1_eda_CS_Q1.csv',eda1(tag_start_Q1:tag_stop_Q1))        %%save Q1 data
csvwrite('S11_Track1_eq1_eda_CS_ref2.csv',eda1(tag_start_Ref2:tag_stop_Ref2))   %%save ref2 data
csvwrite('S11_Track1_eq1_eda_CS_Q2.csv',eda1(tag_start_Q2:tag_stop_Q2))          %%save Q2 data
csvwrite('S11_Track1_eq1_eda_CS_ref1.txt',eda1(tag_start_Ref1:tag_stop_Ref1))  %% save ref1 data
csvwrite('S11_Track1_eq1_eda_CS_Q1.txt',eda1(tag_start_Q1:tag_stop_Q1))        %%save Q1 data
csvwrite('S11_Track1_eq1_eda_CS_ref2.txt',eda1(tag_start_Ref2:tag_stop_Ref2))   %%save ref2 data
csvwrite('S11_Track1_eq1_eda_CS_Q2.txt',eda1(tag_start_Q2:tag_stop_Q2))          %%save Q2 data


%%clipping
tag_start_initial=tag2(1)*4    % first row of tag file = initial time
tag_start_Ref1=tag2(1)*4-tag_start_initial+1 %same as bad equalization
tag_stop_Ref1=tag2(2)*4-tag_start_initial+1
tag_start_Q1=tag2(3)*4-tag_start_initial+1
tag_stop_Q1=tag2(4)*4-tag_start_initial+1
tag_start_Ref2=tag2(5)*4-tag_start_initial+1
tag_stop_Ref2=tag2(6)*4-tag_start_initial+1
tag_start_Q2=tag2(7)*4-tag_start_initial+1
tag_stop_Q2=tag2(8)*4-tag_start_initial+1
csvwrite('S11_Track1_eq2_eda_CS_ref1.csv',eda2(tag_start_Ref1:tag_stop_Ref1))
csvwrite('S11_Track1_eq2_eda_CS_Q1.csv',eda2(tag_start_Q1:tag_stop_Q1))
csvwrite('S11_Track1_eq2_eda_CS_ref2.csv',eda2(tag_start_Ref2:tag_stop_Ref2))
csvwrite('S11_Track1_eq2_eda_CS_Q2.csv',eda2(tag_start_Q2:tag_stop_Q2))
csvwrite('S11_Track1_eq2_eda_CS_ref1.txt',eda2(tag_start_Ref1:tag_stop_Ref1))
csvwrite('S11_Track1_eq2_eda_CS_Q1.txt',eda2(tag_start_Q1:tag_stop_Q1))
csvwrite('S11_Track1_eq2_eda_CS_ref2.txt',eda2(tag_start_Ref2:tag_stop_Ref2))
csvwrite('S11_Track1_eq2_eda_CS_Q2.txt',eda2(tag_start_Q2:tag_stop_Q2))

%%Flat Response
tag_start_initial=tag3(1)*4    % first row of tag file = initial time 
tag_start_Ref1=tag3(1)*4-tag_start_initial+1   %same as bad equalization
tag_stop_Ref1=tag3(2)*4-tag_start_initial+1
tag_start_Q1=tag3(3)*4-tag_start_initial+1
tag_stop_Q1=tag3(4)*4-tag_start_initial+1
tag_start_Ref2=tag3(5)*4-tag_start_initial+1
tag_stop_Ref2=tag3(6)*4-tag_start_initial+1
tag_start_Q2=tag3(7)*4-tag_start_initial+1
tag_stop_Q2=tag3(8)*4-tag_start_initial+1
csvwrite('S11_Track1_eq3_eda_CS_ref1.csv',eda3(tag_start_Ref1:tag_stop_Ref1))
csvwrite('S11_Track1_eq3_eda_CS_Q1.csv',eda3(tag_start_Q1:tag_stop_Q1))
csvwrite('S11_Track1_eq3_eda_CS_ref2.csv',eda3(tag_start_Ref2:tag_stop_Ref2))
csvwrite('S11_Track1_eq3_eda_CS_Q2.csv',eda3(tag_start_Q2:tag_stop_Q2))
csvwrite('S11_Track1_eq3_eda_CS_ref1.txt',eda3(tag_start_Ref1:tag_stop_Ref1))
csvwrite('S11_Track1_eq3_eda_CS_Q1.txt',eda3(tag_start_Q1:tag_stop_Q1))
csvwrite('S11_Track1_eq3_eda_CS_ref2.txt',eda3(tag_start_Ref2:tag_stop_Ref2))
csvwrite('S11_Track1_eq3_eda_CS_Q2.txt',eda3(tag_start_Q2:tag_stop_Q2))

%%Flat Response+3kHz
tag_start_initial=tag4(1)*4    % % first row of tag file = initial time 
tag_start_Ref1=tag4(1)*4-tag_start_initial+1  %same as bad equalization
tag_stop_Ref1=tag4(2)*4-tag_start_initial+1
tag_start_Q1=tag4(3)*4-tag_start_initial+1
tag_stop_Q1=tag4(4)*4-tag_start_initial+1
tag_start_Ref2=tag4(5)*4-tag_start_initial+1
tag_stop_Ref2=tag4(6)*4-tag_start_initial+1
tag_start_Q2=tag4(7)*4-tag_start_initial+1
tag_stop_Q2=tag4(8)*4-tag_start_initial+1
csvwrite('S11_Track1_eq4_eda_CS_ref1.csv',eda4(tag_start_Ref1:tag_stop_Ref1))
csvwrite('S11_Track1_eq4_eda_CS_Q1.csv',eda4(tag_start_Q1:tag_stop_Q1))
csvwrite('S11_Track1_eq4_eda_CS_ref2.csv',eda4(tag_start_Ref2:tag_stop_Ref2))
csvwrite('S11_Track1_eq4_eda_CS_Q2.csv',eda4(tag_start_Q2:tag_stop_Q2))
csvwrite('S11_Track1_eq4_eda_CS_ref1.txt',eda4(tag_start_Ref1:tag_stop_Ref1))
csvwrite('S11_Track1_eq4_eda_CS_Q1.txt',eda4(tag_start_Q1:tag_stop_Q1))
csvwrite('S11_Track1_eq4_eda_CS_ref2.txt',eda4(tag_start_Ref2:tag_stop_Ref2))
csvwrite('S11_Track1_eq4_eda_CS_Q2.txt',eda4(tag_start_Q2:tag_stop_Q2))

