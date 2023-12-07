# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ModifyMessageRequest

    ModifyMessageRequest(;
        metadata=nothing,
    )

    - metadata::Any : Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long. 
"""
Base.@kwdef mutable struct ModifyMessageRequest <: OpenAPI.APIModel
    metadata::Union{Nothing, Any} = nothing

    function ModifyMessageRequest(metadata, )
        OpenAPI.validate_property(ModifyMessageRequest, Symbol("metadata"), metadata)
        return new(metadata, )
    end
end # type ModifyMessageRequest

const _property_types_ModifyMessageRequest = Dict{Symbol,String}(Symbol("metadata")=>"Any", )
OpenAPI.property_type(::Type{ ModifyMessageRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ModifyMessageRequest[name]))}

function check_required(o::ModifyMessageRequest)
    true
end

function OpenAPI.validate_property(::Type{ ModifyMessageRequest }, name::Symbol, val)
end
