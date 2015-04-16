﻿Operation =1
Option =0
Where ="(((tblCharacteristics.DISPLAY_NAME)<>\"Cloud cover\") AND ((tblResults.RESULT_TE"
    "XT) Is Not Null) AND ((tblResults.DETECTION_CONDITION)<>\"*Non-detect\") AND ((t"
    "blResults.VALUE_STATUS)=\"P\") AND ((tblCharacteristics.FIELD_LAB)=\"Field\") AN"
    "D ((IIf(IsNumeric([Result_text]),1,0))=1))"
Begin InputTables
    Name ="tblProjects"
    Name ="tblLocations"
    Name ="tblActivities"
    Name ="tblVisits"
    Name ="tblResults"
    Name ="tblCharacteristics"
End
Begin OutputColumns
    Expression ="tblProjects.ProjectID"
    Expression ="tblLocations.StationID"
    Expression ="tblCharacteristics.DISPLAY_NAME"
    Alias ="NumericValue"
    Expression ="CDbl([Result_Text])"
    Expression ="tblVisits.START_DATE"
    Expression ="tblResults.RESULT_TEXT"
    Expression ="tblResults.DETECTION_CONDITION"
    Expression ="tblResults.LAB_REMARKS"
    Expression ="tblResults.RESULT_COMMENT"
    Expression ="tblVisits.VISIT_COMMENT"
    Expression ="tblLocations.[Station Name]"
    Expression ="tblResults.VALUE_STATUS"
End
Begin Joins
    LeftTable ="tblActivities"
    RightTable ="tblResults"
    Expression ="tblActivities.LocFdAct_IS_NUMBER = tblResults.LocFdAct_IS_NUMBER"
    Flag =1
    LeftTable ="tblActivities"
    RightTable ="tblResults"
    Expression ="tblActivities.LocFdAct_ORG_ID = tblResults.LocFdAct_Org_ID"
    Flag =1
    LeftTable ="tblCharacteristics"
    RightTable ="tblResults"
    Expression ="tblCharacteristics.LocCHDEF_IS_NUMBER = tblResults.LocChDef_IS_NUMBER"
    Flag =1
    LeftTable ="tblCharacteristics"
    RightTable ="tblResults"
    Expression ="tblCharacteristics.LocCHDEF_ORG_ID = tblResults.LocChDef_Org_ID"
    Flag =1
    LeftTable ="tblLocations"
    RightTable ="tblVisits"
    Expression ="tblLocations.LocSTATN_IS_NUMBER = tblVisits.LocSTATN_IS_NUMBER"
    Flag =1
    LeftTable ="tblLocations"
    RightTable ="tblVisits"
    Expression ="tblLocations.LocSTATN_ORG_ID = tblVisits.LocSTATN_ORG_ID"
    Flag =1
    LeftTable ="tblProjects"
    RightTable ="tblVisits"
    Expression ="tblProjects.LocProj_IS_NUMBER = tblVisits.LocProj_IS_NUMBER"
    Flag =1
    LeftTable ="tblProjects"
    RightTable ="tblVisits"
    Expression ="tblProjects.LocProj_ORG_ID = tblVisits.LocProj_ORG_ID"
    Flag =1
    LeftTable ="tblVisits"
    RightTable ="tblActivities"
    Expression ="tblVisits.LocStVst_IS_NUMBER = tblActivities.LocStVst_IS_NUMBER"
    Flag =1
    LeftTable ="tblVisits"
    RightTable ="tblActivities"
    Expression ="tblVisits.LocStVst_ORG_ID = tblActivities.LocStVst_ORG_ID"
    Flag =1
End
Begin OrderBy
    Expression ="tblProjects.ProjectID"
    Flag =0
    Expression ="tblLocations.StationID"
    Flag =0
    Expression ="tblCharacteristics.DISPLAY_NAME"
    Flag =0
    Expression ="CDbl([Result_Text])"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbBinary "GUID" = Begin
    0x9d4ea7257170354b8aafe83cce44c2c2
End
Begin
    Begin
        dbText "Name" ="tblProjects.ProjectID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x6d70a385a9cb814fa430f1eafc1077ea
        End
    End
    Begin
        dbText "Name" ="tblLocations.StationID"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x0d691bd89eaa074e925e7125d095c3fa
        End
    End
    Begin
        dbText "Name" ="tblLocations.[Station Name]"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xedfb956f5bc3564284bb4d0cf72484ec
        End
    End
    Begin
        dbText "Name" ="tblVisits.START_DATE"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x8553c249353ff343b4128b2af44c5b34
        End
    End
    Begin
        dbText "Name" ="tblCharacteristics.DISPLAY_NAME"
        dbInteger "ColumnWidth" ="3705"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x7cd6823932149c418837cd67f80ac8ef
        End
    End
    Begin
        dbText "Name" ="tblResults.LAB_REMARKS"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0xf988bc4679d48842835e1f63d51a6a30
        End
    End
    Begin
        dbText "Name" ="tblResults.RESULT_COMMENT"
        dbInteger "ColumnWidth" ="3000"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x06ac019a069f3e4fa172f0b523faddc0
        End
    End
    Begin
        dbText "Name" ="tblResults.DETECTION_CONDITION"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x297e2192af09dd4c9ec6ed9ad0b395e6
        End
        dbInteger "ColumnWidth" ="2445"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tblResults.RESULT_TEXT"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x9c0f635d58d0e146af347e89ca967bfd
        End
    End
    Begin
        dbText "Name" ="tblVisits.VISIT_COMMENT"
        dbInteger "ColumnWidth" ="2850"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NumericValue"
        dbLong "AggregateType" ="-1"
        dbBinary "GUID" = Begin
            0x968cab3a373594488601a038a4ebfa59
        End
    End
    Begin
        dbText "Name" ="tblResults.VALUE_STATUS"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =-16
    Top =0
    Right =1284
    Bottom =748
    Left =-1
    Top =-1
    Right =1268
    Bottom =169
    Left =6
    Top =0
    ColumnsShown =539
    Begin
        Left =42
        Top =12
        Right =186
        Bottom =156
        Top =0
        Name ="tblProjects"
        Name =""
    End
    Begin
        Left =234
        Top =12
        Right =378
        Bottom =156
        Top =0
        Name ="tblLocations"
        Name =""
    End
    Begin
        Left =732
        Top =14
        Right =876
        Bottom =158
        Top =0
        Name ="tblActivities"
        Name =""
    End
    Begin
        Left =472
        Top =14
        Right =662
        Bottom =158
        Top =0
        Name ="tblVisits"
        Name =""
    End
    Begin
        Left =939
        Top =13
        Right =1098
        Bottom =155
        Top =0
        Name ="tblResults"
        Name =""
    End
    Begin
        Left =1154
        Top =13
        Right =1356
        Bottom =157
        Top =0
        Name ="tblCharacteristics"
        Name =""
    End
End
