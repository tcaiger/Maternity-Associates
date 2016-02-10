
<main class="container">

    <div class="row">
        <!-- Sidebar Column -->
        <div class="col-md-3">
            <div class="list-group">
                <% loop $Menu(2) %>
                    <a href="$Link" class="$LinkingMode list-group-item">$MenuTitle</a>
                <% end_loop %>
            </div>
        </div>
        <!-- Content Column -->
        <div class="col-md-7">
            <h2>$Subheading</h2>
            <blockquote>$Intro</blockquote>
            $Content
            $Form
        </div>
    </div>
</main>
