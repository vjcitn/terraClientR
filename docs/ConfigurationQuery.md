# openapi::ConfigurationQuery


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**namespace** | **character** | Namespace which contains Configuration. | [optional] [default to &#39;YOUR_NAMESPACE&#39;]
**name** | **character** | Name of the Configuration. | [optional] [default to &#39;quick-BWA-config&#39;]
**synopsis** | **character** | Synopsis which contains Configuration. | [optional] [default to &#39;Quick synopsis of configuration.&#39;]
**snapshotComment** | **character** | Snapshot comment of AgoraEntity | [optional] [default to &#39;Improved spline reticulation&#39;]
**documentation** | **character** | Documentation of the Configuration. | [optional] [default to &#39;&#39;&#39;Example configuration with an associated method.
&#39;&#39;&#39;]
**payload** | **character** | Payload of method -- must be in WDL format | [optional] [default to &#39;&#39;&#39;{ &quot;methodRepoMethod&quot;: { &quot;methodNamespace&quot;: &quot;YOUR_NAMESPACE&quot;, &quot;methodName&quot;: &quot;BWA&quot;, &quot;methodVersion&quot;: 1}}
&#39;&#39;&#39;]
**entityType** | **character** | Can only be Configuration. | [optional] [default to &#39;Configuration&#39;]


