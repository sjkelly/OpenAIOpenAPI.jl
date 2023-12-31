# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Embedding
Represents an embedding vector returned by embedding endpoint. 

    Embedding(;
        index=nothing,
        embedding=nothing,
        object=nothing,
    )

    - index::Int64 : The index of the embedding in the list of embeddings.
    - embedding::Vector{Float64} : The embedding vector, which is a list of floats. The length of vector depends on the model as listed in the [embedding guide](/docs/guides/embeddings). 
    - object::String : The object type, which is always \&quot;embedding\&quot;.
"""
Base.@kwdef mutable struct Embedding <: OpenAPI.APIModel
    index::Union{Nothing, Int64} = nothing
    embedding::Union{Nothing, Vector{Float64}} = nothing
    object::Union{Nothing, String} = nothing

    function Embedding(index, embedding, object, )
        OpenAPI.validate_property(Embedding, Symbol("index"), index)
        OpenAPI.validate_property(Embedding, Symbol("embedding"), embedding)
        OpenAPI.validate_property(Embedding, Symbol("object"), object)
        return new(index, embedding, object, )
    end
end # type Embedding

const _property_types_Embedding = Dict{Symbol,String}(Symbol("index")=>"Int64", Symbol("embedding")=>"Vector{Float64}", Symbol("object")=>"String", )
OpenAPI.property_type(::Type{ Embedding }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Embedding[name]))}

function check_required(o::Embedding)
    o.index === nothing && (return false)
    o.embedding === nothing && (return false)
    o.object === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ Embedding }, name::Symbol, val)
    if name === Symbol("object")
        OpenAPI.validate_param(name, "Embedding", :enum, val, ["embedding"])
    end
end
