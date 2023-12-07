# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ListFineTunesResponse

    ListFineTunesResponse(;
        data=nothing,
        object=nothing,
    )

    - data::Vector{FineTune}
    - object::String
"""
Base.@kwdef mutable struct ListFineTunesResponse <: OpenAPI.APIModel
    data::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{FineTune} }
    object::Union{Nothing, String} = nothing

    function ListFineTunesResponse(data, object, )
        OpenAPI.validate_property(ListFineTunesResponse, Symbol("data"), data)
        OpenAPI.validate_property(ListFineTunesResponse, Symbol("object"), object)
        return new(data, object, )
    end
end # type ListFineTunesResponse

const _property_types_ListFineTunesResponse = Dict{Symbol,String}(Symbol("data")=>"Vector{FineTune}", Symbol("object")=>"String", )
OpenAPI.property_type(::Type{ ListFineTunesResponse }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ListFineTunesResponse[name]))}

function check_required(o::ListFineTunesResponse)
    o.data === nothing && (return false)
    o.object === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ ListFineTunesResponse }, name::Symbol, val)
    if name === Symbol("object")
        OpenAPI.validate_param(name, "ListFineTunesResponse", :enum, val, ["list"])
    end
end