﻿Operation =1
Option =0
Where ="(((tbl_Incidental_Obs.Park_code) Is Null)) OR (((tlu_Project_Taxa.Taxon_ID) Is N"
    "ull)) OR (((tbl_Incidental_Obs.Contact_ID) Is Null)) OR (((tbl_Incidental_Obs.Ob"
    "s_date) Is Null)) OR (((tlu_Project_Crew.Contact_ID) Is Null))"
Begin InputTables
    Name ="tbl_Incidental_Obs"
    Name ="tlu_Project_Taxa"
    Name ="tlu_Project_Crew"
End
Begin OutputColumns
    Alias ="Calendar_year"
    Expression ="CStr(Year([Obs_date]))"
    Expression ="tbl_Incidental_Obs.Park_code"
    Alias ="Taxon"
    Expression ="IIf(IsNull([tlu_Project_Taxa].[Taxon_ID]),'Missing from lookup',[Species_code] &"
        " ' - ' & [Pref_com_name])"
    Expression ="tbl_Incidental_Obs.Contact_ID"
    Alias ="Contact_in_lookup"
    Expression ="IIf(IsNull([tlu_Project_Crew].[Contact_ID]),'Missing from lookup','Yes')"
    Expression ="tbl_Incidental_Obs.Obs_date"
    Expression ="tbl_Incidental_Obs.Loc_description"
    Expression ="tbl_Incidental_Obs.Obs_notes"
    Alias ="varObject"
    Expression ="\"frm_Incidental_Obs\""
End
Begin Joins
    LeftTable ="tlu_Project_Crew"
    RightTable ="tbl_Incidental_Obs"
    Expression ="tlu_Project_Crew.Contact_ID = tbl_Incidental_Obs.Contact_ID"
    Flag =3
    LeftTable ="tlu_Project_Taxa"
    RightTable ="tbl_Incidental_Obs"
    Expression ="tlu_Project_Taxa.Taxon_ID = tbl_Incidental_Obs.Taxon_ID"
    Flag =3
End
Begin OrderBy
    Expression ="CStr(Year([Obs_date]))"
    Flag =1
    Expression ="tbl_Incidental_Obs.Park_code"
    Flag =0
    Expression ="tlu_Project_Taxa.Species_code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Missing park code, taxon ID, contact ID, or obs date; or taxon or contact is not"
    " in the associated lookup table"
Begin
    Begin
        dbText "Name" ="tbl_Incidental_Obs.Contact_ID"
        dbInteger "ColumnWidth" ="2685"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Contact_in_lookup"
        dbInteger "ColumnWidth" ="1740"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Taxon"
        dbInteger "ColumnWidth" ="3195"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tbl_Incidental_Obs.Obs_date"
        dbInteger "ColumnWidth" ="2355"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1130
    Bottom =374
    Left =-1
    Top =-1
    Right =1083
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="tbl_Incidental_Obs"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="tlu_Project_Taxa"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =113
        Top =0
        Name ="tlu_Project_Crew"
        Name =""
    End
End
