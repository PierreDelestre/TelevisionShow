pageextension 50100 CustomerCardExtension extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Television Viewing Country"; Rec."Television Viewing Country")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        addlast(navigation)
        {
            action("Customer Television Shows")
            {
                ApplicationArea = All;
                Image = ListPage;
                RunObject = page "Customer Television Shows";
                RunPageLink = "Customer No." = field("No.");
            }
        }
    }
}