/* helper */
({
    updateItem : function(component, item, callback) {
        // Update the items via a server-side action
        var action = component.get("c.saveItem");
        action.setParams({"item" : item});
        // Set any optional callback and enqueue the action
        if (callback) {
            action.setCallback(this, callback);
        }
        $A.enqueueAction(action);
    }
})