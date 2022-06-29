program linearsearch;

type ExamType = record
                    Name: string[30];
                    Mark: 1..100
                end;

var Student: array[1..100] of ExamType;
    position, Num: integer;

procedure Sort;
var i, count, swapmark: integer;
    swapname: string;
begin
    for i:= 2 to Num do
        begin
            count:= i;
                while (Student[count].Name > Student[count-1].Name) and (count>1) do
                        begin
                            swapname:= Student[count].Name;
                            swapmark:= Student[count].Mark;
                            Student[count].Name:= Student[count-1].Name;
                            Student[count].Mark:= Student[count-1].Mark;
                            Student[count-1].Name:= swapname;
                            Student[count-1].Mark:= swapmark;
                            count:= count-1
                        end;
        end;
end;

procedure InputData;
var Examfile: text;
    i,count: integer;
    fileName: string;
begin
    write('Assign a file(Max 100 record): ');
    readln(fileName);
    assign(Examfile, fileName);
    reset(Examfile);
    count:=0;
    Num:=0;
    while not eof(Examfile) do
    begin
        count:= count+1;
        Num:=Num+1;
        with Student[count] do
        begin
            readln(Examfile, Name);
            readln(Examfile, Mark)
        end;
    end;
    close(Examfile);
    Sort;
    for i:=1 to count do
    writeln(Student[i].Name, ' ':(15-length(Student[i].Name)), Student[i].Mark);
    writeln('Number of record: ', Num)
end;

procedure Search(var index: integer);
var target: string;
    found, notfound: boolean;
    count, first, last, mid: integer;
begin
    repeat
    write('Enter name of student(first letter should be capital): ');
    readln(target)
    until (copy(target,1,1) >= 'A') and (copy(target,1,1) <= 'Z');
    found:= false;
    count:=0;
    index:=0;
    first:=1;
    last:=Num;
    repeat
        count:= count+1;
        mid:= (last+first) div 2;
        if Student[mid].Name = target
            then begin
                    found:= true;
                    index:=mid
                 end
            else if Student[mid].Name < target
                    then last:=mid-1
            else if Student[mid].Name > target
                    then first:=mid+1
    until (found=true) or (last < first);
    writeln('Number of iteration: ', count)
end;

procedure DisplayResult(index: integer);
begin
    if (index=0)
        then writeln('Record not found!')
        else with Student[index] do
            begin
                writeln('Record found!');
                writeln('Student name = ', Name);
                writeln('Exam mark = ', Mark)
            end;
end;

begin
    InputData;
    Search(position);
    DisplayResult(position)
end.