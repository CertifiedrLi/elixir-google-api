# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Genomics.V1.Api.Annotationsets do
  @moduledoc """
  API calls for all endpoints tagged `Annotationsets`.
  """

  alias GoogleApi.Genomics.V1.Connection
  import GoogleApi.Genomics.V1.RequestBuilder


  @doc """
  Creates a new annotation set. Caller must have WRITE permission for the associated dataset.  The following fields are required:    * datasetId   * referenceSetId  All other fields may be optionally specified, unless documented as being server-generated (for example, the &#x60;id&#x60; field).

  ## Parameters

  - connection (GoogleApi.Genomics.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :access_token (String): OAuth access token.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :body (AnnotationSet): 

  ## Returns

  {:ok, %GoogleApi.Genomics.V1.Model.AnnotationSet{}} on success
  {:error, info} on failure
  """
  @spec genomics_annotationsets_create(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Genomics.V1.Model.AnnotationSet.t} | {:error, Tesla.Env.t}
  def genomics_annotationsets_create(connection, opts \\ []) do
    optional_params = %{
      :"fields" => :query,
      :"uploadType" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"access_token" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1/annotationsets")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Genomics.V1.Model.AnnotationSet{})
  end

  @doc """
  Deletes an annotation set. Caller must have WRITE permission for the associated annotation set.

  ## Parameters

  - connection (GoogleApi.Genomics.V1.Connection): Connection to server
  - annotation_set_id (String): The ID of the annotation set to be deleted.
  - opts (KeywordList): [optional] Optional parameters
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :access_token (String): OAuth access token.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.

  ## Returns

  {:ok, %GoogleApi.Genomics.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec genomics_annotationsets_delete(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Genomics.V1.Model.Empty.t} | {:error, Tesla.Env.t}
  def genomics_annotationsets_delete(connection, annotation_set_id, opts \\ []) do
    optional_params = %{
      :"fields" => :query,
      :"uploadType" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"access_token" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query
    }
    %{}
    |> method(:delete)
    |> url("/v1/annotationsets/#{annotation_set_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Genomics.V1.Model.Empty{})
  end

  @doc """
  Gets an annotation set. Caller must have READ permission for the associated dataset.

  ## Parameters

  - connection (GoogleApi.Genomics.V1.Connection): Connection to server
  - annotation_set_id (String): The ID of the annotation set to be retrieved.
  - opts (KeywordList): [optional] Optional parameters
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :access_token (String): OAuth access token.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.

  ## Returns

  {:ok, %GoogleApi.Genomics.V1.Model.AnnotationSet{}} on success
  {:error, info} on failure
  """
  @spec genomics_annotationsets_get(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Genomics.V1.Model.AnnotationSet.t} | {:error, Tesla.Env.t}
  def genomics_annotationsets_get(connection, annotation_set_id, opts \\ []) do
    optional_params = %{
      :"fields" => :query,
      :"uploadType" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"access_token" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query
    }
    %{}
    |> method(:get)
    |> url("/v1/annotationsets/#{annotation_set_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Genomics.V1.Model.AnnotationSet{})
  end

  @doc """
  Searches for annotation sets that match the given criteria. Annotation sets are returned in an unspecified order. This order is consistent, such that two queries for the same content (regardless of page size) yield annotation sets in the same order across their respective streams of paginated responses. Caller must have READ permission for the queried datasets.

  ## Parameters

  - connection (GoogleApi.Genomics.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :access_token (String): OAuth access token.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :body (SearchAnnotationSetsRequest): 

  ## Returns

  {:ok, %GoogleApi.Genomics.V1.Model.SearchAnnotationSetsResponse{}} on success
  {:error, info} on failure
  """
  @spec genomics_annotationsets_search(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Genomics.V1.Model.SearchAnnotationSetsResponse.t} | {:error, Tesla.Env.t}
  def genomics_annotationsets_search(connection, opts \\ []) do
    optional_params = %{
      :"fields" => :query,
      :"uploadType" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"access_token" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/v1/annotationsets/search")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Genomics.V1.Model.SearchAnnotationSetsResponse{})
  end

  @doc """
  Updates an annotation set. The update must respect all mutability restrictions and other invariants described on the annotation set resource. Caller must have WRITE permission for the associated dataset.

  ## Parameters

  - connection (GoogleApi.Genomics.V1.Connection): Connection to server
  - annotation_set_id (String): The ID of the annotation set to be updated.
  - opts (KeywordList): [optional] Optional parameters
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :upload_type (String): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :__/xgafv (String): V1 error format.
    - :callback (String): JSONP
    - :alt (String): Data format for response.
    - :access_token (String): OAuth access token.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :pp (Boolean): Pretty-print response.
    - :bearer_token (String): OAuth bearer token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :upload_protocol (String): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :update_mask (String): An optional mask specifying which fields to update. Mutable fields are name, source_uri, and info. If unspecified, all mutable fields will be updated.
    - :body (AnnotationSet): 

  ## Returns

  {:ok, %GoogleApi.Genomics.V1.Model.AnnotationSet{}} on success
  {:error, info} on failure
  """
  @spec genomics_annotationsets_update(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Genomics.V1.Model.AnnotationSet.t} | {:error, Tesla.Env.t}
  def genomics_annotationsets_update(connection, annotation_set_id, opts \\ []) do
    optional_params = %{
      :"fields" => :query,
      :"uploadType" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"access_token" => :query,
      :"key" => :query,
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"updateMask" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/v1/annotationsets/#{annotation_set_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Genomics.V1.Model.AnnotationSet{})
  end
end