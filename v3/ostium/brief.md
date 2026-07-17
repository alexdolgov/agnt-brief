# Agentic Audit Brief: Ostium

## Export Authority

- Production state: **published scope**
- Raw selected rows: 79 across 7 audit(s)
- Eligible audit results: 7 (7 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Ostium (`ostium`)
- Website: [https://www.ostium.io/](https://www.ostium.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia
- Contract surface: 48 unique implementations (58 raw deployments)
- Coverage basis: 14/14 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $57,611,789.99
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ostium. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across arbitrum, arbitrum-sepolia. Structural roles: 4 core, 4 infra, 4 supporting, 2 unclassified. 8 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: core (4), infra (4), supporting (4), unclassified (2)
- Contract kinds: contract (14)
- Detected standards: erc1967proxy (8), erc165 (1), erc721 (1), ownable (1)
- Frameworks: openzeppelin (11)
- Upgradeable-pattern rows: 8

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- OstiumLockedDepositNft (`0xb4f1123be58f5d69e1cf565ed8756c7fcf31c8d3`, chain 42161)
- OstiumRegistry (`0x799a139ae56e11f0476ace2f6118cfcaed9608d2`, chain 42161)
- TransparentUpgradeableProxy (`0x20d419a8e12c45f88fda7c5760bb6923cee27f98`, chain 42161)
- TransparentUpgradeableProxy (`0x260e349f643f12797fdc6f8c9d3df211d5577823`, chain 42161)
- TransparentUpgradeableProxy (`0x3890243a8fc091c626ed26c087a028b46bc9d66c`, chain 42161)
- TransparentUpgradeableProxy (`0x52b2a78e12b09b66c6c8ce291d653d40bab77f0c`, chain 42161)
- TransparentUpgradeableProxy (`0x6d0ba1f9996dbd8885827e1b2e8f6593e7702411`, chain 42161)
- TransparentUpgradeableProxy (`0x959da1452238f71f17f7da5dba2e9c04fef57324`, chain 42161)
- TransparentUpgradeableProxy (`0xccd5891083a8acd2074690f65d3024e7d13d66e7`, chain 42161)
- TransparentUpgradeableProxy (`0xe607ac9ff58697c5978afa1fc1c5c437a6d1858c`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 14/14 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 18 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 16 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Confirmed-live implementations: 14 of 48 unique; 34 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 14/30
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 48
- Raw deployments: 58
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 7 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 14 | 46.7% | 2026-01 |
| Zellic | Tier 2 | 13 | 43.3% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OstiumLockedDepositNft | token | project_anchor | own_supporting | 0 | arbitrum | unit-390467 | `0xb4f1123be58f5d69e1cf565ed8756c7fcf31c8d3` | ✅ Audited |
| OstiumOpenPnl | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-390489 | `0xe607ac9ff58697c5978afa1fc1c5c437a6d1858c` | ✅ Audited |
| OstiumPairInfos | periphery | project_anchor | own_supporting | 1 | arbitrum | unit-390494 | `0x3890243a8fc091c626ed26c087a028b46bc9d66c` | ✅ Audited |
| OstiumPairsStorage | registry | project_anchor | own_supporting | 1 | arbitrum | unit-390488 | `0x260e349f643f12797fdc6f8c9d3df211d5577823` | ✅ Audited |
| OstiumPriceRouter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-390465 | `0x4b0c3c77d398912491f192d265b237c8d4441ad7` | ✅ Audited |
| OstiumPriceUpKeep | operational_periphery | project_anchor | own_supporting | 1 | arbitrum | unit-390493 | `0x52b2a78e12b09b66c6c8ce291d653d40bab77f0c` | ✅ Audited |
| OstiumRegistry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-390466 | `0x799a139ae56e11f0476ace2f6118cfcaed9608d2` | ✅ Audited |
| OstiumTradesUpKeep | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-390490 | `0x959da1452238f71f17f7da5dba2e9c04fef57324` | ✅ Audited |
| OstiumTrading | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-390491 | `0x6d0ba1f9996dbd8885827e1b2e8f6593e7702411` | ✅ Audited |
| OstiumTradingCallbacks | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-390492 | `0x7720fc8c8680bf4a1af99d44c6c265a74e9742a9` | ✅ Audited |
| OstiumTradingStorage | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-390496 | `0xccd5891083a8acd2074690f65d3024e7d13d66e7` | ✅ Audited |
| OstiumVault | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-390495 | `0x20d419a8e12c45f88fda7c5760bb6923cee27f98` | ✅ Audited |
| OstiumVerifier | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-390469 | `0xccf233920e8cc9415ecf503b992881d69b6c47ad` | ✅ Audited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-390464 | `0x083f97babf33d4abc03151b5dec98170761f4025` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OstiumOpenPnl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2ab490baeacf23a02895d2e17b348469ddb72146`; arbitrum `0x6bf0c740c7622950272127313870d278e9ea58eb` | ⚠️ Unaudited |
| OstiumPairInfos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1da56c3a1234a2e4ec518f1cf67ae1067327ae13`; arbitrum `0xf779579c5f3b5e4888f46a56a106aabfc59f99f8` | ⚠️ Unaudited |
| OstiumPairsStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x54c1cebb52f693dc7975bf0608d0be2ea8a6d0c2`; arbitrum `0xb7cfbaa50499200aede77409098a67c4f209d248` | ⚠️ Unaudited |
| OstiumPriceRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5126c2a3f681de161198d026facf927b8f63d0ba`; arbitrum `0xab33334dff0c0ef02a4cf0bce5c69df0dc4c4473` | ⚠️ Unaudited |
| OstiumPriceRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x52453fbc4a33f7a2a0a01d67b952625816f161b4` | ⚠️ Unaudited |
| OstiumPriceRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7151fc4aa06d87be6bfe73af20ce7691b0ddb306` | ⚠️ Unaudited |
| OstiumPriceUpKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8b26fe35c84c6d49a730f11e0034b47b0653ad06`; arbitrum `0xba99c3ad65edffb9e1182d0bf052ca634ead8a02` | ⚠️ Unaudited |
| OstiumPrivatePriceUpKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xb7138b18123e767ced87a93fba43915af5a0c29c`; arbitrum `0xefa6a24d67dd423ab6a0923b65ef4ca6735e81dc` | ⚠️ Unaudited |
| OstiumPrivatePriceUpKeep | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xb71ec9ebd8145dacacf6724363143cb5667a3d36` | ⚠️ Unaudited |
| OstiumTimelockOwner | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb85dc6095c74d36500c9cdcacc15ecdc223bbf7` | ⚠️ Unaudited |
| OstiumTradesUpKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98e5695674e445ccc8cb2472e2d97a8c66479a83` | ⚠️ Unaudited |
| OstiumTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x3aa5ccc377921d440e4bced103c4f8687f259652`; arbitrum `0x4298cc309ea2a4f3712030e0df94fb041189cc0b`; arbitrum `0xe6bc4e0519bc6d7f63baad2f2cd5a2e57d5f4217` | ⚠️ Unaudited |
| OstiumTradingCallbacks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x4ca659bb271aec5025596fdeca725ea88d8ef37e`; arbitrum `0xe75d8ac0e898359def69ceccea78f7bcbb65f30d` | ⚠️ Unaudited |
| OstiumTradingStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x496a341a7a6b8950d648e34a8bce892e45e43f2c`; arbitrum `0xf2e3458bb94a83d00350e3210c1dd7b4d8ff87ad` | ⚠️ Unaudited |
| OstiumVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51221db105999184a875b58c6cc371d43c238208` | ⚠️ Unaudited |
| TradingCallbacksLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10b45474ed1482a53840a945454174b12a2b6066` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390470 | `0x0b9f5243b29938668c9cfbd7557a389ec7ef88b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390471 | `0x27db8b73ec5cbaa17b4e7d3d3f07ebdb2ee3e154` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390472 | `0x297775475e875025f58789dd46a9e2dcfcb0a1e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390473 | `0x2a9b9c988393f46a2537b0ff11e98c2c15a95afe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390474 | `0x2fbf52c8769c5da05afee7853b12775461cd04d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390475 | `0x30da14a620c9724c1bb5d1f04049a29e2413d3aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390476 | `0x52c8c22bf47657c172e5d7a7fb2c1156916bac46` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390477 | `0x5d3af2ab23a5f38c548151f507f6dded9979b328` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390478 | `0x81e252ccf6bb99202220fdc0c5788bbd9e2473d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390479 | `0x83dc7c5ddead58f47230b70e6ef6bc44064bd814` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390480 | `0x9404a01d0546907e0bdcd0545146cb9781416e4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390481 | `0xab5583ebf187b926e48deb9e9bb13418255c665c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390482 | `0xad42c5da19b8d3f8c20847cb5a1a2deb502b5d46` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390483 | `0xbc7b65d3aa1c38b39ac63f131d5245c51b83acbc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390484 | `0xe73b11fb1e3eeee8af2a23079a4410fe1b370548` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390485 | `0xef5d3fc8a4651b32d2dab967e1d91a67ecfa953e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390486 | `0xf86cff7679ba3e99d21255d774088e25fe0ec34a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390487 | `0xffad1f402030000c93152d38e384c202dd233445` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audits.md](https://docs.ostium.com/protocol/security/audits.md) | Pashov Audit Group | Audit | 2026-01 | fresh | Direct | address | matched | 21 | 15 | 0 | 1 | high |
| [spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2FaMgw1k5iR4SvbYWRcs7q%2FOstium%20-%20Zellic%20Audit%20Report%20(1).pdf) | Zellic | Audit | 2025-11 | fresh | Direct | n/a | matched | 12 | 9 | 0 | 10 | n/a |
| [spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2F1NAt99nKJ1HesxyWjElF%2FZellic%20Nov%2025.pdf) | Zellic | Audit | 2025-11 | fresh | Direct | n/a | matched | 13 | 9 | 0 | 7 | n/a |
| [spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2FMpYIMzIusmebDMScUlYB%2FOstiumAudit.pdf) | Zellic | Audit | 2025-11 | fresh | Direct | n/a | matched | 12 | 9 | 0 | 7 | n/a |
| [spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2FG0Of6YAPlrOIPs51aj16%2FOstium-security-review_2025-01-21.pdf) | Zellic | Audit | 2025-11 | fresh | Direct | n/a | matched | 13 | 9 | 0 | 6 | n/a |
| [spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2F7b08UITTgMLh1ej19d7I%2FOstium-security-review_2025-04-06.pdf) | Zellic | Audit | 2025-11 | fresh | Direct | n/a | matched | 5 | 5 | 0 | 3 | n/a |
| [spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf](https://1263702948-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCEDPLHGTrrpP1i2dbe3d%2Fuploads%2F342r2xPX6yppDzAfPLVz%2FPashov%20Jan%2026.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | n/a | matched | 10 | 8 | 0 | 3 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3907] audits.md — matched: Extracted contract names from mainnet addresses table and Pashov January 2026 review scope. Audit date inferred from latest Pashov review (January 2026).
- [11846] spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf — matched: No reason recorded
- [11847] spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf — matched: No reason recorded
- [11848] spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf — matched: No reason recorded
- [11849] spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf — matched: No reason recorded
- [11850] spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf — matched: No reason recorded
- [11851] spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| audits.md | ProxyAdmin | own contract | ProxyAdmin (selected) `0x083f97babf33d4abc03151b5dec98170761f4025` — deployed 2024-07-03 14:35:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | Registry | own contract | OstiumRegistry (selected) `0x799a139ae56e11f0476ace2f6118cfcaed9608d2` — deployed 2024-07-03 14:35:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x20d419a8e12c45f88fda7c5760bb6923cee27f98` — deployed 2024-07-03 14:35:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | LockedDepositNft | own contract | OstiumLockedDepositNft (selected) `0xb4f1123be58f5d69e1cf565ed8756c7fcf31c8d3` — deployed 2024-07-03 14:35:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | TradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xccd5891083a8acd2074690f65d3024e7d13d66e7` — deployed 2024-08-26 19:06:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | PairInfos | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x3890243a8fc091c626ed26c087a028b46bc9d66c` — deployed 2024-08-26 19:13:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | PairsStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x260e349f643f12797fdc6f8c9d3df211d5577823` — deployed 2024-08-26 19:18:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | Trading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6d0ba1f9996dbd8885827e1b2e8f6593e7702411` — deployed 2024-08-26 19:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | TradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7720fc8c8680bf4a1af99d44c6c265a74e9742a9` — deployed 2024-08-26 19:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | OpenPnlFeed | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe607ac9ff58697c5978afa1fc1c5c437a6d1858c` — deployed 2024-08-26 19:19:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | TradesUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x959da1452238f71f17f7da5dba2e9c04fef57324` — deployed 2024-08-26 19:19:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | PriceRouter | own contract | OstiumPriceRouter (selected) `0x4b0c3c77d398912491f192d265b237c8d4441ad7` — deployed 2024-08-26 19:19:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | PriceUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x52b2a78e12b09b66c6c8ce291d653d40bab77f0c` — deployed 2024-08-26 19:19:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | PrivatePriceUpKeep | unmatched — not counted | — | listed in mainnet contract addresses table | no |
| audits.md | Verifier | own contract | OstiumVerifier (selected) `0xccf233920e8cc9415ecf503b992881d69b6c47ad` — deployed 2024-08-26 19:19:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | OstiumVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x20d419a8e12c45f88fda7c5760bb6923cee27f98` — deployed 2024-07-03 14:35:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | OstiumOpenPnl | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe607ac9ff58697c5978afa1fc1c5c437a6d1858c` — deployed 2024-08-26 19:19:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | OstiumTradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7720fc8c8680bf4a1af99d44c6c265a74e9742a9` — deployed 2024-08-26 19:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | OstiumTrading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6d0ba1f9996dbd8885827e1b2e8f6593e7702411` — deployed 2024-08-26 19:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | OstiumTradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xccd5891083a8acd2074690f65d3024e7d13d66e7` — deployed 2024-08-26 19:06:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | OstiumPriceRouter | own contract | OstiumPriceRouter (selected) `0x4b0c3c77d398912491f192d265b237c8d4441ad7` — deployed 2024-08-26 19:19:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | OstiumPairInfos | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x3890243a8fc091c626ed26c087a028b46bc9d66c` — deployed 2024-08-26 19:13:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | ChainUtils | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | Delegatable | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | FixedPoint96 | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | FullMath | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumLinkUpKeep | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumLockedDepositNft | own contract | OstiumLockedDepositNft (selected) `0xb4f1123be58f5d69e1cf565ed8756c7fcf31c8d3` — deployed 2024-07-03 14:35:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumOpenPnl | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe607ac9ff58697c5978afa1fc1c5c437a6d1858c` — deployed 2024-08-26 19:19:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumPairInfos | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x3890243a8fc091c626ed26c087a028b46bc9d66c` — deployed 2024-08-26 19:13:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumPairsStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x260e349f643f12797fdc6f8c9d3df211d5577823` — deployed 2024-08-26 19:18:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumPriceRouter | own contract | OstiumPriceRouter (selected) `0x4b0c3c77d398912491f192d265b237c8d4441ad7` — deployed 2024-08-26 19:19:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumPriceUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x52b2a78e12b09b66c6c8ce291d653d40bab77f0c` — deployed 2024-08-26 19:19:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumRegistry | own contract | OstiumRegistry (selected) `0x799a139ae56e11f0476ace2f6118cfcaed9608d2` — deployed 2024-07-03 14:35:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumTimelockManager | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumTimelockOwner | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumTradesUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x959da1452238f71f17f7da5dba2e9c04fef57324` — deployed 2024-08-26 19:19:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumTrading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6d0ba1f9996dbd8885827e1b2e8f6593e7702411` — deployed 2024-08-26 19:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumTradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7720fc8c8680bf4a1af99d44c6c265a74e9742a9` — deployed 2024-08-26 19:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumTradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xccd5891083a8acd2074690f65d3024e7d13d66e7` — deployed 2024-08-26 19:06:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x20d419a8e12c45f88fda7c5760bb6923cee27f98` — deployed 2024-07-03 14:35:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumWhitelist | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | TickMath | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | TradeUtils | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | ChainUtils | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | Delegatable | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumLockedDepositNft | own contract | OstiumLockedDepositNft (selected) `0xb4f1123be58f5d69e1cf565ed8756c7fcf31c8d3` — deployed 2024-07-03 14:35:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumOpenPnl | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe607ac9ff58697c5978afa1fc1c5c437a6d1858c` — deployed 2024-08-26 19:19:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumPairInfos | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x3890243a8fc091c626ed26c087a028b46bc9d66c` — deployed 2024-08-26 19:13:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumPairsStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x260e349f643f12797fdc6f8c9d3df211d5577823` — deployed 2024-08-26 19:18:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumPriceRouter | own contract | OstiumPriceRouter (selected) `0x4b0c3c77d398912491f192d265b237c8d4441ad7` — deployed 2024-08-26 19:19:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumPriceUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x52b2a78e12b09b66c6c8ce291d653d40bab77f0c` — deployed 2024-08-26 19:19:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumPrivatePriceUpKeep | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumRegistry | own contract | OstiumRegistry (selected) `0x799a139ae56e11f0476ace2f6118cfcaed9608d2` — deployed 2024-07-03 14:35:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumTimelockManager | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumTimelockOwner | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumTradesUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x959da1452238f71f17f7da5dba2e9c04fef57324` — deployed 2024-08-26 19:19:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumTrading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6d0ba1f9996dbd8885827e1b2e8f6593e7702411` — deployed 2024-08-26 19:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumTradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7720fc8c8680bf4a1af99d44c6c265a74e9742a9` — deployed 2024-08-26 19:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumTradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xccd5891083a8acd2074690f65d3024e7d13d66e7` — deployed 2024-08-26 19:06:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x20d419a8e12c45f88fda7c5760bb6923cee27f98` — deployed 2024-07-03 14:35:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumVerifier | own contract | OstiumVerifier (selected) `0xccf233920e8cc9415ecf503b992881d69b6c47ad` — deployed 2024-08-26 19:19:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | TradingCallbacksLib | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | TradingLib | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | ChainUtils | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | Delegatable | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumLinkUpKeep | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumLockedDepositNft | own contract | OstiumLockedDepositNft (selected) `0xb4f1123be58f5d69e1cf565ed8756c7fcf31c8d3` — deployed 2024-07-03 14:35:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumOpenPnl | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe607ac9ff58697c5978afa1fc1c5c437a6d1858c` — deployed 2024-08-26 19:19:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumPairInfos | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x3890243a8fc091c626ed26c087a028b46bc9d66c` — deployed 2024-08-26 19:13:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumPairsStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x260e349f643f12797fdc6f8c9d3df211d5577823` — deployed 2024-08-26 19:18:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumPriceRouter | own contract | OstiumPriceRouter (selected) `0x4b0c3c77d398912491f192d265b237c8d4441ad7` — deployed 2024-08-26 19:19:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumPriceUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x52b2a78e12b09b66c6c8ce291d653d40bab77f0c` — deployed 2024-08-26 19:19:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumRegistry | own contract | OstiumRegistry (selected) `0x799a139ae56e11f0476ace2f6118cfcaed9608d2` — deployed 2024-07-03 14:35:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumTimelockManager | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumTimelockOwner | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumTradesUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x959da1452238f71f17f7da5dba2e9c04fef57324` — deployed 2024-08-26 19:19:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumTrading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6d0ba1f9996dbd8885827e1b2e8f6593e7702411` — deployed 2024-08-26 19:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumTradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7720fc8c8680bf4a1af99d44c6c265a74e9742a9` — deployed 2024-08-26 19:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumTradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xccd5891083a8acd2074690f65d3024e7d13d66e7` — deployed 2024-08-26 19:06:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x20d419a8e12c45f88fda7c5760bb6923cee27f98` — deployed 2024-07-03 14:35:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumWhitelist | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | TradeUtils | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | ChainUtils | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | Delegatable | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumLockedDepositNft | own contract | OstiumLockedDepositNft (selected) `0xb4f1123be58f5d69e1cf565ed8756c7fcf31c8d3` — deployed 2024-07-03 14:35:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumOpenPnl | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe607ac9ff58697c5978afa1fc1c5c437a6d1858c` — deployed 2024-08-26 19:19:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumPairInfos | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x3890243a8fc091c626ed26c087a028b46bc9d66c` — deployed 2024-08-26 19:13:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumPairsStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x260e349f643f12797fdc6f8c9d3df211d5577823` — deployed 2024-08-26 19:18:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumPriceRouter | own contract | OstiumPriceRouter (selected) `0x4b0c3c77d398912491f192d265b237c8d4441ad7` — deployed 2024-08-26 19:19:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumPriceUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x52b2a78e12b09b66c6c8ce291d653d40bab77f0c` — deployed 2024-08-26 19:19:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumPrivatePriceUpKeep | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumRegistry | own contract | OstiumRegistry (selected) `0x799a139ae56e11f0476ace2f6118cfcaed9608d2` — deployed 2024-07-03 14:35:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumTimelockManager | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumTimelockOwner | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumTradesUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x959da1452238f71f17f7da5dba2e9c04fef57324` — deployed 2024-08-26 19:19:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumTrading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6d0ba1f9996dbd8885827e1b2e8f6593e7702411` — deployed 2024-08-26 19:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumTradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7720fc8c8680bf4a1af99d44c6c265a74e9742a9` — deployed 2024-08-26 19:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumTradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xccd5891083a8acd2074690f65d3024e7d13d66e7` — deployed 2024-08-26 19:06:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x20d419a8e12c45f88fda7c5760bb6923cee27f98` — deployed 2024-07-03 14:35:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumVerifier | own contract | OstiumVerifier (selected) `0xccf233920e8cc9415ecf503b992881d69b6c47ad` — deployed 2024-08-26 19:19:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | TradingCallbacksLib | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf | Delegatable | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf | OstiumPairInfos | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x3890243a8fc091c626ed26c087a028b46bc9d66c` — deployed 2024-08-26 19:13:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf | OstiumPairsStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x260e349f643f12797fdc6f8c9d3df211d5577823` — deployed 2024-08-26 19:18:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf | OstiumPriceUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x52b2a78e12b09b66c6c8ce291d653d40bab77f0c` — deployed 2024-08-26 19:19:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf | OstiumPrivatePriceUpKeep | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf | OstiumTrading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6d0ba1f9996dbd8885827e1b2e8f6593e7702411` — deployed 2024-08-26 19:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf | OstiumTradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7720fc8c8680bf4a1af99d44c6c265a74e9742a9` — deployed 2024-08-26 19:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf | TradingCallbacksLib | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumOpenPnl | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe607ac9ff58697c5978afa1fc1c5c437a6d1858c` — deployed 2024-08-26 19:19:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumPairInfos | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x3890243a8fc091c626ed26c087a028b46bc9d66c` — deployed 2024-08-26 19:13:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumPairsStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x260e349f643f12797fdc6f8c9d3df211d5577823` — deployed 2024-08-26 19:18:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumPriceRouter | own contract | OstiumPriceRouter (selected) `0x4b0c3c77d398912491f192d265b237c8d4441ad7` — deployed 2024-08-26 19:19:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumPriceUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x52b2a78e12b09b66c6c8ce291d653d40bab77f0c` — deployed 2024-08-26 19:19:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumPrivatePriceUpKeep | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumTrading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6d0ba1f9996dbd8885827e1b2e8f6593e7702411` — deployed 2024-08-26 19:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumTradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7720fc8c8680bf4a1af99d44c6c265a74e9742a9` — deployed 2024-08-26 19:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumTradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xccd5891083a8acd2074690f65d3024e7d13d66e7` — deployed 2024-08-26 19:06:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x20d419a8e12c45f88fda7c5760bb6923cee27f98` — deployed 2024-07-03 14:35:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumVerifier | own contract | OstiumVerifier (selected) `0xccf233920e8cc9415ecf503b992881d69b6c47ad` — deployed 2024-08-26 19:19:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | TradingCallbacksLib | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | TradingLib | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 86 own (64 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 37 unmatched
- Matched-own operational status: 86 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: address=7, unique_name=72

Fork inheritance lineage and inherited audits are included when available.
