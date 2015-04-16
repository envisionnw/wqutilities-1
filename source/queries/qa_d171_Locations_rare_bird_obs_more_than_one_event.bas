﻿Operation =1
Option =0
Where ="(((tbl_Locations.Location_type)='Incidental'))"
Having ="(((Count(tbl_Events.Event_ID))>1))"
Begin InputTables
    Name ="tbl_Locations"
    Name ="tbl_Events"
    Name ="tbl_Sites"
    Name ="tbl_Rare_Bird_Obs"
    Name ="tlu_Project_Taxa"
End
Begin OutputColumns
    Expression ="tbl_Locations.Park_code"
    Expression ="tbl_Sites.Site_code"
    Expression ="tbl_Locations.Location_name"
    Expression ="tbl_Locations.Location_code"
    Alias ="Feat_name"
    Expression ="IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],[Site_code]) & '.' & IIf([Lo"
        "cation_type]<>'Incidental',[Location_code],IIf(IsNull([Site_code]),[Location_cod"
        "e],IIf(IsNull([Rare_trans_pt]),'TO',[Rare_trans_pt])) & IIf([Location_type]='Inc"
        "idental','.' & [Species_code],''))"
    Alias ="Date_sampled"
    Expression ="Format([Start_date],\"yyyy mmm dd\")"
    Alias ="varObject"
    Expression ="\"frm_Data_Browser\""
    Alias ="varFilter"
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    Alias ="varArgs"
    Expression ="\"Location_ID\""
End
Begin Joins
    LeftTable ="tbl_Events"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tbl_Events.Event_ID = tbl_Rare_Bird_Obs.Event_ID"
    Flag =2
    LeftTable ="tbl_Sites"
    RightTable ="tbl_Locations"
    Expression ="tbl_Sites.Site_ID = tbl_Locations.Site_ID"
    Flag =3
    LeftTable ="tbl_Locations"
    RightTable ="tbl_Events"
    Expression ="tbl_Locations.Location_ID = tbl_Events.Location_ID"
    Flag =1
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Rare_Bird_Obs"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Rare_Bird_Obs.Taxon_ID"
    Flag =3
End
Begin OrderBy
    Expression ="tbl_Locations.Park_code"
    Flag =0
    Expression ="tbl_Locations.Location_name"
    Flag =0
End
Begin Groups
    Expression ="tbl_Locations.Park_code"
    GroupLevel =0
    Expression ="tbl_Sites.Site_code"
    GroupLevel =0
    Expression ="tbl_Locations.Location_name"
    GroupLevel =0
    Expression ="tbl_Locations.Location_code"
    GroupLevel =0
    Expression ="IIf(IsNull([Site_code]),[tbl_Locations].[Park_code],[Site_code]) & '.' & IIf([Lo"
        "cation_type]<>'Incidental',[Location_code],IIf(IsNull([Site_code]),[Location_cod"
        "e],IIf(IsNull([Rare_trans_pt]),'TO',[Rare_trans_pt])) & IIf([Location_type]='Inc"
        "idental','.' & [Species_code],''))"
    GroupLevel =0
    Expression ="Format([Start_date],\"yyyy mmm dd\")"
    GroupLevel =0
    Expression ="\"frm_Data_Browser\""
    GroupLevel =0
    Expression ="\"Location_ID='\" & [tbl_Locations].[Location_ID] & \"'\""
    GroupLevel =0
    Expression ="\"Location_ID\""
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbText "Description" ="Incidental observation locations with more than one sampling event - each obs aw"
    "ay from transects should have its own location record"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBinary "GUID" = Begin
    0x6bfb85a5b4b66e44b8193b29ce1ba477
End
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="tbl_Locations.Park_code"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1658
    Bottom =357
    Left =-1
    Top =-1
    Right =1611
    Bottom =127
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =180
        Top =7
        Right =276
        Bottom =114
        Top =0
        Name ="tbl_Locations"
        Name =""
    End
    Begin
        Left =318
        Top =8
        Right =414
        Bottom =115
        Top =0
        Name ="tbl_Events"
        Name =""
    End
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
        Left =452
        Top =6
        Right =548
        Bottom =113
        Top =0
        Name ="tbl_Rare_Bird_Obs"
        Name =""
    End
    Begin
        Left =586
        Top =6
        Right =682
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
End
