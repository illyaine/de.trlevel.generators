{capture assign='pageTitle'}{lang}trlevel.generators.dustGenerator.title{/lang}{/capture}


{capture assign='sidebarRight'}
   <section class="box">
       <h2 class="boxTitle">{lang}trlevel.generators.general.tutorial{/lang}</h2>
       <div class="boxContent">
           
       </div>
       
       <div class="boxContent">
           <div class="discussionProviderCtaContainer">
               <a href="https://www.trlevel.de/lexicon/index.php?entry/689-staubpartikel-particleemitter-tutorial-generator/" class="button buttonPrimary">{lang}trlevel.generators.general.button.toTutorial{/lang}</a>
           </div>
       </div>
   </section>
   {event name='boxes'}

{/capture}

{include file='header'}

   <header class="contentHeader">
       <div class="contentHeaderTitle">
           <h1 class="contentTitle">{lang}trlevel.generators.dustGenerator.title{/lang}</h1>
       </div>
   </header>

   <div class="contentInteraction">
        <div class="contentInteractionButtonContainer">
            <div class="contentInteractionButtons">
            <a href="#luaCodeAnker" class="button small"><fa-icon size="16" name="arrow-down" solid="" ></fa-icon> 
                <span>{lang}trlevel.generators.general.button.down{/lang}</span></a>					
            </div>
        </div>
    </div>

   
       <form method="post" action="{link controller='dust-generator'}{/link}#luaCodeAnker">
            {include file='trlevelGeneratorsHeader'}
            {include file='trlevelGeneratorsHeader' assign='trlevelGeneratorsHeaderDust'}  

           <ul class="particleGeneratorList">
                   <li class="generatorBox2">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.functionName{/lang}</h2>

                           <dd>
                               <input type="text" id="functionName" name="functionName" value="{$functionName}">
                               <small>{lang}trlevel.generators.dustGenerator.functionName.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>
                   
                   <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.staticSlot{/lang}</h2>

                           <dd>
                               <input type="text" id="staticSlot" name="staticSlot" value="{$staticSlot}">
                               <small>{lang}trlevel.generators.dustGenerator.staticSlot.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>


                   <li class="generatorBox2">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.moveableSlot{/lang}</h2>
                           <dd>
                               <input type="text" id="moveableSlot" name="moveableSlot" value="{$moveableSlot}">
                               <small>{lang}trlevel.generators.dustGenerator.moveableSlot.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.tolerance{/lang}</h2>
                           <dt><label for="xPosTolerance">{lang}trlevel.generators.dustGenerator.tolerance.xTol{/lang}</label></dt>
                           <dd>
                               <input type="text" id="xPosTolerance" name="xPosTolerance" value="{$xPosTolerance}">
                               <small>{lang}trlevel.generators.dustGenerator.tolerance.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                           <dt><label for="yPosTolerance">{lang}trlevel.generators.dustGenerator.tolerance.yTol{/lang}</label></dt>
                           <dd>
                               <input type="text" id="yPosTolerance" name="yPosTolerance" value="{$yPosTolerance}">
                               <small>{lang}trlevel.generators.dustGenerator.tolerance.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                           <dt><label for="zPosTolerance">{lang}trlevel.generators.dustGenerator.tolerance.zTol{/lang}</label></dt>
                           <dd>
                               <input type="text" id="zPosTolerance" name="zPosTolerance" value="{$zPosTolerance}">
                               <small>{lang}trlevel.generators.dustGenerator.tolerance.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>


                   <li class="generatorBox2">
                       <dl>
                           <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.speed{/lang}</h2>
                           <dt><label for="xSpeed">{lang}trlevel.generators.dustGenerator.speed.xSpeed{/lang}</label></dt>
                           <dd>
                               <input type="text" id="xSpeed" name="xSpeed" value="{$xSpeed}">
                               <small>{lang}trlevel.generators.dustGenerator.speed.description{/lang}</small>
                           </dd>

                       </dl>
                   </li>

                   <li class="generatorBox2">
                       <dl>
                           <dt><label for="ySpeed">{lang}trlevel.generators.dustGenerator.speed.ySpeed{/lang}</label></dt>
                           <dd>
                               <input type="text" id="ySpeed" name="ySpeed" value="{$ySpeed}">
                               <small>{lang}trlevel.generators.dustGenerator.speed.description{/lang}</small>
                           </dd>

                       </dl>
                   </li>

                   <li class="generatorBox2">
                       <dl>
                           <dt><label for="zSpeed">{lang}trlevel.generators.dustGenerator.speed.zSpeed{/lang}</label></dt>
                           <dd>
                               <input type="text" id="zSpeed" name="zSpeed" value="{$zSpeed}">
                               <small>{lang}trlevel.generators.dustGenerator.speed.description{/lang}</small>
                           </dd>

                       </dl>
                   </li>


                   <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.density{/lang}</h2>
                           <dd>
                               <input type="text" id="density" name="density" value="{$density}">
                               <small>{lang}trlevel.generators.dustGenerator.density.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox2">
                       <dl>
                           <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.spriteIndex{/lang}</h2>
                           <dd>
                               <input type="text" id="spriteIndex" name="spriteIndex" value="{$spriteIndex}">
                               <small>{lang}trlevel.generators.dustGenerator.spriteIndex.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                           <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.gravityTolerance{/lang}</h2>
                           <dd>
                               <input type="text" id="gravityTolerance " name="gravityTolerance " value="{$gravityTolerance}">
                               <small>{lang}trlevel.generators.dustGenerator.gravityTolerance.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li>
                       <dl>
                           <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.rotationTolerance{/lang}</h2>
                           <dd>
                               <input type="text" id="rotationTolerance" name="rotationTolerance" value="{$rotationTolerance}">
                               <small>{lang}trlevel.generators.dustGenerator.rotationTolerance.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>


                   <li class="blanco"></li><li class="blanco"></li>


                   <li class="generatorBox2">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.colorFrom{/lang}</h2>
                           <dt><label for="colorFromRed">{lang}trlevel.generators.dustGenerator.colorFrom.red{/lang}</label></dt>
                           <dd>
                               <input type="text" id="colorFromRed" name="colorFromRed" value="{$colorFromRed}">
                               <small>{lang}trlevel.generators.dustGenerator.colorFrom.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox2">
                       <dl>
                   <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.colorFrom{/lang}</h2>
                           <dt><label for="colorFromGreen">{lang}trlevel.generators.dustGenerator.colorFrom.green{/lang}</label></dt>
                           <dd>
                               <input type="text" id="colorFromGreen" name="colorFromGreen" value="{$colorFromGreen}">
                               <small>{lang}trlevel.generators.dustGenerator.colorFrom.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox2">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.colorFrom{/lang}</h2>
                           <dt><label for="colorFromBlue">{lang}trlevel.generators.dustGenerator.colorFrom.blue{/lang}</label></dt>
                           <dd>
                               <input type="text" id="colorFromBlue" name="colorFromBlue" value="{$colorFromBlue}">
                               <small>{lang}trlevel.generators.dustGenerator.colorFrom.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.colorTo{/lang}</h2>
                           <dt><label for="colorToRed">{lang}trlevel.generators.dustGenerator.colorTo.red{/lang}</label></dt>
                           <dd>
                               <input type="text" id="colorToRed" name="colorToRed" value="{$colorToRed}">
                               <small>{lang}trlevel.generators.dustGenerator.colorTo.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.colorTo{/lang}</h2>
                           <dt><label for="colorToGreen">{lang}trlevel.generators.dustGenerator.colorTo.green{/lang}</label></dt>
                           <dd>
                               <input type="text" id="colorToGreen" name="colorToGreen" value="{$colorToGreen}">
                               <small>{lang}trlevel.generators.dustGenerator.colorTo.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.colorTo{/lang}</h2>
                           <dt><label for="colorToBlue">{lang}trlevel.generators.dustGenerator.colorTo.blue{/lang}</label></dt>
                           <dd>
                               <input type="text" id="colorToBlue" name="colorToBlue" value="{$colorToBlue}">
                               <small>{lang}trlevel.generators.dustGenerator.colorTo.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>


                   <li class="generatorBox2">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.blendMode{/lang}</h2>
                           <dd>
                               <select name="blendMode">
                                   {foreach from=$blendModes item=blendMode key=key}
                                       <option value="{$key}"{if $selectedBlendMode == $key} selected{/if}>{$blendMode}</option>
                                   {/foreach}
                               </select>
                                   <small>{lang}trlevel.generators.dustGenerator.blendMode.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                           <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.startSizeTolerance{/lang}</h2>
                           <dd>
                               <input type="text" id="startSizeTolerance" name="startSizeTolerance" value="{$startSizeTolerance}">
                               <small>{lang}trlevel.generators.dustGenerator.startSizeTolerance.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox2">
                       <dl>
                           <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.endSizeTolerance{/lang}</h2>
                           <dd>
                               <input type="text" id="endSizeTolerance" name="endSizeTolerance" value="{$endSizeTolerance}">
                               <small>{lang}trlevel.generators.dustGenerator.endSizeTolerance.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                           <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.lifeTime{/lang}</h2>
                           <dd>
                               <input type="text" id="lifeTime" name="lifeTime" value="{$lifeTime}">
                               <small>{lang}trlevel.generators.dustGenerator.lifeTime.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>


                   <li class="generatorBox2">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.damageMode{/lang}</h2>
                           <dd>
                               <select name="damageMode">
                                   {foreach from=$damageModes item=damageMode key=key}
                                       <option value="{$key}"{if $selectedDamageMode == $key} selected{/if}>{$damageMode}</option>
                                   {/foreach}
                           </select>
                               <small>{lang}trlevel.generators.dustGenerator.damageMode.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.poisionMode{/lang}</h2>
                           <dd>
                               <select name="poisionMode">
                                   {foreach from=$poisionModes item=poisionMode key=key}
                                       <option value="{$key}"{if $selectedPoisionMode == $key} selected{/if}>{$poisionMode}</option>
                                   {/foreach}
                               </select>
                               <small>{lang}trlevel.generators.dustGenerator.poisionMode.description{/lang}</small>
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
       <dl><h2 class="sectionTitle">{lang}trlevel.generators.dustGenerator.luaCode{/lang}</h2></dl>
       
       {lang}trlevel.generators.dustGenerator.luaCodeToScript.description{/lang}
       
       <div id="codeCopyAnker"></div>
       <div class="codeBox">
           <code>
               <pre>
<textarea id="codeCopy" rows="20" disabled style="resize:none; overflow: auto;">{lang}trlevel.generators.dustGenerator.luaCodeToScript{/lang}</textarea>
               </pre>
           </code>
            
        
           <a class="button" href="{link controller='dust-generator'}{/link}#luaCodeAnker" onclick="markieren('codeCopy');">{lang}trlevel.generators.general.button.codeCopy{/lang}</a>
           
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
