﻿dbMemo "SQL" ="SELECT tbl_QA_Results.Query_name, \"No longer exists, but in result set\" AS Iss"
    "ue, tbl_QA_Results.Time_frame\015\012FROM MSysObjects RIGHT JOIN tbl_QA_Results "
    "ON MSysObjects.Name = tbl_QA_Results.Query_name\015\012WHERE (((tbl_QA_Results.T"
    "ime_frame)=[Forms]![frm_QA_Tool]![cmbTimeframe]) AND ((tbl_QA_Results.Data_scope"
    ")=[Forms]![frm_QA_Tool]![optgScope]) AND ((MSysObjects.Name) Is Null))\015\012\015"
    "\012UNION SELECT MSysObjects.Name AS Query_name, \"Not in result set\" AS Issue,"
    " tbl_QA_Results.Time_frame\015\012FROM MSysObjects LEFT JOIN tbl_QA_Results ON M"
    "SysObjects.Name = tbl_QA_Results.Query_name\015\012WHERE (((MSysObjects.Name) Li"
    "ke \"qa_*\") AND ((tbl_QA_Results.Query_name) Is Null))\015\012\015\012UNION SEL"
    "ECT tbl_QA_Results.Query_name, \"Not running properly\" AS Issue, tbl_QA_Results"
    ".Time_frame\015\012FROM tbl_QA_Results\015\012WHERE (((tbl_QA_Results.Time_frame"
    ")=[Forms]![frm_QA_Tool]![cmbTimeframe]) AND ((tbl_QA_Results.Query_run_time) Is "
    "Null)) OR (((tbl_QA_Results.Time_frame)=[Forms]![frm_QA_Tool]![cmbTimeframe]) AN"
    "D ((tbl_QA_Results.Query_result) Is Null));\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="System query listing validation queries that are not updating correctly"
Begin
    Begin
        dbText "Name" ="tbl_QA_Results.Query_name"
        dbInteger "ColumnWidth" ="4836"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Issue"
        dbInteger "ColumnWidth" ="2865"
        dbBoolean "ColumnHidden" ="0"
    End
End
