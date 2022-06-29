program Q12_1;

type CArray = array [1..20] of char;

var Infile: text;
    TLine: CArray;
    FName: string;
    Numchar: integer;

procedure rev(num: integer; var line: CArray);
var pos,i: integer;
    swap: char;
begin
    for i:= 1 to (num div 2) do
        begin
            pos:=num-i+1;
            swap:=line[i];
            line[i]:=line[pos];
            line[pos]:=swap
        end;
end;

begin
    write('Name of the file:');
    
    readln(FName);
    assign(Infile,FName);
    reset(Infile);
    writeln('Contents in reversed order:');
    while not EOF(Infile) do
    begin
    Numchar:=0;
        while not Eoln(Infile) do
        begin
            Numchar:=Numchar+1;
            read(Infile,TLine[Numchar]);
        end;
        rev(Numchar,TLine);
        writeln(TLine);
        readln(Infile)
    end;
    close(Infile)
end.