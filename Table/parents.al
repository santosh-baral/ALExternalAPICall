table 50103 parents
{
    //Caption = '';
    DataClassification = ToBeClassified;

    fields
    {
        field(1000; "P.N"; Code[20])
        {
            Caption = 'S.N';
        }
        field(1001; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(1002; Phone; Text[10])
        {
            Caption = 'Phone';
        }
        field(1003; "Roll No"; Integer)
        {
            Caption = 'Roll No';
        }
        field(1004; "G.P"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Grandparents."G.N";
        }
    }
    keys
    {
        key(PK; "P.N", "G.P")
        {
            Clustered = true;
        }
    }
}