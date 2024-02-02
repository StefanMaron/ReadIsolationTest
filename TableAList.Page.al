page 50100 TableAList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = TableA;

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
            }
        }
    }
}