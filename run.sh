if [ ! -n "${WERCKER_HUGO_SEASONS_LIST_EXTRACTOR_PATH}" ]
then
    fail "missing option \"path\", aborting"
fi
if [ ! -n "${WERCKER_HUGO_SEASONS_LIST_EXTRACTOR_SEARCH_NAME}" ]
then
    fail "missing option \"search_name\", aborting"
fi
if [ ! -n "${WERCKER_HUGO_SEASONS_LIST_EXTRACTOR_DISCIPLINES}" ]
then
    fail "missing option \"disciplines\", aborting"
fi
if [ ! -n "${WERCKER_HUGO_SEASONS_LIST_EXTRACTOR_OUTPUT_FILE}" ]
then
    fail "missing option \"output_file\", aborting"
fi

PATH=${WERCKER_HUGO_SEASONS_LIST_EXTRACTOR_PATH}
NAME=${WERCKER_HUGO_SEASONS_LIST_EXTRACTOR_SEARCH_NAME}
DISCIPLINES=${WERCKER_HUGO_SEASONS_LIST_EXTRACTOR_DISCIPLINES}
OUTPUT_FILE=${WERCKER_HUGO_SEASONS_LIST_EXTRACTOR_OUTPUT_FILE}

./hugo-seasons-list-extractor --path=${PATH} --name=${NAME} --disciplines=${DISCIPLINES} --outputFile=${OUTPUT_FILE}