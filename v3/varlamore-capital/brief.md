# Agentic Audit Brief: Varlamore Capital

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

- Project: Varlamore Capital (`varlamore-capital`)
- Website: [https://varlamore.capital/](https://varlamore.capital/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, ethereum, sonic
- Contract surface: 15 unique implementations (15 raw deployments)
- Coverage basis: 0/9 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $172,253.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Varlamore Capital. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across avalanche, ethereum, sonic. Structural roles: 9 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (9)
- Contract kinds: contract (9)
- Detected standards: erc20 (9), erc20permit (9), erc4626 (9), multicall (9), ownable (9), ownable2step (9)
- Frameworks: openzeppelin (9)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Varlamore ETH (`0xad43bd27a4d7c18c05f78f24d9bd3fa6805c2ff6`, chain 1)
- Varlamore ETH (`0xcc7bdb3ff050d65918b96e4bdf1060a1aa0bb409`, chain 146)
- Varlamore Falcon USDC (`0xa9b23b28621cfb32e0ebf50b572afac671fcc17b`, chain 1)
- Varlamore Falcon USDC (`0xb4b98983ad44257e267f5bdd3b4a86fb40e2ee5f`, chain 1)
- Varlamore Mainstreet USDC (`0xffa4f67d4facff62e53e6ac4f76a1e049673876b`, chain 146)
- Varlamore S (`0xded4ac8645619334186f28b8798e07ca354cfa0e`, chain 146)
- Varlamore USDC Core (`0x3e11288c2e1ec2a5200e407d1eebd416dbe43656`, chain 146)
- Varlamore USDC Growth (`0xd6b1d1fc1531046b1af598cc9d06d005659a13e9`, chain 1)
- Varlamore USDC Growth (`0x025dff399d166138ce8ce9630e4677285c314b6c`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/15 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/9 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 9 of 15 unique; 6 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 15
- Raw deployments: 15
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

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Varlamore ETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395617 | `0xad43bd27a4d7c18c05f78f24d9bd3fa6805c2ff6` | ⚠️ Unaudited |
| Varlamore ETH | unknown | project_anchor | own_supporting | 0 | sonic | unit-395623 | `0xcc7bdb3ff050d65918b96e4bdf1060a1aa0bb409` | ⚠️ Unaudited |
| Varlamore Falcon USDC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395616 | `0xa9b23b28621cfb32e0ebf50b572afac671fcc17b` | ⚠️ Unaudited |
| Varlamore Falcon USDC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395618 | `0xb4b98983ad44257e267f5bdd3b4a86fb40e2ee5f` | ⚠️ Unaudited |
| Varlamore Mainstreet USDC | unknown | project_anchor | own_supporting | 0 | sonic | unit-395626 | `0xffa4f67d4facff62e53e6ac4f76a1e049673876b` | ⚠️ Unaudited |
| Varlamore S | unknown | project_anchor | own_supporting | 0 | sonic | unit-395624 | `0xded4ac8645619334186f28b8798e07ca354cfa0e` | ⚠️ Unaudited |
| Varlamore USDC Core | unknown | project_anchor | own_supporting | 0 | sonic | unit-395620 | `0x3e11288c2e1ec2a5200e407d1eebd416dbe43656` | ⚠️ Unaudited |
| Varlamore USDC Growth | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395619 | `0xd6b1d1fc1531046b1af598cc9d06d005659a13e9` | ⚠️ Unaudited |
| Varlamore USDC Growth | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395627 | `0x025dff399d166138ce8ce9630e4677285c314b6c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-395615 | `0x8399c8fc273bd165c346af74a02e65f10e4fd78f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-395621 | `0x9a1bf5365edbb99c2c61ca6d9ffad0b705acfc6f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-395622 | `0xb6a23cb29e512df41876b28d7a848bd831f9c5ba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-395625 | `0xf6f87073cf8929c206a77b0694619dc776f89885` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-395628 | `0x3d7b0c3997e48fa3fc96cd057d1fb4e5f891835b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-395629 | `0x6c09bfdc1df45d6c4ff78dc9f1c13af29eb335d4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

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
