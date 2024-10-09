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
           <h1 class="contentTitle">{lang}trlevel.particleGenerator.dustGenerator.title{/lang}</h1>
       </div>
   </header>
   
   <a href="#luaCodeAnker" class="button buttonPrimary">zum LUA Code </a>
   
       <form method="post" action="{link controller='dust-generator'}{/link}#luaCodeAnker">
           <ul class="particleGeneratorList">
                   <li class="generatorBox2">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.functionName{/lang}</h2>

                           <dd>
                               <input type="text" id="functionName" name="functionName" value="{$functionName}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.functionName.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>
                   
                   <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.staticSlot{/lang}</h2>

                           <dd>
                               <input type="text" id="staticSlot" name="staticSlot" value="{$staticSlot}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.staticSlot.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>


                   <li class="generatorBox2">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.moveableSlot{/lang}</h2>
                           <dd>
                               <input type="text" id="moveableSlot" name="moveableSlot" value="{$moveableSlot}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.moveableSlot.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.tolerance{/lang}</h2>
                           <dt><label for="xPosTolerance">{lang}trlevel.particleGenerator.dustGenerator.tolerance.xTol{/lang}</label></dt>
                           <dd>
                               <input type="text" id="xPosTolerance" name="xPosTolerance" value="{$xPosTolerance}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.tolerance.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                           <dt><label for="yPosTolerance">{lang}trlevel.particleGenerator.dustGenerator.tolerance.yTol{/lang}</label></dt>
                           <dd>
                               <input type="text" id="yPosTolerance" name="yPosTolerance" value="{$yPosTolerance}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.tolerance.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                           <dt><label for="zPosTolerance">{lang}trlevel.particleGenerator.dustGenerator.tolerance.zTol{/lang}</label></dt>
                           <dd>
                               <input type="text" id="zPosTolerance" name="zPosTolerance" value="{$zPosTolerance}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.tolerance.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>


                   <li class="generatorBox2">
                       <dl>
                           <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.speed{/lang}</h2>
                           <dt><label for="xSpeed">{lang}trlevel.particleGenerator.dustGenerator.speed.xSpeed{/lang}</label></dt>
                           <dd>
                               <input type="text" id="xSpeed" name="xSpeed" value="{$xSpeed}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.speed.description{/lang}</small>
                           </dd>

                       </dl>
                   </li>

                   <li class="generatorBox2">
                       <dl>
                           <dt><label for="ySpeed">{lang}trlevel.particleGenerator.dustGenerator.speed.ySpeed{/lang}</label></dt>
                           <dd>
                               <input type="text" id="ySpeed" name="ySpeed" value="{$ySpeed}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.speed.description{/lang}</small>
                           </dd>

                       </dl>
                   </li>

                   <li class="generatorBox2">
                       <dl>
                           <dt><label for="zSpeed">{lang}trlevel.particleGenerator.dustGenerator.speed.zSpeed{/lang}</label></dt>
                           <dd>
                               <input type="text" id="zSpeed" name="zSpeed" value="{$zSpeed}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.speed.description{/lang}</small>
                           </dd>

                       </dl>
                   </li>


                   <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.density{/lang}</h2>
                           <dd>
                               <input type="text" id="density" name="density" value="{$density}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.density.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox2">
                       <dl>
                           <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.spriteIndex{/lang}</h2>
                           <dd>
                               <input type="text" id="spriteIndex" name="spriteIndex" value="{$spriteIndex}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.spriteIndex.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                           <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.gravityTolerance{/lang}</h2>
                           <dd>
                               <input type="text" id="gravityTolerance " name="gravityTolerance " value="{$gravityTolerance}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.gravityTolerance.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li>
                       <dl>
                           <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.rotationTolerance{/lang}</h2>
                           <dd>
                               <input type="text" id="rotationTolerance" name="rotationTolerance" value="{$rotationTolerance}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.rotationTolerance.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>


                   <li class="blanco"></li><li class="blanco"></li>


                   <li class="generatorBox2">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.colorFrom{/lang}</h2>
                           <dt><label for="colorFromRed">{lang}trlevel.particleGenerator.dustGenerator.colorFrom.red{/lang}</label></dt>
                           <dd>
                               <input type="text" id="colorFromRed" name="colorFromRed" value="{$colorFromRed}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.colorFrom.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox2">
                       <dl>
                   <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.colorFrom{/lang}</h2>
                           <dt><label for="colorFromGreen">{lang}trlevel.particleGenerator.dustGenerator.colorFrom.green{/lang}</label></dt>
                           <dd>
                               <input type="text" id="colorFromGreen" name="colorFromGreen" value="{$colorFromGreen}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.colorFrom.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox2">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.colorFrom{/lang}</h2>
                           <dt><label for="colorFromBlue">{lang}trlevel.particleGenerator.dustGenerator.colorFrom.blue{/lang}</label></dt>
                           <dd>
                               <input type="text" id="colorFromBlue" name="colorFromBlue" value="{$colorFromBlue}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.colorFrom.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.colorTo{/lang}</h2>
                           <dt><label for="colorToRed">{lang}trlevel.particleGenerator.dustGenerator.colorTo.red{/lang}</label></dt>
                           <dd>
                               <input type="text" id="colorToRed" name="colorToRed" value="{$colorToRed}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.colorTo.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.colorTo{/lang}</h2>
                           <dt><label for="colorToGreen">{lang}trlevel.particleGenerator.dustGenerator.colorTo.green{/lang}</label></dt>
                           <dd>
                               <input type="text" id="colorToGreen" name="colorToGreen" value="{$colorToGreen}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.colorTo.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.colorTo{/lang}</h2>
                           <dt><label for="colorToBlue">{lang}trlevel.particleGenerator.dustGenerator.colorTo.blue{/lang}</label></dt>
                           <dd>
                               <input type="text" id="colorToBlue" name="colorToBlue" value="{$colorToBlue}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.colorTo.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>


                   <li class="generatorBox2">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.blendMode{/lang}</h2>
                           <dd>
                               <select name="blendMode">
                                   {foreach from=$blendModes item=blendMode key=key}
                                       <option value="{$key}"{if $selectedBlendMode == $key} selected{/if}>{$blendMode}</option>
                                   {/foreach}
                               </select>
                                   <small>{lang}trlevel.particleGenerator.dustGenerator.dustGenerator.blendMode.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                           <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.startSizeTolerance{/lang}</h2>
                           <dd>
                               <input type="text" id="startSizeTolerance" name="startSizeTolerance" value="{$startSizeTolerance}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.startSizeTolerance.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox2">
                       <dl>
                           <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.endSizeTolerance{/lang}</h2>
                           <dd>
                               <input type="text" id="endSizeTolerance" name="endSizeTolerance" value="{$endSizeTolerance}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.endSizeTolerance.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                           <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.lifeTime{/lang}</h2>
                           <dd>
                               <input type="text" id="lifeTime" name="lifeTime" value="{$lifeTime}">
                               <small>{lang}trlevel.particleGenerator.dustGenerator.lifeTime.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>


                   <li class="generatorBox2">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.damageMode{/lang}</h2>
                           <dd>
                               <select name="damageMode">
                                   {foreach from=$damageModes item=damageMode key=key}
                                       <option value="{$key}"{if $selectedDamageMode == $key} selected{/if}>{$damageMode}</option>
                                   {/foreach}
                           </select>
                               <small>{lang}trlevel.particleGenerator.dustGenerator.damageMode.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.poisionMode{/lang}</h2>
                           <dd>
                               <select name="poisionMode">
                                   {foreach from=$poisionModes item=poisionMode key=key}
                                       <option value="{$key}"{if $selectedPoisionMode == $key} selected{/if}>{$poisionMode}</option>
                                   {/foreach}
                               </select>
                               <small>{lang}trlevel.particleGenerator.dustGenerator.poisionMode.description{/lang}</small>
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
       <dl><h2 class="sectionTitle">{lang}trlevel.particleGenerator.dustGenerator.luaCode{/lang}</h2></dl>
       
       {lang}trlevel.particleGenerator.dustGenerator.luaCodeToScript.description{/lang}
       
       <div class="codeBox">
           <code>
               <pre>
<textarea id="myInput" rows="20" disabled style="resize:none; overflow: auto;"> {lang}trlevel.particleGenerator.dustGenerator.luaCodeToScript{/lang}
</textarea>
               </pre>
           </code>

           <button class="button " data-copy="#luaCodeCopy">{lang}trlevel.particleGenerator.dustGenerator.button.copy{/lang}</button>
           <div class="msg"></div>
       </div>
       
       

<button onclick="myFunction()">Copy text</button>

<script>
function myFunction() {
 // Get the text field
 var copyText = document.getElementById("myInput");

 // Select the text field
 copyText.select();
 copyText.setSelectionRange(0, 99999); // For mobile devices

 // Copy the text inside the text field
 navigator.clipboard.writeText(copyText.value);

 // Alert the copied text
 alert("Copied the text: " + copyText.value); } </script>

{include file='footer'}