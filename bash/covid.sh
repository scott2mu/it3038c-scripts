POSITIVE=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].positive')
NEGATIVE=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].negative')
DEATHS=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].death')
HOSPITAL=$(curl https://api.covidtracking.com/v1/us/current.json | jq '.[0].hospitalized')
TODAY=$(date)

 

echo "On $TODAY, there were $POSITIVE positive COVID cases, $NEGATIVE negative cases, $DEATHS deaths, and $HOSPITAL hospitalized."

