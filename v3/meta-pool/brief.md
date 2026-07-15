# Agentic Audit Brief: Meta Pool

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 6 (2 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Meta Pool (`meta-pool`)
- Website: [https://metapool.app](https://metapool.app)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: aurora, ethereum
- Contract surface: 18 unique implementations (18 raw deployments)
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

- UnnamedContract (`0x07f9f7...332e30`, chain 1313161554)
- UnnamedContract (`0x158efd...375eec`, chain 1313161554)
- UnnamedContract (`0x1cc2f3...115d01`, chain 1313161554)
- UnnamedContract (`0x3750be...76fd37`, chain 1313161554)
- UnnamedContract (`0x534bac...e62cf9`, chain 1313161554)
- UnnamedContract (`0x8a7feb...5de11d`, chain 1313161554)
- UnnamedContract (`0x98d45f...186ae0`, chain 1313161554)
- UnnamedContract (`0xc21ff0...357453`, chain 1313161554)
- UnnamedContract (`0xfbc142...e5d336`, chain 1313161554)
- GnosisSafeProxy (`0x24d966...79d971`, chain 1)
- MpDaoToken (`0x798bcb...8b361d`, chain 1)
- ProxyAdmin (`0x806f87...a1f182`, chain 1)

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (7 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/7 (42.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Deployed-live implementations: 16 of 18 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/7
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 18
- Raw deployments: 18
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
| unknown | Tier 2 | 3 | 42.9% | 2025-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LiquidUnstakePool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247620 | `0xdf261f...4f03cc` | ✅ Audited |
| Staking | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247618 | `0xd06f6a...6f4a0e` | ✅ Audited |
| Withdrawal | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247617 | `0xe55e5f...36af49` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-247619 | `0x24d966...79d971` | ⚠️ Unaudited |
| MpDaoToken | token | project_anchor | own_supporting | 0 | ethereum | unit-247598 | `0x798bcb...8b361d` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-247599 | `0x806f87...a1f182` | ⚠️ Unaudited |
| VotingPowerV1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247616 | `0xf8709e...104113` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-247602 | `0xfbb18e...551a02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247603 | `0x07f9f7...332e30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247605 | `0x158efd...375eec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247606 | `0x1cc2f3...115d01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247608 | `0x3750be...76fd37` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247610 | `0x534bac...e62cf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247611 | `0x8a7feb...5de11d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247612 | `0x98d45f...186ae0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247613 | `0xc21ff0...357453` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | aurora | unit-247614 | `0xc42c30...e8501d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-247615 | `0xfbc142...e5d336` | ❓ Unverified |

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
| MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf | LiquidUnstakePool | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xdf261f...4f03cc` — deployed 2023-07-14 01:17:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf | LiquidityPool | unmatched — not counted | — | — | no |
| MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf | StakedAuroraVault | unmatched — not counted | — | — | no |
| MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf | Staking | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd06f6a...6f4a0e` — deployed 2025-06-24 22:00:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf | StakingManager | unmatched — not counted | — | — | no |
| MetaPool_ETH_Staking_Staking_Pools_Aurora_Smart_Contract_Security.pdf | Withdrawal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe55e5f...36af49` — deployed 2023-07-14 01:17:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| spaces/5HvxIwoS8YhIHItpA1lt/uploads/Oaz0PbKGiCBzBI2hKZcv/NM_0434_METAPOOL_FINAL.pdf | Withdrawal | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe55e5f...36af49` — deployed 2023-07-14 01:17:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| ethereum | `0x798bcb...8b361d` | MpDaoToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf8709e...104113` | VotingPowerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 11 |

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
