clear all
I = imread('Week 3/V0_04Week3Run3.jpg');
q = imshow(I);
% c = improfile;
% S = sum(I,3);
%[~,idx] = max(I(360,:,3))
%[rows, columns] = find(S == max(S(:)));
% for a=1:720, b=1:1280;
 %   D(a,b) =sqrt(((a-rows(1,1)).^2)+((b-columns(1,1)).^2));
% end
for i=1:1280;
    D(i)=i;
end
% p = plot(D(:),I(12,:,1));
i=475;

% theoretical for the single slit 
W = 1;          % slit width mersure in centemeter 
d = 0.04;       % distance between slits
lambda = 0.09;   % the wavelenghth 
P = @(theta, W, lambda) (sinc(theta.*W./lambda)).^2;
lims = 0.78;
theta = linspace(-lims, lims, 1280);
y_s = P(theta, W, lambda);
theory = plot(theta, y_s)
plot(D(:),I(i,:,1),'red',D(:),I(i,:,2),'green',D(:),I(i,:,3),'blue', theta, y_s,'black')
%