# openapi::MethodRepoMethod


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**methodNamespace** | **character** | The namespace of the method in Agora | 
**methodName** | **character** | The name of the method in Agora | 
**methodVersion** | **integer** | The integer method version in Agora (or a string method version for Dockstore) | 
**methodPath** | **character** | The path of the method in Dockstore | [optional] 
**sourceRepo** | **character** | The method&#39;s repository, currently one of \&quot;agora\&quot; or \&quot;dockstore\&quot; | [optional] 
**methodUri** | **character** | URI that specifies the method&#39;s repository and captures all the information necessary to identify the method within its repository (e.g. agora://namespace/name/1, dockstore://path/version) | [optional] 


