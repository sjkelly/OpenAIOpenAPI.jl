# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CreateFineTuningJobRequest

    CreateFineTuningJobRequest(;
        model=nothing,
        training_file=nothing,
        hyperparameters=nothing,
        suffix=nothing,
        validation_file=nothing,
    )

    - model::CreateFineTuningJobRequestModel
    - training_file::String : The ID of an uploaded file that contains training data.  See [upload file](/docs/api-reference/files/upload) for how to upload a file.  Your dataset must be formatted as a JSONL file. Additionally, you must upload your file with the purpose &#x60;fine-tune&#x60;.  See the [fine-tuning guide](/docs/guides/fine-tuning) for more details. 
    - hyperparameters::CreateFineTuningJobRequestHyperparameters
    - suffix::String : A string of up to 18 characters that will be added to your fine-tuned model name.  For example, a &#x60;suffix&#x60; of \&quot;custom-model-name\&quot; would produce a model name like &#x60;ft:gpt-3.5-turbo:openai:custom-model-name:7p4lURel&#x60;. 
    - validation_file::String : The ID of an uploaded file that contains validation data.  If you provide this file, the data is used to generate validation metrics periodically during fine-tuning. These metrics can be viewed in the fine-tuning results file. The same data should not be present in both train and validation files.  Your dataset must be formatted as a JSONL file. You must upload your file with the purpose &#x60;fine-tune&#x60;.  See the [fine-tuning guide](/docs/guides/fine-tuning) for more details. 
"""
Base.@kwdef mutable struct CreateFineTuningJobRequest <: OpenAPI.APIModel
    model = nothing # spec type: Union{ Nothing, CreateFineTuningJobRequestModel }
    training_file::Union{Nothing, String} = nothing
    hyperparameters = nothing # spec type: Union{ Nothing, CreateFineTuningJobRequestHyperparameters }
    suffix::Union{Nothing, String} = nothing
    validation_file::Union{Nothing, String} = nothing

    function CreateFineTuningJobRequest(model, training_file, hyperparameters, suffix, validation_file, )
        OpenAPI.validate_property(CreateFineTuningJobRequest, Symbol("model"), model)
        OpenAPI.validate_property(CreateFineTuningJobRequest, Symbol("training_file"), training_file)
        OpenAPI.validate_property(CreateFineTuningJobRequest, Symbol("hyperparameters"), hyperparameters)
        OpenAPI.validate_property(CreateFineTuningJobRequest, Symbol("suffix"), suffix)
        OpenAPI.validate_property(CreateFineTuningJobRequest, Symbol("validation_file"), validation_file)
        return new(model, training_file, hyperparameters, suffix, validation_file, )
    end
end # type CreateFineTuningJobRequest

const _property_types_CreateFineTuningJobRequest = Dict{Symbol,String}(Symbol("model")=>"CreateFineTuningJobRequestModel", Symbol("training_file")=>"String", Symbol("hyperparameters")=>"CreateFineTuningJobRequestHyperparameters", Symbol("suffix")=>"String", Symbol("validation_file")=>"String", )
OpenAPI.property_type(::Type{ CreateFineTuningJobRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_CreateFineTuningJobRequest[name]))}

function check_required(o::CreateFineTuningJobRequest)
    o.model === nothing && (return false)
    o.training_file === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ CreateFineTuningJobRequest }, name::Symbol, val)
    if name === Symbol("suffix")
        OpenAPI.validate_param(name, "CreateFineTuningJobRequest", :maxLength, val, 40)
        OpenAPI.validate_param(name, "CreateFineTuningJobRequest", :minLength, val, 1)
    end
end
