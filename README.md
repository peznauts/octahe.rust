<p align="center">
<img src="https://github.com/peznauts/octahe.rust/raw/master/assets/octahe_logo.png" alt="Octahe" title="Octahe" />
</p>

[![License](https://img.shields.io/badge/license-GPL-blue.svg)](https://github.com/peznauts/octahe.rust/blob/master/LICENSE)
[![Twitter](https://img.shields.io/twitter/follow/Peznauts.svg?style=social)](https://twitter.com/intent/follow?screen_name=peznauts)
![Octahe build](https://github.com/peznauts/octahe.rust/workflows/Octahe%20build/badge.svg)

# (O)ctahe

Octahe allows you to simplify operations, create concise applications, and focus on what
you do best.

## What is Octahe?

Octahe is a deployment tool which uses the Containerfile as DSL for deploying software
via SSH, Local or Serial connections.

## Why should you consider using Octahe?

The Containerfile DSL is simple, only consisting of 16 different verbs. This means
solutions run through Octahe are inherently easy to understand and test.

> With Octahe, deployers and operators can test solutions in Containers and easily push
  to Baremetal, Virtual  machines, or even containerized targets; all without having to
  change configurations formats.

Octahe has the ability to natively proxy through multiple targets using sockets. This
capability allows deployers to flatten their approach to deployments, all without
needing to compromise infrastructure or craft obscure deployment schemes.

> Multi-key, multi-bastion, multi-user, multi-server, multi-target deployments all made
  simple.

Octahe uses simple multi-processing which leverages native Rust
[queues](https://developer.apple.com/documentation/foundation/operationqueue) of
[Operations](https://developer.apple.com/documentation/foundation/operation).
This built-in abstraction provides Octahe the ability to ensure consistent deployments
across multiple hosts, using complex dependencies, all without troubling the user.
From 1 machine to 1000, Octahe will get a solution deployed quickly and consistently,
without compromise.

> The ability to develop in containers, the power to push high performance solutions
  down to metal.

## Evolve your application by devolving the stack.

Whether you're deploying software to the cloud, building high-performance computing
environments, or IOT applications, Octahe has it covered. The Zero footprint design
employed by Octahe will get you up and running in as little as one step.

#### Test in containers, Deploy `TO` production.

While containers are fantastic tools, they can be limiting, they can create application
complexities, and they do create bottlenecks. Octahe aims to enable teams to deploy
applications into stateful Targets, using the simplicity of **Containerfile**(s),
without any of the machinery that comes alone with containers.

#### Configuration

The Octahe follows the [Dockerfile](https://docs.docker.com/engine/reference/builder)
reference with one new verb, [TO](https://github.com/peznauts/octahe.rust/blob/master/DOCUMENTATION.md#to). This new verb can be expressed
on the CLI or within a provided container file.

#### Target options

When deploying [TO](https://github.com/peznauts/octahe.rust/blob/master/DOCUMENTATION.md#to) a target Octahe provides options by supporting
options that span SSH, `localhost`, and Serial.

## Installation

TBD

### Building Octahe

#### Octahe dependencies on CentOS 8

TBD

#### Building the Octahe binary

TBD

### Deploying Octahe in Containers

TBD

### Octahe deploying Octahe

TBD

### Running functional tests

TBD

## Usage

The CLI interactions are familiar and simple.

``` shell
octahe -k ~/.ssh/id_rsa ~/Targetfile
```

The console output is simple, and easy to follow.

``` console
Beginning deployment execution
✔ Step 0/3 : COPY index.html /opt/index.html
✔ Step 1/3 : EXPOSE 7000
✔ Step 2/3 : WORKDIR /opt
✔ Step 3/3 : ENTRYPOINT python3 -m http.server 7000
```

Here's the application being deployed to 5 remote [T](https://github.com/peznauts/octahe.rust/blob/master/DOCUMENTATION.md#to)argets in realtime.

![octahe-run](https://github.com/peznauts/octahe.rust/raw/master/assets/octahe-run.gif)

### Real World Demo

Checkout the [demo repo](https://github.com/peznauts/octahe.demo), highlighting
how Octahe can be used in a more real world situation.

----

More documentation and examples can be found [here](https://github.com/peznauts/octahe.rust/blob/master/DOCUMENTATION.md).
