function [s1,s2,s3] = principales(sz,txz)
    s1 = sz/2 + sqrt((sz/2).^2 +txz.^2);%s(1);
    s2 = 0;
    s3 = sz/2 - sqrt((sz/2).^2 +txz.^2);%s(3);