# CreateEditResponseChoicesInner


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**finish_reason** | **String** | The reason the model stopped generating tokens. This will be &#x60;stop&#x60; if the model hit a natural stop point or a provided stop sequence, &#x60;length&#x60; if the maximum number of tokens specified in the request was reached, or &#x60;content_filter&#x60; if content was omitted due to a flag from our content filters.  | [default to nothing]
**index** | **Int64** | The index of the choice in the list of choices. | [default to nothing]
**text** | **String** | The edited result. | [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


