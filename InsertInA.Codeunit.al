codeunit 50100 InsertInA
{
    trigger OnRun()
    var
        TableA: Record TableA;
        StartTime: DateTime;
    begin
        StartTime := CurrentDateTime;
        while CurrentDateTime - StartTime < 5000 do begin
            TableA.EntryNo := 0;
            TableA.Insert;
        end;
        Error('Error'); // Revert all records
    end;
}