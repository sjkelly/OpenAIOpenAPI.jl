# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""CreateTranscriptionRequest_model
ID of the model to use. Only &#x60;whisper-1&#x60; is currently available. 

    CreateTranscriptionRequestModel(; value=nothing)
"""
mutable struct CreateTranscriptionRequestModel <: OpenAPI.AnyOfAPIModel
    value::Any # Union{ String }
    CreateTranscriptionRequestModel() = new()
    CreateTranscriptionRequestModel(value) = new(value)
end # type CreateTranscriptionRequestModel

function OpenAPI.property_type(::Type{ CreateTranscriptionRequestModel }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(CreateTranscriptionRequestModel, name)
end
