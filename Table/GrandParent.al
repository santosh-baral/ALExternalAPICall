table 50104 Grandparents
{
    Caption = 'Student';
    DataClassification = ToBeClassified;

    fields
    {
        field(1000; "G.N"; Code[20])
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
    }
    keys
    {
        key(PK; "G.N")
        {
            Clustered = true;
        }
    }
}