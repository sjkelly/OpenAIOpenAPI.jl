# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""RunStepDetailsToolCallsCodeObject
Details of the Code Interpreter tool call the run step was involved in.

    RunStepDetailsToolCallsCodeObject(;
        id=nothing,
        type=nothing,
        code_interpreter=nothing,
    )

    - id::String : The ID of the tool call.
    - type::String : The type of tool call. This is always going to be &#x60;code_interpreter&#x60; for this type of tool call.
    - code_interpreter::RunStepDetailsToolCallsCodeObjectCodeInterpreter
"""
Base.@kwdef mutable struct RunStepDetailsToolCallsCodeObject <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    type::Union{Nothing, String} = nothing
    code_interpreter = nothing # spec type: Union{ Nothing, RunStepDetailsToolCallsCodeObjectCodeInterpreter }

    function RunStepDetailsToolCallsCodeObject(id, type, code_interpreter, )
        OpenAPI.validate_property(RunStepDetailsToolCallsCodeObject, Symbol("id"), id)
        OpenAPI.validate_property(RunStepDetailsToolCallsCodeObject, Symbol("type"), type)
        OpenAPI.validate_property(RunStepDetailsToolCallsCodeObject, Symbol("code_interpreter"), code_interpreter)
        return new(id, type, code_interpreter, )
    end
end # type RunStepDetailsToolCallsCodeObject

const _property_types_RunStepDetailsToolCallsCodeObject = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("type")=>"String", Symbol("code_interpreter")=>"RunStepDetailsToolCallsCodeObjectCodeInterpreter", )
OpenAPI.property_type(::Type{ RunStepDetailsToolCallsCodeObject }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_RunStepDetailsToolCallsCodeObject[name]))}

function check_required(o::RunStepDetailsToolCallsCodeObject)
    o.id === nothing && (return false)
    o.type === nothing && (return false)
    o.code_interpreter === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ RunStepDetailsToolCallsCodeObject }, name::Symbol, val)
    if name === Symbol("type")
        OpenAPI.validate_param(name, "RunStepDetailsToolCallsCodeObject", :enum, val, ["code_interpreter"])
    end
end