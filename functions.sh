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
