table 50100 TableA
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; EntryNo; Integer)
        {
            DataClassification = ToBeClassified;
            autoIncrement = true; // prevent bulk insert for consistent results

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