# iss12724_repro

failure (linux/amd64):
`docker build -f Dockerfile --platform linux/amd64 -t kr-elixir-iss12724 .`

success (linux/arm64/v8):
`docker build -f Dockerfile --platform linux/arm64/v8 -t kr-elixir-iss12724 .`

The issue also exists on Eland opt25, which I verified by switching out line 1 in the Dockerfile:

`FROM hexpm/elixir:1.15.0-erlang-25.3.2.2-ubuntu-jammy-20230126 AS elixir_prep`


