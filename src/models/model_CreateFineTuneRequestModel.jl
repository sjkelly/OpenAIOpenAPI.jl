# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""CreateFineTuneRequest_model
The name of the base model to fine-tune. You can select one of \&quot;ada\&quot;, \&quot;babbage\&quot;, \&quot;curie\&quot;, \&quot;davinci\&quot;, or a fine-tuned model created after 2022-04-21 and before 2023-08-22. To learn more about these models, see the [Models](/docs/models) documentation. 

    CreateFineTuneRequestModel(; value=nothing)
"""
mutable struct CreateFineTuneRequestModel <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ String }
    CreateFineTuneRequestModel() = new()
    CreateFineTuneRequestModel(value) = new(value)
end # type CreateFineTuneRequestModel

function OpenAPI.property_type(::Type{ CreateFineTuneRequestModel }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(CreateFineTuneRequestModel, name)
end
