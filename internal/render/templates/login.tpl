{{.flash_success}}
<form action="/login" method="POST">
    {{if .error}}{{.error}}<br />{{end}}
    <input type="text" class="form-control" name="{{.primaryID}}" placeholder="{{title .primaryID}}" value="{{.username}}"><br />
    <input  type="password" class="form-control" name="password" placeholder="Password"><br />
    <input type="hidden" name="{{.xsrfName}}" value="{{.xsrfToken}}" />
    {{if .showRemember}}<input type="checkbox" name="rm" value="true"> Remember Me{{end}}
    <button type="submit">Login</button><br />
    {{if .showRecover}}<a href="/recover">Recover Account</a>{{end}}
</form>