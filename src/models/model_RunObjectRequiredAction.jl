# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""RunObject_required_action
Details on the action required to continue the run. Will be &#x60;null&#x60; if no action is required.

    RunObjectRequiredAction(;
        type=nothing,
        submit_tool_outputs=nothing,
    )

    - type::String : For now, this is always &#x60;submit_tool_outputs&#x60;.
    - submit_tool_outputs::RunObjectRequiredActionSubmitToolOutputs
"""
Base.@kwdef mutable struct RunObjectRequiredAction <: OpenAPI.APIModel
    type::Union{Nothing, String} = nothing
    submit_tool_outputs = nothing # spec type: Union{ Nothing, RunObjectRequiredActionSubmitToolOutputs }

    function RunObjectRequiredAction(type, submit_tool_outputs, )
        OpenAPI.validate_property(RunObjectRequiredAction, Symbol("type"), type)
        OpenAPI.validate_property(RunObjectRequiredAction, Symbol("submit_tool_outputs"), submit_tool_outputs)
        return new(type, submit_tool_outputs, )
    end
end # type RunObjectRequiredAction

const _property_types_RunObjectRequiredAction = Dict{Symbol,String}(Symbol("type")=>"String", Symbol("submit_tool_outputs")=>"RunObjectRequiredActionSubmitToolOutputs", )
OpenAPI.property_type(::Type{ RunObjectRequiredAction }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_RunObjectRequiredAction[name]))}

function check_required(o::RunObjectRequiredAction)
    o.type === nothing && (return false)
    o.submit_tool_outputs === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ RunObjectRequiredAction }, name::Symbol, val)
    if name === Symbol("type")
        OpenAPI.validate_param(name, "RunObjectRequiredAction", :enum, val, ["submit_tool_outputs"])
    end
end
