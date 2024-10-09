{capture assign='pageTitle'}{lang}trlevel.particleGenerator.dealer.title{/lang}{/capture}


{capture assign='sidebarRight'}
  <section class="box">
      <h2 class="boxTitle">{lang}trlevel.particleGenerator.dealer.tutorial{/lang}</h2>
      <div class="boxContent">

      </div>

      <div class="boxContent">
          <div class="discussionProviderCtaContainer">
              <a href="https://www.trlevel.de/lexicon/index.php?entry/689-staubpartikel-particleemitter-tutorial-generator/" class="button buttonPrimary">{lang}trlevel.particleGenerator.button.title{/lang}</a>
          </div>
      </div>
  </section>
  {event name='boxes'}

{/capture}

{include file='header'}

  <header class="contentHeader">
      <div class="contentHeaderTitle">
          <h1 class="contentTitle">{lang}trlevel.particleGenerator.dealer.title{/lang}</h1>
      </div>
  </header>

    <a href="#luaCodeAnker" class="button buttonPrimary">zum LUA Code </a>

    <form method="post" action="{link controller='dealer-generator'}{/link}#luaCodeAnker">
        <ul class="particleGeneratorList">
            <li class="generatorBox1">
                <dl>
                 <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.coordinates{/lang}</h2>

                    <dd>
                        <input type="text" id="coordinates" name="coordinates" value="{$coordinates}">
                        <small>{lang}trlevel.particleGenerator.dealer.coordinates.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.direction{/lang}</h2>

                    <dd>
                        <input type="text" id="direction" name="direction" value="{$direction}">
                        <small>{lang}trlevel.particleGenerator.dealer.direction.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox1">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.cineBarsWeight{/lang}</h2>

                    <dd>
                        <input type="text" id="cineBarsWeight" name="cineBarsWeight" value="{$cineBarsWeight}">
                        <small>{lang}trlevel.particleGenerator.dealer.cineBarsWeight.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.cineBarsCreationSpeed{/lang}</h2>

                    <dd>
                        <input type="text" id="cineBarsCreationSpeed" name="cineBarsCreationSpeed" value="{$cineBarsCreationSpeed}">
                        <small>{lang}trlevel.particleGenerator.dealer.cineBarsCreationSpeed.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.positioningSpeed{/lang}</h2>

                    <dd>
                        <input type="text" id="positioningSpeed" name="positioningSpeed" value="{$positioningSpeed}">
                        <small>{lang}trlevel.particleGenerator.dealer.positioningSpeed.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.paymentItem{/lang}</h2>
                    <dd>
                        <select name="paymentItem">
                            {foreach from=$paymentItems item=paymentItem key=key}
                                <option value="{$key}"{if $selectedPaymentItem == $key} selected{/if}>{$paymentItem}</option>
                            {/foreach}
                        </select>
                            <small>{lang}trlevel.particleGenerator.dealer.paymentItem.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.cost{/lang}</h2>

                    <dd>
                        <input type="text" id="cost" name="cost" value="{$cost}">
                        <small>{lang}trlevel.particleGenerator.dealer.cost.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
            <dl>
            <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.buyItem{/lang}</h2>
                <dd>
                    <select name="buytItem">
                        {foreach from=$buyItems item=buyItem key=key}
                            <option value="{$key}"{if $selectedBuyItem == $key} selected{/if}>{$buyItem}</option>
                        {/foreach}
                    </select>
                        <small>{lang}trlevel.particleGenerator.dealer.buyItem.description{/lang}</small>
                </dd>
            </dl>
        </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.buyValue{/lang}</h2>

                    <dd>
                        <input type="text" id="buyValue" name="buyValue" value="{$buyValue}">
                        <small>{lang}trlevel.particleGenerator.dealer.buyValue.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox1">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.confirmKey{/lang}</h2>

                    <dd>
                        <input type="text" id="confirmKey" name="confirmKey" value="{$confirmKey}">
                        <small>{lang}trlevel.particleGenerator.dealer.confirmKey.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.cancelKey{/lang}</h2>

                    <dd>
                        <input type="text" id="cancelKey" name="cancelKey" value="{$cancelKey}">
                        <small>{lang}trlevel.particleGenerator.dealer.cancelKey.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox1">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.askForBuyingText{/lang}</h2>

                    <dd>
                        <input type="text" id="askForBuyingText" name="askForBuyingText" value="{$askForBuyingText}">
                        <small>{lang}trlevel.particleGenerator.dealer.askForBuyingText.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.thanksText{/lang}</h2>

                    <dd>
                        <input type="text" id="thanksText" name="thanksText" value="{$thanksText}">
                        <small>{lang}trlevel.particleGenerator.dealer.thanksText.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox1">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.thanksTextDuration{/lang}</h2>

                    <dd>
                        <input type="text" id="thanksTextDuration" name="thanksTextDuration" value="{$thanksTextDuration}">
                        <small>{lang}trlevel.particleGenerator.dealer.thanksTextDuration.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.notEnoughMoneyText{/lang}</h2>

                    <dd>
                        <input type="text" id="notEnoughMoneyText" name="notEnoughMoneyText" value="{$notEnoughMoneyText}">
                        <small>{lang}trlevel.particleGenerator.dealer.notEnoughMoneyText.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox1">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.notEnoughMoneyTextDuration{/lang}</h2>

                    <dd>
                        <input type="text" id="notEnoughMoneyTextDuration" name="notEnoughMoneyTextDuration" value="{$notEnoughMoneyTextDuration}">
                        <small>{lang}trlevel.particleGenerator.dealer.notEnoughMoneyTextDuration.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox2">
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.nextTimeText{/lang}</h2>

                    <dd>
                        <input type="text" id="nextTimeText" name="nextTimeText" value="{$nextTimeText}">
                        <small>{lang}trlevel.particleGenerator.dealer.nextTimeText.description{/lang}</small>
                    </dd>
                </dl>
            </li>
            <li class="generatorBox11>
                <dl>
                <h2 class="sectionTitle">{lang}trlevel.particleGenerator.dealer.nextTimeTextDuration{/lang}</h2>

                    <dd>
                        <input type="text" id="nextTimeTextDuration" name="nextTimeTextDuration" value="{$nextTimeTextDuration}">
                        <small>{lang}trlevel.particleGenerator.dealer.nextTimeTextDuration.description{/lang}</small>
                    </dd>
                </dl>
            </li>

        </ul>
   </form>

   {$languageTestTR}

   <div id="luaCodeAnker"></div>
       <dl><h2 class="sectionTitle">{lang}trlevel.particleGenerator.luaCode{/lang}</h2></dl>
       
       {lang}trlevel.particleGenerator.dealerCodeToScript.description{/lang}
       
       <div class="codeBox">
           <code>
               <pre>
<textarea id="myInput" rows="20" disabled style="resize:none; overflow: auto;">
-- Koordinaten des Händlers, bei dem Lara zum Kauf hingezogen werden soll (gebe die Position der Volume Box ein oder wenn du eine andere Position möchtest, füge diese hier ein.)
local coordinates = TEN.Vec3(54784, -0, 67072)

-- Richtung von Lara, nachdem sie zur Händlerposition gezogen wurde (0 = NORDEN, 90 = OST, 180 = Süden, 270 = Westen)
local direction = 0

-- Größe der CineBars in px
local cineBarsWeight = 120

-- Geschwindigkeit, mit der die Cinebar erstellt wird (Sekunden x 30)
local cineBarsCreationSpeed = 90

-- Positionierung von Lara in X Sekunden
local positioningSpeed = 2

-- Welches Objekt soll zur Zahlung verwendet werden?
local paymentItem = TEN.Objects.ObjID.PUZZLE_ITEM9

-- Wieviele Objekte werden für den Kauf benötigt?
local cost = 1

-- Welches Item kann gekauft werden?
local buyItem = TEN.Objects.ObjID.BIGMEDI_ITEM

-- Wieviele Items werden je Kauf erhalten?
local buyValue = 1

-- Tastatur Befehl zum Bestätigen der Zahlung
local confirmKey = ActionID.ACTION

-- Tastatur Befehl zum Ablehnen des Kaufes (INVENTORY = ESC, aber es funktioniert nicht richtig, weil das Inventar geöffnet wird...)
local cancelKey = ActionID.WALK

-- Text für die Händleranfrage
local askForBuyingText = "Hey, do you want to buy? YES - (ACTION) NO - (WALK)"

-- Text, nachdem Lara die Artikel gekauft hat
local thanksText = "Thx for buying!"

-- Dauer der Anzeige des Textes „Lara hatte gekauft“ (in Sekunden)
local thanksTextDuration = 2

-- Text wenn Lara nicht genug Geld hat
local notEnoughMoneyText = "Oh dear, you dont have enough money!"

-- Dauer der Anzeige des "Nicht genug Geld" (in Sekunden)
local notEnoughMoneyTextDuration = 2

-- Text, wenn der Spieler sich dafür entscheidet, es nicht zu kaufen
local nextTimeText = "Ok, then another time!"

-- Dauer der Anzeige des "Nicht kaufen Text" (in Sekunden)
local nextTimeTextDuration = 2

-- Initialise local Variables
local endDialog = false
local buy = false
local nextTime = DisplayString(nextTimeText, 100, 200, Color.new(255,255,255))
local notEnoughMoney = DisplayString(notEnoughMoneyText, 100, 200, Color.new(255,255,255))
local thanks = DisplayString(thanksText, 100, 200, Color.new(255,255,255))
local asksForBuying = DisplayString(askForBuyingText, 100, 200, Color.new(255,255,255))

-- Kaufen Funktion
function InteractWithMerchant(activator)
    -- if ACTION is hit and Lara has not Start the dialog
    if KeyIsHit(ActionID.ACTION) and not LaraStartMerchantDialog then
        -- Initial abort buying and hide strings
        buy = false
        endDialog = false
        HideString(thanks)
        HideString(nextTime)
        HideString(notEnoughMoney)
        
        -- Start dialog
        LaraStartMerchantDialog = true
        -- Set Cine Bars
        SetCineBars(cineBarsWeight, cineBarsCreationSpeed)
        
        -- Move Lara to Merchant
        LevelFuncs.Engine.Node.ChangeMoveablePositionOverTimespan(
            activator:GetName(), --who
            coordinates, --where
            false, --relative coordinates
            positioningSpeed, --how long
            true --smooth
        )
        
        -- Rotate Lara to Merchant
        LevelFuncs.Engine.Node.ChangeMoveableRotationOverTimespan(
            activator:GetName(), --who
            direction, --direction (degrees)
            false, --relative coordinates
            positioningSpeed, --how long
            true --smooth
        )
        
        ShowString(asksForBuying)
    -- otherwise
    else
        -- if confirmKey is hit and Lara has started the dialog and not buy and not end the dialog
        if KeyIsHit(confirmKey) and LaraStartMerchantDialog and not buy and not endDialog then
            HideString(asksForBuying)
            if (GetItemCount(paymentItem) >= cost) then        
                buy = true
                ShowString(thanks, thanksTextDuration)
                -- buy x items and remove y items for payment
                Buy(buyItem, buyValue, paymentItem, cost)
            else
                -- not enough money
                buy = false
                ShowString(notEnoughMoney, notEnoughMoneyTextDuration)
            end
            -- remove cinebars (set 0 with speed of 90)
            SetCineBars(0, cineBarsCreationSpeed)
            endDialog = true
            LaraStartMerchantDialog = false
        end
        
        -- if cancelKey is hit and Lara has started the dialog and not end the dialog
        if KeyIsHit(cancelKey) and LaraStartMerchantDialog and not endDialog then
            buy = false
            endDialog = true
            HideString(asksForBuying)
            ShowString(nextTime, nextTimeTextDuration)
            -- remove cinebars (set 0 with speed of 90)
            SetCineBars(0, cineBarsCreationSpeed)
            LaraStartMerchantDialog = false
        end
    end
end

-- function when Lara leave the volume box
function StopInteractWithMerchant(activator)
    LaraStartMerchantDialog = false
    -- remove cinebars (set 0 with speed of 90)
    SetCineBars(0, cineBarsCreationSpeed)
    -- hide all strings
    HideString(asksForBuying)
    HideString(thanks)
    HideString(nextTime)
end

-- internal function for buying items
function Buy(buyItem, buyValue, payItem, payValue)
    TakeItem(payItem, payValue)
    GiveItem(buyItem, buyValue, true)
end
</textarea>
               </pre>
           </code>

           <button class="button " data-copy="#luaCodeCopy">{lang}trlevel.particleGenerator.button.copy{/lang}</button>
           <div class="msg"></div>
       </div>

{include file='footer'}