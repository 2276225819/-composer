<?php 
if($argv[1]=='end'){
	unlink(__DIR__.'/php.ini');
}
else{
	ob_start();phpinfo();preg_match('/Loaded Configuration File => ([^\r\n]*)/',ob_get_clean(),$arr);
	$ini = preg_replace('/zend_extension=[^\r\n]+xdebug[^\r\n]+/', '',file_get_contents($arr[1]) );
	file_put_contents(__DIR__.'/php.ini',$ini);
}