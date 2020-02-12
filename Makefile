jar:
	clj -A:uberjar

clean:
	rm -rf target/*

run:
	java -cp target/ignite-repl.jar clojure.main -m ignite_repl.core

repl:
	clj -Sdeps '{:deps {nrepl {:mvn/version "0.6.0"}}}' -m nrepl.cmdline --connect --host localhost --port 3333

docker:
	docker build -t ignite-repl .
