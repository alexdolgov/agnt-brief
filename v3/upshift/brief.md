# Agentic Audit Brief: Upshift

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Upshift (`upshift`)
- Website: [https://app.upshift.finance](https://app.upshift.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base, bsc, ethereum, ink, plasma
- Contract surface: 50 unique implementations (57 raw deployments)
- Coverage basis: 0/37 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $250,617,780.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Upshift. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across avalanche, base, ethereum. Structural roles: 4 core, 1 supporting, 1 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (4), supporting (1), unclassified (1)
- Contract kinds: contract (6)
- Detected standards: ownable (3)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 44 contracts are derived from known codebases. 44 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- GainLendingPool (`0xed5c8c...368589`, chain 1)
- GnosisSafe (`0x17ab75...057cc1`, chain 1)
- GnosisSafeProxy (`0x416e26...1241f4`, chain 1)
- LendingPool (`0x1e367a...6973ce`, chain 1)
- LendingPool (`0x369530...488c60`, chain 1)
- LendingPool (`0x43d413...57c65b`, chain 1)
- LendingPool (`0x5b53d5...b253b6`, chain 1)
- LendingPoolv2 (`0x4555b1...de6761`, chain 1)
- LendingPoolv2 (`0x82ebd6...9a136a`, chain 8453)
- LendingPoolv2 (`0x237f49...3beb4e`, chain 43114)
- LendingPoolv3 (`0xea19b8...9fdcc6`, chain 1)
- LendingPoolv3 (`0xaab6fd...165c38`, chain 43114)
- ProxyAdmin (`0x76398b...c4f585`, chain 1)
- ProxyAdmin (`0xd355da...95fc40`, chain 1)
- ProxyAdmin (`0xfa0713...603463`, chain 1)
- ProxyAdmin (`0x35a5c2...dcee3e`, chain 8453)
- ProxyAdmin (`0x9b2f26...83293c`, chain 43114)
- ProxyAdmin (`0xcd47da...72166d`, chain 43114)
- RewardDistributor (`0xaeac5f...5e5be2`, chain 43114)
- RewardDistributor (`0xd3e653...b697c4`, chain 43114)
- Safe (`0x410755...8457f7`, chain 1)
- ScheduledProxyAdmin (`0x20c30c...511083`, chain 1)
- ScheduledProxyAdmin (`0x7b8db6...9966b8`, chain 1)
- ScheduledProxyAdmin (`0x9e3606...a9596d`, chain 1)
- ScheduledProxyAdmin2 (`0x782020...df21fd`, chain 1)
- TimelockedCall (`0x02e097...22d881`, chain 1)
- TimelockedCall (`0x06eada...312159`, chain 1)
- TimelockedCall (`0x0b570b...047581`, chain 1)
- TimelockedCall (`0x161ad7...4b5ad1`, chain 1)
- TimelockedCall (`0xaab6fd...165c38`, chain 1)
- TimelockedCall (`0xdcaed0...e366e2`, chain 1)
- TimelockedCall (`0x016301...3ecce9`, chain 8453)
- TimelockedCall (`0x2ae110...fc0476`, chain 43114)
- TimelockedCall (`0xb5963e...b38888`, chain 43114)
- TransparentUpgradeableProxy (`0x18a5a3...f9f869`, chain 1)
- TransparentUpgradeableProxy (`0x5fde59...eb357f`, chain 1)
- TransparentUpgradeableProxy (`0x80e104...ff6a42`, chain 1)
- TransparentUpgradeableProxy (`0xc824a0...8859fd`, chain 1)
- TransparentUpgradeableProxy (`0xd684af...1260f4`, chain 1)
- TransparentUpgradeableProxy (`0xe1b4d3...8e6c2e`, chain 1)
- TransparentUpgradeableProxy (`0xebac5e...002f7f`, chain 1)
- TransparentUpgradeableProxy (`0x4e2d90...9132d2`, chain 8453)
- TransparentUpgradeableProxy (`0x3408b2...9a599e`, chain 43114)
- TransparentUpgradeableProxy (`0xb2bfb5...a56e0b`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 37/41 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/37 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 37 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 9 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 37 of 50 unique; 13 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/46
- Verified + Unaudited implementations: 46
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 50
- Raw deployments: 57
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (46)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GainLendingPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395386 | `0xc824a0...8859fd` | ⚠️ Unaudited |
| GainLendingPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395372 | `0xed5c8c...368589` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 2 | ethereum | unit-395388 (2 proxies) | 2 deployments: ethereum `0x17ab75...057cc1`; ethereum `0x416e26...1241f4` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x016301...3ecce9` | ⚠️ Unaudited |
| LendingPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395384 | 2 deployments: ethereum `0x1e367a...6973ce`; ethereum `0xe1b4d3...8e6c2e` | ⚠️ Unaudited |
| LendingPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395357 | `0x369530...488c60` | ⚠️ Unaudited |
| LendingPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395359 | `0x43d413...57c65b` | ⚠️ Unaudited |
| LendingPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395362 | `0x5b53d5...b253b6` | ⚠️ Unaudited |
| LendingPoolUpgradeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ee25e...74cb0a` | ⚠️ Unaudited |
| LendingPoolV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x795f27...8b5063` | ⚠️ Unaudited |
| LendingPoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25c332...1b2b28` | ⚠️ Unaudited |
| LendingPoolv2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395360 | `0x4555b1...de6761` | ⚠️ Unaudited |
| LendingPoolv2 | unknown | project_anchor | own_supporting | 0 | base | unit-395383 | `0x82ebd6...9a136a` | ⚠️ Unaudited |
| LendingPoolv2 | unknown | project_anchor | own_supporting | 1 | avalanche | unit-395389 | 2 deployments: avalanche `0x237f49...3beb4e`; avalanche `0x3408b2...9a599e` | ⚠️ Unaudited |
| LendingPoolv3 | unknown | project_anchor | own_supporting | 5 | ethereum | unit-395387 (5 proxies) | 5 deployments: ethereum `0x18a5a3...f9f869`; ethereum `0x5fde59...eb357f`; ethereum `0x80e104...ff6a42`; ethereum `0xd684af...1260f4`; ethereum `0xebac5e...002f7f` | ⚠️ Unaudited |
| LendingPoolv3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c85d6...c2eb16` | ⚠️ Unaudited |
| LendingPoolv3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395371 | `0xea19b8...9fdcc6` | ⚠️ Unaudited |
| LendingPoolv3 | unknown | project_anchor | own_supporting | 1 | base | unit-395391 | `0x4e2d90...9132d2` | ⚠️ Unaudited |
| LendingPoolv3 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395376 | `0xaab6fd...165c38` | ⚠️ Unaudited |
| LendingPoolv3 | unknown | project_anchor | own_supporting | 1 | avalanche | unit-395390 | `0xb2bfb5...a56e0b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395363 | `0x76398b...c4f585` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395369 | `0xd355da...95fc40` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395373 | `0xfa0713...603463` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | base | unit-395382 | `0x35a5c2...dcee3e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395375 | `0x9b2f26...83293c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395379 | `0xcd47da...72166d` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82ebd6...9a136a` | ⚠️ Unaudited |
| RewardDistributor | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395377 | `0xaeac5f...5e5be2` | ⚠️ Unaudited |
| RewardDistributor | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395380 | `0xd3e653...b697c4` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395385 | `0x410755...8457f7` | ⚠️ Unaudited |
| ScheduledProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395356 | `0x20c30c...511083` | ⚠️ Unaudited |
| ScheduledProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395365 | `0x7b8db6...9966b8` | ⚠️ Unaudited |
| ScheduledProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395366 | `0x9e3606...a9596d` | ⚠️ Unaudited |
| ScheduledProxyAdmin2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x510441...cb732f` | ⚠️ Unaudited |
| ScheduledProxyAdmin2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395364 | `0x782020...df21fd` | ⚠️ Unaudited |
| StandalonePoolAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x078430...5741d6` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395351 | `0x02e097...22d881` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395352 | `0x06eada...312159` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395353 | `0x0b570b...047581` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395355 | `0x161ad7...4b5ad1` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395367 | `0xaab6fd...165c38` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395370 | `0xdcaed0...e366e2` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | base | unit-395381 | `0x016301...3ecce9` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395374 | `0x2ae110...fc0476` | ⚠️ Unaudited |
| TimelockedCall | unknown | project_anchor | own_supporting | 0 | avalanche | unit-395378 | `0xb5963e...b38888` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xe9b725...159d32` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395354 | `0x12b320...14828e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395358 | `0x4322a1...96a07e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395361 | `0x478ccb...342ce0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-395368 | `0xb7858b...51c273` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Hacken (January 2026) — AllocationWhitelist](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXmCdFTPUHEQ60lKvKop0%2Fuploads%2FIqnlimIRQFwlYr81fncl%2F26.01.30%20-%20Hacken%20Audit%20-%20AllocationWhitelist.pdf?alt=media) | Hacken | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Hacken (March 2026) - Instant Redemption Subaccount](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXmCdFTPUHEQ60lKvKop0%2Fuploads%2F8UO5oxZS7bEcnyNpIbfS%2F25.12.18%20-%20Hacken%20Audit.pdf?alt=media) | Hacken | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [OtterSec (September 2025) - Solana Vault](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXmCdFTPUHEQ60lKvKop0%2Fuploads%2FfcdBVLOhOIQtc9217chS%2FUpshift_solana_erc_audit_final%20(1).pdf?alt=media) | OtterSec | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Hacken (September 2025)](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FXmCdFTPUHEQ60lKvKop0%2Fuploads%2Fv7bxxnpnDULv2nU6fpoG%2F25.09.22%20-%20Hacken%20Audit.pdf?alt=media) | Hacken | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [28330] Hacken (January 2026) — AllocationWhitelist — no match: Three contracts explicitly listed in Appendix 2 Scope table.
- [28331] Hacken (March 2026) - Instant Redemption Subaccount — no match: All contracts listed in Appendix 2 Scope table. Date from cover page: 18/12/2025.
- [28332] OtterSec (September 2025) - Solana Vault — no match: The scope section describes a single program named 'solana-erc4626' (a Solana program, not a traditional smart contract). No individual contract files are listed; the audit covers the entire program repository.
- [28333] Hacken (September 2025) — no match: All contracts listed in Appendix 2 Scope table. Date from cover page: 24/09/2025.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Hacken (January 2026) — AllocationWhitelist | SendersAllocationWhitelist | unmatched — not counted | — | listed in scope table | no |
| Hacken (January 2026) — AllocationWhitelist | OraclizedMultiAssetVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (January 2026) — AllocationWhitelist | TimelockedVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | BaseLayerZeroErc20 | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | BaseReentrancy | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | BridgeableGovernanceToken | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | BridgeableReceiptToken | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | DateUtils | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | EnableOnlyAssetsWhitelist | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | GuardedProxyOwnable2Steps | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | Ownable2StepsGuarded | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | OwnableGuarded | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | ProxyAdminOwnable2Steps | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | ProxyFactory | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | ProxyFactoryOwnable2Steps | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | ResourceBasedTimelockedCall | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | SendersWhitelist | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | OperableVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | OraclizedMultiAssetVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | TimelockedVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | Parameters | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | ITokenizedVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | MasterDeployer | unmatched — not counted | — | listed in scope table | no |
| Hacken (March 2026) - Instant Redemption Subaccount | TokenizedVault | unmatched — not counted | — | listed in scope table | no |
| OtterSec (September 2025) - Solana Vault | solana-erc4626 | unmatched — not counted | — | Scope section: 'Name: solana-erc4626' | no |
| Hacken (September 2025) | BaseLayerZeroErc20 | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | BaseReentrancy | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | BridgeableReceiptToken | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | DateUtils | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | EnableOnlyAssetsWhitelist | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | GuardedProxyOwnable2Steps | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | OwnableGuarded | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | ProxyFactory | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | ResourceBasedTimelockedCall | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | SendersWhitelist | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | OperableVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | OraclizedMultiAssetVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | TimelockedVault | unmatched — not counted | — | listed in scope table | no |
| Hacken (September 2025) | TokenizedVault | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x20c30c...511083` | ScheduledProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x02e097...22d881` | TimelockedCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 39 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [28330] Hacken (January 2026) — AllocationWhitelist
- [28331] Hacken (March 2026) - Instant Redemption Subaccount
- [28332] OtterSec (September 2025) - Solana Vault
- [28333] Hacken (September 2025)

Fork inheritance lineage and inherited audits are included when available.
