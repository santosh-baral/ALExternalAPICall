page 50100 Student
{
    ApplicationArea = All;
    Caption = 'Student';
    PageType = List;
    SourceTable = Student;
    UsageCategory = Lists;
    CardPageId = Students;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("S.N"; Rec."S.N")
                {
                    ToolTip = 'Specifies the value of the S.N field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Roll No"; Rec."Roll No")
                {
                    ToolTip = 'Specifies the value of the Roll No field.';
                }
                field(Phone; Rec.Phone)
                {
                    ToolTip = 'Specifies the value of the Phone field.';
                }
                field("G.p"; Rec."G.p")
                {

                }
                field("P.N"; Rec."P.N")
                {
                    ApplicationArea = All;

                }
            }
        }
    }
}
