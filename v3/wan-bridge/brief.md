# Agentic Audit Brief: Wan Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Wan Bridge (`wan-bridge`)
- Website: [https://bridge.wanchain.org](https://bridge.wanchain.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, linea, moonbeam, moonriver, opbnb, optimism, polygon, zksync-era
- Contract surface: 21 unique implementations (21 raw deployments)
- Coverage basis: 0/12 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $23,452,772.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Wan Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, linea, moonbeam, moonriver, opbnb, optimism, polygon, zksync-era. Structural roles: 8 unclassified, 7 core, 1 supporting. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: unclassified (8), core (7), supporting (1)
- Contract kinds: contract (16)
- Detected standards: erc1967proxy (7), ownable (1)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xec0d8c...a3d24b`, chain 1)
- UnnamedContract (`0xfceaaa...bc334e`, chain 1)
- UnnamedContract (`0x30b8d9...31e53d`, chain 137)
- UnnamedContract (`0xd6b24d...2689de`, chain 204)
- UnnamedContract (`0x102f0c...8389a1`, chain 324)
- UnnamedContract (`0x012297...c86f86`, chain 8453)
- UnnamedContract (`0xd4b5f1...8a1437`, chain 42161)
- UnnamedContract (`0x0d4d25...7c5a8b`, chain 43114)
- CrossProxy (`0xc3711b...82baee`, chain 56)
- CrossProxy (`0x221607...f201ab`, chain 137)
- CrossProxy (`0x6372ae...6b95b5`, chain 1284)
- CrossProxy (`0xde1ae3...d6671d`, chain 1285)
- CrossProxy (`0xf7ba15...b97613`, chain 42161)
- CrossProxy (`0x14ca89...4d6a1d`, chain 42220)
- CrossProxy (`0x74e121...037c3a`, chain 43114)
- Fee (`0x592de3...02e0b6`, chain 10)
- UnnamedContract (`0xccffe9...d69ee3`, chain 250)

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (12 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/12 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 21 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Deployed-live implementations: 21 of 21 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2019-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | optimism | unit-261864 | `0xc6ae1d...bf9dbf` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | polygon | unit-261867 | `0x221607...f201ab` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-261865 | `0x6372ae...6b95b5` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | moonriver | unit-261866 | `0xde1ae3...d6671d` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | base | unit-261874 | `0x2715aa...60cd04` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-261868 | `0xf7ba15...b97613` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | celo | unit-261869 | `0x14ca89...4d6a1d` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | linea | unit-261872 | `0xffb876...5f4a65` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | blast | unit-261873 | `0xc21e55...91f603` | ⚠️ Unaudited |
| CrossDelegateV6 | unknown | project_anchor | own_supporting | 1 | bsc | unit-261871 | `0xc3711b...82baee` | ⚠️ Unaudited |
| CrossProxy | proxy | project_anchor | own_supporting | 1 | avalanche | unit-261870 | `0x74e121...037c3a` | ⚠️ Unaudited |
| Fee | unknown | project_anchor | own_supporting | 0 | optimism | unit-261856 | `0x592de3...02e0b6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261854 | `0xec0d8c...a3d24b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261855 | `0xfceaaa...bc334e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-261857 | `0x30b8d9...31e53d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-261858 | `0xd6b24d...2689de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-261859 | `0xccffe9...d69ee3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-261860 | `0x102f0c...8389a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-261863 | `0x012297...c86f86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-261861 | `0xd4b5f1...8a1437` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-261862 | `0x0d4d25...7c5a8b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Wanchain 1.0.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%201.0.pdf) | unknown | Audit | 2018-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Wanchain Open Storeman.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%20Open%20Storeman.pdf) | unknown | Audit | 2019-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Wanchain PoS.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%20PoS.pdf) | unknown | Audit | 2019-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3319] Wanchain 1.0.pdf — no match: All contract names extracted from the vulnerability table and evaluation sections. Date from page header.
- [3320] Wanchain Open Storeman.pdf — no match: Audit report explicitly lists three contracts in scope: ImprovedStoremanGroupAdmin.sol, StoremanGroup.sol, StoremanLottery.sol. Audit completion date is 2019.02.23.
- [3321] Wanchain PoS.pdf — no match: Audit report explicitly lists four contracts in scope with file paths. Audit completion date is 2019.07.22.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Wanchain 1.0.pdf | wan-alt.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.2 | no |
| Wanchain 1.0.pdf | wan-token.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.3 | no |
| Wanchain 1.0.pdf | ConvertLib.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.4 | no |
| Wanchain 1.0.pdf | ERC20Protocol.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.5 | no |
| Wanchain 1.0.pdf | HTLCBase.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.6 | no |
| Wanchain 1.0.pdf | HTLCETH.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.7 | no |
| Wanchain 1.0.pdf | HTLCWETH.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.8 | no |
| Wanchain 1.0.pdf | Halt.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.9 | no |
| Wanchain 1.0.pdf | Owned.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.10 | no |
| Wanchain 1.0.pdf | SafeMath.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.11 | no |
| Wanchain 1.0.pdf | StandardToken.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.12 | no |
| Wanchain 1.0.pdf | StoremanGroupAdmin.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.13 | no |
| Wanchain 1.0.pdf | WETH.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.14 | no |
| Wanchain 1.0.pdf | WETHManager.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.15 | no |
| Wanchain Open Storeman.pdf | ImprovedStoremanGroupAdmin | unmatched — not counted | — | listed in scope table and audit summary | no |
| Wanchain Open Storeman.pdf | StoremanGroup | unmatched — not counted | — | listed in scope table and audit summary | no |
| Wanchain Open Storeman.pdf | StoremanLottery | unmatched — not counted | — | listed in scope table and audit summary | no |
| Wanchain PoS.pdf | pos_control_contracts | unmatched — not counted | — | listed in scope table and audit report | no |
| Wanchain PoS.pdf | pos_staking_contracts | unmatched — not counted | — | listed in scope table and audit report | no |
| Wanchain PoS.pdf | random_beacon_contract | unmatched — not counted | — | listed in scope table and audit report | no |
| Wanchain PoS.pdf | slot_leader_select_contracts | unmatched — not counted | — | listed in scope table and audit report | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0xc6ae1d...bf9dbf` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x221607...f201ab` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x6372ae...6b95b5` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xde1ae3...d6671d` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2715aa...60cd04` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf7ba15...b97613` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x14ca89...4d6a1d` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xffb876...5f4a65` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xc21e55...91f603` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc3711b...82baee` | CrossDelegateV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x74e121...037c3a` | CrossProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x592de3...02e0b6` | Fee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [3319] Wanchain 1.0.pdf
- [3320] Wanchain Open Storeman.pdf
- [3321] Wanchain PoS.pdf

Fork inheritance lineage and inherited audits are included when available.
