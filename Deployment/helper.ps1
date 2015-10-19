cd C:\projects\Templates

$ErrorActionPreference= "stop"
Import-Module "C:\Program Files (x86)\Microsoft SDKs\Azure\PowerShell\ServiceManagement\Azure\Azure.psd1"
$VerbosePreference="continue"
Switch-AzureMode AzureResourceManager
# Switch-AzureMode AzureServiceManagement
Add-AzureAccount 
Select-AzureSubscription antps05




# ARMClient.exe GET  https://management.azure.com/subscriptions/0d3ae56c-deaf-4982-b514-33d016d4a683/resourceGroups/GalinTests/providers/Microsoft.Web/sites/Galin-WebJobsSite/config/slotConfigNames?api-version=2014-06-01

<#
ARMClient.exe POST https://management.azure.com/subscriptions/0d3ae56c-deaf-4982-b514-33d016d4a683/resourceGroups/GalinTests/providers/Microsoft.Web/sites/galin-swap3/slots/slot2/slotsswap?api-version=2014-06-01 "{'targetSlot': 'slot1'}" -verbose
ARMClient.exe GET https://management.azure.com//subscriptions/0d3ae56c-deaf-4982-b514-33d016d4a683/resourceGroups/GalinTests/providers/Microsoft.Web/sites/galin-swap3/slots/slot2/operations/3d003b27-8f7e-4ba0-b322-d49c4d782bf8?api-version=2014-06-01 -verbose


ARMClient.exe POST https://management.azure.com/subscriptions/0d3ae56c-deaf-4982-b514-33d016d4a683/resourceGroups/GalinTests/providers/Microsoft.Web/sites/TestSticky6/config/appsettings/list?api-version=2014-06-01 -verbose
ARMClient.exe GET https://management.azure.com/subscriptions/0d3ae56c-deaf-4982-b514-33d016d4a683/resourceGroups/GalinTests/providers/Microsoft.Web/sites/TestSticky6/config/slotconfignames?api-version=2014-06-01 -verbose
#> 



