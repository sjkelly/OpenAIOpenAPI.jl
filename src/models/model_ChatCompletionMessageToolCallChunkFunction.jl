# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ChatCompletionMessageToolCallChunk_function

    ChatCompletionMessageToolCallChunkFunction(;
        name=nothing,
        arguments=nothing,
    )

    - name::String : The name of the function to call.
    - arguments::String : The arguments to call the function with, as generated by the model in JSON format. Note that the model does not always generate valid JSON, and may hallucinate parameters not defined by your function schema. Validate the arguments in your code before calling your function.
"""
Base.@kwdef mutable struct ChatCompletionMessageToolCallChunkFunction <: OpenAPI.APIModel
    name::Union{Nothing, String} = nothing
    arguments::Union{Nothing, String} = nothing

    function ChatCompletionMessageToolCallChunkFunction(name, arguments, )
        OpenAPI.validate_property(ChatCompletionMessageToolCallChunkFunction, Symbol("name"), name)
        OpenAPI.validate_property(ChatCompletionMessageToolCallChunkFunction, Symbol("arguments"), arguments)
        return new(name, arguments, )
    end
end # type ChatCompletionMessageToolCallChunkFunction

const _property_types_ChatCompletionMessageToolCallChunkFunction = Dict{Symbol,String}(Symbol("name")=>"String", Symbol("arguments")=>"String", )
OpenAPI.property_type(::Type{ ChatCompletionMessageToolCallChunkFunction }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ChatCompletionMessageToolCallChunkFunction[name]))}

function check_required(o::ChatCompletionMessageToolCallChunkFunction)
    true
end

function OpenAPI.validate_property(::Type{ ChatCompletionMessageToolCallChunkFunction }, name::Symbol, val)
end
