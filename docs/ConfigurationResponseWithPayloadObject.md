# openapi::ConfigurationResponseWithPayloadObject


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**namespace** | **character** | Namespace which contains AgoraEntity. | [optional] [default to &#39;YOUR_NAMESPACE&#39;]
**name** | **character** | Name of the AgoraEntity. | [optional] [default to &#39;BWA&#39;]
**snapshotId** | **integer** | SnapshotId of AgoraEntity | [optional] 
**snapshotComment** | **character** | Snapshot comment of AgoraEntity | [optional] [default to &#39;Improved spline reticulation&#39;]
**synopsis** | **character** | Synopsis which contains AgoraEntity. | [optional] [default to &#39;Quickly aligns short nucleotide sequences.&#39;]
**documentation** | **character** | Documentation of the AgoraEntity. MUST BE REQUESTED EXPLICITLY. | [optional] [default to &#39;&#39;&#39;BWA is a software package for mapping low-divergent sequences
against a large reference genome, such as the human genome.
It consists of three algorithms: BWA-backtrack, BWA-SW and BWA-MEM.
&#39;&#39;&#39;]
**createDate** | **character** | Timestamp of creation | [optional] 
**url** | **character** | URL where resource can be accessed. | [optional] 
**payloadObject** | [**ConfigurationPayload**](ConfigurationPayload.md) |  | [optional] 
**entityType** | **character** | Type of the AgoraEntity -- Task or Workflow. | [optional] [default to &#39;Task&#39;]


