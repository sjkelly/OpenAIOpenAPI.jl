# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""RunToolCallObject_function
The function definition.

    RunToolCallObjectFunction(;
        name=nothing,
        arguments=nothing,
    )

    - name::String : The name of the function.
    - arguments::String : The arguments that the model expects you to pass to the function.
"""
Base.@kwdef mutable struct RunToolCallObjectFunction <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    arguments::Union{Nothing, String} = nothing

    function RunToolCallObjectFunction(name, arguments, )
        OpenAPI.validate_property(RunToolCallObjectFunction, Symbol("name"), name)
        OpenAPI.validate_property(RunToolCallObjectFunction, Symbol("arguments"), arguments)
        return new(name, arguments, )
    end
end # type RunToolCallObjectFunction

const _property_types_RunToolCallObjectFunction = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("arguments")=>"String", )
OpenAPI.property_type(::Type{ RunToolCallObjectFunction }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_RunToolCallObjectFunction[name]))}

function check_required(o::RunToolCallObjectFunction)
    o.name === nothing && (return false)
    o.arguments === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ RunToolCallObjectFunction }, name::Symbol, val)
end
