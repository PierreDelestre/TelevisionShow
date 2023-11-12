page 50102 "Customer Television Shows"
{
    PageType = List;
    SourceTable = "Customer Television Show";
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Television Show Code"; rec."Television Show Code")
                {
                    ApplicationArea = All;
                }
                field(Favorite; rec.Favorite)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}