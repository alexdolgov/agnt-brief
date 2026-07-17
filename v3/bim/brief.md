# Agentic Audit Brief: BIM

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 20 (1 matched; 19 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: BIM (`bim`)
- Website: [https://exchange.bim.finance/](https://exchange.bim.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, fraxtal, gnosis, optimism, plasma, polygon, sonic
- Contract surface: 19 unique implementations (19 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $232,342.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for BIM. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across base, polygon. Structural roles: 1 infra. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: infra (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x115a40e5f42a9369797643a65220411c533da38c`, chain 137)
- UnnamedContract (`0x224bc163953c0ed9e3ac638c216ec79512aa5861`, chain 137)
- UnnamedContract (`0x374c3c70c1b702914fce4b371460cb60960f4368`, chain 137)
- UnnamedContract (`0x41419527a96066601f17b704659873bd3ae73067`, chain 137)
- UnnamedContract (`0x6ce8c05aacb514061de16146ac0b7d4bbeae163d`, chain 137)
- UnnamedContract (`0xb07232ddd2fe3c3572ed129099eca12b779c5f6d`, chain 137)
- UnnamedContract (`0xe78649874bcdb7a9d1666e665f340723a0187482`, chain 137)
- UnnamedContract (`0xf6ed5c4bb724947e5d5dd5957260893ac871fbc8`, chain 137)
- BIM (`0x555fff48549c1a25a723bd8e7ed10870d82e8379`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 9 of 19 unique; 10 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/11
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 19
- Raw deployments: 19
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 1 fresh, 5 aging, 13 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyberscope | Tier 2 | 1 | 9.1% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BIM | unknown | project_anchor | own_supporting | 0 | base | unit-380593 | `0x555fff48549c1a25a723bd8e7ed10870d82e8379` | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BimOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62ff2b90a14c2e312c8b1c4c08f61af710da76d2` | ⚠️ Unaudited |
| BimSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb32a5263eb60c56610bb44b566f6d44b6ae067ef` | ⚠️ Unaudited |
| BimVaultV7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee95508e0f52dbea2aaa507462735a3de731304b` | ⚠️ Unaudited |
| BimZapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa8c8504bf1dc659d93ca5a05dc77d7104142a856` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xccf8a786c25b3b4a0ed498bfcb670cc3e8a36263` | ⚠️ Unaudited |
| StrategyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f44a33091f5b18a5ea411f927c6106f5d560948` | ⚠️ Unaudited |
| StrategyVelodromeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19fd67135a6c101d1a72f4ed315f2f546a4a6216` | ⚠️ Unaudited |
| StrategyVelodromeGaugeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdba417c3a34c03ef2b360a9a2d5dc70bfccffe3f` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20ee7cc55345db9296d32b4a86bb72939284163b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x270b04518596851d67de4074845f37dcdea9dd29` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380585 | `0x115a40e5f42a9369797643a65220411c533da38c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380586 | `0x224bc163953c0ed9e3ac638c216ec79512aa5861` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380587 | `0x374c3c70c1b702914fce4b371460cb60960f4368` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380588 | `0x41419527a96066601f17b704659873bd3ae73067` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380589 | `0x6ce8c05aacb514061de16146ac0b7d4bbeae163d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380590 | `0xb07232ddd2fe3c3572ed129099eca12b779c5f6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380591 | `0xe78649874bcdb7a9d1666e665f340723a0187482` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380592 | `0xf6ed5c4bb724947e5d5dd5957260893ac871fbc8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [<mark style="color:orange;">Cyberscope</mark>](https://www.cyberscope.io/audits/1-bim) | Cyberscope | Audit | 2023-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [<mark style="color:orange;">Certik</mark>](https://skynet.certik.com/projects/bim-finance) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Rendered PDF capture](https://raw.githubusercontent.com/beefyfinance/beefy-audits/e19a496ea5e46f6067aa5a64fd435e6796fa06b5/2021-06-24-Beefy-Smart-Contract.pdf) | Ottersec | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/beefyfinance/beefy-audits/e19a496ea5e46f6067aa5a64fd435e6796fa06b5/2023-12-15-Beefy-OZ-Zap-Audit.pdf) | Ottersec | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/paltalabs/defindex/a0fcabfae38f1c7b0c9c2f10ff51d225f8edc2f1/audits/2025_03_18_ottersec_defindex_audit.pdf) | Ottersec | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/beefyfinance/beefy-audits/e19a496ea5e46f6067aa5a64fd435e6796fa06b5/2021-03-05-Beefy-CertiK-Final-For-Beefy-Contracts.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [01-2025 - Mayan Implementation - Decurity.pdf](https://github.com/SocketDotTech/audits/blob/main/Bungee/01-2025%20-%20Mayan%20Implementation%20-%20Decurity.pdf) | Decurity | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [02-2023 - Gateway - Consensys Diligence.pdf](https://github.com/SocketDotTech/audits/blob/main/Bungee/02-2023%20-%20Gateway%20-%20Consensys%20Diligence.pdf) | Consensys Diligence | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [04-2024 - Hop L2 implementation - Decurity.pdf](https://github.com/SocketDotTech/audits/blob/main/Bungee/04-2024%20-%20Hop%20L2%20implementation%20-%20Decurity.pdf) | Decurity | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [04-2025 - CCTPV2 Bungee Auto Implementation - Decurity.pdf](https://github.com/SocketDotTech/audits/blob/main/Bungee/04-2025%20-%20CCTPV2%20Bungee%20Auto%20Implementation%20-%20Decurity.pdf) | Decurity | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [08-2024 - Stargate v2 implementation - Decurity.pdf](https://github.com/SocketDotTech/audits/blob/main/Bungee/08-2024%20-%20Stargate%20v2%20implementation%20-%20Decurity.pdf) | Decurity | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [09-2021 - Registry - PeckShield.pdf](https://github.com/SocketDotTech/audits/blob/main/Bungee/09-2021%20-%20Registry%20-%20PeckShield.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [11-2024 - Mantle Implementation - Decurity.pdf](https://github.com/SocketDotTech/audits/blob/main/Bungee/11-2024%20-%20Mantle%20Implementation%20-%20Decurity.pdf) | Decurity | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [12-2024 - Bungee Protocol - Hexens.pdf](https://github.com/SocketDotTech/audits/blob/main/Bungee/12-2024%20-%20Bungee%20Protocol%20-%20Hexens.pdf) | Hexens | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [01-2024 - Super Token - Hexens.pdf](https://github.com/SocketDotTech/audits/blob/main/Socket/01-2024%20-%20Super%20Token%20-%20Hexens.pdf) | Hexens | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [03-2024 - Supermodular Plugs - Hexens.pdf](https://github.com/SocketDotTech/audits/blob/main/Socket/03-2024%20-%20Supermodular%20Plugs%20-%20Hexens.pdf) | Hexens | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [07-2023 - Data Layer - Zellic.pdf](https://github.com/SocketDotTech/audits/blob/main/Socket/07-2023%20-%20Data%20Layer%20-%20Zellic.pdf) | Zellic | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 30 | high |
| [08-2023 - Data Layer Core - Hexens.pdf](https://github.com/SocketDotTech/audits/blob/main/Socket/08-2023%20-%20Data%20Layer%20Core%20-%20Hexens.pdf) | Hexens | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [08-2023 - Super Bridge - Hexens.pdf](https://github.com/SocketDotTech/audits/blob/main/Socket/08-2023%20-%20Super%20Bridge%20-%20Hexens.pdf) | Hexens | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [PeckShield-Audit-Report-OpenRouter-v1.0.pdf](https://github.com/SocketDotTech/audits/blob/main/Socket/PeckShield-Audit-Report-OpenRouter-v1.0.pdf) | PeckShield | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19547] <mark style="color:orange;">Cyberscope</mark> — matched: Extracted from audited files table with SHA256 hashes. Date from 'TokenIteration (18/10/2023)'.
- [19548] <mark style="color:orange;">Certik</mark> — no match: The provided text is a project overview page from CertiK Skynet, not an audit report. It contains no scope section, contract names, or audit date.
- [19552] Rendered PDF capture — no match: Four contracts explicitly listed in Audit Scope table with file paths and SHA256 checksums.
- [19553] Rendered PDF capture — no match: All contracts listed in the Scope section of the audit report.
- [19554] Rendered PDF capture — no match: The scope section explicitly lists three programs: factory, vault, and strategies. No individual contract files or addresses are provided. The audit date is clearly stated on the cover page as 'March 18th, 2025'.
- [19555] Rendered PDF capture — no match: Scope table lists 4 contracts: StrategyCake.sol, StrategySyrup.sol, YieldBalancer.sol, BeefyVaultV4.sol. External addresses are explicitly excluded.
- [19556] 01-2025 - Mayan Implementation - Decurity.pdf — no match: Only one contract in scope: MayanBridge.sol. Audit date inferred from status date in summary table (14 January 2025).
- [19557] 02-2023 - Gateway - Consensys Diligence.pdf — no match: Extracted contract names from the 'Files in Scope' appendix and from findings that reference specific contracts. The audit date is the end date of the review period (March 3, 2023).
- [19558] 04-2024 - Hop L2 implementation - Decurity.pdf — no match: Only one contract explicitly in scope: HopCctpImplL2. Test file mentioned but not a contract.
- [19559] 04-2025 - CCTPV2 Bungee Auto Implementation - Decurity.pdf — no match: Only one contract in scope: CCTPV2RouterSingleOutput.sol. Audit period ended 18/04/2025, so date is 2025-04-18.
- [19560] 08-2024 - Stargate v2 implementation - Decurity.pdf — no match: Two contracts in scope: StargateV2.sol and stargate.sol. Audit period ended 06/04/2024.
- [19561] 09-2021 - Registry - PeckShield.pdf — no match: Extracted contract names from the scope table (Table 1.1) and detailed findings sections. The audit report is for FundMovr, a bridge aggregator. The contracts listed are the main audited contracts.
- [19562] 11-2024 - Mantle Implementation - Decurity.pdf — no match: Only one contract (MantleNative) is explicitly in scope. Test files are mentioned but not in scope.
- [19563] 12-2024 - Bungee Protocol - Hexens.pdf — no match: Extracted contract names from scope section and findings paths. Audit date from 'delivered' field: 20.01.2025.
- [19564] 01-2024 - Super Token - Hexens.pdf — no match: Scope section mentions 'Super Token and Super Token Vault contracts' and lists repository URL. Additional contracts (SocketPlug, Execute) are referenced in findings with file paths.
- [19565] 03-2024 - Supermodular Plugs - Hexens.pdf — no match: Extracted contracts from scope section and findings paths. Audit delivered date is 22.03.2024.
- [19566] 07-2023 - Data Layer - Zellic.pdf — no match: Extracted 30 contract names from the scope table in section 2.4. Audit date from cover page and executive summary.
- [19567] 08-2023 - Data Layer Core - Hexens.pdf — no match: Scope section explicitly lists 5 contracts with full file paths. Audit completion date is 16.08.2023.
- [19568] 08-2023 - Super Bridge - Hexens.pdf — no match: Extracted from audit report for Socket. Scope section lists repository URL but not individual files; contract names extracted from findings and paths.
- [19569] PeckShield-Audit-Report-OpenRouter-v1.0.pdf — no match: Only one contract, OpenRouter, is in scope. The report mentions no other contracts.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| <mark style="color:orange;">Cyberscope</mark> | BIM | own contract | BIM (selected) `0x555fff48549c1a25a723bd8e7ed10870d82e8379` — deployed 2025-03-13 19:10:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| <mark style="color:orange;">Cyberscope</mark> | ERC20 | unmatched — not counted | — | listed in audited files | no |
| <mark style="color:orange;">Cyberscope</mark> | IERC20 | unmatched — not counted | — | listed in audited files | no |
| <mark style="color:orange;">Cyberscope</mark> | ERC20Burnable | unmatched — not counted | — | listed in audited files | no |
| <mark style="color:orange;">Cyberscope</mark> | IERC20Metadata | unmatched — not counted | — | listed in audited files | no |
| <mark style="color:orange;">Cyberscope</mark> | Context | unmatched — not counted | — | listed in audited files | no |
| Rendered PDF capture | StrategyAutoCake | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | StrategyAutoVenus | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | BeefyBurningVault | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | BeefyVaultV3 | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | IBeefyTokenManager | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IBeefyZapRouter | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IPermit2 | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | BeefyTokenManager | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | BeefyZapRouter | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ZapErrors | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | factory | unmatched — not counted | — | listed in scope section: 'Name: factory, Description: It allows for multiple vaults to be deployed dynamically.' | no |
| Rendered PDF capture | vault | unmatched — not counted | — | listed in scope section: 'Name: vault, Description: It enables users to deposit assets and passively invest them across multiple decentralized finance (DeFi) strategies...' | no |
| Rendered PDF capture | strategies | unmatched — not counted | — | listed in scope section: 'Name: strategies, Description: A predefined set of steps for executing investments across one or more protocols...' | no |
| Rendered PDF capture | StrategyCake | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | StrategySyrup | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | YieldBalancer | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | BeefyVaultV4 | unmatched — not counted | — | listed in scope table | no |
| 01-2025 - Mayan Implementation - Decurity.pdf | MayanBridge | unmatched — not counted | — | Listed in findings and scope section | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | SocketGateway | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | SocketDeployFactory | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | BridgeImplBase | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | SwapImplBase | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | BaseController | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | CelerImpl | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | CelerStorageWrapper | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | StargateImplL2 | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | StargateImplL1 | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | OneInchImpl | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | RefuelSwapAndBridgeController | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | FeesTakerController | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | DisabledSocketRoute | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | LibBytes | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | Pb | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | Ownable | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | SocketErrors | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | RouteIdentifiers | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | ISocketRequest | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | ISocketGateway | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | ISocketRoute | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | ISocketController | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | ISocketBridgeBase | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | ICelerStorageWrapper | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | cbridge | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | stargate | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | LibUtil | unmatched — not counted | — | listed in scope appendix | no |
| 02-2023 - Gateway - Consensys Diligence.pdf | NativeOptimismImpl | unmatched — not counted | — | mentioned in finding 6.5 as a contract in scope | no |
| 04-2024 - Hop L2 implementation - Decurity.pdf | HopCctpImplL2 | unmatched — not counted | — | listed in scope section and findings | no |
| 04-2025 - CCTPV2 Bungee Auto Implementation - Decurity.pdf | CCTPV2RouterSingleOutput | unmatched — not counted | — | listed in scope section and findings | no |
| 08-2024 - Stargate v2 implementation - Decurity.pdf | StargateV2 | unmatched — not counted | — | listed in scope section 2.2 | no |
| 08-2024 - Stargate v2 implementation - Decurity.pdf | stargate | unmatched — not counted | — | listed in scope section 2.2 | no |
| 09-2021 - Registry - PeckShield.pdf | Registry | unmatched — not counted | — | Listed in scope table and detailed findings (PVE-001, PVE-003, PVE-004) | no |
| 09-2021 - Registry - PeckShield.pdf | OneInchSwapImpl | unmatched — not counted | — | Listed in scope table and detailed findings (PVE-001, PVE-002, PVE-004, PVE-005) | no |
| 09-2021 - Registry - PeckShield.pdf | MiddlewareImplBase | unmatched — not counted | — | Listed in scope table and detailed findings (PVE-004) | no |
| 09-2021 - Registry - PeckShield.pdf | ImplBase | unmatched — not counted | — | Listed in scope table and detailed findings (PVE-004) | no |
| 09-2021 - Registry - PeckShield.pdf | NativeArbitrumImpl | unmatched — not counted | — | Listed in scope table and detailed findings (PVE-004) | no |
| 09-2021 - Registry - PeckShield.pdf | NativePolygonImpl | unmatched — not counted | — | Listed in scope table and detailed findings (PVE-004) | no |
| 11-2024 - Mantle Implementation - Decurity.pdf | MantleNative | unmatched — not counted | — | listed in scope and findings | no |
| 12-2024 - Bungee Protocol - Hexens.pdf | SingleOutputRequestImpl | unmatched — not counted | — | listed in scope and findings | no |
| 12-2024 - Bungee Protocol - Hexens.pdf | CCTPRouterSingleOutput | unmatched — not counted | — | listed in scope and findings | no |
| 12-2024 - Bungee Protocol - Hexens.pdf | SORInbox | unmatched — not counted | — | listed in scope and findings | no |
| 12-2024 - Bungee Protocol - Hexens.pdf | BaseRouterSingleOutput | unmatched — not counted | — | listed in scope and findings | no |
| 12-2024 - Bungee Protocol - Hexens.pdf | SwapRequestImpl | unmatched — not counted | — | listed in scope and findings | no |
| 12-2024 - Bungee Protocol - Hexens.pdf | SRInbox | unmatched — not counted | — | listed in scope and findings | no |
| 12-2024 - Bungee Protocol - Hexens.pdf | AffiliateFeesLib | unmatched — not counted | — | listed in scope and findings | no |
| 12-2024 - Bungee Protocol - Hexens.pdf | SwapExecutor | unmatched — not counted | — | listed in scope and findings | no |
| 01-2024 - Super Token - Hexens.pdf | SuperToken | unmatched — not counted | — | mentioned in scope and findings | no |
| 01-2024 - Super Token - Hexens.pdf | SuperTokenVault | unmatched — not counted | — | mentioned in scope and findings | no |
| 01-2024 - Super Token - Hexens.pdf | SocketPlug | unmatched — not counted | — | mentioned in finding SCKT-8 | no |
| 01-2024 - Super Token - Hexens.pdf | Execute | unmatched — not counted | — | mentioned in finding SCKT-5 | no |
| 03-2024 - Supermodular Plugs - Hexens.pdf | YieldTokenBase | unmatched — not counted | — | listed in scope and findings | no |
| 03-2024 - Supermodular Plugs - Hexens.pdf | YieldToken | unmatched — not counted | — | listed in scope and findings | no |
| 03-2024 - Supermodular Plugs - Hexens.pdf | Vault | unmatched — not counted | — | listed in scope and findings | no |
| 03-2024 - Supermodular Plugs - Hexens.pdf | LimitHook | unmatched — not counted | — | listed in scope and findings | no |
| 03-2024 - Supermodular Plugs - Hexens.pdf | Base | unmatched — not counted | — | listed in scope and findings | no |
| 03-2024 - Supermodular Plugs - Hexens.pdf | Errors | unmatched — not counted | — | referenced in remediation | no |
| 03-2024 - Supermodular Plugs - Hexens.pdf | Controller_YieldLimitExecHook | unmatched — not counted | — | mentioned in finding SCKMA-22 | no |
| 07-2023 - Data Layer - Zellic.pdf | CapacitorFactory | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | ExecutionManager | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | OpenExecutionManager | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | TransmitManager | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | BaseCapacitor | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | SingleCapacitor | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | SingleDecapacitor | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | AddressAliasHelper | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | RescueFundsLib | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | Socket | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | SocketBase | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | SocketConfig | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | SocketDst | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | SocketSrc | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | FastSwitchboard | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | OptimisticSwitchboard | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | SwitchboardBase | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | ArbitrumL1Switchboard | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | ArbitrumL2Switchboard | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | NativeSwitchboardBase | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | OptimismSwitchboard | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | PolygonL1Switchboard | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | PolygonL2Switchboard | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | AccessControl | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | AccessControlExtended | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | AccessRoles | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | Hasher | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | Ownable | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | SigIdentifiers | unmatched — not counted | — | listed in scope table | no |
| 07-2023 - Data Layer - Zellic.pdf | SignatureVerifier | unmatched — not counted | — | listed in scope table | no |
| 08-2023 - Data Layer Core - Hexens.pdf | Socket | unmatched — not counted | — | listed in scope | no |
| 08-2023 - Data Layer Core - Hexens.pdf | SocketBase | unmatched — not counted | — | listed in scope | no |
| 08-2023 - Data Layer Core - Hexens.pdf | SocketConfig | unmatched — not counted | — | listed in scope | no |
| 08-2023 - Data Layer Core - Hexens.pdf | SocketDst | unmatched — not counted | — | listed in scope | no |
| 08-2023 - Data Layer Core - Hexens.pdf | SocketSrc | unmatched — not counted | — | listed in scope | no |
| 08-2023 - Super Bridge - Hexens.pdf | Vault | unmatched — not counted | — | listed in scope and findings | no |
| 08-2023 - Super Bridge - Hexens.pdf | Controller | unmatched — not counted | — | listed in scope and findings | no |
| 08-2023 - Super Bridge - Hexens.pdf | SocketConfig | unmatched — not counted | — | mentioned in finding SOC2-5 | no |
| 08-2023 - Super Bridge - Hexens.pdf | ConnectorPlug | unmatched — not counted | — | mentioned in findings SOC-6, SOC-8, SOC-10 | no |
| 08-2023 - Super Bridge - Hexens.pdf | ExchangeRate | unmatched — not counted | — | mentioned in finding SOC-3 | no |
| 08-2023 - Super Bridge - Hexens.pdf | Gauge | unmatched — not counted | — | mentioned in finding SOC-11 | no |
| PeckShield-Audit-Report-OpenRouter-v1.0.pdf | OpenRouter | unmatched — not counted | — | Listed in scope table and throughout report as the audited contract. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 19
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 123 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=19, low=1
- Match method counts: unique_name=1

Zero-match audit list:

- [19548] <mark style="color:orange;">Certik</mark>
- [19552] Rendered PDF capture
- [19553] Rendered PDF capture
- [19554] Rendered PDF capture
- [19555] Rendered PDF capture
- [19556] 01-2025 - Mayan Implementation - Decurity.pdf
- [19557] 02-2023 - Gateway - Consensys Diligence.pdf
- [19558] 04-2024 - Hop L2 implementation - Decurity.pdf
- [19559] 04-2025 - CCTPV2 Bungee Auto Implementation - Decurity.pdf
- [19560] 08-2024 - Stargate v2 implementation - Decurity.pdf
- [19561] 09-2021 - Registry - PeckShield.pdf
- [19562] 11-2024 - Mantle Implementation - Decurity.pdf
- [19563] 12-2024 - Bungee Protocol - Hexens.pdf
- [19564] 01-2024 - Super Token - Hexens.pdf
- [19565] 03-2024 - Supermodular Plugs - Hexens.pdf
- [19566] 07-2023 - Data Layer - Zellic.pdf
- [19567] 08-2023 - Data Layer Core - Hexens.pdf
- [19568] 08-2023 - Super Bridge - Hexens.pdf
- [19569] PeckShield-Audit-Report-OpenRouter-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
