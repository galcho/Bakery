$siteName = "Galin-BakeryInstall2"
$resourceGroupName = "AppServiceDemo"
$rglocation = "East US"
$location = "North Europe"
$hostingPlanName = "GalinDemo"
$bakeryDatabase = "Data Source=f1gov0l546.database.windows.net;Initial Catalog=bakery;User Id=demo;Password=xxxxxxxxx;"
$bakeryDatabaseStaging = "Data Source=f1gov0l546.database.windows.net;Initial Catalog=bakery_staing;User Id=demo;Password=xxxxxxx;"
 
cls
New-AzureResourceGroup -Name $resourceGroupName -Location $rglocation -TemplateFile .\WebAppLinkedToGithub.json `
                        -hostingPlanName $hostingPlanName -siteName $siteName -siteLocation $location -Force  `
                        -bakeryDatabase $bakeryDatabase -bakeryDatabaseStaging $bakeryDatabaseStaging -sku Standard -workerSize 2

<#
cls
New-AzureResourceGroupDeployment -Name $resourceGroupName -Location $rglocation -TemplateFile .\WebAppLinkedToGithub.json - `
                        -hostingPlanName $hostingPlanName -siteName $siteName -siteLocation $location -Force  `
                        -bakeryDatabase $bakeryDatabase -sku Standard -workerSize 2

#>
 
 