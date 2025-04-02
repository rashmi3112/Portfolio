#!/usr/bin/env bash
echo "Starting .NET build and publish"

# Ensure .NET is available
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$DOTNET_ROOT:$PATH

dotnet --info  # Check if .NET is installed
dotnet restore src/API/API.csproj
dotnet publish src/API/API.csproj -c Release -r linux-x64 --self-contained false -o src/API/out
