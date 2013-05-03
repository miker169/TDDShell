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
  echo "$1: `convertToTennisScore $2` - $3: `convertToTennisScore $4`"
}

function convertToTennisScore () {
  if [ "$1" -eq '1' ]; then
    playerOneScore='15'
  elif [ "$1" -eq '2' ]; then
    playerOneScore='30'
  elif [ "$1" -eq '3' ]; then
    playerOneScore='40'
  else
    playerOneScore=$1
  fi

  echo $playerOneScore;
}

