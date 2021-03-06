% Copyright 2009 Benoit Chesneau <benoitc@e-engura.org>
% Licensed under the Apache License, Version 2.0 (the "License"); you may not
% use this file except in compliance with the License. You may obtain a copy of
% the License at
%
%   http://www.apache.org/licenses/LICENSE-2.0
%
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
% WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
% License for the specific language governing permissions and limitations under
% the License.

-define(b2l(V), binary_to_list(V)).
-define(l2b(V), list_to_binary(V)).

-record(proxy, {
    mochi_req,
	socket=undefined,
	headers,
	method,
    host,
    basename,
	url,
	path,
	path_parts,
	route,
	status_code,
    reason,
    response_headers,
    response_body}).

-define(CPVSN, "0.3").
-define(QUIP, "CouchDB Proxy").

-record(url, {abspath, host, port, username, password, path, protocol}).

-record(http_request, {method,
                       path,
                       version}).

-record(http_response, {version,
                        status,
                        phrase}).