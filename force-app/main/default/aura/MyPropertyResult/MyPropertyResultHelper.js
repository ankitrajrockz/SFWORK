({
    fecthAllProp : function(component, event, helper) {
        var action=component.get('c.getLatestProperty');
        action.setCallback(this,function(response){
            var responseval=response.getReturnValue();
            component.set('v.propertyList',responseval);
            component.set('v.propertiesFound',true);
        }   
        );
        $A.enqueueAction(action,false);
    }
})
