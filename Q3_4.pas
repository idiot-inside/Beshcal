program Q3_4;

var inch, cm: real;

function Centimetre(bruh: real): real;

begin
    Centimetre:=bruh*2.54
end;

begin

    writeln('Inch to cm Calculator');
    write('Enter a value in inch: ');
    readln(inch);
    
    cm:=Centimetre(inch);
    
    writeln(inch:6:2, ' inch(es) is equal to ', cm:6:2)
end.