# GraphQL API

## Query
<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>getAccessPermissions</strong></td>
<td valign="top">[<a href="#accesspermission">AccessPermission</a>!]!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>getAccessPermission</strong></td>
<td valign="top"><a href="#accesspermission">AccessPermission</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>getRoleAccessPermissions</strong></td>
<td valign="top">[<a href="#accesspermission">AccessPermission</a>!]!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">role</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>getDeveloperAccessPermissions</strong></td>
<td valign="top">[<a href="#accesspermission">AccessPermission</a>!]!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">developerId</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>getDataRedactions</strong></td>
<td valign="top">[<a href="#dataredaction">DataRedaction</a>!]!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>getDataRedaction</strong></td>
<td valign="top"><a href="#dataredaction">DataRedaction</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>getRoleDataRedactions</strong></td>
<td valign="top">[<a href="#dataredaction">DataRedaction</a>!]!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">role</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>getDeveloperDataRedactions</strong></td>
<td valign="top">[<a href="#dataredaction">DataRedaction</a>!]!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">developerId</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>getRoles</strong></td>
<td valign="top">[<a href="#developerrole">DeveloperRole</a>!]!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>getRolePermissions</strong></td>
<td valign="top">[<a href="#rolepermission">RolePermission</a>!]!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">role</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>getDeveloperRoles</strong></td>
<td valign="top">[<a href="#developerrole">DeveloperRole</a>!]!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>getDeveloperPermissions</strong></td>
<td valign="top">[<a href="#rolepermission">RolePermission</a>!]!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>getDevelopers</strong></td>
<td valign="top">[<a href="#developer">Developer</a>!]!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>getLiveLogs</strong></td>
<td valign="top">[<a href="#livelog">LiveLog</a>!]!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>getLiveBreakpoints</strong></td>
<td valign="top">[<a href="#livebreakpoint">LiveBreakpoint</a>!]!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>getLiveInstruments</strong></td>
<td valign="top">[<a href="#liveinstrument">LiveInstrument</a>!]!</td>
<td></td>
</tr>
</tbody>
</table>

## Mutation
<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>addAccessPermission</strong></td>
<td valign="top"><a href="#accesspermission">AccessPermission</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">locationPatterns</td>
<td valign="top">[<a href="#string">String</a>!]</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">type</td>
<td valign="top"><a href="#accesstype">AccessType</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>removeAccessPermission</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>addRoleAccessPermission</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">role</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">accessPermissionId</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>removeRoleAccessPermission</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">role</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">accessPermissionId</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>addDataRedaction</strong></td>
<td valign="top"><a href="#dataredaction">DataRedaction</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">redactionPattern</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>removeDataRedaction</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>addRoleDataRedaction</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">role</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">dataRedactionId</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>removeRoleDataRedaction</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">role</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">dataRedactionId</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>addRole</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">role</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>removeRole</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">role</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>addRolePermission</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">role</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">permission</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>removeRolePermission</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">role</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">permission</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>addDeveloperRole</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">role</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>removeDeveloperRole</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">role</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>addDeveloper</strong></td>
<td valign="top"><a href="#developer">Developer</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>refreshAuthorizationCode</strong></td>
<td valign="top"><a href="#developer">Developer</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>removeDeveloper</strong></td>
<td valign="top"><a href="#boolean">Boolean</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>removeLiveInstrument</strong></td>
<td valign="top"><a href="#liveinstrument">LiveInstrument</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">id</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>removeLiveInstruments</strong></td>
<td valign="top">[<a href="#liveinstrument">LiveInstrument</a>!]!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">source</td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">line</td>
<td valign="top"><a href="#int">Int</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>addLiveLog</strong></td>
<td valign="top"><a href="#livelog">LiveLog</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">input</td>
<td valign="top"><a href="#liveloginput">LiveLogInput</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>addLiveBreakpoint</strong></td>
<td valign="top"><a href="#livebreakpoint">LiveBreakpoint</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" align="right" valign="top">input</td>
<td valign="top"><a href="#livebreakpointinput">LiveBreakpointInput</a>!</td>
<td></td>
</tr>
</tbody>
</table>

## Objects

### AccessPermission

<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>id</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>locationPatterns</strong></td>
<td valign="top">[<a href="#string">String</a>!]</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>type</strong></td>
<td valign="top"><a href="#accesstype">AccessType</a>!</td>
<td></td>
</tr>
</tbody>
</table>

### DataRedaction

<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>id</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>redactionPattern</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
</tbody>
</table>

### Developer

<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>id</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>accessToken</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
</tbody>
</table>

### DeveloperRole

<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>roleName</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
</tbody>
</table>

### LiveBreakpoint

<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>id</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>location</strong></td>
<td valign="top"><a href="#livesourcelocation">LiveSourceLocation</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>condition</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>expiresAt</strong></td>
<td valign="top"><a href="#long">Long</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>hitLimit</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>type</strong></td>
<td valign="top"><a href="#liveinstrumenttype">LiveInstrumentType</a></td>
<td></td>
</tr>
</tbody>
</table>

### LiveLog

<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>logFormat</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>logArguments</strong></td>
<td valign="top">[<a href="#string">String</a>!]!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>id</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>location</strong></td>
<td valign="top"><a href="#livesourcelocation">LiveSourceLocation</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>condition</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>expiresAt</strong></td>
<td valign="top"><a href="#long">Long</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>hitLimit</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>type</strong></td>
<td valign="top"><a href="#liveinstrumenttype">LiveInstrumentType</a></td>
<td></td>
</tr>
</tbody>
</table>

### LiveSourceLocation

<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>source</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>line</strong></td>
<td valign="top"><a href="#int">Int</a>!</td>
<td></td>
</tr>
</tbody>
</table>

## Inputs

### LiveBreakpointInput

<table>
<thead>
<tr>
<th colspan="2" align="left">Field</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>location</strong></td>
<td valign="top"><a href="#livesourcelocationinput">LiveSourceLocationInput</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>condition</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>expiresAt</strong></td>
<td valign="top"><a href="#long">Long</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>hitLimit</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td></td>
</tr>
</tbody>
</table>

### LiveLogInput

<table>
<thead>
<tr>
<th colspan="2" align="left">Field</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>logFormat</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>logArguments</strong></td>
<td valign="top">[<a href="#string">String</a>!]</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>location</strong></td>
<td valign="top"><a href="#livesourcelocationinput">LiveSourceLocationInput</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>condition</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>expiresAt</strong></td>
<td valign="top"><a href="#long">Long</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>hitLimit</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td></td>
</tr>
</tbody>
</table>

### LiveSourceLocationInput

<table>
<thead>
<tr>
<th colspan="2" align="left">Field</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>source</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>line</strong></td>
<td valign="top"><a href="#int">Int</a>!</td>
<td></td>
</tr>
</tbody>
</table>

## Enums

### AccessType

<table>
<thead>
<th align="left">Value</th>
<th align="left">Description</th>
</thead>
<tbody>
<tr>
<td valign="top"><strong>BLACK_LIST</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>WHITE_LIST</strong></td>
<td></td>
</tr>
</tbody>
</table>

### LiveInstrumentType

<table>
<thead>
<th align="left">Value</th>
<th align="left">Description</th>
</thead>
<tbody>
<tr>
<td valign="top"><strong>BREAKPOINT</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>LOG</strong></td>
<td></td>
</tr>
</tbody>
</table>

### RolePermission

<table>
<thead>
<th align="left">Value</th>
<th align="left">Description</th>
</thead>
<tbody>
<tr>
<td valign="top"><strong>ADD_DEVELOPER</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>REMOVE_DEVELOPER</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>GET_DEVELOPERS</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>REFRESH_DEVELOPER_TOKEN</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>ADD_ROLE</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>REMOVE_ROLE</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>GET_ROLES</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>GET_DEVELOPER_ROLES</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>ADD_DEVELOPER_ROLE</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>REMOVE_DEVELOPER_ROLE</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>GET_DEVELOPER_PERMISSIONS</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>GET_ROLE_PERMISSIONS</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>ADD_ROLE_PERMISSION</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>REMOVE_ROLE_PERMISSION</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>GET_ACCESS_PERMISSIONS</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>GET_DATA_REDACTIONS</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>UPDATE_DATA_REDACTION</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>ADD_ACCESS_PERMISSION</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>REMOVE_ACCESS_PERMISSION</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>ADD_LIVE_LOG</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>ADD_LIVE_BREAKPOINT</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>GET_LIVE_INSTRUMENTS</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>GET_LIVE_LOGS</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>GET_LIVE_BREAKPOINTS</strong></td>
<td></td>
</tr>
<tr>
<td valign="top"><strong>REMOVE_LIVE_INSTRUMENT</strong></td>
<td></td>
</tr>
</tbody>
</table>

## Scalars

### Boolean

Built-in Boolean

### Int

Built-in Int

### Long

Long type

### String

Built-in String


## Interfaces


### LiveInstrument

<table>
<thead>
<tr>
<th align="left">Field</th>
<th align="right">Argument</th>
<th align="left">Type</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr>
<td colspan="2" valign="top"><strong>id</strong></td>
<td valign="top"><a href="#string">String</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>location</strong></td>
<td valign="top"><a href="#livesourcelocation">LiveSourceLocation</a>!</td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>condition</strong></td>
<td valign="top"><a href="#string">String</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>expiresAt</strong></td>
<td valign="top"><a href="#long">Long</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>hitLimit</strong></td>
<td valign="top"><a href="#int">Int</a></td>
<td></td>
</tr>
<tr>
<td colspan="2" valign="top"><strong>type</strong></td>
<td valign="top"><a href="#liveinstrumenttype">LiveInstrumentType</a></td>
<td></td>
</tr>
</tbody>
</table>
