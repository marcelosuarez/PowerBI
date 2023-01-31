= Table.AddColumn(
        #"Added Conditional Column", "Remove End Coma", 
                each if Text.EndsWith([Keyword found cleaned], ",") 
                        then Text.Middle(
                                        [Keyword found cleaned],
                                        1,
                                        Text.Length([Keyword found cleaned])-1
                                        )
                                                    
                        else [Keyword found cleaned]
                )