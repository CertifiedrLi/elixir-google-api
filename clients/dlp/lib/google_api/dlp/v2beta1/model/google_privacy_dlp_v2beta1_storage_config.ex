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

defmodule GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1StorageConfig do
  @moduledoc """
  Shared message indicating Cloud storage type.

  ## Attributes

  - bigQueryOptions (GooglePrivacyDlpV2beta1BigQueryOptions): BigQuery options specification. Defaults to: `null`.
  - cloudStorageOptions (GooglePrivacyDlpV2beta1CloudStorageOptions): Google Cloud Storage options specification. Defaults to: `null`.
  - datastoreOptions (GooglePrivacyDlpV2beta1DatastoreOptions): Google Cloud Datastore options specification. Defaults to: `null`.
  """

  defstruct [
    :"bigQueryOptions",
    :"cloudStorageOptions",
    :"datastoreOptions"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1StorageConfig do
  import GoogleApi.DLP.V2beta1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"bigQueryOptions", :struct, GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1BigQueryOptions, options)
    |> deserialize(:"cloudStorageOptions", :struct, GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1CloudStorageOptions, options)
    |> deserialize(:"datastoreOptions", :struct, GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1DatastoreOptions, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2beta1.Model.GooglePrivacyDlpV2beta1StorageConfig do
  def encode(value, options) do
    GoogleApi.DLP.V2beta1.Deserializer.serialize_non_nil(value, options)
  end
end

