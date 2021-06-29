# openapi::ErrorReport


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source** | **character** | service causing error | 
**message** | **character** | what went wrong | 
**statusCode** | **integer** | HTTP status code | [optional] 
**causes** | [**array[ErrorReport]**](ErrorReport.md) | errors triggering this one | 
**stackTrace** | [**array[StackTraceElement]**](StackTraceElement.md) | stack trace | 


