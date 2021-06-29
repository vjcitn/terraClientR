# openapi::Tool

A tool (or described tool) describes one pairing of a tool as described in a descriptor file (which potentially describes multiple tools) and a Docker image.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **character** | The URL for this tool in this registry, for example &#x60;http://agora.broadinstitute.org/tools/123456&#x60; | 
**id** | **character** | A unique identifier of the tool, scoped to this registry, for example &#x60;123456&#x60; or &#x60;123456_v1&#x60; | 
**organization** | **character** | The organization that published the image. | 
**toolname** | **character** | The name of the tool. | [optional] 
**toolclass** | [**ToolClass**](ToolClass.md) |  | 
**description** | **character** | The description of the tool. | [optional] 
**author** | **character** | Contact information for the author of this tool entry in the registry. (More complex authorship information is handled by the descriptor) | 
**meta-version** | **character** | The version of this tool in the registry. Iterates when fields like the description, author, etc. are updated. | 
**contains** | **array[character]** | An array of IDs for the applications that are stored inside this tool (for example &#x60;https://bio.tools/tool/mytum.de/SNAP2/1&#x60;). This always returns an empty array. | [optional] 
**verified** | **character** | Reports whether this tool has been verified by a specific organization or individual.  This always returns false. | [optional] 
**verified-source** | **character** | Source of metadata that can support a verified tool, such as an email or URL | [optional] 
**signed** | **character** | Reports whether this tool has been signed.  This always returns false. | [optional] 
**versions** | [**array[ToolVersion]**](ToolVersion.md) | A list of versions for this tool | 


