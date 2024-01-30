# vagrant-saltstack

This guide demonstrates how to quickly set up a virtualized Debian environment using Vagrant and VirtualBox. We'll install masterless Salt within this environment, creating an isolated development environment for configuration testing.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)

## Prerequisites

1. [Virtualbox](https://virtualbox.org/) installed on your machine.
2. [Vagrant](https://vagrantup.com/) installed on your machine.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/limheng/vagrant-saltstack
   cd vagrant-saltstack
   ```

## Usage

1. Initiate virtual environment:

   ```bash
   vagrant up
   ```

2. Access virtual machine:
   ```bash
   vagrant ssh
   ```
