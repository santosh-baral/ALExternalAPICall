tableextension 50100 Custumerss extends Customer
{
    fields
    {
        field(2000; santo; Integer)
        {
            Caption = 'santo';
            DataClassification = ToBeClassified;
        }
        field(2001; bar; Code[20])
        {
            Caption = 'bar';
            DataClassification = ToBeClassified;
        }
    }
}
