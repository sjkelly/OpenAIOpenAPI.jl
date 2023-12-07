# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""FineTuningJob_error
For fine-tuning jobs that have &#x60;failed&#x60;, this will contain more information on the cause of the failure.

    FineTuningJobError(;
        code=nothing,
        message=nothing,
        param=nothing,
    )

    - code::String : A machine-readable error code.
    - message::String : A human-readable error message.
    - param::String : The parameter that was invalid, usually &#x60;training_file&#x60; or &#x60;validation_file&#x60;. This field will be null if the failure was not parameter-specific.
"""
Base.@kwdef mutable struct FineTuningJobError <: OpenAPI.APIModel
    code::Union{Nothing, String} = nothing
    message::Union{Nothing, String} = nothing
    param::Union{Nothing, String} = nothing

    function FineTuningJobError(code, message, param, )
        OpenAPI.validate_property(FineTuningJobError, Symbol("code"), code)
        OpenAPI.validate_property(FineTuningJobError, Symbol("message"), message)
        OpenAPI.validate_property(FineTuningJobError, Symbol("param"), param)
        return new(code, message, param, )
    end
end # type FineTuningJobError

const _property_types_FineTuningJobError = Dict{Symbol,String}(Symbol("code")=>"String", Symbol("message")=>"String", Symbol("param")=>"String", )
OpenAPI.property_type(::Type{ FineTuningJobError }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_FineTuningJobError[name]))}

function check_required(o::FineTuningJobError)
    o.code === nothing && (return false)
    o.message === nothing && (return false)
    o.param === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ FineTuningJobError }, name::Symbol, val)
end