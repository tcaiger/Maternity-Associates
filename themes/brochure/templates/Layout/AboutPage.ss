
<main class="container">
    <div class="row">
        <!-- Content Column -->
        <div class="col-md-6">
            <h1>$Title</h1>
            <hr>
            $Content
            <% if $Title == "Our Care" %>
                <br>
                <div class="row">
                    <div class="col-sm-12">
                        <img src="$ThemeDir/img/copy.JPG" class="img-responsive img-rounded">
                    </div>
                </div>
                <br>
                <p>*The picture shows a women having a water birth at home.</p>
            <% end_if %>
            
        </div>

        <!-- Sidebar Column -->
        <div class="col-md-3 col-md-offset-1">
            <div class="nav-panel list-group">
                <% loop $Menu(2) %>
                    <a href="$Link" class="$LinkingMode list-group-item">$MenuTitle</a>
                <% end_loop %>
            </div>
        </div>
    </div>
</main>