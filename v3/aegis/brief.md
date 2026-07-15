# Agentic Audit Brief: Aegis

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Aegis (`aegis`)
- Website: [https://aegis.im/](https://aegis.im/)
- Lifecycle: active (Tier 0, 19.4% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche-fuji, bsc, bsc-testnet, chain-1337, ethereum, optimism-sepolia, sepolia
- Contract surface: 78 unique implementations (106 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $35,767,707.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Aegis. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 23 contract row(s) across avalanche-fuji, bsc, bsc-testnet, chain-1337, ethereum, optimism-sepolia, sepolia. Structural roles: 8 core, 7 supporting, 6 unclassified, 2 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 23
- Structural roles: core (8), supporting (7), unclassified (6), infra (2)
- Contract kinds: contract (23)
- Detected standards: ownable (9), erc165 (7), accesscontrol (5), ownable2step (5), erc1967proxy (2), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (16), chainlink (4), layerzero (3)
- Upgradeable-pattern rows: 2

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 23; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 63 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/33
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 78
- Raw deployments: 106
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AegisConfig | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225682 | 2 deployments: ethereum `0x90ccf2...f1db00`; bsc `0xb9f1e8...4ca9da` | ⚠️ Unaudited |
| AegisMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x03a346...93dea7`; ethereum `0x90ad8f...0b6f77`; ethereum `0x9e2707...16b87f`; ethereum `0xa30644...bd815b`; ethereum `0xad8fe6...b5cda5`; ethereum `0xb341d7...153c94`; ethereum `0xe91710...f875c2`; bsc `0x39df2d...a2e141`; bsc `0x7c3f89...579134` | ⚠️ Unaudited |
| AegisMinting | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225685 | `0xc4df68...820fc2` | ⚠️ Unaudited |
| AegisMinting | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-225688 | `0x02bf8f...ce65cf` | ⚠️ Unaudited |
| AegisMintingJUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7438a6...d7273e`; ethereum `0xf21a16...888a5d` | ⚠️ Unaudited |
| AegisMintingJUSD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225684 | `0xbb0f32...09b520` | ⚠️ Unaudited |
| AegisOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225679 | `0x2b4ad1...041aec` | ⚠️ Unaudited |
| AegisOracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-225691 | `0x588fd0...d8cf15` | ⚠️ Unaudited |
| AegisOracleJUSD | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225687 | `0xfa449d...17e0e7` | ⚠️ Unaudited |
| AegisRewards | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225681 | `0x8adcfa...ddeafd` | ⚠️ Unaudited |
| AegisRewards | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-225693 | `0x93efaa...e5b75e` | ⚠️ Unaudited |
| AegisRewardsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8340f5...12eebd`; bsc `0xd859e9...21debd` | ⚠️ Unaudited |
| AegisRewardsV2JUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6647c5...6758b7` | ⚠️ Unaudited |
| FeedRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-225689 | `0x4274cd...a8da0a` | ⚠️ Unaudited |
| JUSD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225686 | `0xc86168...9e4900` | ⚠️ Unaudited |
| JUSDMintBurnOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70d4c4...a11f52` | ⚠️ Unaudited |
| sJUSD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-225696 | 2 deployments: ethereum `0x4aa894...90bdb3`; ethereum `0x4ccd1a...947e81` | ⚠️ Unaudited |
| sJUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x616e4d...2ab792`; ethereum `0xa7f1de...152474` | ⚠️ Unaudited |
| sJUSDOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8edd6a...84ce0f` | ⚠️ Unaudited |
| sJUSDSilo | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225678 | `0x22dace...688d9a` | ⚠️ Unaudited |
| sYUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x180da2...4e1997`; ethereum `0x29dd50...1a9b63`; ethereum `0x4aa42b...ed735e`; ethereum `0x7c9428...32fd69`; ethereum `0xd2188c...27d08e`; ethereum `0xf07781...9ff9f7`; bsc `0x29dd50...1a9b63`; bsc `0x738338...976bb7`; bsc `0x7de450...89bbb5`; bsc `0xc48ea8...9382ec`; bsc `0xe13d56...faa55d`; bsc `0xf07781...9ff9f7` | ⚠️ Unaudited |
| sYUSD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-225697 | 2 deployments: ethereum `0xb0c63b...2676fe`; ethereum `0xfe0ccc...a4cb64` | ⚠️ Unaudited |
| sYUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x24db05...f93af2`; bsc `0x42940c...65415e` | ⚠️ Unaudited |
| sYUSDOFT | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-225692 | `0x85636b...f2691e` | ⚠️ Unaudited |
| sYUSDOFTAdapter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225677 | `0x1a7cde...0b41fc` | ⚠️ Unaudited |
| sYUSDV1OptOut | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2d701a...5ea7f6`; ethereum `0xec8430...32408a` | ⚠️ Unaudited |
| sYUSDV1OptOut | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91de89...b23a4c` | ⚠️ Unaudited |
| YUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2332e3...646cf9` | ⚠️ Unaudited |
| YUSD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225680 | `0x4274cd...a8da0a` | ⚠️ Unaudited |
| YUSD | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-225694 | `0xab3dbc...22c61f` | ⚠️ Unaudited |
| YUSDMintBurnOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7552d1...9b82a4`; bsc `0xd2188c...27d08e` | ⚠️ Unaudited |
| YUSDMintBurnOFTAdapter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-225683 | `0xaf12b0...143565` | ⚠️ Unaudited |
| YUSDMintBurnOFTAdapter | adapter | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-225690 | `0x539e46...e602e3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x399b1c...45cd4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab3dbc...22c61f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x061dd9...13e81d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x094d11...418871` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x2c87c9...c71d38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x306629...c054d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x4ce656...3a0fc0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x50193f...873290` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x626fa9...7a2105` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x6edce6...72f10f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x7a94fd...cb358e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x7f74f3...561ff7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x7ffef8...07f0e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0xa02b9a...6c5dcc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0xa3a46d...bdbd49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0xbe52ac...c075a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0xefae0b...95e61e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-1337 | n/a | `0x5fbdb2...180aa3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0f87d4...e2a104` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x1dae7e...e32b29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x6edce6...72f10f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xef300b...2d1e67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1117db...dbb0aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1dae7e...e32b29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1fe05c...dc727a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x214a8e...0bbc5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x276049...b92e20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2c44fb...7a1f21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2c87c9...c71d38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x626fa9...7a2105` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x694aa1...325306` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x6edce6...72f10f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x6ffb6c...480c18` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7a94fd...cb358e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7ffef8...07f0e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa02b9a...6c5dcc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa8d852...384eda` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xaebcb9...2f48f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xc832f4...6ea406` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xdf21a3...3790b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xe70e53...6b7e79` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xed24fc...0f12ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xf7b978...e4ce6c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x6edce6...72f10f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0xfa6583...865f53` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [getfailsafe.com/aegis-jusd-smart-contract-audit](https://getfailsafe.com/aegis-jusd-smart-contract-audit) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |
| [Aegis-FailSafe-Smart-Contract-Audit-Report.pdf](https://getfailsafe.com/pdfs/Aegis-FailSafe-Smart-Contract-Audit-Report.pdf) | FailSafe | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20636] getfailsafe.com/aegis-jusd-smart-contract-audit — no match: No explicit scope section or file listing found. Extracted contract names from findings and descriptions. Audit date not found.
- [20637] Aegis-FailSafe-Smart-Contract-Audit-Report.pdf — no match: All contracts listed in the 'In-scope' section of the report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| getfailsafe.com/aegis-jusd-smart-contract-audit | JUSD | unmatched — not counted | — | mentioned as token contract with blacklist checks | no |
| getfailsafe.com/aegis-jusd-smart-contract-audit | YUSD | unmatched — not counted | — | mentioned as token contract with blacklist checks | no |
| getfailsafe.com/aegis-jusd-smart-contract-audit | JUSDMintBurnOFTAdapter | unmatched — not counted | — | explicitly named in finding 3 | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisChainlinkOracleV2 | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisChainlinkOracleV3 | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisConfig | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisMinting | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisMintingJUSD | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisOracle | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisOracleJUSD | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisRewards | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | AegisRewardsManual | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | JUSD | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | JUSDMintBurnOFTAdapter | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | JUSDOFT | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | TimelockController | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | YUSD | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | YUSDMintBurnOFTAdapter | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | YUSDOFT | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | ClaimRewardsLib | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | OrderLib | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | sJUSD | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | sJUSDOFT | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | sJUSDOFTAdapter | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | sJUSDSilo | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | sYUSD | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | sYUSDOFT | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | sYUSDOFTAdapter | unmatched — not counted | — | listed in scope | no |
| Aegis-FailSafe-Smart-Contract-Audit-Report.pdf | sYUSDSilo | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 29 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [20636] getfailsafe.com/aegis-jusd-smart-contract-audit
- [20637] Aegis-FailSafe-Smart-Contract-Audit-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
