# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ListAssistantFilesResponse

    ListAssistantFilesResponse(;
        object=nothing,
        data=nothing,
        first_id=nothing,
        last_id=nothing,
        has_more=nothing,
    )

    - object::String
    - data::Vector{AssistantFileObject}
    - first_id::String
    - last_id::String
    - has_more::Bool
"""
Base.@kwdef mutable struct ListAssistantFilesResponse <: OpenAPI.APIModel
    object::Union{Nothing, String} = nothing
    data::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{AssistantFileObject} }
    first_id::Union{Nothing, String} = nothing
    last_id::Union{Nothing, String} = nothing
    has_more::Union{Nothing, Bool} = nothing

    function ListAssistantFilesResponse(object, data, first_id, last_id, has_more, )
        OpenAPI.validate_property(ListAssistantFilesResponse, Symbol("object"), object)
        OpenAPI.validate_property(ListAssistantFilesResponse, Symbol("data"), data)
        OpenAPI.validate_property(ListAssistantFilesResponse, Symbol("first_id"), first_id)
        OpenAPI.validate_property(ListAssistantFilesResponse, Symbol("last_id"), last_id)
        OpenAPI.validate_property(ListAssistantFilesResponse, Symbol("has_more"), has_more)
        return new(object, data, first_id, last_id, has_more, )
    end
end # type ListAssistantFilesResponse

const _property_types_ListAssistantFilesResponse = Dict{Symbol,String}(Symbol("object")=>"String", Symbol("data")=>"Vector{AssistantFileObject}", Symbol("first_id")=>"String", Symbol("last_id")=>"String", Symbol("has_more")=>"Bool", )
OpenAPI.property_type(::Type{ ListAssistantFilesResponse }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ListAssistantFilesResponse[name]))}

function check_required(o::ListAssistantFilesResponse)
    o.object === nothing && (return false)
    o.data === nothing && (return false)
    o.first_id === nothing && (return false)
    o.last_id === nothing && (return false)
    o.has_more === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ ListAssistantFilesResponse }, name::Symbol, val)
end
