Gym Membership Vault - Solidity Project

Ovaj projekat predstavlja završni Proof-of-Concept (PoC) zadatak za Solidity Blockchain Bootcamp. 
Aplikacija simulira decentralizovani sistem za upravljanje članarinama u teretani.
Opis Projekta
Gym Membership Vault** omogućava korisnicima da postanu članovi teretane putem direktne uplate na pametni ugovor. 
Sistem koristi Ethereum blockchain (Sepolia Testnet) kako bi osigurao transparentnost, sigurnost i nepromenljivost podataka o članstvu.

Tehničke Karakteristike
Ugovor je napisan u jeziku **Solidity 0.8.x** i uključuje sledeće koncepte:
State Variables: Čuvanje adrese vlasnika, cene i statusa članova.
Payable Functions: Omogućavanje sigurnih ETH transakcija direktno u ugovor.
Access Control: Samo vlasnik ugovora može povući prikupljena sredstva.
Error Handling: Korišćenje require() iskaza za validaciju iznosa i dozvola.
Events: Emitovanje MembershipPurchased događaja radi praćenja transakcija van blockchain-a.

Kako koristiti
Otvorite [Remix IDE](https://remix.ethereum.org/).
Kreirajte fajl GymMembershipVault.sol i nalepite kod iz ovog repozitorijuma.
ompajlirajte ugovor koristeći verziju 0.8.0 ili noviju.
Povežite MetaMask na Sepolia Testnet.
eploy-ujte ugovor i testirajte funkcije buyMembership (uz uplatu 0.01 ETH) i checkMembershipStatus.
