function s = vonMises(s1,s2,s3)
    s = sqrt(s1.^2 + s2.^2 + s3.^2 - s1.*s2 - s2.*s3 - s1.*s3);