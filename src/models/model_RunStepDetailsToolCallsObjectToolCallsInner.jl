# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""RunStepDetailsToolCallsObject_tool_calls_inner

    RunStepDetailsToolCallsObjectToolCallsInner(; value=nothing)
"""
mutable struct RunStepDetailsToolCallsObjectToolCallsInner <: OpenAPI.OneOfAPIModel
    value::Any # Union{ RunStepDetailsToolCallsCodeObject, RunStepDetailsToolCallsFunctionObject, RunStepDetailsToolCallsRetrievalObject }
    RunStepDetailsToolCallsObjectToolCallsInner() = new()
    RunStepDetailsToolCallsObjectToolCallsInner(value) = new(value)
end # type RunStepDetailsToolCallsObjectToolCallsInner

function OpenAPI.property_type(::Type{ RunStepDetailsToolCallsObjectToolCallsInner }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(RunStepDetailsToolCallsObjectToolCallsInner, name)
end