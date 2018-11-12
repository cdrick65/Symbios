<h1>Symbios Information System</h1>
Symbios(IS) Project: prototyping a universal distributed information system.
- Open-Source & Private by Design & Ethical Design compliant
- Resilient by Design => organic and distributed inspiration

we must consider failure like losing a node, losing all nodes, losing cryptographic keys, etc..

recoverable processes to define (based essentially on the interaction possibilities in the physical world to secure key exchange).
- Organic growth => start empty and build the system gradually (co-evolution of model and instances of information)
- Control of all usage and exchange of information (message that convey information are also special informations).

____

Prototyping ideas with Pharo7 and Adobe Cordova (Mobile Apps)
___

<h3>Task1: universal model of information (so as to deal with all inputs of digital information we do)</h3>

<blockquote>"All is information"</blockquote>

Distributed Information Data Structure: Symbiot concept

- a local digital view on something or someone in the physical world (that has inherently a model)
- does not need a global model of the world
- a global model of information (seen as a persistent data structure)
proto 1 started and code published here => do not expect much yet!

<h3>Task2 (later): distributed message system (that convey information (all outputs of digital information we do))</h3>

<blockquote>"You only know 2 things on somebody: what he want you to know et what you want to see in himself" <br/>Dexter Morgan Father</blockquote>

Messages are sent between SymbiosIS and processed by it. A Message is a particular king of SymbiosInput).

They convey eventual information input (need the process of a message) => NEED REIFICATION OF INFO PROCESS (Task1)
(not started)
idea is to keep in each systems local view message queues even when processed. (proto 2)

Network management is a core feature.

We want all connections to be controlled at the maximum. 

It's meaning the SIS is offline by default. It knows networks. 

We distinguate LocalNetwork and WideNetwork (WideTrustedNetwork being through the usage of a VPN for instance).

By default (and for now), information exchange is done only over a LocalNetwork (easier prototyping of discovery and better from a security pov). 

We'll focus on discovery of services, of presence while prototyping some original by principle cryptographic tools and we'll focus particularly on appairing (first), reappairing, ...

Beside the technical aspects, we're more interested in consigning all network activity as we do for message and for information.

<h3>Task3: Tooling</h3>
<blockquote>"just ideas... no code for now... but experiments like the position logger done mostly in students projects" </blockquote>

- visualizations of information
- simple views
"inventory" of persons, materials, ... (symbiots)

standard friendly like vCard
- spatio-temp graphs of inputs and processing. towards a REPLAY tool

- categorisation (tags ?) of information (besides of grouping due to the composite pattern)

- (symbiot position logger) spatiotemporal logger: essential has basic contextual information

- information composition tool: 
SPEC + Pillar => Static Documents / Reports

DynamicReports (can update according to a new context) 

- activity logger: contextual taging of created information between start and stop moment.
- general planing tool
planing/managing (future)events, to-do, project, ideas, ...

iCal friendly

- AI integration
help recognising information, categorizing

grow and learn as the system grows.

help and assit the physical symbiot

monitor and control CPS

- Mobile Companion
export from Pharo (basic info model when stabilized) - Adobe Cordova ?

Do Symbiox (separate github project)

a very simple app to enter contextalized SymbiosInput from the phone device (being actually a symbioIS). 

Storing this info localy and send when other symbiosIS is met on the local network and appaired (according to contracts).

 




