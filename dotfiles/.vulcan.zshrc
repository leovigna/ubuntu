alias owlfetch='bash <(curl -sL neowofetch.hydev.org) --ascii  "$(cat ~/owl/owl.out)"'

# Vulcan / Helm helper functions
function cl-upgrade-adapter { \
    helm upgrade chainlink-adapter-$1 chainlink-adapter -f values/chainlink/adapters/$1.yml -n chainlink \
}
function cl-upgrade { \
    helm upgrade chainlink-$1 chainlink -f values/chainlink/$1.yml -n chainlink \
}

function cl-upgrade-composite-adapter { \
    helm upgrade chainlink-adapter-$1 chainlink-adapter -f values/chainlink/adapters/composites/$1.yml -n chainlink \
}

function cl-install-adapter { \
    helm install chainlink-adapter-$1 chainlink-adapter -f values/chainlink/adapters/$1.yml -n chainlink \
}

function cl-install { \
    helm install chainlink-$1 chainlink -f values/chainlink/$1.yml -n chainlink \
}

function cl-install-composite-adapter { \
    helm install chainlink-adapter-$1 chainlink-adapter -f values/chainlink/adapters/composites/$1.yml -n chainlink \
}

function cl-port {
    kubectl port-forward "svc/chainlink-$1-ocr" 6688:6688 -n chainlink --context kubernetes-admin@kubernetes
}

function mergekubeconfig {
	cp ~/.kube/config ~/.kube/config.bak
	clusterctl get kubeconfig $1 | KUBECONFIG=/proc/self/fd/0:~/.kube/config kubectl config view --flatten > ~/.kube/config_merged
	
	mv ~/.kube/config_merged ~/.kube/config
	# Only allow R/W to yourself
	chmod 600 ~/.kube/config
}