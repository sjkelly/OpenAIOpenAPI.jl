# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Image
Represents the url or the content of an image generated by the OpenAI API.

    Image(;
        b64_json=nothing,
        url=nothing,
        revised_prompt=nothing,
    )

    - b64_json::String : The base64-encoded JSON of the generated image, if &#x60;response_format&#x60; is &#x60;b64_json&#x60;.
    - url::String : The URL of the generated image, if &#x60;response_format&#x60; is &#x60;url&#x60; (default).
    - revised_prompt::String : The prompt that was used to generate the image, if there was any revision to the prompt.
"""
Base.@kwdef mutable struct Image <: OpenAPI.APIModel
    b64_json::Union{Nothing, String} = nothing
    url::Union{Nothing, String} = nothing
    revised_prompt::Union{Nothing, String} = nothing

    function Image(b64_json, url, revised_prompt, )
        OpenAPI.validate_property(Image, Symbol("b64_json"), b64_json)
        OpenAPI.validate_property(Image, Symbol("url"), url)
        OpenAPI.validate_property(Image, Symbol("revised_prompt"), revised_prompt)
        return new(b64_json, url, revised_prompt, )
    end
end # type Image

const _property_types_Image = Dict{Symbol,String}(Symbol("b64_json")=>"String", Symbol("url")=>"String", Symbol("revised_prompt")=>"String", )
OpenAPI.property_type(::Type{ Image }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Image[name]))}

function check_required(o::Image)
    true
end

function OpenAPI.validate_property(::Type{ Image }, name::Symbol, val)
end