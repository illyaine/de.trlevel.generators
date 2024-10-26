{capture assign='pageTitle'}{lang}trlevel.generators.damageGenerator.title{/lang}{/capture}


{capture assign='sidebarRight'}
   <section class="box">
       <h2 class="boxTitle">{lang}trlevel.generators.general.tutorial{/lang}</h2>
       <div class="boxContent">
           
       </div>
       
       <div class="boxContent">
           <div class="discussionProviderCtaContainer">
               <a href="https://www.trlevel.de/lexicon/index.php?entry/699" class="button buttonPrimary">{lang}trlevel.generators.general.button.toTutorial{/lang}</a>
           </div>
       </div>
   </section>
   {event name='boxes'}

{/capture}

{include file='header'}

   <header class="contentHeader">
       <div class="contentHeaderTitle">
           <h1 class="contentTitle">{lang}trlevel.generators.xxx.xxx{/lang}</h1>
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

   
       <form method="post" action="{link controller='damage-generator'}{/link}#luaCodeAnker">
            {include file='trlevelGeneratorsHeader'}
            {include file='trlevelGeneratorsHeader' assign='trlevelGeneratorsHeaderDamage'}  

           <ul class="particleGeneratorList">
                   <li class="generatorBox2">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.damageGenerator.functionName{/lang}</h2>

                           <dd>
                               <input type="text" id="functionName" name="functionName" value="{$functionName}">
                               <small>{lang}trlevel.generators.damageGenerator.functionName.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.damageGenerator.healthpointsLostPerFrame{/lang}
                       </h2>
                           <dd>
                               <input type="text" id="healthpointsLostPerFrame" name="healthpointsLostPerFrame" value="{$healthpointsLostPerFrame}">
                               <small>{lang}trlevel.generators.damageGenerator.healthpointsLostPerFrame.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                    <li class="generatorBox1">
                        <dl>
                        <h2 class="sectionTitle">{lang}trlevel.generators.damageGenerator.getObjectID{/lang} - <a href="#" class="jsTooltip jsStaticDialog" data-dialog-id="moveableItemsDetails" title="Moveable slot info">{icon name='info' type='solid'}</a>
                        </h2>
                            <dd>
                                <input type="text" id="getObjectID" name="getObjectID" value="{$getObjectID}">
                                <small>{lang}trlevel.generators.damageGenerator.getObjectID.description{/lang}</small>
                            </dd>
                        </dl>
                    </li>

                    <li class="generatorBox1">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.damageGenerator.moveableSlots{/lang}
                       </h2>
                           <dd>
                               <input type="text" id="moveableSlots" name="moveableSlots" value="{$moveableSlots}">
                               <small>{lang}trlevel.generators.damageGenerator.moveableSlots.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox2">
                       <dl>
                       <h2 class="sectionTitle">{lang}trlevel.generators.damageGenerator.xxx{/lang}</h2>
                           <dd>
                               <select name="damageMode">
                                   {foreach from=$damageModes item=damageMode key=key}
                                       <option value="{$key}"{if $selectedDamageMode == $key} selected{/if}>{$damageMode}</option>
                                   {/foreach}
                           </select>
                               <small>{lang}trlevel.generators.damageGenerator.xxx.description{/lang}</small>
                           </dd>
                       </dl>
                   </li>

                   <li class="generatorBox2">
                   <dl>
                   <h2 class="sectionTitle">{lang}trlevel.generators.xx.tenMoveableList{/lang}</h2>
                       <dd>
                           <select name="tenMoveableList">
                               {foreach from=$tenMoveableLists item=tenMoveableList key=key}
                                   <option value="{$key}"{if $selectedTenMoveableList == $key} selected{/if}>{$tenMoveableList}</option>
                               {/foreach}
                           </select>
                               <small>{lang}trlevel.generators.xxxx.tenMoveableList.description{/lang}</small>
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
       <dl><h2 class="sectionTitle">{lang}trlevel.generators.xxx.xxx{/lang}</h2></dl>
       
       {lang}trlevel.generators.damageGenerator.luaCodeToScript.description{/lang}
       
       <div class="codeBox">
           <code>
               <pre>
<textarea id="codeCopy" rows="20" disabled style="resize:none; overflow: auto;"> {lang}trlevel.generators.XXX.XXX{/lang}
LevelFuncs.OnStart = function() 
	{$functionName}()
end

LevelFuncs.__Collided = function(obj1, obj2)
	local healthpointsLostPerFrame = {$healthpointsLostPerFrame}
	
	if obj2:GetObjectID() ~= ObjID.{$getObjectID} then
		return
	end
	
	PlaySound(31,obj2:GetPosition())
	EmitBlood((obj2:GetJointPosition(math.random(0,14))),20)
	obj2:SetHP(obj2:GetHP() - healthpointsLostPerFrame)
end

function {$functionName}()
    local moveableSlots = {
        {$moveableSlots} --'ANIMATING9'
    }
    for index, moveableSlot in pairs({$moveableSlots}) do
        local moveables = GetMoveablesBySlot({$moveableSlots})
        for index, moveable in pairs(moveables) do
            moveable:SetOnCollidedWithObject(LevelFuncs.__Collided)
        end
    end
end
</textarea>
               </pre>
           </code>

           <a class="button" href="{link controller='trlevel-generator'}{/link}#luaCodeAnker" onclick="markieren('codeCopy');">{lang}trlevel.generators.general.button.codeCopy{/lang}</a>
       </div>
       
       <div id="moveableItemsDetails">
            {include file='trlevelGeneratorsTENMoveableList'}
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