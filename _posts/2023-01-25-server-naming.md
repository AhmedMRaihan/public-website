---
layout: post
title:  "[P06] Server naming convention"
categories: devops
---
After writing v1,v2,v3 of naming conventions, much has changed. In several places the previous convention served really well, in some places it was inadequate. Also, developer adaptation over time is another metric which was impossible to predict at that time. So, I opted for a new convention to satisfy constraints of 2023+.

## Naming convention - v4
The convention is simplified now for the sake of easy communication. Now, VirtualMachine/Functions/Container/PersonalDevice etc. are named as: `<Prefix>-<Instance-type>-<Project-code>[~subproject-code[~git-commit-id]]>-<N><Environment-type>` where:

 1. **Prefix**: An unique prefix code which will help to avoid conflicts in naming. At present, an [IATA Airport code](https://en.wikipedia.org/wiki/IATA_airport_code) is used to specify regions as well as an unique namespace. For ease of usage, each code is also dedicated to a particular vendor’s region which is geographically close to the airport
 2. **Instance-type**: This should give quick insight on what we are going to expect in next blocks of the name. It should be 1 character for zero trust Devices like Laptop/Mobile/Workstation, 2 character for other types (e.g. LB for load balancer, VM for virtual machine).
 3. **Project-code**: For zero trust devices, it is textual value. For client projects it might be a numeric code. For internal projects it is project’s short name.
 4. (Optional): subproject name or git commit id, each separated by `~`. This is useful in auto-generating name(s).
 5. **N**: Instance creation timestamp in epoch or any valid timeformat (e.g. [RFC 822](https://stackoverflow.com/a/16744916)). For backward compatibility, an auto-incremented number across each *Project-code or Instance-type* can be used also.
 6. **Environment-type**: 1 character (excluding 1/l/i - i.e. similar looking letters) where it could be any of the following:
* Z for zero trust sources (e.g. personal devices)
* B for bridging sources like Bastion hosts
* S for Sandbox preparation (e.g. Proof Of Concept, DMZ)
* D for Development instance
* U for User-acceptance testing instance
* P for 24x7 running prod (e.g. VM)
* E for Serverless prod (e.g. Cloud function)
* X for defunct system
 
Some example:

* Dell Laptop (i.e. zero trust device) of employee12 at Berlin, DE: <code>BER-L-dell~e12-345D</code>
* Virtual machine at AWS for external client project1234’s loadbalancer at US-East region: <code>IAD-LB-1234-1P</code>
* A virtual machine in Google Cloud at EU-Brussels region for an internal voting application (i.e. voting4venue): <code>BRU-VM-votenow-1L</code>
* Function As A Service at Azure US-West location for project1234’s microservice1’s f0834e1a commit id: `SEA-FN-p1234~microservice1~f0834e1a-20201231082553E`

## Regions
<iframe src="https://www.google.com/maps/d/u/0/embed?mid=1X7E2lS5uS9050eYWay6JGXpows_MsD0X&amp;ehbc=2E312F" width="640" height="480" data-mce-fragment="1"></iframe>

## Which region is better for you?
This question has no definite answer unfortunately. Because, everyone have unique requirement. Nonetheless, in order to estimate, you can try to find Virtual machine pricing. Eventually these VM are used in several managed resources so VM price/region is a good indicator on which region you should choose (if price is primary factor).

List of Cloud vendor and calculator for VM:
* AWS: [instances.vantage.sh](https://instances.vantage.sh/)
* Azure: [Official Site](https://azure.microsoft.com/en-in/pricing/calculator/?service=virtual-machines)
* GCP: [Official Site](https://cloud.google.com/products/calculator)

## Quick alternative 
If the convention is too much, or you find lots of cons with it, then another easy but scalable way is to this format:
**`<dev|test|prod>-<iata-code>-<contextual-suffix>-<N>`**