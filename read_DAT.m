function [data,freq]=read_DAT(filepath)
delimiterIn=';';
headerlinesIn=30;
%read data
namelist=dir(strcat(filepath,'\*.DAT'));
nfile=length(namelist);
data=[];
for k=1:nfile
    A=importdata(strcat(filepath,'\',namelist(k).name),delimiterIn,headerlinesIn);
    data1=A.data(:,2)';
    data=[data;data1];
end

%freq
%A = importdata(strcat(filepath,'\',namelist(1).name),delimiterIn,headerlinesIn);
freq=A.data(:,1)'./1000000;
end