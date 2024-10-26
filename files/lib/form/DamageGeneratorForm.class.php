<?php

namespace wcf\form;

use wcf\system\WCF;
use wcf\util\StringUtil;
use wcf\trlevel;

class DamageGeneratorForm extends AbstractForm
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

    protected array $tenMoveableLists = [
        'assa',
        
    ];
    

	protected string $functionName = 'SetCollideWithItems';
	protected int $healthpointsLostPerFrame = 5;
    protected string $getObjectID = 'LARA';
    protected string $moveableSlots = 'ANIMATING1';



    protected int $selectedDamageMode = 0;
    protected int $selectedTenMoveableList = 0;



    protected string $trlevelGeneratorsHeaderDamage = '';
	
	#[\Override]
	public function readFormParameters()
    {
		parent::readFormParameters();

        if (isset($_POST['functionName'])) {
            $this->functionName = StringUtil::trim($_POST['functionName']);
        }

        if (isset($_POST['healthpointsLostPerFrame'])) {
            $this->healthpointsLostPerFrame = \intval($_POST['healthpointsLostPerFrame']);
        }
        if (isset($_POST['getObjectID'])) {
            $this->getObjectID = StringUtil::trim($_POST['getObjectID']);
        }
        if (isset($_POST['moveableSlots'])) {
            $this->moveableSlots = StringUtil::trim($_POST['moveableSlots']);
        }


        if (isset($_POST['tenMoveableList'])) {
			$this->selectedTenMoveableList = \intval($_POST['tenMoveableList']);
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
            

			'functionName' => $this->functionName,
			'healthpointsLostPerFrame' => $this->healthpointsLostPerFrame,
			'getObjectID' => $this->getObjectID,
			'moveableSlots' => $this->moveableSlots,

            'damageModes' => $this->damageModes,
            'selectedDamageMode' => $this->selectedDamageMode,

            'tenMoveableLists' => $this->tenMoveableLists,
            'selectedTenMoveableList' => $this->selectedTenMoveableList,
            
            'trlevelGeneratorsHeaderDamage' => $this->trlevelGeneratorsHeaderDamage,
		]);
	}
}