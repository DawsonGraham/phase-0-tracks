2) Some common http status codes include:
	- 201 Created: the request has been fulfilled
	- 202 Accepted: the request has been accepted for processing, but the processing has not been completed
	- 204 No Content: the server successfuly processed the request and is not returning any content
	- 404 Not Found: the requested resource could not be found but may be available in the future. Subsequent requests by the client are permissible

3) The difference between a GET request and a POST request is that GET is usually intended to retrieve some data, and is expected to be idempotent (repeating the query does not have any side-effects) and can only send limited amount. POST request submits data to be processed to the identified resource. The data is included in the body of the request. This may result in the creation of a new resource or the updates of existing resources of both.