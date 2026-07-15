# Agentic Audit Brief: Sovryn Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 17 (0 matched; 17 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Sovryn Bridge (`sovryn-bridge`)
- Website: [https://alpha.sovryn.app](https://alpha.sovryn.app)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, rootstock
- Contract surface: 68 unique implementations (70 raw deployments)
- Coverage basis: 0/11 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,420,653.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sovryn Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across bsc, ethereum, rootstock. Structural roles: 10 unclassified, 1 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: unclassified (10), core (1), supporting (1)
- Contract kinds: contract (12)
- Detected standards: erc1967proxy (1)
- Frameworks: none
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 18 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AdminUpgradeabilityProxy (`0x33c0d3...366ee1`, chain 1)
- AllowTokens (`0x05b68e...d5327d`, chain 56)
- BNBbs (`0xd2a826...169385`, chain 30)
- Bridge (`0xdfc712...4c2aa7`, chain 56)
- BSC-RSK AllowTokens (`0xa2f50a...5d8983`, chain 30)
- BSC-RSK Bridge (`0x971b97...e2e350`, chain 30)
- BSC-RSK Federation (`0xd1e45f...16971c`, chain 30)
- bSOV (`0x8753ed...9e4359`, chain 56)
- eDLLR (`0xbdbb63...323dd1`, chain 1)
- eSOV (`0xbdab72...b8f7a5`, chain 1)
- ETH-RSK AllowTokens (`0xd2090f...2d32ff`, chain 30)
- ETH-RSK Bridge (`0x1ccad8...399581`, chain 30)
- ETH-RSK Federation (`0x32593e...2855b4`, chain 30)
- ETHbs (`0x30d1b3...8c3007`, chain 30)
- ETHes (`0xfe8782...e0a755`, chain 30)
- Federation (`0xd77b76...836a3e`, chain 1)
- Federation (`0x502fbc...d005b4`, chain 56)
- WBNB bridge internal (`0xb6c313...0e69f0`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 12; live-surface rows included: 12 (11 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/11 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 20 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 44 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 20 of 68 unique; 48 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 53
- Unique implementations: 68
- Raw deployments: 70
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 14 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392878 | `0x33c0d3...366ee1` | ⚠️ Unaudited |
| AllowTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1486e2...f70fe0`; ethereum `0x9d772c...9789fd` | ⚠️ Unaudited |
| AllowTokens | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392856 | `0x8df20c...0aa1be` | ⚠️ Unaudited |
| AllowTokens | unknown | project_anchor | own_supporting | 0 | bsc | unit-392872 | `0x05b68e...d5327d` | ⚠️ Unaudited |
| Bridge | unknown | project_anchor | own_supporting | 0 | bsc | unit-392876 | `0xdfc712...4c2aa7` | ⚠️ Unaudited |
| BSC-RSK Bridge | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392864 | `0x971b97...e2e350` | ⚠️ Unaudited |
| eDLLR | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392858 | `0xbdbb63...323dd1` | ⚠️ Unaudited |
| eSOV | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392857 | `0xbdab72...b8f7a5` | ⚠️ Unaudited |
| ETH-RSK Bridge | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392861 | `0x1ccad8...399581` | ⚠️ Unaudited |
| Federation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2493b9...4cbd18`; ethereum `0xa38e6a...c4df24` | ⚠️ Unaudited |
| Federation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392860 | `0xd77b76...836a3e` | ⚠️ Unaudited |
| Federation | unknown | project_anchor | own_supporting | 0 | bsc | unit-392873 | `0x502fbc...d005b4` | ⚠️ Unaudited |
| MultiSigWallet | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-392855 | `0x062c74...3ccd2e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd60010...512c07` | ⚠️ Unaudited |
| WBNB bridge internal | unknown | project_anchor | own_supporting | 0 | bsc | unit-392875 | `0xb6c313...0e69f0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (53)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BNBbs | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392869 | `0xd2a826...169385` | ❓ Unverified |
| BSC-RSK AllowTokens | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392865 | `0xa2f50a...5d8983` | ❓ Unverified |
| BSC-RSK Federation | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392867 | `0xd1e45f...16971c` | ❓ Unverified |
| bSOV | unknown | project_anchor | own_supporting | 0 | bsc | unit-392874 | `0x8753ed...9e4359` | ❓ Unverified |
| ETH-RSK AllowTokens | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392868 | `0xd2090f...2d32ff` | ❓ Unverified |
| ETH-RSK Federation | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392863 | `0x32593e...2855b4` | ❓ Unverified |
| ETHbs | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392862 | `0x30d1b3...8c3007` | ❓ Unverified |
| ETHes | unknown | project_anchor | own_supporting | 0 | rootstock | unit-392871 | `0xfe8782...e0a755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05b68e...d5327d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e3ba...86438e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19d3c7...c0b0f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c9ede...699c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d937d...a99914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9524...48fade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x249ea3...744faf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29cdad...633b71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49eef2...ecf420` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x603e82...d24d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657595...65bea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67bb74...477880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72efb4...e0e0d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74aa9b...d4d45f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x752fa1...928537` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8027e0...05a500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x882619...f9b52f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8908c9...c8eba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8be5c4...0dc148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97d761...9e37bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa908bc...9ca92a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad95d2...806453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaed21f...e3c391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb14b35...469379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4ba8c...c79156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6c313...0e69f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7405c...0a7e41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8b037...4d8868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0b2a9...a4fa1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc51579...148959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc81a82...c16ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0ee3...c6971d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6b220...ae8ec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd913f2...be216c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0a825...6378d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1b1ad...836747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8d817...42eb4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf29fd8...c7c374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9a59a...68545c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcc895...e06196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe4e2a...509d6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | rootstock | unit-392866 | `0xb64322...d9dbc3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | rootstock | unit-392870 | `0xee9ea5...68a6c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-392877 | `0xec3fab...93a328` | ❓ Unverified |
| WETH bridge internal | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392859 | `0xd412ac...f09538` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [omniscia.io/reports/sovryn-bridge-implementation-v4](https://omniscia.io/reports/sovryn-bridge-implementation-v4) | Omniscia | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Least Authority - Sovryn Bi-directional FastBTC Final Audit Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/DistributedCollective/sovryn-audits/main/Least%20Authority%20-%20Sovryn%20Bi-directional%20FastBTC%20Final%20Audit%20Report.pdf) | Least Authority | Audit | 2022-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Manual audit seed](https://wiki.sovryn.com/en/technical-documents/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [System-wide Sovryn Smart Contract Audit by CertiK, October 2021 (also discovered via alternate URL)](https://raw.githubusercontent.com/DistributedCollective/sovryn-audits/main/certik-pre-sovryn-2021-10-11.pdf) | CertiK | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |
| [Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021](https://github.com/DistributedCollective/sovryn-audits/blob/main/Smart%20Contract%20Audit_%20Zero.pdf) | Chainsulting | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 60 | high |
| [Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021](https://github.com/DistributedCollective/sovryn-audits/blob/main/Smart%20Contract%20Audit_Origins.pdf) | Chainsulting | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 35 | high |
| [BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021](https://omniscia.io/reports/sovryn-babelfish-protocol-v1) | yAudit | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Staking Contract Audit by Franklin Richards, January 2021](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn_Staking_Smart_Contract_Audit.pdf) | Franklin Richards | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Genesis Sale Audit by Franklin Richards, January 2021](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn_Genesis_Sale_Contract_Audit.pdf) | Franklin Richards | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [cSOV Token Audit by Franklin Richards, January 2021](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn_CSOV_Token_Contract_Audit.pdf) | Franklin Richards | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Sovryn Governance Security Audit v210115.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn%20Governance%20Security%20Audit%20v210115.pdf) | yAudit | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [Governance Audit by Franklin Richards, December 2020](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn_Governance_Smart_Contract_Audit.pdf) | Franklin Richards | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Smart Contract Source Code Audit, December 2020](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn%20Security%20Audit%20Smart%20Contracts%20v201218.pdf) | yAudit | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [Audit by Pessimistic, October 7, 2020](https://sovryn.app/images/pdf/SovrynAudit2020.pdf) | Pessimistic | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Sovryn Security Recheck.pdf](https://github.com/DistributedCollective/sovryn-audits/blob/main/Sovryn%20Security%20Recheck.pdf) | Unknown | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21319] omniscia.io/reports/sovryn-bridge-implementation-v4 — no match: Extracted 9 contract names from the 'Files in Scope' section. No audit date found in the provided text.
- [21320] Least Authority - Sovryn Bi-directional FastBTC Final Audit Report.pdf — no match: The report mentions a 'smart contract suite' but does not list specific contract names or file paths. The scope section only references a GitHub repository and commit hash, not individual contracts.
- [24484] Manual audit seed — no match: The provided text is a list of audit reports and references, not an actual audit report with a scope section. No specific contracts in scope are mentioned.
- [24485] System-wide Sovryn Smart Contract Audit by CertiK, October 2021 — no match: No reason recorded
- [24486] Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 — no match: All contracts listed in the 'Tested Contract Files' section (pages 9-11) and 'Source Unites in Scope' table (pages 15-21) are included. The audit date is from the final document version 1.0 on page 3.
- [24487] Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 — no match: All contracts listed in the 'Tested Contract Files' section (pages 9-10) and 'Source Unites in Scope' table (pages 14-17) are included. The audit date is from the cover page and final document version.
- [24488] BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 — no match: Extracted 10 contract names from the 'Files in Scope' table. No audit date found in the provided text.
- [24490] Staking Contract Audit by Franklin Richards, January 2021 — no match: All contracts listed in the introduction section with full GitHub URLs.
- [24491] Genesis Sale Audit by Franklin Richards, January 2021 — no match: Only one contract, CrowdSale, is explicitly mentioned as the audited contract.
- [24492] cSOV Token Audit by Franklin Richards, January 2021 — no match: Only one contract, CSOVToken, is explicitly mentioned as the audited contract.
- [24493] Sovryn Governance Security Audit v210115.pdf — no match: Extracted 17 contract names from the scope section listing Solidity source files with sha256sum hashes. Audit date inferred from 'January 2021' on cover page, using last day of month.
- [24494] Governance Audit by Franklin Richards, December 2020 — no match: Only one contract in scope: GovernorAlpha
- [24495] Smart Contract Source Code Audit, December 2020 — no match: Extracted contract names from Phase 1 and Phase 3 descriptions, findings, and file paths. Audit date inferred from 'December 2020' in executive summary and remediation section.
- [24496] Audit by Pessimistic, October 7, 2020 — no match: The report does not have a clear scope section listing contracts; contracts are inferred from pull requests and issues. The audit date is from the publication date.
- [24498] Sovryn Security Recheck.pdf — no match: The report explicitly lists 4 pull requests as scope, but only three contract names are mentioned in findings: ConverterRegisry, LoanClosings, SwapsUser. The report does not list all contracts in the repositories; only those with issues are named.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| omniscia.io/reports/sovryn-bridge-implementation-v4 | AllowTokens | ambiguous — not counted | AllowTokens (alternative) `0x05b68e...d5327d` — liveness: live (current_address_book_code)<br>AllowTokens (alternative) `0x8df20c...0aa1be` — deployed 2021-05-22 18:22:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| omniscia.io/reports/sovryn-bridge-implementation-v4 | Bridge | ambiguous — not counted | AdminUpgradeabilityProxy (proxy) (alternative) `0x33c0d3...366ee1` — deployed 2021-03-25 22:36:33+03 — liveness: live (code_present_context)<br>Bridge (alternative) `0xdfc712...4c2aa7` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| omniscia.io/reports/sovryn-bridge-implementation-v4 | Federation | ambiguous — not counted | Federation (alternative) `0x502fbc...d005b4` — liveness: live (current_address_book_code)<br>Federation (alternative) `0xd77b76...836a3e` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| omniscia.io/reports/sovryn-bridge-implementation-v4 | IErc777Receiver | unmatched — not counted | — | listed in scope | no |
| omniscia.io/reports/sovryn-bridge-implementation-v4 | MultiSigWallet | unmatched — not counted | — | listed in scope | no |
| omniscia.io/reports/sovryn-bridge-implementation-v4 | SideToken | unmatched — not counted | — | listed in scope | no |
| omniscia.io/reports/sovryn-bridge-implementation-v4 | SideTokenFactory | unmatched — not counted | — | listed in scope | no |
| omniscia.io/reports/sovryn-bridge-implementation-v4 | Utils | unmatched — not counted | — | listed in scope | no |
| omniscia.io/reports/sovryn-bridge-implementation-v4 | erc777Converter | unmatched — not counted | — | listed in scope | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ZUSDToken | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | LiquityBaseParams | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | HintHelpers | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | SortedTrovesStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | SortedTroves | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | MultiTrovesGetter | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | DefaultPool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | CollSurplusPool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | UpgradableProxy | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | StabilityPoolStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | PriceFeedStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ActivePoolStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | PriceFeed | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | BorrowerOperationsStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | TroveManager | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | BorrowerOperations | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | TroveManagerStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ETHTransferScript | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | BorrowerWrappersScript | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | Proxy | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ActivePool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ZEROStakingScript | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | TokenScript | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | TroveManagerScript | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | StabilityPoolScript | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | BorrowerOperationsScript | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ISortedTroves | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IBorrowerOperations | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | MultiTroveGetterStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | StabilityPool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | GasPool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | HintHelpersStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | DefaultPoolStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ZUSDTokenStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | CollSurplusPoolStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IStabilityPool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IDefaultPool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ITroveManager | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | CommunityIssuance | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | LockupContractFactory | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IZEROToken | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | CommunityIssuanceBase | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ILiquityBaseParams | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IPriceFeed | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | CommunityIssuanceStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IPool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | LockupContract | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ICommunityIssuance | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ZEROToken | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IActivePool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ZEROStakingStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | LockupContractFactoryStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IZUSDToken | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ILockupContractFactory | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ZEROStaking | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | IZEROStaking | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ICollSurplusPool | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | SovStakersIssuance | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ZEROTokenStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021 | ILiquityBase | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | ErrorDecoder | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | SafeMath96 | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | RSKAddrValidator | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | FeeSharingProxy | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | Staking | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | StakingProxy | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | StakingStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | Checkpoints | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | WeightedStaking | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | VestingRegistry3 | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | VestingFactory | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | Vesting | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | VestingStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | TeamVesting | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | VestingLogic | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | UpgradableProxy | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | Proxy | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | ApprovalReceiver | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | Token | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IVesting | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IVestingFactory | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IVestingRegistry | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | ILockedFund | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IFeeSharingProxy | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IStaking | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IOrigins | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IApproveAndCall | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IVestingLogic | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | IERC20 | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | ITeamVesting | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | OriginsEvents | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | OriginsAdmin | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | OriginsStorage | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | OriginsBase | unmatched — not counted | — | listed in scope table | no |
| Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021 | LockedFund | unmatched — not counted | — | listed in scope table | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | BasketManager | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | IBridge | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | IOwnable | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | InitializableOwnable | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | InitializableReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | Masset | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | MassetProxy | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | Ownable | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | Token | unmatched — not counted | — | listed in scope | no |
| BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021 | ThresholdProxyAdmin | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | Checkpoints | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | IStaking | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | SafeMath96 | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | Staking | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | StakingProxy | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | StakingStorage | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | WeightedStaking | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | IVesting | unmatched — not counted | — | listed in scope | no |
| Staking Contract Audit by Franklin Richards, January 2021 | IFeeSharingProxy | unmatched — not counted | — | listed in scope | no |
| Genesis Sale Audit by Franklin Richards, January 2021 | CrowdSale | unmatched — not counted | — | listed in scope | no |
| cSOV Token Audit by Franklin Richards, January 2021 | CSOVToken | unmatched — not counted | — | listed in scope | no |
| Sovryn Governance Security Audit v210115.pdf | IVesting | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | Vesting | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | TeamVesting | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | RSOV | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | DevelopmentVesting | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | IFeeSharingProxy | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | StakingStorage | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | SafeMath96 | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | WeightedStaking | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | Checkpoints | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | IStaking | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | StakingProxy | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | Staking | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | Timelock | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | FeeSharingProxy | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | GovernorAlpha | unmatched — not counted | — | listed in scope with sha256sum | no |
| Sovryn Governance Security Audit v210115.pdf | Proxy | unmatched — not counted | — | listed in scope with sha256sum | no |
| Governance Audit by Franklin Richards, December 2020 | GovernorAlpha | unmatched — not counted | — | listed in scope | no |
| Smart Contract Source Code Audit, December 2020 | SwapsImplSovrynSwap | unmatched — not counted | — | mentioned in Phase 1 section 1 and findings SVN-003, SVN-004, SVN-011 | no |
| Smart Contract Source Code Audit, December 2020 | PriceFeedsMoC | unmatched — not counted | — | mentioned in Phase 1 section 2 | no |
| Smart Contract Source Code Audit, December 2020 | LoanClosings | unmatched — not counted | — | mentioned in Phase 1 section 1 and Phase 3 entry points | no |
| Smart Contract Source Code Audit, December 2020 | PriceFeeds | unmatched — not counted | — | mentioned in Phase 1 section 1 and Phase 3 | no |
| Smart Contract Source Code Audit, December 2020 | RewardHelper | unmatched — not counted | — | mentioned in Phase 1 section 6 | no |
| Smart Contract Source Code Audit, December 2020 | RBTCWrapperProxy | unmatched — not counted | — | mentioned in Phase 1 section 11 | no |
| Smart Contract Source Code Audit, December 2020 | WRBTC | unmatched — not counted | — | mentioned in Phase 1 section 11 and finding SVN-002 | no |
| Smart Contract Source Code Audit, December 2020 | LoanTokenLogicStandard | unmatched — not counted | — | mentioned in Phase 3 entry points and findings SVN-010, SVN-012, SVN-013 | no |
| Smart Contract Source Code Audit, December 2020 | LoanTokenLogicWrbtc | unmatched — not counted | — | mentioned in Phase 3 entry points | no |
| Smart Contract Source Code Audit, December 2020 | SwapsExternal | unmatched — not counted | — | mentioned in finding SVN-011 | no |
| Smart Contract Source Code Audit, December 2020 | SwapsUser | unmatched — not counted | — | mentioned in finding SVN-011 | no |
| Smart Contract Source Code Audit, December 2020 | LoanMaintenance | unmatched — not counted | — | mentioned in finding SVN-011 | no |
| Smart Contract Source Code Audit, December 2020 | LoanOpenings | unmatched — not counted | — | mentioned in finding SVN-011 | no |
| Smart Contract Source Code Audit, December 2020 | MoCBTCToUSDOracle | unmatched — not counted | — | mentioned in finding SVN-001 | no |
| Smart Contract Source Code Audit, December 2020 | PriceOracle | unmatched — not counted | — | mentioned in finding SVN-001 | no |
| Smart Contract Source Code Audit, December 2020 | ConverterRegistry | unmatched — not counted | — | mentioned in Phase 1 section 9 | no |
| Smart Contract Source Code Audit, December 2020 | State | unmatched — not counted | — | mentioned in Phase 1 section 5 and finding SVN-011 | no |
| Smart Contract Source Code Audit, December 2020 | Constants | unmatched — not counted | — | mentioned in Phase 1 section 5 | no |
| Audit by Pessimistic, October 7, 2020 | ConverterRegisry | unmatched — not counted | — | mentioned in critical issue: new contract setup in ConverterRegisry contract | no |
| Audit by Pessimistic, October 7, 2020 | LoanClosings | unmatched — not counted | — | mentioned in low severity issue: code style in modules/LoanClosings.sol | no |
| Audit by Pessimistic, October 7, 2020 | SwapsUser | unmatched — not counted | — | mentioned in low severity issue: out of scope but included in report | no |
| Sovryn Security Recheck.pdf | ConverterRegisry | unmatched — not counted | — | mentioned in critical issue: 'newConverter() function that performs the deployment. setupConverter() function that performs the setup newly deployed contract.' | no |
| Sovryn Security Recheck.pdf | LoanClosings | unmatched — not counted | — | mentioned in low severity issue: 'code style issues in modules/LoanClosings.sol' | no |
| Sovryn Security Recheck.pdf | SwapsUser | unmatched — not counted | — | mentioned in low severity issue: 'In contracts/swaps/SwapsUser.sol of Sovryn-smart-contracts repository' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x8df20c...0aa1be` | AllowTokens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 62 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 164 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11, low=2, medium=1
- Match method counts: n/a

Zero-match audit list:

- [21319] omniscia.io/reports/sovryn-bridge-implementation-v4
- [21320] Least Authority - Sovryn Bi-directional FastBTC Final Audit Report.pdf
- [24484] Manual audit seed
- [24485] System-wide Sovryn Smart Contract Audit by CertiK, October 2021
- [24486] Sovryn Zero Protocol Smart Contract Audit by Chainsulting, October 2021
- [24487] Sovryn Origins Platform Smart Contract Audit by Chainsulting, October 2021
- [24488] BabelFish Protocol Phase Security Audit by Omniscia, Added September 2021
- [24490] Staking Contract Audit by Franklin Richards, January 2021
- [24491] Genesis Sale Audit by Franklin Richards, January 2021
- [24492] cSOV Token Audit by Franklin Richards, January 2021
- [24493] Sovryn Governance Security Audit v210115.pdf
- [24494] Governance Audit by Franklin Richards, December 2020
- [24495] Smart Contract Source Code Audit, December 2020
- [24496] Audit by Pessimistic, October 7, 2020
- [24498] Sovryn Security Recheck.pdf

Fork inheritance lineage and inherited audits are included when available.
