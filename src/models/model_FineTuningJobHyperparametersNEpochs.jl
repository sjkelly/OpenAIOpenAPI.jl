# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""FineTuningJob_hyperparameters_n_epochs
The number of epochs to train the model for. An epoch refers to one full cycle through the training dataset. \&quot;auto\&quot; decides the optimal number of epochs based on the size of the dataset. If setting the number manually, we support any number between 1 and 50 epochs.

    FineTuningJobHyperparametersNEpochs(; value=nothing)
"""
mutable struct FineTuningJobHyperparametersNEpochs <: OpenAPI.OneOfAPIModel
    value::Any # Union{ Int64, String }
    FineTuningJobHyperparametersNEpochs() = new()
    FineTuningJobHyperparametersNEpochs(value) = new(value)
end # type FineTuningJobHyperparametersNEpochs

function OpenAPI.property_type(::Type{ FineTuningJobHyperparametersNEpochs }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(FineTuningJobHyperparametersNEpochs, name)
end