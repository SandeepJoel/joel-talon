tag: terminal
and tag: user.kubectl
-

cube office shadow fax: "k9s -n shadowfax"
cube office mavericks: "k9s -n mavericksv3"
cube office swat cats: "k9s -n swatkats"
cube office staging: "k9s -n fd-staging"
cube logs asset sync: "kubectl logs -f fc-app-asset-sync-mavericksv3-blue-mdbmh -n mavericksv3 -c app | tee ~/debug.log"