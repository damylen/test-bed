{
    "Request":
    {
        "Category":
        [
            {
                "CategoryId": "urn:oasis:names:tc:xacml:1.0:subject-category:access-subject",
                "Attribute":
                [
                    {
                        "AttributeId": "urn:oasis:names:tc:xacml:1.0:subject:subject-id",
                        "DataType":"http://www.w3.org/2001/XMLSchema#string",
                        "Value": "${principal.name}"
                    },
                    {
                        "AttributeId": "urn:oasis:names:tc:xacml:3.0:subject:authn-locality:ip-address",
                        "DataType":"urn:oasis:names:tc:xacml:2.0:data-type:ipAddress",
                        "Value": "${clientHost.hostAddress}"
                    }
                ]
            },

            {
                "CategoryId": "urn:oasis:names:tc:xacml:3.0:attribute-category:action",
                "Attribute":
                [
                    {
                        "AttributeId": "urn:oasis:names:tc:xacml:1.0:action:action-id",
                        "DataType":"http://www.w3.org/2001/XMLSchema#string",
                        "Value": "${operation}",
                    }
                ]
            },

            {
                "CategoryId": "urn:oasis:names:tc:xacml:3.0:attribute-category:resource",
                "Attribute":
                [
                    {
                        "AttributeId": "urn:thalesgroup:xacml:resource:resource-type",
                        "DataType":"http://www.w3.org/2001/XMLSchema#string",
                        "Value": "${resourceType}"
                    },
                     {
                        "AttributeId": "urn:oasis:names:tc:xacml:1.0:resource:resource-id",
                        "DataType":"http://www.w3.org/2001/XMLSchema#string",
                        "Value": "${resourceName}"
                    }
                ]
            },
            {
                "CategoryId": "urn:oasis:names:tc:xacml:3.0:attribute-category:environment",
                "Attribute":
                [
                    {
                        "AttributeId": "urn:thalesgroup:xacml:environment:deployment-environment",
                        "DataType":"http://www.w3.org/2001/XMLSchema#string",
                        "Value": "DEV"
                    }
                ]
            }
        ]
    }
}
