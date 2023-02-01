(KeywordList) =>
    let
        KeywordListwoDuplicates = 
                 Text.Combine(
                        List.Distinct(
                                List.Transform(
                                        Text.Split(
                                                KeywordList,","
                                        ), each Text.Trim(_)
                                )
                        )
                ,","),
        KeywordwoEndComma =  
                  if Text.EndsWith(
                                        KeywordListwoDuplicates,","
                                  ) 
                        then Text.Start(
                                        KeywordListwoDuplicates, Text.Length(KeywordListwoDuplicates)-1
                                    ) 
                        else KeywordListwoDuplicates
in  KeywordwoEndComma