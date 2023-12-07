# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""RunStepDetailsToolCallsObject
Details of the tool call.

    RunStepDetailsToolCallsObject(;
        type=nothing,
        tool_calls=nothing,
    )

    - type::String : Always &#x60;tool_calls&#x60;.
    - tool_calls::Vector{RunStepDetailsToolCallsObjectToolCallsInner} : An array of tool calls the run step was involved in. These can be associated with one of three types of tools: &#x60;code_interpreter&#x60;, &#x60;retrieval&#x60;, or &#x60;function&#x60;. 
"""
Base.@kwdef mutable struct RunStepDetailsToolCallsObject <: OpenAPI.APIModel
    type::Union{Nothing, String} = nothing
    tool_calls::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{RunStepDetailsToolCallsObjectToolCallsInner} }

    function RunStepDetailsToolCallsObject(type, tool_calls, )
        OpenAPI.validate_property(RunStepDetailsToolCallsObject, Symbol("type"), type)
        OpenAPI.validate_property(RunStepDetailsToolCallsObject, Symbol("tool_calls"), tool_calls)
        return new(type, tool_calls, )
    end
end # type RunStepDetailsToolCallsObject

const _property_types_RunStepDetailsToolCallsObject = Dict{Symbol,String}(Symbol("type")=>"String", Symbol("tool_calls")=>"Vector{RunStepDetailsToolCallsObjectToolCallsInner}", )
OpenAPI.property_type(::Type{ RunStepDetailsToolCallsObject }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_RunStepDetailsToolCallsObject[name]))}

function check_required(o::RunStepDetailsToolCallsObject)
    o.type === nothing && (return false)
    o.tool_calls === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ RunStepDetailsToolCallsObject }, name::Symbol, val)
    if name === Symbol("type")
        OpenAPI.validate_param(name, "RunStepDetailsToolCallsObject", :enum, val, ["tool_calls"])
    end
end
