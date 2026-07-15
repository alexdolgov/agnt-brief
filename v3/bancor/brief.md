# Agentic Audit Brief: Bancor

## Export Authority

- Production state: **published scope**
- Raw selected rows: 34 across 7 audit(s)
- Eligible audit results: 11 (7 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DEAD - TVL dropped 19.2% over 90 days

## Project Overview

- Project: Bancor (`bancor`)
- Website: [https://app.bancor.network/](https://app.bancor.network/)
- Lifecycle: dead (Tier 0, 99.1% below peak)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 18 unique implementations (18 raw deployments)
- Coverage basis: 16/18 confirmed own live verified implementations (88.9%); conservative 88.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $22,652,984.00
- On-chain TVL (included contracts): $32,274,381.95
- TVL by chain: Ethereum $32,274,381.95

## Project Description

This brief describes the observed EVM deployment and audit surface for Bancor. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 29 contract row(s) across ethereum. Structural roles: 21 unclassified, 7 core, 1 supporting. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 29
- Structural roles: unclassified (21), core (7), supporting (1)
- Contract kinds: contract (29)
- Detected standards: ownable (5), erc20 (3), erc1967proxy (2), erc20permit (1)
- Frameworks: openzeppelin (8), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BancorGovernance (`0x892f48...5d00e4`, chain 1)
- BancorGovernance (`0xebfafc...f82eb2`, chain 1)
- BancorV1Migration (`0xd761d5...c3cc96`, chain 1)
- DSToken (`0x48fb25...387f94`, chain 1)
- PoolToken (`0xab05cf...68e344`, chain 1)
- SmartToken (`0x1f573d...a7ff1c`, chain 1)
- TransparentUpgradeableProxyImmutable (`0x649765...2bc373`, chain 1)
- TransparentUpgradeableProxyImmutable (`0xeef417...9dd4fb`, chain 1)

## Contract Surface Quality

- Indexed contracts: 29; live-surface contracts included: 29 (18 live, 11 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/19 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 16/18 (88.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Deployed-live implementations: 18 of 18 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 16/18
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 18
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): $1,640,762.84
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 16 match-unverified
- Tier 1 coverage: 83.3% (ChainSecurity, ConsenSys Diligence, OpenZeppelin)
- Note: This protocol is classified as [dead]. ASD of $1,640,762.84 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 13 | 72.2% | 2022-09 |
| OpenZeppelin | Tier 1 | 13 | 72.2% | 2022-08 |
| PeckShield | Tier 2 | 5 | 27.8% | 2022-04 |
| CertiK | Tier 2 | 1 | 5.6% | 2020-10 |
| Consensys Diligence | Tier 1 | 1 | 5.6% | 2017-05 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SmartToken | token | project_anchor | own_supporting | 0 | ethereum | unit-228880 | `0x1f573d...a7ff1c` | ✅ Audited |
| MasterVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-228896 | `0x649765...2bc373` | ✅ Audited |
| AutoCompoundingRewards | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228891 | `0x036f8b...6f6cdc` | ✅ Audited |
| BancorGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228882 | `0x892f48...5d00e4` | ✅ Audited |
| BancorNetwork | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228887 | `0xeef417...9dd4fb` | ✅ Audited |
| BancorNetworkInfo | periphery | project_anchor | own_supporting | 1 | ethereum | unit-228898 | `0x8e303d...d6e760` | ✅ Audited |
| BancorPortal | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228894 | `0x9f292c...e133d5` | ✅ Audited |
| BancorV1Migration | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-228884 | `0xd761d5...c3cc96` | ✅ Audited |
| BNTPool | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-228897 | `0x02651e...95eaca` | ✅ Audited |
| ExternalProtectionVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-228895 | `0xfd3166...2cad57` | ✅ Audited |
| ExternalRewardsVault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-228888 | `0x2a2a2b...a631e1` | ✅ Audited |
| NetworkSettings | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228890 | `0x83e181...09b14f` | ✅ Audited |
| PendingWithdrawals | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-228892 | `0x857eb0...ba9b8a` | ✅ Audited |
| PoolMigrator | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-228889 | `0x97cec0...e4a191` | ✅ Audited |
| PoolToken | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-228883 | `0xab05cf...68e344` | ✅ Audited |
| StandardRewards | unknown | project_anchor | own_supporting | 1 | ethereum | unit-228893 | `0xb0b958...00f372` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DSToken | token | project_anchor | own_supporting | 0 | ethereum | unit-228881 | `0x48fb25...387f94` | ⚠️ Unaudited |
| BancorGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228885 | `0xebfafc...f82eb2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-BancorV3-v1.0.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/PeckShield-Audit-Report-BancorV3-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | n/a | matched | 4 | 4 | 0 | 2 | n/a |
| [OpenZeppelin-V3-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-V3-Audit-Report.pdf) | OpenZeppelin | Audit | 2022-06 | stale | Direct | contract_name | matched | 12 | 10 | 0 | 41 | high |
| [OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf) | OpenZeppelin | Audit | 2022-08 | stale | Direct | n/a | matched | 2 | 2 | 0 | 7 | n/a |
| [ChainSecurity-V3-Audit-Report.pdf](https://github.com/bancorprotocol/contracts-v3/blob/dev/docs/audits/ChainSecurity-V3-Audit-Report.pdf) | ChainSecurity | Audit | 2022-09 | stale | Direct | n/a | matched | 13 | 11 | 0 | 4 | n/a |
| [drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view](https://drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view?usp=sharing) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view](https://drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view?usp=sharing) | PeckShield | Audit | 2020-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view](https://drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view?usp=sharing) | CertiK | Audit | 2020-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view](https://drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view?usp=sharing) | CertiK | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Bancor_smartcontract_halborn_report_V1.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Bancor_smartcontract_halborn_report_V1.pdf) | Halborn | Audit | 2020-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view](https://drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view?usp=sharing) | Halborn | Audit | 2020-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory)](https://gist.github.com/Arachnid/c65fd1bd61a8e0294aef95a4808edc78) | Consensys Diligence | Audit | 2017-05 | stale | Direct | n/a | matched | 1 | 0 | 0 | 19 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4264] PeckShield-Audit-Report-BancorV3-v1.0.pdf — matched: No reason recorded
- [4265] OpenZeppelin-V3-Audit-Report.pdf — matched: All contracts listed in the Scope section of the audit report were extracted. The audit date is the 'Fixes Finalized' date (2022-06-02) as the report completion date.
- [4266] OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf — matched: No reason recorded
- [4267] ChainSecurity-V3-Audit-Report.pdf — matched: No reason recorded
- [15068] drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view — no match: The report explicitly lists StakingRewardsStore and StakingRewards as targets in the findings. The audit date is clearly stated on the cover page and in the report metadata.
- [15069] drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view — matched: Audit covers Bancor's Governance and Liquidity Protection modules. Two contracts identified: BancorGovernance and LiquidityProtection. Date from cover page and latest audit report date.
- [15070] drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view — matched: Contracts explicitly mentioned in findings and scope description. BancorGovernance is the main contract; IExecutor, Owned, IOwned are referenced as part of the codebase.
- [15071] drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view — no match: Extracted contract names from findings sections; scope section not explicitly listed but contracts are clearly audited targets.
- [15072] Bancor_smartcontract_halborn_report_V1.pdf — no match: No reason recorded
- [15073] drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view — no match: Extracted 10 contracts from Appendix 2 - Files in Scope. Audit date inferred from 'DateJune 2020' at top of report, interpreted as June 2020, last day of month.
- [15074] c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | AutoCompoundingStakingRewards | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | BNTPool | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x02651e...95eaca` — deployed 2022-04-18 16:14:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | BancorNetwork | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xeef417...9dd4fb` — deployed 2022-04-18 16:13:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | NetworkSettings | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x83e181...09b14f` — deployed 2022-04-18 16:10:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | PendingWithdrawals | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x857eb0...ba9b8a` — deployed 2022-04-18 16:20:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-BancorV3-v1.0.pdf | PoolCollection | unmatched — not counted | — | — | no |
| OpenZeppelin-V3-Audit-Report.pdf | BancorPortal | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x9f292c...e133d5` — deployed 2022-04-18 16:31:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | IBancorPortal | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | BancorNetwork | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xeef417...9dd4fb` — deployed 2022-04-18 16:13:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | BancorNetworkInfo | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x8e303d...d6e760` — deployed 2022-04-18 16:27:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | BancorV1Migration | own contract | BancorV1Migration (selected) `0xd761d5...c3cc96` — deployed 2022-04-18 16:29:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | NetworkSettings | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x83e181...09b14f` — deployed 2022-04-18 16:10:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | PendingWithdrawals | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x857eb0...ba9b8a` — deployed 2022-04-18 16:20:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | IBancorNetwork | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IBancorNetworkInfo | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | INetworkSettings | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IPendingWithdrawals | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | BNTPool | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x02651e...95eaca` — deployed 2022-04-18 16:14:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | PoolCollection | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | PoolCollectionWithdrawal | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | PoolMigrator | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x97cec0...e4a191` — deployed 2022-04-18 16:21:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | PoolToken | own contract | PoolToken (selected) `0xab05cf...68e344` — deployed 2022-04-18 16:08:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | PoolTokenFactory | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IBNTPool | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IPoolCollection | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IPoolMigrator | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IPoolToken | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IPoolTokenFactory | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | AutoCompoundingStakingRewards | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | StakingRewardsMath | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | StandardStakingRewards | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IAutoCompoundingStakingRewards | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IStandardStakingRewards | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | ERC20Burnable | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | SafeERC20Ex | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Token | ambiguous — not counted | SmartToken (alternative) `0x1f573d...a7ff1c` — deployed 2017-06-10 19:02:40+03 — liveness: live (code_present_context)<br>DSToken (alternative) `0x48fb25...387f94` — deployed 2020-10-12 11:16:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OpenZeppelin-V3-Audit-Report.pdf | TokenLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IERC20Burnable | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | BlockNumber | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | FractionLibrary | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | MathEx | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Owned | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Time | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | TransparentUpgradeableProxyImmutable | ambiguous — not counted | TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x036f8b...6f6cdc` — deployed 2022-08-21 14:51:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0xeef417...9dd4fb` — deployed 2022-04-18 16:13:08+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x649765...2bc373` — deployed 2022-04-18 16:02:14+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0xfd3166...2cad57` — deployed 2022-04-18 16:03:57+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x97cec0...e4a191` — deployed 2022-04-18 16:21:38+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x2a2a2b...a631e1` — deployed 2022-04-18 16:06:05+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0xb0b958...00f372` — deployed 2022-04-18 16:32:39+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x83e181...09b14f` — deployed 2022-04-18 16:10:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x02651e...95eaca` — deployed 2022-04-18 16:14:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x857eb0...ba9b8a` — deployed 2022-04-18 16:20:03+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x8e303d...d6e760` — deployed 2022-04-18 16:27:36+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxyImmutable (proxy) (alternative) `0x9f292c...e133d5` — deployed 2022-04-18 16:31:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OpenZeppelin-V3-Audit-Report.pdf | Types | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Upgradeable | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | Utils | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IOwned | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IUpgradeable | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IVersioned | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | ExternalProtectionVault | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xfd3166...2cad57` — deployed 2022-04-18 16:03:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | ExternalRewardsVault | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x2a2a2b...a631e1` — deployed 2022-04-18 16:06:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | MasterVault | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x649765...2bc373` — deployed 2022-04-18 16:02:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-V3-Audit-Report.pdf | Vault | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IExternalProtectionVault | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IExternalRewardsVault | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IMasterVault | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-V3-Audit-Report.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | AutoCompoundingRewards | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x036f8b...6f6cdc` — deployed 2022-08-21 14:51:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | BNTPool | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x02651e...95eaca` — deployed 2022-04-18 16:14:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | Constants | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | Fraction | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | FractionLibrary | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | IAutoCompoundingRewards | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | MathEx | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | PoolCollection | unmatched — not counted | — | — | no |
| OpenZeppelin-AutoCompoundingRewards-Audit-Report.pdf | RewardsMath | unmatched — not counted | — | — | no |
| ChainSecurity-V3-Audit-Report.pdf | AutoCompoundingRewards | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x036f8b...6f6cdc` — deployed 2022-08-21 14:51:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | BNTPool | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x02651e...95eaca` — deployed 2022-04-18 16:14:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | BancorNetwork | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xeef417...9dd4fb` — deployed 2022-04-18 16:13:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | BancorNetworkInfo | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x8e303d...d6e760` — deployed 2022-04-18 16:27:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | BancorPortal | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x9f292c...e133d5` — deployed 2022-04-18 16:31:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | BancorV1Migration | own contract | BancorV1Migration (selected) `0xd761d5...c3cc96` — deployed 2022-04-18 16:29:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | ExternalProtectionVault | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xfd3166...2cad57` — deployed 2022-04-18 16:03:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | ExternalRewardVault | unmatched — not counted | — | — | no |
| ChainSecurity-V3-Audit-Report.pdf | MasterVault | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x649765...2bc373` — deployed 2022-04-18 16:02:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | MathEx | unmatched — not counted | — | — | no |
| ChainSecurity-V3-Audit-Report.pdf | NetworkSettings | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x83e181...09b14f` — deployed 2022-04-18 16:10:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | PendingWithdrawals | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x857eb0...ba9b8a` — deployed 2022-04-18 16:20:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | PoolCollection | unmatched — not counted | — | — | no |
| ChainSecurity-V3-Audit-Report.pdf | PoolMigrator | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0x97cec0...e4a191` — deployed 2022-04-18 16:21:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | PoolToken | own contract | PoolToken (selected) `0xab05cf...68e344` — deployed 2022-04-18 16:08:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity-V3-Audit-Report.pdf | PoolTokenFactory | unmatched — not counted | — | — | no |
| ChainSecurity-V3-Audit-Report.pdf | StandardRewards | own proxy deployment | TransparentUpgradeableProxyImmutable (proxy) (selected) `0xb0b958...00f372` — deployed 2022-04-18 16:32:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view | StakingRewardsStore | unmatched — not counted | — | Listed as target in findings PVE-001 and PVE-002 | no |
| drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view | StakingRewards | unmatched — not counted | — | Listed as target in findings PVE-003, PVE-004, and PVE-005 | no |
| drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view | BancorGovernance | own contract | BancorGovernance (selected) `0x892f48...5d00e4` — deployed 2020-10-12 15:11:57+03 — liveness: live (current_address_book_code)<br>BancorGovernance (alternative) `0xebfafc...f82eb2` — deployed 2023-10-16 17:47:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2020-10-12 was 1d from audit; next candidate 1100d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1baijgjazL4PXD98hD8lGHfuvwNruIUbU/view | LiquidityProtection | unmatched — not counted | — | Listed as target in findings PVE-007, PVE-008 | no |
| drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view | BancorGovernance | own contract | BancorGovernance (selected) `0x892f48...5d00e4` — deployed 2020-10-12 15:11:57+03 — liveness: live (current_address_book_code)<br>BancorGovernance (alternative) `0xebfafc...f82eb2` — deployed 2023-10-16 17:47:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2020-10-12 was 3d from audit; next candidate 1102d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view | IExecutor | unmatched — not counted | — | mentioned in findings BNC-02 and BNC-03 | no |
| drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view | Owned | unmatched — not counted | — | mentioned in findings BNC-02 and BNC-09 | no |
| drive.google.com/file/d/1gGszH3bSU6gUZG0oCN79tfYWCx7OfGDe/view | IOwned | unmatched — not counted | — | mentioned in finding BNC-02 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | Owned | unmatched — not counted | — | mentioned in findings BNC-01 and BNC-14 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | ReentrancyGuard | unmatched — not counted | — | mentioned in finding BNC-02 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | ConverterBase | unmatched — not counted | — | mentioned in findings BNC-03, BNC-04, BNC-14 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | LiquidityPoolV1Converter | unmatched — not counted | — | mentioned in findings BNC-03, BNC-04, BNC-06, BNC-07, BNC-08, BNC-09, BNC-10, BNC-14, BNC-16 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | ConverterUpgrader | unmatched — not counted | — | mentioned in findings BNC-04, BNC-10, BNC-14, BNC-15 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | LiquidityProtectionStore | unmatched — not counted | — | mentioned in findings BNC-04, BNC-12 | no |
| drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view | LiquidityProtection | unmatched — not counted | — | mentioned in findings BNC-04, BNC-08, BNC-09, BNC-12, BNC-14 | no |
| Bancor_smartcontract_halborn_report_V1.pdf | LiquidityPoolV2Converter | unmatched — not counted | — | — | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | BancorFormula | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | ConverterBase | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | LiquidityPoolV2Converter | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | PoolTokensContainer | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | TokenHandler | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | TokenHolder | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | Owned | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | PriceOracle | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | ReentrancyGuard | unmatched — not counted | — | listed in Appendix 2 - Files in Scope | no |
| drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view | Whitelist | unmatched — not counted | — | listed in Appendix 2 - Files in Scope (implied by test coverage table) | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | BancorChanger | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | CrowdsaleChanger | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | CrowdsaleController | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | ERC20Token | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | ERC20TokenInterface | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | EtherToken | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | IBancorFormula | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | IERC20Token | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | IEtherToken | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | IOwned | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | ISmartToken | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | ITokenChanger | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | ITokenHolder | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | Owned | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | SafeMath | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | SmartToken | own contract | SmartToken (selected) `0x1f573d...a7ff1c` — deployed 2017-06-10 19:02:40+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | SmartTokenController | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | SmartTokenInterface | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | TokenChangerInterface | unmatched — not counted | — | — | no |
| c65fd1bd61a8e0294aef95a4808edc78 (GitHub directory) | TokenHolder | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xebfafc...f82eb2` | BancorGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 34 own (27 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 95 unmatched
- Matched-own operational status: 34 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: temporal_name=2, unique_name=32

Zero-match audit list:

- [15068] drive.google.com/file/d/1Oinq3ZKneCwlteVigwn1TCkwR2fLL9Oj/view
- [15071] drive.google.com/file/d/1QvYBjlGsYKtuO6C82c4-eX4YF2F_NaPk/view
- [15072] Bancor_smartcontract_halborn_report_V1.pdf
- [15073] drive.google.com/file/d/1NaUEy29L5vk6lcBn0L4DRv3cWgdpAGQu/view

Fork inheritance lineage and inherited audits are included when available.
