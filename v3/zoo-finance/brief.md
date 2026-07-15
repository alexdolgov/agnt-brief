# Agentic Audit Brief: Zoo Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Zoo Finance (`zoo-finance`)
- Website: [https://zoofi.io](https://zoofi.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, berachain, chain-80084
- Contract surface: 23 unique implementations (23 raw deployments)
- Coverage basis: 0/13 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $27,950,714.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Zoo Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across base, berachain, chain-80084. Structural roles: 8 core, 5 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (8), supporting (5)
- Contract kinds: contract (13)
- Detected standards: erc20 (5), pausable (5), ownable (2)
- Frameworks: openzeppelin (13)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BQuery (`0x6e6030...56d913`, chain 80094)
- InfraredBribeVault (`0x33c42e...f64e63`, chain 80094)
- InfraredBribeVault (`0x6686bd...f338c0`, chain 80094)
- InfraredBribeVaultV2 (`0x702b70...a02767`, chain 80094)
- InfraredBribeVaultV2 (`0x94822b...94fc67`, chain 80094)
- InfraredBribeVaultV2 (`0xe6d155...0d4083`, chain 80094)
- pHONEY-USDC (`0x70b851...abdd4b`, chain 80094)
- pHONEYBYUSD (`0x83f933...1b2ea5`, chain 80094)
- pHONEYBYUSD (`0xa58f5a...12fcaf`, chain 80094)
- ProtocolSettings (`0x7d3cec...19bac0`, chain 80094)
- pUSDCeHONEY (`0xc2c5ea...dbf7a7`, chain 80094)
- pWBERAWETH (`0x0da715...6728ea`, chain 80094)
- ZooProtocol (`0x4737c3...be9c81`, chain 80094)

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/13 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 10 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 13 of 23 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 23
- Raw deployments: 23
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BQuery | unknown | project_anchor | own_supporting | 0 | berachain | unit-398273 | `0x6e6030...56d913` | ⚠️ Unaudited |
| InfraredBribeVault | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-398270 | `0x33c42e...f64e63` | ⚠️ Unaudited |
| InfraredBribeVault | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-398272 | `0x6686bd...f338c0` | ⚠️ Unaudited |
| InfraredBribeVaultV2 | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-398274 | `0x702b70...a02767` | ⚠️ Unaudited |
| InfraredBribeVaultV2 | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-398278 | `0x94822b...94fc67` | ⚠️ Unaudited |
| InfraredBribeVaultV2 | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-398281 | `0xe6d155...0d4083` | ⚠️ Unaudited |
| pHONEY-USDC | unknown | project_anchor | own_supporting | 0 | berachain | unit-398275 | `0x70b851...abdd4b` | ⚠️ Unaudited |
| pHONEYBYUSD | unknown | project_anchor | own_supporting | 0 | berachain | unit-398277 | `0x83f933...1b2ea5` | ⚠️ Unaudited |
| pHONEYBYUSD | unknown | project_anchor | own_supporting | 0 | berachain | unit-398279 | `0xa58f5a...12fcaf` | ⚠️ Unaudited |
| ProtocolSettings | unknown | project_anchor | own_supporting | 0 | berachain | unit-398276 | `0x7d3cec...19bac0` | ⚠️ Unaudited |
| pUSDCeHONEY | unknown | project_anchor | own_supporting | 0 | berachain | unit-398280 | `0xc2c5ea...dbf7a7` | ⚠️ Unaudited |
| pWBERAWETH | unknown | project_anchor | own_supporting | 0 | berachain | unit-398269 | `0x0da715...6728ea` | ⚠️ Unaudited |
| ZooProtocol | unknown | project_anchor | own_supporting | 0 | berachain | unit-398271 | `0x4737c3...be9c81` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-398282 | `0x4b9cef...156e4b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398260 | `0x02fede...4e0516` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398261 | `0x12f5f1...683adc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398262 | `0x256938...83bedf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398263 | `0x575287...b8feba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398264 | `0x77412b...e03eea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398265 | `0x8685ce...b5dc89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398266 | `0x9700fe...2125be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398267 | `0x97d82c...2a2a83` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-80084 | unit-398268 | `0xdf1126...c34ab6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audit-report.md](https://doc.zoofi.io/security/audit-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3916] audit-report.md — no match: The provided text is a documentation page with a link to a PDF audit report. The actual audit report content is not included, so no contract names or audit date can be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | `0x6e6030...56d913` | BQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x33c42e...f64e63` | InfraredBribeVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x6686bd...f338c0` | InfraredBribeVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x702b70...a02767` | InfraredBribeVaultV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x94822b...94fc67` | InfraredBribeVaultV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xe6d155...0d4083` | InfraredBribeVaultV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x7d3cec...19bac0` | ProtocolSettings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x4737c3...be9c81` | ZooProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [3916] audit-report.md

Fork inheritance lineage and inherited audits are included when available.
