FROM amazoncorretto:17-alpine
LABEL   owner="Lyes SEFIANE" \
        maintainer="Lyes SEFIANE" \
        email="lyes.sefiane@gmail.com" \
        website="https://lyes-sefiane.web.app/" \
        github="https://github.com/lyes-sefiane/grocery-items-management" \
        dockerhub="https://hub.docker.com/r/lsefiane/grocery-items-management" \
        version="1.0" \
        description="Grocery Items Management REST API Image"
WORKDIR /grocery-items-management
COPY target/grocery-items-management.jar grocery-items-management.jar
RUN apk upgrade && apk upgrade openssl --no-cache
EXPOSE 8080
ENTRYPOINT ["java","-jar","grocery-items-management.jar"]