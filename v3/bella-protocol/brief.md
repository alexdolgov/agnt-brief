# Agentic Audit Brief: Bella Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DEAD - TVL dropped 11.3% over 90 days

## Project Overview

- Project: Bella Protocol (`bella-protocol`)
- Website: [https://www.bella.fi/en-US](https://www.bella.fi/en-US)
- Lifecycle: dead (Tier 0, 99.8% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, manta-pacific, mantle, zksync-era
- Contract surface: 32 unique implementations (52 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $153,481.87
- On-chain TVL (included contracts): $272,623.47
- TVL by chain: Ethereum $272,623.47

## Project Description

This brief describes the observed EVM deployment and audit surface for Bella Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum, manta-pacific, mantle, zksync-era. Structural roles: 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: unclassified (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2c9bfc...2d7c0f`, chain 169)
- UnnamedContract (`0x9fb6ca...d2803c`, chain 324)
- UnnamedContract (`0xb83cfb...ae92d9`, chain 324)
- UnnamedContract (`0x339010...f63798`, chain 5000)
- UnnamedContract (`0xbf2b95...23980c`, chain 5000)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 26 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 6 of 32 unique; 26 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 32
- Raw deployments: 52
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| bVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x2c2327...568ea6`; ethereum `0x378388...a35153`; ethereum `0x3fb6b0...15a2cc`; ethereum `0x750d30...7996d0`; ethereum `0x801690...85dc0e`; ethereum `0x8d9a39...ec6108` | ⚠️ Unaudited |
| StrategyArpa | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3063c...63095e` | ⚠️ Unaudited |
| Bella | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa91ac6...a07e14` | ⚠️ Unaudited |
| BellaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cb6ff...04649d` | ⚠️ Unaudited |
| Controller | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8c534...504d2a` | ⚠️ Unaudited |
| MantaMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 16 deployments: manta-pacific `0x01d275...dbc02a`; manta-pacific `0x078f71...90604b`; manta-pacific `0x091745...627442`; manta-pacific `0x0f52a5...3ccbb4`; manta-pacific `0x207d76...8a2181`; manta-pacific `0x4220e9...e8c8ff`; manta-pacific `0x6025f8...06cfb0`; manta-pacific `0x8d7090...ab566a`; manta-pacific `0x90e957...eb6917`; manta-pacific `0x916476...295f9a`; manta-pacific `0x975896...85eadd`; manta-pacific `0xab8653...fa5605`; manta-pacific `0xb01e11...7c5aa9`; manta-pacific `0xbab1c5...59d154`; manta-pacific `0xd21237...0bc46d`; manta-pacific `0xe22e3d...7f0020` | ⚠️ Unaudited |
| MantaMintableERC20 | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-229303 | `0xb385e5...88e1ce` | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xbdad40...61fb07` | ⚠️ Unaudited |
| StrategyBusd | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbc00c...a362d5` | ⚠️ Unaudited |
| StrategyHbtc | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7f9c7...c68c0b` | ⚠️ Unaudited |
| StrategyUsdc | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9db02f...cbad5a` | ⚠️ Unaudited |
| StrategyUsdt | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15e926...ecd695` | ⚠️ Unaudited |
| StrategyWbtc | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x964a64...72bc36` | ⚠️ Unaudited |
| TokenPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc93528...793d84` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f624b...980808` | ⚠️ Unaudited |
| WhiteList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19f35c...8e493e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-229302 | `0x2c9bfc...2d7c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x6731a6...dfde2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x994be2...96f5a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x9e98de...91ca35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xa91ac6...a07e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xbe138a...966cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xbf2b95...23980c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xc865dd...8c1df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xf0d110...edf61a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-229305 | `0x9fb6ca...d2803c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xa91ac6...a07e14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-229306 | `0xb83cfb...ae92d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-229308 | `0x339010...f63798` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3bd7a1...b74d94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9fb6ca...d2803c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-229309 | `0xbf2b95...23980c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [bella_audit_report_2020_48_en_1_0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/bella_audit_report_2020_48_en_1_0.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12756] bella_audit_report_2020_48_en_1_0.pdf — no match: The report clearly states the target is YCurveStaking.sol and also references Ownable.sol in findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| bella_audit_report_2020_48_en_1_0.pdf | YCurveStaking | unmatched — not counted | — | Listed in scope table and throughout report as target contract. | no |
| bella_audit_report_2020_48_en_1_0.pdf | Ownable | unmatched — not counted | — | Mentioned in finding PVE-003 as target file. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| manta-pacific | `0xb385e5...88e1ce` | MantaMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [12756] bella_audit_report_2020_48_en_1_0.pdf

Fork inheritance lineage and inherited audits are included when available.
