%define a bunch of array sizes...
sinthetaG0_04 = zeros(1,34);
thetaG0_04 = zeros(1,34);
tanthetaG0_04 = zeros(1,34);
sG0_04 = zeros(1,34);

sinthetaG0_08 = zeros(1,7);
thetaG0_08 = zeros(1,7);
tanthetaG0_08 = zeros(1,7);
sG0_08 = zeros(1,7);

sinthetaR0_04 = zeros(1,7);
thetaR0_04 = zeros(1,7);
tanthetaR0_04 = zeros(1,7);
sR0_04 = zeros(1,7);

sinthetaG0_16 = zeros(1,3);
thetaG0_16 = zeros(1,3);
tanthetaG0_16 = zeros(1,3);
sG0_16 = zeros(1,3);

sinthetaR0_16 = zeros(1,3);
thetaR0_16 = zeros(1,3);
tanthetaR0_16 = zeros(1,3);
sR0_16 = zeros(1,3);

sinthetaV0_04 = zeros(1,2);
thetaV0_04 = zeros(1,2);
tanthetaV0_04 = zeros(1,2);
sV0_04 = zeros(1,2);

sinthetaV0_08 = zeros(1,2);
thetaV0_08 = zeros(1,2);
tanthetaV0_08 = zeros(1,2);
sV0_08 = zeros(1,2);

sinthetaV0_16 = zeros(1,5);
thetaV0_16 = zeros(1,5);
tanthetaV0_16 = zeros(1,5);
sV0_16 = zeros(1,5);

sinthetaR0_08 = zeros(1,9);
thetaR0_08 = zeros(1,9);
tanthetaR0_08 = zeros(1,9);
sR0_08 = zeros(1,9);

%define the arrays. Because we have different amounts of data per set, the
%loops are a bit odd.
for i=1:34
    sinthetaG0_04(i) = G0_04{i,1}*532/40000;
    thetaG0_04(i) = asin(sinthetaG0_04(i));
    tanthetaG0_04(i) = tan(thetaG0_04(i));
    sG0_04(i) = 9.08*tanthetaG0_04(i)/G0_04{i,3};
end
for i=1:7
    sinthetaG0_08(i) = G0_08{i,1}*532/80000;
    thetaG0_08(i) = asin(sinthetaG0_08(i));
    tanthetaG0_08(i) = tan(thetaG0_08(i));
    sG0_08(i) = 9.08*tanthetaG0_08(i)/G0_08{i,3};
    
    sinthetaR0_04(i) = R0_04{i,1}*650/40000;
    thetaR0_04(i) = asin(sinthetaR0_04(i));
    tanthetaR0_04(i) = tan(thetaR0_04(i));
    sR0_04(i) = 9.08*tanthetaR0_04(i)/R0_04{i,3};
end
for i=1:3
    sinthetaG0_16(i) = G0_16{i,1}*532/160000;
    thetaG0_16(i) = asin(sinthetaG0_16(i));
    tanthetaG0_16(i) = tan(thetaG0_16(i));
    sG0_16(i) = 9.08*tanthetaG0_16(i)/G0_16{i,3};
    
    sinthetaR0_16(i) = R0_16{i,1}*650/160000;
    thetaR0_16(i) = asin(sinthetaR0_16(i));
    tanthetaR0_16(i) = tan(thetaR0_16(i));
    sR0_16(i) = 9.08*tanthetaR0_16(i)/R0_16{i,3};
end
for i=1:2
    sinthetaV0_04(i) = V0_04{i,1}*405/40000;
    thetaV0_04(i) = asin(sinthetaV0_04(i));
    tanthetaV0_04(i) = tan(thetaV0_04(i));
    sV0_04(i) = 9.08*tanthetaV0_04(i)/V0_04{i,3};
    
    sinthetaV0_08(i) = V0_08{i,1}*405/80000;
    thetaV0_08(i) = asin(sinthetaV0_08(i));
    tanthetaV0_08(i) = tan(thetaV0_08(i));
    sV0_08(i) = 9.08*tanthetaV0_08(i)/V0_08{i,3};
end
for i=1:5
    sinthetaV0_16(i) = V0_16{i,1}*405/160000;
    thetaV0_16(i) = asin(sinthetaV0_16(i));
    tanthetaV0_16(i) = tan(thetaV0_16(i));
    sV0_16(i) = 9.08*tanthetaV0_16(i)/V0_16{i,3};
end
for i=1:9
    sinthetaR0_08(i) = R0_08{i,1}*650/80000;
    thetaR0_08(i) = asin(sinthetaR0_08(i));
    tanthetaR0_08(i) = tan(thetaR0_08(i));
    sR0_08(i) = 9.08*tanthetaR0_08(i)/R0_08{i,3};
end