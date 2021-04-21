program Q3_2;

var bruh, result: char;
var num: integer;

begin;

    write('Enter a character: ');
    readln(bruh);
    write('Enter an integer: ');
    readln(num);
    
    result:=chr(ord(bruh)+num);
    
    write(num,' character after ', bruh,' is ', result)

end.