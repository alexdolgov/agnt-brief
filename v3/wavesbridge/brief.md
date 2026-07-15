# Agentic Audit Brief: WavesBridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: WavesBridge (`wavesbridge`)
- Website: [https://wavesbridge.io/](https://wavesbridge.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum
- Contract surface: 28 unique implementations (66 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,102,614.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for WavesBridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, bsc, ethereum. Structural roles: 2 supporting, 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: supporting (2), core (1)
- Contract kinds: contract (3)
- Detected standards: accesscontrol (2), erc165 (2), ownable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2f2a25...fc5b0f`, chain 42161)
- Bridge (`0x3ac7a6...9c3a55`, chain 1)
- Bridge (`0x3ac7a6...9c3a55`, chain 56)
- PortalV2 (`0xac8f44...0ffcbe`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 4 of 28 unique; 24 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 28
- Raw deployments: 66
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x564a0c...21d9b0`; arbitrum `0x78c973...461005`; arbitrum `0x9bbc76...900d31` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-396606 | `0x3ac7a6...9c3a55` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-396610 | `0x3ac7a6...9c3a55` | ⚠️ Unaudited |
| ClaimHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1d1fc5...15a735`; arbitrum `0xbf4752...3ee3db` | ⚠️ Unaudited |
| COLON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e21c1...828eca` | ⚠️ Unaudited |
| ITO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x465dbc...a6ff2d` | ⚠️ Unaudited |
| Neiro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ba4...a853ee` | ⚠️ Unaudited |
| OpsRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5571e3...8fdbb9` | ⚠️ Unaudited |
| PepeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x698250...311933` | ⚠️ Unaudited |
| PoolAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0xa60622...4ad4d4`; arbitrum `0xda1a6c...bface8`; arbitrum `0xef4f5e...3c1e56` | ⚠️ Unaudited |
| PoolAdapterCrypto | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x01aa1b...c42051`; arbitrum `0x310604...50e4b6`; arbitrum `0xfa9dc4...d1e88a` | ⚠️ Unaudited |
| PoolAdapterStableNg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x05f4f0...437948`; arbitrum `0x853a95...a8e3a6` | ⚠️ Unaudited |
| PoolHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9c98a...75f1d5` | ⚠️ Unaudited |
| PortalV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396609 | `0xac8f44...0ffcbe` | ⚠️ Unaudited |
| RealGames | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a920b...e04882` | ⚠️ Unaudited |
| SATO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32f411...decb0e` | ⚠️ Unaudited |
| SimpleToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d2244...594381` | ⚠️ Unaudited |
| SynthesisV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf370d9...50cc72` | ⚠️ Unaudited |
| SynthFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b8607...f69178` | ⚠️ Unaudited |
| Tweet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d696d...3f7501` | ⚠️ Unaudited |
| UnifiedRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0xa2a786...585c74`; arbitrum `0xe7db62...4a3be4`; arbitrum `0xfa43de...112d1a` | ⚠️ Unaudited |
| Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xf78712...2097fb`; bsc `0xf78712...2097fb` | ⚠️ Unaudited |
| VestingByFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8c3fba...a69095`; arbitrum `0xf1bd32...5fc99f` | ⚠️ Unaudited |
| VestingByNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x790b4a...e2e3bc`; arbitrum `0xf23654...5b3188` | ⚠️ Unaudited |
| VestingByWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 24 deployments: arbitrum `0x05f238...cff5e8`; arbitrum `0x06bbaf...75da20`; arbitrum `0x0d624f...a4c940`; arbitrum `0x1486b4...836ef3`; arbitrum `0x1ec4c2...87b07d`; arbitrum `0x3814bb...576ad4`; arbitrum `0x3d0ebf...cdfde7`; arbitrum `0x478473...9e7c58`; arbitrum `0x6cd1d5...dd8dcc`; arbitrum `0x702f9d...33aacb`; arbitrum `0x7793c6...0607ae`; arbitrum `0x7a9b6a...ccc1cf`; arbitrum `0x7e010a...87756a`; arbitrum `0x7ffe15...8eb37d`; arbitrum `0x803102...895558`; arbitrum `0x88b927...420c6b`; arbitrum `0x9d7919...4f483d`; arbitrum `0xa0b70e...f012d5`; arbitrum `0xafbc09...2a1412`; arbitrum `0xb70f4b...2a269a`; arbitrum `0xce04dc...d882ef`; arbitrum `0xdcf4ce...9a243d`; arbitrum `0xe02762...6df4ea`; arbitrum `0xfc2e04...bfaf3e` | ⚠️ Unaudited |
| VirtualPriceSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x68fc27...639b4d`; arbitrum `0xfa843a...142541` | ⚠️ Unaudited |
| WalletFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x76f7b0...ccf8d7`; arbitrum `0x8cb8c4...709e12` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396607 | `0x2f2a25...fc5b0f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3ac7a6...9c3a55` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3ac7a6...9c3a55` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xac8f44...0ffcbe` | PortalV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
