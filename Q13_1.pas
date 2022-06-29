program Q13_1;

var Infile: text;
    Term: array of string;
    num: integer;
    target: string;

procedure InputData(var num: integer);
var
begin
    assign(Infile, 'computer.txt');
    reset(Infile);
    num:=1;
    while not eof(Infile) do
        begin
            while not eoln do
                begin
                    readln(Infile, Term[num]);
                    num:=num+1
                end;
            readln(Infile)
        end;
    close(Infile)
end;

procedure Search(target: string, num: integer);
var
begin

end;

begin
    InputData(num);
    write('Enter a computer term: ');
    readln(target);
    if Search(target, num)
        then writeln(target, ' is on the list.');
        else writeln(target, ' is not on the list.')
end.