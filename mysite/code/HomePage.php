<?php

class HomePage extends Page{
	private static $db = array(
		'Intro' => 'Varchar(255)'
	);

	public function getCMSFields(){

		$fields = parent::getCMSFields();
		$fields->addFieldToTab('Root.Main', TextField::create('Intro', 'Introduction'), 'Content');
		
		return $fields;
	}

}

class HomePage_Controller extends Page_Controller{

	public function SiteSummary(){
		return Page::get()->filter(
			'Title', array('Our Care', 'Midwives', 'Specialists')
		);
	}
	
}