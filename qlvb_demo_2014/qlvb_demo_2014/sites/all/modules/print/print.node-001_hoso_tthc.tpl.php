<?php
// $Id: print.tpl.php,v 1.8.2.15 2009/07/09 12:00:52 jcnventura Exp $

/**
 * @file
 * Default print module template
 *
 * @ingroup print
 */
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<?php print $print['language']; ?>" xml:lang="<?php print $print['language']; ?>">
  <head>
    <?php print $print['favicon']; ?>
    <?php print $print['css']; ?>
  </head>
  <body>


	
	   <div class="print-logo">
	   <?php 
	   
	   $this_module_path = drupal_get_path('module', 'print');
	   $logo1=$this_module_path."/icons/print_logo.png";

	   
	    ?>
		<img src="<?=$logo1?>" border="0" />
		</div>
 

    <div class="print-content"><?php print $print['content']; ?></div>
	<div class="print-logo">
	   <?php 
	   
	   $this_module_path = drupal_get_path('module', 'print');
	   $logo1=$this_module_path."/icons/footer.png";

	   
	    ?>
		<img src="<?=$logo1?>" border="0" />
		</div>

    <hr class="print-hr" />


  </body>
</html>
