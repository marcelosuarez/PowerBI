(Text as text KeywordsList as text) => 

// Text.Combine(texts as list, optional separator as nullable text) as text
    Text.Combine(
// Table.SelectRows(table as table, condition as function) as table
            Table.SelectRows(
                #"Keywords Look for Iraq", 

//  Text.Contains(text as nullable text, substring as text, optional comparer as nullable function) as nullable logical              
                        each Text.Contains(
                                            x[Description],                 //Text.Contains text 
                                            [Keyword],                      //Text.Contains substring
                                            Comparer.OrdinalIgnoreCase      //Text.Contains comparer
                                         )
                            )                   //Text.Combine text as List 
                                [Keyword],
                                            "," //Text.Combine - separator
    )