# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""MessageContentTextAnnotationsFileCitationObject_file_citation

    MessageContentTextAnnotationsFileCitationObjectFileCitation(;
        file_id=nothing,
        var"quote"=nothing,
    )

    - file_id::String : The ID of the specific File the citation is from.
    - var"quote"::String : The specific quote in the file.
"""
Base.@kwdef mutable struct MessageContentTextAnnotationsFileCitationObjectFileCitation <: OpenAPI.APIModel
    file_id::Union{Nothing, String} = nothing
    var"quote"::Union{Nothing, String} = nothing

    function MessageContentTextAnnotationsFileCitationObjectFileCitation(file_id, var"quote", )
        OpenAPI.validate_property(MessageContentTextAnnotationsFileCitationObjectFileCitation, Symbol("file_id"), file_id)
        OpenAPI.validate_property(MessageContentTextAnnotationsFileCitationObjectFileCitation, Symbol("quote"), var"quote")
        return new(file_id, var"quote", )
    end
end # type MessageContentTextAnnotationsFileCitationObjectFileCitation

const _property_types_MessageContentTextAnnotationsFileCitationObjectFileCitation = Dict{Symbol,String}(Symbol("file_id")=>"String", Symbol("quote")=>"String", )
OpenAPI.property_type(::Type{ MessageContentTextAnnotationsFileCitationObjectFileCitation }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_MessageContentTextAnnotationsFileCitationObjectFileCitation[name]))}

function check_required(o::MessageContentTextAnnotationsFileCitationObjectFileCitation)
    o.file_id === nothing && (return false)
    o.var"quote" === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ MessageContentTextAnnotationsFileCitationObjectFileCitation }, name::Symbol, val)
end
