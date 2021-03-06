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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.Disapproval do
  @moduledoc """
  @OutputOnly The reason and details for a disapproval.

  ## Attributes

  - details (List[String]): Additional details about the reason for disapproval. Defaults to: `null`.
  - reason (String): The categorized reason for disapproval. Defaults to: `null`.
    - Enum - one of [LENGTH_OF_IMAGE_ANIMATION, BROKEN_URL, MEDIA_NOT_FUNCTIONAL, INVALID_FOURTH_PARTY_CALL, INCORRECT_REMARKETING_DECLARATION, LANDING_PAGE_ERROR, AD_SIZE_DOES_NOT_MATCH_AD_SLOT, NO_BORDER, FOURTH_PARTY_BROWSER_COOKIES, LSO_OBJECTS, BLANK_CREATIVE, DESTINATION_URLS_UNDECLARED, PROBLEM_WITH_CLICK_MACRO, INCORRECT_AD_TECHNOLOGY_DECLARATION, INCORRECT_DESTINATION_URL_DECLARATION, EXPANDABLE_INCORRECT_DIRECTION, EXPANDABLE_DIRECTION_NOT_SUPPORTED, EXPANDABLE_INVALID_VENDOR, EXPANDABLE_FUNCTIONALITY, VIDEO_INVALID_VENDOR, VIDEO_UNSUPPORTED_LENGTH, VIDEO_UNSUPPORTED_FORMAT, VIDEO_FUNCTIONALITY, LANDING_PAGE_DISABLED, MALWARE_SUSPECTED, ADULT_IMAGE_OR_VIDEO, INACCURATE_AD_TEXT, COUNTERFEIT_DESIGNER_GOODS, POP_UP, INVALID_RTB_PROTOCOL_USAGE, RAW_IP_ADDRESS_IN_SNIPPET, UNACCEPTABLE_CONTENT_SOFTWARE, UNAUTHORIZED_COOKIE_ON_GOOGLE_DOMAIN, UNDECLARED_FLASH_OBJECTS, INVALID_SSL_DECLARATION, DIRECT_DOWNLOAD_IN_AD, MAXIMUM_DOWNLOAD_SIZE_EXCEEDED, DESTINATION_URL_SITE_NOT_CRAWLABLE, BAD_URL_LEGAL_DISAPPROVAL, PHARMA_GAMBLING_ALCOHOL_NOT_ALLOWED, DYNAMIC_DNS_AT_DESTINATION_URL, POOR_IMAGE_OR_VIDEO_QUALITY, UNACCEPTABLE_IMAGE_CONTENT, INCORRECT_IMAGE_LAYOUT, IRRELEVANT_IMAGE_OR_VIDEO, DESTINATION_SITE_DOES_NOT_ALLOW_GOING_BACK, MISLEADING_CLAIMS_IN_AD, RESTRICTED_PRODUCTS, UNACCEPTABLE_CONTENT, AUTOMATED_AD_CLICKING, INVALID_URL_PROTOCOL, UNDECLARED_RESTRICTED_CONTENT, INVALID_REMARKETING_LIST_USAGE, DESTINATION_SITE_NOT_CRAWLABLE_ROBOTS_TXT, CLICK_TO_DOWNLOAD_NOT_AN_APP, INACCURATE_REVIEW_EXTENSION, SEXUALLY_EXPLICIT_CONTENT, GAINING_AN_UNFAIR_ADVANTAGE, GAMING_THE_GOOGLE_NETWORK, DANGEROUS_PRODUCTS_KNIVES, DANGEROUS_PRODUCTS_EXPLOSIVES, DANGEROUS_PRODUCTS_GUNS, DANGEROUS_PRODUCTS_DRUGS, DANGEROUS_PRODUCTS_TOBACCO, DANGEROUS_PRODUCTS_WEAPONS, UNCLEAR_OR_IRRELEVANT_AD, PROFESSIONAL_STANDARDS, DYSFUNCTIONAL_PROMOTION, INVALID_INTEREST_BASED_AD, MISUSE_OF_PERSONAL_INFORMATION, OMISSION_OF_RELEVANT_INFORMATION, UNAVAILABLE_PROMOTIONS, MISLEADING_PROMOTIONS, INAPPROPRIATE_CONTENT, SENSITIVE_EVENTS, SHOCKING_CONTENT, ENABLING_DISHONEST_BEHAVIOR, TECHNICAL_REQUIREMENTS, RESTRICTED_POLITICAL_CONTENT, UNSUPPORTED_CONTENT, INVALID_BIDDING_METHOD, VIDEO_TOO_LONG, VIOLATES_JAPANESE_PHARMACY_LAW, UNACCREDITED_PET_PHARMACY, ABORTION, CONTRACEPTIVES, NEED_CERTIFICATES_TO_ADVERTISE_IN_CHINA, KCDSP_REGISTRATION, NOT_FAMILY_SAFE, CLINICAL_TRIAL_RECRUITMENT, MAXIMUM_NUMBER_OF_HTTP_CALLS_EXCEEDED, MAXIMUM_NUMBER_OF_COOKIES_EXCEEDED, PERSONAL_LOANS, UNSUPPORTED_FLASH_CONTENT]
  """

  defstruct [
    :"details",
    :"reason"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Disapproval do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Disapproval do
  def encode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Deserializer.serialize_non_nil(value, options)
  end
end

