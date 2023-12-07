# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CreateEmbeddingRequest

    CreateEmbeddingRequest(;
        input=nothing,
        model=nothing,
        encoding_format="float",
        user=nothing,
    )

    - input::CreateEmbeddingRequestInput
    - model::CreateEmbeddingRequestModel
    - encoding_format::String : The format to return the embeddings in. Can be either &#x60;float&#x60; or [&#x60;base64&#x60;](https://pypi.org/project/pybase64/).
    - user::String : A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids). 
"""
Base.@kwdef mutable struct CreateEmbeddingRequest <: OpenAPI.APIModel
    input = nothing # spec type: Union{ Nothing, CreateEmbeddingRequestInput }
    model = nothing # spec type: Union{ Nothing, CreateEmbeddingRequestModel }
    encoding_format::Union{Nothing, String} = "float"
    user::Union{Nothing, String} = nothing

    function CreateEmbeddingRequest(input, model, encoding_format, user, )
        OpenAPI.validate_property(CreateEmbeddingRequest, Symbol("input"), input)
        OpenAPI.validate_property(CreateEmbeddingRequest, Symbol("model"), model)
        OpenAPI.validate_property(CreateEmbeddingRequest, Symbol("encoding_format"), encoding_format)
        OpenAPI.validate_property(CreateEmbeddingRequest, Symbol("user"), user)
        return new(input, model, encoding_format, user, )
    end
end # type CreateEmbeddingRequest

const _property_types_CreateEmbeddingRequest = Dict{Symbol,String}(Symbol("input")=>"CreateEmbeddingRequestInput", Symbol("model")=>"CreateEmbeddingRequestModel", Symbol("encoding_format")=>"String", Symbol("user")=>"String", )
OpenAPI.property_type(::Type{ CreateEmbeddingRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_CreateEmbeddingRequest[name]))}

function check_required(o::CreateEmbeddingRequest)
    o.input === nothing && (return false)
    o.model === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ CreateEmbeddingRequest }, name::Symbol, val)
    if name === Symbol("encoding_format")
        OpenAPI.validate_param(name, "CreateEmbeddingRequest", :enum, val, ["float", "base64"])
    end
end