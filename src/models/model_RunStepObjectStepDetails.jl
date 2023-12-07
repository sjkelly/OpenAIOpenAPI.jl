# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""RunStepObject_step_details
The details of the run step.

    RunStepObjectStepDetails(; value=nothing)
"""
mutable struct RunStepObjectStepDetails <: OpenAPI.OneOfAPIModel
    value::Any # Union{ RunStepDetailsMessageCreationObject, RunStepDetailsToolCallsObject }
    RunStepObjectStepDetails() = new()
    RunStepObjectStepDetails(value) = new(value)
end # type RunStepObjectStepDetails

function OpenAPI.property_type(::Type{ RunStepObjectStepDetails }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(RunStepObjectStepDetails, name)
end
