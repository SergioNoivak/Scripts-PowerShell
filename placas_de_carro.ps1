#Placas de Carros Brasileiros 
    $pattern_estados = "^("
    Get-Content .\estados.txt  -Encoding UTF8| ForEach-Object {
        $pattern_estados+=$_+'|'
    }
    $pattern_estados=$pattern_estados.Substring(0,$pattern_estados.Length-1)
    $pattern_estados+=$_+')$'

    Write-Host $pattern_estados;

    $pattern_municipios = "^("
    Get-Content .\municipios.txt  -Encoding UTF8| ForEach-Object {
        $pattern_municipios+=$_+'|'
    }
    $pattern_municipios=$pattern_municipios.Substring(0,$pattern_municipios.Length-1)
    $pattern_municipios+=$_+')$'

    $pattern_letras_e_simbolos = "^[:alpha:]{3}-[0-9]{4}$";


    while($true){
        $string1 = Read-Host 'Cidade'
         if($string1 -match $pattern_municipios){
            Write-Host "Cidade aceita"
         }
         else {
             Write-Host "Cidade NAO aceita";
         }
     
         Write-Host $padrao_estados
     
         $string2 = Read-Host 'Estado'
         if($string2 -match $pattern_estados){
            Write-Host "Estado aceita"
         }
         else {
             Write-Host "Estado NAO aceita";
         }

         
         $string3 = Read-Host 'letras e numeros'
         if($string3 -match $pattern_letras_e_simbolos){
            Write-Host "letras e numeros aceita"
         }
         else {
             Write-Host "letras e numeros NAO aceita";
         }
    }
