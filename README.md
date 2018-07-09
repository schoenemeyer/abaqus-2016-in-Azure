# Introduction
Abaqus Performance in Azure

SIMULIA offers an advanced simulation product portfolio,for multiphysics, process integration and optimization: Abaqus FEA, fe-safe, Isight, Tosca, Simpack, Simpoe and SIMULIA SLM. In addition, SIMULIA V5 and V6 solutions enable realistic simulation for both designers and design engineers currently working in the CATIA V5 or V6 environments.

All packages can be installed and run in Azure Cloud, either as SaaS available from partners such as UberCloud or Rescale, or can be used as IaaS.

This example shows the performance for Standard Case s2b on different VMs in Azure. Comparison of Wallclocktime in sec

![After processing](https://github.com/schoenemeyer/abaqus-2016-in-Azure/blob/master/zylinder.gif)
<img src="https://github.com/schoenemeyer/abaqus-2016-in-Azure/blob/master/abaqus-s2b.png" width="412">

Nonlinear static analysis that simulates bolting a cylinder head onto an engine block. Time to Solution on different instances

VMs E16sv3, E32sv3, H16r, NC12-1GPUs (Nvidia K80), NC12-2GPUs (Nvidia K80)   
