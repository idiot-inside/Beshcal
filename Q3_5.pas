program Q3_5;

var deg_c, deg_f: real;

function Fahrenheit(deg_c: real): real;

begin
    Fahrenheit:=9/5*deg_c+32
end;

begin
    
    writeln('Celsius to Fahrenheit');
    write('Enter a temperature in degree Celsius: ');
    readln(deg_c);
    
    deg_f:=Fahrenheit(deg_c);
    
    write(deg_c:6:2, ' degree(s) Celsius is equal to ', deg_f:6:2, ' degree(s) Fahrenheit')
    
end.