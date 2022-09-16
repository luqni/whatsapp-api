<?php
 
require 'vendor/autoload.php';
 
use thiagoalessio\TesseractOCR\TesseractOCR;

include('./helpers/db.php');
$lib = new Library();
$data_siswa = $lib->update(1,6);
echo $data_siswa;

$r =  json_encode((new TesseractOCR('./downloaded-media/1656821654762.jpeg'))
    ->run());

    $c = substr_count( $r, "\n" );
 echo $c;
?>