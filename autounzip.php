<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

//1. scan all directory
$sites = scandir(__DIR__, SCANDIR_SORT_DESCENDING);
foreach ($sites as $site) {
    if (strpos($site, '_done')) {
        continue;
    }

    if (strpos($site, 'website')) {
        searchFileZip(__DIR__ . '/' . $site);
        var_dump($site);
        echo '<hr/>';
    }
}

//2.search and unzip theme
function searchFileZip($dir)
{
    $files = scandir($dir, SCANDIR_SORT_DESCENDING);
    foreach ($files as $file) {
        if (strpos($file, '.zip')) {
            $res = unzipFile($dir . '/' . $file, $dir . '/wp-content');
            if ($res) {
                rename($dir, $dir.'_done');
            }
        }
    }
}
function unzipFile($file, $destination)
{
    echo $file . $destination;
    $zip = new ZipArchive;
    $res = $zip->open($file);

    if ($res === TRUE) {
//        $zip->extractTo('D:\xampp\htdocs\sitedemo/test');
        $zip->extractTo($destination);

        $zip->close();
        echo 'Unzipped Process Successful!';
        return true;
    } else {
        echo 'Unzipped Process failed';
    }
    return false;
}
