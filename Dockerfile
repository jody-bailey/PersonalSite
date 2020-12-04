#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:5.0-buster-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:5.0-buster-slim AS build
WORKDIR /src
COPY PersonalSite.csproj ./
RUN dotnet restore "./PersonalSite.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "PersonalSite.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "PersonalSite.csproj" -c Release -o /app/publish

FROM nginx:1.19-alpine as final
COPY --from=publish /app/publish/wwwroot /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf
