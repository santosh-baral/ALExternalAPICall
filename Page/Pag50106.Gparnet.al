page 50106 Gparnet
{
    ApplicationArea = All;
    Caption = 'Gparnet';
    PageType = List;
    SourceTable = Grandparents;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("G.N"; Rec."G.N")
                {
                    ToolTip = 'Specifies the value of the S.N field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(Phone; Rec.Phone)
                {
                    ToolTip = 'Specifies the value of the Phone field.';
                }
                field("Roll No"; Rec."Roll No")
                {
                    ToolTip = 'Specifies the value of the Roll No field.';
                }
            }
        }
    }
}
