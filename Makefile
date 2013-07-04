
render: index.html
%.html: %.mustache
	./render.py event.yaml < $< > $@
