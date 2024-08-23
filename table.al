table 50101 MyTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Sn; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate();

            var
                X, Y, Z : Integer;
            begin

                X := 5;
                Y := 5;
                Z := X + Y;
                Sn := Z;

                Message('Sum of %1 and %2 is %3', X, Y, Sn);
            end;
        }
        field(2; MyField; integer)
        {
            DataClassification = ToBeClassified;

            /*trigger OnValidate()
            var
                X, Y, Z : Integer;

            begin
                Z := X + Y;
                Message('Sum of %1 and %2 is %3', X, Y, Z);
            end; */
        }
        field(3; UnitCost; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var

            begin

                Profit := SeelingCost - UnitCost;
                Message('profit is %1', profit);

            end;
        }
        field(4; SeelingCost; Integer)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var

            begin
                if UnitCost > 0 then
                    Profit := SeelingCost - UnitCost;
            end;
            
        }
        field(5; Profit; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(6; ItemNO; Code[20])
        {
            TableRelation = Item;
        }

    }

    keys
    {
        key(Key1; MyField)
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
