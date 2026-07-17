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

- AnglesVault (`0xd4012c5f3cbcc383d358c5086da694757463e1f2`, chain 146)
- AnglesVaultProxy (`0xe5203be1643465b3c0de28fd2154843497ef4269`, chain 146)
- anS (`0x3eac5eb19c1b300e301874e2113bc2eced43ce7a`, chain 146)
- anSProxy (`0x0c4e186eae8acaa7f7de1315d5ad174be39ec987`, chain 146)
- wanS (`0xba3bb17d19e556900e42e7c1e9e89dc6d3207a64`, chain 146)
- WrappedAnsProxy (`0xfa85fe5a8f5560e9039c04f2b0a90de1415abd70`, chain 146)

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
| AnglesVault | core_logic | project_anchor | own_supporting | 1 | sonic | unit-379056 | 2 deployments: sonic `0xd4012c5f3cbcc383d358c5086da694757463e1f2`; sonic `0xe5203be1643465b3c0de28fd2154843497ef4269` | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x033f4a109fc11a11d3afb92dca0ab6c30bb3c722`; sonic `0x4bf2d4868e7c8514093a4d548b8edf5ae4ce9eea` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x6c2a529921f70eaf44d689ef882d96f09041c452`; sonic `0x71e558d352125a4950301e1fb7027b09303d6a54`; sonic `0xc8291d518fe771b5612ecc0d6a99d5dc03db3dd8`; sonic `0xc85ada86a52dc74e3b0bbd71e5a7e6b0770b928f`; sonic `0xef7073465ff7674d886f1705ed8e471ef61237eb` | ⚠️ Unaudited |
| Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x6d06b7fac4f6393672fd038083370d38f3b0ac35`; sonic `0x8417bdef7fe41743cd26e591f1e4f0d19c00552f`; sonic `0xa342a00f66783a4ca59d0c0716f2d24f593b9070`; sonic `0xfb644cea02886ddc1b56d6d9fece811c941d41cd` | ⚠️ Unaudited |
| AnglesLiquidVaultRateProvider | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x5c6e05d97af61637fdf5144ad4ed81a12bfd35b0`; sonic `0x9b2e90317888c0ca88041a2caecd03a6f63e206e` | ⚠️ Unaudited |
| AnglesSmartRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x0af78f0ccb7d1a042d13f3d4def51cec7c189a00`; sonic `0xe4b84fdd6979a872dd57973f3e4a45921c103175` | ⚠️ Unaudited |
| anS | unknown | project_anchor | own_supporting | 1 | sonic | unit-379054 | 2 deployments: sonic `0x0c4e186eae8acaa7f7de1315d5ad174be39ec987`; sonic `0x3eac5eb19c1b300e301874e2113bc2eced43ce7a` | ⚠️ Unaudited |
| anS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x71f589c4032a2152c377903c0c2485d1b41b4472` | ⚠️ Unaudited |
| AtomicQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x22f74995f88d4fd631bb8f64fa523af0da5a348c` | ⚠️ Unaudited |
| BeetsLpAddHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x87b2948046431022d2633d5e8107ed70d4a672a4`; sonic `0xbe4d17ecb01b6173ae7c168ea9b654a64d18595a`; sonic `0xc83d8ab2978f93dea406a3f4f575bf35e03225bd` | ⚠️ Unaudited |
| BeetsLpRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3df5a1f8e1742f225e485afb99ccfe910d3a077a` | ⚠️ Unaudited |
| Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xde4452a4a4851356e72db53ebfbc9b5b6d520033` | ⚠️ Unaudited |
| FeeSplitter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x4cc72cafb1d87068cae2da03243317f96e863a9e`; sonic `0xfd1ba507a7bb118af057671568551f6ac7d2b010` | ⚠️ Unaudited |
| ManualRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9786db1486a2f67977ef1e3dfbd0eb01e407be7b` | ⚠️ Unaudited |
| PoolOwner | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x01ddde7f3b29fe9571f8bee23a48daab39493b1a`; sonic `0x2210a9357d51ff909eaa43570b3f1275e76cb6d6`; sonic `0x2280753c0f14e1f48352ca760cde48dfc2a4079a`; sonic `0xa9e4c941f4677fa4eff10173cdbdfb2e909e1788`; sonic `0xd965e9210caf1cdc1ed2f0a8936329c12ba727ef` | ⚠️ Unaudited |
| PoolToken | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x2f45b61b90b821efdb4525f89162cfd857ef51fd`; sonic `0x2f6679945c215729608f9896f081d2af42b39b45`; sonic `0x3bcb4f5c22758b145820e1126e69d96f891d5f8b`; sonic `0x451d0084cceaa2cc7ef7ecc71631c54f4e62666e`; sonic `0x88cf500da90ac0351a5b886b73678d183bc3bb7d`; sonic `0xa93c9411f8fecf5e6acd81ecd99a71c165d48c4d`; sonic `0xe0c7af51b39f4cb8d4816a07d0713fe59024eb48` | ⚠️ Unaudited |
| RingsVaultRateProvider | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x117b60ddd662c9165cbe7f442f5d79e98311c9b8`; sonic `0x142e7af40de1a225cc1436b363d4187f8403fbb3`; sonic `0xa633c15e09ca2a8dbb6cd52aae915a3b379deeb3`; sonic `0xa96ac774bd4b8e513b4eb3bad7f3639ee50a685e`; sonic `0xd822b488bd5b0e5fcd4d3fcb6ba9867b6b409f30` | ⚠️ Unaudited |
| RolesAuthority | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x135cb0ebeacb89738a17d3ee6b3caf392af98c47` | ⚠️ Unaudited |
| SFC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xfc00face00000000000000000000000000000000` | ⚠️ Unaudited |
| SiloBorrowableWsRateProvider | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1e360058e211dd88d695926ba0683034477ad01f` | ⚠️ Unaudited |
| SonicUsdcRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf14aeeb00e51d8447f5064f73c519e23a9b5a416` | ⚠️ Unaudited |
| SonicUsdtRateProvider | token | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x0140f9b548565bf913020f186402ced1e8fa6f3f`; sonic `0x8a3b3aa843aab44944209700ca878e9ea5dd2d39` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x035b1c84051e8c6988e3e7ed39991b6e683e3f20`; sonic `0x94869d505fe7bab884505f45a48c24628fc288da`; sonic `0xe14e14cc32b939957742d7586e9debc9631282e7` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x097df3dfb8c5b090e661296563f1fe24701bfb0f`; sonic `0x15e96cdeca34b9de1b31586c1206206adb92e69d`; sonic `0x1c8a00371ed3e66d2b9e45676d421a29848c5635`; sonic `0x1edbcc4bf6e1524715f55544113430f4e451945e`; sonic `0x7a1f5fb31506274ee22afb1acf4d3c1a3f736465`; sonic `0xcafd8145535a9abb7e15262fb6e2ba6452e14d41`; sonic `0xedea2647cfe580c9b6f2148c270f9aae6b08bca5` | ⚠️ Unaudited |
| wanS | unknown | project_anchor | own_supporting | 1 | sonic | unit-379055 | 2 deployments: sonic `0xba3bb17d19e556900e42e7c1e9e89dc6d3207a64`; sonic `0xfa85fe5a8f5560e9039c04f2b0a90de1415abd70` | ⚠️ Unaudited |
| WsRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x615ee09caa940a91ef4738fdea8935f659156ed5` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x02b4723b471acac2048954faa59923cd7d2cee57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0930453c8d14a6e31473acd12ac94d122b22d7bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x16fdf10d097f9dc9527bba50397e314163089993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1f88ea7979df5292bd8c712374f79e0c2c2a5884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x34fe76b604776eb3ec7f2178714ba7d270228945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x510d02e3bce27c57ebf632bcca37ce86823e4ba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5b52fa88f9848efc70dafc14ba17a81f5a2dc073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5dbba7fb977f02356d8088a7e199ce249acba78f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7f7eb928ea8c84795b9a9265078cb38500ed4c31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa7b87c579ff16dc615df69dab2c3059f5008029e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb52a8d5212463ea5c624be88901093859ae7207a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbe7cc6c5dabdf3fb899a2e4a7fd5646374d6fe53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd68c5cc0cc0bf8deb07d447930a2f44affec840b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe904a7a1e66532dea9905dd8d385d15937c6f23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf46b21f3d0f6af145112b81ad459cc92ab740497` | ❓ Unverified |

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
| spaces/llPyhrg6nxGZCqiOX61A/uploads/bSKwCaHEqGfKBo6FUXtL/SpearBit x Angles.pdf | AnglesVault | own proxy deployment | AnglesVaultProxy (proxy) (selected) `0xe5203be1643465b3c0de28fd2154843497ef4269` — deployed 2025-01-21 13:52:52+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x0c4e186eae8acaa7f7de1315d5ad174be39ec987` | anS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xba3bb17d19e556900e42e7c1e9e89dc6d3207a64` | wanS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
