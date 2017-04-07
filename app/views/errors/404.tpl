<!DOCTYPE html>
<html lang="en">
<head>
    <title>Not found</title>
</head>
<body>
{{if eq .RunMode "dev"}}
{{template "errors/404-dev.tpl" .}}
{{else}}
{{with .Error}}
<h1>
    {{.Title}}
</h1>
<p>
    {{.Description}}
</p>
{{end}}
{{end}}
</body>
</html>
