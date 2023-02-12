#!/bin/sh

mkdir -p log

{
	./xbps-src -a x86_64-musl clean openblas && ./xbps-src -a x86_64-musl pkg openblas &&
	./xbps-src -a x86_64-musl clean vosk-api && ./xbps-src -a x86_64-musl pkg -C -Q vosk-api
} 2>&1 | tee log/x86_64-musl

{
	./xbps-src -a aarch64-musl clean openblas && ./xbps-src -a aarch64-musl pkg openblas &&
	./xbps-src -a aarch64-musl clean vosk-api && ./xbps-src -a aarch64-musl pkg -C -Q vosk-api
} 2>&1 | tee log/aarch64-musl
