FROM microsoft/dotnet:2.1-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80

FROM microsoft/dotnet:2.1-sdk AS build
WORKDIR /src
COPY ["Scopio.API/Scopio.API.csproj", "Scopio.API/"]
RUN dotnet restore "Scopio.API/Scopio.API.csproj"
COPY . .
WORKDIR "/src/Scopio.API"
RUN dotnet build "Scopio.API.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "Scopio.API.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "Scopio.API.dll"]