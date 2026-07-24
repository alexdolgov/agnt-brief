# Agentic Audit Brief: Anvil

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

⚠️ Lifecycle status: DECLINING - TVL dropped 61.5% over 90 days

## Project Overview

- Project: Anvil (`anvil`)
- Website: [https://anvil.xyz/](https://anvil.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 17 unique implementations (28 raw deployments)
- Coverage basis: 7/12 confirmed own live verified implementations (58.3%); conservative 58.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $9,637,760.30
- On-chain TVL (included contracts): $520,122.95
- TVL by chain: Ethereum $520,122.95

## Project Description

This brief describes the observed EVM deployment and audit surface for Anvil. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across ethereum. Structural roles: 7 unclassified, 4 supporting, 3 core, 2 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: unclassified (7), supporting (4), core (3), infra (2)
- Contract kinds: contract (16)
- Detected standards: ownable (6), ownable2step (4), erc165 (3), accesscontrol (2), erc1967proxy (1), erc20 (1)
- Frameworks: openzeppelin (9)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x24573b112456d3a96c97fb460b436e8ca870e27e`, chain 1)
- UnnamedContract (`0x716321565e1eaba200789e14ad92c9da40b14589`, chain 1)
- Anvil (`0xaeeaa594e7dc112d67b8547fe9767a02c15b5597`, chain 1)
- AnvilTimelock (`0x4eeb7c5bb75fc0dbea4826bf568fd577f62cad21`, chain 1)
- CollateralVault (`0x5d2725fde4d7aa3388da4519ac0449cc031d675f`, chain 1)
- PassThroughLiquidator (`0x9ae1caa5ce6fa330fce98315159bcd433b1342b8`, chain 1)
- Permit2PassThroughLiquidator (`0x8aa57e442e4562c80fddad1b71adf0ba75e2eb4c`, chain 1)
- ProxyAdmin (`0x12225bb169b38ef8849dd4f5cc466ae5996e341d`, chain 1)
- TimeBasedCollateralPool (`0xcc437a7bb14f07de09b0f4438df007c8f64cf29f`, chain 1)
- UpgradeableBeacon (`0x1f00d6f7c18a8edf4f8bb4ead8a898abdd9c9e14`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 16; live-surface rows included: 16 (14 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/15 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/12 (58.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 13 of 17 unique; 4 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 7/16
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 17
- Raw deployments: 28
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 58.3% (OpenZeppelin, Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 7 | 43.8% | 2025-10 |
| Trail of Bits | Tier 1 | 2 | 12.5% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CollateralVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379042 | `0x5d2725fde4d7aa3388da4519ac0449cc031d675f` | ✅ Audited |
| Anvil | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379040 | `0x2ca9242c1810029efed539f1c60d68b63ad01bfc` | ✅ Audited |
| Anvil | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379046 | `0xaeeaa594e7dc112d67b8547fe9767a02c15b5597` | ✅ Audited |
| AnvilGovernorDelegate | governance | project_anchor | own_core | 1 | ethereum | unit-379051 | 9 deployments: ethereum `0x00e83d0698faf01bd080a4dd2927e6ab7c4874c9`; ethereum `0x081fe8bf28e07232d25b58811c4cad2ebdaed8d9`; ethereum `0x09c7ec11c51e61997274c5c445c9f4ccf6bc200f`; ethereum `0x123641b8a2063217a96ef88bf608931a43b49f49`; ethereum `0x33148ea4cc49fc351a2a9fa729f75134cd2a3ba1`; ethereum `0x65eed5a31d70d5eb0398dbe8e805ffeb6199f602`; ethereum `0xa57365263ff137c9e93818c0f04425b66ff2b5e4`; ethereum `0xbb1470b2a2dcce0cb91ac91d9d0a3ceec9187aa0`; ethereum `0xfd883f549ee20eb69067102fd93a0687744c5b8f` | ✅ Audited |
| AnvilTimelock | governance | project_anchor | own_supporting | 0 | ethereum | unit-379041 | `0x4eeb7c5bb75fc0dbea4826bf568fd577f62cad21` | ✅ Audited |
| LetterOfCredit | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379052 | 2 deployments: ethereum `0x14db9a91933ad9433e1a0db04d08e5d9ef7c4808`; ethereum `0x24573b112456d3a96c97fb460b436e8ca870e27e` | ✅ Audited |
| PythPriceOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379048 | `0xc6f3405c861fa0dca04ec4ba59bc189d1d56ee05` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnvilGovernorDelegate | governance | project_anchor | own_supporting | 0 | ethereum | unit-379050 | `0xfe1118ce38818ea3c167929eacb6310cdc42a361` | ⚠️ Unaudited |
| Claim | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-379049 | `0xefd194d4ff955e8958d132319f31d2ab9f7e29ac` | ⚠️ Unaudited |
| LetterOfCredit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a3251d83b4ed97d8e1d8451613d7dd9b4f42961`; ethereum `0x750ab78b4fe51292d1f0053845aace3ea959d5ad` | ⚠️ Unaudited |
| PassThroughLiquidator | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-379045 | `0x9ae1caa5ce6fa330fce98315159bcd433b1342b8` | ⚠️ Unaudited |
| Permit2PassThroughLiquidator | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-379044 | `0x8aa57e442e4562c80fddad1b71adf0ba75e2eb4c` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-379039 | `0x12225bb169b38ef8849dd4f5cc466ae5996e341d` | ⚠️ Unaudited |
| Reward | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-379047 | `0xc6a06f2d000b8cfdd392c4d6ab715a9ff1da22da` | ⚠️ Unaudited |
| TimeBasedCollateralPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379053 | 2 deployments: ethereum `0x1f00d6f7c18a8edf4f8bb4ead8a898abdd9c9e14`; ethereum `0xcc437a7bb14f07de09b0f4438df007c8f64cf29f` | ⚠️ Unaudited |
| TimeBasedCollateralPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd042c267758eddf34b481e1f539d637e41db3e5a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379043 | `0x716321565e1eaba200789e14ad92c9da40b14589` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 19
- Live contracts: 9
- Unknown liveness contracts: 10
- Source-verified contracts: 19
- Currently scope-matched contracts retained as-is: 5
- Classification counts: currently scope matched=5, candidate review=11, exact address book overlap=2, source verified unclassified=1

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | Anvil<br>`0x2ca9242c1810029efed539f1c60d68b63ad01bfc` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xa4f4508525f4b9011f8a9c50e901c280c4f01c9d` |
| currently scope matched | AnvilGovernorDelegator<br>`0x00e83d0698faf01bd080a4dd2927e6ab7c4874c9` | project_anchor | governance | live | verified | review: no_fresh_structural_match | `0xa4f4508525f4b9011f8a9c50e901c280c4f01c9d` |
| currently scope matched | AnvilTimelock<br>`0x4eeb7c5bb75fc0dbea4826bf568fd577f62cad21` | project_anchor | governance | live | verified | n/a | `0xa4f4508525f4b9011f8a9c50e901c280c4f01c9d` |
| currently scope matched | PythPriceOracle<br>`0xc6f3405c861fa0dca04ec4ba59bc189d1d56ee05` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x554f15665931d61d5c66f235247deffd3bb7d851` |
| currently scope matched | TransparentUpgradeableProxy<br>`0x14db9a91933ad9433e1a0db04d08e5d9ef7c4808` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x554f15665931d61d5c66f235247deffd3bb7d851` |
| candidate review | AnvilGovernorDelegate<br>`0x081fe8bf28e07232d25b58811c4cad2ebdaed8d9` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xa4f4508525f4b9011f8a9c50e901c280c4f01c9d` |
| candidate review | AnvilGovernorDelegate<br>`0x09c7ec11c51e61997274c5c445c9f4ccf6bc200f` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xa4f4508525f4b9011f8a9c50e901c280c4f01c9d` |
| candidate review | AnvilGovernorDelegate<br>`0x123641b8a2063217a96ef88bf608931a43b49f49` | retained_scope_excluded_inventory | governance | live | verified | review: no_fresh_structural_match | `0xa4f4508525f4b9011f8a9c50e901c280c4f01c9d` |
| candidate review | AnvilGovernorDelegate<br>`0x33148ea4cc49fc351a2a9fa729f75134cd2a3ba1` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xa4f4508525f4b9011f8a9c50e901c280c4f01c9d` |
| candidate review | AnvilGovernorDelegate<br>`0x65eed5a31d70d5eb0398dbe8e805ffeb6199f602` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xa4f4508525f4b9011f8a9c50e901c280c4f01c9d` |
| candidate review | AnvilGovernorDelegate<br>`0xa57365263ff137c9e93818c0f04425b66ff2b5e4` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xa4f4508525f4b9011f8a9c50e901c280c4f01c9d` |
| candidate review | AnvilGovernorDelegate<br>`0xbb1470b2a2dcce0cb91ac91d9d0a3ceec9187aa0` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xa4f4508525f4b9011f8a9c50e901c280c4f01c9d` |
| candidate review | AnvilGovernorDelegate<br>`0xfd883f549ee20eb69067102fd93a0687744c5b8f` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0xa4f4508525f4b9011f8a9c50e901c280c4f01c9d` |
| candidate review | AnvilGovernorDelegate<br>`0xfe1118ce38818ea3c167929eacb6310cdc42a361` | project_anchor | governance | live | verified | review: no_fresh_structural_match | `0xa4f4508525f4b9011f8a9c50e901c280c4f01c9d` |
| candidate review | LetterOfCredit<br>`0x1a3251d83b4ed97d8e1d8451613d7dd9b4f42961` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x554f15665931d61d5c66f235247deffd3bb7d851` |
| candidate review | LetterOfCredit<br>`0x750ab78b4fe51292d1f0053845aace3ea959d5ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x554f15665931d61d5c66f235247deffd3bb7d851` |
| exact address book overlap | TimeBasedCollateralPool<br>`0xcc437a7bb14f07de09b0f4438df007c8f64cf29f` | project_anchor | unknown | live | verified | n/a | `0x554f15665931d61d5c66f235247deffd3bb7d851` |
| exact address book overlap | UpgradeableBeacon<br>`0x1f00d6f7c18a8edf4f8bb4ead8a898abdd9c9e14` | project_anchor | unknown | live | verified | n/a | `0x554f15665931d61d5c66f235247deffd3bb7d851` |
| source verified unclassified | TimeBasedCollateralPool<br>`0xd042c267758eddf34b481e1f539d637e41db3e5a` | non_address_book | unknown | unknown | verified | n/a | `0x554f15665931d61d5c66f235247deffd3bb7d851` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.openzeppelin.com/news/anvil-protocol-diff-audit](https://www.openzeppelin.com/news/anvil-protocol-diff-audit) | OpenZeppelin | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [www.openzeppelin.com/news/anvil-protocol-audit](https://www.openzeppelin.com/news/anvil-protocol-audit) | OpenZeppelin | Audit | 2024-10 | aging | Direct | contract_name | matched | 4 | 1 | 0 | 11 | high |
| [2023-12-acronym-foundation-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-12-acronym-foundation-securityreview.pdf) | Trail of Bits | Audit | 2023-12 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 2 | high |
| [www.openzeppelin.com/news/anvil-audit](https://www.openzeppelin.com/news/anvil-audit) | OpenZeppelin | Audit | 2024-10 | aging | Direct | contract_name | matched | 2 | 1 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1947] www.openzeppelin.com/news/anvil-protocol-diff-audit — matched: Scope explicitly lists two files: Anvil.sol and AnvilGovernorDelegate.sol. Audit date is October 1, 2025 from the header.
- [1948] www.openzeppelin.com/news/anvil-protocol-audit — matched: Extracted 15 contract names from the scope section listing files in the contracts/ and contracts/governance/ and contracts/interfaces/ directories. Audit date from the title: 'October 11, 2024'.
- [1949] 2023-12-acronym-foundation-securityreview.pdf — matched: Extracted contracts from Project Targets and Project Coverage sections. Pricing is a library used by LetterOfCredit.
- [1950] www.openzeppelin.com/news/anvil-audit — matched: Scope section explicitly lists contracts and interfaces under contracts/ directory.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.openzeppelin.com/news/anvil-protocol-diff-audit | Anvil | own contract | Anvil (selected) `0xaeeaa594e7dc112d67b8547fe9767a02c15b5597` — deployed 2025-10-03 01:52:35+03 — liveness: live (current_address_book_code)<br>Anvil (alternative) `0x2ca9242c1810029efed539f1c60d68b63ad01bfc` — deployed 2024-06-04 00:43:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-03 was 2d from audit; next candidate 484d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/anvil-protocol-diff-audit | AnvilGovernorDelegate | ambiguous — not counted | AnvilGovernorDelegate (alternative) `0xfe1118ce38818ea3c167929eacb6310cdc42a361` — deployed 2024-06-04 00:40:47+03 — liveness: live (current_address_book_code)<br>AnvilGovernorDelegator (proxy) (alternative) `0x00e83d0698faf01bd080a4dd2927e6ab7c4874c9` — deployed 2024-06-04 01:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.openzeppelin.com/news/anvil-protocol-audit | CollateralVault | own contract | CollateralVault (selected) `0x5d2725fde4d7aa3388da4519ac0449cc031d675f` — deployed 2024-08-19 17:39:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/anvil-protocol-audit | Pricing | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-protocol-audit | TimeBasedCollateralPool | ambiguous — not counted | TimeBasedCollateralPool (alternative) `0xcc437a7bb14f07de09b0f4438df007c8f64cf29f` — deployed 2024-11-25 18:41:59+03 — liveness: live (current_address_book_code)<br>UpgradeableBeacon (proxy) (alternative) `0x1f00d6f7c18a8edf4f8bb4ead8a898abdd9c9e14` — deployed 2024-08-19 17:40:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.openzeppelin.com/news/anvil-protocol-audit | Anvil | own contract | Anvil (alternative) `0xaeeaa594e7dc112d67b8547fe9767a02c15b5597` — deployed 2025-10-03 01:52:35+03 — liveness: live (current_address_book_code)<br>Anvil (selected) `0x2ca9242c1810029efed539f1c60d68b63ad01bfc` — deployed 2024-06-04 00:43:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-06-04 was 129d from audit; next candidate 357d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/anvil-protocol-audit | AnvilERC20Votes | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-protocol-audit | AnvilGovernorDelegate | ambiguous — not counted | AnvilGovernorDelegate (alternative) `0xfe1118ce38818ea3c167929eacb6310cdc42a361` — deployed 2024-06-04 00:40:47+03 — liveness: live (current_address_book_code)<br>AnvilGovernorDelegator (proxy) (alternative) `0x00e83d0698faf01bd080a4dd2927e6ab7c4874c9` — deployed 2024-06-04 01:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.openzeppelin.com/news/anvil-protocol-audit | AnvilGovernorDelegator | own proxy deployment | AnvilGovernorDelegator (proxy) (selected) `0x00e83d0698faf01bd080a4dd2927e6ab7c4874c9` — deployed 2024-06-04 01:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/anvil-protocol-audit | AnvilTimelock | own contract | AnvilTimelock (selected) `0x4eeb7c5bb75fc0dbea4826bf568fd577f62cad21` — deployed 2024-06-04 01:00:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/anvil-protocol-audit | AnvilVotes | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-protocol-audit | Claim | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-protocol-audit | IClaimable | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-protocol-audit | ICollateral | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-protocol-audit | ICollateralDepositTarget | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-protocol-audit | ICollateralPool | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-protocol-audit | ITimeBasedCollateralPool | unmatched — not counted | — | listed in scope | no |
| 2023-12-acronym-foundation-securityreview.pdf | Collateral | unmatched — not counted | — | listed in scope and detailed findings | no |
| 2023-12-acronym-foundation-securityreview.pdf | LetterOfCredit | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x14db9a91933ad9433e1a0db04d08e5d9ef7c4808` — deployed 2024-11-25 18:41:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-12-acronym-foundation-securityreview.pdf | Pricing | unmatched — not counted | — | referenced in findings as a library | no |
| 2023-12-acronym-foundation-securityreview.pdf | PythPriceOracle | own contract | PythPriceOracle (selected) `0xc6f3405c861fa0dca04ec4ba59bc189d1d56ee05` — deployed 2024-08-19 17:39:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/anvil-audit | Collateral | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-audit | LetterOfCredit | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x14db9a91933ad9433e1a0db04d08e5d9ef7c4808` — deployed 2024-11-25 18:41:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/anvil-audit | Pricing | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-audit | PythPriceOracle | own contract | PythPriceOracle (selected) `0xc6f3405c861fa0dca04ec4ba59bc189d1d56ee05` — deployed 2024-08-19 17:39:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/anvil-audit | ICollateral | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-audit | ICollateralDepositTarget | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-audit | ILiquidatable | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-audit | ILiquidator | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-audit | IPriceOracle | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xfe1118ce38818ea3c167929eacb6310cdc42a361` | AnvilGovernorDelegate | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9ae1caa5ce6fa330fce98315159bcd433b1342b8` | PassThroughLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f00d6f7c18a8edf4f8bb4ead8a898abdd9c9e14` | TimeBasedCollateralPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 18 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: temporal_name=2, unique_name=7

Fork inheritance lineage and inherited audits are included when available.
