# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CreateFineTuneRequest

    CreateFineTuneRequest(;
        training_file=nothing,
        batch_size=nothing,
        classification_betas=nothing,
        classification_n_classes=nothing,
        classification_positive_class=nothing,
        compute_classification_metrics=false,
        hyperparameters=nothing,
        learning_rate_multiplier=nothing,
        model=nothing,
        prompt_loss_weight=0.01,
        suffix=nothing,
        validation_file=nothing,
    )

    - training_file::String : The ID of an uploaded file that contains training data.  See [upload file](/docs/api-reference/files/upload) for how to upload a file.  Your dataset must be formatted as a JSONL file, where each training example is a JSON object with the keys \&quot;prompt\&quot; and \&quot;completion\&quot;. Additionally, you must upload your file with the purpose &#x60;fine-tune&#x60;.  See the [fine-tuning guide](/docs/guides/legacy-fine-tuning/creating-training-data) for more details. 
    - batch_size::Int64 : The batch size to use for training. The batch size is the number of training examples used to train a single forward and backward pass.  By default, the batch size will be dynamically configured to be ~0.2% of the number of examples in the training set, capped at 256 - in general, we&#39;ve found that larger batch sizes tend to work better for larger datasets. 
    - classification_betas::Vector{Float64} : If this is provided, we calculate F-beta scores at the specified beta values. The F-beta score is a generalization of F-1 score. This is only used for binary classification.  With a beta of 1 (i.e. the F-1 score), precision and recall are given the same weight. A larger beta score puts more weight on recall and less on precision. A smaller beta score puts more weight on precision and less on recall. 
    - classification_n_classes::Int64 : The number of classes in a classification task.  This parameter is required for multiclass classification. 
    - classification_positive_class::String : The positive class in binary classification.  This parameter is needed to generate precision, recall, and F1 metrics when doing binary classification. 
    - compute_classification_metrics::Bool : If set, we calculate classification-specific metrics such as accuracy and F-1 score using the validation set at the end of every epoch. These metrics can be viewed in the [results file](/docs/guides/legacy-fine-tuning/analyzing-your-fine-tuned-model).  In order to compute classification metrics, you must provide a &#x60;validation_file&#x60;. Additionally, you must specify &#x60;classification_n_classes&#x60; for multiclass classification or &#x60;classification_positive_class&#x60; for binary classification. 
    - hyperparameters::CreateFineTuneRequestHyperparameters
    - learning_rate_multiplier::Float64 : The learning rate multiplier to use for training. The fine-tuning learning rate is the original learning rate used for pretraining multiplied by this value.  By default, the learning rate multiplier is the 0.05, 0.1, or 0.2 depending on final &#x60;batch_size&#x60; (larger learning rates tend to perform better with larger batch sizes). We recommend experimenting with values in the range 0.02 to 0.2 to see what produces the best results. 
    - model::CreateFineTuneRequestModel
    - prompt_loss_weight::Float64 : The weight to use for loss on the prompt tokens. This controls how much the model tries to learn to generate the prompt (as compared to the completion which always has a weight of 1.0), and can add a stabilizing effect to training when completions are short.  If prompts are extremely long (relative to completions), it may make sense to reduce this weight so as to avoid over-prioritizing learning the prompt. 
    - suffix::String : A string of up to 40 characters that will be added to your fine-tuned model name.  For example, a &#x60;suffix&#x60; of \&quot;custom-model-name\&quot; would produce a model name like &#x60;ada:ft-your-org:custom-model-name-2022-02-15-04-21-04&#x60;. 
    - validation_file::String : The ID of an uploaded file that contains validation data.  If you provide this file, the data is used to generate validation metrics periodically during fine-tuning. These metrics can be viewed in the [fine-tuning results file](/docs/guides/legacy-fine-tuning/analyzing-your-fine-tuned-model). Your train and validation data should be mutually exclusive.  Your dataset must be formatted as a JSONL file, where each validation example is a JSON object with the keys \&quot;prompt\&quot; and \&quot;completion\&quot;. Additionally, you must upload your file with the purpose &#x60;fine-tune&#x60;.  See the [fine-tuning guide](/docs/guides/legacy-fine-tuning/creating-training-data) for more details. 
"""
Base.@kwdef mutable struct CreateFineTuneRequest <: OpenAPI.APIModel
    training_file::Union{Nothing, String} = nothing
    batch_size::Union{Nothing, Int64} = nothing
    classification_betas::Union{Nothing, Vector{Float64}} = nothing
    classification_n_classes::Union{Nothing, Int64} = nothing
    classification_positive_class::Union{Nothing, String} = nothing
    compute_classification_metrics::Union{Nothing, Bool} = false
    hyperparameters = nothing # spec type: Union{ Nothing, CreateFineTuneRequestHyperparameters }
    learning_rate_multiplier::Union{Nothing, Float64} = nothing
    model = nothing # spec type: Union{ Nothing, CreateFineTuneRequestModel }
    prompt_loss_weight::Union{Nothing, Float64} = 0.01
    suffix::Union{Nothing, String} = nothing
    validation_file::Union{Nothing, String} = nothing

    function CreateFineTuneRequest(training_file, batch_size, classification_betas, classification_n_classes, classification_positive_class, compute_classification_metrics, hyperparameters, learning_rate_multiplier, model, prompt_loss_weight, suffix, validation_file, )
        OpenAPI.validate_property(CreateFineTuneRequest, Symbol("training_file"), training_file)
        OpenAPI.validate_property(CreateFineTuneRequest, Symbol("batch_size"), batch_size)
        OpenAPI.validate_property(CreateFineTuneRequest, Symbol("classification_betas"), classification_betas)
        OpenAPI.validate_property(CreateFineTuneRequest, Symbol("classification_n_classes"), classification_n_classes)
        OpenAPI.validate_property(CreateFineTuneRequest, Symbol("classification_positive_class"), classification_positive_class)
        OpenAPI.validate_property(CreateFineTuneRequest, Symbol("compute_classification_metrics"), compute_classification_metrics)
        OpenAPI.validate_property(CreateFineTuneRequest, Symbol("hyperparameters"), hyperparameters)
        OpenAPI.validate_property(CreateFineTuneRequest, Symbol("learning_rate_multiplier"), learning_rate_multiplier)
        OpenAPI.validate_property(CreateFineTuneRequest, Symbol("model"), model)
        OpenAPI.validate_property(CreateFineTuneRequest, Symbol("prompt_loss_weight"), prompt_loss_weight)
        OpenAPI.validate_property(CreateFineTuneRequest, Symbol("suffix"), suffix)
        OpenAPI.validate_property(CreateFineTuneRequest, Symbol("validation_file"), validation_file)
        return new(training_file, batch_size, classification_betas, classification_n_classes, classification_positive_class, compute_classification_metrics, hyperparameters, learning_rate_multiplier, model, prompt_loss_weight, suffix, validation_file, )
    end
end # type CreateFineTuneRequest

const _property_types_CreateFineTuneRequest = Dict{Symbol,String}(Symbol("training_file")=>"String", Symbol("batch_size")=>"Int64", Symbol("classification_betas")=>"Vector{Float64}", Symbol("classification_n_classes")=>"Int64", Symbol("classification_positive_class")=>"String", Symbol("compute_classification_metrics")=>"Bool", Symbol("hyperparameters")=>"CreateFineTuneRequestHyperparameters", Symbol("learning_rate_multiplier")=>"Float64", Symbol("model")=>"CreateFineTuneRequestModel", Symbol("prompt_loss_weight")=>"Float64", Symbol("suffix")=>"String", Symbol("validation_file")=>"String", )
OpenAPI.property_type(::Type{ CreateFineTuneRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_CreateFineTuneRequest[name]))}

function check_required(o::CreateFineTuneRequest)
    o.training_file === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ CreateFineTuneRequest }, name::Symbol, val)
    if name === Symbol("suffix")
        OpenAPI.validate_param(name, "CreateFineTuneRequest", :maxLength, val, 40)
        OpenAPI.validate_param(name, "CreateFineTuneRequest", :minLength, val, 1)
    end
end
