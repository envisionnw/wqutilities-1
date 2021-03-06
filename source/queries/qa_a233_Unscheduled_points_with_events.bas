﻿Operation =1
Option =0
Where ="(((tbl_Locations.Location_type)<>'Incidental') AND ((qsub_Event_years.Start_date"
    ")>[Loc_discontinued]) AND ((qsub_Scheduled_points.Location_ID) Is Null)) OR (((t"
    "bl_Locations.Location_type)<>'Incidental') AND ((tbl_Locations.Loc_discontinued)"
    " Is Null) AND ((qsub_Scheduled_points.Location_ID) Is Null))"
Begin InputTables
    Name ="tbl_Strata"
    Name ="tbl_Sites"
    Name ="tbl_Locations"
    Name ="qsub_Scheduled_points"
    Name ="qsub_Event_years"
End
Begin OutputColumns
    Expression ="qsub_Event_years.Event_year"
    Expression ="tbl_Sites.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_code"
    Alias ="Stratum"
    Expression ="Right([Stratum_name],Len([Stratum_name])-2)"
    Expression ="tbl_Locations.Location_type"
    Expression ="tbl_Locations.Location_status"
    Alias ="Year_established"
    Expression ="Year([Loc_established])"
    Alias ="Year_discontinued"
    Expression ="Year([Loc_discontinued])"
    Expression ="tbl_Locations.Loc_discontinued"
    Expression ="qsub_Event_years.Start_date"
    Expression ="qsub_Event_years.N_obs_recs"
    Alias ="varObject"
    Expression ="\"frm_Data_Gateway\""
End
Begin Joins
    LeftTable ="qsub_Scheduled_points"
    RightTable ="qsub_Event_years"
    Expression ="qsub_Scheduled_points.Location_ID = qsub_Event_years.Location_ID"
    Flag =3
    LeftTable ="qsub_Scheduled_points"
    RightTable ="qsub_Event_years"
    Expression ="qsub_Scheduled_points.Calendar_year = qsub_Event_years.Event_year"
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="qsub_Event_years"
    Expression ="tbl_Locations.Location_ID = qsub_Event_years.Location_ID"
    Flag =1
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =1
    LeftTable ="tbl_Strata"
    RightTable ="tbl_Sites"
    Expression ="tbl_Strata.Stratum_ID = tbl_Sites.Stratum_ID"
    Flag =1
End
Begin OrderBy
    Expression ="qsub_Event_years.Event_year"
    Flag =1
    Expression ="tbl_Sites.Park_code"
    Flag =0
    Expression ="tbl_Sites.Site_code"
    Flag =0
    Expression ="tbl_Locations.Location_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="List of points that were visited even though they were not on the schedule (may "
    "include rejected or retired locations missing discontinued dates or sampled afte"
    "r they were discontinued)"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
End
Begin
    State =2
    Left =-4
    Top =-23
    Right =1152
    Bottom =748
    Left =-1
    Top =-1
    Right =1149
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =52
        Top =5
        Right =148
        Bottom =112
        Top =0
        Name ="tbl_Strata"
        Name =""
    End
    Begin
        Left =185
        Top =5
        Right =281
        Bottom =112
        Top =0
        Name ="tbl_Sites"
        Name =""
    End
    Begin
        Left =319
        Top =5
        Right =415
        Bottom =112
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =633
        Top =5
        Right =789
        Bottom =82
        Top =0
        Name ="qsub_Scheduled_points"
        Name =""
    End
    Begin
        Left =453
        Top =5
        Right =584
        Bottom =112
        Top =0
        Name ="qsub_Event_years"
        Name =""
    End
End
