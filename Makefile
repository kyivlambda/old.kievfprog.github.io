
render: index.html
%.html: %.mustache event.yaml
	./render.py event.yaml < $< > $@
