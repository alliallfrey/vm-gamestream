# Deploy an Azure Windows VM for streaming games via Parsec

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Faga%2Fvm-gamestream%2Fmaster%2Fvm-gamestream.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Faga%2Fvm-gamestream%2Fmaster%2Fvm-gamestream.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

This template allows you to deploy a Windows VM to Azure that can be configured to stream games via Parsec. Instructions and required installers and will be available post deployment in `C:\gamestream-setup-files`. The `vm-gamestream.parameters.json` file can be used if running a deployment locally, make sure you deploy the resource group first!
