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

defmodule GoogleApi.Slides.V1.Model.ReplaceAllShapesWithSheetsChartRequest do
  @moduledoc """
  Replaces all shapes that match the given criteria with the provided Google Sheets chart. The chart will be scaled and centered to fit within the bounds of the original shape.  NOTE: Replacing shapes with a chart requires at least one of the spreadsheets.readonly, spreadsheets, drive.readonly, or drive OAuth scopes.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"chartId",
    :"containsText",
    :"linkingMode",
    :"pageObjectIds",
    :"spreadsheetId"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.ReplaceAllShapesWithSheetsChartRequest do
  import GoogleApi.Slides.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"containsText", :struct, GoogleApi.Slides.V1.Model.SubstringMatchCriteria, options)
  end
end

