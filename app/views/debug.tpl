<style type="text/css">
    #sidebar {
        position: absolute;
        right: 0px;
        top:69px;
        max-width: 75%;
        z-index: 1000;
        background-color: #fee;
        border: thin solid grey;
        padding: 10px;
    }
    #toggleSidebar {
        position: absolute;
        right: 0px;
        top: 50px;
        background-color: #fee;
    }

</style>
<div id="sidebar" style="display:none;">
    <h4>Available pipelines</h4>
    <dl>
        {{ range $index, $value := .}}
        <dt>{{$index}}</dt>
        <dd>{{$value}}</dd>
        {{end}}
    </dl>
    <h4>Flash</h4>
    <dl>
        {{ range $index, $value := .flash}}
        <dt>{{$index}}</dt>
        <dd>{{$value}}</dd>
        {{end}}
    </dl>

    <h4>Errors</h4>
    <dl>
        {{ range $index, $value := .errors}}
        <dt>{{$index}}</dt>
        <dd>{{$value}}</dd>
        {{end}}
    </dl>
</div>
<a id="toggleSidebar" href="#" class="toggles"><i class="glyphicon glyphicon-chevron-left"></i></a>

<script>
    $sidebar = 0;
    $('#toggleSidebar').click(function() {
        if ($sidebar === 1) {
            $('#sidebar').hide();
            $('#toggleSidebar i').addClass('glyphicon-chevron-left');
            $('#toggleSidebar i').removeClass('glyphicon-chevron-right');
            $sidebar = 0;
        }
        else {
            $('#sidebar').show();
            $('#toggleSidebar i').addClass('glyphicon-chevron-right');
            $('#toggleSidebar i').removeClass('glyphicon-chevron-left');
            $sidebar = 1;
        }

        return false;
    });
</script>
