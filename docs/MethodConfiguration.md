# openapi::MethodConfiguration


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**namespace** | **character** | This method configuration&#39;s namespace | 
**name** | **character** | The name of the method configuration | 
**rootEntityType** | **character** | The root entity type that the method will be running on. Optional if this method config doesn&#39;t run on an entity (i.e. uses only workspace attributes and literal inputs). | [optional] 
**prerequisites** | **map(character)** | Map[String, String] | [optional] 
**inputs** | **map(character)** | Map[String, String] | 
**outputs** | **map(character)** | Map[String, String] | [optional] 
**methodRepoMethod** | [**MethodRepoMethod**](MethodRepoMethod.md) |  | 
**methodConfigVersion** | **integer** | Version number, incremented on edit | [optional] 
**deleted** | **character** | Is this config marked as deleted? | [optional] 
**dataReferenceName** | **character** | the name of the data reference within this workspace to be used to derive input values | [optional] 


