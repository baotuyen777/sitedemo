<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

//1. scan all directory
$sites = scandir(__DIR__, SCANDIR_SORT_DESCENDING);
foreach ($sites as $site) {
    if (strpos($site, '_done')) {
        $siteDir =__DIR__ . '/' . $site;
        move2Folder($siteDir);
        echo '<hr/>';
    }
}

//2.move files to data folder
function move2Folder($dir)
{
    mkdir($dir.'/data',0777);
    $files = scandir($dir, SCANDIR_SORT_DESCENDING);
    foreach ($files as $file) {
        if (strpos($file, '.zip') || strpos($file, '.sql') || strpos($file, '.png')) {
            rename($dir.'/'.$file,$dir.'/data/'.$file);
            echo $file;
            echo "<br>";
        }
    }
    echo $dir;
}

