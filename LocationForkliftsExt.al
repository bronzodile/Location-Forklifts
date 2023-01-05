tableextension 50001 MyExtension extends Location
{
    fields
    {
        field(50001; "No. of Forklifts"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'No. of Forklifts';
            trigger OnValidate()
            begin
                if Rec."No. of Forklifts" > Rec."No. of Loading Bays" then
                    Error(ErrTooManyForklifts);
            end;
        }
    }
    var
        ErrTooManyForklifts: Label 'No. of forklifts must not be greater than number of loading bays.';
}