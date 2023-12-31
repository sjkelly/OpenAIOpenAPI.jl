# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ChatCompletionResponseMessage
A chat completion message generated by the model.

    ChatCompletionResponseMessage(;
        content=nothing,
        tool_calls=nothing,
        role=nothing,
        function_call=nothing,
    )

    - content::String : The contents of the message.
    - tool_calls::Vector{ChatCompletionMessageToolCall} : The tool calls generated by the model, such as function calls.
    - role::String : The role of the author of this message.
    - function_call::ChatCompletionRequestAssistantMessageFunctionCall
"""
Base.@kwdef mutable struct ChatCompletionResponseMessage <: OpenAPI.APIModel
    content::Union{Nothing, String} = nothing
    tool_calls::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{ChatCompletionMessageToolCall} }
    role::Union{Nothing, String} = nothing
    function_call = nothing # spec type: Union{ Nothing, ChatCompletionRequestAssistantMessageFunctionCall }

    function ChatCompletionResponseMessage(content, tool_calls, role, function_call, )
        OpenAPI.validate_property(ChatCompletionResponseMessage, Symbol("content"), content)
        OpenAPI.validate_property(ChatCompletionResponseMessage, Symbol("tool_calls"), tool_calls)
        OpenAPI.validate_property(ChatCompletionResponseMessage, Symbol("role"), role)
        OpenAPI.validate_property(ChatCompletionResponseMessage, Symbol("function_call"), function_call)
        return new(content, tool_calls, role, function_call, )
    end
end # type ChatCompletionResponseMessage

const _property_types_ChatCompletionResponseMessage = Dict{Symbol,String}(Symbol("content")=>"String", Symbol("tool_calls")=>"Vector{ChatCompletionMessageToolCall}", Symbol("role")=>"String", Symbol("function_call")=>"ChatCompletionRequestAssistantMessageFunctionCall", )
OpenAPI.property_type(::Type{ ChatCompletionResponseMessage }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ChatCompletionResponseMessage[name]))}

function check_required(o::ChatCompletionResponseMessage)
    o.content === nothing && (return false)
    o.role === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ ChatCompletionResponseMessage }, name::Symbol, val)
    if name === Symbol("role")
        OpenAPI.validate_param(name, "ChatCompletionResponseMessage", :enum, val, ["assistant"])
    end
end
