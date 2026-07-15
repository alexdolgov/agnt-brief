# Agentic Audit Brief: Arcade.xyz

## Export Authority

- Production state: **published scope**
- Raw selected rows: 23 across 6 audit(s)
- Eligible audit results: 10 (6 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DEAD - TVL dropped 59.5% over 90 days

## Project Overview

- Project: Arcade.xyz (`arcade.xyz`)
- Website: [https://www.arcade.xyz](https://www.arcade.xyz)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, goerli, sepolia
- Contract surface: 83 unique implementations (87 raw deployments)
- Coverage basis: 7/20 confirmed own live verified implementations (35.0%); conservative 35.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,748,668.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Arcade.xyz. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across ethereum, goerli, sepolia. Structural roles: 11 unclassified, 5 core, 5 supporting, 1 infra. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: unclassified (11), core (5), supporting (5), infra (1)
- Contract kinds: contract (22)
- Detected standards: erc165 (4), erc1967proxy (4), accesscontrol (2), erc20permit (2), erc721 (2), ownable (1), pausable (1)
- Frameworks: openzeppelin (11), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 28 contracts are derived from known codebases. 28 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0585a6...172320`, chain 1)
- UnnamedContract (`0x1f563c...d129b7`, chain 1)
- UnnamedContract (`0x24ec19...ed5a3d`, chain 1)
- UnnamedContract (`0x59e57f...09f403`, chain 1)
- UnnamedContract (`0x6ddb57...ea950f`, chain 1)
- UnnamedContract (`0x945aff...0a05df`, chain 1)
- UnnamedContract (`0x9b458e...ebc96e`, chain 1)
- UnnamedContract (`0xaef68c...a89f35`, chain 1)
- UnnamedContract (`0xd96e4d...e1e863`, chain 1)
- AssetVault (`0x833835...10bcb5`, chain 1)
- AssetVault (`0xd89845...38acb6`, chain 1)
- CallWhitelist (`0xb4496f...178c82`, chain 1)
- CallWhitelistApprovals (`0xb4515a...9fdb95`, chain 1)
- ERC1967Proxy (`0x666faa...7133be`, chain 1)
- ERC1967Proxy (`0x6e9b4c...cc94a2`, chain 1)
- ERC1967Proxy (`0x81b2f8...fa7fd9`, chain 1)
- FeeController (`0x41e538...8cff9f`, chain 1)
- FlashRollover (`0x24611f...09da12`, chain 1)
- FlashRolloverStakingVaultUpgrade (`0x094db3...01a8c6`, chain 1)
- FlashRolloverV1toV2 (`0x07352e...533dc9`, chain 1)
- PromissoryNote (`0x337104...f863aa`, chain 1)
- PunksVerifier (`0x16d99e...08b8e2`, chain 1)
- RepaymentController (`0xb39dab...9993d4`, chain 1)
- VaultDepositRouter (`0x4b9564...52bed2`, chain 1)
- VaultDepositRouter (`0xfdda20...1483f6`, chain 1)
- VaultFactory (`0x21b346...6b3c0c`, chain 1)
- VaultFactory (`0x371e4f...6c596f`, chain 1)
- VaultInventoryReporter (`0x3a0f9a...8c2e8a`, chain 1)

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/97 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/20 (35.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 56 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 27 of 83 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 7/20
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 83
- Raw deployments: 87
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: 25.0% (Trail of Bits)
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 7 | 35.0% | 2024-03 |
| Trail of Bits | Tier 1 | 5 | 25.0% | 2023-07 |
| Quantstamp | Tier 2 | 4 | 20.0% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArcadeItemsVerifier | periphery | project_anchor | own_supporting | 0 | ethereum | unit-379272 | `0xabfd9d...948df0` | ✅ Audited |
| AssetVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379276 | `0xd89845...38acb6` | ✅ Audited |
| CallWhitelist | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379274 | `0xb4496f...178c82` | ✅ Audited |
| CallWhitelistApprovals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379275 | `0xb4515a...9fdb95` | ✅ Audited |
| FeeController | governance | project_anchor | own_supporting | 0 | ethereum | unit-379266 | `0x41e538...8cff9f` | ✅ Audited |
| FlashRollover | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379261 | `0x24611f...09da12` | ✅ Audited |
| PunksVerifier | periphery | project_anchor | own_supporting | 0 | ethereum | unit-379259 | `0x16d99e...08b8e2` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379269 | `0x833835...10bcb5` | ⚠️ Unaudited |
| FlashRolloverStakingVaultUpgrade | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379258 | `0x094db3...01a8c6` | ⚠️ Unaudited |
| FlashRolloverV1toV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379257 | `0x07352e...533dc9` | ⚠️ Unaudited |
| LoanCore | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379351 | 2 deployments: ethereum `0x6ddb57...ea950f`; ethereum `0x81b2f8...fa7fd9` | ⚠️ Unaudited |
| OriginationController | governance | project_anchor | own_supporting | 1 | ethereum | unit-379352 | 2 deployments: ethereum `0x4c52ca...dc840b`; ethereum `0xaef68c...a89f35` | ⚠️ Unaudited |
| PromissoryNote | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379263 | `0x337104...f863aa` | ⚠️ Unaudited |
| PromissoryNote | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379264 | `0x349a02...d8ddee` | ⚠️ Unaudited |
| RepaymentController | governance | project_anchor | own_supporting | 0 | ethereum | unit-379273 | `0xb39dab...9993d4` | ⚠️ Unaudited |
| VaultDepositRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379267 | `0x4b9564...52bed2` | ⚠️ Unaudited |
| VaultDepositRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-379278 | `0xfdda20...1483f6` | ⚠️ Unaudited |
| VaultFactory | registry | project_anchor | own_supporting | 1 | ethereum | unit-379349 | 2 deployments: ethereum `0x21b346...6b3c0c`; ethereum `0x6e9b4c...cc94a2` | ⚠️ Unaudited |
| VaultFactory | registry | project_anchor | own_supporting | 1 | ethereum | unit-379350 | 2 deployments: ethereum `0x371e4f...6c596f`; ethereum `0x666faa...7133be` | ⚠️ Unaudited |
| VaultInventoryReporter | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379265 | `0x3a0f9a...8c2e8a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (63)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379256 | `0x0585a6...172320` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379260 | `0x1f563c...d129b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379262 | `0x24ec19...ed5a3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379268 | `0x59e57f...09f403` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379270 | `0x945aff...0a05df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379271 | `0x9b458e...ebc96e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379277 | `0xd96e4d...e1e863` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379306 | `0x0028ba...6d9586` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379307 | `0x055357...efe137` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379308 | `0x088877...07376a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379309 | `0x0a5eca...75923c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379310 | `0x0e8f3f...c5f5a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379311 | `0x122a2d...826ffa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379312 | `0x1f35a2...3a4016` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379313 | `0x23ce21...143e8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379314 | `0x252c58...b982fb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379315 | `0x380658...e4ff7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379316 | `0x393577...ab16c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379317 | `0x398dee...868747` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379318 | `0x3a5424...9c0649` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379319 | `0x42de17...da8c09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379320 | `0x4b9564...52bed2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379321 | `0x735433...d887bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379322 | `0x782b2e...ae85e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379323 | `0x7988fb...47dcf0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379324 | `0x7bb0a0...6df423` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379325 | `0x7d1481...f39d67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379326 | `0x812cd1...a94571` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379327 | `0x824793...b74dff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379328 | `0x8a12bb...416952` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379329 | `0x8fb52c...ddac18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379330 | `0x968915...7470dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379331 | `0xa54171...713cd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379332 | `0xa66ccb...5400cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379333 | `0xaef483...eff389` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379334 | `0xb74c4b...8fdce8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379335 | `0xc0209d...bf86fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379336 | `0xcdfd42...8e83a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379337 | `0xd624d1...e70049` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379338 | `0xd69103...b80293` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379339 | `0xdeabbb...9d606f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379340 | `0xe27e2f...1e5fe2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379341 | `0xe4a191...ac6d47` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379342 | `0xe60064...f7abbb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379343 | `0xee6b65...9cdae0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379344 | `0xf5fb02...8b591e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379345 | `0xf925cc...c51abb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379346 | `0xfe0461...575f36` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379347 | `0xff130c...0e2f08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-379348 | `0xffae06...a68923` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379279 | `0x055357...efe137` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379280 | `0x088877...07376a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379281 | `0x0a5eca...75923c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379282 | `0x23ce21...143e8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379284 | `0x3a5424...9c0649` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379285 | `0x42de17...da8c09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379292 | `0x7bb0a0...6df423` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379294 | `0x8a12bb...416952` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379296 | `0xaef483...eff389` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379299 | `0xd624d1...e70049` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379302 | `0xdeabbb...9d606f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379303 | `0xe4a191...ac6d47` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379305 | `0xfe0461...575f36` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [V1_Lending_LeastAuthority_2021-08.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V1_Lending_LeastAuthority_2021-08.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [V1_Lending_Macro_2022-04.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V1_Lending_Macro_2022-04.pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 4 | high |
| [V2_Lending_Quantstamp_2022_06.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V2_Lending_Quantstamp_2022_06.pdf) | Quantstamp | Audit | 2022-06 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 45 | high |
| [V2_Lending_Roku_2022_06.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V2_Lending_Roku_2022_06.pdf) | unknown | Audit | 2022-06 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 5 | high |
| [V3_Lending_Omniscia_2023-08.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V3_Lending_Omniscia_2023-08.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 20 | high |
| [V3_Lending_TrailOfBits_2023-07.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V3_Lending_TrailOfBits_2023-07.pdf) | Trail of Bits | Audit | 2023-07 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 11 | high |
| [V3_Rollovers_Omniscia_2023-08.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V3_Rollovers_Omniscia_2023-08.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [V4_Lending_Renascence_2024_02.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V4_Lending_Renascence_2024_02.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 17 | high |
| [arcade-staking-report-final.pdf](https://github.com/arcadexyz/dao-contracts/blob/main/audits/arcade-staking-report-final.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [07152023_Omniscia_Audit_Arcade_Governance.pdf](https://github.com/arcadexyz/governance/blob/main/audits/07152023_Omniscia_Audit_Arcade_Governance.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [7720] V1_Lending_LeastAuthority_2021-08.pdf — no match: Extracted contract names from scope section and file paths. Audit date is from the cover page.
- [7721] V1_Lending_Macro_2022-04.pdf — matched: All contracts listed in the 'Source Code' section of the audit report.
- [7722] V2_Lending_Quantstamp_2022_06.pdf — matched: All contracts listed in the file signatures appendix are considered in scope. The audit date is from the final report date.
- [7723] V2_Lending_Roku_2022_06.pdf — matched: Scope defined as 'every contract in the contacts folder, except test folder'. Extracted contract names from findings and comments.
- [7724] V3_Lending_Omniscia_2023-08.pdf — matched: All contracts listed in the 'Files in Scope' tables were extracted. The audit date is from the cover page: August 19, 2023.
- [7725] V3_Lending_TrailOfBits_2023-07.pdf — matched: Extracted 16 contracts from Project Targets and Project Coverage sections. Audit date from cover page.
- [7726] V3_Rollovers_Omniscia_2023-08.pdf — no match: Extracted 4 contracts from the scope table and audit date from the cover page.
- [7727] V4_Lending_Renascence_2024_02.pdf — matched: Extracted contract names from scope table and findings. Audit date from cover page: February 22, 2024.
- [7733] arcade-staking-report-final.pdf — no match: No reason recorded
- [7734] 07152023_Omniscia_Audit_Arcade_Governance.pdf — no match: Extracted 21 contract names from the 'Files in Scope' and 'Contracts Assessed' tables. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| V1_Lending_LeastAuthority_2021-08.pdf | LoanCore | ambiguous — not counted | 0x59e57f… (alternative) `0x59e57f...09f403` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x81b2f8...fa7fd9` — deployed 2022-06-28 21:28:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V1_Lending_LeastAuthority_2021-08.pdf | OriginationController | ambiguous — not counted | 0x0585a6… (alternative) `0x0585a6...172320` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4c52ca...dc840b` — deployed 2022-06-28 21:30:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V1_Lending_LeastAuthority_2021-08.pdf | ERC721Permit | unmatched — not counted | — | Mentioned in System Design section as examined. | no |
| V1_Lending_LeastAuthority_2021-08.pdf | IPromissoryNote | unmatched — not counted | — | Mentioned in Suggestion 3 as a file with less comprehensive documentation. | no |
| V1_Lending_Macro_2022-04.pdf | AssetWrapper | own contract | 0x1f563c… (selected) `0x1f563c...d129b7` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V1_Lending_Macro_2022-04.pdf | FeeController | own contract | FeeController (selected) `0x41e538...8cff9f` — deployed 2022-06-28 21:26:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V1_Lending_Macro_2022-04.pdf | LoanCore | ambiguous — not counted | 0x59e57f… (alternative) `0x59e57f...09f403` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x81b2f8...fa7fd9` — deployed 2022-06-28 21:28:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V1_Lending_Macro_2022-04.pdf | FlashRollover | own contract | FlashRollover (selected) `0x24611f...09da12` — deployed 2021-11-24 11:41:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V1_Lending_Macro_2022-04.pdf | OriginationController | ambiguous — not counted | 0x0585a6… (alternative) `0x0585a6...172320` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4c52ca...dc840b` — deployed 2022-06-28 21:30:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V1_Lending_Macro_2022-04.pdf | RepaymentController | ambiguous — not counted | 0x945aff… (alternative) `0x945aff...0a05df` — liveness: live (current_address_book_code)<br>RepaymentController (alternative) `0xb39dab...9993d4` — deployed 2022-06-28 21:28:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V1_Lending_Macro_2022-04.pdf | PromissoryNote | ambiguous — not counted | PromissoryNote (alternative) `0x349a02...d8ddee` — deployed 2022-06-28 21:27:23+03 — liveness: live (current_address_book_code)<br>PromissoryNote (alternative) `0x337104...f863aa` — deployed 2022-06-28 21:26:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V1_Lending_Macro_2022-04.pdf | PunkRouter | own contract | 0x24ec19… (selected) `0x24ec19...ed5a3d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Quantstamp_2022_06.pdf | OriginationController | ambiguous — not counted | 0x0585a6… (alternative) `0x0585a6...172320` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4c52ca...dc840b` — deployed 2022-06-28 21:30:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V2_Lending_Quantstamp_2022_06.pdf | LoanCore | ambiguous — not counted | 0x59e57f… (alternative) `0x59e57f...09f403` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x81b2f8...fa7fd9` — deployed 2022-06-28 21:28:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V2_Lending_Quantstamp_2022_06.pdf | FeeController | own contract | FeeController (selected) `0x41e538...8cff9f` — deployed 2022-06-28 21:26:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Quantstamp_2022_06.pdf | RepaymentController | ambiguous — not counted | 0x945aff… (alternative) `0x945aff...0a05df` — liveness: live (current_address_book_code)<br>RepaymentController (alternative) `0xb39dab...9993d4` — deployed 2022-06-28 21:28:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V2_Lending_Quantstamp_2022_06.pdf | ERC721Permit | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | ERC721PermitUpgradeable | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | PromissoryNote | ambiguous — not counted | PromissoryNote (alternative) `0x349a02...d8ddee` — deployed 2022-06-28 21:27:23+03 — liveness: live (current_address_book_code)<br>PromissoryNote (alternative) `0x337104...f863aa` — deployed 2022-06-28 21:26:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V2_Lending_Quantstamp_2022_06.pdf | InstallmentsCalc | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | PunkRouter | own contract | 0x24ec19… (selected) `0x24ec19...ed5a3d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Quantstamp_2022_06.pdf | ICallWhitelist | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IFeeController | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IERC721Permit | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | ICallDelegator | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | ISignatureVerifier | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IInstallmentsCalc | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IFlashRollover | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IVaultFactory | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IPromissoryNote | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | ILoanCore | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IERC721PermitUpgradeable | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IAssetVault | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IOriginationController | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IRepaymentController | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | VaultFactory | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x666faa...7133be` — deployed 2022-12-07 00:18:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6e9b4c...cc94a2` — deployed 2022-06-28 21:26:05+03 — liveness: live (code_present_context)<br>VaultFactory (alternative) `0x21b346...6b3c0c` — deployed 2022-06-28 21:25:55+03 — liveness: live (proxy_unit_reachable)<br>VaultFactory (alternative) `0x371e4f...6c596f` — deployed 2022-12-07 00:17:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V2_Lending_Quantstamp_2022_06.pdf | CallWhitelist | own contract | CallWhitelist (selected) `0xb4496f...178c82` — deployed 2022-06-28 21:24:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Quantstamp_2022_06.pdf | AssetVault | own contract | AssetVault (alternative) `0x833835...10bcb5` — deployed 2022-12-07 00:17:23+03 — liveness: live (current_address_book_code)<br>AssetVault (selected) `0xd89845...38acb6` — deployed 2022-06-28 21:25:34+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-06-28 was 12d from audit; next candidate 174d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Quantstamp_2022_06.pdf | OwnableERC721 | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | LendingUtils | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | Lending | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | ILendingPool | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IWrappedPunks | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | IPunks | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | LoanLibrary | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | ItemsVerifier | own contract | ArcadeItemsVerifier (selected) `0xabfd9d...948df0` — deployed 2022-07-22 19:33:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Quantstamp_2022_06.pdf | MockERC1155 | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | MockLendingPool | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | Templates | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | MockERC1271Lender | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | MockOpenVault | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | MockERC20 | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | VaultFactoryV2 | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | LoanCoreV2Mock | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | UserProxy | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | MockOriginationController | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | MockCallDelegator | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | CryptoPunks | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | WrappedPunks | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | MockERC721 | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Quantstamp_2022_06.pdf | ERC721ReceiverMock | unmatched — not counted | — | listed in scope table | no |
| V2_Lending_Roku_2022_06.pdf | AssetVault | own contract | AssetVault (alternative) `0x833835...10bcb5` — deployed 2022-12-07 00:17:23+03 — liveness: live (current_address_book_code)<br>AssetVault (selected) `0xd89845...38acb6` — deployed 2022-06-28 21:25:34+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-06-28 was 26d from audit; next candidate 188d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Roku_2022_06.pdf | CallWhitelist | own contract | CallWhitelist (selected) `0xb4496f...178c82` — deployed 2022-06-28 21:24:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Roku_2022_06.pdf | FeeCollector | unmatched — not counted | — | mentioned in L-2 | no |
| V2_Lending_Roku_2022_06.pdf | LoanCore | ambiguous — not counted | 0x59e57f… (alternative) `0x59e57f...09f403` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x81b2f8...fa7fd9` — deployed 2022-06-28 21:28:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V2_Lending_Roku_2022_06.pdf | OriginationController | ambiguous — not counted | 0x0585a6… (alternative) `0x0585a6...172320` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4c52ca...dc840b` — deployed 2022-06-28 21:30:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V2_Lending_Roku_2022_06.pdf | PunkRouter | own contract | 0x24ec19… (selected) `0x24ec19...ed5a3d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V2_Lending_Roku_2022_06.pdf | RepaymentController | ambiguous — not counted | 0x945aff… (alternative) `0x945aff...0a05df` — liveness: live (current_address_book_code)<br>RepaymentController (alternative) `0xb39dab...9993d4` — deployed 2022-06-28 21:28:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V2_Lending_Roku_2022_06.pdf | VaultFactory | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x666faa...7133be` — deployed 2022-12-07 00:18:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6e9b4c...cc94a2` — deployed 2022-06-28 21:26:05+03 — liveness: live (code_present_context)<br>VaultFactory (alternative) `0x21b346...6b3c0c` — deployed 2022-06-28 21:25:55+03 — liveness: live (proxy_unit_reachable)<br>VaultFactory (alternative) `0x371e4f...6c596f` — deployed 2022-12-07 00:17:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_Omniscia_2023-08.pdf | AssetVault | ambiguous — not counted | AssetVault (alternative) `0x833835...10bcb5` — deployed 2022-12-07 00:17:23+03 — liveness: live (current_address_book_code)<br>AssetVault (alternative) `0xd89845...38acb6` — deployed 2022-06-28 21:25:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_Omniscia_2023-08.pdf | ArtBlocksVerifier | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | ArcadeItemsVerifier | own contract | ArcadeItemsVerifier (selected) `0xabfd9d...948df0` — deployed 2022-07-22 19:33:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_Omniscia_2023-08.pdf | BaseURIDescriptor | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | CallBlacklist | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | CallWhitelist | own contract | CallWhitelist (selected) `0xb4496f...178c82` — deployed 2022-06-28 21:24:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_Omniscia_2023-08.pdf | CallWhitelistApprovals | own contract | CallWhitelistApprovals (selected) `0xb4515a...9fdb95` — deployed 2022-12-06 23:58:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_Omniscia_2023-08.pdf | CallWhitelistDelegation | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | CallWhitelistAllExtensions | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | CollectionWideOfferVerifier | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | ERC721Permit | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | FeeLookups | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | FeeController | own contract | FeeController (selected) `0x41e538...8cff9f` — deployed 2022-06-28 21:26:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_Omniscia_2023-08.pdf | InterestCalculator | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | Lending | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | LoanCore | ambiguous — not counted | 0x59e57f… (alternative) `0x59e57f...09f403` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x81b2f8...fa7fd9` — deployed 2022-06-28 21:28:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_Omniscia_2023-08.pdf | LoanLibrary | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | OwnableERC721 | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | OriginationController | ambiguous — not counted | 0x0585a6… (alternative) `0x0585a6...172320` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4c52ca...dc840b` — deployed 2022-06-28 21:30:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_Omniscia_2023-08.pdf | PunksVerifier | own contract | PunksVerifier (selected) `0x16d99e...08b8e2` — deployed 2022-08-02 20:44:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_Omniscia_2023-08.pdf | PromissoryNote | ambiguous — not counted | PromissoryNote (alternative) `0x349a02...d8ddee` — deployed 2022-06-28 21:27:23+03 — liveness: live (current_address_book_code)<br>PromissoryNote (alternative) `0x337104...f863aa` — deployed 2022-06-28 21:26:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_Omniscia_2023-08.pdf | RepaymentController | ambiguous — not counted | 0x945aff… (alternative) `0x945aff...0a05df` — liveness: live (current_address_book_code)<br>RepaymentController (alternative) `0xb39dab...9993d4` — deployed 2022-06-28 21:28:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_Omniscia_2023-08.pdf | UnvaultedItemsVerifier | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| V3_Lending_Omniscia_2023-08.pdf | VaultFactory | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x666faa...7133be` — deployed 2022-12-07 00:18:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6e9b4c...cc94a2` — deployed 2022-06-28 21:26:05+03 — liveness: live (code_present_context)<br>VaultFactory (alternative) `0x21b346...6b3c0c` — deployed 2022-06-28 21:25:55+03 — liveness: live (proxy_unit_reachable)<br>VaultFactory (alternative) `0x371e4f...6c596f` — deployed 2022-12-07 00:17:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_TrailOfBits_2023-07.pdf | LoanCore | ambiguous — not counted | 0x59e57f… (alternative) `0x59e57f...09f403` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x81b2f8...fa7fd9` — deployed 2022-06-28 21:28:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_TrailOfBits_2023-07.pdf | OriginationController | ambiguous — not counted | 0x0585a6… (alternative) `0x0585a6...172320` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4c52ca...dc840b` — deployed 2022-06-28 21:30:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_TrailOfBits_2023-07.pdf | RepaymentController | ambiguous — not counted | 0x945aff… (alternative) `0x945aff...0a05df` — liveness: live (current_address_book_code)<br>RepaymentController (alternative) `0xb39dab...9993d4` — deployed 2022-06-28 21:28:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_TrailOfBits_2023-07.pdf | FeeController | own contract | FeeController (selected) `0x41e538...8cff9f` — deployed 2022-06-28 21:26:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_TrailOfBits_2023-07.pdf | PromissoryNote | ambiguous — not counted | PromissoryNote (alternative) `0x349a02...d8ddee` — deployed 2022-06-28 21:27:23+03 — liveness: live (current_address_book_code)<br>PromissoryNote (alternative) `0x337104...f863aa` — deployed 2022-06-28 21:26:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_TrailOfBits_2023-07.pdf | VaultFactory | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x666faa...7133be` — deployed 2022-12-07 00:18:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6e9b4c...cc94a2` — deployed 2022-06-28 21:26:05+03 — liveness: live (code_present_context)<br>VaultFactory (alternative) `0x21b346...6b3c0c` — deployed 2022-06-28 21:25:55+03 — liveness: live (proxy_unit_reachable)<br>VaultFactory (alternative) `0x371e4f...6c596f` — deployed 2022-12-07 00:17:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_TrailOfBits_2023-07.pdf | AssetVault | ambiguous — not counted | AssetVault (alternative) `0x833835...10bcb5` — deployed 2022-12-07 00:17:23+03 — liveness: live (current_address_book_code)<br>AssetVault (alternative) `0xd89845...38acb6` — deployed 2022-06-28 21:25:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V3_Lending_TrailOfBits_2023-07.pdf | CallWhitelist | own contract | CallWhitelist (selected) `0xb4496f...178c82` — deployed 2022-06-28 21:24:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_TrailOfBits_2023-07.pdf | CallWhitelistApprovals | own contract | CallWhitelistApprovals (selected) `0xb4515a...9fdb95` — deployed 2022-12-06 23:58:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_TrailOfBits_2023-07.pdf | CallWhitelistDelegation | unmatched — not counted | — | listed in Project Coverage | no |
| V3_Lending_TrailOfBits_2023-07.pdf | CallWhitelistAllExtensions | unmatched — not counted | — | listed in Project Coverage | no |
| V3_Lending_TrailOfBits_2023-07.pdf | ItemsVerifier | own contract | ArcadeItemsVerifier (selected) `0xabfd9d...948df0` — deployed 2022-07-22 19:33:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_TrailOfBits_2023-07.pdf | CollectionWideOfferVerifier | unmatched — not counted | — | listed in Project Coverage | no |
| V3_Lending_TrailOfBits_2023-07.pdf | UnvaultedItemsVerifier | unmatched — not counted | — | listed in Project Coverage | no |
| V3_Lending_TrailOfBits_2023-07.pdf | PunksVerifier | own contract | PunksVerifier (selected) `0x16d99e...08b8e2` — deployed 2022-08-02 20:44:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V3_Lending_TrailOfBits_2023-07.pdf | ArtBlocksVerifier | unmatched — not counted | — | listed in Project Coverage | no |
| V3_Rollovers_Omniscia_2023-08.pdf | RolloverErrors | unmatched — not counted | — | listed in scope table | no |
| V3_Rollovers_Omniscia_2023-08.pdf | V2ToV3Rollover | unmatched — not counted | — | listed in scope table | no |
| V3_Rollovers_Omniscia_2023-08.pdf | V2ToV3RolloverBase | unmatched — not counted | — | listed in scope table | no |
| V3_Rollovers_Omniscia_2023-08.pdf | V2ToV3RolloverWithItems | unmatched — not counted | — | listed in scope table | no |
| V4_Lending_Renascence_2024_02.pdf | OriginationControllerMigrate | unmatched — not counted | — | listed in scope and findings | no |
| V4_Lending_Renascence_2024_02.pdf | LoanCore | ambiguous — not counted | 0x59e57f… (alternative) `0x59e57f...09f403` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x81b2f8...fa7fd9` — deployed 2022-06-28 21:28:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V4_Lending_Renascence_2024_02.pdf | RefinanceController | unmatched — not counted | — | listed in scope and findings | no |
| V4_Lending_Renascence_2024_02.pdf | InterestCalculator | unmatched — not counted | — | listed in scope and findings | no |
| V4_Lending_Renascence_2024_02.pdf | RepaymentController | ambiguous — not counted | 0x945aff… (alternative) `0x945aff...0a05df` — liveness: live (current_address_book_code)<br>RepaymentController (alternative) `0xb39dab...9993d4` — deployed 2022-06-28 21:28:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V4_Lending_Renascence_2024_02.pdf | OriginationCalculator | unmatched — not counted | — | listed in scope and findings | no |
| V4_Lending_Renascence_2024_02.pdf | OriginationController | ambiguous — not counted | 0x0585a6… (alternative) `0x0585a6...172320` — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4c52ca...dc840b` — deployed 2022-06-28 21:30:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| V4_Lending_Renascence_2024_02.pdf | OriginationConfiguration | unmatched — not counted | — | listed in scope and findings | no |
| V4_Lending_Renascence_2024_02.pdf | OriginationLibrary | unmatched — not counted | — | listed in scope and findings | no |
| V4_Lending_Renascence_2024_02.pdf | FeeController | own contract | FeeController (selected) `0x41e538...8cff9f` — deployed 2022-06-28 21:26:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| V4_Lending_Renascence_2024_02.pdf | V3RepaymentController | unmatched — not counted | — | mentioned in M-01 context | no |
| V4_Lending_Renascence_2024_02.pdf | ILoanCoreV3 | unmatched — not counted | — | mentioned in M-01 context | no |
| V4_Lending_Renascence_2024_02.pdf | IRepaymentControllerV3 | unmatched — not counted | — | mentioned in M-01 context | no |
| V4_Lending_Renascence_2024_02.pdf | IERC1271 | unmatched — not counted | — | mentioned in M-07 context | no |
| V4_Lending_Renascence_2024_02.pdf | IExpressBorrow | unmatched — not counted | — | mentioned in M-09 context | no |
| V4_Lending_Renascence_2024_02.pdf | IMigrationBase | unmatched — not counted | — | mentioned in H-1 context | no |
| V4_Lending_Renascence_2024_02.pdf | IRefinanceController | unmatched — not counted | — | mentioned in L-2 context | no |
| V4_Lending_Renascence_2024_02.pdf | Lending | unmatched — not counted | — | mentioned in L-1 recommendation | no |
| arcade-staking-report-final.pdf | ArcadeRewardsRecipient | unmatched — not counted | — | — | no |
| arcade-staking-report-final.pdf | ArcadeStakingRewards | unmatched — not counted | — | — | no |
| arcade-staking-report-final.pdf | BoundedHistory | unmatched — not counted | — | — | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | Airdrop | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ArcadeToken | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ArcadeAirdrop | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ArcadeGSCVault | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ArcadeTreasury | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ARCDVestingVault | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ArcadeGSCCoreVoting | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ArcadeMerkleRewards | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ArcadeTokenDistributor | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ARCDVestingVaultStorage | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | Badge | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | BadgeDescriptor | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | BaseVotingVault | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | Governance | ambiguous — not counted | RepaymentController (alternative) `0xb39dab...9993d4` — deployed 2022-06-28 21:28:43+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4c52ca...dc840b` — deployed 2022-06-28 21:30:10+03 — liveness: live (current_address_book_code)<br>FeeController (alternative) `0x41e538...8cff9f` — deployed 2022-06-28 21:26:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | HashedStorageReentrancyBlock | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ImmutableVestingVault | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | NFTBoostVault | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | NFTBoostVaultStorage | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | ReputationBadge | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | Token | unmatched — not counted | — | listed in scope table | no |
| 07152023_Omniscia_Audit_Arcade_Governance.pdf | Treasury | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x833835...10bcb5` | AssetVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x094db3...01a8c6` | FlashRolloverStakingVaultUpgrade | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07352e...533dc9` | FlashRolloverV1toV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x337104...f863aa` | PromissoryNote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x349a02...d8ddee` | PromissoryNote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb39dab...9993d4` | RepaymentController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4b9564...52bed2` | VaultDepositRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfdda20...1483f6` | VaultDepositRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x21b346...6b3c0c` | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x371e4f...6c596f` | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a0f9a...8c2e8a` | VaultInventoryReporter | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 64 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 23 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 31 ambiguous, 103 unmatched
- Matched-own operational status: 23 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9
- Match method counts: temporal_name=2, unique_name=21

Zero-match audit list:

- [7720] V1_Lending_LeastAuthority_2021-08.pdf
- [7726] V3_Rollovers_Omniscia_2023-08.pdf
- [7733] arcade-staking-report-final.pdf
- [7734] 07152023_Omniscia_Audit_Arcade_Governance.pdf

Fork inheritance lineage and inherited audits are included when available.
