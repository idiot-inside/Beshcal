program Q2_1;

var int1, int2: integer;

begin

    write('Enter an integer: ');
    readln(int1);
    write('Enter another integer: ');
    readln(int2);
    
    writeln(int1, ' + ', int2, ' = ', int1+int2);
    writeln(int1, ' - ', int2, ' = ', int1-int2);
    writeln(int1, ' * ', int2, ' = ', int1*int2);
    writeln(int1, ' div ', int2, ' = ', int1 div int2);
    writeln(int1, ' mod ', int2, ' = ', int1 mod int2)
end.