FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY . .
EXPOSE 8080
ENV ASPNETCORE_URLS=http://+:8080
CMD ["sh", "-c", "dotnet $(ls Soluciones*.dll | head -n 1)"]
