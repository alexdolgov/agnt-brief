# Agentic Audit Brief: Maverick Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Maverick Protocol (`maverick-protocol`)
- Website: [https://www.mav.xyz](https://www.mav.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, goerli, scroll, zksync-era
- Contract surface: 65 unique implementations (66 raw deployments)
- Coverage basis: 0/21 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,717,046.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Maverick Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 21 contract row(s) across arbitrum, base, bsc, ethereum, goerli, scroll, zksync-era. Structural roles: 12 core, 5 supporting, 4 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 21
- Structural roles: core (12), supporting (5), unclassified (4)
- Contract kinds: contract (21)
- Detected standards: erc20 (6), multicall (6), ownable (6), erc165 (5), erc20permit (3), erc721 (2)
- Frameworks: openzeppelin (17), prb-math (6), layerzero (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 32 contracts are derived from known codebases. 32 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xeb6625...bd9c9b`, chain 1)
- UnnamedContract (`0x763117...02f589`, chain 56)
- UnnamedContract (`0x0e70ca...d4a5a3`, chain 324)
- UnnamedContract (`0x17132c...82749f`, chain 324)
- UnnamedContract (`0x2c1a60...ccf7f5`, chain 324)
- UnnamedContract (`0x39e098...ad03f4`, chain 324)
- UnnamedContract (`0x57d47f...e06449`, chain 324)
- UnnamedContract (`0x787c09...9ee508`, chain 324)
- UnnamedContract (`0x7edcb0...3a2807`, chain 324)
- UnnamedContract (`0x852639...87106c`, chain 324)
- UnnamedContract (`0xfd5476...4e8525`, chain 324)
- UnnamedContract (`0x0d8127...7dba35`, chain 8453)
- UnnamedContract (`0x32aed3...056e14`, chain 8453)
- UnnamedContract (`0xb28557...fa9b45`, chain 8453)
- MaverickToken (`0x7448c7...c46abd`, chain 1)
- MaverickToken (`0xd691d9...cfd103`, chain 56)
- MaverickToken (`0x64b88c...0faaa7`, chain 8453)
- PoolInformation (`0xb39161...1ab445`, chain 56)
- PoolPositionAndRewardFactorySlim (`0x4f24d7...3fcb05`, chain 1)
- PoolPositionAndRewardFactorySlim (`0xfc328e...26a9c0`, chain 56)
- PoolPositionManager (`0xe7583a...69d93a`, chain 1)
- PoolPositionManager (`0x2d1154...bdbab2`, chain 56)
- PoolPositionManager (`0xc402d1...f6fbd2`, chain 8453)
- Position (`0x4a3e49...1eb646`, chain 1)
- Position (`0x23aeaf...c8e9d0`, chain 56)
- PositionInspector (`0x456a37...3da53c`, chain 1)
- PositionInspector (`0x70cd60...d888a0`, chain 56)
- Router (`0xbbf1ee...a94913`, chain 1)
- Router (`0xd53a9f...542869`, chain 56)
- VotingEscrow (`0x4949ac...ba66d8`, chain 1)
- VotingEscrow (`0xe6108f...b10819`, chain 56)
- VotingEscrow (`0xfccb52...9e0ea5`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 35/42 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/21 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 35 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 23 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 35 of 65 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 65
- Raw deployments: 66
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MaverickToken | token | project_anchor | own_supporting | 0 | ethereum | unit-246202 | `0x7448c7...c46abd` | ⚠️ Unaudited |
| MaverickToken | token | project_anchor | own_supporting | 0 | bsc | unit-246225 | `0xd691d9...cfd103` | ⚠️ Unaudited |
| MaverickToken | token | project_anchor | own_supporting | 0 | base | unit-246231 | `0x64b88c...0faaa7` | ⚠️ Unaudited |
| MaverickV2RewardFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x372327...bd7ec7`; bsc `0x7573b6...97c565` | ⚠️ Unaudited |
| MaverickV2RewardRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xd837fc...46d2c1` | ⚠️ Unaudited |
| PoolInformation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246197 | `0x0087d1...c5d949` | ⚠️ Unaudited |
| PoolInformation | unknown | project_anchor | own_supporting | 0 | bsc | unit-246224 | `0xb39161...1ab445` | ⚠️ Unaudited |
| PoolInformation | unknown | project_anchor | own_supporting | 0 | base | unit-246232 | `0x6e230d...06a14d` | ⚠️ Unaudited |
| PoolPositionAndRewardFactorySlim | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246201 | `0x4f24d7...3fcb05` | ⚠️ Unaudited |
| PoolPositionAndRewardFactorySlim | unknown | project_anchor | own_supporting | 0 | bsc | unit-246227 | `0xfc328e...26a9c0` | ⚠️ Unaudited |
| PoolPositionManager | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-246237 | `0xe7583a...69d93a` | ⚠️ Unaudited |
| PoolPositionManager | core_logic | project_anchor | own_supporting | 0 | bsc | unit-246221 | `0x2d1154...bdbab2` | ⚠️ Unaudited |
| PoolPositionManager | core_logic | project_anchor | own_supporting | 0 | base | unit-246234 | `0xc402d1...f6fbd2` | ⚠️ Unaudited |
| Position | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246200 | `0x4a3e49...1eb646` | ⚠️ Unaudited |
| Position | unknown | project_anchor | own_supporting | 0 | bsc | unit-246220 | `0x23aeaf...c8e9d0` | ⚠️ Unaudited |
| PositionInspector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246198 | `0x456a37...3da53c` | ⚠️ Unaudited |
| PositionInspector | unknown | project_anchor | own_supporting | 0 | bsc | unit-246222 | `0x70cd60...d888a0` | ⚠️ Unaudited |
| PositionInspector | unknown | project_anchor | own_supporting | 0 | base | unit-246230 | `0x550056...7842e2` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 1 | ethereum | unit-246236 | `0xbbf1ee...a94913` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 1 | bsc | unit-246238 | `0xd53a9f...542869` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-246199 | `0x4949ac...ba66d8` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-246226 | `0xe6108f...b10819` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | base | unit-246235 | `0xfccb52...9e0ea5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5740ca...23e0b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-246203 | `0xeb6625...bd9c9b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-246213 | `0x0eb806...b9e941` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-246214 | `0x46040d...5ccbe1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-246215 | `0x625cf8...b8d56c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-246216 | `0x6292b7...5ece49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-246217 | `0x680ca0...302285` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-246218 | `0x9563fd...0aca88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-246219 | `0xd9254a...6039c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-246223 | `0x763117...02f589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb2231...111002` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246204 | `0x0e70ca...d4a5a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x11244d...91745f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246205 | `0x17132c...82749f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x270a03...14d845` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246206 | `0x2c1a60...ccf7f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246207 | `0x39e098...ad03f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x3e1c4b...a30c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x432e67...048244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x4d93c5...0b21a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x521b44...91fb92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246208 | `0x57d47f...e06449` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246209 | `0x787c09...9ee508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x7a6902...d1dc56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246210 | `0x7edcb0...3a2807` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246211 | `0x852639...87106c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x943928...1d5b2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xad8262...9260ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xc9e5f0...86d7e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xd32ce3...6d87f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-246212 | `0xfd5476...4e8525` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-246228 | `0x0d8127...7dba35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-246229 | `0x32aed3...056e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3fa57c...e40b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8a4c87...ba54a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-246233 | `0xb28557...fa9b45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x353904...df826c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a534c...b84a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x102f93...f381f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x11c0f5...6d0992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x51e4ae...1ab84e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x873b27...7d8470` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2022-12-Code4rena.md](https://github.com/maverickprotocol/audits/blob/main/phase-1/2022-12-Code4rena.md) | Code4rena | Contest | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [ABDK_Maverick_MaverickProtocol_v_3_0.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-1/ABDK_Maverick_MaverickProtocol_v_3_0.pdf) | ABDK | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [Maverick Protocol - Zellic Security Assessment Report.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-1/Maverick%20Protocol%20-%20Zellic%20Security%20Assessment%20Report.pdf) | Zellic | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [REP-Maverick-Protocol__final-20220421T194749Z.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-1/REP-Maverick-Protocol__final-20220421T194749Z.pdf) | Unknown | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [ABDK_Maverick_MaverickPhase2_v_2_0.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-2/ABDK_Maverick_MaverickPhase2_v_2_0.pdf) | ABDK | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Maverick Pool Positions Audit - Mar '23.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-2/Maverick%20Pool%20Positions%20Audit%20-%20Mar%20'23.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [report_mitigation.pdf](https://github.com/maverickprotocol/audits/blob/main/phase-2/report_mitigation.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2873] 2022-12-Code4rena.md — no match: The audit report is for the Stealth Project (Maverick) smart contract system. The scope section states 34 smart contracts, and the report references many contracts from the maverick-v1 and router-v1 directories. All contracts mentioned in findings and the scope description are included.
- [2874] ABDK_Maverick_MaverickProtocol_v_3_0.pdf — no match: Scope section explicitly lists all files under interfaces/, libraries/, and models/ directories. Audit date is 13th October 2022 from cover page.
- [2875] Maverick Protocol - Zellic Security Assessment Report.pdf — no match: Scope section lists repository and commit hash; contracts are detailed in Code Overview sections 4.1-4.5.
- [2876] REP-Maverick-Protocol__final-20220421T194749Z.pdf — no match: All contracts listed in the Audit Scope table are extracted. The audit date is explicitly stated as 'Delivery Date Apr 21, 2022 UTC'.
- [2877] ABDK_Maverick_MaverickPhase2_v_2_0.pdf — no match: Scope section lists 13 files explicitly. Audit date from cover page: '11thMay2023'.
- [2878] Maverick Pool Positions Audit - Mar '23.pdf — no match: All contracts listed in the scope section of the audit report.
- [2879] report_mitigation.pdf — no match: All 13 files listed in the Scope Of Audit section are extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2022-12-Code4rena.md | Pool | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Factory | ambiguous — not counted | 0xb28557… (alternative) `0xb28557...fa9b45` — deployed 2023-07-19 15:09:37+03 — liveness: live (current_address_book_code)<br>0x2c1a60… (alternative) `0x2c1a60...ccf7f5` — liveness: live (current_address_book_code)<br>0xeb6625… (alternative) `0xeb6625...bd9c9b` — deployed 2023-05-07 20:43:59+03 — liveness: live (current_address_book_code)<br>0x763117… (alternative) `0x763117...02f589` — deployed 2023-06-19 18:15:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2022-12-Code4rena.md | Deployer | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Router | ambiguous — not counted | Router (proxy) (alternative) `0xd53a9f...542869` — deployed 2023-06-19 18:21:15+03 — liveness: live (current_address_book_code)<br>0x39e098… (alternative) `0x39e098...ad03f4` — deployed 2023-05-08 08:45:18+03 — liveness: live (current_address_book_code)<br>0x32aed3… (alternative) `0x32aed3...056e14` — deployed 2023-07-19 15:13:33+03 — liveness: live (current_address_book_code)<br>Router (proxy) (alternative) `0xbbf1ee...a94913` — deployed 2023-05-07 20:46:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2022-12-Code4rena.md | Position | ambiguous — not counted | Position (alternative) `0x4a3e49...1eb646` — deployed 2023-02-28 19:21:47+03 — liveness: live (code_present_context)<br>Position (alternative) `0x23aeaf...c8e9d0` — deployed 2023-06-19 18:15:04+03 — liveness: live (code_present_context)<br>0xfd5476… (alternative) `0xfd5476...4e8525` — deployed 2023-04-12 15:19:22+03 — liveness: live (current_address_book_code)<br>0x0d8127… (alternative) `0x0d8127...7dba35` — deployed 2023-07-19 15:09:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2022-12-Code4rena.md | PositionMetadata | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | PoolInspector | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Bin | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | BinMap | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | BinMath | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Constants | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Delta | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Twa | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Cast | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | SafeERC20Min | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Math | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Path | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | BytesLib | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Deadline | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | Multicall | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | SelfPermit | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | TransferHelper | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IFactory | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IPool | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IPosition | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IPositionMetadata | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IRouter | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IMulticall | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | ISelfPermit | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IERC20PermitAllowed | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IWETH9 | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | ISwapCallback | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IAddLiquidityCallback | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IPoolAdmin | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | IPoolDeployer | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | TestDeployPool | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | TestPool | unmatched — not counted | — | listed in scope | no |
| 2022-12-Code4rena.md | ImportExternal | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | IAddLiquidityCallback | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | IFactory | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | IPool | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | ISwapCallback | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Bin | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | BinMap | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | BinMath | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Cast | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Delta | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Deployer | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Math | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Twa | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Factory | ambiguous — not counted | 0xb28557… (alternative) `0xb28557...fa9b45` — deployed 2023-07-19 15:09:37+03 — liveness: live (current_address_book_code)<br>0x2c1a60… (alternative) `0x2c1a60...ccf7f5` — liveness: live (current_address_book_code)<br>0xeb6625… (alternative) `0xeb6625...bd9c9b` — deployed 2023-05-07 20:43:59+03 — liveness: live (current_address_book_code)<br>0x763117… (alternative) `0x763117...02f589` — deployed 2023-06-19 18:15:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Passport | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickProtocol_v_3_0.pdf | PoolInspector | unmatched — not counted | — | listed in scope | no |
| Maverick Protocol - Zellic Security Assessment Report.pdf | Pool | unmatched — not counted | — | Section 4.1 Contract Pool in Pool.sol | no |
| Maverick Protocol - Zellic Security Assessment Report.pdf | Router | ambiguous — not counted | Router (proxy) (alternative) `0xd53a9f...542869` — deployed 2023-06-19 18:21:15+03 — liveness: live (current_address_book_code)<br>0x39e098… (alternative) `0x39e098...ad03f4` — deployed 2023-05-08 08:45:18+03 — liveness: live (current_address_book_code)<br>0x32aed3… (alternative) `0x32aed3...056e14` — deployed 2023-07-19 15:13:33+03 — liveness: live (current_address_book_code)<br>Router (proxy) (alternative) `0xbbf1ee...a94913` — deployed 2023-05-07 20:46:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Maverick Protocol - Zellic Security Assessment Report.pdf | Estimator | unmatched — not counted | — | Section 4.3 Contract Estimator in Estimator.sol | no |
| Maverick Protocol - Zellic Security Assessment Report.pdf | ZeroExRouter | unmatched — not counted | — | Section 4.4 Contract ZeroExRouter in ZeroExRouter.sol | no |
| Maverick Protocol - Zellic Security Assessment Report.pdf | Factory | ambiguous — not counted | 0xb28557… (alternative) `0xb28557...fa9b45` — deployed 2023-07-19 15:09:37+03 — liveness: live (current_address_book_code)<br>0x2c1a60… (alternative) `0x2c1a60...ccf7f5` — liveness: live (current_address_book_code)<br>0xeb6625… (alternative) `0xeb6625...bd9c9b` — deployed 2023-05-07 20:43:59+03 — liveness: live (current_address_book_code)<br>0x763117… (alternative) `0x763117...02f589` — deployed 2023-06-19 18:15:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | Factory | ambiguous — not counted | 0xb28557… (alternative) `0xb28557...fa9b45` — deployed 2023-07-19 15:09:37+03 — liveness: live (current_address_book_code)<br>0x2c1a60… (alternative) `0x2c1a60...ccf7f5` — liveness: live (current_address_book_code)<br>0xeb6625… (alternative) `0xeb6625...bd9c9b` — deployed 2023-05-07 20:43:59+03 — liveness: live (current_address_book_code)<br>0x763117… (alternative) `0x763117...02f589` — deployed 2023-06-19 18:15:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | ZeroExRouter | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | Pool | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | Bin | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | Cast | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | BasicMath | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | LPToken | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | AdvancedMath | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | Checkpoint | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | SafeTransfer | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-Maverick-Protocol__final-20220421T194749Z.pdf | Router | ambiguous — not counted | Router (proxy) (alternative) `0xd53a9f...542869` — deployed 2023-06-19 18:21:15+03 — liveness: live (current_address_book_code)<br>0x39e098… (alternative) `0x39e098...ad03f4` — deployed 2023-05-08 08:45:18+03 — liveness: live (current_address_book_code)<br>0x32aed3… (alternative) `0x32aed3...056e14` — deployed 2023-07-19 15:13:33+03 — liveness: live (current_address_book_code)<br>Router (proxy) (alternative) `0xbbf1ee...a94913` — deployed 2023-05-07 20:46:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | Distributor | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | Poll | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | PoolPositionBase | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | PoolPositionDynamic | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | PoolPositionRouter | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | PoolPositionStatic | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | RewardBase | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | RewardOpen | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | RewardPusher | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | RewardSingle | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | RewardVote | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | VoterToken | unmatched — not counted | — | listed in scope | no |
| ABDK_Maverick_MaverickPhase2_v_2_0.pdf | PoolPositionAndRewardFactory | unmatched — not counted | — | listed in scope | no |
| Maverick Pool Positions Audit - Mar '23.pdf | IPoolPositionAndRewardFactorySlim | unmatched — not counted | — | listed in scope | no |
| Maverick Pool Positions Audit - Mar '23.pdf | PoolPositionAndRewardFactorySlim | ambiguous — not counted | PoolPositionAndRewardFactorySlim (alternative) `0xfc328e...26a9c0` — deployed 2023-06-20 21:22:38+03 — liveness: live (code_present_context)<br>PoolPositionAndRewardFactorySlim (alternative) `0x4f24d7...3fcb05` — deployed 2023-05-07 21:57:23+03 — liveness: live (code_present_context)<br>0x0e70ca… (alternative) `0x0e70ca...d4a5a3` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Maverick Pool Positions Audit - Mar '23.pdf | PoolPositionBaseSlim | unmatched — not counted | — | listed in scope | no |
| Maverick Pool Positions Audit - Mar '23.pdf | PoolPositionDynamicDeployerSlim | unmatched — not counted | — | listed in scope | no |
| Maverick Pool Positions Audit - Mar '23.pdf | PoolPositionDynamicSlim | unmatched — not counted | — | listed in scope | no |
| Maverick Pool Positions Audit - Mar '23.pdf | PoolPositionStaticDeployerSlim | unmatched — not counted | — | listed in scope | no |
| Maverick Pool Positions Audit - Mar '23.pdf | RewardOpenSlim | unmatched — not counted | — | listed in scope | no |
| Maverick Pool Positions Audit - Mar '23.pdf | PoolPositionBase | unmatched — not counted | — | listed in scope | no |
| Maverick Pool Positions Audit - Mar '23.pdf | PoolPositionManager | ambiguous — not counted | PoolPositionManager (alternative) `0xc402d1...f6fbd2` — deployed 2023-07-19 15:39:33+03 — liveness: live (current_address_book_code)<br>PoolPositionManager (proxy) (alternative) `0xe7583a...69d93a` — deployed 2023-06-08 05:08:47+03 — liveness: live (current_address_book_code)<br>0x17132c… (alternative) `0x17132c...82749f` — deployed 2023-06-08 05:07:26+03 — liveness: live (current_address_book_code)<br>PoolPositionManager (alternative) `0x2d1154...bdbab2` — deployed 2023-06-20 21:25:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Maverick Pool Positions Audit - Mar '23.pdf | RewardBase | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | Distributor | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | Poll | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | PoolPositionBase | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | PoolPositionDynamic | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | PoolPositionRouter | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | PoolPositionStatic | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | RewardBase | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | RewardOpen | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | RewardPusher | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | RewardSingle | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | RewardVote | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | VoterToken | unmatched — not counted | — | listed in scope | no |
| report_mitigation.pdf | PoolPositionAndRewardFactory | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7448c7...c46abd` | MaverickToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd691d9...cfd103` | MaverickToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x64b88c...0faaa7` | MaverickToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0087d1...c5d949` | PoolInformation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xb39161...1ab445` | PoolInformation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6e230d...06a14d` | PoolInformation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4f24d7...3fcb05` | PoolPositionAndRewardFactorySlim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfc328e...26a9c0` | PoolPositionAndRewardFactorySlim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe7583a...69d93a` | PoolPositionManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2d1154...bdbab2` | PoolPositionManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc402d1...f6fbd2` | PoolPositionManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4a3e49...1eb646` | Position | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x23aeaf...c8e9d0` | Position | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x456a37...3da53c` | PositionInspector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x70cd60...d888a0` | PositionInspector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x550056...7842e2` | PositionInspector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbbf1ee...a94913` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd53a9f...542869` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4949ac...ba66d8` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe6108f...b10819` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xfccb52...9e0ea5` | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 10 ambiguous, 96 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: n/a

Zero-match audit list:

- [2873] 2022-12-Code4rena.md
- [2874] ABDK_Maverick_MaverickProtocol_v_3_0.pdf
- [2875] Maverick Protocol - Zellic Security Assessment Report.pdf
- [2876] REP-Maverick-Protocol__final-20220421T194749Z.pdf
- [2877] ABDK_Maverick_MaverickPhase2_v_2_0.pdf
- [2878] Maverick Pool Positions Audit - Mar '23.pdf
- [2879] report_mitigation.pdf

Fork inheritance lineage and inherited audits are included when available.
