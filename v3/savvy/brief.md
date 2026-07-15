# Agentic Audit Brief: Savvy

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Savvy (`savvy`)
- Website: [https://savvydefi.io](https://savvydefi.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum
- Contract surface: 75 unique implementations (164 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $122,822.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Savvy. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across arbitrum. Structural roles: 4 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: contract (4)
- Detected standards: accesscontrol (4), erc165 (4), erc20 (4)
- Frameworks: openzeppelin (4)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 4; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 71 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 64
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/53
- Verified + Unaudited implementations: 53
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 75
- Raw deployments: 164
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (53)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | arbitrum | n/a | 7 deployments: arbitrum `0x015081...01f7c8`; arbitrum `0x02c584...48d86a`; arbitrum `0x1ede03...46f00e`; arbitrum `0x39440d...078161`; arbitrum `0x3a47bd...c65fb9`; arbitrum `0x4056e9...d0cbb6`; arbitrum `0xca728c...1f1b08` | ⚠️ Unaudited |
| Allowlist | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x244360...140dd0`; arbitrum `0x2dfbce...25e035`; arbitrum `0x722399...4edb95` | ⚠️ Unaudited |
| GmdTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x3bda93...d83267`; arbitrum `0xbc4151...eaa960` | ⚠️ Unaudited |
| GmdTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x43e6ec...b8591b`; arbitrum `0x7628b5...5e59d3`; arbitrum `0xbf8aa2...144cda`; arbitrum `0xe3116e...d2f489` | ⚠️ Unaudited |
| GmdTokenAdapterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | arbitrum | n/a | 5 deployments: arbitrum `0x19dde2...74eb55`; arbitrum `0x20fa55...e3ede4`; arbitrum `0x3c47a3...8737cd`; arbitrum `0xb06b4e...e4a570`; arbitrum `0xc63c7d...1101db` | ⚠️ Unaudited |
| GmdTokenAdapterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x45d235...c05986`; arbitrum `0x632652...034dc0`; arbitrum `0xbe6acc...228802`; arbitrum `0xc16130...e0cded` | ⚠️ Unaudited |
| GmdV1RedemptionAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x596971...4f2cc0`; arbitrum `0x59796d...5e1628`; arbitrum `0x9a24f2...005d8b`; arbitrum `0x9dfe4e...913619`; arbitrum `0xb7624d...894434`; arbitrum `0xfd7eab...535ca6` | ⚠️ Unaudited |
| InfoAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x48d1e9...47a448`; arbitrum `0x68d54f...2c2a59` | ⚠️ Unaudited |
| InfoAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6b10e...64e0eb` | ⚠️ Unaudited |
| JonesDAOTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ae7ea...18fa4a` | ⚠️ Unaudited |
| JonesDAOTokenAdapterWithArbRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0282c1...8c8a1f`; arbitrum `0xb68098...1ffbff` | ⚠️ Unaudited |
| PassThroughAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x34e257...d5e54e`; arbitrum `0x6559d1...4f3180` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4332cb...650261` | ⚠️ Unaudited |
| SavvyAdminInfoAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90da19...0a2345` | ⚠️ Unaudited |
| SavvyBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x338e23...7e50d5`; arbitrum `0xbf837f...221a2f` | ⚠️ Unaudited |
| SavvyBooster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9bdaec...5126a7` | ⚠️ Unaudited |
| SavvyFrontendInfoAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x0f1ad6...d77d89`; arbitrum `0x176e40...e5a05d`; arbitrum `0x635234...08e4b8`; arbitrum `0x75f5e2...73dcdb`; arbitrum `0xc3f852...ff3a08`; arbitrum `0xe9348d...1fbc31` | ⚠️ Unaudited |
| SavvyFrontendInfoAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1fee87...7dd2c5`; arbitrum `0xaa5167...55f018` | ⚠️ Unaudited |
| SavvyFrontendInfoAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x73d05d...c6feba`; arbitrum `0x97dca4...e39db2` | ⚠️ Unaudited |
| SavvyLoanMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x2a0d14...076ea2`; arbitrum `0x716d2c...b30400`; arbitrum `0x7ba6a8...b7bc99`; arbitrum `0x916a0e...1ead00` | ⚠️ Unaudited |
| SavvyLoanMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x991382...19ce03` | ⚠️ Unaudited |
| SavvyLPRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x117b57...862e0a`; arbitrum `0xa2d99d...38b178` | ⚠️ Unaudited |
| SavvyLPRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x17216e...89657e`; arbitrum `0x8c1285...318050`; arbitrum `0xe73d40...b3cc3c` | ⚠️ Unaudited |
| SavvyLPRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3e54aa...dc0331`; arbitrum `0xb1865a...08dbf4` | ⚠️ Unaudited |
| SavvyPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x3204d8...7c142c`; arbitrum `0x36358a...0a4eda`; arbitrum `0x4505ab...7645b4`; arbitrum `0x5c4eb1...07f3ef` | ⚠️ Unaudited |
| SavvyPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x390e68...cdb795`; arbitrum `0x4f68f2...d60666` | ⚠️ Unaudited |
| SavvyPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x27bb0f...0f222f`; arbitrum `0xbcdab0...f00156` | ⚠️ Unaudited |
| SavvyProtocolToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-253845 | `0x43ab8f...b9f034` | ⚠️ Unaudited |
| SavvyRedlist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0d6554...2b8f7f`; arbitrum `0xd0b547...3a7c68` | ⚠️ Unaudited |
| SavvySage | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x2fccd0...4155e3`; arbitrum `0xcd5156...c10533`; arbitrum `0xf8f20c...078ff9` | ⚠️ Unaudited |
| SavvySage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5716f6...b67c5a`; arbitrum `0x78a370...2af857` | ⚠️ Unaudited |
| SavvySwap | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 4 deployments: arbitrum `0x03fa5a...969c07`; arbitrum `0x0e56d5...41027b`; arbitrum `0x8c1b86...640d85`; arbitrum `0xd9565a...1c8497` | ⚠️ Unaudited |
| SavvySwap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x268819...daa511`; arbitrum `0x37e509...90584f` | ⚠️ Unaudited |
| SavvySwap | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | arbitrum | n/a | 6 deployments: arbitrum `0x43be18...b2f691`; arbitrum `0x5a0cf6...062e75`; arbitrum `0x82bdc3...930df1`; arbitrum `0x9a3a3b...1626da`; arbitrum `0xb5231e...e14135`; arbitrum `0xbc4e86...3fa050` | ⚠️ Unaudited |
| SavvySyntheticToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-253846 | `0xeee183...b8c2a6` | ⚠️ Unaudited |
| SavvySyntheticToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-253847 | `0xf202ab...037706` | ⚠️ Unaudited |
| SavvySyntheticToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-253848 | `0xf77285...863ffa` | ⚠️ Unaudited |
| SavvyTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x81a71a...dbef51`; arbitrum `0xc85b72...ea6b98` | ⚠️ Unaudited |
| StaticAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x42b0d2...7c6f0a`; arbitrum `0x801321...3c796c`; arbitrum `0x8728ce...84beec`; arbitrum `0xcab388...64f937`; arbitrum `0xcba86f...63ff51`; arbitrum `0xcdff85...41dad3`; arbitrum `0xdd7e69...2413dd`; arbitrum `0xe5463b...8f46db` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0eda60...5c03e9`; arbitrum `0xbb8ea8...cf48f4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x32157b...fe8d1c`; arbitrum `0xb903d2...b90c6c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3701a0...0fc59e`; arbitrum `0xb4f572...94b0bc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3b1d73...843ff6`; arbitrum `0x9394b6...58224a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7beb54...247797`; arbitrum `0xf25f25...2f4633` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x882e25...8bb640`; arbitrum `0xede390...931688` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xa6f670...e22d8a`; arbitrum `0xb5b914...6df1d6` | ⚠️ Unaudited |
| VeSvy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x31dc0d...8fbad0`; arbitrum `0x9aeee4...5430ad` | ⚠️ Unaudited |
| VeSvy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x3b5e59...f86355`; arbitrum `0x4919df...516d6f`; arbitrum `0xe0d6db...cddc60` | ⚠️ Unaudited |
| WrappedStakedJonesToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x1bde8a...6451fa`; arbitrum `0x381948...d6aba4`; arbitrum `0xc0439b...828332`; arbitrum `0xfc5e95...52fd4e` | ⚠️ Unaudited |
| WrapTokenGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84b5f8...7225a8` | ⚠️ Unaudited |
| YieldStrategyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x06af08...04e35f`; arbitrum `0x23627e...f12c82`; arbitrum `0xdc82e2...9c7b9f` | ⚠️ Unaudited |
| YieldStrategyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x09dde6...87f806`; arbitrum `0x52c0be...79dd18` | ⚠️ Unaudited |
| YieldYakAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | arbitrum | n/a | 6 deployments: arbitrum `0x09da2f...0374b5`; arbitrum `0x22225f...4190bb`; arbitrum `0x63d7bd...0ade27`; arbitrum `0x673c05...6dcfc2`; arbitrum `0x8ceac2...fb06b2`; arbitrum `0xf85bf9...c5cdc2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00e1b9...bd7d4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x021fc8...bf8389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05d947...609419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0625d8...beee92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e06bb...1cf4fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x211e82...1cbfa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21a194...720dce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x334878...912946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3de7bc...a63fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f143e...d0f77b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x841060...2916d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ca8a5...46d443` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97d5d7...b8a81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f9690...e657ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa97ab3...6c5dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8a525...2c523b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb9dd16...def856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbdef7e...50168e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8a2a2...28a0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe679fc...7449c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6efae...10f2e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb5845...f9de25` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13804] Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | Allowlist | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | InfoAggregator | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | Math | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvyActionBatcher | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvyBooster | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvyLGE | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvyPositionManager | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvyPriceFeed | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvyRedlist | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvySage | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvySwap | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | SavvySyntheticToken | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | VeERC20Upgradeable | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | VeSvy | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | WrapTokenGateway | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | YieldStrategyManager | unmatched — not counted | — | — | no |
| Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf | YieldYakAdapter | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13804] Savvy_DeFi_Smart_Contract_Securtity_Audit_Report_Halborn_Final.pdf

Fork inheritance lineage and inherited audits are included when available.
