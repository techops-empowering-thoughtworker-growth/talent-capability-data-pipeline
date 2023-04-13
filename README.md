# Data pipeline with data build tools(dbt)
Welcome to ttdp talent capability data pipeline dbt!

### 💻 Development

1. Install dbt Core using the [installation instructions](https://docs.getdbt.com/docs/core/installation)

2. Vscode configuration
- Install dbt-power-user extension in vscode
- [dbt-power-user setup](https://github.com/innoverio/vscode-dbt-power-user#how-to-setup-the-extension)
- [Install sqlfmt](https://github.com/innoverio/vscode-dbt-power-user#format-your-dbt-sql-with-sqlfmt)

3. Development
    ```shell
    # Test the database connection and show information for debugging purposes
    dbt debug

    # Connects to the target database and runs the relevant SQL required to materialize all data models using the specified materialization strategies
    dbt run

    # build and test all selected resources (models, seeds, snapshots, tests)
    dbt build

    # Running test
    dbt test

    # Generate docs
    dbt docs serve --port 8001
    ```

### 🍃 Testing
Testing scope and content:
1. [Must have] model: 
    1. column testing: dev
    2. scenario testing: dev & qa. QA prepares test data and scenarios before kick off, dev completes scenario testing in the card
2. [Nice to have] source
3. [Nice to have] macros

Tools:
1. Using [dbt-core test]()
2. Using [dbt-expectation](https://github.com/calogica/dbt-expectations):  assert what you expect from the data with available expectations
3. Using [dbt-unit-testing](https://github.com/EqualExperts/dbt-unit-testing):  test models independently by mocking their dependencies


### ⚙️ dbt Packages - provide extensions

1. Specify the package(s) you wish to add using one of the supported syntaxes to `packages.yml`.
2. Run dbt deps to install the package(s). 

More details can be found in [Packages](https://docs.getdbt.com/docs/build/packages)

### 💡 Deploy to production
Using profiles.yml to seperate different envs


### 🙋 Q&A
1. vscode-dbt-power-user showing "DBT is not installed":
[Possible solutions](https://github.com/innoverio/vscode-dbt-power-user/issues/87)

### Resources
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- [Custom profile directory](https://docs.getdbt.com/docs/core/connection-profiles#advanced-customizing-a-profile-directory)
- [dbt command reference](https://docs.getdbt.com/reference/dbt-commands)

### Preparation
- [ ] Repo configuration: initialization, talisman, git hooks, README
- [ ] Development
- [ ] Testing
- [ ] CI: dev and prod
- [ ] Alert



