# openapi::LibraryBulkIndexResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**totalCount** | **integer** | the number of published workspaces sent to be indexed | [optional] 
**hasFailures** | **character** | did the indexing operation result in any failures? | [optional] [default to FALSE]
**failureMessages** | **map(character)** | Map[String,String] of id -&gt; failure message | [optional] 


