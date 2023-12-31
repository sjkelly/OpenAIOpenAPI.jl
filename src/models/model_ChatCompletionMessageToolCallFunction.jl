# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ChatCompletionMessageToolCall_function
The function that the model called.

    ChatCompletionMessageToolCallFunction(;
        name=nothing,
        arguments=nothing,
    )

    - name::String : The name of the function to call.
    - arguments::String : The arguments to call the function with, as generated by the model in JSON format. Note that the model does not always generate valid JSON, and may hallucinate parameters not defined by your function schema. Validate the arguments in your code before calling your function.
"""
Base.@kwdef mutable struct ChatCompletionMessageToolCallFunction <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    arguments::Union{Nothing, String} = nothing

    function ChatCompletionMessageToolCallFunction(name, arguments, )
        OpenAPI.validate_property(ChatCompletionMessageToolCallFunction, Symbol("name"), name)
        OpenAPI.validate_property(ChatCompletionMessageToolCallFunction, Symbol("arguments"), arguments)
        return new(name, arguments, )
    end
end # type ChatCompletionMessageToolCallFunction

const _property_types_ChatCompletionMessageToolCallFunction = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("arguments")=>"String", )
OpenAPI.property_type(::Type{ ChatCompletionMessageToolCallFunction }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ChatCompletionMessageToolCallFunction[name]))}

function check_required(o::ChatCompletionMessageToolCallFunction)
    o.name === nothing && (return false)
    o.arguments === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ ChatCompletionMessageToolCallFunction }, name::Symbol, val)
end
