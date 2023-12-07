# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ListPaginatedFineTuningJobsResponse

    ListPaginatedFineTuningJobsResponse(;
        data=nothing,
        has_more=nothing,
        object=nothing,
    )

    - data::Vector{FineTuningJob}
    - has_more::Bool
    - object::String
"""
Base.@kwdef mutable struct ListPaginatedFineTuningJobsResponse <: OpenAPI.APIModel
    data::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{FineTuningJob} }
    has_more::Union{Nothing, Bool} = nothing
    object::Union{Nothing, String} = nothing

    function ListPaginatedFineTuningJobsResponse(data, has_more, object, )
        OpenAPI.validate_property(ListPaginatedFineTuningJobsResponse, Symbol("data"), data)
        OpenAPI.validate_property(ListPaginatedFineTuningJobsResponse, Symbol("has_more"), has_more)
        OpenAPI.validate_property(ListPaginatedFineTuningJobsResponse, Symbol("object"), object)
        return new(data, has_more, object, )
    end
end # type ListPaginatedFineTuningJobsResponse

const _property_types_ListPaginatedFineTuningJobsResponse = Dict{Symbol,String}(Symbol("data")=>"Vector{FineTuningJob}", Symbol("has_more")=>"Bool", Symbol("object")=>"String", )
OpenAPI.property_type(::Type{ ListPaginatedFineTuningJobsResponse }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ListPaginatedFineTuningJobsResponse[name]))}

function check_required(o::ListPaginatedFineTuningJobsResponse)
    o.data === nothing && (return false)
    o.has_more === nothing && (return false)
    o.object === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ ListPaginatedFineTuningJobsResponse }, name::Symbol, val)
    if name === Symbol("object")
        OpenAPI.validate_param(name, "ListPaginatedFineTuningJobsResponse", :enum, val, ["list"])
    end
end
