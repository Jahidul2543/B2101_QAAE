Feature: 
    Age Group Identifier

Scenario: Call with valid data to identify whether you are Adult or Senior 

Given  Verb: POST
And HostName: https://5x9m5ed0tj.execute-api.us-east-1.amazonaws.com
And Endpoint: /test/submit
And Header: Authorization: Bearer AccessToken Content-Type: application/json
And Body: """{ "name": "John", "age": 64 }"""
When Execute the call
Then Expected response code 200
And  Expected message "You are an adult" 

Scenario: Call with invalid age data 

Given  Verb: POST
And HostName: https://5x9m5ed0tj.execute-api.us-east-1.amazonaws.com
And Endpoint: /test/submit
And Header: Authorization: Bearer AccessToken Content-Type: application/json
And Body: """{ "name": "John", "age": 9 }"""
When Execute the call
Then Expected response code 200
And  Expected message 
    """
    {
        "message": "Invalid request body"
    }
    """

Scenario: Call with invalid name data 

Given  Verb: POST
And HostName: https://5x9m5ed0tj.execute-api.us-east-1.amazonaws.com
And Endpoint: /test/submit
And Header: Authorization: Bearer AccessToken Content-Type: application/json
And Body: """{ "name": "John", "age": 9 }"""
When Execute the call
Then Expected response code 200
And  Expected message
     """
    {
        "message": "Invalid request body"
    }
    """