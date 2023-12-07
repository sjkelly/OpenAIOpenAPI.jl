# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""FineTuneEvent
Fine-tune event object

    FineTuneEvent(;
        created_at=nothing,
        level=nothing,
        message=nothing,
        object=nothing,
    )

    - created_at::Int64
    - level::String
    - message::String
    - object::String
"""
Base.@kwdef mutable struct FineTuneEvent <: OpenAPI.APIModel
    created_at::Union{Nothing, Int64} = nothing
    level::Union{Nothing, String} = nothing
    message::Union{Nothing, String} = nothing
    object::Union{Nothing, String} = nothing

    function FineTuneEvent(created_at, level, message, object, )
        OpenAPI.validate_property(FineTuneEvent, Symbol("created_at"), created_at)
        OpenAPI.validate_property(FineTuneEvent, Symbol("level"), level)
        OpenAPI.validate_property(FineTuneEvent, Symbol("message"), message)
        OpenAPI.validate_property(FineTuneEvent, Symbol("object"), object)
        return new(created_at, level, message, object, )
    end
end # type FineTuneEvent

const _property_types_FineTuneEvent = Dict{Symbol,String}(Symbol("created_at")=>"Int64", Symbol("level")=>"String", Symbol("message")=>"String", Symbol("object")=>"String", )
OpenAPI.property_type(::Type{ FineTuneEvent }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_FineTuneEvent[name]))}

function check_required(o::FineTuneEvent)
    o.created_at === nothing && (return false)
    o.level === nothing && (return false)
    o.message === nothing && (return false)
    o.object === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ FineTuneEvent }, name::Symbol, val)
    if name === Symbol("object")
        OpenAPI.validate_param(name, "FineTuneEvent", :enum, val, ["fine-tune-event"])
    end
end
