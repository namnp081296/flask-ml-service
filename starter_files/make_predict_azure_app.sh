#!/usr/bin/env bash

PORT=443
echo "Port: $PORT"

# POST method predict
curl -d '{
   "CHAS":{
      "0":0
   },
   "RM":{
      "0":6.575
   },
   "TAX":{
      "0":296.0
   },
   "PTRATIO":{
      "0":15.3
   },
   "B":{
      "0":396.9
   },
   "LSTAT":{
      "0":4.98
   }
}'\
     -H "Content-Type: application/json" \
     -X POST https://lemon-wave-41de4eec6948486d96c3809a828003b9.azurewebsites.net:$PORT/predict 
     # TODO: Replace the <yourappname> with your application name 
