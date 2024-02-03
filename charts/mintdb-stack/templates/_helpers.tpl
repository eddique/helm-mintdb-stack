{{/* Full name of the chart */}}
{{- define "mintdb.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name }}
{{- end -}}

{{/* Name of the chart */}}
{{- define "mintdb.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{/* Common labels */}}
{{- define "mintdb.labels" -}}
{{ include "mintdb.selectorLabels" . }}
{{- end -}}

{{/* Selector labels */}}
{{- define "mintdb.selectorLabels" -}}
app: {{ include "mintdb.name" . }}
name: {{ .Release.Name }}
{{- end -}}

{{/* Chart label */}}
{{- define "mintdb.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end -}}