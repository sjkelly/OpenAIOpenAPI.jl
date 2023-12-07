# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""CreateModerationResponse_results_inner_categories
A list of the categories, and whether they are flagged or not.

    CreateModerationResponseResultsInnerCategories(;
        hate=nothing,
        var"hate/threatening"=nothing,
        harassment=nothing,
        var"harassment/threatening"=nothing,
        var"self-harm"=nothing,
        var"self-harm/intent"=nothing,
        var"self-harm/instructions"=nothing,
        sexual=nothing,
        var"sexual/minors"=nothing,
        violence=nothing,
        var"violence/graphic"=nothing,
    )

    - hate::Bool : Content that expresses, incites, or promotes hate based on race, gender, ethnicity, religion, nationality, sexual orientation, disability status, or caste. Hateful content aimed at non-protected groups (e.g., chess players) is harrassment.
    - var"hate/threatening"::Bool : Hateful content that also includes violence or serious harm towards the targeted group based on race, gender, ethnicity, religion, nationality, sexual orientation, disability status, or caste.
    - harassment::Bool : Content that expresses, incites, or promotes harassing language towards any target.
    - var"harassment/threatening"::Bool : Harassment content that also includes violence or serious harm towards any target.
    - var"self-harm"::Bool : Content that promotes, encourages, or depicts acts of self-harm, such as suicide, cutting, and eating disorders.
    - var"self-harm/intent"::Bool : Content where the speaker expresses that they are engaging or intend to engage in acts of self-harm, such as suicide, cutting, and eating disorders.
    - var"self-harm/instructions"::Bool : Content that encourages performing acts of self-harm, such as suicide, cutting, and eating disorders, or that gives instructions or advice on how to commit such acts.
    - sexual::Bool : Content meant to arouse sexual excitement, such as the description of sexual activity, or that promotes sexual services (excluding sex education and wellness).
    - var"sexual/minors"::Bool : Sexual content that includes an individual who is under 18 years old.
    - violence::Bool : Content that depicts death, violence, or physical injury.
    - var"violence/graphic"::Bool : Content that depicts death, violence, or physical injury in graphic detail.
"""
Base.@kwdef mutable struct CreateModerationResponseResultsInnerCategories <: OpenAPI.APIModel
    hate::Union{Nothing, Bool} = nothing
    var"hate/threatening"::Union{Nothing, Bool} = nothing
    harassment::Union{Nothing, Bool} = nothing
    var"harassment/threatening"::Union{Nothing, Bool} = nothing
    var"self-harm"::Union{Nothing, Bool} = nothing
    var"self-harm/intent"::Union{Nothing, Bool} = nothing
    var"self-harm/instructions"::Union{Nothing, Bool} = nothing
    sexual::Union{Nothing, Bool} = nothing
    var"sexual/minors"::Union{Nothing, Bool} = nothing
    violence::Union{Nothing, Bool} = nothing
    var"violence/graphic"::Union{Nothing, Bool} = nothing

    function CreateModerationResponseResultsInnerCategories(hate, var"hate/threatening", harassment, var"harassment/threatening", var"self-harm", var"self-harm/intent", var"self-harm/instructions", sexual, var"sexual/minors", violence, var"violence/graphic", )
        OpenAPI.validate_property(CreateModerationResponseResultsInnerCategories, Symbol("hate"), hate)
        OpenAPI.validate_property(CreateModerationResponseResultsInnerCategories, Symbol("hate/threatening"), var"hate/threatening")
        OpenAPI.validate_property(CreateModerationResponseResultsInnerCategories, Symbol("harassment"), harassment)
        OpenAPI.validate_property(CreateModerationResponseResultsInnerCategories, Symbol("harassment/threatening"), var"harassment/threatening")
        OpenAPI.validate_property(CreateModerationResponseResultsInnerCategories, Symbol("self-harm"), var"self-harm")
        OpenAPI.validate_property(CreateModerationResponseResultsInnerCategories, Symbol("self-harm/intent"), var"self-harm/intent")
        OpenAPI.validate_property(CreateModerationResponseResultsInnerCategories, Symbol("self-harm/instructions"), var"self-harm/instructions")
        OpenAPI.validate_property(CreateModerationResponseResultsInnerCategories, Symbol("sexual"), sexual)
        OpenAPI.validate_property(CreateModerationResponseResultsInnerCategories, Symbol("sexual/minors"), var"sexual/minors")
        OpenAPI.validate_property(CreateModerationResponseResultsInnerCategories, Symbol("violence"), violence)
        OpenAPI.validate_property(CreateModerationResponseResultsInnerCategories, Symbol("violence/graphic"), var"violence/graphic")
        return new(hate, var"hate/threatening", harassment, var"harassment/threatening", var"self-harm", var"self-harm/intent", var"self-harm/instructions", sexual, var"sexual/minors", violence, var"violence/graphic", )
    end
end # type CreateModerationResponseResultsInnerCategories

const _property_types_CreateModerationResponseResultsInnerCategories = Dict{Symbol,String}(Symbol("hate")=>"Bool", Symbol("hate/threatening")=>"Bool", Symbol("harassment")=>"Bool", Symbol("harassment/threatening")=>"Bool", Symbol("self-harm")=>"Bool", Symbol("self-harm/intent")=>"Bool", Symbol("self-harm/instructions")=>"Bool", Symbol("sexual")=>"Bool", Symbol("sexual/minors")=>"Bool", Symbol("violence")=>"Bool", Symbol("violence/graphic")=>"Bool", )
OpenAPI.property_type(::Type{ CreateModerationResponseResultsInnerCategories }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_CreateModerationResponseResultsInnerCategories[name]))}

function check_required(o::CreateModerationResponseResultsInnerCategories)
    o.hate === nothing && (return false)
    o.var"hate/threatening" === nothing && (return false)
    o.harassment === nothing && (return false)
    o.var"harassment/threatening" === nothing && (return false)
    o.var"self-harm" === nothing && (return false)
    o.var"self-harm/intent" === nothing && (return false)
    o.var"self-harm/instructions" === nothing && (return false)
    o.sexual === nothing && (return false)
    o.var"sexual/minors" === nothing && (return false)
    o.violence === nothing && (return false)
    o.var"violence/graphic" === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ CreateModerationResponseResultsInnerCategories }, name::Symbol, val)
end