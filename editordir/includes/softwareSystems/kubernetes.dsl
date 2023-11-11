kubernetes = softwareSystem "Kubernetes Cluster" {
    api = container "API" {
        tags "orchestrator" "api"
    }
}