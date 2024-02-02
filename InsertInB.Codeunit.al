codeunit 50101 InsertInB
{
    trigger OnRun()
    var
        TableA: Record TableA;
        TableB: Record TableB;
        StartTime: DateTime;
    begin
        StartTime := CurrentDateTime;

        while CurrentDateTime - StartTime < 5000 do begin // 5 seconds
            SelectLatestVersion(); // overrule the cache to gain consistent test results
            // TableA.ReadIsolation(IsolationLevel::ReadUncommitted); //ReadUncommitted or default - many records are read/ ReadCommitted - no records read
            if TableA.FindLast() then begin
                TableB.EntryNo := TableA.EntryNo;
                if not TableB.Insert then; //if the records is already inserted, then do nothing
            end;
        end;
    end;
}