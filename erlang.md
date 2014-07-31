Error Logging
-------------
See: http://www.erlang.org/documentation/doc-4.8.2/lib/sasl-1.7.1/doc/html/error_logging.html

To start the REPL:

    erl -boot start_sasl

For offline logs:

    > rb:start([{report_dir,"/tmp/error_logs"}]).

