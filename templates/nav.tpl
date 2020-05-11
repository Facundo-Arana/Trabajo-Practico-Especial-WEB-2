
<div class="side">
    <div class="subtitle">
        <h2>Generos</h2>
    </div>

    <nav>
        <ul>
        
            {foreach from=$nav item=genre} 

                {$split = explode(" ", $genre->name)}
                    
                {if !isset($split[1])}

                    <li><a href="library/catalogue/{$split[0]}"> {$genre->name} </a></li>

                {elseif !isset($split[2])}

                    <li><a href="library/catalogue/{$split[0]}-{$split[1]}"> {$genre->name} </a></li>

                {else}

                    <li><a href="library/catalogue/{$split[0]}-{$split[1]}-{$split[2]}"> {$genre->name} </a></li>

                {/if}   

            {/foreach}
        
        </ul>
    </nav>
</div>       
        
       