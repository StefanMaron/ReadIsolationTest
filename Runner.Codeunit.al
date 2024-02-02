codeunit 50102 Runner
{
    trigger OnRun()
    var
        SessionA, SessionB : Integer;
        TableA: Record TableA;
        TableB: Record TableB;
    begin
        TableA.DeleteAll();
        TableB.DeleteAll();
        Commit();

        StartSession(SessionA, Codeunit::InsertInA); // Insert records in the background without committing them
        Codeunit.Run(Codeunit::InsertInB); // Insert records based on uncommitted records in TableA
        Page.Run(Page::TableBList);
    end;
}