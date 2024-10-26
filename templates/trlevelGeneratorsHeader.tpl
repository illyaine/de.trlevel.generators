<header class="contentHeaderGenerators">
       
            <h2 class="boxTitle">
            <a href="{link controller='User' object=$__wcf->user}{/link}"> {@$__wcf->getUserProfileHandler()->getAvatar()->getImageTag(48)} </a>                                      
            <script type="text/javascript">
                                //<![CDATA[
                                function displayTitle() {
                                var date = new Date();
                                var hours = date.getHours();
                                    if (hours >= 0) { 
                                    dayTime = "Na, noch wach, {if $__wcf->getUser()->userID != 0}{$__wcf->getUser()->username}{else}Besucher{/if}";
                                    }
                                    if (hours >= 6) {
                                    dayTime = "Guten Morgen, {if $__wcf->getUser()->userID != 0}{$__wcf->getUser()->username}{else}Besucher{/if}";
                                    }
                                    if ((hours >= 12) && (hours < 18)) {
                                    dayTime = "Guten Tag, {if $__wcf->getUser()->userID != 0}{$__wcf->getUser()->username}{else}Besucher{/if}";
                                    }
                                    if (hours >= 18) {
                                    dayTime = "Guten Abend, {if $__wcf->getUser()->userID != 0}{$__wcf->getUser()->username}{else}Besucher{/if}";
                                    }
                                    document.write('' + dayTime + '');
                                }
                                displayTitle();
                                //]]>
                            </script>
            
                </h2>
				{if $trlevelGeneratorsHeaderDealer|isset}
					{lang}trlevel.generators.dealer.infoTextBox{/lang}
				{/if}

				{if $trlevelGeneratorsHeaderDust|isset}
					{lang}trlevel.generators.dustGenerator.infoTextBox{/lang}
				{/if}
				
				{if $trlevelGeneratorsHeaderDamage|isset}
					{lang}trlevel.generators.damageGenerator.infoTextBox{/lang}
				{/if}

</header>