﻿dbMemo "SQL" ="SELECT CStr(Year([Start_date])) AS Event_year, tbl_Point_Counts.Taxon_ID, tbl_Lo"
    "cations.Park_code, tlu_Project_Taxa.Species_code, tbl_Sites.Site_code, tbl_Locat"
    "ions.Location_code, tbl_Locations.Location_type, tbl_Locations.Site_ID, tbl_Loca"
    "tions.Location_ID, tbl_Events.Event_ID, 'Point count' AS Data_source\015\012FROM"
    " tlu_Project_Taxa INNER JOIN (tbl_Sites RIGHT JOIN (tbl_Locations INNER JOIN (tb"
    "l_Events INNER JOIN tbl_Point_Counts ON tbl_Events.Event_ID = tbl_Point_Counts.E"
    "vent_ID) ON tbl_Locations.Location_ID = tbl_Events.Location_ID) ON tbl_Sites.Sit"
    "e_ID = tbl_Locations.Site_ID) ON tlu_Project_Taxa.Taxon_ID = tbl_Point_Counts.Ta"
    "xon_ID\015\012GROUP BY CStr(Year([Start_date])), tbl_Locations.Park_code, tlu_Pr"
    "oject_Taxa.Species_code, tbl_Sites.Site_code, tbl_Locations.Location_code, tbl_L"
    "ocations.Location_type, tbl_Locations.Site_ID, tbl_Locations.Location_ID, tbl_Ev"
    "ents.Event_ID, tbl_Point_Counts.Taxon_ID, 'Point count'\015\012\015\012UNION SEL"
    "ECT CStr(Year([Start_date])) AS Event_year, tbl_Nesting_Obs.Taxon_ID, tbl_Locati"
    "ons.Park_code, tlu_Project_Taxa.Species_code, tbl_Sites.Site_code, tbl_Locations"
    ".Location_code, tbl_Locations.Location_type, tbl_Locations.Site_ID, tbl_Location"
    "s.Location_ID, tbl_Events.Event_ID, 'Nesting obs' AS Data_source\015\012FROM tlu"
    "_Project_Taxa INNER JOIN (tbl_Sites RIGHT JOIN (tbl_Locations INNER JOIN (tbl_Ev"
    "ents INNER JOIN tbl_Nesting_Obs ON tbl_Events.Event_ID = tbl_Nesting_Obs.Event_I"
    "D) ON tbl_Locations.Location_ID = tbl_Events.Location_ID) ON tbl_Sites.Site_ID ="
    " tbl_Locations.Site_ID) ON tlu_Project_Taxa.Taxon_ID = tbl_Nesting_Obs.Taxon_ID\015"
    "\012GROUP BY CStr(Year([Start_date])), tbl_Locations.Park_code, tlu_Project_Taxa"
    ".Species_code, tbl_Sites.Site_code, tbl_Locations.Location_code, tbl_Locations.L"
    "ocation_type, tbl_Locations.Site_ID, tbl_Locations.Location_ID, tbl_Events.Event"
    "_ID, tbl_Nesting_Obs.Taxon_ID, 'Nesting obs'\015\012\015\012UNION SELECT CStr(Ye"
    "ar([Start_date])) AS Event_year, tbl_Rare_Bird_Obs.Taxon_ID, tbl_Locations.Park_"
    "code, tlu_Project_Taxa.Species_code, tbl_Sites.Site_code, tbl_Locations.Location"
    "_code, tbl_Locations.Location_type, tbl_Locations.Site_ID, tbl_Locations.Locatio"
    "n_ID, tbl_Events.Event_ID, 'Rare bird obs' AS Data_source\015\012FROM tlu_Projec"
    "t_Taxa INNER JOIN (tbl_Sites RIGHT JOIN (tbl_Locations INNER JOIN (tbl_Events IN"
    "NER JOIN tbl_Rare_Bird_Obs ON tbl_Events.Event_ID = tbl_Rare_Bird_Obs.Event_ID) "
    "ON tbl_Locations.Location_ID = tbl_Events.Location_ID) ON tbl_Sites.Site_ID = tb"
    "l_Locations.Site_ID) ON tlu_Project_Taxa.Taxon_ID = tbl_Rare_Bird_Obs.Taxon_ID\015"
    "\012GROUP BY CStr(Year([Start_date])), tbl_Locations.Park_code, tlu_Project_Taxa"
    ".Species_code, tbl_Sites.Site_code, tbl_Locations.Location_code, tbl_Locations.L"
    "ocation_type, tbl_Locations.Site_ID, tbl_Locations.Location_ID, tbl_Events.Event"
    "_ID, tbl_Rare_Bird_Obs.Taxon_ID, 'Rare bird obs'\015\012\015\012UNION SELECT CSt"
    "r(Year([Obs_date])) AS Event_year, tbl_Incidental_Obs.Taxon_ID, tbl_Incidental_O"
    "bs.Park_code, tlu_Project_Taxa.Species_code, Null AS Site_code, Null AS Location"
    "_code, Null AS Location_type, Null AS Site_ID, Null AS Location_ID, Null AS Even"
    "t_ID, 'Incidental obs' AS Data_source\015\012FROM tlu_Project_Taxa INNER JOIN tb"
    "l_Incidental_Obs ON tlu_Project_Taxa.Taxon_ID = tbl_Incidental_Obs.Taxon_ID\015\012"
    "GROUP BY CStr(Year([Obs_date])), tbl_Incidental_Obs.Park_code, tlu_Project_Taxa."
    "Species_code, Null, Null, Null, Null, Null, Null, tbl_Incidental_Obs.Taxon_ID, '"
    "Incidental obs'\015\012\015\012UNION SELECT CStr(Year([Start_date])) AS Event_ye"
    "ar, tbl_Events.Response_taxon AS Taxon, tbl_Locations.Park_code, tlu_Project_Tax"
    "a.Species_code, tbl_Sites.Site_code, tbl_Locations.Location_code, tbl_Locations."
    "Location_type, tbl_Locations.Site_ID, tbl_Events.Location_ID, tbl_Events.Event_I"
    "D, 'Owl calls' AS Data_source\015\012FROM tbl_Sites RIGHT JOIN (tbl_Locations IN"
    "NER JOIN (tbl_Events INNER JOIN tlu_Project_Taxa ON tbl_Events.Response_taxon = "
    "tlu_Project_Taxa.Taxon_ID) ON tbl_Locations.Location_ID = tbl_Events.Location_ID"
    ") ON tbl_Sites.Site_ID = tbl_Locations.Site_ID\015\012WHERE (((tlu_Project_Taxa."
    "Species_code)<>'NONE'))\015\012ORDER BY Event_year, tbl_Locations.Park_code, tlu"
    "_Project_Taxa.Species_code, tbl_Sites.Site_code, tbl_Locations.Location_code;\015"
    "\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Union of species observations - point counts, nesting observations, rare bird ob"
    "servations, incidental observations, and owl calls"
Begin
    Begin
        dbText "Name" ="Event_year"
        dbBinary "GUID" = Begin
            0x275ccb24a466a843896f3b1a249ffd1a
        End
    End
    Begin
        dbText "Name" ="Data_source"
        dbBinary "GUID" = Begin
            0xfff7bc32770dff469261efb3cfe47fa2
        End
    End
    Begin
        dbText "Name" ="tbl_Point_Counts.Taxon_ID"
        dbInteger "ColumnWidth" ="4110"
        dbBoolean "ColumnHidden" ="0"
    End
End
