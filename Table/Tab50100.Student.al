table 50100 Student
{
    Caption = 'Student';
    DataClassification = ToBeClassified;

    fields
    {
        field(1000; "S.N"; Code[20])
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
        field(1004; "G.p"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Grandparents."G.N";
        }
        field(1005; "P.N"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = parents."P.N";
        }
    }
    keys
    {
        key(PK; "S.N", "P.N", "G.p")
        {
            Clustered = true;
        }
    }
}
