page 50105 parent
{
    ApplicationArea = All;
    Caption = 'parent';
    PageType = List;
    SourceTable = parents;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("P.N"; Rec."P.N")
                {
                    ToolTip = 'Specifies the value of the S.N field.';
                }
                field("G.P"; Rec."G.P")
                {
                    ToolTip = 'Specifies the value of the G.P field.';
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
