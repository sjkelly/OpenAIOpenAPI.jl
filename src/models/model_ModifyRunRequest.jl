# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ModifyRunRequest

    ModifyRunRequest(;
        metadata=nothing,
    )

    - metadata::Any : Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long. 
"""
Base.@kwdef mutable struct ModifyRunRequest <: OpenAPI.APIModel
    metadata::Union{Nothing, Any} = nothing

    function ModifyRunRequest(metadata, )
        OpenAPI.validate_property(ModifyRunRequest, Symbol("metadata"), metadata)
        return new(metadata, )
    end
end # type ModifyRunRequest

const _property_types_ModifyRunRequest = Dict{Symbol,String}(Symbol("metadata")=>"Any", )
OpenAPI.property_type(::Type{ ModifyRunRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ModifyRunRequest[name]))}

function check_required(o::ModifyRunRequest)
    true
end

function OpenAPI.validate_property(::Type{ ModifyRunRequest }, name::Symbol, val)
end