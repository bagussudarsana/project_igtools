<?php
$green  = "\e[1;92m";
$cyan   = "\e[1;36m";
$normal = "\e[0m";
$blue   = "\e[34m";
$green1 = "\e[0;92m";
$yellow = "\e[93m";
$red    = "\e[1;91m";
function getuid($username)
{
    $url     = 'https://nthanfp.me/api/get/instagramUserdata?apikey=NTHANFP150503&username=' . $username . '';
    $fgc     = file_get_contents($url);
    if(!$fgc)
        die('Connection error');
    $id      = json_decode($fgc)->data->user->id;
    
    return $id;
}

function getmediaid($url)
{
    $getid   = file_get_contents("https://api.instagram.com/oembed/?url=".$url);
    $json1   = json_decode($getid);
    $mediaid = $json1->media_id;
    
    return $mediaid;
}

function req($url, $data)
{
    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    if($data):
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
    endif;
    $response = curl_exec($ch);
    
    return $response;
}

function version()
{
    return "1.2";
}

function banner()
{
    $string = "
 .d8888b.                    888               888b    888          
d88P  Y88b                   888               8888b   888          
888    888                   888               88888b  888          
888        888  888 .d8888b  88888b.           888Y88b 888  8888b.  
888  88888 888  888 88K      888 "88b          888 Y88b888     "88b 
888    888 888  888 "Y8888b. 888  888          888  Y88888 .d888888 
Y88b  d88P Y88b 888      X88 888  888          888   Y8888 888  888 
 "Y8888P88  "Y88888  88888P' 888  888 88888888 888    Y888 "Y888888 
\n";

    return $string;
}

function banner1()
{
    $banner  = "==== Instagram Tools Ver ".version()." ====\n";

    return $banner;

}

function banner2()
{
    $banner  = "============ Code by ============\n";
    $banner2 = "======= NTHANFP | AXEC0DE =======\n\n";

    return $banner."".$banner2;
}
?>
