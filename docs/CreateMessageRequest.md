# CreateMessageRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**role** | **String** | The role of the entity that is creating the message. Currently only &#x60;user&#x60; is supported. | [default to nothing]
**content** | **String** | The content of the message. | [default to nothing]
**file_ids** | **Vector{String}** | A list of [File](/docs/api-reference/files) IDs that the message should use. There can be a maximum of 10 files attached to a message. Useful for tools like &#x60;retrieval&#x60; and &#x60;code_interpreter&#x60; that can access and use files. | [optional] [default to nothing]
**metadata** | **Any** | Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long.  | [optional] [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


