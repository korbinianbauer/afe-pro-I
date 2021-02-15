function out = angleFilter(a, b, coefficient)

    sin_comp = coefficient * sin(a) + (1-coefficient) * sin(b);
    cos_comp = coefficient * cos(a) + (1-coefficient) * cos(b);
    out = atan2(sin_comp, cos_comp);

    PI = 3.141592653;
%     if (abs(a-b) > PI)
%         out = coefficient * (a + 2*PI) + (1 - coefficient) * b;
%     else
%         out = coefficient * a + (1 - coefficient) * b;
%     end
    
    out = mod(out, 2*PI);
end