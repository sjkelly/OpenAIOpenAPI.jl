# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""SubmitToolOutputsRunRequest_tool_outputs_inner

    SubmitToolOutputsRunRequestToolOutputsInner(;
        tool_call_id=nothing,
        output=nothing,
    )

    - tool_call_id::String : The ID of the tool call in the &#x60;required_action&#x60; object within the run object the output is being submitted for.
    - output::String : The output of the tool call to be submitted to continue the run.
"""
Base.@kwdef mutable struct SubmitToolOutputsRunRequestToolOutputsInner <: OpenAPI.APIModel
    tool_call_id::Union{Nothing, String} = nothing
    output::Union{Nothing, String} = nothing

    function SubmitToolOutputsRunRequestToolOutputsInner(tool_call_id, output, )
        OpenAPI.validate_property(SubmitToolOutputsRunRequestToolOutputsInner, Symbol("tool_call_id"), tool_call_id)
        OpenAPI.validate_property(SubmitToolOutputsRunRequestToolOutputsInner, Symbol("output"), output)
        return new(tool_call_id, output, )
    end
end # type SubmitToolOutputsRunRequestToolOutputsInner

const _property_types_SubmitToolOutputsRunRequestToolOutputsInner = Dict{Symbol,String}(Symbol("tool_call_id")=>"String", Symbol("output")=>"String", )
OpenAPI.property_type(::Type{ SubmitToolOutputsRunRequestToolOutputsInner }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_SubmitToolOutputsRunRequestToolOutputsInner[name]))}

function check_required(o::SubmitToolOutputsRunRequestToolOutputsInner)
    true
end

function OpenAPI.validate_property(::Type{ SubmitToolOutputsRunRequestToolOutputsInner }, name::Symbol, val)
end