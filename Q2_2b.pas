program Q2_2b;

var cm, ft, inch: integer;

begin

    write('Enter your height (in cm): ');
    readln(cm);
    
    inch:= round(cm/2.54);
    ft:= inch div 12;
    inch:= inch mod 12;
    

    write('You are ', ft, ' feet ', inch, ' inch(es) tall')
    
end.