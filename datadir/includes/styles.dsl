styles {
    element "Software System" {
        background #1168bd
        color #ffffff
    }
    element "Container" {
        background #449bef
        color #ffffff
    }
    element "Person" {
        shape person
        width 150
        height 150
        fontSize 20
    }
    element "database" {
        shape cylinder
        width 300
    }
    element "ephemeral" {
        border "dashed"
    }

    relationship "sync" {
        style "solid"
    }

    relationship "async" {
        style "dashed"
    }

    relationship "data-plane" {
        color green
    }

    relationship "control-plane" {
        color red
    }

    relationship "lifecycle" {
        routing "curved"
        thickness 10
    }

}