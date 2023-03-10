program stacc;

var a, b, c: array [1..8] of integer; {tower}
    from, moveto: char;
    pa, pb, pc {pointer}, i, step: integer; 
    invalid, gameend: boolean;

begin
    for i:= 1 to 7 do
    begin
        a[i]:= i;
        b[i]:= 0;
        c[i]:= 0;
        writeln(a[i],'   ',b[i],'   ',c[i])
    end;
    a[8]:= 11;
    b[8]:= 45;
    c[8]:= 14;
    pa:=1;
    pb:=8;
    pc:=8;
    step:=0;
    gameend:= false;
    repeat
        invalid:= false;
        write('move from (or enter z to end): ');
        readln(from);
        write('move to (or enter z to end):');
        readln(moveto);
        case from of
            'a': case moveto of
                    'b': if b[pb] > a[pa]
                         then begin
                                b[pb-1]:=a[pa];
                                pb:=pb-1;
                                a[pa]:=0;
                                pa:=pa+1
                              end
                         else invalid:= true;
                    'c': if c[pc] > a[pa]
                         then begin
                                c[pc-1]:=a[pa];
                                pc:=pc-1;
                                a[pa]:=0;
                                pa:=pa+1
                              end
                         else invalid:= true;
                    else invalid:= true;
                 end;
            'b': case moveto of
                    'a': if a[pa] > b[pb]
                         then begin
                                a[pa-1]:=b[pb];
                                pa:=pa-1;
                                b[pb]:=0;
                                pb:=pb+1
                              end
                         else invalid:= true;
                    'c': if c[pc] > b[pb]
                         then begin
                                c[pc-1]:=b[pb];
                                pc:=pc-1;
                                b[pb]:=0;
                                pb:=pb+1
                              end
                         else invalid:= true;
                    else invalid:= true;
                 end;
            'c': case moveto of
                    'a': if a[pa] > c[pc]
                         then begin
                                a[pa-1]:=c[pc];
                                pa:=pa-1;
                                c[pc]:=0;
                                pc:=pc+1
                              end
                         else invalid:= true;
                    'b': if b[pb] > c[pc]
                         then begin
                                b[pb-1]:=c[pc];
                                pb:=pb-1;
                                c[pc]:=0;
                                pc:=pc+1
                              end
                         else invalid:= true;
                    else invalid:= true;
                 end;
            'z': if moveto='z'
                 then gameend:= true
                 else invalid:= true;
            else invalid:= true
        end;
        if not(invalid) and not(gameend)
        then begin
                for i:= 1 to 7 do
                    writeln(a[i],'   ',b[i],'   ',c[i]);
                step:=step+1;
                writeln('step: ', step)
             end
        else if not(gameend)
             then writeln('Invalid move!!!')
    until gameend;
    writeln('Game end.')
end.
        