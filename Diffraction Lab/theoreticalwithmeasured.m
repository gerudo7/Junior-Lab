clear all
I = imread('Useful Data/V0_04.jpg');
    
for i=1:1280;
    D(i)=i;
end
i=475;

for n=1:1280;
    R(n) = I(i,n,1);
    G(n) = I(i,n,2);
    B(n) = I(i,n,3);
end
% theoretical for the single slit 
% units are in [m]
W = 4*10^-5;          % slit width
lambda = 405*10^-9;  % wavelenghth
s = 1.6*10^-6;          % pixel size
l = 9.08*10^-2;          % distance to CCD from slit
A = 2*10^2;          % guess for intensity theory coefficient
q = 9;              % guess for the angle offset
for i=1:1280;
    theta(i) = atan((D(i)-640)*s/l);
end
P = @(theta, W, lambda) (sinc(theta.*W./lambda)).^2;
lims = 0.78;
theta = linspace(-lims, lims, 1280);
y_s = P(theta, W, lambda);
theory = plot(theta, y_s);
for i=1:1280;
    th_y(i) = A*sinc(theta(i)*W/lambda-q)^2;
end
plot(D(:),R(:),'red',D(:),G(:),'green',D(:),B(:),'blue',D(:),th_y(:),'black')