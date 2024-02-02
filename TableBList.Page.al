page 50101 TableBList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = TableB;
    SourceTableView = order(descending);

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; Rec.EntryNo)
                {
                    ApplicationArea = All;
                }
                field(ExistsInA; Rec.ExistsInA)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}