table 50101 TableB
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; EntryNo; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; ExistsInA; Boolean)
        {
            FieldClass = FlowField;
            CalcFormula = exist(TableA where(EntryNo = field(EntryNo)));
            Editable = false;
        }

    }

    keys
    {
        key(Key1; EntryNo)
        {
            Clustered = true;
        }
    }
}