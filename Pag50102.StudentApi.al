page 50102 StudentApi
{
    APIGroup = 'Demo';
    APIPublisher = 'BC230';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'studentApi';
    DelayedInsert = true;
    EntityName = 'Student';
    EntitySetName = 'Students';
    PageType = API;
    SourceTable = Student;

    //ODataKeyFields=SystemId;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(sN; Rec."S.N")
                {
                    Caption = 'S.N';
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(rollNo; Rec."Roll No")
                {
                    Caption = 'Roll No';
                }
                field(phone; Rec.Phone)
                {
                    Caption = 'Phone';
                }
            }
        }
    }
}
