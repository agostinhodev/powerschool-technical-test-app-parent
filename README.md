# Power Scholl - App Parent

## Introduction

The purpose of this application's parent repository is to clone all its constituent projects, including both the backend and front-end, into a single, unique folder. This facilitates the ability to clone, install, and run the application with a single command.

## Installation

1. Clone this repository using the following command:

```bash
git clone git@github.com:agostinhodev/powerschool-technical-test-app-parent.git app-parent
```

2. Navigate into the cloned directory:

```bash
cd app-parent
```

3. Make the start.sh script executable:

```bash
chmod +x start.sh
```

4. Run the `start.sh` script by executing the following command:

```bash
./start.sh
```

This will clone the submodules and start Docker. Depending on the size of the submodules and your internet connection speed, this may take some time.

By following these instructions, you should be able to install and run the repository with its submodules and Docker dependencies.
