package policies.hello

# default to a "closed" system, 
# only grant access when explicitly granted

default allowed = false
default visible = false
default enabled = false
default versioned_0010

allowed {
    input.role == "web-admin"
}

enabled {
    visible
}

visible {
    input.app == "web-console"
}

