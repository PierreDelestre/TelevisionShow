table 50100 "Television Show"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Code; Code[20])
        {
            NotBlank = true;
            DataClassification = CustomerContent;
        }

        field(2; Name; Text[80])
        {
            DataClassification = CustomerContent;
        }

        field(3; Synopsis; Text[250])
        {
            DataClassification = CustomerContent;
        }

        field(4; Status; Option)
        {
            DataClassification = CustomerContent;

            OptionCaption = 'Active,Finished';
            OptionMembers = Active,Finished;
        }

        field(5; "First Aired"; Date)
        {
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                VerifyDates();
            end;
        }

        field(6; "Last Aired"; Date)
        {
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                VerifyDates();
            end;
        }

        field(7; "Created By"; Code[50])
        {
            DataClassification = CustomerContent;
        }
    }


    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        "Created By" := UserId();
    end;

    local procedure VerifyDates()
    var
        FirstAiredDateCannotBeLaterErr: Label '%1 cannot be earlier than %2';
    begin
        if "Last Aired" = 0D then
            exit;

        if "First Aired" > "Last Aired" then
            Error(FirstAiredDateCannotBeLaterErr, FieldCaption("Last Aired"), FieldCaption("First Aired"));
    end;

}