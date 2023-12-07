# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""CreateChatCompletionRequest_model
ID of the model to use. See the [model endpoint compatibility](/docs/models/model-endpoint-compatibility) table for details on which models work with the Chat API.

    CreateChatCompletionRequestModel(; value=nothing)
"""
mutable struct CreateChatCompletionRequestModel <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ String }
    CreateChatCompletionRequestModel() = new()
    CreateChatCompletionRequestModel(value) = new(value)
end # type CreateChatCompletionRequestModel

function OpenAPI.property_type(::Type{ CreateChatCompletionRequestModel }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(CreateChatCompletionRequestModel, name)
end
