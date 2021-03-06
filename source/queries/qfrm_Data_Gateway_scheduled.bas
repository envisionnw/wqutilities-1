﻿dbMemo "SQL" ="SELECT tbl_Locations.Park_code, tbl_Locations.Location_ID, IIf(IsNull([Site_code"
    "]),[tbl_Locations].[Park_code],[Site_code]) & IIf([Location_type]<>'Origin','.' "
    "& [Location_code]) AS Loc_code, IIf([Location_type]='Origin','Transect origin',I"
    "If([Location_type]='New' Or [Location_type]='Survey' Or [Location_type]='Additio"
    "nal','Sample point',IIf([Location_type]='Incidental','Rare bird obs',[Location_t"
    "ype]))) AS Loc_type, qfsub_Data_Gateway_all_events.Start_date, Year([Start_date]"
    ") AS Sample_year, IIf(IsNull([Updated_by]),[Entered_by],[Updated_by]) AS Update_"
    "by, IIf(IsNull([Updated_date]),[Entered_date],[Updated_date]) AS Updated, qfsub_"
    "Data_Gateway_all_events.Event_ID, tbl_Sites.Site_ID, tbl_Sites.Panel_type, qfsub"
    "_Data_Gateway_all_events.Rec_status\015\012FROM (tbl_Sites RIGHT JOIN (tbl_Locat"
    "ions LEFT JOIN qfsub_Data_Gateway_all_events ON tbl_Locations.Location_ID = qfsu"
    "b_Data_Gateway_all_events.Location_ID) ON tbl_Sites.Site_ID = tbl_Locations.Site"
    "_ID) LEFT JOIN tbl_Schedule ON tbl_Sites.Site_ID = tbl_Schedule.Site_ID\015\012W"
    "HERE (((tbl_Locations.Location_status)='Active' Or (tbl_Locations.Location_statu"
    "s)='Proposed') AND ((tbl_Schedule.Calendar_year)=[Forms]![frm_Switchboard]![fsub"
    "_DbAdmin].[Form]![tbxTimeframe])) OR (((qfsub_Data_Gateway_all_events.Event_ID) "
    "Is Not Null) AND ((tbl_Locations.Location_status)='Incidental'))\015\012ORDER BY"
    " tbl_Locations.Park_code, IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],[S"
    "ite_code]) & IIf([Location_type]<>'Origin','.' & [Location_code]), Year([Start_d"
    "ate]) DESC;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Data gateway locations and associated events - scheduled sites, all events"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0xb73ce73b0b43744e96754c7834240278
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Location_ID"
        dbInteger "ColumnWidth" ="3900"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sample_year"
        dbInteger "ColumnWidth" ="1176"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Loc_code"
        dbInteger "ColumnWidth" ="1308"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Updated"
        dbInteger "ColumnWidth" ="1920"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Update_by"
        dbInteger "ColumnWidth" ="1836"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbInteger "ColumnWidth" ="984"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Loc_type"
        dbInteger "ColumnWidth" ="1392"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qfsub_Data_Gateway_all_events.Start_date"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qfsub_Data_Gateway_all_events.Event_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Site_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tbl_Sites.Panel_type"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qfsub_Data_Gateway_all_events.Rec_status"
        dbLong "AggregateType" ="-1"
    End
End
