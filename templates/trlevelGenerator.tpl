{capture assign='pageTitle'}{lang}trlevel.particleGenerator.dustGenerator.title{/lang}{/capture}


{capture assign='sidebarRight'}
   <section class="box">
       <h2 class="boxTitle">{lang}trlevel.particleGenerator.dustGenerator.tutorial{/lang}</h2>
       <div class="boxContent">
           
       </div>
       
       <div class="boxContent">
           <div class="discussionProviderCtaContainer">
               <a href="https://www.trlevel.de/lexicon/index.php?entry/689-staubpartikel-particleemitter-tutorial-generator/" class="button buttonPrimary">{lang}trlevel.particleGenerator.dustGenerator.button.title{/lang}</a>
           </div>
       </div>
   </section>
   {event name='boxes'}

{/capture}

{include file='header'}

   <header class="contentHeader">
       <div class="contentHeaderTitle">
           <h1 class="contentTitle">{lang}trlevel.particleGenerator.xxx.xxx{/lang}</h1>
       </div>
   </header>

   <div class="contentInteraction">
        <div class="contentInteractionButtonContainer">
            <div class="contentInteractionButtons">
            <a href="#luaCodeAnker" class="button small"><fa-icon size="16" name="arrow-down" solid="" ></fa-icon> 
                <span>{lang}trlevel.particleGenerator.general.button.down{/lang}</span></a>					
            </div>
        </div>
    </div>

   
       <form method="post" action="{link controller='dust-generator'}{/link}#luaCodeAnker">
            {include file='trlevelGeneratorsHeader'}
            {include file='trlevelGeneratorsHeader' assign='trlevelGeneratorsHeaderXXX'}  

           <ul class="particleGeneratorList">
                   <li class="generatorBox2">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.particleGenerator.xxx.xxx{/lang}</h2>

                           <dd>
                               <input type="text" id="functionName" name="functionName" value="{$functionName}">
                               <small>{lang}trlevel.particleGenerator.xxx.xxx.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.particleGenerator.xxx.xxx{/lang}</h2>
                           <dt><label for="xPosTolerance">{lang}trlevel.particleGenerator.xxx.xxx.xTol{/lang}</label></dt>
                           <dd>
                               <input type="text" id="xPosTolerance" name="xPosTolerance" value="{$xPosTolerance}">
                               <small>{lang}trlevel.particleGenerator.xxx.xxx.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox2">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.particleGenerator.xxx.xxx{/lang}</h2>
                           <dd>
                               <select name="damageMode">
                                   {foreach from=$damageModes item=damageMode key=key}
                                       <option value="{$key}"{if $selectedDamageMode == $key} selected{/if}>{$damageMode}</option>
                                   {/foreach}
                           </select>
                               <small>{lang}trlevel.particleGenerator.xxx.xxx.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

           </ul>
           <div class="formSubmit">
               
               <input type="submit" value="{lang}wcf.global.button.submit{/lang}" accesskey="s">
               {csrfToken}
           </div>
       </form>
<div id="luaCodeAnker"></div>
       <dl><h2 class="sectionTitle">{lang}trlevel.particleGenerator.xxx.xxx{/lang}</h2></dl>
       
       {lang}trlevel.particleGenerator.dustGenerator.luaCodeToScript.description{/lang}
       
       <div class="codeBox">
           <code>
               <pre>
<textarea id="codeCopy" rows="20" disabled style="resize:none; overflow: auto;"> {lang}trlevel.particleGenerator.XXX.XXX{/lang}
</textarea>
               </pre>
           </code>

           <a class="button" href="{link controller='trlevel-generator'}{/link}#luaCodeAnker" onclick="markieren('codeCopy');">{lang}trlevel.particleGenerator.general.button.codeCopy{/lang}</a>
       </div>
       
       

<script type="text/javascript">
function markieren (elementId) {
elem = document.getElementById(elementId);
if (document.selection && document.selection.createRange) {
var textRange = document.selection.createRange();
textRange.moveToElementText(elem);
textRange.select();
} else if (document.createRange && window.getSelection) {
var range = document.createRange();
range.selectNode(elem);
var selection = window.getSelection();
selection.removeAllRanges();
selection.addRange(range);
}
}
</script>

{include file='footer'}