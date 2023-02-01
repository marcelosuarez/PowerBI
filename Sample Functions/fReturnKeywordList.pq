= (keywordtable) =>
                Text.Combine(
                            Table.SelectRows(#"Keywords Look for Iraq", each [Keyword] <> null )[Keyword],
                            ","
                            )