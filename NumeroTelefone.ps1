

# Regex para Números de Telefones no Brasil 

while($true){

$telefone = Read-Host 'Entre com o telefone'
$pattern1 = '^\d{11}$'
$pattern2 = '^\([\d]{2}\)\d{9}$'

 
 if($telefone -match $pattern1 -or $telefone -match $pattern2-or $telefone -match $pattern3){
    Write-Host "string aceita"
 }
}

