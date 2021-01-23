{{/* Helm required labels */}}
{{- define "base.labels" -}}
heritage: {{ .Release.Service }}
release: {{ .Release.Name }}
chart: {{.Chart.Name}}-{{.Chart.Version}}-{{.Chart.AppVersion}}
{{- end -}}
