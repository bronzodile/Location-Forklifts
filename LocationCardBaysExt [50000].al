pageextension 50001 "Location Card Forklifts" extends "Location Card"
{
    layout
    {
        addafter(Code)
        {
            field("No. of Forklifts"; Rec."No. of Forklifts")
            {
                ApplicationArea = All;
                ToolTip = 'Show the number of forklifts available at this location.';
            }
        }
    }
}