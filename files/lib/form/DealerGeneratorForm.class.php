<?php

namespace wcf\form;

use wcf\system\WCF;
use wcf\util\StringUtil;

class DealerGeneratorForm extends AbstractForm	{

	 /**
     * Thanks to l.m. (TRLevel.de) and Hanashi (WoltLab.com Board)
     */
	
    /**
     * @var string[]
     */
    protected array $paymentItems = [
        'QUEST_ITEM1',
		'QUEST_ITEM2',
		'QUEST_ITEM3',
		'QUEST_ITEM4',
		'QUEST_ITEM5',
		'QUEST_ITEM6',
		'PUZZLE_ITEM1',
		'PUZZLE_ITEM2',
		'PUZZLE_ITEM3',
		'PUZZLE_ITEM4',
		'PUZZLE_ITEM5',
		'PUZZLE_ITEM6',
		'PUZZLE_ITEM7',
		'PUZZLE_ITEM8',
		'PUZZLE_ITEM9',
		'PUZZLE_ITEM10',
		'PUZZLE_ITEM11',
		'PUZZLE_ITEM12',
		'PUZZLE_ITEM1_COMBO1',
		'PUZZLE_ITEM1_COMBO2',
		'PUZZLE_ITEM2_COMBO1',
		'PUZZLE_ITEM2_COMBO2',
		'PUZZLE_ITEM3_COMBO1',
		'PUZZLE_ITEM3_COMBO2',
		'PUZZLE_ITEM4_COMBO1',
		'PUZZLE_ITEM4_COMBO2',
		'PUZZLE_ITEM5_COMBO1',
		'PUZZLE_ITEM5_COMBO2',
		'PUZZLE_ITEM6_COMBO1',
		'PUZZLE_ITEM6_COMBO2',
		'PUZZLE_ITEM7_COMBO1',
		'PUZZLE_ITEM7_COMBO2',
		'PUZZLE_ITEM8_COMBO1',
		'PUZZLE_ITEM8_COMBO2',
		'KEY_ITEM1',
		'KEY_ITEM2',
		'KEY_ITEM3',
		'KEY_ITEM4',
		'KEY_ITEM6',
		'KEY_ITEM7',
		'KEY_ITEM8',
		'KEY_ITEM9',
		'KEY_ITEM10',
		'KEY_ITEM11',
		'KEY_ITEM12',
		'KEY_ITEM1_COMBO1',
		'KEY_ITEM1_COMBO2',
		'KEY_ITEM2_COMBO1',
		'KEY_ITEM2_COMBO2',
		'KEY_ITEM3_COMBO1',
		'KEY_ITEM3_COMBO2',
		'KEY_ITEM4_COMBO1',
		'KEY_ITEM4_COMBO2',
		'KEY_ITEM5_COMBO1',
		'KEY_ITEM5_COMBO2',
		'KEY_ITEM6_COMBO1',
		'KEY_ITEM6_COMBO2',
		'KEY_ITEM7_COMBO1',
		'KEY_ITEM7_COMBO2',
		'KEY_ITEM8_COMBO1',
		'KEY_ITEM8_COMBO2',
		'PICKUP_ITEM1',
		'PICKUP_ITEM2',
		'PICKUP_ITEM3',
		'PICKUP_ITEM4',
		'PICKUP_ITEM1_COMBO1',
		'PICKUP_ITEM1_COMBO2',
		'PICKUP_ITEM2_COMBO1',
		'PICKUP_ITEM2_COMBO2',
		'PICKUP_ITEM3_COMBO1',
		'PICKUP_ITEM3_COMBO2',
		'PICKUP_ITEM4_COMBO1',
		'PICKUP_ITEM4_COMBO2',
		'EXAMINE1',
		'EXAMINE2',
		'EXAMINE3',       
    ];

	protected array $buyItems = [
        'QUEST_ITEM1',
		'QUEST_ITEM2',
		'QUEST_ITEM3',
		'QUEST_ITEM4',
		'QUEST_ITEM5',
		'QUEST_ITEM6',
		'PUZZLE_ITEM1',
		'PUZZLE_ITEM2',
		'PUZZLE_ITEM3',
		'PUZZLE_ITEM4',
		'PUZZLE_ITEM5',
		'PUZZLE_ITEM6',
		'PUZZLE_ITEM7',
		'PUZZLE_ITEM8',
		'PUZZLE_ITEM9',
		'PUZZLE_ITEM10',
		'PUZZLE_ITEM11',
		'PUZZLE_ITEM12',
		'PUZZLE_ITEM1_COMBO1',
		'PUZZLE_ITEM1_COMBO2',
		'PUZZLE_ITEM2_COMBO1',
		'PUZZLE_ITEM2_COMBO2',
		'PUZZLE_ITEM3_COMBO1',
		'PUZZLE_ITEM3_COMBO2',
		'PUZZLE_ITEM4_COMBO1',
		'PUZZLE_ITEM4_COMBO2',
		'PUZZLE_ITEM5_COMBO1',
		'PUZZLE_ITEM5_COMBO2',
		'PUZZLE_ITEM6_COMBO1',
		'PUZZLE_ITEM6_COMBO2',
		'PUZZLE_ITEM7_COMBO1',
		'PUZZLE_ITEM7_COMBO2',
		'PUZZLE_ITEM8_COMBO1',
		'PUZZLE_ITEM8_COMBO2',
		'KEY_ITEM1',
		'KEY_ITEM2',
		'KEY_ITEM3',
		'KEY_ITEM4',
		'KEY_ITEM6',
		'KEY_ITEM7',
		'KEY_ITEM8',
		'KEY_ITEM9',
		'KEY_ITEM10',
		'KEY_ITEM11',
		'KEY_ITEM12',
		'KEY_ITEM1_COMBO1',
		'KEY_ITEM1_COMBO2',
		'KEY_ITEM2_COMBO1',
		'KEY_ITEM2_COMBO2',
		'KEY_ITEM3_COMBO1',
		'KEY_ITEM3_COMBO2',
		'KEY_ITEM4_COMBO1',
		'KEY_ITEM4_COMBO2',
		'KEY_ITEM5_COMBO1',
		'KEY_ITEM5_COMBO2',
		'KEY_ITEM6_COMBO1',
		'KEY_ITEM6_COMBO2',
		'KEY_ITEM7_COMBO1',
		'KEY_ITEM7_COMBO2',
		'KEY_ITEM8_COMBO1',
		'KEY_ITEM8_COMBO2',
		'PICKUP_ITEM1',
		'PICKUP_ITEM2',
		'PICKUP_ITEM3',
		'PICKUP_ITEM4',
		'PICKUP_ITEM1_COMBO1',
		'PICKUP_ITEM1_COMBO2',
		'PICKUP_ITEM2_COMBO1',
		'PICKUP_ITEM2_COMBO2',
		'PICKUP_ITEM3_COMBO1',
		'PICKUP_ITEM3_COMBO2',
		'PICKUP_ITEM4_COMBO1',
		'PICKUP_ITEM4_COMBO2',
		'EXAMINE1',
		'EXAMINE2',
		'EXAMINE3',       
    ];



	protected string $coordinates = '';
	protected string $direction = '0';
	protected string $cineBarsWeight = '120';
	protected string $cineBarsCreationSpeed = '120';
	
	protected string $positioningSpeed = '2';
	protected int $selectedPaymentItem = 0;
	protected int $selectedBuyItem = 0;
	protected string $cost = '1';
	protected string $buyItem = '';
	protected string $buyValue = '';
	protected string $confirmKey = '';
	protected string $cancelKey = '';
	protected string $askForBuyingText = '';
	protected string $thanksText = '';
	protected string $thanksTextDuration = '';
	protected string $notEnoughMoneyText = '';
	protected string $notEnoughMoneyTextDuration = '';
	protected string $nextTimeText = '';
	protected string $nextTimeTextDuration = '';
	protected string $languageTestTR = '';
	
	

	
	#[\Override]
	public function readFormParameters()	{
		parent::readFormParameters();
		
		
		if (isset($_POST['coordinates'])) {
            $this->coordinates = StringUtil::trim($_POST['coordinates']);
        }
		if (isset($_POST['direction'])) {
            $this->direction = StringUtil::trim($_POST['direction']);
        }
		if (isset($_POST['cineBarsWeight'])) {
            $this->cineBarsWeight = StringUtil::trim($_POST['cineBarsWeight']);
        }
		
		if (isset($_POST['cineBarsCreationSpeed'])) {
            $this->cineBarsCreationSpeed = StringUtil::trim($_POST['cineBarsCreationSpeed']);
        }
		
		if (isset($_POST['positioningSpeed'])) {
            $this->positioningSpeed = StringUtil::trim($_POST['positioningSpeed']);
        }
		if (isset($_POST['paymentItem'])) {
			$this->selectedPaymentItem = \intval($_POST['paymentItem']);
		}
		if (isset($_POST['cost'])) {
            $this->cost = StringUtil::trim($_POST['cost']);
        }
		if (isset($_POST['buyItem'])) {
			$this->selectedBuyItem = \intval($_POST['buyItem']);
		}
		if (isset($_POST['buyValue'])) {
            $this->buyValue = StringUtil::trim($_POST['buyValue']);
        }
		if (isset($_POST['confirmKey'])) {
            $this->confirmKey = StringUtil::trim($_POST['confirmKey']);
        }
		if (isset($_POST['cancelKey'])) {
            $this->cancelKey = StringUtil::trim($_POST['cancelKey']);
        }
		if (isset($_POST['askForBuyingText'])) {
            $this->askForBuyingText = StringUtil::trim($_POST['askForBuyingText']);
        }
		if (isset($_POST['thanksText'])) {
            $this->thanksText = StringUtil::trim($_POST['thanksText']);
        }
		if (isset($_POST['thanksTextDuration'])) {
            $this->thanksTextDuration = StringUtil::trim($_POST['thathanksTextDurationnksText']);
        }
		if (isset($_POST['notEnoughMoneyText'])) {
            $this->notEnoughMoneyText = StringUtil::trim($_POST['notEnoughMoneyText']);
        }
		if (isset($_POST['notEnoughMoneyTextDuration'])) {
            $this->notEnoughMoneyTextDuration = StringUtil::trim($_POST['notEnoughMoneyTextDuration']);
        }
		if (isset($_POST['nextTimeText'])) {
            $this->nextTimeText = StringUtil::trim($_POST['nextTimeText']);
        }
		
		if (isset($_POST['nextTimeTextDuration'])) {
            $this->nextTimeTextDuration = StringUtil::trim($_POST['nextTimeTextDuration']);
        }
		if (isset($_POST['languageTestTR'])) {
            $this->languageTestTR = StringUtil::trim($_POST['languageTestTR']);
        }
		
	}



	#[\Override]
	public function validate()	{
		parent::validate();
		
		// TODO: Werte validieren
	}

	#[\Override]
	public function save()	{
		parent::save();
	
		// TODO: Werte weiterverarbeiten (z.B. in DB speichern)
	}
	
	
	#[\Override]
	public function assignVariables()	{
		
		parent::assignVariables();
		
		WCF::getTPL()->assign([
			'coordinates' => $this->coordinates,
			'direction' => $this->direction,
			'cineBarsWeight' => $this->cineBarsWeight,
			'cineBarsCreationSpeed' => $this->cineBarsCreationSpeed,
			'positioningSpeed' => $this->positioningSpeed,
			'paymentItems' => $this->paymentItems,
			'selectedPaymentItem' => $this->selectedPaymentItem,

			'cost' => $this->cost,
			'buyItem' => $this->buyItem,
			'buyItems' => $this->buyItems,
			'selectedBuyItem' => $this->selectedBuyItem,
			'buyValue' => $this->buyValue,
			'confirmKey' => $this->confirmKey,
			'cancelKey' => $this->cancelKey,
			'askForBuyingText' => $this->askForBuyingText,
			'thanksText' => $this->thanksText,
			'thanksTextDuration' => $this->thanksTextDuration,
			'notEnoughMoneyText' => $this->notEnoughMoneyText,
			'notEnoughMoneyTextDuration' => $this->notEnoughMoneyTextDuration,
			'nextTimeText' => $this->nextTimeText,
			'nextTimeTextDuration' => $this->nextTimeTextDuration,
			'languageTestTR' => $this->languageTestTR = WCF::getLanguage()->get('de.trlevel.particleGenerator.XY'),
			
			
		]);
	}

}