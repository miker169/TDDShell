### functions.sh ###

function getFirstPlayerFrom () {
  echo $1 | sed -e 's/-.*//'
}

function getSecondPlayerFrom () {
  echo $1 | sed -e 's/.*-//'
}

function getScoreFor () {
  player=$1
  standings=$2
  totalMatches=$(echo "$standings" | grep $player | wc -l)
  echo $(($totalMatches-1))
}

function displayScore () {
  if [ $2 -gt 2 ] && [ $4 -gt 2 ] && [ $2 -eq $4 ]; then
    echo "Deuce"
  else
    echo "$1: `convertToTennisScore $2` - $3: `convertToTennisScore $4`"
  fi
}

function convertToTennisScore () {
  declare -a scoreMap=('0' '15' '30' '40')
  echo ${scoreMap[$1]};
}

