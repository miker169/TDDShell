### functions.sh ###

function getFirstPlayerFrom () {
  echo $1 | sed -e 's/-.*//'
}
