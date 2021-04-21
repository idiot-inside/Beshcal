program Q3_3;

var a1, a2, a3: char;

begin
    
    randomize;
    writeln('Random Guess');
    
    a1:=chr(random(4)+65);
    a2:=chr(random(4)+65);
    a3:=chr(random(4)+65);
    
    writeln('MC answer 1 = ', a1);
    writeln('MC answer 1 = ', a2);
    writeln('MC answer 1 = ', a3)
    
end.