workspace {

    !identifiers hierarchical

    model {
        !include includes/people.dsl
        !include includes/softwareSystems
        !include relationships.dsl
    }

    views {
        !include includes/views
        !include includes/styles.dsl
    }

}
