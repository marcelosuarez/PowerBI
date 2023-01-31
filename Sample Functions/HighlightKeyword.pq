    let HighlightKeyword = (ActivityDescription) =>
        Text.Replace((ActivityDescription),"IDP","<font color=""blue"">IDP</font>"),
        Text.Replace((ActivityDescription),"idp","<font color=""blue"">IDP</font>"),
        Text.Replace((ActivityDescription),"Displaced","<font color=""blue"">Displaced</font>"),
        Text.Replace((ActivityDescription),"displaced","<font color=""blue"">displaced</font>"),
        Text.Replace((ActivityDescription),"Refugee","<font color=""blue"">Refugee</font>"),
        Text.Replace((ActivityDescription),"refugee","<font color=""blue"">regugee</font>")
      in HighlightKeyword