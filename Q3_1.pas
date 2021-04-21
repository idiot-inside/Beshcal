program Q3_1;

const pi = 3.1415926;
var radius, area, circumference: real;

begin

    writeln('Analysis of Circle');
    write('Input the radius: ');
    read(radius);
    
    area:=pi*sqr(radius);
    circumference:=2*pi*radius;
    
    writeln('Area of the circle: ', area:6:2);
    writeln('Circumference of the circle: ', circumference:6:2)
end.