# FilesApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_file**](FilesApi.md#create_file) | **POST** /files | Upload a file that can be used across various endpoints. The size of all the files uploaded by one organization can be up to 100 GB.  The size of individual files can be a maximum of 512 MB. See the [Assistants Tools guide](/docs/assistants/tools) to learn more about the types of files supported. The Fine-tuning API only supports &#x60;.jsonl&#x60; files.  Please [contact us](https://help.openai.com/) if you need to increase these storage limits. 
[**delete_file**](FilesApi.md#delete_file) | **DELETE** /files/{file_id} | Delete a file.
[**download_file**](FilesApi.md#download_file) | **GET** /files/{file_id}/content | Returns the contents of the specified file.
[**list_files**](FilesApi.md#list_files) | **GET** /files | Returns a list of files that belong to the user&#39;s organization.
[**retrieve_file**](FilesApi.md#retrieve_file) | **GET** /files/{file_id} | Returns information about a specific file.


# **create_file**
> create_file(_api::FilesApi, file::String, purpose::String; _mediaType=nothing) -> OpenAIFile, OpenAPI.Clients.ApiResponse <br/>
> create_file(_api::FilesApi, response_stream::Channel, file::String, purpose::String; _mediaType=nothing) -> Channel{ OpenAIFile }, OpenAPI.Clients.ApiResponse

Upload a file that can be used across various endpoints. The size of all the files uploaded by one organization can be up to 100 GB.  The size of individual files can be a maximum of 512 MB. See the [Assistants Tools guide](/docs/assistants/tools) to learn more about the types of files supported. The Fine-tuning API only supports `.jsonl` files.  Please [contact us](https://help.openai.com/) if you need to increase these storage limits. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FilesApi** | API context | 
**file** | **String****String**| The File object (not file name) to be uploaded.  | [default to nothing]
**purpose** | **String**| The intended purpose of the uploaded file.  Use \\\&quot;fine-tune\\\&quot; for [Fine-tuning](/docs/api-reference/fine-tuning) and \\\&quot;assistants\\\&quot; for [Assistants](/docs/api-reference/assistants) and [Messages](/docs/api-reference/messages). This allows us to validate the format of the uploaded file is correct for fine-tuning.  | [default to nothing]

### Return type

[**OpenAIFile**](OpenAIFile.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_file**
> delete_file(_api::FilesApi, file_id::String; _mediaType=nothing) -> DeleteFileResponse, OpenAPI.Clients.ApiResponse <br/>
> delete_file(_api::FilesApi, response_stream::Channel, file_id::String; _mediaType=nothing) -> Channel{ DeleteFileResponse }, OpenAPI.Clients.ApiResponse

Delete a file.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FilesApi** | API context | 
**file_id** | **String**| The ID of the file to use for this request. | [default to nothing]

### Return type

[**DeleteFileResponse**](DeleteFileResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **download_file**
> download_file(_api::FilesApi, file_id::String; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> download_file(_api::FilesApi, response_stream::Channel, file_id::String; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse

Returns the contents of the specified file.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FilesApi** | API context | 
**file_id** | **String**| The ID of the file to use for this request. | [default to nothing]

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list_files**
> list_files(_api::FilesApi; purpose=nothing, _mediaType=nothing) -> ListFilesResponse, OpenAPI.Clients.ApiResponse <br/>
> list_files(_api::FilesApi, response_stream::Channel; purpose=nothing, _mediaType=nothing) -> Channel{ ListFilesResponse }, OpenAPI.Clients.ApiResponse

Returns a list of files that belong to the user's organization.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FilesApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purpose** | **String**| Only return files with the given purpose. | [default to nothing]

### Return type

[**ListFilesResponse**](ListFilesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **retrieve_file**
> retrieve_file(_api::FilesApi, file_id::String; _mediaType=nothing) -> OpenAIFile, OpenAPI.Clients.ApiResponse <br/>
> retrieve_file(_api::FilesApi, response_stream::Channel, file_id::String; _mediaType=nothing) -> Channel{ OpenAIFile }, OpenAPI.Clients.ApiResponse

Returns information about a specific file.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FilesApi** | API context | 
**file_id** | **String**| The ID of the file to use for this request. | [default to nothing]

### Return type

[**OpenAIFile**](OpenAIFile.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

