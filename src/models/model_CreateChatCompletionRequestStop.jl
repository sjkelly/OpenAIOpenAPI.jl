# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""CreateChatCompletionRequest_stop
Up to 4 sequences where the API will stop generating further tokens. 

    CreateChatCompletionRequestStop(; value=nothing)
"""
mutable struct CreateChatCompletionRequestStop <: OpenAPI.OneOfAPIModel
    value::Any # Union{ String, Vector{String} }
    CreateChatCompletionRequestStop() = new()
    CreateChatCompletionRequestStop(value) = new(value)
end # type CreateChatCompletionRequestStop

function OpenAPI.property_type(::Type{ CreateChatCompletionRequestStop }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(CreateChatCompletionRequestStop, name)
end