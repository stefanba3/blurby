package policies.hello

# 0.0.4
# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false
default visible = false
default enabled = false
default versioned_005 = true

allowed {
    input.role == "web-admin"
}

enabled {
    visible
}

visible {
    input.app == "web-console"
}

