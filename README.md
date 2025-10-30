Perfect 👍 You already have a great `README.md` — you just need to add the **GitHub Actions build badge** (for your CI workflow) correctly near the top.

Here’s your **updated and corrected `README.md`**, including the badge in the proper place 👇

---

````markdown
# DevOps Capstone Template

[![Build Status](https://github.com/omshree22311/devops-capstone-project/actions/workflows/ci-build.yaml/badge.svg)](https://github.com/omshree22311/devops-capstone-project/actions/workflows/ci-build.yaml)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Python 3.9](https://img.shields.io/badge/Python-3.9-green.svg)](https://shields.io/)

This repository contains the starter code for the project in [**IBM-CD0285EN-SkillsNetwork DevOps Capstone Project**](https://www.coursera.org/learn/devops-capstone-project?specialization=devops-and-software-engineering) which is part of the [**IBM DevOps and Software Engineering Professional Certificate**](https://www.coursera.org/professional-certificates/devops-and-software-engineering)

---

## Usage

You should use this template to start your DevOps Capstone project. It contains all of the code that you will need to get started.

Do Not fork this code! It is meant to be used by pressing the  <span style="color:white;background:green">**Use this Template**</span> button in GitHub. This will copy the code to your own repository with no connection back to the original repository like a fork would. This is what you want.

---

## Development Environment

These labs are designed to be executed in the IBM Developer Skills Network Cloud IDE with OpenShift. Please use the links provided in the Coursera Capstone project to access the lab environment.

Once you are in the lab environment, you can initialize it with `bin/setup.sh` by sourcing it. (*Note: DO NOT run this program as a bash script. It sets environment variable and so must be sourced*):

```bash
source bin/setup.sh
````

This will install Python 3.9, make it the default, modify the bash prompt, create a Python virtual environment and activate it.

After sourcing it your prompt should look like this:

```bash
(venv) theia:project$
```

---

## Useful commands

Under normal circumstances you should not have to run these commands. They are performed automatically at setup but may be useful when things go wrong:

### Activate the Python 3.9 virtual environment

```bash
source ~/venv/bin/activate
```

### Installing Python dependencies

```bash
make install
```

### Starting the Postgres Docker container

```bash
make db
```

You can use the `docker ps` command to make sure that postgres is up and running.

---

## Project layout

The code for the microservice is contained in the `service` package. All of the test are in the `tests` folder. The code follows the **Model-View-Controller** pattern with all of the database code and business logic in the model (`models.py`), and all of the RESTful routing on the controller (`routes.py`).

```text
├── service         <- microservice package
│   ├── common/     <- common log and error handlers
│   ├── config.py   <- Flask configuration object
│   ├── models.py   <- code for the persistent model
│   └── routes.py   <- code for the REST API routes
├── setup.cfg       <- tools setup config
└── tests                       <- folder for all of the tests
    ├── factories.py            <- test factories
    ├── test_cli_commands.py    <- CLI tests
    ├── test_models.py          <- model unit tests
    └── test_routes.py          <- route unit tests
```

---

## Data Model

| Name         | Type        | Optional |
| ------------ | ----------- | -------- |
| id           | Integer     | False    |
| name         | String(64)  | False    |
| email        | String(64)  | False    |
| address      | String(256) | False    |
| phone_number | String(32)  | True     |
| date_joined  | Date        | False    |

---

## Your Task

Complete this microservice by implementing REST API's for `READ`, `UPDATE`, `DELETE`, and `LIST` while maintaining **95%** code coverage.
In true **Test Driven Development** fashion, first write tests for the code you *wish you had*, and then write the code to make them pass.

---

## Local Kubernetes Development

This repo can also be used for local Kubernetes development. It is not advised that you run these commands in the Cloud IDE environment. The purpose of these commands are to simulate the Cloud IDE environment locally on your computer.

At a minimum, you will need [Docker Desktop](https://www.docker.com/products/docker-desktop) installed on your computer. For the full development environment, you will also need [Visual Studio Code](https://code.visualstudio.com) with the [Remote Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension. All of these can be installed manually by clicking the links above or via **Homebrew** (Mac) or **Chocolatey** (Windows).

### Steps

1. Bring up a local K3D Kubernetes cluster

   ```bash
   make cluster
   ```

2. Install Tekton

   ```bash
   make tekton
   ```

3. Install ClusterTasks

   ```bash
   make clustertasks
   ```

---

## Author

[John Rofrano](https://www.coursera.org/instructor/johnrofrano)
Senior Technical Staff Member, DevOps Champion @ IBM Research, and Instructor @ Coursera

---

## License

Licensed under the Apache License.
See [LICENSE](LICENSE)

---

### <h3 align="center">© IBM Corporation 2022. All rights reserved.</h3>

```

---

✅ **What was added/changed:**
- Added **GitHub Actions build badge** under the title.
- Corrected minor markdown syntax and formatting (consistent spacing, readable sections).
- Ensured badge links to your repo’s workflow path:
```

[https://github.com/omshree22311/devops-capstone-project/actions/workflows/ci-build.yaml/badge.svg](https://github.com/omshree22311/devops-capstone-project/actions/workflows/ci-build.yaml/badge.svg)

```

Once your workflow runs once successfully, the badge will show 🟢 “passing.”  

Would you like me to also include an example section showing how the badge changes when a build fails (for documentation completeness)?
```
