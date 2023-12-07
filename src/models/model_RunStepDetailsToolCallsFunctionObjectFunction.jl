# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""RunStepDetailsToolCallsFunctionObject_function
The definition of the function that was called.

    RunStepDetailsToolCallsFunctionObjectFunction(;
        name=nothing,
        arguments=nothing,
        output=nothing,
    )

    - name::String : The name of the function.
    - arguments::String : The arguments passed to the function.
    - output::String : The output of the function. This will be &#x60;null&#x60; if the outputs have not been [submitted](/docs/api-reference/runs/submitToolOutputs) yet.
"""
Base.@kwdef mutable struct RunStepDetailsToolCallsFunctionObjectFunction <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    arguments::Union{Nothing, String} = nothing
    output::Union{Nothing, String} = nothing

    function RunStepDetailsToolCallsFunctionObjectFunction(name, arguments, output, )
        OpenAPI.validate_property(RunStepDetailsToolCallsFunctionObjectFunction, Symbol("name"), name)
        OpenAPI.validate_property(RunStepDetailsToolCallsFunctionObjectFunction, Symbol("arguments"), arguments)
        OpenAPI.validate_property(RunStepDetailsToolCallsFunctionObjectFunction, Symbol("output"), output)
        return new(name, arguments, output, )
    end
end # type RunStepDetailsToolCallsFunctionObjectFunction

const _property_types_RunStepDetailsToolCallsFunctionObjectFunction = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("arguments")=>"String", Symbol("output")=>"String", )
OpenAPI.property_type(::Type{ RunStepDetailsToolCallsFunctionObjectFunction }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_RunStepDetailsToolCallsFunctionObjectFunction[name]))}

function check_required(o::RunStepDetailsToolCallsFunctionObjectFunction)
    o.name === nothing && (return false)
    o.arguments === nothing && (return false)
    o.output === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ RunStepDetailsToolCallsFunctionObjectFunction }, name::Symbol, val)
end