# Agentic Audit Brief: Ostium

## Export Authority

- Production state: **published scope**
- Raw selected rows: 79 across 7 audit(s)
- Eligible audit results: 7 (7 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Ostium (`ostium`)
- Website: [https://www.ostium.io/](https://www.ostium.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia
- Contract surface: 32 unique implementations (32 raw deployments)
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

- OstiumLockedDepositNft (`0xb4f112...31c8d3`, chain 42161)
- OstiumRegistry (`0x799a13...9608d2`, chain 42161)
- TransparentUpgradeableProxy (`0x20d419...e27f98`, chain 42161)
- TransparentUpgradeableProxy (`0x260e34...577823`, chain 42161)
- TransparentUpgradeableProxy (`0x389024...c9d66c`, chain 42161)
- TransparentUpgradeableProxy (`0x52b2a7...b77f0c`, chain 42161)
- TransparentUpgradeableProxy (`0x6d0ba1...702411`, chain 42161)
- TransparentUpgradeableProxy (`0x959da1...f57324`, chain 42161)
- TransparentUpgradeableProxy (`0xccd589...3d66e7`, chain 42161)
- TransparentUpgradeableProxy (`0xe607ac...d1858c`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/33 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 14/14 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 18 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Deployed-live implementations: 14 of 32 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 14/14
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 32
- Raw deployments: 32
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
| Pashov Audit Group | Tier 2 | 14 | 100.0% | 2026-01 |
| Zellic | Tier 2 | 13 | 92.9% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OstiumLockedDepositNft | token | project_anchor | own_supporting | 0 | arbitrum | unit-390467 | `0xb4f112...31c8d3` | ✅ Audited |
| OstiumOpenPnl | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-390489 | `0xe607ac...d1858c` | ✅ Audited |
| OstiumPairInfos | periphery | project_anchor | own_supporting | 1 | arbitrum | unit-390494 | `0x389024...c9d66c` | ✅ Audited |
| OstiumPairsStorage | registry | project_anchor | own_supporting | 1 | arbitrum | unit-390488 | `0x260e34...577823` | ✅ Audited |
| OstiumPriceRouter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-390465 | `0x4b0c3c...441ad7` | ✅ Audited |
| OstiumPriceUpKeep | operational_periphery | project_anchor | own_supporting | 1 | arbitrum | unit-390493 | `0x52b2a7...b77f0c` | ✅ Audited |
| OstiumRegistry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-390466 | `0x799a13...9608d2` | ✅ Audited |
| OstiumTradesUpKeep | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-390490 | `0x959da1...f57324` | ✅ Audited |
| OstiumTrading | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-390491 | `0x6d0ba1...702411` | ✅ Audited |
| OstiumTradingCallbacks | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-390492 | `0x7720fc...9742a9` | ✅ Audited |
| OstiumTradingStorage | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-390496 | `0xccd589...3d66e7` | ✅ Audited |
| OstiumVault | core_logic | project_anchor | own_supporting | 1 | arbitrum | unit-390495 | `0x20d419...e27f98` | ✅ Audited |
| OstiumVerifier | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-390469 | `0xccf233...6c47ad` | ✅ Audited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-390464 | `0x083f97...1f4025` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390470 | `0x0b9f52...ef88b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390471 | `0x27db8b...e3e154` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390472 | `0x297775...b0a1e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390473 | `0x2a9b9c...a95afe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390474 | `0x2fbf52...cd04d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390475 | `0x30da14...13d3aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390476 | `0x52c8c2...6bac46` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390477 | `0x5d3af2...79b328` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390478 | `0x81e252...2473d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390479 | `0x83dc7c...4bd814` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390480 | `0x9404a0...416e4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390481 | `0xab5583...5c665c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390482 | `0xad42c5...2b5d46` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390483 | `0xbc7b65...83acbc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390484 | `0xe73b11...370548` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390485 | `0xef5d3f...fa953e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390486 | `0xf86cff...0ec34a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-390487 | `0xffad1f...233445` | ❓ Unverified |

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
| audits.md | ProxyAdmin | own contract | ProxyAdmin (selected) `0x083f97...1f4025` — deployed 2024-07-03 14:35:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | Registry | own contract | OstiumRegistry (selected) `0x799a13...9608d2` — deployed 2024-07-03 14:35:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | Vault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x20d419...e27f98` — deployed 2024-07-03 14:35:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | LockedDepositNft | own contract | OstiumLockedDepositNft (selected) `0xb4f112...31c8d3` — deployed 2024-07-03 14:35:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | TradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xccd589...3d66e7` — deployed 2024-08-26 19:06:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | PairInfos | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x389024...c9d66c` — deployed 2024-08-26 19:13:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | PairsStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x260e34...577823` — deployed 2024-08-26 19:18:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | Trading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6d0ba1...702411` — deployed 2024-08-26 19:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | TradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7720fc...9742a9` — deployed 2024-08-26 19:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | OpenPnlFeed | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe607ac...d1858c` — deployed 2024-08-26 19:19:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | TradesUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x959da1...f57324` — deployed 2024-08-26 19:19:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | PriceRouter | own contract | OstiumPriceRouter (selected) `0x4b0c3c...441ad7` — deployed 2024-08-26 19:19:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | PriceUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x52b2a7...b77f0c` — deployed 2024-08-26 19:19:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | PrivatePriceUpKeep | unmatched — not counted | — | listed in mainnet contract addresses table | no |
| audits.md | Verifier | own contract | OstiumVerifier (selected) `0xccf233...6c47ad` — deployed 2024-08-26 19:19:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | OstiumVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x20d419...e27f98` — deployed 2024-07-03 14:35:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | OstiumOpenPnl | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe607ac...d1858c` — deployed 2024-08-26 19:19:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | OstiumTradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7720fc...9742a9` — deployed 2024-08-26 19:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | OstiumTrading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6d0ba1...702411` — deployed 2024-08-26 19:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | OstiumTradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xccd589...3d66e7` — deployed 2024-08-26 19:06:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | OstiumPriceRouter | own contract | OstiumPriceRouter (selected) `0x4b0c3c...441ad7` — deployed 2024-08-26 19:19:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audits.md | OstiumPairInfos | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x389024...c9d66c` — deployed 2024-08-26 19:13:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | ChainUtils | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | Delegatable | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | FixedPoint96 | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | FullMath | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumLinkUpKeep | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumLockedDepositNft | own contract | OstiumLockedDepositNft (selected) `0xb4f112...31c8d3` — deployed 2024-07-03 14:35:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumOpenPnl | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe607ac...d1858c` — deployed 2024-08-26 19:19:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumPairInfos | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x389024...c9d66c` — deployed 2024-08-26 19:13:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumPairsStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x260e34...577823` — deployed 2024-08-26 19:18:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumPriceRouter | own contract | OstiumPriceRouter (selected) `0x4b0c3c...441ad7` — deployed 2024-08-26 19:19:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumPriceUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x52b2a7...b77f0c` — deployed 2024-08-26 19:19:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumRegistry | own contract | OstiumRegistry (selected) `0x799a13...9608d2` — deployed 2024-07-03 14:35:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumTimelockManager | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumTimelockOwner | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumTradesUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x959da1...f57324` — deployed 2024-08-26 19:19:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumTrading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6d0ba1...702411` — deployed 2024-08-26 19:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumTradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7720fc...9742a9` — deployed 2024-08-26 19:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumTradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xccd589...3d66e7` — deployed 2024-08-26 19:06:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x20d419...e27f98` — deployed 2024-07-03 14:35:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | OstiumWhitelist | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | TickMath | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/aMgw1k5iR4SvbYWRcs7q/Ostium - Zellic Audit Report (1).pdf | TradeUtils | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | ChainUtils | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | Delegatable | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumLockedDepositNft | own contract | OstiumLockedDepositNft (selected) `0xb4f112...31c8d3` — deployed 2024-07-03 14:35:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumOpenPnl | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe607ac...d1858c` — deployed 2024-08-26 19:19:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumPairInfos | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x389024...c9d66c` — deployed 2024-08-26 19:13:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumPairsStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x260e34...577823` — deployed 2024-08-26 19:18:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumPriceRouter | own contract | OstiumPriceRouter (selected) `0x4b0c3c...441ad7` — deployed 2024-08-26 19:19:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumPriceUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x52b2a7...b77f0c` — deployed 2024-08-26 19:19:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumPrivatePriceUpKeep | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumRegistry | own contract | OstiumRegistry (selected) `0x799a13...9608d2` — deployed 2024-07-03 14:35:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumTimelockManager | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumTimelockOwner | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumTradesUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x959da1...f57324` — deployed 2024-08-26 19:19:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumTrading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6d0ba1...702411` — deployed 2024-08-26 19:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumTradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7720fc...9742a9` — deployed 2024-08-26 19:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumTradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xccd589...3d66e7` — deployed 2024-08-26 19:06:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x20d419...e27f98` — deployed 2024-07-03 14:35:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | OstiumVerifier | own contract | OstiumVerifier (selected) `0xccf233...6c47ad` — deployed 2024-08-26 19:19:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | TradingCallbacksLib | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/1NAt99nKJ1HesxyWjElF/Zellic Nov 25.pdf | TradingLib | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | ChainUtils | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | Delegatable | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumLinkUpKeep | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumLockedDepositNft | own contract | OstiumLockedDepositNft (selected) `0xb4f112...31c8d3` — deployed 2024-07-03 14:35:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumOpenPnl | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe607ac...d1858c` — deployed 2024-08-26 19:19:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumPairInfos | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x389024...c9d66c` — deployed 2024-08-26 19:13:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumPairsStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x260e34...577823` — deployed 2024-08-26 19:18:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumPriceRouter | own contract | OstiumPriceRouter (selected) `0x4b0c3c...441ad7` — deployed 2024-08-26 19:19:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumPriceUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x52b2a7...b77f0c` — deployed 2024-08-26 19:19:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumRegistry | own contract | OstiumRegistry (selected) `0x799a13...9608d2` — deployed 2024-07-03 14:35:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumTimelockManager | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumTimelockOwner | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumTradesUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x959da1...f57324` — deployed 2024-08-26 19:19:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumTrading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6d0ba1...702411` — deployed 2024-08-26 19:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumTradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7720fc...9742a9` — deployed 2024-08-26 19:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumTradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xccd589...3d66e7` — deployed 2024-08-26 19:06:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x20d419...e27f98` — deployed 2024-07-03 14:35:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | OstiumWhitelist | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/MpYIMzIusmebDMScUlYB/OstiumAudit.pdf | TradeUtils | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | ChainUtils | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | Delegatable | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumLockedDepositNft | own contract | OstiumLockedDepositNft (selected) `0xb4f112...31c8d3` — deployed 2024-07-03 14:35:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumOpenPnl | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe607ac...d1858c` — deployed 2024-08-26 19:19:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumPairInfos | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x389024...c9d66c` — deployed 2024-08-26 19:13:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumPairsStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x260e34...577823` — deployed 2024-08-26 19:18:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumPriceRouter | own contract | OstiumPriceRouter (selected) `0x4b0c3c...441ad7` — deployed 2024-08-26 19:19:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumPriceUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x52b2a7...b77f0c` — deployed 2024-08-26 19:19:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumPrivatePriceUpKeep | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumRegistry | own contract | OstiumRegistry (selected) `0x799a13...9608d2` — deployed 2024-07-03 14:35:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumTimelockManager | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumTimelockOwner | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumTradesUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x959da1...f57324` — deployed 2024-08-26 19:19:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumTrading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6d0ba1...702411` — deployed 2024-08-26 19:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumTradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7720fc...9742a9` — deployed 2024-08-26 19:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumTradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xccd589...3d66e7` — deployed 2024-08-26 19:06:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x20d419...e27f98` — deployed 2024-07-03 14:35:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | OstiumVerifier | own contract | OstiumVerifier (selected) `0xccf233...6c47ad` — deployed 2024-08-26 19:19:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/G0Of6YAPlrOIPs51aj16/Ostium-security-review_2025-01-21.pdf | TradingCallbacksLib | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf | Delegatable | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf | OstiumPairInfos | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x389024...c9d66c` — deployed 2024-08-26 19:13:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf | OstiumPairsStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x260e34...577823` — deployed 2024-08-26 19:18:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf | OstiumPriceUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x52b2a7...b77f0c` — deployed 2024-08-26 19:19:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf | OstiumPrivatePriceUpKeep | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf | OstiumTrading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6d0ba1...702411` — deployed 2024-08-26 19:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf | OstiumTradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7720fc...9742a9` — deployed 2024-08-26 19:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/7b08UITTgMLh1ej19d7I/Ostium-security-review_2025-04-06.pdf | TradingCallbacksLib | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumOpenPnl | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe607ac...d1858c` — deployed 2024-08-26 19:19:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumPairInfos | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x389024...c9d66c` — deployed 2024-08-26 19:13:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumPairsStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x260e34...577823` — deployed 2024-08-26 19:18:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumPriceRouter | own contract | OstiumPriceRouter (selected) `0x4b0c3c...441ad7` — deployed 2024-08-26 19:19:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumPriceUpKeep | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x52b2a7...b77f0c` — deployed 2024-08-26 19:19:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumPrivatePriceUpKeep | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumTrading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6d0ba1...702411` — deployed 2024-08-26 19:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumTradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7720fc...9742a9` — deployed 2024-08-26 19:19:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumTradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xccd589...3d66e7` — deployed 2024-08-26 19:06:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumVault | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x20d419...e27f98` — deployed 2024-07-03 14:35:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | OstiumVerifier | own contract | OstiumVerifier (selected) `0xccf233...6c47ad` — deployed 2024-08-26 19:19:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | TradingCallbacksLib | unmatched — not counted | — | — | no |
| spaces/CEDPLHGTrrpP1i2dbe3d/uploads/342r2xPX6yppDzAfPLVz/Pashov Jan 26.pdf | TradingLib | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
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
