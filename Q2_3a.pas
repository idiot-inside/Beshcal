program Q2_3a;

var num, ten, one: integer;

begin

    write('Enter a two-digit number: ');
    readln(num);
    
    ten:= num div 10;
    one:= num mod 10;
    
    writeln('The tenth digit is ', ten);
    writeln('The unit digit is ', one)
    
end.