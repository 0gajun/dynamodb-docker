FROM java:8-jre

ENV WORK_DIR /app

RUN mkdir $WORK_DIR

WORKDIR $WORK_DIR

RUN wget https://s3-ap-northeast-1.amazonaws.com/dynamodb-local-tokyo/dynamodb_local_latest.tar.gz && \
      tar xzf dynamodb_local_latest.tar.gz

EXPOSE 8000

CMD java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb
