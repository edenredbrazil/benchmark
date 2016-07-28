MIX_ENV=prod mix compile.protocols;
MIX_ENV=prod PORT=4001 elixir -S mix phoenix.server;
