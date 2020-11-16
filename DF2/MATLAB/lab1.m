% USER INTERFACE
clc
clear all
close all

disp('Write the number of your working group');
n_group = inputdlg ('Group N.= ');
g = cellfun(@str2num,n_group);
disp('Write the 3 surnames of your working group');
a = inputdlg ('Write the 1st name= ','s');
b = inputdlg ('Write the 2nd name= ','s');
c = inputdlg ('Write the 3rd name= ','s');

disp('Check if it is correct, otherwise CTRL+C to stop the algorithm')
names_to_sort = [a;b;c]

disp('Your names are now alphabetically sorted');
sorted_names = sort(names_to_sort)

%filter parameters
p = mod(g,2);
x = strlength(sorted_names(1));
y = strlength(sorted_names(2));
N = (2^p)*[mod(x,2)+1]+6*p; %filter order
nb = mod(y,7)+8; %number of bits

sampling_frequency = inputdlg ('Write the sampling frequency fs (in Hz)= ');
fs = cellfun(@str2num,sampling_frequency);

disp('p=1 -> FIR filter; p=0 -> IIR filter');
if p==1 
    type = 'FIR filter';
   else
    type = 'IIR filter';
end

sprintf('Order %d - %d bits - %s - x=%d, y=%d, p=%d',N,nb,type,x,y,p)
sprintf('check parameters and press any key to continue')
pause

if p==1 
    my_fir_filter(fs,N,nb)
   else
    my_iir_filter(fs,N,nb)
end

fp=fopen('iir/result.txt','r');
Y=fscanf(fp,'%d');
fclose(fp);
THD=thd(Y)
%% 

