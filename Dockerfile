# FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build

# # Copy csproj and restore as distinct layers
# COPY . /aspnetcoreapp
# WORKDIR /aspnetcoreapp
# RUN ["dotnet", "restore"]
# RUN ["dotnet", "build"]
# EXPOSE 5000/tcp
# ENTRYPOINT ["dotnet", "run", "--server.urls", "http://0.0.0:5000]

FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /aspnetcoreapp

# Copy csproj and restore as distinct layers
COPY aspnetcoreapp/*.csproj ./
RUN ["dotnet", "restore"]
RUN ["dotnet","build"]
# Copy everything else and build
ENTRYPOINT ["dotnet", "aspnetcoreapp.dll"]