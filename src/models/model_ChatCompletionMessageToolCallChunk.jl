# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ChatCompletionMessageToolCallChunk

    ChatCompletionMessageToolCallChunk(;
        index=nothing,
        id=nothing,
        type=nothing,
        var"function"=nothing,
    )

    - index::Int64
    - id::String : The ID of the tool call.
    - type::String : The type of the tool. Currently, only &#x60;function&#x60; is supported.
    - var"function"::ChatCompletionMessageToolCallChunkFunction
"""
Base.@kwdef mutable struct ChatCompletionMessageToolCallChunk <: OpenAPI.APIModel
    index::Union{Nothing, Int64} = nothing
    id::Union{Nothing, String} = nothing
    type::Union{Nothing, String} = nothing
    var"function" = nothing # spec type: Union{ Nothing, ChatCompletionMessageToolCallChunkFunction }

    function ChatCompletionMessageToolCallChunk(index, id, type, var"function", )
        OpenAPI.validate_property(ChatCompletionMessageToolCallChunk, Symbol("index"), index)
        OpenAPI.validate_property(ChatCompletionMessageToolCallChunk, Symbol("id"), id)
        OpenAPI.validate_property(ChatCompletionMessageToolCallChunk, Symbol("type"), type)
        OpenAPI.validate_property(ChatCompletionMessageToolCallChunk, Symbol("function"), var"function")
        return new(index, id, type, var"function", )
    end
end # type ChatCompletionMessageToolCallChunk

const _property_types_ChatCompletionMessageToolCallChunk = Dict{Symbol,String}(Symbol("index")=>"Int64", Symbol("id")=>"String", Symbol("type")=>"String", Symbol("function")=>"ChatCompletionMessageToolCallChunkFunction", )
OpenAPI.property_type(::Type{ ChatCompletionMessageToolCallChunk }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ChatCompletionMessageToolCallChunk[name]))}

function check_required(o::ChatCompletionMessageToolCallChunk)
    o.index === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ ChatCompletionMessageToolCallChunk }, name::Symbol, val)
    if name === Symbol("type")
        OpenAPI.validate_param(name, "ChatCompletionMessageToolCallChunk", :enum, val, ["function"])
    end
end
