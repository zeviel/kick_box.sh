#!/bin/bash

api="https://open.kickbox.com/v1"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36"

function check_domain() {
	curl --request GET \
		--url "$api/disposable/$1" \
		--user-agent "$user_agent" \
		--header "accept: application/json"	\
		--header "content-type: application/json"
}
