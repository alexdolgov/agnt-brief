# Agentic Audit Brief: Angles

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 58.3% over 90 days

## Project Overview

- Project: Angles (`angles`)
- Website: [https://angles.fi/](https://angles.fi/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: sonic
- Contract surface: 41 unique implementations (80 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $471,730.00
- On-chain TVL (included contracts): $219,426.20
- TVL by chain: Sonic $219,426.20

## Project Description

This brief describes the observed EVM deployment and audit surface for Angles. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across sonic. Structural roles: 5 core, 1 unclassified. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (5), unclassified (1)
- Contract kinds: contract (6)
- Detected standards: erc1967proxy (3), erc20 (1), erc4626 (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AnglesVault (`0xd4012c...63e1f2`, chain 146)
- AnglesVaultProxy (`0xe5203b...ef4269`, chain 146)
- anS (`0x3eac5e...43ce7a`, chain 146)
- anSProxy (`0x0c4e18...9ec987`, chain 146)
- wanS (`0xba3bb1...207a64`, chain 146)
- WrappedAnsProxy (`0xfa85fe...5abd70`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 38 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 3 of 41 unique; 38 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/26
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 41
- Raw deployments: 80
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 33.3% (Spearbit)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 1 | 3.8% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnglesVault | core_logic | project_anchor | own_supporting | 1 | sonic | unit-379056 | 2 deployments: sonic `0xd4012c...63e1f2`; sonic `0xe5203b...ef4269` | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x033f4a...b3c722`; sonic `0x4bf2d4...ce9eea` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x6c2a52...41c452`; sonic `0x71e558...3d6a54`; sonic `0xc8291d...db3dd8`; sonic `0xc85ada...0b928f`; sonic `0xef7073...1237eb` | ⚠️ Unaudited |
| Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x6d06b7...b0ac35`; sonic `0x8417bd...00552f`; sonic `0xa342a0...3b9070`; sonic `0xfb644c...1d41cd` | ⚠️ Unaudited |
| AnglesLiquidVaultRateProvider | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x5c6e05...fd35b0`; sonic `0x9b2e90...3e206e` | ⚠️ Unaudited |
| AnglesSmartRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x0af78f...189a00`; sonic `0xe4b84f...103175` | ⚠️ Unaudited |
| anS | unknown | project_anchor | own_supporting | 1 | sonic | unit-379054 | 2 deployments: sonic `0x0c4e18...9ec987`; sonic `0x3eac5e...43ce7a` | ⚠️ Unaudited |
| anS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x71f589...1b4472` | ⚠️ Unaudited |
| AtomicQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x22f749...5a348c` | ⚠️ Unaudited |
| BeetsLpAddHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x87b294...a672a4`; sonic `0xbe4d17...18595a`; sonic `0xc83d8a...3225bd` | ⚠️ Unaudited |
| BeetsLpRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3df5a1...3a077a` | ⚠️ Unaudited |
| Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xde4452...520033` | ⚠️ Unaudited |
| FeeSplitter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x4cc72c...863a9e`; sonic `0xfd1ba5...d2b010` | ⚠️ Unaudited |
| ManualRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9786db...07be7b` | ⚠️ Unaudited |
| PoolOwner | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x01ddde...493b1a`; sonic `0x2210a9...6cb6d6`; sonic `0x228075...a4079a`; sonic `0xa9e4c9...9e1788`; sonic `0xd965e9...a727ef` | ⚠️ Unaudited |
| PoolToken | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x2f45b6...ef51fd`; sonic `0x2f6679...b39b45`; sonic `0x3bcb4f...1d5f8b`; sonic `0x451d00...62666e`; sonic `0x88cf50...c3bb7d`; sonic `0xa93c94...d48c4d`; sonic `0xe0c7af...24eb48` | ⚠️ Unaudited |
| RingsVaultRateProvider | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x117b60...11c9b8`; sonic `0x142e7a...03fbb3`; sonic `0xa633c1...9deeb3`; sonic `0xa96ac7...0a685e`; sonic `0xd822b4...409f30` | ⚠️ Unaudited |
| RolesAuthority | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x135cb0...f98c47` | ⚠️ Unaudited |
| SFC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xfc00fa...000000` | ⚠️ Unaudited |
| SiloBorrowableWsRateProvider | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1e3600...7ad01f` | ⚠️ Unaudited |
| SonicUsdcRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf14aee...b5a416` | ⚠️ Unaudited |
| SonicUsdtRateProvider | token | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x0140f9...fa6f3f`; sonic `0x8a3b3a...dd2d39` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x035b1c...3e3f20`; sonic `0x94869d...c288da`; sonic `0xe14e14...1282e7` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x097df3...1bfb0f`; sonic `0x15e96c...92e69d`; sonic `0x1c8a00...8c5635`; sonic `0x1edbcc...51945e`; sonic `0x7a1f5f...736465`; sonic `0xcafd81...e14d41`; sonic `0xedea26...08bca5` | ⚠️ Unaudited |
| wanS | unknown | project_anchor | own_supporting | 1 | sonic | unit-379055 | 2 deployments: sonic `0xba3bb1...207a64`; sonic `0xfa85fe...5abd70` | ⚠️ Unaudited |
| WsRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x615ee0...156ed5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x02b472...2cee57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x093045...22d7bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x16fdf1...089993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1f88ea...2a5884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x34fe76...228945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x510d02...3e4ba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5b52fa...2dc073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5dbba7...cba78f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7f7eb9...ed4c31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa7b87c...08029e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb52a8d...e7207a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbe7cc6...d6fe53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd68c5c...ec840b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe904a7...c6f23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf46b21...740497` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/llPyhrg6nxGZCqiOX61A/uploads/bSKwCaHEqGfKBo6FUXtL/SpearBit x Angles.pdf](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FllPyhrg6nxGZCqiOX61A%2Fuploads%2FbSKwCaHEqGfKBo6FUXtL%2FSpearBit%20x%20Angles.pdf?alt=media) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 0 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3224] spaces/llPyhrg6nxGZCqiOX61A/uploads/bSKwCaHEqGfKBo6FUXtL/SpearBit x Angles.pdf — matched: The report focuses on the AnglesVault contract. No other contracts are explicitly listed in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/llPyhrg6nxGZCqiOX61A/uploads/bSKwCaHEqGfKBo6FUXtL/SpearBit x Angles.pdf | AnglesVault | own proxy deployment | AnglesVaultProxy (proxy) (selected) `0xe5203b...ef4269` — deployed 2025-01-21 13:52:52+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x0c4e18...9ec987` | anS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xba3bb1...207a64` | wanS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
