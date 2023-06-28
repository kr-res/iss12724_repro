FROM hexpm/elixir:1.15.0-erlang-26.0.1-ubuntu-jammy-20230126 AS elixir_prep
# FROM hexpm/elixir:1.15.0-erlang-25.3.2.2-ubuntu-jammy-20230126 AS elixir_prep


RUN apt-get update

# Set environment variables
ENV MIX_ENV=prod \
  LANG=C.UTF-8

# NOTE: This fixes the #12724 issue
# ENV ERL_FLAGS="+JMsingle true"

# Create work folder
RUN mkdir /elixir-prep
WORKDIR /elixir-prep

# Copy necessary application configuration files
COPY mix.exs mix.lock ./

# Install hex and rebar
RUN mix local.hex --force
RUN mix local.rebar --force

# Install the Elixir production dependencies
RUN mix deps.get --only prod
RUN mix deps.compile
