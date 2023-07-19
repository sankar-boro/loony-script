genesis-node key insert --base-path ./para_1_logs \
  --chain ./custom-humidefi-spec-raw.json \
  --scheme Sr25519 \
  --suri "daughter peasant twelve bless century neglect title mouse habit plate galaxy ticket//1//aura" \
  --password-interactive \
  --key-type aura


genesis-node key insert --base-path ./para_2_logs \
  --chain ./custom-humidefi-spec-raw.json \
  --scheme Sr25519 \
  --suri "daughter peasant twelve bless century neglect title mouse habit plate galaxy ticket//2//aura" \
  --password-interactive \
  --key-type aura


curl -H 'Content-Type: application/json' --data '{ "jsonrpc":"2.0", "method":"author_insertKey", "params":["aura", "daughter peasant twelve bless century neglect title mouse habit plate galaxy ticket//1//aura", "0x008012573a4e334d065cd67895d1b7b1576e514d3f599c20d3b405c315a3da4f"],"id":1 }' http://127.0.0.1:9936
curl -H 'Content-Type: application/json' --data '{ "jsonrpc":"2.0", "method":"author_insertKey", "params":["aura", "daughter peasant twelve bless century neglect title mouse habit plate galaxy ticket//2//aura", "0x008012573a4e334d065cd67895d1b7b1576e514d3f599c20d3b405c315a3da4f"],"id":1 }' http://127.0.0.1:9938

