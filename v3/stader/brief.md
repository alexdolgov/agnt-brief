# Agentic Audit Brief: Stader

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Stader (`stader`)
- Website: [https://staderlabs.com](https://staderlabs.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum, fantom, optimism, polygon
- Contract surface: 63 unique implementations (88 raw deployments)
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

0 of 24 contracts are derived from known codebases. 24 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xc54b43...1453c2`, chain 10)
- UnnamedContract (`0x3bc5ac...5481e8`, chain 56)
- UnnamedContract (`0x1d734a...3ffa94`, chain 137)
- UnnamedContract (`0xed65c5...944dc7`, chain 42161)
- Auction (`0xa2aa24...1c4d31`, chain 1)
- ETHx (`0x4c22ff...283358`, chain 1)
- Penalty (`0x8d80ad...54c206`, chain 1)
- PermissionedPool (`0xf393d2...c3b4d1`, chain 1)
- PermissionlessPool (`0x30c250...bbb3f0`, chain 1)
- PoolSelector (`0x832279...1a86ab`, chain 1)
- Stader (`0x30d202...04d10f`, chain 1)
- StaderInsuranceFund (`0x254093...ae1f3d`, chain 1)
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
- VaultFactory (`0x133e3c...bb6150`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 28; live-surface rows included: 28 (28 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/19 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 23 of 63 unique; 40 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/44
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 63
- Raw deployments: 88
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

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Auction | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393095 | 2 deployments: ethereum `0x85a227...612569`; ethereum `0xa2aa24...1c4d31` | ⚠️ Unaudited |
| ETHx | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393081 | 2 deployments: ethereum `0x4c22ff...283358`; ethereum `0xa35b1b...00a15b` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x45b977...489ff6` | ⚠️ Unaudited |
| Greeter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6edaf4...ab99d0` | ⚠️ Unaudited |
| LSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4b229...4743d3` | ⚠️ Unaudited |
| MaticX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa43416...e0c095` | ⚠️ Unaudited |
| MaticX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf03a7e...b6b645` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x07751e...6d3754`; ethereum `0x2eb1e2...11ebb6`; ethereum `0x525164...1386a2`; ethereum `0xefe048...9cd04e` | ⚠️ Unaudited |
| NodeELRewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97c927...7367af` | ⚠️ Unaudited |
| OperatorRewardsCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ccabb...dfe250` | ⚠️ Unaudited |
| OperatorRewardsCollector | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393094 | `0x84ffdc...b2c335` | ⚠️ Unaudited |
| Penalty | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393092 | 2 deployments: ethereum `0x84645f...dc6ed6`; ethereum `0x8d80ad...54c206` | ⚠️ Unaudited |
| PermissionedNodeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x106c70...69b27b`; ethereum `0x506b06...877ffb` | ⚠️ Unaudited |
| PermissionedNodeRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-393083 | `0xaf42d7...ecf5dd` | ⚠️ Unaudited |
| PermissionedPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393099 | 2 deployments: ethereum `0x09134c...066572`; ethereum `0xf393d2...c3b4d1` | ⚠️ Unaudited |
| PermissionlessNodeRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-393097 | `0x4f4bfa...2fdcf1` | ⚠️ Unaudited |
| PermissionlessNodeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x53df50...c374bd`; ethereum `0xad22b3...62bd43` | ⚠️ Unaudited |
| PermissionlessPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393079 | 2 deployments: ethereum `0x30c250...bbb3f0`; ethereum `0xd1a72b...bbb6c5` | ⚠️ Unaudited |
| PoolSelector | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393090 | 2 deployments: ethereum `0x62e0b4...4603b0`; ethereum `0x832279...1a86ab` | ⚠️ Unaudited |
| PoolUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc4f53a...9719e4`; ethereum `0xe7fc2a...07bd7c` | ⚠️ Unaudited |
| PoolUtils | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393096 | `0xeda89e...bf763f` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x67b122...04c86e`; ethereum `0x6cbd89...b2cb2a` | ⚠️ Unaudited |
| SDCollateral | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393078 | `0x7af473...3ee91f` | ⚠️ Unaudited |
| SDCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0bd76...16d241` | ⚠️ Unaudited |
| SocializingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1082a4...39be6d`; ethereum `0xe87d8f...d6b057` | ⚠️ Unaudited |
| SocializingPool | core_logic | project_anchor | own_supporting | 2 | ethereum | unit-393098 (2 proxies) | 2 deployments: ethereum `0x1de458...eab2a4`; ethereum `0x9d4c31...a1d6fc` | ⚠️ Unaudited |
| Stader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x19d50b...57b663`; ethereum `0xc7452d...d7bff4` | ⚠️ Unaudited |
| Stader | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393063 | `0x30d202...04d10f` | ⚠️ Unaudited |
| StaderConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x060a6a...bd2c30`; ethereum `0x615bac...9f96dc` | ⚠️ Unaudited |
| StaderConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393088 | `0x4abef2...8d69db` | ⚠️ Unaudited |
| StaderInsuranceFund | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393076 | 2 deployments: ethereum `0x254093...ae1f3d`; ethereum `0xbe3781...d11f20` | ⚠️ Unaudited |
| StaderOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d4fef...ab584b`; ethereum `0x7d6dec...00924e` | ⚠️ Unaudited |
| StaderOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36a5d4...f6e414` | ⚠️ Unaudited |
| StaderOracle | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-393074 | `0xf64bae...c2a737` | ⚠️ Unaudited |
| StaderStakePoolsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9dceae...0d0ff5`; ethereum `0xb7bde2...61247f` | ⚠️ Unaudited |
| StaderStakePoolsManager | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-393086 | `0xcf5ea1...70d299` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1112d5...8068b9`; ethereum `0x20ea6f...3778be`; ethereum `0x49bd99...3135b1` | ⚠️ Unaudited |
| UserWithdrawalManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f9479...620e0c` | ⚠️ Unaudited |
| UserWithdrawalManager | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-393085 | `0x9f0491...8193a7` | ⚠️ Unaudited |
| ValidatorRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c8167...690580` | ⚠️ Unaudited |
| ValidatorRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1da069...aa2cc3`; ethereum `0x5cb2a9...d57666` | ⚠️ Unaudited |
| ValidatorRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf55644...870d77` | ⚠️ Unaudited |
| ValidatorWithdrawalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3073cc...f3458f`; ethereum `0x97619f...7dcc77` | ⚠️ Unaudited |
| VaultFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393072 | 2 deployments: ethereum `0x03abee...164e1e`; ethereum `0x133e3c...bb6150` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02131a...bf77e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12b3f7...1724af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b0cda...78845c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d1792...cb8935` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3409ca...bd567c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49913f...08a0e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x512d03...cb1bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b32c2...13bfae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3f26b...0c5244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5101f...ab8666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb9582...89e8a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce95a2...891d7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf05dd...c5c36c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5a397...1e473e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3f8ae...80fe8b` | ❓ Unverified |
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
| ethereum | `0x4c22ff...283358` | ETHx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84ffdc...b2c335` | OperatorRewardsCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84645f...dc6ed6` | Penalty | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf42d7...ecf5dd` | PermissionedNodeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09134c...066572` | PermissionedPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4f4bfa...2fdcf1` | PermissionlessNodeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x30c250...bbb3f0` | PermissionlessPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x62e0b4...4603b0` | PoolSelector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeda89e...bf763f` | PoolUtils | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7af473...3ee91f` | SDCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1de458...eab2a4` | SocializingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x30d202...04d10f` | Stader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4abef2...8d69db` | StaderConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x254093...ae1f3d` | StaderInsuranceFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf64bae...c2a737` | StaderOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcf5ea1...70d299` | StaderStakePoolsManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9f0491...8193a7` | UserWithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x03abee...164e1e` | VaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 19 |

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
