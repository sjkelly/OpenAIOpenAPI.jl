# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct FineTuningApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `FineTuningApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ FineTuningApi }) = "https://api.openai.com/v1"

const _returntypes_cancel_fine_tuning_job_FineTuningApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => FineTuningJob,
)

function _oacinternal_cancel_fine_tuning_job(_api::FineTuningApi, fine_tuning_job_id::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_cancel_fine_tuning_job_FineTuningApi, "/fine_tuning/jobs/{fine_tuning_job_id}/cancel", ["ApiKeyAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "fine_tuning_job_id", fine_tuning_job_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Immediately cancel a fine-tune job. 

Params:
- fine_tuning_job_id::String (required)

Return: FineTuningJob, OpenAPI.Clients.ApiResponse
"""
function cancel_fine_tuning_job(_api::FineTuningApi, fine_tuning_job_id::String; _mediaType=nothing)
    _ctx = _oacinternal_cancel_fine_tuning_job(_api, fine_tuning_job_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function cancel_fine_tuning_job(_api::FineTuningApi, response_stream::Channel, fine_tuning_job_id::String; _mediaType=nothing)
    _ctx = _oacinternal_cancel_fine_tuning_job(_api, fine_tuning_job_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_create_fine_tuning_job_FineTuningApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => FineTuningJob,
)

function _oacinternal_create_fine_tuning_job(_api::FineTuningApi, create_fine_tuning_job_request::CreateFineTuningJobRequest; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_create_fine_tuning_job_FineTuningApi, "/fine_tuning/jobs", ["ApiKeyAuth", ], create_fine_tuning_job_request)
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", ] : [_mediaType])
    return _ctx
end

@doc raw"""Creates a job that fine-tunes a specified model from a given dataset.  Response includes details of the enqueued job including job status and the name of the fine-tuned models once complete.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 

Params:
- create_fine_tuning_job_request::CreateFineTuningJobRequest (required)

Return: FineTuningJob, OpenAPI.Clients.ApiResponse
"""
function create_fine_tuning_job(_api::FineTuningApi, create_fine_tuning_job_request::CreateFineTuningJobRequest; _mediaType=nothing)
    _ctx = _oacinternal_create_fine_tuning_job(_api, create_fine_tuning_job_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function create_fine_tuning_job(_api::FineTuningApi, response_stream::Channel, create_fine_tuning_job_request::CreateFineTuningJobRequest; _mediaType=nothing)
    _ctx = _oacinternal_create_fine_tuning_job(_api, create_fine_tuning_job_request; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_list_fine_tuning_events_FineTuningApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => ListFineTuningJobEventsResponse,
)

function _oacinternal_list_fine_tuning_events(_api::FineTuningApi, fine_tuning_job_id::String; after=nothing, limit=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_list_fine_tuning_events_FineTuningApi, "/fine_tuning/jobs/{fine_tuning_job_id}/events", ["ApiKeyAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "fine_tuning_job_id", fine_tuning_job_id)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "after", after)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "limit", limit)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get status updates for a fine-tuning job. 

Params:
- fine_tuning_job_id::String (required)
- after::String
- limit::Int64

Return: ListFineTuningJobEventsResponse, OpenAPI.Clients.ApiResponse
"""
function list_fine_tuning_events(_api::FineTuningApi, fine_tuning_job_id::String; after=nothing, limit=nothing, _mediaType=nothing)
    _ctx = _oacinternal_list_fine_tuning_events(_api, fine_tuning_job_id; after=after, limit=limit, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function list_fine_tuning_events(_api::FineTuningApi, response_stream::Channel, fine_tuning_job_id::String; after=nothing, limit=nothing, _mediaType=nothing)
    _ctx = _oacinternal_list_fine_tuning_events(_api, fine_tuning_job_id; after=after, limit=limit, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_list_paginated_fine_tuning_jobs_FineTuningApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => ListPaginatedFineTuningJobsResponse,
)

function _oacinternal_list_paginated_fine_tuning_jobs(_api::FineTuningApi; after=nothing, limit=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_list_paginated_fine_tuning_jobs_FineTuningApi, "/fine_tuning/jobs", ["ApiKeyAuth", ])
    OpenAPI.Clients.set_param(_ctx.query, "after", after)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "limit", limit)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""List your organization's fine-tuning jobs 

Params:
- after::String
- limit::Int64

Return: ListPaginatedFineTuningJobsResponse, OpenAPI.Clients.ApiResponse
"""
function list_paginated_fine_tuning_jobs(_api::FineTuningApi; after=nothing, limit=nothing, _mediaType=nothing)
    _ctx = _oacinternal_list_paginated_fine_tuning_jobs(_api; after=after, limit=limit, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function list_paginated_fine_tuning_jobs(_api::FineTuningApi, response_stream::Channel; after=nothing, limit=nothing, _mediaType=nothing)
    _ctx = _oacinternal_list_paginated_fine_tuning_jobs(_api; after=after, limit=limit, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_retrieve_fine_tuning_job_FineTuningApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => FineTuningJob,
)

function _oacinternal_retrieve_fine_tuning_job(_api::FineTuningApi, fine_tuning_job_id::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_retrieve_fine_tuning_job_FineTuningApi, "/fine_tuning/jobs/{fine_tuning_job_id}", ["ApiKeyAuth", ])
    OpenAPI.Clients.set_param(_ctx.path, "fine_tuning_job_id", fine_tuning_job_id)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Get info about a fine-tuning job.  [Learn more about fine-tuning](/docs/guides/fine-tuning) 

Params:
- fine_tuning_job_id::String (required)

Return: FineTuningJob, OpenAPI.Clients.ApiResponse
"""
function retrieve_fine_tuning_job(_api::FineTuningApi, fine_tuning_job_id::String; _mediaType=nothing)
    _ctx = _oacinternal_retrieve_fine_tuning_job(_api, fine_tuning_job_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function retrieve_fine_tuning_job(_api::FineTuningApi, response_stream::Channel, fine_tuning_job_id::String; _mediaType=nothing)
    _ctx = _oacinternal_retrieve_fine_tuning_job(_api, fine_tuning_job_id; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export cancel_fine_tuning_job
export create_fine_tuning_job
export list_fine_tuning_events
export list_paginated_fine_tuning_jobs
export retrieve_fine_tuning_job
