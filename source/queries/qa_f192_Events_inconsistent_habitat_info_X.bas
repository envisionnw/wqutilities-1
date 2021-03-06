﻿Operation =1
Option =0
Where ="(((qasub_Events_scope_filter.Habitat_data_taken)=True) AND ((tbl_Habitat.Event_I"
    "D) Is Null)) OR (((qasub_Events_scope_filter.Habitat_data_taken)=False) AND ((tb"
    "l_Habitat.Event_ID) Is Not Null))"
Begin InputTables
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qasub_Events_scope_filter"
    Name ="tbl_Habitat"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Expression ="tbl_Locations.Location_type"
    Expression ="qasub_Events_scope_filter.Start_date"
    Expression ="qasub_Events_scope_filter.Habitat_data_taken"
    Expression ="tbl_Habitat.Habitat_num"
    Expression ="tbl_Habitat.PMR_code"
    Alias ="varObject"
    Expression ="\"frm_Data_Entry\""
    Alias ="varFilter"
    Expression ="\"Event_ID='\" & [qasub_Events_scope_filter].[Event_ID] & \"'\""
    Alias ="varAutoFix"
    Expression ="\"qasub_Update_events_inconsistent_habitat_info\""
End
Begin Joins
    LeftTable ="qasub_Events_scope_filter"
    RightTable ="tbl_Habitat"
    Expression ="qasub_Events_scope_filter.Event_ID = tbl_Habitat.Event_ID"
    Flag =2
    LeftTable ="tbl_Locations"
    RightTable ="qasub_Events_scope_filter"
    Expression ="tbl_Locations.Location_ID = qasub_Events_scope_filter.Location_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Events where habitat_data_taken = True but missing associated habitat records, o"
    "r having associated habitat records where habitat_data_taken = False"
dbBinary "GUID" = Begin
    0x6a5a33a01c784a46919c578fd2ef810f
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="qasub_Events_scope_filter.Habitat_data_taken"
        dbInteger "ColumnWidth" ="1785"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varAutoFix"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="varObject"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1043
    Bottom =688
    Left =-1
    Top =-1
    Right =1019
    Bottom =163
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =170
        Top =8
        Right =260
        Bottom =115
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =285
        Top =6
        Right =381
        Bottom =113
        Top =0
        Name ="qasub_Events_scope_filter"
        Name =""
    End
    Begin
        Left =414
        Top =8
        Right =534
        Bottom =145
        Top =0
        Name ="tbl_Habitat"
        Name =""
    End
End
