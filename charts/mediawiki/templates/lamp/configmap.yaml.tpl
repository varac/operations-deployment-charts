{{ include "tls.config" . }}
---
apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ template "wmf.releasename" . }}-httpd-sites-config
  {{- include "mw.labels" . | indent 2}}
data:
{{ include "mw.web-sites" . }}
