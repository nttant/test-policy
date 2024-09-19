// Define actions
action create, read, update, delete;

// Define roles
principal Broker, Manager;

// Define resources
resource Feature {
    app_name: String,
    name: String,
    type: String // "feature" or "endpoint"
};

// Policies for Brokers
permit(
    principal == Broker, 
    action in [create, read, update], 
    resource.app_name in ["evo-api", "evo-frontend"]
)
when {
    resource.name in ["quotes", "claims"]
};

// Policies for Managers
permit(
    principal == Manager, 
    action in [read, delete], 
    resource.app_name in ["evo-api", "evo-frontend"]
)
when {
    resource.name in ["quotes", "claims"]
};
