part of dynamiccreatives_v1_api_client;

class AdvertisersResource extends Resource {

  AdvertisersResource(Client client) : super(client) {
  }

  /**
   * Retrieves a list of advertisers for a given Gaia User
   *
   * [maxResults] - The maximum number of results to return.
   *   Default: 20
   *
   * [pageToken] - The token for the result page to return.
   *
   * [optParams] - Additional query parameters
   */
  Future<AdvertisersListResponse> list({int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "advertisers";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdvertisersListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ContentResource extends Resource {

  ContentResource(Client client) : super(client) {
  }

  /**
   * Check the status of the publication request
   *
   * [request] - ContentCheckPublicationStatusRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  Future<ContentCheckPublicationStatusResponse> checkpublicationstatus(ContentCheckPublicationStatusRequest request, {Map optParams}) {
    var completer = new Completer();
    var url = "checkpublicationstatus";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ContentCheckPublicationStatusResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Check the status of the transformation
   *
   * [request] - ContentCheckTransformationStatusRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  Future<ContentCheckTransformationStatusResponse> checktransformationstatus(ContentCheckTransformationStatusRequest request, {Map optParams}) {
    var completer = new Completer();
    var url = "checktransformationstatus";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ContentCheckTransformationStatusResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Get transformation errors
   *
   * [request] - ContentGetTransformationErrorsRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  Future<ContentGetTransformationErrorsResponse> gettransformationerrors(ContentGetTransformationErrorsRequest request, {Map optParams}) {
    var completer = new Completer();
    var url = "gettransformationerrors";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ContentGetTransformationErrorsResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Publish the content associated with the task id
   *
   * [request] - ContentPublishRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  Future<ContentPublishResponse> publish(ContentPublishRequest request, {Map optParams}) {
    var completer = new Completer();
    var url = "publish";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ContentPublishResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Retransform the CNS content
   *
   * [request] - ContentReTransformCnsRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  Future<ContentReTransformCnsResponse> retransformcns(ContentReTransformCnsRequest request, {Map optParams}) {
    var completer = new Completer();
    var url = "retransformcns";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ContentReTransformCnsResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ProfilefieldsResource extends Resource {

  ProfilefieldsTypesResource _types;
  ProfilefieldsTypesResource get types => _types;
  ProfilefieldsValuesResource _values;
  ProfilefieldsValuesResource get values => _values;

  ProfilefieldsResource(Client client) : super(client) {
  _types = new ProfilefieldsTypesResource(client);
  _values = new ProfilefieldsValuesResource(client);
  }
}

class ProfilefieldsTypesResource extends Resource {

  ProfilefieldsTypesResource(Client client) : super(client) {
  }

  /**
   * Returns a list of field names and field types for a specific profile.
   *
   * [advertiserId] - The advertiser id.
   *
   * [profileId] - The profile id.
   *
   * [fromActiveRevision] - Boolean for whether draft or active revision is specified.
   *
   * [optParams] - Additional query parameters
   */
  Future<ProfilefieldsGetTypesResponse> list(String advertiserId, String profileId, bool fromActiveRevision, {Map optParams}) {
    var completer = new Completer();
    var url = "advertisers/{advertiserId}/profiles/{profileId}/profilefields/types";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (advertiserId == null) paramErrors.add("advertiserId is required");
    if (advertiserId != null) urlParams["advertiserId"] = advertiserId;
    if (fromActiveRevision == null) paramErrors.add("fromActiveRevision is required");
    if (fromActiveRevision != null) queryParams["fromActiveRevision"] = fromActiveRevision;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ProfilefieldsGetTypesResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ProfilefieldsValuesResource extends Resource {

  ProfilefieldsValuesResource(Client client) : super(client) {
  }

  /**
   * Returns a list of field names and field values for a specific profile.
   *
   * [advertiserId] - The advertiser id.
   *
   * [profileId] - The profile id.
   *
   * [fromActiveRevision] - Boolean for whether draft or active revision is specified.
   *
   * [optParams] - Additional query parameters
   */
  Future<ProfilefieldsGetValuesResponse> list(String advertiserId, String profileId, bool fromActiveRevision, {Map optParams}) {
    var completer = new Completer();
    var url = "advertisers/{advertiserId}/profiles/{profileId}/profilefields/values";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (advertiserId == null) paramErrors.add("advertiserId is required");
    if (advertiserId != null) urlParams["advertiserId"] = advertiserId;
    if (fromActiveRevision == null) paramErrors.add("fromActiveRevision is required");
    if (fromActiveRevision != null) queryParams["fromActiveRevision"] = fromActiveRevision;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ProfilefieldsGetValuesResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Replaces all the profile field values of a given profile with new given values.
   *
   * [request] - ProfilefieldsReplaceValuesRequest to send in this request
   *
   * [advertiserId] - The advertiser id.
   *
   * [profileId] - The profile id.
   *
   * [optParams] - Additional query parameters
   */
  Future<ProfilefieldsReplaceValuesRequest> replace(ProfilefieldsReplaceValuesRequest request, String advertiserId, String profileId, {Map optParams}) {
    var completer = new Completer();
    var url = "advertisers/{advertiserId}/profiles/{profileId}/profilefields/values/replace";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (advertiserId == null) paramErrors.add("advertiserId is required");
    if (advertiserId != null) urlParams["advertiserId"] = advertiserId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ProfilefieldsReplaceValuesRequest.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates a subset of the profile field values of a given profile with new given values.
   *
   * [request] - ProfilefieldsUpdateValuesRequest to send in this request
   *
   * [advertiserId] - The advertiser id.
   *
   * [profileId] - The profile id.
   *
   * [optParams] - Additional query parameters
   */
  Future<ProfilefieldsUpdateValuesRequest> update(ProfilefieldsUpdateValuesRequest request, String advertiserId, String profileId, {Map optParams}) {
    var completer = new Completer();
    var url = "advertisers/{advertiserId}/profiles/{profileId}/profilefields/values";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (advertiserId == null) paramErrors.add("advertiserId is required");
    if (advertiserId != null) urlParams["advertiserId"] = advertiserId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ProfilefieldsUpdateValuesRequest.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ProfilesResource extends Resource {

  ProfilesResource(Client client) : super(client) {
  }

  /**
   * Searches for profile fields based on advertiser ID and query
   *
   * [advertiserId] - Advertiser id for the request.
   *
   * [maxResults] - The maximum number of results to return.
   *   Default: 20
   *
   * [pageToken] - The token for the result page to return.
   *
   * [profileQuery] - Details of the query.
   *
   * [optParams] - Additional query parameters
   */
  Future<ProfilesListResponse> list(String advertiserId, {int maxResults, String pageToken, String profileQuery, Map optParams}) {
    var completer = new Completer();
    var url = "advertisers/{advertiserId}/profiles";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (advertiserId == null) paramErrors.add("advertiserId is required");
    if (advertiserId != null) urlParams["advertiserId"] = advertiserId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (profileQuery != null) queryParams["profileQuery"] = profileQuery;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ProfilesListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Publishes the draft of a profile given the advertiser ID and profile ID
   *
   * [advertiserId] - The advertiser id.
   *
   * [profileId] - The profile id.
   *
   * [optParams] - Additional query parameters
   */
  Future<ProfilesPublishResponse> publish(String advertiserId, String profileId, {Map optParams}) {
    var completer = new Completer();
    var url = "advertisers/{advertiserId}/profiles/{profileId}/publish";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (advertiserId == null) paramErrors.add("advertiserId is required");
    if (advertiserId != null) urlParams["advertiserId"] = advertiserId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ProfilesPublishResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

