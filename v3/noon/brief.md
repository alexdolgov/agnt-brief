# Agentic Audit Brief: Noon

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 6 audit(s)
- Eligible audit results: 7 (6 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Noon (`noon`)
- Website: [https://app.noon.capital](https://app.noon.capital)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, berachain, ethereum, hyperliquid, zksync-era
- Contract surface: 33 unique implementations (35 raw deployments)
- Coverage basis: 5/15 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $32,597,965.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Noon. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 30 contract row(s) across base, berachain, ethereum, hyperliquid, zksync-era. Structural roles: 13 unclassified, 10 supporting, 4 core, 3 infra. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 30
- Structural roles: unclassified (13), supporting (10), core (4), infra (3)
- Contract kinds: contract (30)
- Detected standards: chainlinkaggregator (4), accesscontrol (3), erc165 (3), erc1967proxy (3), ownable (3), ownable2step (2), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (9), chainlink (2), foundry (1), layerzero (1), openzeppelin-upgradeable (1), solady (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0469d9...84c0b6`, chain 324)
- UnnamedContract (`0xb6a09d...b04c4f`, chain 324)
- UnnamedContract (`0xa9bb96...565e85`, chain 8453)
- UnnamedContract (`0xf56d33...54592d`, chain 8453)
- UnnamedContract (`0x94e9f3...9a3c58`, chain 80094)
- UnnamedContract (`0xda67b4...7dc1ed`, chain 80094)
- UnnamedContract (`0xea84ac...9f0a02`, chain 80094)
- GnosisSafeProxy (`0x365bd6...e6d089`, chain 1)
- MinterHandlerV2 (`0xb91b36...9ac058`, chain 1)
- RedeemHandler (`0xf5deaf...6173e8`, chain 1)
- SafeProxy (`0x1ea169...77327f`, chain 1)
- SafeProxy (`0x364a77...0f68b9`, chain 1)
- SafeProxy (`0x646db2...d89daa`, chain 1)
- StorkChainlinkAdapter (`0x9a137f...20659b`, chain 999)
- StorkChainlinkAdapter (`0xf08c4a...c01e0e`, chain 999)
- Timelock (`0xe5e412...315a7f`, chain 1)
- TransparentUpgradeableProxy (`0x22c9e2...a92ed5`, chain 1)
- TransparentUpgradeableProxy (`0x56993a...a070d2`, chain 1)
- TransparentUpgradeableProxy (`0x5f9ee6...b471d7`, chain 1)
- TransparentUpgradeableProxy (`0xd3f583...58a0fb`, chain 1)
- TransparentUpgradeableProxy (`0xda67b4...7dc1ed`, chain 1)
- TransparentUpgradeableProxy (`0x34a279...4d999f`, chain 999)
- WithdrawalHandler (`0x0dabc0...0f9178`, chain 1)

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 30 (17 live, 13 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 22/46 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/15 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 22 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (9 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Deployed-live implementations: 22 of 33 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 5/15
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 33
- Raw deployments: 35
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 5 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 3 | 20.0% | 2025-03 |
| Hashlock | Tier 2 | 2 | 13.3% | 2026-03 |
| Not specified | Tier 2 | 1 | 6.7% | 2024-09 |
| Quantstamp | Tier 2 | 1 | 6.7% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RedeemHandler | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250040 | `0xf5deaf...6173e8` | ✅ Audited |
| stakeNOON | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250058 | `0x5f9ee6...b471d7` | ✅ Audited |
| stakeNOONVesting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250055 | `0x56993a...a070d2` | ✅ Audited |
| StakingVaultOFTUpgradeableHyperlane | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250060 | `0xe24a3d...08b91d` | ✅ Audited |
| WithdrawalHandler | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-250017 | `0x0dabc0...0f9178` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-250063 | `0x365bd6...e6d089` | ⚠️ Unaudited |
| MinterHandlerV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250032 | `0xb91b36...9ac058` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250019 | `0x3b26be...52ed01` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250036 | `0xc415cc...9a94aa` | ⚠️ Unaudited |
| NOON | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250056 | `0xd3f583...58a0fb` | ⚠️ Unaudited |
| RateProviderOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250029 | `0x7f7414...6e1a79` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 3 | ethereum | unit-250054 (3 proxies) | 3 deployments: ethereum `0x1ea169...77327f`; ethereum `0x364a77...0f68b9`; ethereum `0x646db2...d89daa` | ⚠️ Unaudited |
| SpectraPriceOracle | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250027 | `0x76d048...31a393` | ⚠️ Unaudited |
| StakedUSNHyperlane | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-250064 | `0x34a279...4d999f` | ⚠️ Unaudited |
| stakeNOONRewarder | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250059 | `0x22c9e2...a92ed5` | ⚠️ Unaudited |
| StakingVaultOFTUpgradeable | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-250028 | `0x78fc48...374f97` | ⚠️ Unaudited |
| StorkChainlinkAdapter | adapter | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250025 | `0x6e4635...93219e` | ⚠️ Unaudited |
| StorkChainlinkAdapter | adapter | project_anchor | own_supporting | 0 | hyperliquid | unit-250052 | `0x9a137f...20659b` | ⚠️ Unaudited |
| StorkChainlinkAdapter | adapter | project_anchor | own_supporting | 0 | hyperliquid | unit-250053 | `0xf08c4a...c01e0e` | ⚠️ Unaudited |
| Timelock | governance | project_anchor | own_supporting | 0 | ethereum | unit-250039 | `0xe5e412...315a7f` | ⚠️ Unaudited |
| USNUpgradeableHyperlane | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250057 | `0xda67b4...7dc1ed` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250033 | `0xbd1547...a421b0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-250034 | `0xc0d62e...3af8ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-250042 | `0x0469d9...84c0b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-250043 | `0xb6a09d...b04c4f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-250047 | `0x0e658e...525561` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-250048 | `0x34a279...4d999f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-250049 | `0x907fb2...ebf136` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-250050 | `0xa9bb96...565e85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-250051 | `0xf56d33...54592d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-250044 | `0x94e9f3...9a3c58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-250045 | `0xda67b4...7dc1ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-250046 | `0xea84ac...9f0a02` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view](https://drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view?usp=drive_link) | Quantstamp | Audit | 2024-09 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view](https://drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view?usp=drive_link) | Halborn | Audit | 2024-12 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 14 | high |
| [www.halborn.com/audits/noon-capital-stablecoin/staking-vault-c3c4ef](https://www.halborn.com/audits/noon-capital-stablecoin/staking-vault-c3c4ef) | Halborn | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 1 | high |
| [hashlock.com/audits/noon-capital](https://hashlock.com/audits/noon-capital) | Hashlock | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view](https://drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view?usp=sharing) | Hashlock | Audit | 2026-03 | fresh | Direct | contract_name | matched | 2 | 2 | 0 | 0 | high |
| [Noon USN Final Report v1.pdf](https://596450103-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FvawK0RJiR8PpG791Q3EH%2Fuploads%2F2FN1Itxrs7xSFnp58cSE%2FNoon%20USN%20Final%20Report%20v1.pdf) | Not specified | Audit | 2024-09 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [halborn_audit.pdf](https://596450103-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FvawK0RJiR8PpG791Q3EH%2Fuploads%2FWHNbilBdH3xBgXJiipOs%2Fhalborn_audit.pdf) | Halborn | Audit | 2024-12 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 14 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4259] drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view — matched: Scope section explicitly lists contracts/ files including interfaces and lib. Audit date from changelog: 2024-09-06 Final Report.
- [4260] drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view — matched: Scope section explicitly lists 16 contracts. Audit date is the end date of the engagement (December 19, 2024).
- [4261] www.halborn.com/audits/noon-capital-stablecoin/staking-vault-c3c4ef — matched: Two contracts in scope from the repository Noon-Core-Audit, assessed commit 38a1437. Audit date from engagement end date.
- [4262] hashlock.com/audits/noon-capital — no match: The provided text is a webpage listing multiple audit reports for Noon Capital, but does not contain the full text of any specific audit report. No contract names or scope details are identifiable.
- [4263] drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view — matched: Two contracts in scope: stakeNOON.sol and stakeNOONVesting.sol. Audit date is March 2026, converted to last day of month.
- [27393] Noon USN Final Report v1.pdf — matched: Scope section explicitly lists contracts/ directory files. Audit date from changelog: 2024-09-06 (Final Report).
- [27394] halborn_audit.pdf — matched: Scope section explicitly lists 16 contracts. Audit date from engagement end date (December 19, 2024).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | MinterHandler | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | RedeemHandler | own contract | RedeemHandler (selected) `0xf5deaf...6173e8` — deployed 2025-01-20 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | StakingVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | USN | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | IMinterHandler | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | IRedeemHandler | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | IStakingVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | IUSN | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1JVaUhXwhfB6eesWPNhSfHG3mJ7g_JpYL/view | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | USN | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | USNUpgradeable | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | MinterHandler | unmatched — not counted | — | listed in scope and referenced in findings | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | RedeemHandler | own contract | RedeemHandler (selected) `0xf5deaf...6173e8` — deployed 2025-01-20 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | WithdrawalHandler | own contract | WithdrawalHandler (selected) `0x0dabc0...0f9178` — deployed 2024-11-06 21:12:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | StakedUSNBasicOFT | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | StakingVault | unmatched — not counted | — | listed in scope and referenced in findings | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | StakingVaultOFTUpgradeable | unmatched — not counted | — | listed in scope and referenced in findings | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | IStakedUSNBasicOFT | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | IWithdrawalHandler | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | IUSN | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | IStakingVaultUpgradeable | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | IRedeemHandler | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | IStakingVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | IStakingVaultOFT | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1vWysiNkjxRrhP9xJ4HywuDXsDWNj7X7r/view | IMinterHandler | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/noon-capital-stablecoin/staking-vault-c3c4ef | StakingVaultOFTUpgradeableHyperlane | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe24a3d...08b91d` — deployed 2024-11-06 21:11:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.halborn.com/audits/noon-capital-stablecoin/staking-vault-c3c4ef | StakedUSNBasicOFTHyperlane | unmatched — not counted | — | listed in scope section | no |
| drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view | stakeNOON | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5f9ee6...b471d7` — deployed 2025-06-30 23:51:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/13YDEwoplZPotcu_rGE3Ox8IsOljh-SKx/view | stakeNOONVesting | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x56993a...a070d2` — deployed 2025-06-30 23:52:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Noon USN Final Report v1.pdf | MinterHandler | unmatched — not counted | — | listed in scope | no |
| Noon USN Final Report v1.pdf | RedeemHandler | own contract | RedeemHandler (selected) `0xf5deaf...6173e8` — deployed 2025-01-20 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Noon USN Final Report v1.pdf | StakingVault | unmatched — not counted | — | listed in scope | no |
| Noon USN Final Report v1.pdf | USN | unmatched — not counted | — | listed in scope | no |
| Noon USN Final Report v1.pdf | IMinterHandler | unmatched — not counted | — | listed in scope | no |
| Noon USN Final Report v1.pdf | IRedeemHandler | unmatched — not counted | — | listed in scope | no |
| Noon USN Final Report v1.pdf | IStakingVault | unmatched — not counted | — | listed in scope | no |
| Noon USN Final Report v1.pdf | IUSN | unmatched — not counted | — | listed in scope | no |
| Noon USN Final Report v1.pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | USN | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | USNUpgradeable | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | MinterHandler | unmatched — not counted | — | listed in scope and referenced in findings | no |
| halborn_audit.pdf | RedeemHandler | own contract | RedeemHandler (selected) `0xf5deaf...6173e8` — deployed 2025-01-20 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_audit.pdf | WithdrawalHandler | own contract | WithdrawalHandler (selected) `0x0dabc0...0f9178` — deployed 2024-11-06 21:12:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_audit.pdf | StakedUSNBasicOFT | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | StakingVault | unmatched — not counted | — | listed in scope and referenced in findings | no |
| halborn_audit.pdf | StakingVaultOFTUpgradeable | unmatched — not counted | — | listed in scope and referenced in findings | no |
| halborn_audit.pdf | IStakedUSNBasicOFT | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | IWithdrawalHandler | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | IUSN | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | IStakingVaultUpgradeable | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | IRedeemHandler | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | IStakingVault | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | IStakingVaultOFT | unmatched — not counted | — | listed in scope | no |
| halborn_audit.pdf | IMinterHandler | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xb91b36...9ac058` | MinterHandlerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd3f583...58a0fb` | NOON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x34a279...4d999f` | StakedUSNHyperlane | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x22c9e2...a92ed5` | stakeNOONRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x9a137f...20659b` | StorkChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xf08c4a...c01e0e` | StorkChainlinkAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe5e412...315a7f` | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xda67b4...7dc1ed` | USNUpgradeableHyperlane | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 45 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1
- Match method counts: unique_name=9

Zero-match audit list:

- [4262] hashlock.com/audits/noon-capital

Fork inheritance lineage and inherited audits are included when available.
