({
    fecthAllProp : function(component, event, helper) {
        helper.fecthAllProp(component, event, helper);
    },
    ownerDetails : function(component, event, helper) {
        var eventSource= event.getSource();
        var propOwner=eventSource.get('v.value');
        
        component.set('v.propownerId',propOwner);
        component.set('v.openOwnerDetails',"true");
        
        
    },
    feedbackClk : function(component, event, helper) {
        
    },
    propertyDetails : function(component, event, helper) {
        
    },
    closeOwnerModel : function(component, event, helper) {
        component.set('v.openOwnerDetails',false);
    }
})
