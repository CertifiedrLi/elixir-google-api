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

defmodule GoogleApi.Genomics.V1.Model.SearchReadsRequest do
  @moduledoc """
  The read search request.

  ## Attributes

  - end (String): The end position of the range on the reference, 0-based exclusive. If specified, &#x60;referenceName&#x60; must also be specified. Defaults to: `null`.
  - pageSize (Integer): The maximum number of results to return in a single page. If unspecified, defaults to 256. The maximum value is 2048. Defaults to: `null`.
  - pageToken (String): The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of &#x60;nextPageToken&#x60; from the previous response. Defaults to: `null`.
  - readGroupIds (List[String]): The IDs of the read groups within which to search for reads. All specified read groups must belong to the same read group sets. Must specify one of &#x60;readGroupSetIds&#x60; or &#x60;readGroupIds&#x60;. Defaults to: `null`.
  - readGroupSetIds (List[String]): The IDs of the read groups sets within which to search for reads. All specified read group sets must be aligned against a common set of reference sequences; this defines the genomic coordinates for the query. Must specify one of &#x60;readGroupSetIds&#x60; or &#x60;readGroupIds&#x60;. Defaults to: `null`.
  - referenceName (String): The reference sequence name, for example &#x60;chr1&#x60;, &#x60;1&#x60;, or &#x60;chrX&#x60;. If set to &#x60;*&#x60;, only unmapped reads are returned. If unspecified, all reads (mapped and unmapped) are returned. Defaults to: `null`.
  - start (String): The start position of the range on the reference, 0-based inclusive. If specified, &#x60;referenceName&#x60; must also be specified. Defaults to: `null`.
  """

  defstruct [
    :"end",
    :"pageSize",
    :"pageToken",
    :"readGroupIds",
    :"readGroupSetIds",
    :"referenceName",
    :"start"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.SearchReadsRequest do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.SearchReadsRequest do
  def encode(value, options) do
    GoogleApi.Genomics.V1.Deserializer.serialize_non_nil(value, options)
  end
end

