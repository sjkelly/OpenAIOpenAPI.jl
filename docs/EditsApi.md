# EditsApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_edit**](EditsApi.md#create_edit) | **POST** /edits | Creates a new edit for the provided input, instruction, and parameters.


# **create_edit**
> create_edit(_api::EditsApi, create_edit_request::CreateEditRequest; _mediaType=nothing) -> CreateEditResponse, OpenAPI.Clients.ApiResponse <br/>
> create_edit(_api::EditsApi, response_stream::Channel, create_edit_request::CreateEditRequest; _mediaType=nothing) -> Channel{ CreateEditResponse }, OpenAPI.Clients.ApiResponse

Creates a new edit for the provided input, instruction, and parameters.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **EditsApi** | API context | 
**create_edit_request** | [**CreateEditRequest**](CreateEditRequest.md)|  | 

### Return type

[**CreateEditResponse**](CreateEditResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

