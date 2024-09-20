// Define actions as strings
action "create", "read", "update", "delete";

// Define roles for principal
principal Role = "Broker" or "Manager";

// Define resources
resource Feature {
    app_name: String,
    name: String,
    type: String // "feature" or "endpoint"
};

// Policies for Brokers
permit(
    principal in Role::"Broker", 
    action in ["create", "read", "update"], 
    resource.app_name in ["evo-api", "evo-frontend"]
)
when {
    resource.name in ["quotes", "claims"]
};

// Policies for Managers
permit(
    principal in Role::"Manager", 
    action in ["read", "delete"], 
    resource.app_name in ["evo-api", "evo-frontend"]
)
when {
    resource.name in ["quotes", "claims"]
};
