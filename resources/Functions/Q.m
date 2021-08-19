function q = Q(b,h,tf,tw)
    A1 = tf*b;
    y1 = h/2-tf/2;
    A2 = tw*(h/2-tf);
    y2 = (h/2-tf)/2
    q = A1*y1 + A2*y2;