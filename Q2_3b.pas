program Q2_3b;

var num, hun, ten, one: integer;

begin

    write('Enter a two-digit number: ');
    readln(num);
    
    hun:= num div 100;
    ten:= (num-hun*100) div 10;
    one:= num mod 10;
    
    writeln('The hundredth digit is ', hun);
    writeln('The tenth digit is ', ten);
    writeln('The unit digit is ', one)
    
end.