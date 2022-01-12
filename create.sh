
if [ -n "$1" ]; then
  GENERATOR=$1
else
  GENERATOR=html
fi
docker run --rm -v ${PWD}:/local -u $(id -u ${USER}):$(id -g ${USER}) openapitools/openapi-generator:cli-latest generate -i /local/openapi.yaml -g $GENERATOR -o /local/output
