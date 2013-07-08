API_KEY?= 
SERVICE?=
FASTLY= https://api.fastly.com

render: index.html
%.html: %.mustache event.yaml
	./render.py event.yaml < $< > $@

purge:
	curl -X POST \
		-H 'Fastly-Key: $(API_KEY)' \
		-H 'Accept: application/json' \
		$(FASTLY)/service/$(SERVICE)/purge_all
