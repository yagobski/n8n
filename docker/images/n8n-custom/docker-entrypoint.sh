#!/bin/sh

if [ -d /home/node/.n8n ] ; then
  chmod o+rx /home/node
  chown -R root /home/node/.n8n
  ln -s /home/node/.n8n /root
fi

if [ "$#" -gt 0 ]; then
  # Got started with arguments
  COMMAND=$1;

  if [[ "$COMMAND" == "n8n" ]]; then
    shift
    (cd packages/cli; exec node ./bin/n8n "$@")
  else
    exec node "$@"
  fi

else
	# Got started without arguments
	cd packages/cli; exec node ./bin/n8n
fi
