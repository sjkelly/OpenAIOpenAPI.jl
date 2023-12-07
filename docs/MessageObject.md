# MessageObject


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The identifier, which can be referenced in API endpoints. | [default to nothing]
**object** | **String** | The object type, which is always &#x60;thread.message&#x60;. | [default to nothing]
**created_at** | **Int64** | The Unix timestamp (in seconds) for when the message was created. | [default to nothing]
**thread_id** | **String** | The [thread](/docs/api-reference/threads) ID that this message belongs to. | [default to nothing]
**role** | **String** | The entity that produced the message. One of &#x60;user&#x60; or &#x60;assistant&#x60;. | [default to nothing]
**content** | [**Vector{MessageObjectContentInner}**](MessageObjectContentInner.md) | The content of the message in array of text and/or images. | [default to nothing]
**assistant_id** | **String** | If applicable, the ID of the [assistant](/docs/api-reference/assistants) that authored this message. | [default to nothing]
**run_id** | **String** | If applicable, the ID of the [run](/docs/api-reference/runs) associated with the authoring of this message. | [default to nothing]
**file_ids** | **Vector{String}** | A list of [file](/docs/api-reference/files) IDs that the assistant should use. Useful for tools like retrieval and code_interpreter that can access files. A maximum of 10 files can be attached to a message. | [default to nothing]
**metadata** | **Any** | Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long.  | [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


