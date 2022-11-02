## Prerequisites

1. Git
2. JDK 11

## Building from GitHub

1. Clone the project.

    If you want to build a release from source codes, set a `tag name` by using `git clone -b [tag_name] ...` while cloning.

    ```bash
    git clone --recurse-submodules https://github.com/sourceplusplus/sourceplusplus
    cd sourceplusplus/
    ```
    **OR**
    ```bash
    git clone https://github.com/sourceplusplus/sourceplusplus
    cd sourceplusplus/
    git submodule init
    git submodule update
    ```

1. Assemble the project.
    ```bash
    ./gradlew -p platform assemble
    ```
