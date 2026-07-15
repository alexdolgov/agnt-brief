# Agentic Audit Brief: Rezerve

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Rezerve (`rezerve`)
- Website: [https://rezerve.money](https://rezerve.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, hyperliquid, sonic
- Contract surface: 35 unique implementations (36 raw deployments)
- Coverage basis: 1/27 confirmed own live verified implementations (3.7%); conservative 3.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,425,835.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Rezerve. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 38 contract row(s) across arbitrum, base, ethereum, hyperliquid, sonic. Structural roles: 22 unclassified, 11 supporting, 5 core. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 38
- Structural roles: unclassified (22), supporting (11), core (5)
- Contract kinds: contract (36), unclassified (2)
- Detected standards: ownable (8), pausable (4), erc20 (3), erc20permit (3), accesscontrol (2), erc165 (2)
- Frameworks: openzeppelin (14), openzeppelin-upgradeable (11), layerzero (7)
- Upgradeable-pattern rows: 12

## Fork Analysis

0 of 35 contracts are derived from known codebases. 35 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000003...ac1ba6`, chain 1)
- UnnamedContract (`0x6969c3...6265b1`, chain 1)
- UnnamedContract (`0xb33f4b...0d52cb`, chain 1)
- UnnamedContract (`0xb44444...cbd1f5`, chain 999)
- UnnamedContract (`0xb33f4b...0d52cb`, chain 8453)
- UnnamedContract (`0xb44444...cbd1f5`, chain 8453)
- UnnamedContract (`0xb33f4b...0d52cb`, chain 42161)
- UnnamedContract (`0xb44444...cbd1f5`, chain 42161)
- AppAuthority (`0x43a38a...45417d`, chain 1)
- AppAuthority (`0xf06b93...5ef309`, chain 146)
- AppProxy (`0x86143b...a5e1e9`, chain 1)
- AppProxy (`0xb1fd2d...88a2f8`, chain 1)
- AppProxy (`0xc09eff...096ee7`, chain 1)
- AppProxy (`0xcd43c9...e46399`, chain 1)
- AppProxy (`0xd80bca...dd3622`, chain 1)
- AppProxy (`0xe148d8...a55f81`, chain 1)
- AppProxy (`0xfad35a...10263c`, chain 1)
- AppProxy (`0x67a298...5f53cb`, chain 146)
- AppProxy (`0xa25f6b...2e83fa`, chain 146)
- AppProxy (`0xa5d26e...e37da0`, chain 146)
- AppProxy (`0xe22e10...0efc85`, chain 146)
- AppStakingMigrator (`0xe7a577...fab1aa`, chain 1)
- BridgeL1 (`0x507427...bf99df`, chain 1)
- BridgeL2 (`0xa48b92...a2a036`, chain 146)
- LoyaltyList (`0x9ec2dd...7dcd2e`, chain 1)
- lstRZROFTAdapter (`0xd3e536...d74652`, chain 1)
- ProxyAdmin (`0x33812b...e08982`, chain 1)
- RZR (`0xb44444...cbd1f5`, chain 1)
- RZR (`0xb44444...cbd1f5`, chain 146)
- RZROFTAdapter (`0xe97493...f0b53c`, chain 1)
- RZROFTAdapter (`0x6419f0...bb2f3a`, chain 146)
- sRZR (`0x5de77c...f70aaf`, chain 1)
- Staking4626L2 (`0x8b5ecb...51dab9`, chain 146)
- StakingDistributionLogic (`0x3e4df7...b6e802`, chain 1)
- YieldLogic (`0x739f49...dc1b2c`, chain 1)

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 38 (28 live, 10 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 35/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/27 (3.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 35 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Deployed-live implementations: 35 of 35 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/27
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 35
- Raw deployments: 36
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 3.7% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AppTreasury | unknown | project_anchor | own_supporting | 1 | sonic | unit-391746 | `0xe22e10...0efc85` | ✅ Audited |

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AppAuthority | governance | project_anchor | own_supporting | 0 | ethereum | unit-391716 | `0x43a38a...45417d` | ⚠️ Unaudited |
| AppAuthority | governance | project_anchor | own_supporting | 0 | sonic | unit-391731 | `0xf06b93...5ef309` | ⚠️ Unaudited |
| AppBurner | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391740 | `0xc09eff...096ee7` | ⚠️ Unaudited |
| AppConvertibles | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391742 | `0x86143b...a5e1e9` | ⚠️ Unaudited |
| AppOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391739 | `0xd80bca...dd3622` | ⚠️ Unaudited |
| AppOracle | unknown | project_anchor | own_supporting | 1 | sonic | unit-391744 | `0xa5d26e...e37da0` | ⚠️ Unaudited |
| AppReferrals | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391737 | `0xb1fd2d...88a2f8` | ⚠️ Unaudited |
| AppReferrals | unknown | project_anchor | own_supporting | 1 | sonic | unit-391747 | `0xa25f6b...2e83fa` | ⚠️ Unaudited |
| AppStaking | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391743 | `0xcd43c9...e46399` | ⚠️ Unaudited |
| AppStakingMigrator | periphery | project_anchor | own_supporting | 0 | ethereum | unit-391725 | `0xe7a577...fab1aa` | ⚠️ Unaudited |
| BridgeL1 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-391717 | `0x507427...bf99df` | ⚠️ Unaudited |
| BridgeL2 | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-391728 | `0xa48b92...a2a036` | ⚠️ Unaudited |
| LoyaltyList | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391721 | `0x9ec2dd...7dcd2e` | ⚠️ Unaudited |
| lstRZROFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-391724 | `0xd3e536...d74652` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-391714 | `0x33812b...e08982` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | sonic | unit-391730 | `0xd9af86...bed0a2` | ⚠️ Unaudited |
| RebaseController | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391738 | `0xfad35a...10263c` | ⚠️ Unaudited |
| RZR | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391723 | `0xb44444...cbd1f5` | ⚠️ Unaudited |
| RZR | unknown | project_anchor | own_supporting | 0 | sonic | unit-391729 | `0xb44444...cbd1f5` | ⚠️ Unaudited |
| RZROFTAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-391726 | `0xe97493...f0b53c` | ⚠️ Unaudited |
| RZROFTAdapter | adapter | project_anchor | own_supporting | 0 | sonic | unit-391727 | `0x6419f0...bb2f3a` | ⚠️ Unaudited |
| sRZR | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391718 | `0x5de77c...f70aaf` | ⚠️ Unaudited |
| Staking4626L2 | unknown | project_anchor | own_supporting | 1 | sonic | unit-391745 | 2 deployments: sonic `0x67a298...5f53cb`; sonic `0x8b5ecb...51dab9` | ⚠️ Unaudited |
| StakingDistributionLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391715 | `0x3e4df7...b6e802` | ⚠️ Unaudited |
| TotalReservesOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-391741 | `0xe148d8...a55f81` | ⚠️ Unaudited |
| YieldLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391720 | `0x739f49...dc1b2c` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391713 | `0x000003...ac1ba6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391719 | `0x6969c3...6265b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-391722 | `0xb33f4b...0d52cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-391736 | `0xb44444...cbd1f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391734 | `0xb33f4b...0d52cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-391735 | `0xb44444...cbd1f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391732 | `0xb33f4b...0d52cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-391733 | `0xb44444...cbd1f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-06-21-halborn.pdf](https://github.com/rezervemoney/code/blob/main/audits/2025-06-21-halborn.pdf) | Halborn | Audit | 2025-06 | aging | Direct | n/a | matched | 1 | 1 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2808] 2025-06-21-halborn.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-06-21-halborn.pdf | AppTreasury | own proxy deployment | AppProxy (proxy) (selected) `0xe22e10...0efc85` — deployed 2025-06-12 13:40:27+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x43a38a...45417d` | AppAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xf06b93...5ef309` | AppAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc09eff...096ee7` | AppBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x86143b...a5e1e9` | AppConvertibles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd80bca...dd3622` | AppOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa5d26e...e37da0` | AppOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb1fd2d...88a2f8` | AppReferrals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa25f6b...2e83fa` | AppReferrals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcd43c9...e46399` | AppStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe7a577...fab1aa` | AppStakingMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x507427...bf99df` | BridgeL1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa48b92...a2a036` | BridgeL2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9ec2dd...7dcd2e` | LoyaltyList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd3e536...d74652` | lstRZROFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfad35a...10263c` | RebaseController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb44444...cbd1f5` | RZR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb44444...cbd1f5` | RZR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe97493...f0b53c` | RZROFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x6419f0...bb2f3a` | RZROFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5de77c...f70aaf` | sRZR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x67a298...5f53cb` | Staking4626L2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3e4df7...b6e802` | StakingDistributionLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe148d8...a55f81` | TotalReservesOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x739f49...dc1b2c` | YieldLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
