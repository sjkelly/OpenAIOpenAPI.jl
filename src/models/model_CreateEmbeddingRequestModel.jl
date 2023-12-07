# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""CreateEmbeddingRequest_model
ID of the model to use. You can use the [List models](/docs/api-reference/models/list) API to see all of your available models, or see our [Model overview](/docs/models/overview) for descriptions of them. 

    CreateEmbeddingRequestModel(; value=nothing)
"""
mutable struct CreateEmbeddingRequestModel <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ String }
    CreateEmbeddingRequestModel() = new()
    CreateEmbeddingRequestModel(value) = new(value)
end # type CreateEmbeddingRequestModel

function OpenAPI.property_type(::Type{ CreateEmbeddingRequestModel }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(CreateEmbeddingRequestModel, name)
end