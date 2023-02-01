(ActivityDescription as text, listofkeywords as text) =>
let
 KeywordsTable = Table.FromList(Text.Split(listofkeywords,","), null, {"Keyword"}),
 Result= Text.Combine(
                        Table.SelectRows(
                            KeywordsTable,
                            each Text.Contains(ActivityDescription,
                            [Keyword],
                            Comparer.OrdinalIgnoreCase)
                        )[Keyword],
                        ","
         
 )
 
 in Result