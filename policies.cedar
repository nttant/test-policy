permit (
    principal in Role::"Evo-Admin",
    action in [Action::"create", Action::"read", Action::"update", Action::"delete"],
    resource == Feature::"evo-quote"
);

permit (
    principal in Role::"Evo-Editor",
    action in [Action::"read", Action::"update"],
    resource == Feature::"evo-quote"
);
   
permit (
    principal in Role::"Evo-Viewer",
    action in [Action::"read"],
    resource == Feature::"evo-quote"
);

permit (
    principal in Role::"Evo-Admin",
    action in [Action::"create", Action::"read", Action::"update", Action::"delete"],
    resource == Feature::"evo-settings"
);

permit (
    principal in Role::"Evo-Editor",
    action in [Action::"read"],
    resource == Feature::"evo-settings"
);
   
permit (
    principal in Role::"Evo-Viewer",
    action in [Action::"read"],
    resource == Feature::"evo-settings"
);
