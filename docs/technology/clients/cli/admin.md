# Admin

```
Usage: platform-cli [OPTIONS] COMMAND [ARGS]...

Options:
  -v, --verbose           Enable verbose mode
  -p, --platform TEXT     Source++ platform host
  -c, --certificate PATH  Source++ platform certificate
  -k, --key PATH          Source++ platform key
  -h, --help              Show this message and exit

Commands:
  add-developer
  get-developers
  remove-developer
  refresh-authorization-code

  add-role
  remove-role
  add-developer-role
  remove-developer-role
  get-developer-roles
  get-roles

  add-role-permission
  remove-role-permission
  get-developer-permissions
  get-role-permissions

  add-access-permission
  remove-access-permission
  add-role-access-permission
  remove-role-access-permission
  get-developer-access-permissions
  get-role-access-permissions
  get-access-permissions
```


## User Management

### add-developer

#### Description

Add a new developer.

#### Synopsis

```
add-developer <id>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **id**               | A unique identifier for this developer                                             |

#### Examples

??? example "Basic"
    **Input**:
    ```
    add-developer bob@email.com
    ```

    **Output**:
    ```
    Ai1xohipmS3yRLqSIQJLN1LOOuFz6c2CwNgGKuMvhxTM6IgX6F
    ```

---

### get-developers

#### Description

Get list of developers.

#### Synopsis

```
get-developers
```

#### Examples

??? example "Basic"
    **Input**:
    ```
    get-developers
    ```

    **Output**:
    ```
    [system, bob@email.com, john.doe]
    ```

---

### remove-developer

#### Description

Remove an existing developer.

#### Synopsis

```
remove-developer <id>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **id**               | Existing developer id                                                              |

#### Examples

??? example "Basic"
    **Input**:
    ```
    remove-developer bob@email.com
    ```

---

### refresh-authorization-code

#### Description

Refresh a developer's authorization code.

#### Synopsis

```
refresh-authorization-code <id>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **id**               | Existing developer id                                                              |

#### Examples

??? example "Basic"
    **Input**:
    ```
    refresh-authorization-code bob@email.com
    ```

    **Output**:
    ```
    Ai1xohipmS3yRLqSIQJLN1LOOuFz6c2CwNgGKuMvhxTM6IgX6F
    ```

---

## Roles

### add-role

#### Description

Add a new role.

#### Synopsis

```
add-role <role>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **role**             | The role name                                                                      |

#### Examples

??? example "Basic"
    **Input**:
    ```
    add-role super_user
    ```

---

### remove-role

#### Description

Remove an existing role.

#### Synopsis

```
remove-role <role>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **role**             | The role name                                                                      |

#### Examples

??? example "Basic"
    **Input**:
    ```
    remove-role super_user
    ```

---

### add-developer-role

#### Description

Add a new role to an existing developer.

#### Synopsis

```
add-developer-role <id> <role>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **id**               | Developer ID                                                                       |
| **role**             | The role name                                                                      |

#### Examples

??? example "Basic"
    **Input**:
    ```
    add-developer-role bob@email.com super_user
    ```

---

### remove-developer-role

#### Description

Remove an existing role from an existing developer.

#### Synopsis

```
remove-developer-role <id> <role>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **id**               | Developer ID                                                                       |
| **role**             | The role name                                                                      |

#### Examples

??? example "Basic"
    **Input**:
    ```
    remove-developer-role bob@email.com super_user
    ```

---

### get-developer-roles

#### Description

Get all roles for a given developer.

#### Synopsis

```
get-developer-roles <id>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **id**               | Developer ID                                                                       |

#### Examples

??? example "Basic"
    **Input**:
    ```
    get-developer-roles bob@email.com
    ```

    **Output**:
    ```
    [super_user, role_user]
    ```

---

### get-roles

#### Description

Get list of roles.

#### Synopsis

```
get-roles
```

#### Examples

??? example "Basic"
    **Input**:
    ```
    get-roles
    ```

    **Output**:
    ```
    [super_user, role_manager, role_user]
    ```

---

## Role Permissions

### add-role-permission

#### Description

Add a new role permission to an existing role.

#### Synopsis

```
add-role-permission <role> <permission>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **role**             | The role name                                                                      |
| **permission**       | The [RolePermission](../graphql/#rolepermission)                                   |

#### Examples

??? example "Basic"
    **Input**:
    ```
    add-role-permission super_user ADD_LIVE_LOG
    ```

---

### remove-role-permission

#### Description

Remove an existing role permission from an existing role.

#### Synopsis

```
remove-role-permission <role> <permission>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **role**             | The role name                                                                      |
| **permission**       | The [RolePermission](../graphql/#rolepermission)                                   |

#### Examples

??? example "Basic"
    **Input**:
    ```
    remove-role-permission super_user ADD_LIVE_LOG
    ```

---

### get-developer-permissions

#### Description

Get all role permissions for a given developer.

#### Synopsis

```
get-developer-permissions <id>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **id**               | Developer ID                                                                       |

#### Examples

??? example "Basic"
    **Input**:
    ```
    get-developer-permissions bob@email.com
    ```

    **Output**:
    ```
    [ADD_LIVE_LOG, REMOVE_LIVE_INSTRUMENT, GET_LIVE_INSTRUMENTS, GET_LIVE_LOGS, ADD_LIVE_BREAKPOINT, GET_LIVE_BREAKPOINTS]
    ```

---

### get-role-permissions

#### Description

Get all role permissions for a given role.

#### Synopsis

```
get-developer-permissions <id>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **role**             | The role name                                                                      |

#### Examples

??? example "Basic"
    **Input**:
    ```
    get-role-permissions super_user
    ```

    **Output**:
    ```
    [ADD_DEVELOPER, REMOVE_DEVELOPER, ADD_ROLE, REMOVE_ROLE, ADD_ROLE_PERMISSION, REMOVE_ROLE_PERMISSION]
    ```

---

## Access Permissions

### add-access-permission

#### Description

Add a new instrument access permission.

#### Synopsis

```
add-access-permission [OPTIONS] <type>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **type**             | The [AccessType](../graphql/#accesstype)                                           |

#### Options

| Option                        | Description                                                                        |
| :---------------------------- | :--------------------------------------------------------------------------------- |
| **-locationPattern**, **-l**  | The instrument location pattern (wildcard = *)                                     |

#### Examples

??? example "Basic"
    **Input**:
    ```
    add-access-permission -l com.example.* WHITE_LIST
    ```

    **Output**:
    ```
    {
      "id": "1216f3d2-56b6-4ce8-be25-c905ffebb84b",
      "locationPatterns": [
        "com.example.*"
      ],
      "type": "WHITE_LIST"
    }
    ```
---

### remove-access-permission

#### Description

Remove an existing instrument access permission.

#### Synopsis

```
remove-access-permission <id>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **id**               | The instrument access permission id                                                |

#### Examples

??? example "Basic"
    **Input**:
    ```
    remove-access-permission 1216f3d2-56b6-4ce8-be25-c905ffebb84b
    ```

---

### add-role-access-permission

#### Description

Add an existing instrument access permission to an existing role.

#### Synopsis

```
add-role-access-permission <role> <type>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **role**             | The role name                                                                      |
| **id**               | The instrument access permission id                                                |

#### Examples

??? example "Basic"
    **Input**:
    ```
    add-role-access-permission super_user fffd7416-a50e-4bf7-8297-808b34b140b4
    ```
---

### remove-role-access-permission

#### Description

Remove an existing instrument access permission from an existing role.

#### Synopsis

```
remove-role-access-permission <role> <id>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **role**             | The role name                                                                      |
| **id**               | The instrument access permission id                                                |

#### Examples

??? example "Basic"
    **Input**:
    ```
    remove-role-access-permission super_user 1216f3d2-56b6-4ce8-be25-c905ffebb84b
    ```

---

### get-developer-access-permissions

#### Description

Get all instrument access permissions for a given developer.

#### Synopsis

```
get-developer-access-permissions <id>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **id**               | Developer ID                                                                       |

#### Examples

??? example "Basic"
    **Input**:
    ```
    get-developer-access-permissions bob@email.com
    ```

    **Output**:
    ```
    {
      "id": "1216f3d2-56b6-4ce8-be25-c905ffebb84b",
      "locationPatterns": [
        "com.example.*"
      ],
      "type": "WHITE_LIST"
    }
    ```

---

### get-role-access-permissions

#### Description

Get all instrument access permissions for a given role.

#### Synopsis

```
get-role-access-permissions <id>
```

#### Arguments

| Argument             | Description                                                                        |
| :------------------- | :--------------------------------------------------------------------------------- |
| **role**             | The role name                                                                      |

#### Examples

??? example "Basic"
    **Input**:
    ```
    get-role-access-permissions super_user
    ```

    **Output**:
    ```
    {
      "id": "90e15b43-37c1-478b-a698-3523f1222971",
      "locationPatterns": [
        "*"
      ],
      "type": "WHITE_LIST"
    }
    ```

---

### get-access-permissions

#### Description

Get all instrument access permissions.

#### Synopsis

```
get-access-permissions
```

#### Examples

??? example "Basic"
    **Input**:
    ```
    get-access-permissions
    ```

    **Output**:
    ```
    [{
      "id": "90e15b43-37c1-478b-a698-3523f1222971",
      "locationPatterns": [
        "*"
      ],
      "type": "WHITE_LIST"
    },{
      "id": "1216f3d2-56b6-4ce8-be25-c905ffebb84b",
      "locationPatterns": [
        "com.example.*"
      ],
      "type": "WHITE_LIST"
    }]
    ```
