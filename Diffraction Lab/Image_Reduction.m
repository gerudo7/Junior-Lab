I = imread('Useful Data/V0_16.jpg');

W = 1;          % slit width mersure in centemeter 
d = 0.04;       % distance between slits
lambda = 0.09;  % the wavelenght
s = 1;          % pixel size
l = 1;          % distance to CCD from slit

D=zeros(1,1280);
theta=zeros(1,1280);
theory=zeros(1,1280);

for i=1:1280;
    D(i)=i;
    theta(i) = atan((i-640)*s/l);
    theory(i) = (sinc(theta(i)*W/lambda))^2;
end
%Select your pixel row with i.
i=300;
%plot(D(:),I(i,:,1),'red',D(:),I(i,:,2),'green',D(:),I(i,:,3),'blue',D(:),theory(:),'black')
plot(theta(:),theory(:))