# Agentic Audit Brief: Stader

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Stader (`stader`)
- Website: [https://staderlabs.com](https://staderlabs.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum, optimism, polygon
- Contract surface: 23 unique implementations (24 raw deployments)
- Coverage basis: 0/19 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $214,719,706.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Stader. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 28 contract row(s) across arbitrum, bsc, ethereum, optimism, polygon. Structural roles: 13 unclassified, 7 core, 4 infra, 4 supporting. 14 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 28
- Structural roles: unclassified (13), core (7), infra (4), supporting (4)
- Contract kinds: contract (28)
- Detected standards: erc1967proxy (11), accesscontrol (3), erc165 (3), erc20 (2), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (13), openzeppelin-upgradeable (3)
- Upgradeable-pattern rows: 14

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xc54b43...1453c2`, chain 10)
- UnnamedContract (`0x3bc5ac...5481e8`, chain 56)
- UnnamedContract (`0x1d734a...3ffa94`, chain 137)
- UnnamedContract (`0xed65c5...944dc7`, chain 42161)
- Stader (`0x30d202...04d10f`, chain 1)
- TransparentUpgradeableProxy (`0x1de458...eab2a4`, chain 1)
- TransparentUpgradeableProxy (`0x4f4bfa...2fdcf1`, chain 1)
- TransparentUpgradeableProxy (`0x7af473...3ee91f`, chain 1)
- TransparentUpgradeableProxy (`0x84ffdc...b2c335`, chain 1)
- TransparentUpgradeableProxy (`0x9d4c31...a1d6fc`, chain 1)
- TransparentUpgradeableProxy (`0x9f0491...8193a7`, chain 1)
- TransparentUpgradeableProxy (`0xa35b1b...00a15b`, chain 1)
- TransparentUpgradeableProxy (`0xaf42d7...ecf5dd`, chain 1)
- TransparentUpgradeableProxy (`0xcf5ea1...70d299`, chain 1)
- TransparentUpgradeableProxy (`0xeda89e...bf763f`, chain 1)
- TransparentUpgradeableProxy (`0xf64bae...c2a737`, chain 1)

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 28 (20 live, 8 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/19 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 19
- Deployed-live implementations: 23 of 23 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/19
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 23
- Raw deployments: 24
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Auction | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393095 | `0x85a227...612569` | ⚠️ Unaudited |
| ETHx | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393081 | `0xa35b1b...00a15b` | ⚠️ Unaudited |
| OperatorRewardsCollector | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393094 | `0x84ffdc...b2c335` | ⚠️ Unaudited |
| Penalty | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393092 | `0x84645f...dc6ed6` | ⚠️ Unaudited |
| PermissionedNodeRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-393083 | `0xaf42d7...ecf5dd` | ⚠️ Unaudited |
| PermissionedPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393099 | `0x09134c...066572` | ⚠️ Unaudited |
| PermissionlessNodeRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-393097 | `0x4f4bfa...2fdcf1` | ⚠️ Unaudited |
| PermissionlessPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393079 | `0xd1a72b...bbb6c5` | ⚠️ Unaudited |
| PoolSelector | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393090 | `0x62e0b4...4603b0` | ⚠️ Unaudited |
| PoolUtils | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393096 | `0xeda89e...bf763f` | ⚠️ Unaudited |
| SDCollateral | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393078 | `0x7af473...3ee91f` | ⚠️ Unaudited |
| SocializingPool | core_logic | project_anchor | own_supporting | 2 | ethereum | unit-393098 (2 proxies) | 2 deployments: ethereum `0x1de458...eab2a4`; ethereum `0x9d4c31...a1d6fc` | ⚠️ Unaudited |
| Stader | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393063 | `0x30d202...04d10f` | ⚠️ Unaudited |
| StaderConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393088 | `0x4abef2...8d69db` | ⚠️ Unaudited |
| StaderInsuranceFund | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393076 | `0xbe3781...d11f20` | ⚠️ Unaudited |
| StaderOracle | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-393074 | `0xf64bae...c2a737` | ⚠️ Unaudited |
| StaderStakePoolsManager | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393086 | `0xcf5ea1...70d299` | ⚠️ Unaudited |
| UserWithdrawalManager | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-393085 | `0x9f0491...8193a7` | ⚠️ Unaudited |
| VaultFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393072 | `0x03abee...164e1e` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393065 | `0xc54b43...1453c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-393070 | `0x3bc5ac...5481e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-393067 | `0x1d734a...3ffa94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393069 | `0xed65c5...944dc7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [kp5hfcaxs2prkdoscwibtrbjjddvoov3huhezsxknanxfaucm76a.arweave.net/U_pyiBeWnxUN0hWQGcQpSMdXOrs9DkzK6mgbcoKCZ_w](https://kp5hfcaxs2prkdoscwibtrbjjddvoov3huhezsxknanxfaucm76a.arweave.net/U_pyiBeWnxUN0hWQGcQpSMdXOrs9DkzK6mgbcoKCZ_w) | unknown | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Stader_Labs_LunaX_Contrracts_CosmWasm_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/CosmWasm%20Smart%20Contract%20Audits/Stader_Labs_LunaX_Contrracts_CosmWasm_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [drive.google.com/file/d/1_ORTCjtDX61LPIbijNm4podSKfj6jUfy/view](https://drive.google.com/file/d/1_ORTCjtDX61LPIbijNm4podSKfj6jUfy/view?usp=sharing) | unknown | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13909] kp5hfcaxs2prkdoscwibtrbjjddvoov3huhezsxknanxfaucm76a.arweave.net/U_pyiBeWnxUN0hWQGcQpSMdXOrs9DkzK6mgbcoKCZ_w — no match: Three contracts in scope: Airdrops Registry, Reward Contract, Staking Contract. Audit date from 'Delivery Date' field.
- [13910] Stader_Labs_LunaX_Contrracts_CosmWasm_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — no match: Scope section lists three CosmWasm smart contracts: airdrops-registry, reward, staking. Audit date is the end date of the engagement (February 7, 2022).
- [13911] drive.google.com/file/d/1_ORTCjtDX61LPIbijNm4podSKfj6jUfy/view — no match: Three contracts explicitly listed in scope section. Audit date from engagement end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| kp5hfcaxs2prkdoscwibtrbjjddvoov3huhezsxknanxfaucm76a.arweave.net/U_pyiBeWnxUN0hWQGcQpSMdXOrs9DkzK6mgbcoKCZ_w | Airdrops Registry | unmatched — not counted | — | listed in scope table | no |
| kp5hfcaxs2prkdoscwibtrbjjddvoov3huhezsxknanxfaucm76a.arweave.net/U_pyiBeWnxUN0hWQGcQpSMdXOrs9DkzK6mgbcoKCZ_w | Reward Contract | unmatched — not counted | — | listed in scope table | no |
| kp5hfcaxs2prkdoscwibtrbjjddvoov3huhezsxknanxfaucm76a.arweave.net/U_pyiBeWnxUN0hWQGcQpSMdXOrs9DkzK6mgbcoKCZ_w | Staking Contract | unmatched — not counted | — | listed in scope table | no |
| Stader_Labs_LunaX_Contrracts_CosmWasm_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | airdrops-registry | unmatched — not counted | — | listed in scope | no |
| Stader_Labs_LunaX_Contrracts_CosmWasm_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | reward | unmatched — not counted | — | listed in scope | no |
| Stader_Labs_LunaX_Contrracts_CosmWasm_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | staking | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1_ORTCjtDX61LPIbijNm4podSKfj6jUfy/view | Rewards | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1_ORTCjtDX61LPIbijNm4podSKfj6jUfy/view | Staking | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1_ORTCjtDX61LPIbijNm4podSKfj6jUfy/view | Undelegation | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x85a227...612569` | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa35b1b...00a15b` | ETHx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84ffdc...b2c335` | OperatorRewardsCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84645f...dc6ed6` | Penalty | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf42d7...ecf5dd` | PermissionedNodeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09134c...066572` | PermissionedPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4f4bfa...2fdcf1` | PermissionlessNodeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd1a72b...bbb6c5` | PermissionlessPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x62e0b4...4603b0` | PoolSelector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeda89e...bf763f` | PoolUtils | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7af473...3ee91f` | SDCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1de458...eab2a4` | SocializingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x30d202...04d10f` | Stader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4abef2...8d69db` | StaderConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbe3781...d11f20` | StaderInsuranceFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf64bae...c2a737` | StaderOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcf5ea1...70d299` | StaderStakePoolsManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9f0491...8193a7` | UserWithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x03abee...164e1e` | VaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 9 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [13909] kp5hfcaxs2prkdoscwibtrbjjddvoov3huhezsxknanxfaucm76a.arweave.net/U_pyiBeWnxUN0hWQGcQpSMdXOrs9DkzK6mgbcoKCZ_w
- [13910] Stader_Labs_LunaX_Contrracts_CosmWasm_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [13911] drive.google.com/file/d/1_ORTCjtDX61LPIbijNm4podSKfj6jUfy/view

Fork inheritance lineage and inherited audits are included when available.
