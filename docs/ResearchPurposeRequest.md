# openapi::ResearchPurposeRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DS** | **array[character]** | Disease focused research. Values are DOID ontology node ids in the form http://purl.obolibrary.org/obo/DOID_NNN. Specify an empty array if this is not disease focused research.  | [optional] 
**NMDS** | **character** | Methods development/Validation study | [optional] [default to FALSE]
**NCTRL** | **character** | Control set | [optional] [default to FALSE]
**NAGR** | **character** | Aggregate analysis to understand variation in the general population | [optional] [default to FALSE]
**POA** | **character** | Study population origins or ancestry | [optional] [default to FALSE]
**NCU** | **character** | Commercial purpose/by a commercial entity | [optional] [default to FALSE]
**prefix** | **character** | Prefix for query properties. Must match prefix used when indexing. | [optional] [default to &#39;&#39;]


