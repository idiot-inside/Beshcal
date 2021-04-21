program Q3_6;

var num: integer;

function IsSquare(num: integer): boolean;

var result: real;

begin 
    
    result:=frac(sqrt(num));
    if result=0
    then IsSquare:=TRUE
    else IsSquare:=FALSE
    
end;

begin

    write('Enter an integer: ');
    readln(num);
    
    write('Is ', num, ' a perfect square? ',IsSquare(num))
    
end.