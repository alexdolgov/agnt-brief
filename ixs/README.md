# Agentic Audit Brief: IXS

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: IXS (`ixs`)
- Website: [https://www.ixs.finance/](https://www.ixs.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, ethereum, polygon
- Contract surface: 45 unique implementations (46 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $160,172.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for IXS in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x73d7c860998ca3c01ce8c808f5577d94d545d1b4`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 44 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 1 of 45 unique; 44 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 35
- Unique implementations: 45
- Raw deployments: 46
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafeProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x9546a22c244497b6fb5338e4ff7c74c5accb3ddd` | ⚠️ Unaudited |
| IxsGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf65dd1b5de5655b56ae8beae49bb2bcb95b1f20c` | ⚠️ Unaudited |
| IxsSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f4c185dee9f069bc0f6a5d51ad39f33fb6fefb6` | ⚠️ Unaudited |
| IxsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x41d8eb8b8d69c28a3879e93cbb3c4c6b8d1a9680` | ⚠️ Unaudited |
| IxsTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83f08144e7383a81b0efeb87e421cf0da2748a39` | ⚠️ Unaudited |
| Presale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98dc0b47ba9338d10b46ef419ef3589b9b7749e7` | ⚠️ Unaudited |
| SimpleBatch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11ba4ff86ba4a0d7cbf3f80f0200e043936baf87` | ⚠️ Unaudited |
| TitaniumTech | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x52a29640447db7bae033b349006607829b02b76f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | base | n/a | 2 deployments: base `0x32714df9ee6ae513e04902c803e34eef7b558bb9`; base `0xf6a7ddc15b056b89ec2d3bbe307e323a02dbada8` | ⚠️ Unaudited |
| WrappedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ba17c639bdaecd8dc4aac37df062d17ee43a1b8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (35)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13ca6daab84af2a452f86ea437bb90c6217a220c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-243214 | `0x73d7c860998ca3c01ce8c808f5577d94d545d1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6a90091a77bcd49d48c412a54087981f915f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa4b0effc70e4871dccf01d9b81492fc135a7264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a2ca0c9f1b55bcec0d9e34c6a8ffb3fb3fbd3f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20f123c6db7c44e4cf596c9f36d6b8f03ff91037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x342172484664093b1f15eb10b91721ba3e3dc97a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x36cecc3be79700fe43a6d10f628623771811094d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3a59f4f6063a36478cd797edc83553239efd4bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x59dec694c21c708b9bf4051776249e148f0ab07f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x72f54bebabe8a26794b8bfea832b65b7bd88da37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7823d8e7ac5177aa0070478cebe0a788b755e0cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7bd813c056daf7acea41ace6d343b30b0260ee19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x92c98afee8cdb311d707592eaa3f3f8dea58c8ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0ab26d334d639d281d4307cf5ee4d661c3197b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad644f3cc768bc6dcef97096790e2210d5191cec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb25267a835abac12b4892d230c049991f1dc91a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2d0e0bc81494adb71ce9aa350cc875dae12d81d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe09910d2da99bad626f3747e0621df7c4aee1465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb5f55e6aad505203511a5ed78e1602c40b7cb62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xebb91ecc54ad18fb05647db7c1f0e63707d86d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf17726fbe0be89977bda39ea1d11b3fc7e17d86c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ab419261eee2b88c0a1c3bc588662c7e6244896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2ee28d1bbc2ecb1ffdb83e8055d585e9f0fb757f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f23844e56a71d4cf4e63f6113e2ae450d1683f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x38e1b66bdfd6df1e79567d9e4d34febf99823ed3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x44f07b446e14127136f3554a16014b49bc67d9e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x705cc6a781945a4b28cdbc7fc2319e5d854e315d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fa50d1845bad06b16cb91641d60e9924f87c876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9bd050fdabc286a0240211155224e9d49fe2eb29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9ff4b2bb2f986e59cbde711db9fef646ec849ad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac66d7900397295e5fcb5772add713c37901e1be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd36e633fff947957d7e925973e7211e7e6e5f854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe31d1c16adf62ae5aec0e788456d99d97d047851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe550bffb51eb645ea3b324d772a19ac449e92c5` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 35
- Live contracts: 0
- Unknown liveness contracts: 35
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=35

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x13ca6daab84af2a452f86ea437bb90c6217a220c` | non_address_book | unknown | unknown | unverified | n/a | `0xdcb9f78aab0a17379f4d5f7f4f568081e3fa668f` |
| unverified unclassified | UnnamedContract<br>`0x7e6a90091a77bcd49d48c412a54087981f915f7c` | non_address_book | unknown | unknown | unverified | n/a | `0xdcb9f78aab0a17379f4d5f7f4f568081e3fa668f` |
| unverified unclassified | UnnamedContract<br>`0xaa4b0effc70e4871dccf01d9b81492fc135a7264` | non_address_book | unknown | unknown | unverified | n/a | `0xdcb9f78aab0a17379f4d5f7f4f568081e3fa668f` |
| unverified unclassified | UnnamedContract<br>`0x0a2ca0c9f1b55bcec0d9e34c6a8ffb3fb3fbd3f9` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0x20f123c6db7c44e4cf596c9f36d6b8f03ff91037` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0x342172484664093b1f15eb10b91721ba3e3dc97a` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0x36cecc3be79700fe43a6d10f628623771811094d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0x3a59f4f6063a36478cd797edc83553239efd4bdb` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0x59dec694c21c708b9bf4051776249e148f0ab07f` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0x72f54bebabe8a26794b8bfea832b65b7bd88da37` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0x7823d8e7ac5177aa0070478cebe0a788b755e0cb` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0x7bd813c056daf7acea41ace6d343b30b0260ee19` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0x92c98afee8cdb311d707592eaa3f3f8dea58c8ec` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0xa0ab26d334d639d281d4307cf5ee4d661c3197b4` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0xad644f3cc768bc6dcef97096790e2210d5191cec` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0xb25267a835abac12b4892d230c049991f1dc91a0` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0xc2d0e0bc81494adb71ce9aa350cc875dae12d81d` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0xe09910d2da99bad626f3747e0621df7c4aee1465` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0xeb5f55e6aad505203511a5ed78e1602c40b7cb62` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0xebb91ecc54ad18fb05647db7c1f0e63707d86d79` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0xf17726fbe0be89977bda39ea1d11b3fc7e17d86c` | non_address_book | unknown | unknown | unverified | n/a | `0xa1299ad63e9a4e7c1ebee4ccce64c6b1051356ff` |
| unverified unclassified | UnnamedContract<br>`0x2ab419261eee2b88c0a1c3bc588662c7e6244896` | non_address_book | unknown | unknown | unverified | n/a | `0x18fe1335522e822fe20c2f55906eefe3b437ee6c` |
| unverified unclassified | UnnamedContract<br>`0x2ee28d1bbc2ecb1ffdb83e8055d585e9f0fb757f` | non_address_book | unknown | unknown | unverified | n/a | `0x18fe1335522e822fe20c2f55906eefe3b437ee6c` |
| unverified unclassified | UnnamedContract<br>`0x2f23844e56a71d4cf4e63f6113e2ae450d1683f6` | non_address_book | unknown | unknown | unverified | n/a | `0x18fe1335522e822fe20c2f55906eefe3b437ee6c` |
| unverified unclassified | UnnamedContract<br>`0x38e1b66bdfd6df1e79567d9e4d34febf99823ed3` | non_address_book | unknown | unknown | unverified | n/a | `0x18fe1335522e822fe20c2f55906eefe3b437ee6c` |
| unverified unclassified | UnnamedContract<br>`0x44f07b446e14127136f3554a16014b49bc67d9e6` | non_address_book | unknown | unknown | unverified | n/a | `0xc986189e264cb7b547143ef1aef4150f4a45803b` |
| unverified unclassified | UnnamedContract<br>`0x705cc6a781945a4b28cdbc7fc2319e5d854e315d` | non_address_book | unknown | unknown | unverified | n/a | `0x18fe1335522e822fe20c2f55906eefe3b437ee6c` |
| unverified unclassified | UnnamedContract<br>`0x8fa50d1845bad06b16cb91641d60e9924f87c876` | non_address_book | unknown | unknown | unverified | n/a | `0x18fe1335522e822fe20c2f55906eefe3b437ee6c` |
| unverified unclassified | UnnamedContract<br>`0x9bd050fdabc286a0240211155224e9d49fe2eb29` | non_address_book | unknown | unknown | unverified | n/a | `0x18fe1335522e822fe20c2f55906eefe3b437ee6c` |
| unverified unclassified | UnnamedContract<br>`0x9ff4b2bb2f986e59cbde711db9fef646ec849ad1` | non_address_book | unknown | unknown | unverified | n/a | `0x18fe1335522e822fe20c2f55906eefe3b437ee6c` |
| unverified unclassified | UnnamedContract<br>`0xac66d7900397295e5fcb5772add713c37901e1be` | non_address_book | unknown | unknown | unverified | n/a | `0x18fe1335522e822fe20c2f55906eefe3b437ee6c` |
| unverified unclassified | UnnamedContract<br>`0xd36e633fff947957d7e925973e7211e7e6e5f854` | non_address_book | unknown | unknown | unverified | n/a | `0x18fe1335522e822fe20c2f55906eefe3b437ee6c` |
| unverified unclassified | UnnamedContract<br>`0xe31d1c16adf62ae5aec0e788456d99d97d047851` | non_address_book | unknown | unknown | unverified | n/a | `0xc986189e264cb7b547143ef1aef4150f4a45803b` |
| unverified unclassified | UnnamedContract<br>`0xf6a7ddc15b056b89ec2d3bbe307e323a02dbada8` | non_address_book | unknown | unknown | unverified | n/a | `0x18fe1335522e822fe20c2f55906eefe3b437ee6c` |
| unverified unclassified | UnnamedContract<br>`0xfe550bffb51eb645ea3b324d772a19ac449e92c5` | non_address_book | unknown | unknown | unverified | n/a | `0xc986189e264cb7b547143ef1aef4150f4a45803b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [{% embed url="<>" %}](https://drive.google.com/file/d/1Q8pgZoqs0hju6Cw-27foFLPkr0AHFxVy/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1CTCqCypztxQMvSx4WMTxPNXbLfYc_xqc/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [{% embed url="<>" %}](https://drive.google.com/file/d/1wd_CsHQBQnfZ-mwAlVBE8hWQC71X-Zwc/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Smart Contract Audits](https://ixs.gitbook.io/ixs-gitbook/other-documentation/smart-contract-audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20591] {% embed url="<>" %} — no match: The provided text is a Google Drive page with no actual audit report content; only a sign-in prompt and a loading message are visible.
- [20592] {% embed url="<>" %} — no match: The provided text is a Google Drive page with a PDF link but no actual audit report content. No contract names or audit date could be extracted.
- [20593] {% embed url="<>" %} — no match: The provided text is a Google Drive page with a PDF link and an image, not the actual audit report content. No contract names or audit date could be extracted.
- [20594] Smart Contract Audits — no match: The provided text is a documentation index page with links to audit reports, but no contract names or scope details are included.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=4
- Match method counts: n/a

Zero-match audit list:

- [20591] {% embed url="<>" %}
- [20592] {% embed url="<>" %}
- [20593] {% embed url="<>" %}
- [20594] Smart Contract Audits

Fork inheritance lineage and inherited audits are included when available.
