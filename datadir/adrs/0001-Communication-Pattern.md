# Record Architecture Decision: Async communication

Date: 2023-11-11

## Status
Accepted

## Context

We need to define the type of communication pattern to adopt for the data exchange among components

## Decision

We decided to use async communication, through Kafka

![](embed:ContainersWebapp)

## Consequences

Overhead in the infrastructure but high resilience