# Agentic Audit Brief: Meta Pool

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 6 (2 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Meta Pool (`meta-pool`)
- Website: [https://metapool.app](https://metapool.app)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: aurora, ethereum
- Contract surface: 30 unique implementations (37 raw deployments)
- Coverage basis: 3/7 confirmed own live verified implementations (42.9%); conservative 42.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $62,138,405.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Meta Pool. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across aurora, ethereum. Structural roles: 7 unclassified, 2 core, 2 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: unclassified (7), core (2), supporting (2)
- Contract kinds: contract (11)
- Detected standards: ownable (2), erc20 (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x07f9f7f963c5cd2bbffd30ccfb964be114332e30`, chain 1313161554)
- UnnamedContract (`0x158efd7b742ac77922f6dcc5ca6e0dfd0c375eec`, chain 1313161554)
- UnnamedContract (`0x1cc2f3a24f5c826af7f98a91b98bec2c05115d01`, chain 1313161554)
- UnnamedContract (`0x3750be57761707e3deedab9f888996f61376fd37`, chain 1313161554)
- UnnamedContract (`0x534bacf1126f60ea513f796a3377ff432be62cf9`, chain 1313161554)
- UnnamedContract (`0x8a7feb26ee5b202804ac11dd5a739a945c5de11d`, chain 1313161554)
- UnnamedContract (`0x98d45f7d4fcf992cb62fb439a889320400186ae0`, chain 1313161554)
- UnnamedContract (`0xc21ff01229e982d7c8b8691163b0a3cb8f357453`, chain 1313161554)
- UnnamedContract (`0xfbc1423a2a4453e162cdd535991bcc4143e5d336`, chain 1313161554)
- GnosisSafeProxy (`0x24d9664ba8384d94499d6698ab285b69e879d971`, chain 1)
- MpDaoToken (`0x798bcb35d2d48c8ce7ef8171860b8d53a98b361d`, chain 1)
- ProxyAdmin (`0x806f870ee04a2cc8bf2ad053baa5ed9999a1f182`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/7 (42.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 12 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 16 of 30 unique; 14 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/11
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 30
- Raw deployments: 37
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 27.3% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LiquidUnstakePool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247620 | 2 deployments: ethereum `0xdf261f967e87b2aa44e18a22f4ace5d7f74f03cc`; ethereum `0xea9fec1ff24b523424f21eea5c249f9b29a1aa81` | ✅ Audited |
| Staking | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247618 | 2 deployments: ethereum `0xd06f6a56c5f599cb375b616df306f32b7f6f4a0e`; ethereum `0xd3db79d2d00a6b82531d8ccf65c376d9ee9513ac` | ✅ Audited |
| Withdrawal | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247617 | 2 deployments: ethereum `0xcb894c063c74053c9401ac8fdd9a9f2bb1a03c61`; ethereum `0xe55e5fde6c25ac4ad75d867817d2d8a45836af49` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-247619 | `0x24d9664ba8384d94499d6698ab285b69e879d971` | ⚠️ Unaudited |
| LiquidUnstakePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xaba64e88f55c769d46c17beb4c70fde62d37513c`; ethereum `0xcadd976ae3a04352b4ab28865af07ad2c366d675` | ⚠️ Unaudited |
| MpDaoToken | token | project_anchor | own_supporting | 0 | ethereum | unit-247598 | `0x798bcb35d2d48c8ce7ef8171860b8d53a98b361d` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-247599 | `0x806f870ee04a2cc8bf2ad053baa5ed9999a1f182` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3747484567119592ff6841df399cf679955a111a`; ethereum `0xb112841c67d94d9536d356631224340e2ef27b39` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x48afbbd342f64ef8a9ab1c143719b63c2ad81710`; ethereum `0x56c517308ec9dcbe1db9d38e8b42bc7a948f7ffa` | ⚠️ Unaudited |
| VotingPowerV1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247616 | 2 deployments: ethereum `0x00b6e95a520112c288d1899c3d46b5f282e4bb89`; ethereum `0xf8709e3e8ed3db79744579d3fa1795b514104113` | ⚠️ Unaudited |
| Withdrawal | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3355fbbf8b85ebce83c5e9e846818b82b833cd9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20b911fbe210f1119fc2c95ff0b937874017605b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48e5628652c3410442aa9b82e4aeb344dabc9340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8edfe36cbcde7b783da6a563476d4509fa1fc543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8e57aeef2ff0ac2c5387e9b1d703fa1d61a4a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaedec015d61200325eebf57451c2b9f5714a75b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb19915e10d5f1503c43cd1166f1959863b148db1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc29541e118f45117ce12ab70a66698b7eb0f17f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-247602 | `0xfbb18ed0db241eb750e472e139b74a39cc551a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe394b5407599e30264b80ac7401c02915ee2106` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247603 | `0x07f9f7f963c5cd2bbffd30ccfb964be114332e30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247605 | `0x158efd7b742ac77922f6dcc5ca6e0dfd0c375eec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247606 | `0x1cc2f3a24f5c826af7f98a91b98bec2c05115d01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247608 | `0x3750be57761707e3deedab9f888996f61376fd37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247610 | `0x534bacf1126f60ea513f796a3377ff432be62cf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247611 | `0x8a7feb26ee5b202804ac11dd5a739a945c5de11d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247612 | `0x98d45f7d4fcf992cb62fb439a889320400186ae0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247613 | `0xc21ff01229e982d7c8b8691163b0a3cb8f357453` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | aurora | unit-247614 | `0xc42c30ac6cc15fac9bd938618bcaa1a1fae8501d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247615 | `0xfbc1423a2a4453e162cdd535991bcc4143e5d336` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [blocksec_lockup_v1.0-signed-audit.pdf](https://github.com/Meta-Pool/lockup-stake-metapool/blob/master/docs/blocksec_lockup_v1.0-signed-audit.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2024-06 Blocksec Audit.pdf](https://github.com/Meta-Pool/metapool-shortcut/blob/main/audit/2024-06%20Blocksec%20Audit.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf](https://github.com/Meta-Pool/staking-pool-aurora/blob/main/audits/MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf) | unknown | Audit | 2023-05 | stale | Direct | n/a | matched | 3 | 3 | 0 | 5 | n/a |
| [spaces/5HvxIwoS8YhIHItpA1lt/uploads/UMkSZziqO0AyoCGzxE7D/tpyrced_blocksec_metapool_restaking_v1.0-signed.pdf](https://1322102881-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5HvxIwoS8YhIHItpA1lt%2Fuploads%2FUMkSZziqO0AyoCGzxE7D%2Ftpyrced_blocksec_metapool_restaking_v1.0-signed.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [spaces/-MkhZe3MGAhTcvTLTzJF-887967055/uploads/BnkI1s1NHp6rjw4vBsZo/Blocksec_Audit_2.pdf](https://370551154-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MkhZe3MGAhTcvTLTzJF-887967055%2Fuploads%2FBnkI1s1NHp6rjw4vBsZo%2FBlocksec_Audit_2.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [spaces/5HvxIwoS8YhIHItpA1lt/uploads/Oaz0PbKGiCBzBI2hKZcv/NM_0434_METAPOOL_FINAL.pdf](https://1322102881-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F5HvxIwoS8YhIHItpA1lt%2Fuploads%2FOaz0PbKGiCBzBI2hKZcv%2FNM_0434_METAPOOL_FINAL.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4894] blocksec_lockup_v1.0-signed-audit.pdf — no match: The audit report covers the Lockup Stake Metapool contract, specifically the lockup-stake/src folder with files: account.rs, internal.rs, owner.rs, ping.rs, staking.rs, utils.rs, views.rs.
- [4895] 2024-06 Blocksec Audit.pdf — no match: Only one contract explicitly in scope: SwapToMpEthOnLineaV1. External contracts Bridge and mpETH are explicitly out of scope.
- [4896] MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf — matched: No reason recorded
- [15257] spaces/5HvxIwoS8YhIHItpA1lt/uploads/UMkSZziqO0AyoCGzxE7D/tpyrced_blocksec_metapool_restaking_v1.0-signed.pdf — no match: Scope defined as programs/mp-sol-restaking within the restaking program. Extracted contract names from findings and file paths.
- [15258] spaces/-MkhZe3MGAhTcvTLTzJF-887967055/uploads/BnkI1s1NHp6rjw4vBsZo/Blocksec_Audit_2.pdf — no match: The audit scope is the entire metapool directory; no individual contract files are listed. The report date is from the cover page.
- [15259] spaces/5HvxIwoS8YhIHItpA1lt/uploads/Oaz0PbKGiCBzBI2hKZcv/NM_0434_METAPOOL_FINAL.pdf — matched: All contracts listed in the 'Audited Files' table on page 3 are included. The audit date is the final report date (Feb 10, 2025) from the summary table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| blocksec_lockup_v1.0-signed-audit.pdf | Lockup Stake Metapool | unmatched — not counted | — | listed in scope section 1.1 | no |
| 2024-06 Blocksec Audit.pdf | SwapToMpEthOnLineaV1 | unmatched — not counted | — | Listed in scope section 1.1 and referenced in findings | no |
| MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf | AuroraStaking | unmatched — not counted | — | — | no |
| MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf | Depositor | unmatched — not counted | — | — | no |
| MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf | LiquidUnstakePool | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xdf261f967e87b2aa44e18a22f4ace5d7f74f03cc` — deployed 2023-07-14 01:17:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf | LiquidityPool | unmatched — not counted | — | — | no |
| MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf | StakedAuroraVault | unmatched — not counted | — | — | no |
| MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf | Staking | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd06f6a56c5f599cb375b616df306f32b7f6f4a0e` — deployed 2025-06-24 22:00:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf | StakingManager | unmatched — not counted | — | — | no |
| MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf | Withdrawal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe55e5fde6c25ac4ad75d867817d2d8a45836af49` — deployed 2023-07-14 01:17:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/UMkSZziqO0AyoCGzxE7D/tpyrced_blocksec_metapool_restaking_v1.0-signed.pdf | MainVaultState | unmatched — not counted | — | mentioned in findings as main_state account type | no |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/UMkSZziqO0AyoCGzxE7D/tpyrced_blocksec_metapool_restaking_v1.0-signed.pdf | SecondaryVaultState | unmatched — not counted | — | mentioned in findings as vault_state account type | no |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/UMkSZziqO0AyoCGzxE7D/tpyrced_blocksec_metapool_restaking_v1.0-signed.pdf | UnstakeTicket | unmatched — not counted | — | mentioned in findings as ticket account type | no |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/UMkSZziqO0AyoCGzxE7D/tpyrced_blocksec_metapool_restaking_v1.0-signed.pdf | Stake | unmatched — not counted | — | mentioned in findings as instruction handler | no |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/UMkSZziqO0AyoCGzxE7D/tpyrced_blocksec_metapool_restaking_v1.0-signed.pdf | Unstake | unmatched — not counted | — | mentioned in findings as instruction handler | no |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/UMkSZziqO0AyoCGzxE7D/tpyrced_blocksec_metapool_restaking_v1.0-signed.pdf | TicketClaim | unmatched — not counted | — | mentioned in findings as instruction handler | no |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/UMkSZziqO0AyoCGzxE7D/tpyrced_blocksec_metapool_restaking_v1.0-signed.pdf | CreateSecondaryVault | unmatched — not counted | — | mentioned in findings as instruction handler | no |
| spaces/-MkhZe3MGAhTcvTLTzJF-887967055/uploads/BnkI1s1NHp6rjw4vBsZo/Blocksec_Audit_2.pdf | Meta Pool | unmatched — not counted | — | The audit scope includes the contract under the directory metapool in the Meta Staking Pool repository. | no |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/Oaz0PbKGiCBzBI2hKZcv/NM_0434_METAPOOL_FINAL.pdf | StakedIP | unmatched — not counted | — | Listed in Audited Files table | no |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/Oaz0PbKGiCBzBI2hKZcv/NM_0434_METAPOOL_FINAL.pdf | RewardsManager | unmatched — not counted | — | Listed in Audited Files table | no |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/Oaz0PbKGiCBzBI2hKZcv/NM_0434_METAPOOL_FINAL.pdf | Withdrawal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe55e5fde6c25ac4ad75d867817d2d8a45836af49` — deployed 2023-07-14 01:17:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/Oaz0PbKGiCBzBI2hKZcv/NM_0434_METAPOOL_FINAL.pdf | IStakedIP | unmatched — not counted | — | Listed in Audited Files table | no |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/Oaz0PbKGiCBzBI2hKZcv/NM_0434_METAPOOL_FINAL.pdf | IWIP | unmatched — not counted | — | Listed in Audited Files table | no |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/Oaz0PbKGiCBzBI2hKZcv/NM_0434_METAPOOL_FINAL.pdf | IRewardsManager | unmatched — not counted | — | Listed in Audited Files table | no |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/Oaz0PbKGiCBzBI2hKZcv/NM_0434_METAPOOL_FINAL.pdf | IWithdrawal | unmatched — not counted | — | Listed in Audited Files table | no |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/Oaz0PbKGiCBzBI2hKZcv/NM_0434_METAPOOL_FINAL.pdf | IStakedIPVaultOperations | unmatched — not counted | — | Listed in Audited Files table | no |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/Oaz0PbKGiCBzBI2hKZcv/NM_0434_METAPOOL_FINAL.pdf | IIPTokenStakingFull | unmatched — not counted | — | Listed in Audited Files table | no |
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/Oaz0PbKGiCBzBI2hKZcv/NM_0434_METAPOOL_FINAL.pdf | IIPTokenStaking | unmatched — not counted | — | Listed in Audited Files table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x798bcb35d2d48c8ce7ef8171860b8d53a98b361d` | MpDaoToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00b6e95a520112c288d1899c3d46b5f282e4bb89` | VotingPowerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 24 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=4

Zero-match audit list:

- [4894] blocksec_lockup_v1.0-signed-audit.pdf
- [4895] 2024-06 Blocksec Audit.pdf
- [15257] spaces/5HvxIwoS8YhIHItpA1lt/uploads/UMkSZziqO0AyoCGzxE7D/tpyrced_blocksec_metapool_restaking_v1.0-signed.pdf
- [15258] spaces/-MkhZe3MGAhTcvTLTzJF-887967055/uploads/BnkI1s1NHp6rjw4vBsZo/Blocksec_Audit_2.pdf

Fork inheritance lineage and inherited audits are included when available.
