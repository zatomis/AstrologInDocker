FROM alpine:3.20.3
LABEL author=Zatomis
RUN apk update && apk --no-cache add make && apk --no-cache add g++ && apk --no-cache add>
WORKDIR /"Astrolog"
ADD https://www.astrolog.org/ftp/ast77src.zip .
RUN unzip ast77src.zip && rm ast77src.zip && make && rm *.o *.cpp *.h
CMD ["./astrolog"]
