Symbios Information System 
Symbios(IS) Project

prototyping a universal distributed information system.
- Open-Source & Private by Design & Ethical Design compliant
- Resilient by Design => organic and distributed inspiration
-- we must consider failure like losing a node, losing all nodes, losing cryptographic keys, etc..
-- recoverable processes to define (based essentially on the interaction possibilities in the physical world to secure key exchange).
- Organic growth => start empty and build the system gradually (co-evolution of model and instances of information)
- Control of all usage and exchange of information (message that convey information are also special informations).


===

Prototyping ideas
- platform: Pharo7

===Task1: universal model of information (so as to deal with all inputs of digital information we do)
"All is information" 
Distributed Information Data Structure
Symbiot concept
=> a local digital view on something or someone in the physical world (that has inherently a model)

=> does not need a global model of the world
=> a global model of information (seen as a persistent data structure)
(proto 1 started and code published here) => do not expect much !

===Task2: distributed message system (that convey information (all outputs of digital information we do)
"You only know 2 things on somebody 
- what he want you to know
- what you want to see in himself"     Dexter Morgan Father
Messages are sent between SymbiosIS and processed by it (a Message is a particular king of SymbiosInput).
They convey eventual information input (need the process of a message) => NEED REIFICATION OF INFO PROCESS (Task1)
(not started)
idea is to keep in each systems local view message queues even when processed. (proto 2)

Network management is a core feature.
We want it to be controlled at the maximum meaning the SIS is offline by default. It knows networks. We distinguate LocalNetwork and WideNetwork (WideTrustedNetwork being through the usage of a VPN for instance).
By default (and for now), information exchange is done only over a LocalNetwork (easier prototyping of discovery and better from a security pov). We'll focus on discovery of services, of presence while prototyping some original by principle cryptographic tools and we'll focus particularly on appairing (first), reappairing, ...
=> beside the technical aspects, we moire interested in consigning all network activity as we do for message and for information.

===Task3: Tools
"just ideas... no code for now... but experiments like the position logger" 

- visualizations of information
- simple views
-- "inventory" of persons, materials, ... (symbiots)
-- standard friendly like vCard
- spatio-temp graphs of inputs and processing. towards a REPLAY tool

- categorisation (tags ?) of information (besides of grouping due to the composite pattern)

- (symbiot position logger) spatiotemporal logger: essential has basic contextual information

- information composition tool: 
-- SPEC + Pillar => Static Documents / Reports
-- DynamicReports (can update according to a new context) 

- activity logger: contextual taging of created information between start and stop moment.
- general planing tool: 
-- planing/managing (future)events, to-do, project, ideas, ...
-- iCal friendly

-- AI integration
 -- help recognising information, categorizing
 -- grow and learn as the system grows.
 -- help and assit the physical symbiot
 --- monitor and control CPS

Mobile Companion
=> export from Pharo (basic info model when stabilized) - Adobe Cordova ?
=> Do a Symbiox
- a stupid app 
-- to enter contextalized SymbiosInput from the phone device (being actually a symbioIS). 
-- Storing this info localy and send when other symbiosIS is met on the local network and appaired (according to contracts).

 





