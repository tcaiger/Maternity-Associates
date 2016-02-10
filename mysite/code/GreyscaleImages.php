<?php
class GreyscaleImages  extends DataExtension {
	public function Greyscale() {
		return $this->owner->getFormattedImage('Greyscale');
	}
	public function generateGreyscale($gd) {
		return $gd->greyscale();
	}
	
}