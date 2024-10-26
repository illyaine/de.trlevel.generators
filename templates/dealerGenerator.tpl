{capture assign='pageTitle'}{lang}trlevel.generators.dealer.title{/lang}{/capture}


{capture assign='sidebarRight'}
  <section class="box">
      <h2 class="boxTitle">{lang}trlevel.generators.general.tutorial{/lang}</h2>
      <div class="boxContent">

      </div>

      <div class="boxContent">
          <div class="discussionProviderCtaContainer">
              <a href="https://www.trlevel.de/lexicon/index.php?entry/692" class="button buttonPrimary">{lang}trlevel.generators.general.button.toTutorial{/lang}</a>
          </div>
      </div>
  </section>
  {event name='boxes'}

{/capture}

{include file='header'}

  <header class="contentHeader">
      <div class="contentHeaderTitle">
          <h1 class="contentTitle">{lang}trlevel.generators.dealer.title{/lang}</h1>
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


    <form method="post" action="{link controller='dealer-generator'}{/link}#luaCodeAnker">
    
    {include file='trlevelGeneratorsHeader'}
    {include file='trlevelGeneratorsHeader' assign='trlevelGeneratorsHeaderDealer'}
    


        <ul class="particleGeneratorList">
            <li class="generatorBox1">
                <dl>
                 <h2 class="sectionTitle">{lang}trlevel.generators.dealer.coordinates{/lang}</h2>

                    <dd>
                        <input type="text" id="coordinates" name="coordinates" value="{$coordinates}">
                        <small>{lang}trlevel.generators.dealer.coordinates.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.generators.dealer.direction{/lang}</h2>

                    <dd>
                        <input type="text" id="direction" name="direction" value="{$direction}">
                        <small>{lang}trlevel.generators.dealer.direction.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox1">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.generators.dealer.cineBarsWeight{/lang}</h2>

                    <dd>
                        <input type="text" id="cineBarsWeight" name="cineBarsWeight" value="{$cineBarsWeight}">
                        <small>{lang}trlevel.generators.dealer.cineBarsWeight.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.generators.dealer.cineBarsCreationSpeed{/lang}</h2>

                    <dd>
                        <input type="text" id="cineBarsCreationSpeed" name="cineBarsCreationSpeed" value="{$cineBarsCreationSpeed}">
                        <small>{lang}trlevel.generators.dealer.cineBarsCreationSpeed.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.generators.dealer.positioningSpeed{/lang}</h2>

                    <dd>
                        <input type="text" id="positioningSpeed" name="positioningSpeed" value="{$positioningSpeed}">
                        <small>{lang}trlevel.generators.dealer.positioningSpeed.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox1">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.generators.dealer.paymentItem{/lang}</h2>
                    <dd>
                        <select name="paymentItem">
                            {foreach from=$paymentItems item=paymentItem key=key}
                                <option value="{$key}"{if $selectedPaymentItem == $key} selected{/if}>{$paymentItem}</option>
                            {/foreach}
                        </select>
                            <small>{lang}trlevel.generators.dealer.paymentItem.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.generators.dealer.cost{/lang}</h2>

                    <dd>
                        <input type="text" id="cost" name="cost" value="{$cost}">
                        <small>{lang}trlevel.generators.dealer.cost.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox1">
            <dl>
            <h2 class="sectionTitle">{lang}trlevel.generators.dealer.buyItem{/lang}</h2>
                <dd>
                    <select name="buyItem">
                    {foreach from=$buyItems item=buyItem key=key}
                         <option value="{$key}"{if $selectedBuyItem == $key} selected{/if}>{$buyItem}</option>
                      {/foreach}


                    </select>
                        <small>{lang}trlevel.generators.dealer.buyItem.description{/lang}</small>
                </dd>
            </dl>
        </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.generators.dealer.buyValue{/lang}</h2>

                    <dd>
                        <input type="text" id="buyValue" name="buyValue" value="{$buyValue}">
                        <small>{lang}trlevel.generators.dealer.buyValue.description{/lang}</small>
                    </dd>
                </dl>
            </li>


            <li class="generatorBox1">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.generators.dealer.confirmKey{/lang}</h2>
                    <dd>
                        <select name="confirmKey">
                            {foreach from=$confirmKeys item=confirmKey key=key}
                                <option value="{$key}"{if $selectedConfirmKey == $key} selected{/if}>{$confirmKey}</option>
                            {/foreach}
                        </select>
                            <small>{lang}trlevel.generators.dealer.confirmKey.description{/lang}</small>
                    </dd>
                 </dl>
             </li>

            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.generators.dealer.cancelKey{/lang}</h2>
                    <dd>
                    <select name="cancelKey">
                        {foreach from=$cancelKeys item=cancelKey key=key}
                        <option value="{$key}"{if $selectedCancelKey == $key} selected{/if}>{$cancelKey}</option>
                        {/foreach}
                        </select>
                        <small>{lang}trlevel.generators.dealer.cancelKey.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox1">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.generators.dealer.askForBuyingText{/lang}</h2>
                        <textarea id="askForBuyingText" name="askForBuyingText" cols="35" rows="4">{$askForBuyingText}</textarea>
                        <small>{lang}trlevel.generators.dealer.askForBuyingText.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.generators.dealer.thanksText{/lang}</h2>

                    <dd>
                        <textarea id="thanksText" name="thanksText" cols="35" rows="4">{$thanksText}</textarea>
                        <small>{lang}trlevel.generators.dealer.thanksText.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox1">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.generators.dealer.thanksTextDuration{/lang}</h2>

                    <dd>
                        <input type="text" id="thanksTextDuration" name="thanksTextDuration" value="{$thanksTextDuration}">
                        <small>{lang}trlevel.generators.dealer.thanksTextDuration.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.generators.dealer.notEnoughMoneyText{/lang}</h2>

                    <dd>
                        <input type="text" id="notEnoughMoneyText" name="notEnoughMoneyText" value="{$notEnoughMoneyText}">
                        <small>{lang}trlevel.generators.dealer.notEnoughMoneyText.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox1">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.generators.dealer.notEnoughMoneyTextDuration{/lang}</h2>

                    <dd>
                        <input type="text" id="notEnoughMoneyTextDuration" name="notEnoughMoneyTextDuration" value="{$notEnoughMoneyTextDuration}">
                        <small>{lang}trlevel.generators.dealer.notEnoughMoneyTextDuration.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.generators.dealer.nextTimeText{/lang}</h2>

                    <dd>
                        <textarea id="nextTimeText" name="nextTimeText" cols="35" rows="4">{$nextTimeText}</textarea>
                        <small>{lang}trlevel.generators.dealer.nextTimeText.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox1">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.generators.dealer.nextTimeTextDuration{/lang}</h2>
                    <dd>
                        <input type="text" id="nextTimeTextDuration" name="nextTimeTextDuration" value="{$nextTimeTextDuration}">
                        <small>{lang}trlevel.generators.dealer.nextTimeTextDuration.description{/lang}</small>
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
       <dl><h2 class="sectionTitle">{lang}trlevel.generators.dealer.luaCode{/lang}</h2></dl>

       <div class="codeBox">
            <code>
                <pre>
<textarea id="codeCopy" rows="20" disabled style="resize:none; overflow: auto;"> {lang}trlevel.generators.dealer.luaCodeToScript{/lang}</textarea>
                </pre>
            </code>

            <a class="button" href="{link controller='dealer-generator'}{/link}#luaCodeAnker" onclick="markieren('codeCopy');">{lang}trlevel.generators.general.button.codeCopy{/lang}</a>
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