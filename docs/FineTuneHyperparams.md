# FineTuneHyperparams


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**batch_size** | **Int64** | The batch size to use for training. The batch size is the number of training examples used to train a single forward and backward pass.  | [default to nothing]
**classification_n_classes** | **Int64** | The number of classes to use for computing classification metrics.  | [optional] [default to nothing]
**classification_positive_class** | **String** | The positive class to use for computing classification metrics.  | [optional] [default to nothing]
**compute_classification_metrics** | **Bool** | The classification metrics to compute using the validation dataset at the end of every epoch.  | [optional] [default to nothing]
**learning_rate_multiplier** | **Float64** | The learning rate multiplier to use for training.  | [default to nothing]
**n_epochs** | **Int64** | The number of epochs to train the model for. An epoch refers to one full cycle through the training dataset.  | [default to nothing]
**prompt_loss_weight** | **Float64** | The weight to use for loss on the prompt tokens.  | [default to nothing]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


