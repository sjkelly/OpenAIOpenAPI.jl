# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""FunctionObject

    FunctionObject(;
        description=nothing,
        name=nothing,
        parameters=nothing,
    )

    - description::String : A description of what the function does, used by the model to choose when and how to call the function.
    - name::String : The name of the function to be called. Must be a-z, A-Z, 0-9, or contain underscores and dashes, with a maximum length of 64.
    - parameters::Dict{String, Any} : The parameters the functions accepts, described as a JSON Schema object. See the [guide](/docs/guides/text-generation/function-calling) for examples, and the [JSON Schema reference](https://json-schema.org/understanding-json-schema/) for documentation about the format.  To describe a function that accepts no parameters, provide the value &#x60;{\&quot;type\&quot;: \&quot;object\&quot;, \&quot;properties\&quot;: {}}&#x60;.
"""
Base.@kwdef mutable struct FunctionObject <: OpenAPI.APIModel
    description::Union{Nothing, String} = nothing
    name::Union{Nothing, String} = nothing
    parameters::Union{Nothing, Dict{String, Any}} = nothing

    function FunctionObject(description, name, parameters, )
        OpenAPI.validate_property(FunctionObject, Symbol("description"), description)
        OpenAPI.validate_property(FunctionObject, Symbol("name"), name)
        OpenAPI.validate_property(FunctionObject, Symbol("parameters"), parameters)
        return new(description, name, parameters, )
    end
end # type FunctionObject

const _property_types_FunctionObject = Dict{Symbol,String}(Symbol("description")=>"String", Symbol("name")=>"String", Symbol("parameters")=>"Dict{String, Any}", )
OpenAPI.property_type(::Type{ FunctionObject }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_FunctionObject[name]))}

function check_required(o::FunctionObject)
    o.name === nothing && (return false)
    o.parameters === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ FunctionObject }, name::Symbol, val)
end
