# openapi::SearchTermRef


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**searchString** | **character** | The term to search for | [optional] 
**filters** | [**map(array[character])**](array.md) | Map[String, Array[String] ] Each entry contains the column name (i.e. \&quot;library:indication\&quot;) and a list of terms that will be or&#39;ed in the query ([\&quot;cancer\&quot;, \&quot;sleep apnea\&quot;]) | [optional] 
**researchPurpose** | [**ResearchPurpose**](ResearchPurpose.md) |  | [optional] 
**fieldAggregations** | **map(integer)** | Map[String, Int] The list of fields for which you would like to retrieve aggregations and the number of aggregations to return. Default is 5. Specify 0 to get all | [optional] 
**from** | **integer** | Where in the results list to start (used for pagination) | [optional] [default to 0]
**size** | **integer** | How many results to return | [optional] [default to 10]
**sortField** | **character** | Field name on which to sort; defaults to sort by relevance if not specified | [optional] 
**sortDirection** | **character** | asc or desc; defaults to asc if not specified | [optional] 


