# Developer

```
Usage: platform-cli [OPTIONS] COMMAND [ARGS]...

Options:
  -v, --verbose           Enable verbose mode
  -p, --platform TEXT     Source++ platform host
  -c, --certificate PATH  Source++ platform certificate
  -k, --key PATH          Source++ platform key
  -h, --help              Show this message and exit

Commands:
  add-live-breakpoint
  add-live-log
  get-live-breakpoints
  get-live-logs
  get-live-instruments
  remove-live-instrument
  remove-live-instruments
```

### add-live-breakpoint

#### Description

Add live breakpoint to running application.

#### Synopsis

```
add-live-breakpoint [OPTIONS] <source> <line>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **source**           | Qualified class name (e.g. `com.company.Webapp`)                                   |
| **line**             | Line number                                                                        |

#### Options

| Option                  | Description                                                                        |
| :---------------------- | :--------------------------------------------------------------------------------- |
| **-condition**, **-c**  | Condition required to trigger live breakpoint                                      |
| **-expiresAt**, **-e**  | Maximum time-to-live (epoch timestamp \[ms\])                                      |
| **-hitLimit**, **-h**   | Maximum amount of times to trigger live breakpoint                                 |

#### Examples

??? example "Basic"
    **Input**:
    ```
    add-live-breakpoint com.company.Webapp 42
    ```

    **Output**:
    ```
    {
      "id" : "6803a185-d1e8-41dd-8b09-250bdb606e39",
      "location" : {
        "source" : "com.company.Webapp",
        "line" : 42
      },
      "hitLimit" : 1
    }
    ```

??? example "Advanced"
    **Input**:
    ```
    add-live-breakpoint -c 1==1 -h 5 com.company.Webapp 42
    ```

    **Output**:
    ```
    {
      "id" : "6803a185-d1e8-41dd-8b09-250bdb606e39",
      "location" : {
        "source" : "com.company.Webapp",
        "line" : 42
      },
      "condition" : "1==1",
      "hitLimit" : 5
    }
    ```

---

### add-live-log

#### Description

Add live log to running application.

#### Synopsis

```
add-live-log [OPTIONS] <source> <line> <logFormat>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **source**           | Qualified class name (e.g. `com.company.Webapp`)                                   |
| **line**             | Line number                                                                        |
| **logFormat**        | Format to log (e.g. `Hello {}`)                                                    |

#### Options

| Option                    | Description                                                                        |
| :------------------------ | :--------------------------------------------------------------------------------- |
| **-logArguments**, **-l** | Argument(s) to add to log format                                                   |
| **-condition**, **-c**    | Condition required to trigger live log                                             |
| **-expiresAt**, **-e**    | Maximum time-to-live (epoch timestamp \[ms\])                                      |
| **-hitLimit**, **-h**     | Maximum amount of times to trigger live log                                        |

#### Examples

??? example "Basic"
    **Input**:
    ```
    add-live-log com.company.Webapp 42 "Hello world"
    ```

    **Output**:
    ```
    {
      "id" : "fee41cab-628b-4253-9bbd-b09b536418af",
      "logFormat" : "Hello world",
      "location" : {
        "source" : "com.company.Webapp",
        "line" : 42
      },
      "hitLimit" : 1
    }
    ```

??? example "Advanced"
    **Input**:
    ```
    add-live-log -l name1 -l name2 com.company.Webapp 42 "Hello {} and {}"
    ```

    **Output**:
    ```
    {
      "id" : "fee41cab-628b-4253-9bbd-b09b536418af",
      "logFormat" : "Hello {} and {}",
      "logArguments" : [ "name1", "name2" ],
      "location" : {
        "source" : "com.company.Webapp",
        "line" : 42
      },
      "hitLimit" : 1
    }
    ```

---

### get-live-breakpoints

#### Description

Get list of live breakpoints.

#### Synopsis

```
get-live-breakpoints
```

#### Examples

??? example "Basic"
    **Input**:
    ```
    get-live-breakpoints
    ```

    **Output**:
    ```
    [{
      "id" : "6803a185-d1e8-41dd-8b09-250bdb606e39",
      "location" : {
        "source" : "com.company.Webapp",
        "line" : 42
      },
      "condition" : "1==1",
      "hitLimit" : 5
    }]
    ```

---

### get-live-logs

#### Description

Get list of live logs.

#### Synopsis

```
get-live-logs
```

#### Examples

??? example "Basic"
    **Input**:
    ```
    get-live-logs
    ```

    **Output**:
    ```
    [{
      "id" : "fee41cab-628b-4253-9bbd-b09b536418af",
      "logFormat" : "Hello {} and {}",
      "logArguments" : [ "name1", "name2" ],
      "location" : {
        "source" : "com.company.Webapp",
        "line" : 42
      },
      "hitLimit" : 1
    }]
    ```

---

### get-live-instruments

#### Description

Get list of live instruments.

#### Synopsis

```
get-live-instruments
```

#### Examples

??? example "Basic"
    **Input**:
    ```
    get-live-instruments
    ```

    **Output**:
    ```
    [{
      "id" : "6803a185-d1e8-41dd-8b09-250bdb606e39",
      "location" : {
        "source" : "com.company.Webapp",
        "line" : 42
      },
      "condition" : "1==1",
      "hitLimit" : 5,
      "type": "BREAKPOINT"
    },
    {
      "id" : "fee41cab-628b-4253-9bbd-b09b536418af",
      "logFormat" : "Hello {} and {}",
      "logArguments" : [ "name1", "name2" ],
      "location" : {
        "source" : "com.company.Webapp",
        "line" : 42
      },
      "hitLimit" : 1,
      "type": "LOG"
    }]
    ```

---

### remove-live-instrument

#### Description

Remove an existing live instrument.

#### Synopsis

```
remove-live-instrument <id>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **id**               | Existing live instrument id                                                        |

#### Examples

??? example "Basic"
    **Input**:
    ```
    remove-live-instrument 6567ee97-ec61-4b23-80d7-cef8206b629e
    ```

    **Output**:
    ```
    {
      "id" : "6567ee97-ec61-4b23-80d7-cef8206b629e",
      "location" : {
        "source" : "com.company.Webapp",
        "line" : 42
      },
      "hitLimit" : 1
    }
    ```

---

### remove-live-instruments

#### Description

Remove existing live instruments.

#### Synopsis

```
remove-live-instruments <source> <line>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **source**           | Qualified class name (e.g. `com.company.Webapp`)                                   |
| **line**             | Line number                                                                        |

#### Examples

??? example "Basic"
    **Input**:
    ```
    remove-live-instruments com.company.Webapp 42
    ```

    **Output**:
    ```
    [{
      "id" : "6803a185-d1e8-41dd-8b09-250bdb606e39",
      "location" : {
        "source" : "com.company.Webapp",
        "line" : 42
      },
      "condition" : "1==1",
      "hitLimit" : 5,
      "type": "BREAKPOINT"
    },
    {
      "id" : "fee41cab-628b-4253-9bbd-b09b536418af",
      "logFormat" : "Hello {} and {}",
      "logArguments" : [ "name1", "name2" ],
      "location" : {
        "source" : "com.company.Webapp",
        "line" : 42
      },
      "hitLimit" : 1,
      "type": "LOG"
    }]
    ```

---