# RunObject


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The identifier, which can be referenced in API endpoints. | [default to nothing]
**object** | **String** | The object type, which is always &#x60;thread.run&#x60;. | [default to nothing]
**created_at** | **Int64** | The Unix timestamp (in seconds) for when the run was created. | [default to nothing]
**thread_id** | **String** | The ID of the [thread](/docs/api-reference/threads) that was executed on as a part of this run. | [default to nothing]
**assistant_id** | **String** | The ID of the [assistant](/docs/api-reference/assistants) used for execution of this run. | [default to nothing]
**status** | **String** | The status of the run, which can be either &#x60;queued&#x60;, &#x60;in_progress&#x60;, &#x60;requires_action&#x60;, &#x60;cancelling&#x60;, &#x60;cancelled&#x60;, &#x60;failed&#x60;, &#x60;completed&#x60;, or &#x60;expired&#x60;. | [default to nothing]
**required_action** | [***RunObjectRequiredAction**](RunObjectRequiredAction.md) |  | [default to nothing]
**last_error** | [***RunObjectLastError**](RunObjectLastError.md) |  | [default to nothing]
**expires_at** | **Int64** | The Unix timestamp (in seconds) for when the run will expire. | [default to nothing]
**started_at** | **Int64** | The Unix timestamp (in seconds) for when the run was started. | [default to nothing]
**cancelled_at** | **Int64** | The Unix timestamp (in seconds) for when the run was cancelled. | [default to nothing]
**failed_at** | **Int64** | The Unix timestamp (in seconds) for when the run failed. | [default to nothing]
**completed_at** | **Int64** | The Unix timestamp (in seconds) for when the run was completed. | [default to nothing]
**model** | **String** | The model that the [assistant](/docs/api-reference/assistants) used for this run. | [default to nothing]
**instructions** | **String** | The instructions that the [assistant](/docs/api-reference/assistants) used for this run. | [default to nothing]
**tools** | [**Vector{AssistantObjectToolsInner}**](AssistantObjectToolsInner.md) | The list of tools that the [assistant](/docs/api-reference/assistants) used for this run. | [default to nothing]
**file_ids** | **Vector{String}** | The list of [File](/docs/api-reference/files) IDs the [assistant](/docs/api-reference/assistants) used for this run. | [default to nothing]
**metadata** | **Any** | Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long.  | [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


