# openapi::MethodQuery


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**namespace** | **character** | Namespace which contains AgoraEntity. | [optional] [default to &#39;YOUR_NAMESPACE&#39;]
**name** | **character** | Name of the AgoraEntity. | [optional] [default to &#39;BWA&#39;]
**synopsis** | **character** | Synopsis which contains AgoraEntity. | [optional] [default to &#39;Quickly aligns short nucleotide sequences.&#39;]
**snapshotComment** | **character** | Snapshot comment of AgoraEntity | [optional] [default to &#39;Improved spline reticulation&#39;]
**documentation** | **character** | Documentation of the AgoraEntity. | [optional] [default to &#39;&#39;&#39;BWA is a software package for mapping low-divergent sequences
against a large reference genome, such as the human genome.
It consists of three algorithms: BWA-backtrack, BWA-SW and BWA-MEM.
&#39;&#39;&#39;]
**payload** | **character** | Payload of method -- must be in WDL format | [optional] [default to &#39;&#39;&#39;task wc {File in_file command { cat ${in_file} | wc -l } output { Int count &#x3D; read_int(stdout()) }}
&#39;&#39;&#39;]
**entityType** | **character** | Type of the AgoraEntity -- Task or Workflow. | [optional] [default to &#39;Task&#39;]


