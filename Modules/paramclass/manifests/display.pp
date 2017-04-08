class paramclass::display ($decisionVariable = 0) {
    #$decisionVariable = 0

    if $decisionVariable==0 {
        # enter puppet code
        notify { '0': } 
        
    }else{
        notify { 'value': }
    }

    
    
}