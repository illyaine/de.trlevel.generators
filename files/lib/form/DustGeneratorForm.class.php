<?php

namespace wcf\form;

use wcf\system\WCF;
use wcf\util\StringUtil;

class DustGeneratorForm extends AbstractForm
{
	
	 /**
     * Thanks to l.m. (TRLevel.de) and Hanashi (WoltLab.com Board)
     */
	
    /**
     * @var string[]
     */
    protected array $blendModes = [
        'OPAQUE',
        'ALPHATEST',
        'ADDITIVE',
        'NOZTEST',
        'SUBTRACTIVE',
        'WIREFRAME',
        'EXCLUDE',
        'SCREEN',
        'LIGHTEN',
        'ALPHABLEND',
    ];

    /**
     * @var string[]
     */
    protected array $damageModes = [
        'false',
        'true',
    ];
    
    /**
     * @var string[]
     */
    protected array $poisionModes = [
        'false',
        'true',
    ];

	protected string $functionName = 'Particles';
	protected string $staticSlot = '';
	protected string $moveableSlot = '';
	protected int $xPosTolerance = 1024;
	protected int $yPosTolerance = 1024;
	protected int $zPosTolerance = 1024;
	protected int $xSpeed = 2;
	protected int $ySpeed = 2;
	protected int $zSpeed = 2;
	protected int $density = 10;
	protected int $spriteIndex = 5;
	protected int $gravityTolerance = 1;
	protected int $rotationTolerance = 1;
	protected int $colorFromRed = 255;
	protected int $colorFromGreen = 255;
	protected int $colorFromBlue = 255;
	protected int $colorToRed = 120;
	protected int $colorToGreen = 120;
	protected int $colorToBlue = 120;
    protected int $selectedBlendMode = 2;
	protected int $startSizeTolerance = 2;
	protected int $endSizeTolerance = 2;
	protected int $lifeTime = 15;
    protected int $selectedDamageMode = 0;
    protected int $selectedPoisionMode = 0;
    protected string $trlevelGeneratorsHeaderDust = '';
	
	#[\Override]
	public function readFormParameters()
    {
		parent::readFormParameters();

        if (isset($_POST['functionName'])) {
            $this->functionName = StringUtil::trim($_POST['functionName']);
        }
        if (isset($_POST['staticSlot'])) {
            $this->staticSlot = StringUtil::trim($_POST['staticSlot']);
        }
        if (isset($_POST['moveableSlot'])) {
            $this->moveableSlot = StringUtil::trim($_POST['moveableSlot']);
        }
        if (isset($_POST['xPosTolerance'])) {
            $this->xPosTolerance = \intval($_POST['xPosTolerance']);
        }
        if (isset($_POST['yPosTolerance'])) {
            $this->yPosTolerance = \intval($_POST['yPosTolerance']);
        }
        if (isset($_POST['zPosTolerance'])) {
            $this->zPosTolerance = \intval($_POST['zPosTolerance']);
        }
        if (isset($_POST['xSpeed'])) {
            $this->xSpeed = \intval($_POST['xSpeed']);
        }
        if (isset($_POST['ySpeed'])) {
            $this->ySpeed = \intval($_POST['ySpeed']);
        }
        if (isset($_POST['zSpeed'])) {
            $this->zSpeed = \intval($_POST['zSpeed']);
        }
        if (isset($_POST['density'])) {
            $this->density = \intval($_POST['density']);
        }
        if (isset($_POST['spriteIndex'])) {
            $this->spriteIndex = \intval($_POST['spriteIndex']);
        }
        if (isset($_POST['gravityTolerance'])) {
            $this->gravityTolerance = \intval($_POST['gravityTolerance']);
        }
        if (isset($_POST['rotationTolerance'])) {
            $this->rotationTolerance = \intval($_POST['rotationTolerance']);
        }
        if (isset($_POST['colorFromRed'])) {
            $this->colorFromRed = \intval($_POST['colorFromRed']);
        }
        if (isset($_POST['colorFromGreen'])) {
            $this->colorFromGreen = \intval($_POST['colorFromGreen']);
        }
        if (isset($_POST['colorFromBlue'])) {
            $this->colorFromBlue = \intval($_POST['colorFromBlue']);
        }
		if (isset($_POST['blendMode'])) {
			$this->selectedBlendMode = \intval($_POST['blendMode']);
		}
        if (isset($_POST['startSizeTolerance'])) {
            $this->startSizeTolerance = \intval($_POST['startSizeTolerance']);
        }
        if (isset($_POST['endSizeTolerance'])) {
            $this->endSizeTolerance = \intval($_POST['endSizeTolerance']);
        }
        if (isset($_POST['lifeTime'])) {
            $this->lifeTime = \intval($_POST['lifeTime']);
        }
        if (isset($_POST['damageMode'])) {
            $this->selectedDamageMode = \intval($_POST['damageMode']);
        }
        if (isset($_POST['poisionMode'])) {
            $this->selectedPoisionMode = \intval($_POST['poisionMode']);
        }
	}

    #[\Override]
    public function validate()
    {
        parent::validate();

        // TODO: Werte validieren
    }

    #[\Override]
    public function save()
    {
        parent::save();

        // TODO: Werte weiterverarbeiten (z.B. in DB speichern)
    }
	
	#[\Override]
	public function assignVariables()
	{
		parent::assignVariables();
		
		WCF::getTPL()->assign([
            'blendModes' => $this->blendModes,
            'damageModes' => $this->damageModes,
            'poisionModes' => $this->poisionModes,

			'functionName' => $this->functionName,
			'staticSlot' => $this->staticSlot,
			'moveableSlot' => $this->moveableSlot,
			'xPosTolerance' => $this->xPosTolerance,
			'yPosTolerance' => $this->yPosTolerance,
			'zPosTolerance' => $this->zPosTolerance,
			'xSpeed' => $this->xSpeed,
			'ySpeed' => $this->ySpeed,
			'zSpeed' => $this->zSpeed,
			'density' => $this->density,
			'spriteIndex' => $this->spriteIndex,
			'gravityTolerance' => $this->gravityTolerance,
			'rotationTolerance' => $this->rotationTolerance,
			'colorFromRed' => $this->colorFromRed,
			'colorFromGreen' => $this->colorFromGreen,
			'colorFromBlue' => $this->colorFromBlue,
			'colorToRed' => $this->colorToRed,
			'colorToGreen' => $this->colorToGreen,
			'colorToBlue' => $this->colorToBlue,
            'selectedBlendMode' => $this->selectedBlendMode,
			'startSizeTolerance' => $this->startSizeTolerance,
			'endSizeTolerance' => $this->endSizeTolerance,
			'lifeTime' => $this->lifeTime,
            'selectedDamageMode' => $this->selectedDamageMode,
            'selectedPoisionMode' => $this->selectedPoisionMode,

            'trlevelGeneratorsHeaderDust' => $this->trlevelGeneratorsHeaderDust,
		]);
	}
}