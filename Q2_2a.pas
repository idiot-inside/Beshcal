program Q2_2a;

var ft, inch: integer;
var cm: real;

begin

    write('Enter your height (feet inches): ');
    read(ft);
    readln(inch);
    
    cm:=(ft*12+inch)*2.54;
    
    write('You are ', cm:6:2, ' cm tall')

end.