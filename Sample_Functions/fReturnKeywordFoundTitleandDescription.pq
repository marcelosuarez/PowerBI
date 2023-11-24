(ActivityTitle as text, ActivityDescription as text) =>
let
 KeywordsTable = #"Keywords Look for Iraq",
 ResultTitle= Text.Combine(
                        Table.SelectRows(
                            KeywordsTable,
                            each Text.Contains(ActivityTitle,
                            [Keyword],
                            Comparer.OrdinalIgnoreCase)
                        )[Keyword],
                        ","
         
                        ),
 ResultDescription= Text.Combine(
                        Table.SelectRows(
                            KeywordsTable,
                            each Text.Contains(ActivityDescription,
                            [Keyword],
                            Comparer.OrdinalIgnoreCase)
                        )[Keyword],
                        ","
         
                        ),
/* PreliminaryResult = if ResultTitle <> "" and ResultDescription <> "" then "Match Title and Description: "& ResultTitle&","&ResultDescription 
          else if  ResultTitle <> "" and ResultDescription = "" then "Match Title: "&ResultTitle
          else if  ResultTitle = "" and ResultDescription <> "" then "Match Description: "&ResultDescription
          else null ,
 */ 
 PreliminaryResult = if ResultTitle <> "" and ResultDescription <> "" then ResultTitle&","&ResultDescription 
          else if  ResultTitle <> "" and ResultDescription = "" then ResultTitle
          else if  ResultTitle = "" and ResultDescription <> "" then ResultDescription
          else null ,

 Result = if PreliminaryResult = null then PreliminaryResult
          else Text.Combine(
                List.Sort(
                        List.Distinct(
                                List.Transform(
                                        Text.Split(
                                                PreliminaryResult,","
                                                  ), each Text.Trim(_)
                                       )
                                )
                       , Order.Ascending
                       )
                ,",")

 
 in Result