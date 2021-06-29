# openapi::ConfigurationIngest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**namespace** | **character** | Method configuration namespace | 
**name** | **character** | Method configuration name | 
**rootEntityType** | **character** | Root entity type | 
**workspaceName** | **map(character)** | Map[String, String] with corresponding workspace-related information - name and namespace | 
**methodRepoMethod** | **map(character)** | Map[String, String] with corresponding method-related information | 
**outputs** | **map(character)** | Map[String, String] with outputs information | 
**inputs** | **map(character)** | Map[String, String] with inputs information | 
**prerequisites** | **map(character)** | Map[String, String] of prerequisites (keys unused, will be removed in the future) | 


