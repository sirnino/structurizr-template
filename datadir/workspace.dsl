workspace {

    !identifiers hierarchical
    !docs docs
    !adrs adrs

    model {
        !include includes/people.dsl
        !include includes/softwareSystems
        !include includes/relationships.dsl
    }

    views {
        !include includes/views
        !include includes/styles.dsl
    }

}
