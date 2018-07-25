FROM microsoft/aspnetcore:2.0 AS base
WORKDIR /app
EXPOSE 80

FROM microsoft/aspnetcore-build:2.0 AS build
WORKDIR /src
COPY HelloWorldDocker/HelloWorldDocker.csproj HelloWorldDocker/
RUN dotnet restore HelloWorldDocker/HelloWorldDocker.csproj
COPY . .
WORKDIR /src/HelloWorldDocker
RUN dotnet build HelloWorldDocker.csproj -c Release -o /app

FROM build AS publish
RUN dotnet publish HelloWorldDocker.csproj -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "HelloWorldDocker.dll"]
