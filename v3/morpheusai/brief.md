# Agentic Audit Brief: MorpheusAI

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 18 (1 matched; 17 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: MorpheusAI (`morpheusai`)
- Website: [https://mor.org](https://mor.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, base-sepolia, ethereum
- Contract surface: 71 unique implementations (142 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $19,900,852.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for MorpheusAI. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, base, base-sepolia, ethereum. Structural roles: 1 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), unclassified (1)
- Contract kinds: contract (2)
- Detected standards: ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0eb467...61f46f`, chain 8453)
- LumerinDiamond (`0x6abe1d...d3030a`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 65 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 38
- Confirmed-live implementations: 3 of 71 unique; 68 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/67
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 71
- Raw deployments: 142
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 7 aging, 9 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 1.5% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MOROFT | unknown | project_anchor | own_supporting | 0 | base | unit-389462 | `0x7431ad...82b8e3` | ✅ Audited |

### ⚠️ Verified + Unaudited (66)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Builders | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x7ec3dd...f31b79`; arbitrum `0x969c0f...e45382` | ⚠️ Unaudited |
| BuildersTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: base `0xe5e06c...57c5ca`; arbitrum `0x232c15...416aa1` | ⚠️ Unaudited |
| BuildersTreasuryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9eba62...8fc561`; base `0xe71eb0...ad57e5` | ⚠️ Unaudited |
| BuildersTreasuryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x031075...aa9308`; arbitrum `0xcbe3d2...96e257` | ⚠️ Unaudited |
| BuildersV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x6db545...101dbc`; arbitrum `0xa86031...c14fe6` | ⚠️ Unaudited |
| BuildersV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2388be...f298ab`; arbitrum `0xccc067...d01532` | ⚠️ Unaudited |
| BuildersV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x18faef...7513b0`; base `0x42bb44...7ef4b9` | ⚠️ Unaudited |
| BuildersV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6cce08...e4750e`; arbitrum `0xc0ed68...bcff3f` | ⚠️ Unaudited |
| ChainLinkDataConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x18faef...7513b0`; ethereum `0x2265ae...95ed50`; ethereum `0xd18226...3bbc5e` | ⚠️ Unaudited |
| DelegateFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1b4836...4ff924`; base `0x3b5198...8cf116` | ⚠️ Unaudited |
| DelegateFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x281bc6...4b6375`; base `0x6ad6ef...830193` | ⚠️ Unaudited |
| DelegateFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x8aac72...b66aac`; base `0xe16414...af5a91` | ⚠️ Unaudited |
| DelegateFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x136538...cea76a`; arbitrum `0x37b94b...6eb7a5` | ⚠️ Unaudited |
| Delegation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x345b8b...012cb0`; arbitrum `0xe9d4b4...462d83` | ⚠️ Unaudited |
| DepositPool | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | ethereum | n/a | 7 deployments: ethereum `0x3b5198...8cf116`; ethereum `0x47176b...aa4790`; ethereum `0x6cce08...e4750e`; ethereum `0x9380d7...7cb384`; ethereum `0xccc067...d01532`; ethereum `0xdb10da...fbd670`; ethereum `0xde283f...277a42` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x24c09a...ccc20b`; ethereum `0x2e1ff1...0092b7` | ⚠️ Unaudited |
| DistributionExt | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6948b5...d44f97`; ethereum `0x6cfe1d...a224a9` | ⚠️ Unaudited |
| DistributionToArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc28172...4eaf57` | ⚠️ Unaudited |
| DistributionToArbV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefb3af...36b6d0` | ⚠️ Unaudited |
| DistributionToBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x383ebf...d4f18e` | ⚠️ Unaudited |
| DistributionToBaseV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6db545...101dbc` | ⚠️ Unaudited |
| DistributionV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31bf07...783294` | ⚠️ Unaudited |
| DistributionV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaddd7b...f44ab9` | ⚠️ Unaudited |
| DistributionV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68b9d0...6da294` | ⚠️ Unaudited |
| DistributionV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1292b...96720a` | ⚠️ Unaudited |
| Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b660a...b45f64` | ⚠️ Unaudited |
| DistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x52f76e...dade03`; ethereum `0xdf1ac1...f64c7a` | ⚠️ Unaudited |
| FeeConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x33e689...1cae83`; ethereum `0x55daa9...2613eb` | ⚠️ Unaudited |
| FeeConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2e1ff1...0092b7`; base `0x845fbb...1088ee` | ⚠️ Unaudited |
| FeeConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x873940...51ff0e`; arbitrum `0xc03d87...7eb895` | ⚠️ Unaudited |
| L1ArbSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1588b...d2e90c` | ⚠️ Unaudited |
| L1BaseSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe8882...8a1331` | ⚠️ Unaudited |
| L1FactoryToArb | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x969c0f...e45382`; ethereum `0xf6c6b6...64954c` | ⚠️ Unaudited |
| L1FactoryToBase | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x890bfa...c4546c`; ethereum `0xa03ea6...d7f116` | ⚠️ Unaudited |
| L1Sender | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6b1a3d...1ae9fe`; ethereum `0x845fbb...1088ee` | ⚠️ Unaudited |
| L1SenderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc54c...66515a` | ⚠️ Unaudited |
| L1SenderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2efd44...e5ff84`; ethereum `0x50e80e...467d1f` | ⚠️ Unaudited |
| L1SenderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6fd267...4ed75a`; ethereum `0xa775b4...dfb78a` | ⚠️ Unaudited |
| L2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xd4a8ec...77d427`; base `0xe50009...0d76af` | ⚠️ Unaudited |
| L2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x890bfa...c4546c`; arbitrum `0xa03ea6...d7f116` | ⚠️ Unaudited |
| L2MessageReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x19eef4...e6495d`; base `0xb69dbf...299bad` | ⚠️ Unaudited |
| L2MessageReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x47176b...aa4790`; arbitrum `0x9cbcea...3d41c7` | ⚠️ Unaudited |
| L2MessageReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x2efd44...e5ff84`; arbitrum `0x845fbb...1088ee`; arbitrum `0xd4a8ec...77d427` | ⚠️ Unaudited |
| L2MessageReceiverV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ec51d...56d699` | ⚠️ Unaudited |
| L2TokenReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: base `0x6b1a3d...1ae9fe`; arbitrum `0x24c09a...ccc20b`; arbitrum `0x383ebf...d4f18e` | ⚠️ Unaudited |
| L2TokenReceiverV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x27353f...2d5ae4`; arbitrum `0x47176b...aa4790` | ⚠️ Unaudited |
| L2TokenReceiverV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x2e1ff1...0092b7`; arbitrum `0x9eba62...8fc561` | ⚠️ Unaudited |
| LinearDistributionIntervalDecrease | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x0e2bb6...37ee9a`; ethereum `0x14a623...68478c`; ethereum `0x2388be...f298ab`; ethereum `0x37b94b...6eb7a5`; ethereum `0x3a1673...f33303`; ethereum `0x7431ad...82b8e3`; ethereum `0x9cbcea...3d41c7`; ethereum `0xc6eaf7...72584d`; ethereum `0xfb1a7d...a4825c`; base `0x2265ae...95ed50`; base `0xdf1ac1...f64c7a`; arbitrum `0x39e626...4d792a`; arbitrum `0x9380d7...7cb384` | ⚠️ Unaudited |
| LockMultiplierMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x345b8b...012cb0`; base `0x98c204...d36843`; arbitrum `0xde283f...277a42` | ⚠️ Unaudited |
| LumerinDiamond | unknown | project_anchor | own_supporting | 0 | base | unit-389461 | `0x6abe1d...d3030a` | ⚠️ Unaudited |
| Marketplace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5b660a...b45f64`; arbitrum `0xc37140...7f48a8` | ⚠️ Unaudited |
| ModelRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: base `0xb7994d...d8df87`; arbitrum `0x2e96ce...9a3996` | ⚠️ Unaudited |
| MOR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: base `0x98e3cf...eaa20e`; arbitrum `0x7431ad...82b8e3` | ⚠️ Unaudited |
| MOR20Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2efd44...e5ff84`; arbitrum `0xfe8882...8a1331` | ⚠️ Unaudited |
| MOROFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xcbb8f1...9dcec0`; arbitrum `0x092baa...bcfc86`; arbitrum `0x3c3a26...55786e` | ⚠️ Unaudited |
| ProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe30279...d88a75` | ⚠️ Unaudited |
| ProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x8621e6...cb62a2`; arbitrum `0xde819a...a6c71b` | ⚠️ Unaudited |
| ProvidersDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x031075...aa9308`; arbitrum `0xaddd7b...f44ab9` | ⚠️ Unaudited |
| ReferrerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x624966...7cdfbd`; ethereum `0x98c204...d36843`; ethereum `0x9a397c...6d2965` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb7994d...d8df87`; ethereum `0xe30279...d88a75` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4de9d5...04909d`; base `0xdc99a8...dc3980` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x281bc6...4b6375`; arbitrum `0x6ad6ef...830193` | ⚠️ Unaudited |
| SessionRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x174852...401578`; base `0x3ec0d9...a871d6`; arbitrum `0xab493d...f96d4c` | ⚠️ Unaudited |
| StETHMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec3dd...f31b79` | ⚠️ Unaudited |
| WETHMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52d004...5f82fe` | ⚠️ Unaudited |
| WStETHMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42bb44...7ef4b9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-389460 | `0x0eb467...61f46f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-389464 | `0x5c80dd...34ffa3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-389465 | `0x6e4d0b...aff930` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Code4rena x Morpheus Capital V2 Audit Report.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Code4rena%20x%20Morpheus%20Capital%20V2%20Audit%20Report.pdf) | Code4rena | Contest | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [MOR20 Contracts | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/MOR20%20Contracts%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Morpheus Capital V2 Zenith Audit Report.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Morpheus%20Capital%20V2%20Zenith%20Audit%20Report.pdf) | yAudit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Morpheus BuildersV2 Audit Report | Trust Security.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Builders/Morpheus%20BuildersV2%20Audit%20Report%20%7C%20Trust%20Security.pdf) | yAudit | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Morpheus Lumerin Audit Report 1 | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Compute/Morpheus%20Lumerin%20Audit%20Report%201%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Morpheus Lumerin Audit Report 2 | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Compute/Morpheus%20Lumerin%20Audit%20Report%202%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Morpheus Lumerin Audit Report 3 | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Compute/Morpheus%20Lumerin%20Audit%20Report%203%20%7C%20Renascence.pdf) | yAudit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Distribution V1 Audit | Community.md](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V1%20Audit%20%7C%20Community.md) | yAudit | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Distribution V1 Public Bug Bounty | Code Hawks.md](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V1%20Public%20Bug%20Bounty%20%7C%20Code%20Hawks.md) | Cyfrin | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Distribution V2 Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V2%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Distribution V3 (Capital Staking) Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V3%20(Capital%20Staking)%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Distribution V3 (Code Staking) Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V3%20(Code%20Staking)%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Distribution V4 (Claim Lock) Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V4%20(Claim%20Lock)%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Distribution V5 (Referral Program) Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V5%20(Referral%20Program)%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [L2TokenReceiverV2 Audit (Final) | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/L2%20Token%20Receiver%20V2/L2TokenReceiverV2%20Audit%20(Final)%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [L2TokenReceiverV2 Audit (Initial) | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/L2%20Token%20Receiver%20V2/L2TokenReceiverV2%20Audit%20(Initial)%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MOR Dynamic Minter Security Audit (Wormhole) | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/MOR%20OFT%20Token/MOR%20Dynamic%20Minter%20Security%20Audit%20(Wormhole)%20%7C%20Renascence.pdf) | yAudit | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [MOR Token Contract | OpenZepellin.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/MOR%20OFT%20Token/MOR%20Token%20Contract%20%7C%20OpenZepellin.pdf) | yAudit | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12357] Code4rena x Morpheus Capital V2 Audit Report.pdf — no match: Scope section states 6 smart contracts; extracted from file paths and findings. Audit date range Aug 15-25, 2025; end date used.
- [12358] MOR20 Contracts | Renascence.pdf — no match: Extracted from audit report text. Scope section lists Repository, CommitHash, MitigationHash, Date. Contracts mentioned in findings and centralization risks.
- [12359] Morpheus Capital V2 Zenith Audit Report.pdf — no match: Scope explicitly lists 'contracts/capital-protocol/* (except DistributionV6.sol)'. All contracts referenced in findings are within that directory. Audit dates: July 22 to July 25, 2025.
- [12360] Morpheus BuildersV2 Audit Report | Trust Security.pdf — no match: Two contracts in scope: BuildersV2.sol and BuilderSubnets.sol. Audit date from document versioning (0.4 21/03/25).
- [12361] Morpheus Lumerin Audit Report 1 | Renascence.pdf — no match: Scope explicitly lists four contracts: ModelRegistry.sol, ProviderRegistry.sol, Marketplace.sol, SessionRouter.sol. Audit date from cover page: August 8, 2024.
- [12362] Morpheus Lumerin Audit Report 2 | Renascence.pdf — no match: Extracted 7 contracts from scope and findings. Audit date from cover page.
- [12363] Morpheus Lumerin Audit Report 3 | Renascence.pdf — no match: Scope explicitly lists ModelRegistry.sol, ProviderRegistry.sol, Marketplace.sol, SessionRouter.sol. ProvidersDelegate.sol and DelegateFactory.sol are audited in findings.
- [12364] Distribution V1 Audit | Community.md — no match: No explicit scope section found; contracts extracted from findings referencing specific files.
- [12365] Distribution V1 Public Bug Bounty | Code Hawks.md — no match: Extracted from contest summary dates: Jan 30th, 2024 - Feb 3rd, 2024. End date used.
- [12366] Distribution V2 Audit | Renascence.pdf — no match: Extracted contracts from scope table and findings context. Audit date from cover page.
- [12367] Distribution V3 (Capital Staking) Audit | Renascence.pdf — no match: Only DistributionV2 contract is in scope; the report mentions DistributionV2.sol as the audited contract.
- [12368] Distribution V3 (Code Staking) Audit | Renascence.pdf — no match: Scope table lists 'Contract Smart Contracts' with DistributionV3.sol and IDistributionV3.sol implied by findings. Audit date from cover page and overview section.
- [12369] Distribution V4 (Claim Lock) Audit | Renascence.pdf — no match: No specific contract names or scope section found in the report. The report mentions 'SmartContracts' as a repository but does not list individual contract names.
- [12370] Distribution V5 (Referral Program) Audit | Renascence.pdf — no match: Audit report for DistributionContractV5. Referral Program (PR15|PR46) Version 2.0. Scope includes DistributionV5 and DistributionV4 contracts from SmartContracts and MOR20 repositories.
- [12371] L2TokenReceiverV2 Audit (Final) | Renascence.pdf — no match: Only one contract in scope: L2TokenReceiverV2. Audit date from cover page.
- [12372] L2TokenReceiverV2 Audit (Initial) | Renascence.pdf — no match: Only one contract in scope: L2TokenReceiverV2. Audit date from cover page: April 10, 2024.
- [12373] MOR Dynamic Minter Security Audit (Wormhole) | Renascence.pdf — no match: Only one contract name found; no file paths or addresses provided.
- [12374] MOR Token Contract | OpenZepellin.pdf — matched: Only one contract in scope: MOROFT.sol. Audit date from title line.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Code4rena x Morpheus Capital V2 Audit Report.pdf | ChainLinkDataConsumer | unmatched — not counted | — | listed in scope and findings reference | no |
| Code4rena x Morpheus Capital V2 Audit Report.pdf | Distributor | unmatched — not counted | — | listed in scope and findings reference | no |
| Code4rena x Morpheus Capital V2 Audit Report.pdf | DepositPool | unmatched — not counted | — | listed in scope and findings reference | no |
| Code4rena x Morpheus Capital V2 Audit Report.pdf | RewardPool | unmatched — not counted | — | listed in scope and findings reference | no |
| Code4rena x Morpheus Capital V2 Audit Report.pdf | L1SenderV2 | unmatched — not counted | — | listed in scope and findings reference | no |
| Code4rena x Morpheus Capital V2 Audit Report.pdf | L2TokenReceiverV2 | unmatched — not counted | — | listed in scope and findings reference | no |
| MOR20 Contracts | Renascence.pdf | Factory | unmatched — not counted | — | Listed in scope and findings (M-1, M-3, I-2) | no |
| MOR20 Contracts | Renascence.pdf | L1Factory | unmatched — not counted | — | Listed in scope and findings (M-3) | no |
| MOR20 Contracts | Renascence.pdf | L2Factory | unmatched — not counted | — | Listed in scope and findings (M-3) | no |
| MOR20 Contracts | Renascence.pdf | Distribution | unmatched — not counted | — | Listed in scope and findings (M-2) | no |
| MOR20 Contracts | Renascence.pdf | FeeConfig | unmatched — not counted | — | Listed in scope and findings (L-1, I-1, I-3, I-4, I-5) | no |
| MOR20 Contracts | Renascence.pdf | FreezableBeaconProxy | unmatched — not counted | — | Listed in scope and findings (M-3, L-2) | no |
| MOR20 Contracts | Renascence.pdf | L1Sender | unmatched — not counted | — | Mentioned in centralization risks as deployed behind FreezableBeaconProxy | no |
| MOR20 Contracts | Renascence.pdf | L2MessageReceiver | unmatched — not counted | — | Mentioned in centralization risks as deployed behind FreezableBeaconProxy | no |
| MOR20 Contracts | Renascence.pdf | L2TokenReceiver | unmatched — not counted | — | Mentioned in centralization risks as deployed behind FreezableBeaconProxy | no |
| MOR20 Contracts | Renascence.pdf | MOR20 | unmatched — not counted | — | Mentioned in centralization risks (MOR20.updateMinter()) | no |
| Morpheus Capital V2 Zenith Audit Report.pdf | DepositPool | unmatched — not counted | — | Listed in scope as part of contracts/capital-protocol/* (except DistributionV6.sol) and referenced in findings C-1, M-1, L-3, L-4. | no |
| Morpheus Capital V2 Zenith Audit Report.pdf | Distributor | unmatched — not counted | — | Listed in scope and referenced in findings C-1, H-1, M-2, L-2, I-2. | no |
| Morpheus Capital V2 Zenith Audit Report.pdf | ChainLinkDataConsumer | unmatched — not counted | — | Referenced in finding L-1. | no |
| Morpheus Capital V2 Zenith Audit Report.pdf | LinearDistributionIntervalDecrease | unmatched — not counted | — | Referenced in findings L-2 and I-1. | no |
| Morpheus Capital V2 Zenith Audit Report.pdf | RewardPool | unmatched — not counted | — | Referenced in findings I-1 and throughout the report. | no |
| Morpheus Capital V2 Zenith Audit Report.pdf | ReferrerLib | unmatched — not counted | — | Referenced in finding L-4. | no |
| Morpheus BuildersV2 Audit Report | Trust Security.pdf | BuildersV2 | unmatched — not counted | — | listed in scope | no |
| Morpheus BuildersV2 Audit Report | Trust Security.pdf | BuilderSubnets | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 1 | Renascence.pdf | ModelRegistry | unmatched — not counted | — | listed in scope section 2.1 | no |
| Morpheus Lumerin Audit Report 1 | Renascence.pdf | ProviderRegistry | unmatched — not counted | — | listed in scope section 2.1 | no |
| Morpheus Lumerin Audit Report 1 | Renascence.pdf | Marketplace | unmatched — not counted | — | listed in scope section 2.1 | no |
| Morpheus Lumerin Audit Report 1 | Renascence.pdf | SessionRouter | unmatched — not counted | — | listed in scope section 2.1 | no |
| Morpheus Lumerin Audit Report 2 | Renascence.pdf | ModelRegistry | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 2 | Renascence.pdf | ProviderRegistry | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 2 | Renascence.pdf | Marketplace | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 2 | Renascence.pdf | SessionRouter | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 2 | Renascence.pdf | ModelStorage | unmatched — not counted | — | mentioned in findings | no |
| Morpheus Lumerin Audit Report 2 | Renascence.pdf | ProviderStorage | unmatched — not counted | — | mentioned in findings | no |
| Morpheus Lumerin Audit Report 2 | Renascence.pdf | StatsStorage | unmatched — not counted | — | mentioned in findings | no |
| Morpheus Lumerin Audit Report 3 | Renascence.pdf | ModelRegistry.sol | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 3 | Renascence.pdf | ProviderRegistry.sol | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 3 | Renascence.pdf | Marketplace.sol | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 3 | Renascence.pdf | SessionRouter.sol | unmatched — not counted | — | listed in scope | no |
| Morpheus Lumerin Audit Report 3 | Renascence.pdf | ProvidersDelegate.sol | unmatched — not counted | — | mentioned in findings | no |
| Morpheus Lumerin Audit Report 3 | Renascence.pdf | DelegateFactory.sol | unmatched — not counted | — | mentioned in findings | no |
| Distribution V1 Audit | Community.md | Distribution | unmatched — not counted | — | mentioned in findings | no |
| Distribution V1 Audit | Community.md | L1Sender | unmatched — not counted | — | mentioned in findings | no |
| Distribution V1 Audit | Community.md | L2MessageReceiver | unmatched — not counted | — | mentioned in findings | no |
| Distribution V1 Audit | Community.md | L2TokenReceiver | unmatched — not counted | — | mentioned in findings | no |
| Distribution V1 Audit | Community.md | LinearDistributionIntervalDecrease | unmatched — not counted | — | mentioned in findings | no |
| Distribution V1 Audit | Community.md | MOR | unmatched — not counted | — | mentioned in findings | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | Distribution | unmatched — not counted | — | listed in scope and findings | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | L1Sender | unmatched — not counted | — | listed in scope and findings | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | DistributionV2 | unmatched — not counted | — | listed in findings | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | WStETHMock | unmatched — not counted | — | listed in findings | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | StETHMock | unmatched — not counted | — | listed in findings | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | SwapRouterMock | unmatched — not counted | — | listed in findings | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | NonfungiblePositionManagerMock | unmatched — not counted | — | listed in findings | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | MOR | unmatched — not counted | — | mentioned in findings as reward token | no |
| Distribution V1 Public Bug Bounty | Code Hawks.md | L2TokenReceiver | unmatched — not counted | — | mentioned in findings | no |
| Distribution V2 Audit | Renascence.pdf | Distribution | unmatched — not counted | — | listed in scope and findings | no |
| Distribution V2 Audit | Renascence.pdf | L1Sender | unmatched — not counted | — | listed in scope and findings | no |
| Distribution V2 Audit | Renascence.pdf | L2TokenReceiver | unmatched — not counted | — | listed in scope and findings | no |
| Distribution V2 Audit | Renascence.pdf | L2MessageReceiver | unmatched — not counted | — | listed in scope and findings | no |
| Distribution V2 Audit | Renascence.pdf | LinearDistributionIntervalDecrease | unmatched — not counted | — | listed in findings | no |
| Distribution V2 Audit | Renascence.pdf | IDistribution | unmatched — not counted | — | listed in findings | no |
| Distribution V2 Audit | Renascence.pdf | IL2MessageReceiver | unmatched — not counted | — | listed in findings | no |
| Distribution V3 (Capital Staking) Audit | Renascence.pdf | DistributionV2 | unmatched — not counted | — | listed in scope table and findings context | no |
| Distribution V3 (Code Staking) Audit | Renascence.pdf | DistributionV3 | unmatched — not counted | — | listed in scope table and findings context | no |
| Distribution V3 (Code Staking) Audit | Renascence.pdf | IDistributionV3 | unmatched — not counted | — | listed in findings context | no |
| Distribution V5 (Referral Program) Audit | Renascence.pdf | DistributionV5 | unmatched — not counted | — | mentioned in findings context and scope | no |
| Distribution V5 (Referral Program) Audit | Renascence.pdf | DistributionV4 | unmatched — not counted | — | mentioned in finding L-1 context | no |
| L2TokenReceiverV2 Audit (Final) | Renascence.pdf | L2TokenReceiverV2 | unmatched — not counted | — | listed in scope and findings | no |
| L2TokenReceiverV2 Audit (Initial) | Renascence.pdf | L2TokenReceiverV2 | unmatched — not counted | — | listed in scope table and mentioned throughout report | no |
| MOR Dynamic Minter Security Audit (Wormhole) | Renascence.pdf | MorpheusAIsDynamicMinter | unmatched — not counted | — | listed in scope as project name and repository name | no |
| MOR Token Contract | OpenZepellin.pdf | MOROFT | own contract | MOROFT (selected) `0x7431ad...82b8e3` — deployed 2024-05-27 10:14:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x6abe1d...d3030a` | LumerinDiamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 71 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=16, low=1, medium=1
- Match method counts: unique_name=1

Zero-match audit list:

- [12357] Code4rena x Morpheus Capital V2 Audit Report.pdf
- [12358] MOR20 Contracts | Renascence.pdf
- [12359] Morpheus Capital V2 Zenith Audit Report.pdf
- [12360] Morpheus BuildersV2 Audit Report | Trust Security.pdf
- [12361] Morpheus Lumerin Audit Report 1 | Renascence.pdf
- [12362] Morpheus Lumerin Audit Report 2 | Renascence.pdf
- [12363] Morpheus Lumerin Audit Report 3 | Renascence.pdf
- [12364] Distribution V1 Audit | Community.md
- [12365] Distribution V1 Public Bug Bounty | Code Hawks.md
- [12366] Distribution V2 Audit | Renascence.pdf
- [12367] Distribution V3 (Capital Staking) Audit | Renascence.pdf
- [12368] Distribution V3 (Code Staking) Audit | Renascence.pdf
- [12369] Distribution V4 (Claim Lock) Audit | Renascence.pdf
- [12370] Distribution V5 (Referral Program) Audit | Renascence.pdf
- [12371] L2TokenReceiverV2 Audit (Final) | Renascence.pdf
- [12372] L2TokenReceiverV2 Audit (Initial) | Renascence.pdf
- [12373] MOR Dynamic Minter Security Audit (Wormhole) | Renascence.pdf

Fork inheritance lineage and inherited audits are included when available.
