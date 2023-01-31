(ActivityDescription) =>
let 
        #"Replace 01" = Replacer.ReplaceText((ActivityDescription),"IDP","<font color=""blue"">IDP</font>"),
        #"Replace 02" = Replacer.ReplaceText(#"Replace 01","IDP","<font color=""blue"">IDP</font>"),     
        #"Replace 03" = Replacer.ReplaceText(#"Replace 02","idp","<font color=""blue"">IDP</font>"),
        #"Replace 04" = Replacer.ReplaceText(#"Replace 03","Displaced","<font color=""blue"">Displaced</font>"),
        #"Replace 05" = Replacer.ReplaceText(#"Replace 04","displaced","<font color=""blue"">displaced</font>"),
        #"Replace 06" = Replacer.ReplaceText(#"Replace 05","Refugee","<font color=""blue"">Refugee</font>"),
        #"Replace 07" = Replacer.ReplaceText(#"Replace 06","refugee","<font color=""blue"">regugee</font>")
      in #"Replace 07"