# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ListThreadsResponse

    ListThreadsResponse(;
        object=nothing,
        data=nothing,
        first_id=nothing,
        last_id=nothing,
        has_more=nothing,
    )

    - object::String
    - data::Vector{ThreadObject}
    - first_id::String
    - last_id::String
    - has_more::Bool
"""
Base.@kwdef mutable struct ListThreadsResponse <: OpenAPI.APIModel
    object::Union{Nothing, String} = nothing
    data::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{ThreadObject} }
    first_id::Union{Nothing, String} = nothing
    last_id::Union{Nothing, String} = nothing
    has_more::Union{Nothing, Bool} = nothing

    function ListThreadsResponse(object, data, first_id, last_id, has_more, )
        OpenAPI.validate_property(ListThreadsResponse, Symbol("object"), object)
        OpenAPI.validate_property(ListThreadsResponse, Symbol("data"), data)
        OpenAPI.validate_property(ListThreadsResponse, Symbol("first_id"), first_id)
        OpenAPI.validate_property(ListThreadsResponse, Symbol("last_id"), last_id)
        OpenAPI.validate_property(ListThreadsResponse, Symbol("has_more"), has_more)
        return new(object, data, first_id, last_id, has_more, )
    end
end # type ListThreadsResponse

const _property_types_ListThreadsResponse = Dict{Symbol,String}(Symbol("object")=>"String", Symbol("data")=>"Vector{ThreadObject}", Symbol("first_id")=>"String", Symbol("last_id")=>"String", Symbol("has_more")=>"Bool", )
OpenAPI.property_type(::Type{ ListThreadsResponse }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ListThreadsResponse[name]))}

function check_required(o::ListThreadsResponse)
    o.object === nothing && (return false)
    o.data === nothing && (return false)
    o.first_id === nothing && (return false)
    o.last_id === nothing && (return false)
    o.has_more === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ ListThreadsResponse }, name::Symbol, val)
end
