# openapi::InlineObject1


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**synopsis** | **character** | Synopsis which contains AgoraEntity. | [optional] [default to &#39;Quickly aligns short nucleotide sequences.&#39;]
**documentation** | **character** | Documentation of the AgoraEntity. | [optional] [default to &#39;&#39;&#39;BWA is a software package for mapping low-divergent sequences
against a large reference genome, such as the human genome.
It consists of three algorithms: BWA-backtrack, BWA-SW and BWA-MEM.
&#39;&#39;&#39;]
**payload** | **character** | Payload of method -- must be in WDL format | [optional] [default to &#39;&#39;&#39;task wc {File in_file command { cat ${in_file} | wc -l } output { Int count &#x3D; read_int(stdout()) }}
&#39;&#39;&#39;]
**snapshotComment** | **character** | Snapshot comment of the AgoraEntity | [optional] [default to &#39;Improve spline reticulation&#39;]


