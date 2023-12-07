# AudioApi

All URIs are relative to *https://api.openai.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_speech**](AudioApi.md#create_speech) | **POST** /audio/speech | Generates audio from the input text.
[**create_transcription**](AudioApi.md#create_transcription) | **POST** /audio/transcriptions | Transcribes audio into the input language.
[**create_translation**](AudioApi.md#create_translation) | **POST** /audio/translations | Translates audio into English.


# **create_speech**
> create_speech(_api::AudioApi, create_speech_request::CreateSpeechRequest; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> create_speech(_api::AudioApi, response_stream::Channel, create_speech_request::CreateSpeechRequest; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse

Generates audio from the input text.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AudioApi** | API context | 
**create_speech_request** | [**CreateSpeechRequest**](CreateSpeechRequest.md)|  | 

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_transcription**
> create_transcription(_api::AudioApi, file::String, model::CreateTranscriptionRequestModel; language=nothing, prompt=nothing, response_format=nothing, temperature=nothing, _mediaType=nothing) -> CreateTranscriptionResponse, OpenAPI.Clients.ApiResponse <br/>
> create_transcription(_api::AudioApi, response_stream::Channel, file::String, model::CreateTranscriptionRequestModel; language=nothing, prompt=nothing, response_format=nothing, temperature=nothing, _mediaType=nothing) -> Channel{ CreateTranscriptionResponse }, OpenAPI.Clients.ApiResponse

Transcribes audio into the input language.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AudioApi** | API context | 
**file** | **String****String**| The audio file object (not file name) to transcribe, in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a, ogg, wav, or webm.  | [default to nothing]
**model** | [**CreateTranscriptionRequestModel**](CreateTranscriptionRequestModel.md)|  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language** | **String**| The language of the input audio. Supplying the input language in [ISO-639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) format will improve accuracy and latency.  | [default to nothing]
 **prompt** | **String**| An optional text to guide the model&#39;s style or continue a previous audio segment. The [prompt](/docs/guides/speech-to-text/prompting) should match the audio language.  | [default to nothing]
 **response_format** | **String**| The format of the transcript output, in one of these options: &#x60;json&#x60;, &#x60;text&#x60;, &#x60;srt&#x60;, &#x60;verbose_json&#x60;, or &#x60;vtt&#x60;.  | [default to &quot;json&quot;]
 **temperature** | **Float64**| The sampling temperature, between 0 and 1. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. If set to 0, the model will use [log probability](https://en.wikipedia.org/wiki/Log_probability) to automatically increase the temperature until certain thresholds are hit.  | [default to 0]

### Return type

[**CreateTranscriptionResponse**](CreateTranscriptionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **create_translation**
> create_translation(_api::AudioApi, file::String, model::CreateTranscriptionRequestModel; prompt=nothing, response_format=nothing, temperature=nothing, _mediaType=nothing) -> CreateTranslationResponse, OpenAPI.Clients.ApiResponse <br/>
> create_translation(_api::AudioApi, response_stream::Channel, file::String, model::CreateTranscriptionRequestModel; prompt=nothing, response_format=nothing, temperature=nothing, _mediaType=nothing) -> Channel{ CreateTranslationResponse }, OpenAPI.Clients.ApiResponse

Translates audio into English.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **AudioApi** | API context | 
**file** | **String****String**| The audio file object (not file name) translate, in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a, ogg, wav, or webm.  | [default to nothing]
**model** | [**CreateTranscriptionRequestModel**](CreateTranscriptionRequestModel.md)|  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prompt** | **String**| An optional text to guide the model&#39;s style or continue a previous audio segment. The [prompt](/docs/guides/speech-to-text/prompting) should be in English.  | [default to nothing]
 **response_format** | **String**| The format of the transcript output, in one of these options: &#x60;json&#x60;, &#x60;text&#x60;, &#x60;srt&#x60;, &#x60;verbose_json&#x60;, or &#x60;vtt&#x60;.  | [default to &quot;json&quot;]
 **temperature** | **Float64**| The sampling temperature, between 0 and 1. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. If set to 0, the model will use [log probability](https://en.wikipedia.org/wiki/Log_probability) to automatically increase the temperature until certain thresholds are hit.  | [default to 0]

### Return type

[**CreateTranslationResponse**](CreateTranslationResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

