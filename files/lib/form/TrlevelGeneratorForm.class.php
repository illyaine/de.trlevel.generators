<?php

namespace wcf\form;

use wcf\system\WCF;
use wcf\util\StringUtil;

class TrlevelGeneratorForm extends AbstractForm
{
	
	 /**
     * Thanks to l.m. (TRLevel.de) and Hanashi (WoltLab.com Board)
     */
	
    /**
     * @var string[]
     */
    protected array $damageModes = [
        'false',
        'true',
    ];
    

	protected string $functionName = 'Particles';
	protected int $xPosTolerance = 1024;
    protected int $selectedDamageMode = 0;


    protected string $trlevelGeneratorsHeaderXX = '';
	
	#[\Override]
	public function readFormParameters()
    {
		parent::readFormParameters();

        if (isset($_POST['functionName'])) {
            $this->functionName = StringUtil::trim($_POST['functionName']);
        }

        if (isset($_POST['xPosTolerance'])) {
            $this->xPosTolerance = \intval($_POST['xPosTolerance']);
        }


       
        if (isset($_POST['damageMode'])) {
            $this->selectedDamageMode = \intval($_POST['damageMode']);
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
            'damageModes' => $this->damageModes,

			'functionName' => $this->functionName,
			'xPosTolerance' => $this->xPosTolerance,
            'selectedDamageMode' => $this->selectedDamageMode,





            'trlevelGeneratorsHeaderXX' => $this->trlevelGeneratorsHeaderXX,
		]);
	}
}