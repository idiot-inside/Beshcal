program Q2_4;

var big, small, ppl: integer;

begin

    write('Enter the number of customers: ');
    readln(ppl);
    
    big:= ppl div 6;
    small:= round((ppl-6*(ppl div 6))/2);
    
    writeln('Large table required: ', big);
    writeln('Small table required: ', small)
    
end.