<div class="form-center">
    <form action="library/admin/editUser" method="POST">
        <label class="oculto"> ---------------- </label>
        <div>
            <h2>Edit User</h2>
        </div>
        <label class="oculto"> ---------------- </label>
        <div>
            <select name="idUser" id="idUser">
                <option value="">Select User</option>
                {foreach from=$users item=user}
                    <option value="{$user->id_user}">{$user->userName}</option>
                {/foreach}
            </select>
        </div>
        <label class="oculto"> ---------------- </label>
        <div>
            <p>Priority</p>
        </div>
        <div>
            <input type="number" max="2" min="0" name="priority" id="priority">
        </div>
        <label class="oculto"> ---------------- </label>
        <div>
            <input type="submit" value="edit">
        </div>
    </form>
</div>