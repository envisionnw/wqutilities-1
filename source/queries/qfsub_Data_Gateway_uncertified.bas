﻿Operation =1
Option =0
Where ="(((IIf(IsNull([Event_ID])=False,IIf(IsNull([Certified_date])=False And ([Certifi"
    "ed_date]>=[Updated_date] Or IsNull([Updated_date])),'Certified',IIf(IsNull([Veri"
    "fied_date]),'Unverified',IIf([Verified_date]<[Updated_date],'Updated','Verified'"
    "))))) Is Null Or (IIf(IsNull([Event_ID])=False,IIf(IsNull([Certified_date])=Fals"
    "e And ([Certified_date]>=[Updated_date] Or IsNull([Updated_date])),'Certified',I"
    "If(IsNull([Verified_date]),'Unverified',IIf([Verified_date]<[Updated_date],'Upda"
    "ted','Verified')))))<>'Certified'))"
Begin InputTables
    Name ="tbl_Events"
End
Begin OutputColumns
    Expression ="tbl_Events.Event_ID"
    Expression ="tbl_Events.Location_ID"
    Expression ="tbl_Events.Start_date"
    Alias ="Rec_status"
    Expression ="IIf(IsNull([Event_ID])=False,IIf(IsNull([Certified_date])=False And ([Certified_"
        "date]>=[Updated_date] Or IsNull([Updated_date])),'Certified',IIf(IsNull([Verifie"
        "d_date]),'Unverified',IIf([Verified_date]<[Updated_date],'Updated','Verified')))"
        ")"
    Expression ="tbl_Events.Entered_by"
    Expression ="tbl_Events.Entered_date"
    Expression ="tbl_Events.Updated_by"
    Expression ="tbl_Events.Updated_date"
    Expression ="tbl_Events.Verified_by"
    Expression ="tbl_Events.Verified_date"
    Expression ="tbl_Events.Certified_by"
    Expression ="tbl_Events.Certified_date"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Shows only uncertified event data for the data gateway form"
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
        Left =174
        Top =5
        Right =270
        Bottom =112
        Top =32
        Name ="tbl_Events"
        Name =""
    End
End
