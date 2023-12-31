# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CreateRunRequest

    CreateRunRequest(;
        assistant_id=nothing,
        model=nothing,
        instructions=nothing,
        tools=nothing,
        metadata=nothing,
    )

    - assistant_id::String : The ID of the [assistant](/docs/api-reference/assistants) to use to execute this run.
    - model::String : The ID of the [Model](/docs/api-reference/models) to be used to execute this run. If a value is provided here, it will override the model associated with the assistant. If not, the model associated with the assistant will be used.
    - instructions::String : Override the default system message of the assistant. This is useful for modifying the behavior on a per-run basis.
    - tools::Vector{AssistantObjectToolsInner} : Override the tools the assistant can use for this run. This is useful for modifying the behavior on a per-run basis.
    - metadata::Any : Set of 16 key-value pairs that can be attached to an object. This can be useful for storing additional information about the object in a structured format. Keys can be a maximum of 64 characters long and values can be a maxium of 512 characters long. 
"""
Base.@kwdef mutable struct CreateRunRequest <: OpenAPI.APIModel
    assistant_id::Union{Nothing, String} = nothing
    model::Union{Nothing, String} = nothing
    instructions::Union{Nothing, String} = nothing
    tools::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{AssistantObjectToolsInner} }
    metadata::Union{Nothing, Any} = nothing

    function CreateRunRequest(assistant_id, model, instructions, tools, metadata, )
        OpenAPI.validate_property(CreateRunRequest, Symbol("assistant_id"), assistant_id)
        OpenAPI.validate_property(CreateRunRequest, Symbol("model"), model)
        OpenAPI.validate_property(CreateRunRequest, Symbol("instructions"), instructions)
        OpenAPI.validate_property(CreateRunRequest, Symbol("tools"), tools)
        OpenAPI.validate_property(CreateRunRequest, Symbol("metadata"), metadata)
        return new(assistant_id, model, instructions, tools, metadata, )
    end
end # type CreateRunRequest

const _property_types_CreateRunRequest = Dict{Symbol,String}(Symbol("assistant_id")=>"String", Symbol("model")=>"String", Symbol("instructions")=>"String", Symbol("tools")=>"Vector{AssistantObjectToolsInner}", Symbol("metadata")=>"Any", )
OpenAPI.property_type(::Type{ CreateRunRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_CreateRunRequest[name]))}

function check_required(o::CreateRunRequest)
    o.assistant_id === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ CreateRunRequest }, name::Symbol, val)
    if name === Symbol("tools")
        OpenAPI.validate_param(name, "CreateRunRequest", :maxItems, val, 20)
    end
end
