# openapi::ToolVersion

A tool version describes a particular iteration of a tool as described by a reference to a specific image and dockerfile.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **character** | The name of the version. | [optional] 
**url** | **character** | The URL for this tool in this registry, for example &#x60;http://agora.broadinstitute.org/tools/123456/1&#x60; | 
**id** | **character** | An identifier of the version of this tool for this particular tool registry, for example &#x60;v1&#x60; | 
**image** | **character** | The docker path to the image (and version) for this tool. (e.g. quay.io/seqware/seqware_full/1.1). This always returns an empty string. | [optional] 
**descriptor-type** | **array[character]** | The type (or types) of descriptors available. | [optional] 
**dockerfile** | **character** | Reports if this tool has a dockerfile available. This always returns false. | [optional] 
**meta-version** | **character** | The version of this tool version in the registry. Iterates when fields like the description, author, etc. are updated. | 


