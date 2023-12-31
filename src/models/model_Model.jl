# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Model
Describes an OpenAI model offering that can be used with the API.

    Model(;
        id=nothing,
        created=nothing,
        object=nothing,
        owned_by=nothing,
    )

    - id::String : The model identifier, which can be referenced in the API endpoints.
    - created::Int64 : The Unix timestamp (in seconds) when the model was created.
    - object::String : The object type, which is always \&quot;model\&quot;.
    - owned_by::String : The organization that owns the model.
"""
Base.@kwdef mutable struct Model <: OpenAPI.APIModel
    id::Union{Nothing, String} = nothing
    created::Union{Nothing, Int64} = nothing
    object::Union{Nothing, String} = nothing
    owned_by::Union{Nothing, String} = nothing

    function Model(id, created, object, owned_by, )
        OpenAPI.validate_property(Model, Symbol("id"), id)
        OpenAPI.validate_property(Model, Symbol("created"), created)
        OpenAPI.validate_property(Model, Symbol("object"), object)
        OpenAPI.validate_property(Model, Symbol("owned_by"), owned_by)
        return new(id, created, object, owned_by, )
    end
end # type Model

const _property_types_Model = Dict{Symbol,String}(Symbol("id")=>"String", Symbol("created")=>"Int64", Symbol("object")=>"String", Symbol("owned_by")=>"String", )
OpenAPI.property_type(::Type{ Model }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Model[name]))}

function check_required(o::Model)
    o.id === nothing && (return false)
    o.created === nothing && (return false)
    o.object === nothing && (return false)
    o.owned_by === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ Model }, name::Symbol, val)
    if name === Symbol("object")
        OpenAPI.validate_param(name, "Model", :enum, val, ["model"])
    end
end
