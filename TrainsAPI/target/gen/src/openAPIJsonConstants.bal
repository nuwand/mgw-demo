
function getOpenAPIs() returns map<json> {
	return {  "TrainsAPI__1_0_0" : {
  "openapi" : "3.0.1",
  "info" : {
    "title" : "TrainsAPI",
    "version" : "1.0.0"
  },
  "servers" : [ {
    "url" : "/"
  } ],
  "security" : [ {
    "default" : [ ]
  } ],
  "paths" : {
    "/schedule/from/{departure}" : {
      "get" : {
        "parameters" : [ {
          "name" : "departure",
          "in" : "path",
          "required" : true,
          "style" : "SIMPLE",
          "explode" : false,
          "schema" : {
            "type" : "string",
            "format" : "string"
          }
        } ],
        "responses" : {
          "200" : {
            "description" : "ok"
          }
        },
        "security" : [ {
          "default" : [ ]
        } ],
        "extensions" : { }
      }
    },
    "/schedule/to/{arrival}" : {
      "get" : {
        "parameters" : [ {
          "name" : "arrival",
          "in" : "path",
          "required" : true,
          "style" : "SIMPLE",
          "explode" : false,
          "schema" : {
            "type" : "string",
            "format" : "string"
          }
        } ],
        "responses" : {
          "200" : {
            "description" : "ok"
          }
        },
        "security" : [ {
          "default" : [ ]
        } ],
        "extensions" : { }
      }
    },
    "/destinations" : {
      "get" : {
        "parameters" : [ ],
        "responses" : {
          "200" : {
            "description" : "ok"
          }
        },
        "security" : [ {
          "default" : [ ]
        } ],
        "extensions" : { }
      }
    }
  },
  "components" : {
    "securitySchemes" : {
      "default" : {
        "type" : "OAUTH2",
        "flows" : {
          "implicit" : {
            "authorizationUrl" : "https://test.com"
          }
        }
      }
    },
    "extensions" : { }
  },
  "extensions" : {
    "x-wso2-auth-header" : "Authorization",
    "x-throttling-tier" : "Unlimited",
    "x-wso2-cors" : {
      "corsConfigurationEnabled" : false,
      "accessControlAllowOrigins" : [ "*" ],
      "accessControlAllowCredentials" : false,
      "accessControlAllowHeaders" : [ "authorization", "Access-Control-Allow-Origin", "Content-Type", "SOAPAction" ],
      "accessControlAllowMethods" : [ "GET", "PUT", "POST", "DELETE", "PATCH", "OPTIONS" ]
    },
    "x-wso2-production-endpoints" : "#/x-wso2-endpoints/trainsEP",
    "x-wso2-sandbox-endpoints" : "#/x-wso2-endpoints/trainsEP",
    "x-wso2-basePath" : "/trains/1.0.0",
    "x-wso2-transports" : [ "http", "https" ],
    "x-wso2-endpoints" : [ {
      "trainsEP" : {
        "urls" : [ "http://localhost:3000" ]
      }
    } ]
  }
}  };
}