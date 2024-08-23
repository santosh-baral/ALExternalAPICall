table 50102 MyTables
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Sn; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Name; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; City; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Kathmadnu,Bhaktapur,lalitpur;

        }
        field(4; DOb; DateTime)
        {
            DataClassification = ToBeClassified;

        }
        field(5; phone; Text[15])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var

            begin
                Message('phonenumber is %1', phone);
            end;
        }
       

    }

    keys
    {
        key(Key1; Sn)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}