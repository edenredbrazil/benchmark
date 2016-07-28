MIX_ENV=prod mix compile.protocols;
MIX_ENV=prod PORT=4000 elixir -S mix phoenix.server;
