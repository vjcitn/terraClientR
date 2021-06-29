# openapi::ConfigurationPayload


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | Name of this config | [optional] [default to &#39;cancer_exome_pipeline_v2&#39;]
**namespace** | **character** | Namespace of this config | [optional] [default to &#39;broad-dsde-dev&#39;]
**methodRepoMethod** | [**ConfigurationPayloadMethodRepoMethod**](ConfigurationPayload_methodRepoMethod.md) |  | [optional] 
**outputs** | **map(character)** | Map[String, AttributeString] from method&#39;s WDL outputs to fields in the workspace data model | [optional] 
**inputs** | **map(character)** | Map[String, AttributeString] from method&#39;s WDL inputs to fields in the workspace data model | [optional] 
**rootEntityType** | **character** |  | [optional] [default to &#39;pair&#39;]
**prerequisites** | **map(character)** | Map[String, AttributeString] | [optional] 
**methodConfigVersion** | **integer** | Snapshot ID of this config | [optional] [default to 1]
**deleted** | **character** | Has this config been deleted? | [optional] [default to FALSE]


