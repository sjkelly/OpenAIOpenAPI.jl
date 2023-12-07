# FineTunesApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_fine_tune**](FineTunesApi.md#cancel_fine_tune) | **POST** /fine-tunes/{fine_tune_id}/cancel | Immediately cancel a fine-tune job. 
[**create_fine_tune**](FineTunesApi.md#create_fine_tune) | **POST** /fine-tunes | Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about fine-tuning](/docs/guides/legacy-fine-tuning) 
[**list_fine_tune_events**](FineTunesApi.md#list_fine_tune_events) | **GET** /fine-tunes/{fine_tune_id}/events | Get fine-grained status updates for a fine-tune job. 
[**list_fine_tunes**](FineTunesApi.md#list_fine_tunes) | **GET** /fine-tunes | List your organization&#39;s fine-tuning jobs 
[**retrieve_fine_tune**](FineTunesApi.md#retrieve_fine_tune) | **GET** /fine-tunes/{fine_tune_id} | Gets info about the fine-tune job.  [Learn more about fine-tuning](/docs/guides/legacy-fine-tuning) 


# **cancel_fine_tune**
> cancel_fine_tune(_api::FineTunesApi, fine_tune_id::String; _mediaType=nothing) -> FineTune, OpenAPI.Clients.ApiResponse <br/>
> cancel_fine_tune(_api::FineTunesApi, response_stream::Channel, fine_tune_id::String; _mediaType=nothing) -> Channel{ FineTune }, OpenAPI.Clients.ApiResponse

Immediately cancel a fine-tune job. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FineTunesApi** | API context | 
**fine_tune_id** | **String**| The ID of the fine-tune job to cancel  | [default to nothing]

### Return type

[**FineTune**](FineTune.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_fine_tune**
> create_fine_tune(_api::FineTunesApi, create_fine_tune_request::CreateFineTuneRequest; _mediaType=nothing) -> FineTune, OpenAPI.Clients.ApiResponse <br/>
> create_fine_tune(_api::FineTunesApi, response_stream::Channel, create_fine_tune_request::CreateFineTuneRequest; _mediaType=nothing) -> Channel{ FineTune }, OpenAPI.Clients.ApiResponse

Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about fine-tuning](/docs/guides/legacy-fine-tuning) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FineTunesApi** | API context | 
**create_fine_tune_request** | [**CreateFineTuneRequest**](CreateFineTuneRequest.md)|  | 

### Return type

[**FineTune**](FineTune.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_fine_tune_events**
> list_fine_tune_events(_api::FineTunesApi, fine_tune_id::String; stream=nothing, _mediaType=nothing) -> ListFineTuneEventsResponse, OpenAPI.Clients.ApiResponse <br/>
> list_fine_tune_events(_api::FineTunesApi, response_stream::Channel, fine_tune_id::String; stream=nothing, _mediaType=nothing) -> Channel{ ListFineTuneEventsResponse }, OpenAPI.Clients.ApiResponse

Get fine-grained status updates for a fine-tune job. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FineTunesApi** | API context | 
**fine_tune_id** | **String**| The ID of the fine-tune job to get events for.  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stream** | **Bool**| Whether to stream events for the fine-tune job. If set to true, events will be sent as data-only [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format) as they become available. The stream will terminate with a &#x60;data: [DONE]&#x60; message when the job is finished (succeeded, cancelled, or failed).  If set to false, only events generated so far will be returned.  | [default to false]

### Return type

[**ListFineTuneEventsResponse**](ListFineTuneEventsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_fine_tunes**
> list_fine_tunes(_api::FineTunesApi; _mediaType=nothing) -> ListFineTunesResponse, OpenAPI.Clients.ApiResponse <br/>
> list_fine_tunes(_api::FineTunesApi, response_stream::Channel; _mediaType=nothing) -> Channel{ ListFineTunesResponse }, OpenAPI.Clients.ApiResponse

List your organization's fine-tuning jobs 

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**ListFineTunesResponse**](ListFineTunesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **retrieve_fine_tune**
> retrieve_fine_tune(_api::FineTunesApi, fine_tune_id::String; _mediaType=nothing) -> FineTune, OpenAPI.Clients.ApiResponse <br/>
> retrieve_fine_tune(_api::FineTunesApi, response_stream::Channel, fine_tune_id::String; _mediaType=nothing) -> Channel{ FineTune }, OpenAPI.Clients.ApiResponse

Gets info about the fine-tune job.  [Learn more about fine-tuning](/docs/guides/legacy-fine-tuning) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FineTunesApi** | API context | 
**fine_tune_id** | **String**| The ID of the fine-tune job  | [default to nothing]

### Return type

[**FineTune**](FineTune.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

