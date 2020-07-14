#!\bin\zsh
function runApp() {
  go run main.go
  # Bug: the line below never runs because the go server is blocking it.
  caddy reverse-proxy --from :8080 --to 127.0.0.1:80
}

runApp