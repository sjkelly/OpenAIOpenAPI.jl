# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""CreateImageRequest_model
The model to use for image generation.

    CreateImageRequestModel(; value=nothing)
"""
mutable struct CreateImageRequestModel <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ String }
    CreateImageRequestModel() = new()
    CreateImageRequestModel(value) = new(value)
end # type CreateImageRequestModel

function OpenAPI.property_type(::Type{ CreateImageRequestModel }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(CreateImageRequestModel, name)
end
