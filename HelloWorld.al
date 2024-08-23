// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    var
        dates, today : DateTime;
        datess: Date;
    begin
        dates := CURRENTDATETIME;
        today := CreateDateTime(datess, 0T);
        Message('Hello, %1', dates);

    end;
}