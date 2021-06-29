# openapi::NewMethodConfigIngest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**namespace** | **character** | Method configuration namespace | 
**name** | **character** | Method configuration name | 
**rootEntityType** | **character** | Method configuration root entity type | 
**inputs** | **map(character)** | Input map - Map[string, string] | 
**outputs** | **map(character)** | Output map - Map[string, string] | 
**prerequisites** | **map(character)** | Prerequisites map - Map[string, string] | 
**methodRepoMethod** | **map(character)** | Method ID - Map | 
**methodConfigVersion** | **integer** | Version number, incremented on edit | 
**deleted** | **character** | Is this config marked as deleted? | [default to FALSE]


