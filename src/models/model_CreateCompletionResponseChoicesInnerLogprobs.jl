# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CreateCompletionResponse_choices_inner_logprobs

    CreateCompletionResponseChoicesInnerLogprobs(;
        text_offset=nothing,
        token_logprobs=nothing,
        tokens=nothing,
        top_logprobs=nothing,
    )

    - text_offset::Vector{Int64}
    - token_logprobs::Vector{Float64}
    - tokens::Vector{String}
    - top_logprobs::Vector{Dict{String, Float64}}
"""
Base.@kwdef mutable struct CreateCompletionResponseChoicesInnerLogprobs <: OpenAPI.APIModel
    text_offset::Union{Nothing, Vector{Int64}} = nothing
    token_logprobs::Union{Nothing, Vector{Float64}} = nothing
    tokens::Union{Nothing, Vector{String}} = nothing
    top_logprobs::Union{Nothing, Vector{Dict{String, Float64}}} = nothing

    function CreateCompletionResponseChoicesInnerLogprobs(text_offset, token_logprobs, tokens, top_logprobs, )
        OpenAPI.validate_property(CreateCompletionResponseChoicesInnerLogprobs, Symbol("text_offset"), text_offset)
        OpenAPI.validate_property(CreateCompletionResponseChoicesInnerLogprobs, Symbol("token_logprobs"), token_logprobs)
        OpenAPI.validate_property(CreateCompletionResponseChoicesInnerLogprobs, Symbol("tokens"), tokens)
        OpenAPI.validate_property(CreateCompletionResponseChoicesInnerLogprobs, Symbol("top_logprobs"), top_logprobs)
        return new(text_offset, token_logprobs, tokens, top_logprobs, )
    end
end # type CreateCompletionResponseChoicesInnerLogprobs

const _property_types_CreateCompletionResponseChoicesInnerLogprobs = Dict{Symbol,String}(Symbol("text_offset")=>"Vector{Int64}", Symbol("token_logprobs")=>"Vector{Float64}", Symbol("tokens")=>"Vector{String}", Symbol("top_logprobs")=>"Vector{Dict{String, Float64}}", )
OpenAPI.property_type(::Type{ CreateCompletionResponseChoicesInnerLogprobs }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_CreateCompletionResponseChoicesInnerLogprobs[name]))}

function check_required(o::CreateCompletionResponseChoicesInnerLogprobs)
    true
end

function OpenAPI.validate_property(::Type{ CreateCompletionResponseChoicesInnerLogprobs }, name::Symbol, val)
end
