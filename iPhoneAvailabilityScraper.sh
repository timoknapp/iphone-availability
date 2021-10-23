#/bin/bash

# Retrieves the Delivery Date for the model specified
getData() {
    URL="https://www.apple.com/de/shop/fulfillment-messages?little=false&mt=regular&parts.0=$1"
    MODEL_NAME_QUERY=".body.content.pickupMessage.stores[].partsAvailability.\"$1\".storePickupProductTitle"
    DELIVERY_DATE_QUERY=".body.content.deliveryMessage.\"$1\".deliveryOptions[0].date"

    # echo "iPhone model code: $1"
    # echo "URL: $URL"

    json=$(curl -s --location --request GET $URL)
    # echo "JSON: \n$json"

    modelName=$(jq -r $MODEL_NAME_QUERY <<< "$json")
    deliveryDate=$(jq -r $DELIVERY_DATE_QUERY <<< "$json")

    printf "$format" \ "$modelName" "$deliveryDate"
}

divider===============================
divider=$divider$divider

header="\n %-40s %10s\n"
format=" %-40s %10s\n"

width=60

printf "$header" "MODEL NAME" "DELIVERY DATE"

printf "%$width.${width}s\n" "$divider"

IPHONE_MODELS="MLV93ZD/A MLVE3ZD/A MLVD3ZD/A MLVP3ZD/A MLLA3ZD/A MLL63ZD/A MLL93ZD/A MLLE3ZD/A"
for i in $IPHONE_MODELS; do
    getData $i
done

# curl --location --request GET "https://www.apple.com/de/shop/fulfillment-messages?little=false&mt=regular&parts.0=$IPHONE_MODEL" | jq $MODEL_NAME_QUERY
# curl --location --request GET "https://www.apple.com/de/shop/fulfillment-messages?little=false&mt=regular&parts.0=$IPHONE_MODEL" | jq $DELIVERY_DATE_QUERY
