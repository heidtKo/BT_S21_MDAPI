({
	handleClick : function(component, event, helper) {
		var btnClicked = event.getSource();
        var btnMessage = btnClicked.get("v.label");
        component.set("v.Message", btnMessage)
	},    
    handleClick3: function(component, event, helper) {
        component.set("v.message", event.getSource().get("v.label"));
    },
    newItemEvent: function(component, event, helper) {
        helper.updateItem(component, event.getParam("item"));
    }
})