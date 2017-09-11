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

defmodule GoogleApi.Books.V1.Api.Notification do
  @moduledoc """
  API calls for all endpoints tagged `Notification`.
  """

  alias GoogleApi.Books.V1.Connection
  import GoogleApi.Books.V1.RequestBuilder


  @doc """
  Returns notification details for a given notification id.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - notification_id (String): String to identify the notification.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :locale (String): ISO-639-1 language and ISO-3166-1 country code. Ex: &#39;en_US&#39;. Used for generating notification title and body.
    - :source (String): String to identify the originator of this request.

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Notification{}} on success
  {:error, info} on failure
  """
  @spec books_notification_get(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Books.V1.Model.Notification.t} | {:error, Tesla.Env.t}
  def books_notification_get(connection, notification_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"locale" => :query,
      :"source" => :query
    }
    %{}
    |> method(:get)
    |> url("/notification/get")
    |> add_param(:query, :"notification_id", notification_id)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Books.V1.Model.Notification{})
  end
end