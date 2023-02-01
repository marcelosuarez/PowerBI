(texttosearch) =>
    // Text.Combine(texts as list, optional separator as nullable text) as text
    Text.Combine(
        // Table.SelectRows(table as table, condition as function) as table
        Table.SelectRows(
            #"Keywords Look for Iraq",
            //Table Containing Keywords
            each Text.Contains(texttosearch[Description],
            //Text.Contains text
            [Keyword],
            //Text.Contains substring
            Comparer.OrdinalIgnoreCase)
            //Text.Contains comparer
        )[Keyword],
        //Text.Combine texts as List
        ","
        //Text.Combine - separator
    )
