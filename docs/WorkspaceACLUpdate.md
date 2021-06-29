# openapi::WorkspaceACLUpdate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **character** | email address of the user or group whose permissions will be changed | 
**accessLevel** | **character** | The access level to grant to this user or group (OWNER, READER, WRITER, NO ACCESS) | 
**canShare** | **character** | Set to true if you want this user to be able to share the workspace with other users, only meaningful for readers and writers, default false | [optional] 
**canCompute** | **character** | Set to true if you want this user to be able to launch compute in this workspace, may not be true for readers, default false for reader, true otherwise | [optional] 


