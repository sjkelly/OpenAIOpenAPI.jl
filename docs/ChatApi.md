# ChatApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_chat_completion**](ChatApi.md#create_chat_completion) | **POST** /chat/completions | Creates a model response for the given chat conversation.


# **create_chat_completion**
> create_chat_completion(_api::ChatApi, create_chat_completion_request::CreateChatCompletionRequest; _mediaType=nothing) -> CreateChatCompletionResponse, OpenAPI.Clients.ApiResponse <br/>
> create_chat_completion(_api::ChatApi, response_stream::Channel, create_chat_completion_request::CreateChatCompletionRequest; _mediaType=nothing) -> Channel{ CreateChatCompletionResponse }, OpenAPI.Clients.ApiResponse

Creates a model response for the given chat conversation.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ChatApi** | API context | 
**create_chat_completion_request** | [**CreateChatCompletionRequest**](CreateChatCompletionRequest.md)|  | 

### Return type

[**CreateChatCompletionResponse**](CreateChatCompletionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

