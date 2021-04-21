program Q2_5;

var kg: integer;
var m, bmi: real;

begin

    write('Enter your weight (kg): ');
    readln(kg);
    write('Enter your height (m): ');
    readln(m);
    
    bmi:= kg/(m*m);
    
    write('Your BMI is: ', bmi:6:2)
    
end.