# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CreateImageRequest

    CreateImageRequest(;
        prompt=nothing,
        model=nothing,
        n=1,
        quality="standard",
        response_format="url",
        size="1024x1024",
        style="vivid",
        user=nothing,
    )

    - prompt::String : A text description of the desired image(s). The maximum length is 1000 characters for &#x60;dall-e-2&#x60; and 4000 characters for &#x60;dall-e-3&#x60;.
    - model::CreateImageRequestModel
    - n::Int64 : The number of images to generate. Must be between 1 and 10. For &#x60;dall-e-3&#x60;, only &#x60;n&#x3D;1&#x60; is supported.
    - quality::String : The quality of the image that will be generated. &#x60;hd&#x60; creates images with finer details and greater consistency across the image. This param is only supported for &#x60;dall-e-3&#x60;.
    - response_format::String : The format in which the generated images are returned. Must be one of &#x60;url&#x60; or &#x60;b64_json&#x60;.
    - size::String : The size of the generated images. Must be one of &#x60;256x256&#x60;, &#x60;512x512&#x60;, or &#x60;1024x1024&#x60; for &#x60;dall-e-2&#x60;. Must be one of &#x60;1024x1024&#x60;, &#x60;1792x1024&#x60;, or &#x60;1024x1792&#x60; for &#x60;dall-e-3&#x60; models.
    - style::String : The style of the generated images. Must be one of &#x60;vivid&#x60; or &#x60;natural&#x60;. Vivid causes the model to lean towards generating hyper-real and dramatic images. Natural causes the model to produce more natural, less hyper-real looking images. This param is only supported for &#x60;dall-e-3&#x60;.
    - user::String : A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. [Learn more](/docs/guides/safety-best-practices/end-user-ids). 
"""
Base.@kwdef mutable struct CreateImageRequest <: OpenAPI.APIModel
    prompt::Union{Nothing, String} = nothing
    model = nothing # spec type: Union{ Nothing, CreateImageRequestModel }
    n::Union{Nothing, Int64} = 1
    quality::Union{Nothing, String} = "standard"
    response_format::Union{Nothing, String} = "url"
    size::Union{Nothing, String} = "1024x1024"
    style::Union{Nothing, String} = "vivid"
    user::Union{Nothing, String} = nothing

    function CreateImageRequest(prompt, model, n, quality, response_format, size, style, user, )
        OpenAPI.validate_property(CreateImageRequest, Symbol("prompt"), prompt)
        OpenAPI.validate_property(CreateImageRequest, Symbol("model"), model)
        OpenAPI.validate_property(CreateImageRequest, Symbol("n"), n)
        OpenAPI.validate_property(CreateImageRequest, Symbol("quality"), quality)
        OpenAPI.validate_property(CreateImageRequest, Symbol("response_format"), response_format)
        OpenAPI.validate_property(CreateImageRequest, Symbol("size"), size)
        OpenAPI.validate_property(CreateImageRequest, Symbol("style"), style)
        OpenAPI.validate_property(CreateImageRequest, Symbol("user"), user)
        return new(prompt, model, n, quality, response_format, size, style, user, )
    end
end # type CreateImageRequest

const _property_types_CreateImageRequest = Dict{Symbol,String}(Symbol("prompt")=>"String", Symbol("model")=>"CreateImageRequestModel", Symbol("n")=>"Int64", Symbol("quality")=>"String", Symbol("response_format")=>"String", Symbol("size")=>"String", Symbol("style")=>"String", Symbol("user")=>"String", )
OpenAPI.property_type(::Type{ CreateImageRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_CreateImageRequest[name]))}

function check_required(o::CreateImageRequest)
    o.prompt === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ CreateImageRequest }, name::Symbol, val)
    if name === Symbol("n")
        OpenAPI.validate_param(name, "CreateImageRequest", :maximum, val, 10, false)
        OpenAPI.validate_param(name, "CreateImageRequest", :minimum, val, 1, false)
    end
    if name === Symbol("quality")
        OpenAPI.validate_param(name, "CreateImageRequest", :enum, val, ["standard", "hd"])
    end
    if name === Symbol("response_format")
        OpenAPI.validate_param(name, "CreateImageRequest", :enum, val, ["url", "b64_json"])
    end
    if name === Symbol("size")
        OpenAPI.validate_param(name, "CreateImageRequest", :enum, val, ["256x256", "512x512", "1024x1024", "1792x1024", "1024x1792"])
    end
    if name === Symbol("style")
        OpenAPI.validate_param(name, "CreateImageRequest", :enum, val, ["vivid", "natural"])
    end
end