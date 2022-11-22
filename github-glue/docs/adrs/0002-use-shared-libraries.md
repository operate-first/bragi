# Use Shared Libraries

## Context and Problem Statement

This framework wants to support many different bots created from the same template. We need to have a way to unify how the bot accesses Kubernetes, exposes metrics etc.

## Considered Options

* Provide the shared code as part of the template
* Extract code into modules published as npm packages

## Decision Outcome

Chosen option: "Extract code into modules published as npm packages", because

* It allows us to release each module independently.
* It is easier for individual bot creators to mix and match what integrations they need.
* Syncing changes from template repositories into descendants can be complex issue compared to npm dependency package upgrades locally.
