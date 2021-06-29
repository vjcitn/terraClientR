# openapi::EntityCopyResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entitiesCopied** | [**array[AttributeEntityReference]**](AttributeEntityReference.md) | the entities that were successfully copied into the workspace | 
**hardConflicts** | [**array[EntityHardConflict]**](EntityHardConflict.md) | these entities already exist in your workspace | 
**softConflicts** | [**array[EntitySoftConflict]**](EntitySoftConflict.md) | the conflicts within your entity subtrees. note that this will be empty if there are hard conflicts | 


