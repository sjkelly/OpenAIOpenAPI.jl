# FineTune


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The object identifier, which can be referenced in the API endpoints. | [default to nothing]
**created_at** | **Int64** | The Unix timestamp (in seconds) for when the fine-tuning job was created. | [default to nothing]
**events** | [**Vector{FineTuneEvent}**](FineTuneEvent.md) | The list of events that have been observed in the lifecycle of the FineTune job. | [optional] [default to nothing]
**fine_tuned_model** | **String** | The name of the fine-tuned model that is being created. | [default to nothing]
**hyperparams** | [***FineTuneHyperparams**](FineTuneHyperparams.md) |  | [default to nothing]
**model** | **String** | The base model that is being fine-tuned. | [default to nothing]
**object** | **String** | The object type, which is always \&quot;fine-tune\&quot;. | [default to nothing]
**organization_id** | **String** | The organization that owns the fine-tuning job. | [default to nothing]
**result_files** | [**Vector{OpenAIFile}**](OpenAIFile.md) | The compiled results files for the fine-tuning job. | [default to nothing]
**status** | **String** | The current status of the fine-tuning job, which can be either &#x60;created&#x60;, &#x60;running&#x60;, &#x60;succeeded&#x60;, &#x60;failed&#x60;, or &#x60;cancelled&#x60;. | [default to nothing]
**training_files** | [**Vector{OpenAIFile}**](OpenAIFile.md) | The list of files used for training. | [default to nothing]
**updated_at** | **Int64** | The Unix timestamp (in seconds) for when the fine-tuning job was last updated. | [default to nothing]
**validation_files** | [**Vector{OpenAIFile}**](OpenAIFile.md) | The list of files used for validation. | [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


