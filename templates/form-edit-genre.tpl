<div class="form-center">
    <form action="library/admin/editGenre" method="POST">
        <label class="oculto"> ---------------- </label>
        <h2>Edit Genre</h2>
        <label class="oculto"> ---------------- </label>
        <div>
            <select name="idGenre">
                <option value="">select genre</option>
                {foreach from=$genres item=genre}
                    <option value="{$genre->id}">{$genre->name}</option>
                {/foreach}
            </select>
        </div>
        <label class="oculto"> ---------------- </label>
        <div>
            <input type="text" name="newName" placeholder="new name">
        </div>
        <label class="oculto"> ---------------- </label>
        <div>
            <input type="submit" value="edit">
        </div>
    </form>
</div>