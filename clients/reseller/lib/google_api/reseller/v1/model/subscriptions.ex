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

defmodule GoogleApi.Reseller.V1.Model.Subscriptions do
  @moduledoc """
  JSON template for a subscription list.

  ## Attributes

  - kind (String): Identifies the resource as a collection of subscriptions. Value: reseller#subscriptions Defaults to: `null`.
  - nextPageToken (String): The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. Defaults to: `null`.
  - subscriptions (List[Subscription]): The subscriptions in this page of results. Defaults to: `null`.
  """

  defstruct [
    :"kind",
    :"nextPageToken",
    :"subscriptions"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Reseller.V1.Model.Subscriptions do
  import GoogleApi.Reseller.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"subscriptions", :list, GoogleApi.Reseller.V1.Model.Subscription, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Reseller.V1.Model.Subscriptions do
  def encode(value, options) do
    GoogleApi.Reseller.V1.Deserializer.serialize_non_nil(value, options)
  end
end

