part of dynamiccreatives_v1_api_client;

/** Template for advertiserSummary object. */
class AdvertiserSummary {

  /** External AdvertiserID. */
  String id;

  /** This kind represents an advertiserSummary object in gpa. */
  String kind;

  /** Advertiser name. */
  String name;

  /** Create new AdvertiserSummary from JSON data */
  AdvertiserSummary.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for AdvertiserSummary */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of AdvertiserSummary */
  String toString() => JSON.stringify(this.toJson());

}

/** Response data for advertisersList */
class AdvertisersListResponse {

  /** List of advertisers. */
  List<AdvertiserSummary> items;

  /** This kind represents a advertisersList response object in gpa. */
  String kind;

  /** Pagination information for token pagination. */
  String nextPageToken;

  /** General pagination information. */
  PageInfo pageInfo;

  /** Create new AdvertisersListResponse from JSON data */
  AdvertisersListResponse.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new AdvertiserSummary.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(json["pageInfo"]);
    }
  }

  /** Create JSON Object for AdvertisersListResponse */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (pageInfo != null) {
      output["pageInfo"] = pageInfo.toJson();
    }

    return output;
  }

  /** Return String representation of AdvertisersListResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** AttributeError encountered during transformation. */
class AttributeError {

  /** Name of attribute. */
  String attributeName;

  /** Actual error. */
  String error;

  /** Resource type. */
  String kind;

  /** Indicates if the severity is error or warning. */
  String severity;

  /** Create new AttributeError from JSON data */
  AttributeError.fromJson(Map json) {
    if (json.containsKey("attributeName")) {
      attributeName = json["attributeName"];
    }
    if (json.containsKey("error")) {
      error = json["error"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("severity")) {
      severity = json["severity"];
    }
  }

  /** Create JSON Object for AttributeError */
  Map toJson() {
    var output = new Map();

    if (attributeName != null) {
      output["attributeName"] = attributeName;
    }
    if (error != null) {
      output["error"] = error;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (severity != null) {
      output["severity"] = severity;
    }

    return output;
  }

  /** Return String representation of AttributeError */
  String toString() => JSON.stringify(this.toJson());

}

/** Specification of the CNS input source. */
class CnsInputSource {

  /** CNS path to the feed file. */
  String feedPath;

  /** Resource type. */
  String kind;

  /** Create new CnsInputSource from JSON data */
  CnsInputSource.fromJson(Map json) {
    if (json.containsKey("feedPath")) {
      feedPath = json["feedPath"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for CnsInputSource */
  Map toJson() {
    var output = new Map();

    if (feedPath != null) {
      output["feedPath"] = feedPath;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of CnsInputSource */
  String toString() => JSON.stringify(this.toJson());

}

/** Check for the status of the publication request. */
class ContentCheckPublicationStatusRequest {

  /** Advertiser id for whom the check is being requested. */
  String advertiserId;

  /** Task Id of the transformation task. */
  String taskId;

  /** Id for the transformed content. */
  TransformedContent transformedContentId;

  /** Create new ContentCheckPublicationStatusRequest from JSON data */
  ContentCheckPublicationStatusRequest.fromJson(Map json) {
    if (json.containsKey("advertiserId")) {
      advertiserId = json["advertiserId"];
    }
    if (json.containsKey("taskId")) {
      taskId = json["taskId"];
    }
    if (json.containsKey("transformedContentId")) {
      transformedContentId = new TransformedContent.fromJson(json["transformedContentId"]);
    }
  }

  /** Create JSON Object for ContentCheckPublicationStatusRequest */
  Map toJson() {
    var output = new Map();

    if (advertiserId != null) {
      output["advertiserId"] = advertiserId;
    }
    if (taskId != null) {
      output["taskId"] = taskId;
    }
    if (transformedContentId != null) {
      output["transformedContentId"] = transformedContentId.toJson();
    }

    return output;
  }

  /** Return String representation of ContentCheckPublicationStatusRequest */
  String toString() => JSON.stringify(this.toJson());

}

/** Response of the publication status request. */
class ContentCheckPublicationStatusResponse {

  /** Resource type. */
  String kind;

  /** Status of the publication request. */
  PublicationStatus status;

  /** Create new ContentCheckPublicationStatusResponse from JSON data */
  ContentCheckPublicationStatusResponse.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("status")) {
      status = new PublicationStatus.fromJson(json["status"]);
    }
  }

  /** Create JSON Object for ContentCheckPublicationStatusResponse */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (status != null) {
      output["status"] = status.toJson();
    }

    return output;
  }

  /** Return String representation of ContentCheckPublicationStatusResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Request for checking the transformation status. */
class ContentCheckTransformationStatusRequest {

  /** Advertiser id for whom the request is being made. */
  String advertiserId;

  /** Task Id returned from the transformation request. */
  String taskId;

  /** Id associated with the transformed content. */
  TransformedContent transformedContentId;

  /** Create new ContentCheckTransformationStatusRequest from JSON data */
  ContentCheckTransformationStatusRequest.fromJson(Map json) {
    if (json.containsKey("advertiserId")) {
      advertiserId = json["advertiserId"];
    }
    if (json.containsKey("taskId")) {
      taskId = json["taskId"];
    }
    if (json.containsKey("transformedContentId")) {
      transformedContentId = new TransformedContent.fromJson(json["transformedContentId"]);
    }
  }

  /** Create JSON Object for ContentCheckTransformationStatusRequest */
  Map toJson() {
    var output = new Map();

    if (advertiserId != null) {
      output["advertiserId"] = advertiserId;
    }
    if (taskId != null) {
      output["taskId"] = taskId;
    }
    if (transformedContentId != null) {
      output["transformedContentId"] = transformedContentId.toJson();
    }

    return output;
  }

  /** Return String representation of ContentCheckTransformationStatusRequest */
  String toString() => JSON.stringify(this.toJson());

}

/** Response of the check for transformation status. */
class ContentCheckTransformationStatusResponse {

  /** Resource type. */
  String kind;

  /** Status of the transformation processing. */
  TransformationStatus status;

  /** Create new ContentCheckTransformationStatusResponse from JSON data */
  ContentCheckTransformationStatusResponse.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("status")) {
      status = new TransformationStatus.fromJson(json["status"]);
    }
  }

  /** Create JSON Object for ContentCheckTransformationStatusResponse */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (status != null) {
      output["status"] = status.toJson();
    }

    return output;
  }

  /** Return String representation of ContentCheckTransformationStatusResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Request to get transformation errors. */
class ContentGetTransformationErrorsRequest {

  /** Advertiser id for whom the transformation request was made. */
  String advertiserId;

  /** Index of the starting record. */
  String startingRecordId;

  /** Task Id of the transformation request. */
  String taskId;

  /** Id of the transformed content. */
  TransformedContent transformedContentId;

  /** Create new ContentGetTransformationErrorsRequest from JSON data */
  ContentGetTransformationErrorsRequest.fromJson(Map json) {
    if (json.containsKey("advertiserId")) {
      advertiserId = json["advertiserId"];
    }
    if (json.containsKey("startingRecordId")) {
      startingRecordId = json["startingRecordId"];
    }
    if (json.containsKey("taskId")) {
      taskId = json["taskId"];
    }
    if (json.containsKey("transformedContentId")) {
      transformedContentId = new TransformedContent.fromJson(json["transformedContentId"]);
    }
  }

  /** Create JSON Object for ContentGetTransformationErrorsRequest */
  Map toJson() {
    var output = new Map();

    if (advertiserId != null) {
      output["advertiserId"] = advertiserId;
    }
    if (startingRecordId != null) {
      output["startingRecordId"] = startingRecordId;
    }
    if (taskId != null) {
      output["taskId"] = taskId;
    }
    if (transformedContentId != null) {
      output["transformedContentId"] = transformedContentId.toJson();
    }

    return output;
  }

  /** Return String representation of ContentGetTransformationErrorsRequest */
  String toString() => JSON.stringify(this.toJson());

}

/** Response for the call to retrieve transformation errors. */
class ContentGetTransformationErrorsResponse {

  /** Transformation errors. */
  List<TransformationError> error;

  /** Resource type. */
  String kind;

  /** Last record id in the list of response errors. */
  String lastRecordId;

  /** Create new ContentGetTransformationErrorsResponse from JSON data */
  ContentGetTransformationErrorsResponse.fromJson(Map json) {
    if (json.containsKey("error")) {
      error = [];
      json["error"].forEach((item) {
        error.add(new TransformationError.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastRecordId")) {
      lastRecordId = json["lastRecordId"];
    }
  }

  /** Create JSON Object for ContentGetTransformationErrorsResponse */
  Map toJson() {
    var output = new Map();

    if (error != null) {
      output["error"] = new List();
      error.forEach((item) {
        output["error"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastRecordId != null) {
      output["lastRecordId"] = lastRecordId;
    }

    return output;
  }

  /** Return String representation of ContentGetTransformationErrorsResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Request to publish the transformed content. */
class ContentPublishRequest {

  /** Advertiser id for whom the request is being made. */
  String advertiserId;

  /** Task Id of the transformed content. */
  String taskId;

  /** Id of the transformed content. */
  TransformedContent transformedContentId;

  /** Create new ContentPublishRequest from JSON data */
  ContentPublishRequest.fromJson(Map json) {
    if (json.containsKey("advertiserId")) {
      advertiserId = json["advertiserId"];
    }
    if (json.containsKey("taskId")) {
      taskId = json["taskId"];
    }
    if (json.containsKey("transformedContentId")) {
      transformedContentId = new TransformedContent.fromJson(json["transformedContentId"]);
    }
  }

  /** Create JSON Object for ContentPublishRequest */
  Map toJson() {
    var output = new Map();

    if (advertiserId != null) {
      output["advertiserId"] = advertiserId;
    }
    if (taskId != null) {
      output["taskId"] = taskId;
    }
    if (transformedContentId != null) {
      output["transformedContentId"] = transformedContentId.toJson();
    }

    return output;
  }

  /** Return String representation of ContentPublishRequest */
  String toString() => JSON.stringify(this.toJson());

}

/** Response of the content publish request. */
class ContentPublishResponse {

  /** Resource type. */
  String kind;

  /** Status of the request to publish. */
  PublicationStatus status;

  /** Create new ContentPublishResponse from JSON data */
  ContentPublishResponse.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("status")) {
      status = new PublicationStatus.fromJson(json["status"]);
    }
  }

  /** Create JSON Object for ContentPublishResponse */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (status != null) {
      output["status"] = status.toJson();
    }

    return output;
  }

  /** Return String representation of ContentPublishResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Request to transform content from an input source. */
class ContentReTransformCnsRequest {

  /** Advertiser Id for whom the request is being made. */
  String advertiserId;

  /** Location of the CNS input. */
  CnsInputSource cnsInputSource;

  /** Id of the content source (associated with the element). */
  String contentSourceId;

  /** Create new ContentReTransformCnsRequest from JSON data */
  ContentReTransformCnsRequest.fromJson(Map json) {
    if (json.containsKey("advertiserId")) {
      advertiserId = json["advertiserId"];
    }
    if (json.containsKey("cnsInputSource")) {
      cnsInputSource = new CnsInputSource.fromJson(json["cnsInputSource"]);
    }
    if (json.containsKey("contentSourceId")) {
      contentSourceId = json["contentSourceId"];
    }
  }

  /** Create JSON Object for ContentReTransformCnsRequest */
  Map toJson() {
    var output = new Map();

    if (advertiserId != null) {
      output["advertiserId"] = advertiserId;
    }
    if (cnsInputSource != null) {
      output["cnsInputSource"] = cnsInputSource.toJson();
    }
    if (contentSourceId != null) {
      output["contentSourceId"] = contentSourceId;
    }

    return output;
  }

  /** Return String representation of ContentReTransformCnsRequest */
  String toString() => JSON.stringify(this.toJson());

}

/** Response for the retransform request. */
class ContentReTransformCnsResponse {

  /** Resource type. */
  String kind;

  /** Task Id created for the transformation request. */
  String taskId;

  /** Create new ContentReTransformCnsResponse from JSON data */
  ContentReTransformCnsResponse.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("taskId")) {
      taskId = json["taskId"];
    }
  }

  /** Create JSON Object for ContentReTransformCnsResponse */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (taskId != null) {
      output["taskId"] = taskId;
    }

    return output;
  }

  /** Return String representation of ContentReTransformCnsResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** The field value data. */
class FieldValue {

  /** This kind represents a fieldValue object in the gpa system. */
  String kind;

  /** Number value of a field. */
  String numberValue;

  /** Text value of a field. */
  String textValue;

  /** Create new FieldValue from JSON data */
  FieldValue.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("numberValue")) {
      numberValue = json["numberValue"];
    }
    if (json.containsKey("textValue")) {
      textValue = json["textValue"];
    }
  }

  /** Create JSON Object for FieldValue */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (numberValue != null) {
      output["numberValue"] = numberValue;
    }
    if (textValue != null) {
      output["textValue"] = textValue;
    }

    return output;
  }

  /** Return String representation of FieldValue */
  String toString() => JSON.stringify(this.toJson());

}

/** Error associated with the input source specification. */
class InputSourceSpecError {

  /** Error details. */
  String error;

  /** Resource type. */
  String kind;

  /** Create new InputSourceSpecError from JSON data */
  InputSourceSpecError.fromJson(Map json) {
    if (json.containsKey("error")) {
      error = json["error"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for InputSourceSpecError */
  Map toJson() {
    var output = new Map();

    if (error != null) {
      output["error"] = error;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of InputSourceSpecError */
  String toString() => JSON.stringify(this.toJson());

}

/** Data for pagination */
class PageInfo {

  /** This kind represents a pageInfo object in the gpa system. */
  String kind;

  /** number of results per page */
  int resultsPerPage;

  /** start index for pagination */
  int startIndex;

  /** total results from query */
  int totalResults;

  /** Create new PageInfo from JSON data */
  PageInfo.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("resultsPerPage")) {
      resultsPerPage = json["resultsPerPage"];
    }
    if (json.containsKey("startIndex")) {
      startIndex = json["startIndex"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
  }

  /** Create JSON Object for PageInfo */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (resultsPerPage != null) {
      output["resultsPerPage"] = resultsPerPage;
    }
    if (startIndex != null) {
      output["startIndex"] = startIndex;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }

    return output;
  }

  /** Return String representation of PageInfo */
  String toString() => JSON.stringify(this.toJson());

}

/** The profile field level data */
class ProfileField {

  /** This kind represents a profileField object in the gpa system. */
  String kind;

  /** Profile field name. */
  String name;

  /** Profile field type. */
  String type;

  /** Profile field value. */
  FieldValue value;

  /** Create new ProfileField from JSON data */
  ProfileField.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = new FieldValue.fromJson(json["value"]);
    }
  }

  /** Create JSON Object for ProfileField */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (value != null) {
      output["value"] = value.toJson();
    }

    return output;
  }

  /** Return String representation of ProfileField */
  String toString() => JSON.stringify(this.toJson());

}

/** Data for profile field type. */
class ProfileFieldType {

  /** This kind represents a profileFieldType object in gpa */
  String kind;

  /** Profile field name. */
  String name;

  /** Profile field type. */
  String type;

  /** Create new ProfileFieldType from JSON data */
  ProfileFieldType.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ProfileFieldType */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ProfileFieldType */
  String toString() => JSON.stringify(this.toJson());

}

/** Data for profile field value. */
class ProfileFieldValue {

  /** This kind represents a profileFieldValue object in gpa. */
  String kind;

  /** Profile field name. */
  String name;

  /** Profile field value. */
  FieldValue value;

  /** Create new ProfileFieldValue from JSON data */
  ProfileFieldValue.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("value")) {
      value = new FieldValue.fromJson(json["value"]);
    }
  }

  /** Create JSON Object for ProfileFieldValue */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (value != null) {
      output["value"] = value.toJson();
    }

    return output;
  }

  /** Return String representation of ProfileFieldValue */
  String toString() => JSON.stringify(this.toJson());

}

/** The profile level summary data */
class ProfileSummary {

  /** Advertiser id for profile */
  String advertiserId;

  /** The profile id */
  String id;

  /** This kind represents a profileSummary object in gpa. */
  String kind;

  /** Profile name */
  String name;

  /** Create new ProfileSummary from JSON data */
  ProfileSummary.fromJson(Map json) {
    if (json.containsKey("advertiserId")) {
      advertiserId = json["advertiserId"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for ProfileSummary */
  Map toJson() {
    var output = new Map();

    if (advertiserId != null) {
      output["advertiserId"] = advertiserId;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of ProfileSummary */
  String toString() => JSON.stringify(this.toJson());

}

/** Response data for profilefieldsGetTypes. */
class ProfilefieldsGetTypesResponse {

  /** This kind represents a profilefieldGetTypes reponse object in gpa. */
  String kind;

  /** The list of profile field types returned. */
  List<ProfileFieldType> profileField;

  /** Create new ProfilefieldsGetTypesResponse from JSON data */
  ProfilefieldsGetTypesResponse.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("profileField")) {
      profileField = [];
      json["profileField"].forEach((item) {
        profileField.add(new ProfileFieldType.fromJson(item));
      });
    }
  }

  /** Create JSON Object for ProfilefieldsGetTypesResponse */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (profileField != null) {
      output["profileField"] = new List();
      profileField.forEach((item) {
        output["profileField"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of ProfilefieldsGetTypesResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Response data for profilefieldsGetValues method. */
class ProfilefieldsGetValuesResponse {

  /** This kind represents a profilefieldsGetValues response object in gpa. */
  String kind;

  /** The list of profile field values returned. */
  List<ProfileFieldValue> profileField;

  /** Create new ProfilefieldsGetValuesResponse from JSON data */
  ProfilefieldsGetValuesResponse.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("profileField")) {
      profileField = [];
      json["profileField"].forEach((item) {
        profileField.add(new ProfileFieldValue.fromJson(item));
      });
    }
  }

  /** Create JSON Object for ProfilefieldsGetValuesResponse */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (profileField != null) {
      output["profileField"] = new List();
      profileField.forEach((item) {
        output["profileField"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of ProfilefieldsGetValuesResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Request data for profilefieldsReplaceValues. Response data for profilefieldsReplaceValues method. */
class ProfilefieldsReplaceValuesRequest {

  /** This kind represents a profilefieldReplaceValues request object in gpa This kind represents a profilefieldsReplaceValues response object in gpa */
  String kind;

  /** List of profile fields to be replaced. name and value elements are required in all profile_field elements for requests to be valid */
  List<ProfileField> profileFields;

  /** Indicates success of atomic replace for all profile_field elements */
  bool success;

  /** Create new ProfilefieldsReplaceValuesRequest from JSON data */
  ProfilefieldsReplaceValuesRequest.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("profileFields")) {
      profileFields = [];
      json["profileFields"].forEach((item) {
        profileFields.add(new ProfileField.fromJson(item));
      });
    }
    if (json.containsKey("success")) {
      success = json["success"];
    }
  }

  /** Create JSON Object for ProfilefieldsReplaceValuesRequest */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (profileFields != null) {
      output["profileFields"] = new List();
      profileFields.forEach((item) {
        output["profileFields"].add(item.toJson());
      });
    }
    if (success != null) {
      output["success"] = success;
    }

    return output;
  }

  /** Return String representation of ProfilefieldsReplaceValuesRequest */
  String toString() => JSON.stringify(this.toJson());

}

/** Request data for profilefieldsUpdateValues. Response data for profilefieldsUpdateValues method. */
class ProfilefieldsUpdateValuesRequest {

  /** This kind represents a profilefieldUpdateValues request object in gpa This kind represents a profilefieldsUpdateValues response object in gpa */
  String kind;

  /** List of profile fields to be updated. name and value elements are required in all profile_field elements for requests to be valid */
  List<ProfileField> profileField;

  /** Indicates success of atomic update for the given profile_field elements */
  bool success;

  /** Create new ProfilefieldsUpdateValuesRequest from JSON data */
  ProfilefieldsUpdateValuesRequest.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("profileField")) {
      profileField = [];
      json["profileField"].forEach((item) {
        profileField.add(new ProfileField.fromJson(item));
      });
    }
    if (json.containsKey("success")) {
      success = json["success"];
    }
  }

  /** Create JSON Object for ProfilefieldsUpdateValuesRequest */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (profileField != null) {
      output["profileField"] = new List();
      profileField.forEach((item) {
        output["profileField"].add(item.toJson());
      });
    }
    if (success != null) {
      output["success"] = success;
    }

    return output;
  }

  /** Return String representation of ProfilefieldsUpdateValuesRequest */
  String toString() => JSON.stringify(this.toJson());

}

/** Data for profilesSearch method. */
class ProfilesListResponse {

  /** List of profiles. */
  List<ProfileSummary> items;

  /** This kind represents a profileList response object in gpa. */
  String kind;

  /** Pagination information for token pagination. */
  String nextPageToken;

  /** General pagination information. */
  PageInfo pageInfo;

  /** Create new ProfilesListResponse from JSON data */
  ProfilesListResponse.fromJson(Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new ProfileSummary.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(json["pageInfo"]);
    }
  }

  /** Create JSON Object for ProfilesListResponse */
  Map toJson() {
    var output = new Map();

    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (pageInfo != null) {
      output["pageInfo"] = pageInfo.toJson();
    }

    return output;
  }

  /** Return String representation of ProfilesListResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Response data for profilesPublish method. */
class ProfilesPublishResponse {

  /** This kind represents a profilesPublish response object in gpa */
  String kind;

  /** Indicates success of publish action on the specified draft profile revision */
  bool success;

  /** Create new ProfilesPublishResponse from JSON data */
  ProfilesPublishResponse.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("success")) {
      success = json["success"];
    }
  }

  /** Create JSON Object for ProfilesPublishResponse */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (success != null) {
      output["success"] = success;
    }

    return output;
  }

  /** Return String representation of ProfilesPublishResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Error associated with request to publish. */
class PublicationError {

  /** Error details. */
  String error;

  /** Resource type. */
  String kind;

  /** Create new PublicationError from JSON data */
  PublicationError.fromJson(Map json) {
    if (json.containsKey("error")) {
      error = json["error"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for PublicationError */
  Map toJson() {
    var output = new Map();

    if (error != null) {
      output["error"] = error;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of PublicationError */
  String toString() => JSON.stringify(this.toJson());

}

/** Publication status informaton. */
class PublicationStatus {

  /** Error associated with publishing. */
  PublicationError error;

  /** Resource type. */
  String kind;

  /** Status of the publication request. */
  String status;

  /** Create new PublicationStatus from JSON data */
  PublicationStatus.fromJson(Map json) {
    if (json.containsKey("error")) {
      error = new PublicationError.fromJson(json["error"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for PublicationStatus */
  Map toJson() {
    var output = new Map();

    if (error != null) {
      output["error"] = error.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of PublicationStatus */
  String toString() => JSON.stringify(this.toJson());

}

/** Error associated with the transformation. */
class TransformationError {

  /** List of errors. */
  List<AttributeError> error;

  /** Resource type. */
  String kind;

  /** Row indicator for the tranformation error. */
  String rowKey;

  /** Create new TransformationError from JSON data */
  TransformationError.fromJson(Map json) {
    if (json.containsKey("error")) {
      error = [];
      json["error"].forEach((item) {
        error.add(new AttributeError.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("rowKey")) {
      rowKey = json["rowKey"];
    }
  }

  /** Create JSON Object for TransformationError */
  Map toJson() {
    var output = new Map();

    if (error != null) {
      output["error"] = new List();
      error.forEach((item) {
        output["error"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (rowKey != null) {
      output["rowKey"] = rowKey;
    }

    return output;
  }

  /** Return String representation of TransformationError */
  String toString() => JSON.stringify(this.toJson());

}

/** Status of the transformation. */
class TransformationStatus {

  /** Error in input source specification. */
  InputSourceSpecError inputSourceSpecError;

  /** Resource type. */
  String kind;

  /** Transformation status */
  String status;

  /** Create new TransformationStatus from JSON data */
  TransformationStatus.fromJson(Map json) {
    if (json.containsKey("inputSourceSpecError")) {
      inputSourceSpecError = new InputSourceSpecError.fromJson(json["inputSourceSpecError"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for TransformationStatus */
  Map toJson() {
    var output = new Map();

    if (inputSourceSpecError != null) {
      output["inputSourceSpecError"] = inputSourceSpecError.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of TransformationStatus */
  String toString() => JSON.stringify(this.toJson());

}

/** Information about the TransformedContent. */
class TransformedContent {

  /** Resource type. */
  String kind;

  /** Id of the transfomed content (associated with the element). */
  String transformedContentId;

  /** Create new TransformedContent from JSON data */
  TransformedContent.fromJson(Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("transformedContentId")) {
      transformedContentId = json["transformedContentId"];
    }
  }

  /** Create JSON Object for TransformedContent */
  Map toJson() {
    var output = new Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (transformedContentId != null) {
      output["transformedContentId"] = transformedContentId;
    }

    return output;
  }

  /** Return String representation of TransformedContent */
  String toString() => JSON.stringify(this.toJson());

}

