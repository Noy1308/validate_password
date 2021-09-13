cls
$first = $args[0]
$second = $args[1]

if($first -eq '-f'){
    $password = Get-Content -Path $second
}
else {
    $password = $first
}

if($password.length -le 9){
    write-host -ForegroundColor red "- Short password, please make sure its more than 10 chars!"
}
elseif (!(($password -cmatch '[a-z]') -and ($password -cmatch '[A-Z]') -and ($password -match '\d'))){
    write-host -ForegroundColor red "- Weak password, Make sure to have uppercase, lowercase and a number!"
}
else {
    write-host -ForegroundColor green " - Strong Password!"
}