# Agentic Audit Brief: Amnis Finance

## Project Overview

- Project: Amnis Finance (`amnis-finance`)
- Website: [https://amnis.finance](https://amnis.finance)
- Lifecycle: unknown
- Generated: 2026-05-23T01:38:07.276Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: n/a
- Contract surface: 0 unique implementations (0 raw deployments)
- DeFi Llama TVL: $11,934,089.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Amnis Finance is a liquid staking protocol that allows users to stake assets and receive liquid derivative tokens representing their staked positions, enabling participation in DeFi while earning staking rewards.

### Architecture

No product families or contracts were identified in the provided data, so no relationships can be described.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 0
- Raw deployments: 0
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [<table data-header-hidden><thead><tr><th width="82"></th><th></th><th></th></tr></thead><tbody><tr><td><strong>No.</strong></td><td><strong>Field</strong></td><td><strong>Content</strong></td></tr><tr><td>H.1</td><td>Distributed ledger technology (DTL)</td><td>Deployed on the Aptos Blockchain, a Layer-1 Proof-of-Stake (PoS) network</td></tr><tr><td>H.2</td><td>Protocols and technical standards</td><td>AMI is an Aptos Fungible Asset (FA) token, ensuring compatibility with Aptos wallets, exchanges, and smart contracts built in the Move programming language. The Aptos blockchain is a Layer-1 Proof-of-Stake network (AptosBFT), providing high throughput, low latency, and strong security guarantees.</td></tr><tr><td>H.3</td><td>Technology used</td><td>AMI tokens can be held, stored, and transferred using Aptos-compatible wallets that support Move-based fungible tokens, including both software and hardware wallets. Transfers occur on-chain through the Aptos network, and token holders may also interact with AMI via supported exchanges and DeFi interfaces that comply with applicable laws and platform policies.</td></tr><tr><td>H.4</td><td>Consensus mechanism</td><td>Aptos uses a Proof-of-Stake (PoS) consensus mechanism called AptosBFT**,**a HotStuff-inspired Byzantine Fault Tolerance (BFT) protocol that ensures rapid transaction finality and high security by requiring validators to stake APT tokens to validate transactions. It combines this with a parallel execution engine (Block-STM) and a modular design, allowing independent upgrades and faster, more scalable throughput than traditional chains.</td></tr><tr><td>H.5</td><td>Incentive mechanisms and applicable fees</td><td>Validators on the Aptos network are compensated with APT for securing the blockchain through a Proof-of-Stake (PoS) model. Their income comes from transaction gas fees and staking rewards (emissions). Validators set their own commission rates for delegators. Notably, Aptos does not use "slashing" (principal penalty). Instead, poor performance is penalized via missed rewards for that epoch. Every transaction requires gas fees, structured as: -Execution &#x26; IO Fees: Covers CPU work and data reading/writing. It is the product of gas units used and the market gas price. -Storage Fees (Storage Deposit): Covers on-chain data storage. Unique to Aptos, this fee is a refundable deposit; users can receive a 100% refund when the data is deleted from the ledger</td></tr><tr><td>H.6</td><td><p>Use of distributed ledger</p><p>technology</p></td><td>false</td></tr><tr><td>H.7</td><td>DLT functionality description</td><td>N/A</td></tr><tr><td>H.8</td><td>Audit</td><td>true</td></tr><tr><td>H.9</td><td>Audit outcome</td><td><p>OtterSec (<a href="https://135941930-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS1BuIoYSwiJZqNrZeQzd%2Fuploads%2FXNDGGecyO1F9NwaIho4j%2Famnis_audit_final.pdf?alt=media&#x26;token=76b9a7f5-13f0-4d41-b169-0d3cb6cedec8">https://135941930-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS1BuIoYSwiJZqNrZeQzd%2Fuploads%2FXNDGGecyO1F9NwaIho4j</a> <a href="https://135941930-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS1BuIoYSwiJZqNrZeQzd%2Fuploads%2FXNDGGecyO1F9NwaIho4j%2Famnis_audit_final.pdf?alt=media&#x26;token=76b9a7f5-13f0-4d41-b169-0d3cb6cedec8">alt=media&#x26;token=76b9a7f5-13f0-4d41-b169-0d3cb6cedec8</a>)</p><p>Movebit (<a href="">https://movebit.xyz/reports/Amnis-Finance-Final-Audit-Report.pdf</a>)</p><p>Verichain (<a href="https://github.com/verichains/public-audit-reports/blob/main/Amnis%20Finance%20-%20Public%20Report%20v1.1.pdf">https://github.com/verichains/public-audit-reports/blob/main/Amnis%20Finance%20-</a></p></td></tr></tbody></table>](https://movebit.xyz/reports/Amnis-Finance-Final-Audit-Report.pdf) | Movebit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.verichains.io](https://github.com/verichains/public-audit-reports/blob/main/Amnis%20Finance%20-%20Public%20Report%20v1.1.pdf) | Verichains | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [<table data-header-hidden><thead><tr><th width="82"></th><th></th><th></th></tr></thead><tbody><tr><td><strong>No.</strong></td><td><strong>Field</strong></td><td><strong>Content</strong></td></tr><tr><td>H.1</td><td>Distributed ledger technology (DTL)</td><td>Deployed on the Aptos Blockchain, a Layer-1 Proof-of-Stake (PoS) network</td></tr><tr><td>H.2</td><td>Protocols and technical standards</td><td>AMI is an Aptos Fungible Asset (FA) token, ensuring compatibility with Aptos wallets, exchanges, and smart contracts built in the Move programming language. The Aptos blockchain is a Layer-1 Proof-of-Stake network (AptosBFT), providing high throughput, low latency, and strong security guarantees.</td></tr><tr><td>H.3</td><td>Technology used</td><td>AMI tokens can be held, stored, and transferred using Aptos-compatible wallets that support Move-based fungible tokens, including both software and hardware wallets. Transfers occur on-chain through the Aptos network, and token holders may also interact with AMI via supported exchanges and DeFi interfaces that comply with applicable laws and platform policies.</td></tr><tr><td>H.4</td><td>Consensus mechanism</td><td>Aptos uses a Proof-of-Stake (PoS) consensus mechanism called AptosBFT**,**a HotStuff-inspired Byzantine Fault Tolerance (BFT) protocol that ensures rapid transaction finality and high security by requiring validators to stake APT tokens to validate transactions. It combines this with a parallel execution engine (Block-STM) and a modular design, allowing independent upgrades and faster, more scalable throughput than traditional chains.</td></tr><tr><td>H.5</td><td>Incentive mechanisms and applicable fees</td><td>Validators on the Aptos network are compensated with APT for securing the blockchain through a Proof-of-Stake (PoS) model. Their income comes from transaction gas fees and staking rewards (emissions). Validators set their own commission rates for delegators. Notably, Aptos does not use "slashing" (principal penalty). Instead, poor performance is penalized via missed rewards for that epoch. Every transaction requires gas fees, structured as: -Execution &#x26; IO Fees: Covers CPU work and data reading/writing. It is the product of gas units used and the market gas price. -Storage Fees (Storage Deposit): Covers on-chain data storage. Unique to Aptos, this fee is a refundable deposit; users can receive a 100% refund when the data is deleted from the ledger</td></tr><tr><td>H.6</td><td><p>Use of distributed ledger</p><p>technology</p></td><td>false</td></tr><tr><td>H.7</td><td>DLT functionality description</td><td>N/A</td></tr><tr><td>H.8</td><td>Audit</td><td>true</td></tr><tr><td>H.9</td><td>Audit outcome</td><td><p>OtterSec (<a href=">https://135941930-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS1BuIoYSwiJZqNrZeQzd%2Fuploads%2FXNDGGecyO1F9NwaIho4j</a> <a href="https://135941930-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS1BuIoYSwiJZqNrZeQzd%2Fuploads%2FXNDGGecyO1F9NwaIho4j%2Famnis_audit_final.pdf?alt=media&#x26;token=76b9a7f5-13f0-4d41-b169-0d3cb6cedec8">alt=media&#x26;token=76b9a7f5-13f0-4d41-b169-0d3cb6cedec8</a>)</p><p>Movebit (<a href="https://movebit.xyz/reports/Amnis-Finance-Final-Audit-Report.pdf">https://movebit.xyz/reports/Amnis-Finance-Final-Audit-Report.pdf</a>)</p><p>Verichain (<a href="https://github.com/verichains/public-audit-reports/blob/main/Amnis%20Finance%20-%20Public%20Report%20v1.1.pdf">https://github.com/verichains/public-audit-reports/blob/main/Amnis%20Finance%20-</a></p></td></tr></tbody></table>](https://135941930-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS1BuIoYSwiJZqNrZeQzd%2Fuploads%2FXNDGGecyO1F9NwaIho4j%2Famnis_audit_final.pdf) | OtterSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2040] <table data-header-hidden><thead><tr><th width="82"></th><th></th><th></th></tr></thead><tbody><tr><td><strong>No.</strong></td><td><strong>Field</strong></td><td><strong>Content</strong></td></tr><tr><td>H.1</td><td>Distributed ledger technology (DTL)</td><td>Deployed on the Aptos Blockchain, a Layer-1 Proof-of-Stake (PoS) network</td></tr><tr><td>H.2</td><td>Protocols and technical standards</td><td>AMI is an Aptos Fungible Asset (FA) token, ensuring compatibility with Aptos wallets, exchanges, and smart contracts built in the Move programming language. The Aptos blockchain is a Layer-1 Proof-of-Stake network (AptosBFT), providing high throughput, low latency, and strong security guarantees.</td></tr><tr><td>H.3</td><td>Technology used</td><td>AMI tokens can be held, stored, and transferred using Aptos-compatible wallets that support Move-based fungible tokens, including both software and hardware wallets. Transfers occur on-chain through the Aptos network, and token holders may also interact with AMI via supported exchanges and DeFi interfaces that comply with applicable laws and platform policies.</td></tr><tr><td>H.4</td><td>Consensus mechanism</td><td>Aptos uses a Proof-of-Stake (PoS) consensus mechanism called AptosBFT**,**a HotStuff-inspired Byzantine Fault Tolerance (BFT) protocol that ensures rapid transaction finality and high security by requiring validators to stake APT tokens to validate transactions. It combines this with a parallel execution engine (Block-STM) and a modular design, allowing independent upgrades and faster, more scalable throughput than traditional chains.</td></tr><tr><td>H.5</td><td>Incentive mechanisms and applicable fees</td><td>Validators on the Aptos network are compensated with APT for securing the blockchain through a Proof-of-Stake (PoS) model. Their income comes from transaction gas fees and staking rewards (emissions). Validators set their own commission rates for delegators. Notably, Aptos does not use "slashing" (principal penalty). Instead, poor performance is penalized via missed rewards for that epoch. Every transaction requires gas fees, structured as: -Execution &#x26; IO Fees: Covers CPU work and data reading/writing. It is the product of gas units used and the market gas price. -Storage Fees (Storage Deposit): Covers on-chain data storage. Unique to Aptos, this fee is a refundable deposit; users can receive a 100% refund when the data is deleted from the ledger</td></tr><tr><td>H.6</td><td><p>Use of distributed ledger</p><p>technology</p></td><td>false</td></tr><tr><td>H.7</td><td>DLT functionality description</td><td>N/A</td></tr><tr><td>H.8</td><td>Audit</td><td>true</td></tr><tr><td>H.9</td><td>Audit outcome</td><td><p>OtterSec (<a href="https://135941930-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS1BuIoYSwiJZqNrZeQzd%2Fuploads%2FXNDGGecyO1F9NwaIho4j%2Famnis_audit_final.pdf?alt=media&#x26;token=76b9a7f5-13f0-4d41-b169-0d3cb6cedec8">https://135941930-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS1BuIoYSwiJZqNrZeQzd%2Fuploads%2FXNDGGecyO1F9NwaIho4j</a> <a href="https://135941930-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS1BuIoYSwiJZqNrZeQzd%2Fuploads%2FXNDGGecyO1F9NwaIho4j%2Famnis_audit_final.pdf?alt=media&#x26;token=76b9a7f5-13f0-4d41-b169-0d3cb6cedec8">alt=media&#x26;token=76b9a7f5-13f0-4d41-b169-0d3cb6cedec8</a>)</p><p>Movebit (<a href="">https://movebit.xyz/reports/Amnis-Finance-Final-Audit-Report.pdf</a>)</p><p>Verichain (<a href="https://github.com/verichains/public-audit-reports/blob/main/Amnis%20Finance%20-%20Public%20Report%20v1.1.pdf">https://github.com/verichains/public-audit-reports/blob/main/Amnis%20Finance%20-</a></p></td></tr></tbody></table>
- [2041] www.verichains.io
- [2042] <table data-header-hidden><thead><tr><th width="82"></th><th></th><th></th></tr></thead><tbody><tr><td><strong>No.</strong></td><td><strong>Field</strong></td><td><strong>Content</strong></td></tr><tr><td>H.1</td><td>Distributed ledger technology (DTL)</td><td>Deployed on the Aptos Blockchain, a Layer-1 Proof-of-Stake (PoS) network</td></tr><tr><td>H.2</td><td>Protocols and technical standards</td><td>AMI is an Aptos Fungible Asset (FA) token, ensuring compatibility with Aptos wallets, exchanges, and smart contracts built in the Move programming language. The Aptos blockchain is a Layer-1 Proof-of-Stake network (AptosBFT), providing high throughput, low latency, and strong security guarantees.</td></tr><tr><td>H.3</td><td>Technology used</td><td>AMI tokens can be held, stored, and transferred using Aptos-compatible wallets that support Move-based fungible tokens, including both software and hardware wallets. Transfers occur on-chain through the Aptos network, and token holders may also interact with AMI via supported exchanges and DeFi interfaces that comply with applicable laws and platform policies.</td></tr><tr><td>H.4</td><td>Consensus mechanism</td><td>Aptos uses a Proof-of-Stake (PoS) consensus mechanism called AptosBFT**,**a HotStuff-inspired Byzantine Fault Tolerance (BFT) protocol that ensures rapid transaction finality and high security by requiring validators to stake APT tokens to validate transactions. It combines this with a parallel execution engine (Block-STM) and a modular design, allowing independent upgrades and faster, more scalable throughput than traditional chains.</td></tr><tr><td>H.5</td><td>Incentive mechanisms and applicable fees</td><td>Validators on the Aptos network are compensated with APT for securing the blockchain through a Proof-of-Stake (PoS) model. Their income comes from transaction gas fees and staking rewards (emissions). Validators set their own commission rates for delegators. Notably, Aptos does not use "slashing" (principal penalty). Instead, poor performance is penalized via missed rewards for that epoch. Every transaction requires gas fees, structured as: -Execution &#x26; IO Fees: Covers CPU work and data reading/writing. It is the product of gas units used and the market gas price. -Storage Fees (Storage Deposit): Covers on-chain data storage. Unique to Aptos, this fee is a refundable deposit; users can receive a 100% refund when the data is deleted from the ledger</td></tr><tr><td>H.6</td><td><p>Use of distributed ledger</p><p>technology</p></td><td>false</td></tr><tr><td>H.7</td><td>DLT functionality description</td><td>N/A</td></tr><tr><td>H.8</td><td>Audit</td><td>true</td></tr><tr><td>H.9</td><td>Audit outcome</td><td><p>OtterSec (<a href=">https://135941930-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS1BuIoYSwiJZqNrZeQzd%2Fuploads%2FXNDGGecyO1F9NwaIho4j</a> <a href="https://135941930-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FS1BuIoYSwiJZqNrZeQzd%2Fuploads%2FXNDGGecyO1F9NwaIho4j%2Famnis_audit_final.pdf?alt=media&#x26;token=76b9a7f5-13f0-4d41-b169-0d3cb6cedec8">alt=media&#x26;token=76b9a7f5-13f0-4d41-b169-0d3cb6cedec8</a>)</p><p>Movebit (<a href="https://movebit.xyz/reports/Amnis-Finance-Final-Audit-Report.pdf">https://movebit.xyz/reports/Amnis-Finance-Final-Audit-Report.pdf</a>)</p><p>Verichain (<a href="https://github.com/verichains/public-audit-reports/blob/main/Amnis%20Finance%20-%20Public%20Report%20v1.1.pdf">https://github.com/verichains/public-audit-reports/blob/main/Amnis%20Finance%20-</a></p></td></tr></tbody></table>

Fork inheritance lineage and inherited audits are included when available.
