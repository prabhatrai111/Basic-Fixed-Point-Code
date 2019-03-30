% PRABHAT KUMAR RAI --- EE18MTECH01005
% CSP ASSIGNMENT 2
% PROBLEM 2 -- CORRELATION

clear all; close all; clc; format long;
a = [-0.831662009587695 0.634029328751641 -0.767445067471676	1.21423064425930 -0.398089786809545	0.577773754381422 0.836673932101677	-0.308971047587158 1.58778525229245	-0.182021563971272];
b = [0.256258710000824 -0.299311523023751 1.18013824251201 -0.724526570403471 0.963365491184473 0.0611683879836982 -0.126424722362053 1.08772832230303 -0.743741290000000 1.08772832230147 ];
Z=xcorr(a,b);     %original correlation
A=[]; B=[];
for i=1:length(a)
    A1=round(a(i)*(2^14));
    A=[A A1];
end
A2=A/(2^14);
for i=1:length(b)
    B1=round(b(i)*(2^14));
    B=[B B1];
end
B2=B/(2^14);
[Z1 lags]=xcorr(A2,B2);  % fixed correlation
Z2=Z-Z1  % error between original correlation and fixed one
subplot(2,2,1); plot(lags,Z1);xlabel('lags'); ylabel('correlation'); title('correlation graph')
subplot(2,2,2); stem(Z2); ylabel('error'); title('error graph')