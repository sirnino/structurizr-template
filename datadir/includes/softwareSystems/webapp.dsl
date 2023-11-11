webapp = softwareSystem "My Webapp" {
    ui = container "UI" {
        tags "ui" "frontend"
        user -> this "Uses" {
          tags "sync"
        }
        mantainer -> this "Monitors" {
            tags "sync"
        }
    }
    api = container "API" {
        tags "backend" "api"
        webapp.ui -> this "Powered by" {
            tags "sync" "data-plane"
        }
        mantainer -> this "Monitors" {
            tags "sync"
        }
    }
    controller = container "Controller" {
        tags "backend" "controller"
        webapp.api -> this "Send commands to through Kafka topic X" {
            tags "async" "control-plane"
        }
        mantainer -> this "Monitors" {
            tags "sync"
        }
    }
    executor = container "Executor" {
        tags "backend" "executor" "ephemeral"
        webapp.controller -> this "Spawns" {
            tags "sync" "control-plane" "lifecycle"
        }
        mantainer -> this "Monitors" {
            tags "sync"
        }
    }
    db = container "Database" {
        tags "database"
        webapp.api -> this "Save to and Read from" {
            tags "sync" "data-plane"
        }
    }         
}