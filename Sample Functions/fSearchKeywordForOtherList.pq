(x) => Text.Combine(
    Table.SelectRows(
        #"Keywords Look for Iraq", each Text.Contains(
            x[Description],[Keyword],Comparer.OrdinalIgnoreCase))[Keyword],","
    )