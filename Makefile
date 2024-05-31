COMPOSE ?= docker compose
.PHONY: provision start repl clean

provision:
	$(COMPOSE) run provision || true

start: provision
	$(COMPOSE) up -d db

repl:
	$(COMPOSE) run repl

clean:
	$(COMPOSE) down --volumes --remove-orphans
