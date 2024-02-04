while true
do
  echo "Input website:"
  read website; echo "Searching.."
  sleep 1; curl https://$website
done