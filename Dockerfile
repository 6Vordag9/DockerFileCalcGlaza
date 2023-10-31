FROM adoptopenjdk:8-jdk-hotspot

RUN apt-get update && apt-get install -y \
    xorg \
    libxrender1 \
    libxtst6 \
    && rm -rf /var/lib/apt/lists/*


ENV DISPLAY=:0

COPY calc.jar /app/calc.jar
WORKDIR /app

CMD ["java", "-jar", "calc.jar"]