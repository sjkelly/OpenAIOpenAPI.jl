# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""AssistantToolsRetrieval

    AssistantToolsRetrieval(;
        type=nothing,
    )

    - type::String : The type of tool being defined: &#x60;retrieval&#x60;
"""
Base.@kwdef mutable struct AssistantToolsRetrieval <: OpenAPI.APIModel
    type::Union{Nothing, String} = nothing

    function AssistantToolsRetrieval(type, )
        OpenAPI.validate_property(AssistantToolsRetrieval, Symbol("type"), type)
        return new(type, )
    end
end # type AssistantToolsRetrieval

const _property_types_AssistantToolsRetrieval = Dict{Symbol,String}(Symbol("type")=>"String", )
OpenAPI.property_type(::Type{ AssistantToolsRetrieval }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_AssistantToolsRetrieval[name]))}

function check_required(o::AssistantToolsRetrieval)
    o.type === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ AssistantToolsRetrieval }, name::Symbol, val)
    if name === Symbol("type")
        OpenAPI.validate_param(name, "AssistantToolsRetrieval", :enum, val, ["retrieval"])
    end
end
