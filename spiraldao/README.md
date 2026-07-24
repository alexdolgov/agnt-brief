# Agentic Audit Brief: SpiralDao

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: SpiralDao (`spiraldao`)
- Website: [https://spiral.farm](https://spiral.farm)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, zksync-era
- Contract surface: 66 unique implementations (81 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $6,375,050.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for SpiralDao. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 22 contract row(s) across ethereum, zksync-era. Structural roles: 11 core, 11 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 22
- Structural roles: core (11), unclassified (11)
- Contract kinds: contract (22)
- Detected standards: erc20 (4), ownable (4), erc20permit (2)
- Frameworks: openzeppelin (11), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 22; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 31 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 35 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 66
- Raw deployments: 81
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| _ProxyAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256492 | `0x3fe5ea9e3fd7533d6744d72670c48be22ba0c59f` | ⚠️ Unaudited |
| _ProxyAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256503 | `0xae3f25462c06d21483738832b7160fae0ebf4f60` | ⚠️ Unaudited |
| _ProxyAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256506 | `0xb6ab0d266bdbfd79d2418e7d8200afe4e9902034` | ⚠️ Unaudited |
| Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa2cc610becc6cbacd4821a43650d52daf9a0ab0` | ⚠️ Unaudited |
| AuraAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcada317426fc4c7e34daeaae36e3dd649bac9e51` | ⚠️ Unaudited |
| AuraDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76760961b509f9337a7c03077becd23163c38f6f` | ⚠️ Unaudited |
| Coil | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-256498 | `0x823e1b82ce1dc147bbdb25a203f046afab1ce918` | ⚠️ Unaudited |
| GnosisSafe | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256507 | `0xc47ec74a753acb09e4679979afc428cde0209639` | ⚠️ Unaudited |
| GnosisSafe | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256510 | `0xf14efc7e46d57e107dee97239329bd7f56361c38` | ⚠️ Unaudited |
| ITO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1cde937a9b4aeb3fb4bccf60a766c1ea86fa8adc`; ethereum `0x2bc00dbc276f7df74df3e283ff03cf397c209c9d`; ethereum `0x40d81cff8239684d40e25b9db69c3f3f43478e65`; ethereum `0xa65f163649efb26699622bc27af1be0515e86261`; ethereum `0xffd19ec205948171c076efa54d3cb093d977a0aa` | ⚠️ Unaudited |
| LiquidLockerMAV | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256502 | `0xa2ab3fd45a369da49308d086556cc0096fdbb9d5` | ⚠️ Unaudited |
| LiquidLockerMAVv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x06d2d8e337a5106694f26e7989b07f693ce790b8`; ethereum `0x2b3088aa9dcbe16771679d9771843e3e28a2eb44`; ethereum `0x4cf8b3278a510e88dcad386f2d1ab24ada07c09d`; ethereum `0x78c0569175bd7d8db6b0bf6095f72204ebe2b5a2`; ethereum `0xe0d34100a2f810796f3506196f703b001bbf5622` | ⚠️ Unaudited |
| LockerDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x648868eea94177ab29152ea3246febfe77e1e95a`; ethereum `0x811c56dd311977658215d880413a1452b3f08a9b` | ⚠️ Unaudited |
| LockerMaster | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256521 | 2 deployments: ethereum `0x0b3bacb08142d1e37e67033f1e16a388ae96952e`; ethereum `0x58587fff8282070e6911fa203f64748ebe00341c` | ⚠️ Unaudited |
| LockerMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xbdaf82467779c2bb98229f90e73fb07d7fa10047`; ethereum `0xe68d41a4f2eeb0131962707fa4e61801d66bc748` | ⚠️ Unaudited |
| LockerMaster | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256509 | `0xdd5f42fdcfbd7f76abc76bdf28a309d9c660b3ab` | ⚠️ Unaudited |
| LockerMasterSDT | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256522 | 2 deployments: ethereum `0x4a6854b88bfc87369cb9ca1a488e1a2cf76748a1`; ethereum `0x90a62dc4bf3f805504a248a49efc469f406d41b9` | ⚠️ Unaudited |
| LockerStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x601bd4f450e55b3b9e35e7455a822e89b8587dff`; ethereum `0xab0da8b992fe8dab24d7d024865bf9e004df8451` | ⚠️ Unaudited |
| LockerToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256493 | `0x488b7c4b2731dc6a4121fc125439a025d7acfb62` | ⚠️ Unaudited |
| LockerToken | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256508 | `0xc54ff26fd5564ff46b14d9825a2259a0d53bf7d9` | ⚠️ Unaudited |
| LockerTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd93822158a81106f0ee358f9b89749d5de8f59dd`; ethereum `0xea0c89f6c7c4a929a426fe9bffaf11f3da9dae4d` | ⚠️ Unaudited |
| MasterMind | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x087fd5d07907f864285dbd94acef8cfb5bd26804` | ⚠️ Unaudited |
| MasterMind | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256511 | `0xface8ded582816e2f2cd4c6cc1cbd1accc9df65e` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0885ab00fbb9a130dee612847ef40c01abc14b42` | ⚠️ Unaudited |
| Rewarder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256496 | `0x72614b5d6f388b089f343723fcc3a5b4fc22b347` | ⚠️ Unaudited |
| Rewarder | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256505 | `0xb194c9ca2a86a560b7154f83aafe3ed4e9c3a1f1` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce3c963b3d301cf6b6a1d19f061963e369298a44` | ⚠️ Unaudited |
| RewarderVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256490 | `0x21fb7536afddaaaf59d65cc4f7336d4d812ec25f` | ⚠️ Unaudited |
| RewarderVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256491 | `0x31878ee03d3dea8c3a81b78fddc864c0be6f415f` | ⚠️ Unaudited |
| RewarderVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256504 | `0xaee1adcdeeb0c3b74a14b4ec1b667d021f0d71fd` | ⚠️ Unaudited |
| RewardEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0c2149a9db579d202a54f8ae999e74a093fcf263`; ethereum `0x886ac37d33c89cc1ccdbc6185cb6838f2b9fa19c` | ⚠️ Unaudited |
| Spiral | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-256499 | `0x85b6acaba696b9e4247175274f8263f99b4b9180` | ⚠️ Unaudited |
| SpiralMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa491d60c12774dd78201fdf400a8dd81524edafe` | ⚠️ Unaudited |
| SpiralRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fe67fd442889d158c311de734f45339ed9f3db3` | ⚠️ Unaudited |
| SpiralRouterV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256489 | `0x0340d9491fe7740af9c643c3c2b4126d23058c3b` | ⚠️ Unaudited |
| SpiralRouterV1 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256512 | `0xfb1371d494d608f6e5f6438f69f686953b0a50e8` | ⚠️ Unaudited |
| SpiralRouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2280dfeeafdd9ebaf5868ded8f1267749883e22b` | ⚠️ Unaudited |
| SpiralStaking | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256495 | `0x6701e792b7cd344bae763f27099eeb314a4b4943` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a05fc50803a2ffbd751297bb312109dd4d61974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b9de7ae88d8d67038e2e7ef419ea8cda90d216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a4621efd6073a3850f0f043bfe95aa2a57719a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ad11afb142967222596377189cc0df9e1df9b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56cc0a24ccacdef65db5a7ccb4f67a58612cc91f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56fc56bf43d1ff08b0d407183a2ab5916b7fb80a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59a5443a06c5193d5a4503b290c3332a854ee9d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ae737b642960e1aba1300eed4abbedcf1cbd6ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b07d571607ebc5a99249f8ca24374d319061ac5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256497 | `0x7fc5f1e044b55ae0c5b502f318e060fc0d9ed55c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256500 | `0x899a794bf0573a5461a8b45fde8cbbca233755e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89c1814b15e3a10d2e1b4670e7e154d84ced73af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a8ae53386a1ccb1903dfc9010a4af0a4a113293` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256501 | `0x943bdee19b88e60b36c048e88cbfc0c1250222fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9362c8f38cfb2cfd534b874b44be4a730325bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab1789b0a1830d897f55e7adae87612264271309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb79fd79b7570810cdcb9b7ff19eafc3fdaa8f837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc60879f8ac33efbbe5fab440e5d09b0712a9c944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc242be8053080a766010799e47e63c744964bb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce0e979fe0f98b27282877626658f2070855e8cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f03c1b95bc69c9a7424d5fa205fad1c5295015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec461fed40e2953d801ec6da5cce50357d2917a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-256513 | `0x010067d78c2a3999fe4a47ae106d7301fef8a2ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-256514 | `0x125049c3c0ef6b22222957470a5cfa366014d4e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-256515 | `0x1a4258ce322900d65cda7f61921c77fb6cbe9ee7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-256516 | `0x348a88808c122adb317cb8d71c0d24ce047fee22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-256518 | `0x8320df8741a3560d4e4c9ce0ab5b40f290f4d70f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-256519 | `0x9e7dafb74cc4dda3ad15eedc04fe24d8266c1e25` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 64
- Live contracts: 0
- Unknown liveness contracts: 64
- Source-verified contracts: 44
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=8, contamination review=8, exact address book overlap=13, source verified unclassified=17, unverified unclassified=18

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | contamination review | ITO<br>`0x1cde937a9b4aeb3fb4bccf60a766c1ea86fa8adc` | non_address_book | unknown | unknown | verified | n/a | `0x54473390680387436576d4eb8406d3ed1bab47d6` |
| ethereum | source verified unclassified | ITO<br>`0x2bc00dbc276f7df74df3e283ff03cf397c209c9d` | non_address_book | unknown | unknown | verified | n/a | `0x54473390680387436576d4eb8406d3ed1bab47d6` |
| ethereum | source verified unclassified | ITO<br>`0x40d81cff8239684d40e25b9db69c3f3f43478e65` | non_address_book | unknown | unknown | verified | n/a | `0x54473390680387436576d4eb8406d3ed1bab47d6` |
| ethereum | source verified unclassified | ITO<br>`0xa65f163649efb26699622bc27af1be0515e86261` | non_address_book | unknown | unknown | verified | n/a | `0x54473390680387436576d4eb8406d3ed1bab47d6` |
| ethereum | source verified unclassified | ITO<br>`0xffd19ec205948171c076efa54d3cb093d977a0aa` | non_address_book | unknown | unknown | verified | n/a | `0x54473390680387436576d4eb8406d3ed1bab47d6` |
| ethereum | source verified unclassified | Redemption<br>`0x0885ab00fbb9a130dee612847ef40c01abc14b42` | non_address_book | unknown | unknown | verified | n/a | `0x54473390680387436576d4eb8406d3ed1bab47d6` |
| ethereum | candidate review | LockerMaster<br>`0x58587fff8282070e6911fa203f64748ebe00341c` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | candidate review | LockerMaster<br>`0xbdaf82467779c2bb98229f90e73fb07d7fa10047` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | candidate review | LockerMaster<br>`0xdd5f42fdcfbd7f76abc76bdf28a309d9c660b3ab` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | candidate review | LockerMaster<br>`0xe68d41a4f2eeb0131962707fa4e61801d66bc748` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | candidate review | LockerMasterSDT<br>`0x90a62dc4bf3f805504a248a49efc469f406d41b9` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | candidate review | LockerStaking<br>`0xab0da8b992fe8dab24d7d024865bf9e004df8451` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | candidate review | UpgradableProxy<br>`0x0b3bacb08142d1e37e67033f1e16a388ae96952e` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | candidate review | UpgradableProxy<br>`0x4a6854b88bfc87369cb9ca1a488e1a2cf76748a1` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | contamination review | AuraAdapter<br>`0xcada317426fc4c7e34daeaae36e3dd649bac9e51` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | contamination review | AuraDelegate<br>`0x76760961b509f9337a7c03077becd23163c38f6f` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | contamination review | LiquidLockerMAV<br>`0xa2ab3fd45a369da49308d086556cc0096fdbb9d5` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | contamination review | LiquidLockerMAVv2<br>`0x06d2d8e337a5106694f26e7989b07f693ce790b8` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | contamination review | LockerDistributor<br>`0x648868eea94177ab29152ea3246febfe77e1e95a` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | contamination review | LockerStaking<br>`0x601bd4f450e55b3b9e35e7455a822e89b8587dff` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | contamination review | MasterMind<br>`0x087fd5d07907f864285dbd94acef8cfb5bd26804` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | exact address book overlap | _ProxyAdmin<br>`0x3fe5ea9e3fd7533d6744d72670c48be22ba0c59f` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | exact address book overlap | _ProxyAdmin<br>`0xae3f25462c06d21483738832b7160fae0ebf4f60` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | exact address book overlap | _ProxyAdmin<br>`0xb6ab0d266bdbfd79d2418e7d8200afe4e9902034` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | exact address book overlap | LockerToken<br>`0x488b7c4b2731dc6a4121fc125439a025d7acfb62` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | exact address book overlap | Rewarder<br>`0x72614b5d6f388b089f343723fcc3a5b4fc22b347` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | exact address book overlap | Rewarder<br>`0xb194c9ca2a86a560b7154f83aafe3ed4e9c3a1f1` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | exact address book overlap | RewarderVault<br>`0x21fb7536afddaaaf59d65cc4f7336d4d812ec25f` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | exact address book overlap | RewarderVault<br>`0x31878ee03d3dea8c3a81b78fddc864c0be6f415f` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | exact address book overlap | RewarderVault<br>`0xaee1adcdeeb0c3b74a14b4ec1b667d021f0d71fd` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | exact address book overlap | SpiralRouterV1<br>`0x0340d9491fe7740af9c643c3c2b4126d23058c3b` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | exact address book overlap | SpiralRouterV1<br>`0xfb1371d494d608f6e5f6438f69f686953b0a50e8` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x899a794bf0573a5461a8b45fde8cbbca233755e3` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x943bdee19b88e60b36c048e88cbfc0c1250222fa` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | source verified unclassified | Adapter<br>`0xfa2cc610becc6cbacd4821a43650d52daf9a0ab0` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | source verified unclassified | LiquidLockerMAVv2<br>`0x2b3088aa9dcbe16771679d9771843e3e28a2eb44` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | source verified unclassified | LiquidLockerMAVv2<br>`0x4cf8b3278a510e88dcad386f2d1ab24ada07c09d` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | source verified unclassified | LiquidLockerMAVv2<br>`0x78c0569175bd7d8db6b0bf6095f72204ebe2b5a2` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | source verified unclassified | LiquidLockerMAVv2<br>`0xe0d34100a2f810796f3506196f703b001bbf5622` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | source verified unclassified | LockerDistributor<br>`0x811c56dd311977658215d880413a1452b3f08a9b` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | source verified unclassified | LockerTokenWrapper<br>`0xd93822158a81106f0ee358f9b89749d5de8f59dd` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | source verified unclassified | Rewarder<br>`0xce3c963b3d301cf6b6a1d19f061963e369298a44` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | source verified unclassified | RewardEscrow<br>`0x0c2149a9db579d202a54f8ae999e74a093fcf263` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | source verified unclassified | RewardEscrow<br>`0x886ac37d33c89cc1ccdbc6185cb6838f2b9fa19c` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | source verified unclassified | SpiralMerkleDrop<br>`0xa491d60c12774dd78201fdf400a8dd81524edafe` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | source verified unclassified | SpiralRedeem<br>`0x4fe67fd442889d158c311de734f45339ed9f3db3` | non_address_book | unknown | unknown | verified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a05fc50803a2ffbd751297bb312109dd4d61974` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x16b9de7ae88d8d67038e2e7ef419ea8cda90d216` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a4621efd6073a3850f0f043bfe95aa2a57719a2` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ad11afb142967222596377189cc0df9e1df9b43` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56cc0a24ccacdef65db5a7ccb4f67a58612cc91f` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56fc56bf43d1ff08b0d407183a2ab5916b7fb80a` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x59a5443a06c5193d5a4503b290c3332a854ee9d2` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ae737b642960e1aba1300eed4abbedcf1cbd6ff` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6b07d571607ebc5a99249f8ca24374d319061ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89c1814b15e3a10d2e1b4670e7e154d84ced73af` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a8ae53386a1ccb1903dfc9010a4af0a4a113293` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa9362c8f38cfb2cfd534b874b44be4a730325bed` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab1789b0a1830d897f55e7adae87612264271309` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb79fd79b7570810cdcb9b7ff19eafc3fdaa8f837` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc60879f8ac33efbbe5fab440e5d09b0712a9c944` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc242be8053080a766010799e47e63c744964bb1` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd8f03c1b95bc69c9a7424d5fa205fad1c5295015` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xec461fed40e2953d801ec6da5cce50357d2917a5` | non_address_book | unknown | unknown | unverified | n/a | `0x6e2e85ee5bb7b4a85e904f1e0ed5b9c7b08e5384` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Spiral DAO Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [Spiral DAO Lockers Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20Lockers%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Spiral DAO SDT Adapter Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/Spiral%20DAO%20SDT%20Adapter%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2261] Spiral DAO Security Analysis by Pessimistic.pdf — no match: No reason recorded
- [2262] Spiral DAO Lockers Security Analysis by Pessimistic.pdf — no match: All contracts explicitly listed in scope section on page 3.
- [2263] Spiral DAO SDT Adapter Security Analysis by Pessimistic.pdf — no match: Three contracts explicitly listed in scope section on page 3.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Spiral DAO Security Analysis by Pessimistic.pdf | AuraAdapter | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | AuraDelegate | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | COIL | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | ConvexMainAdapter | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | ConvexMainDelegate | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | ConvexSingleAdapter | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | IFO | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | IMasterMind | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | MasterMind | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | Rewarder | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | Spiral | unmatched — not counted | — | — | no |
| Spiral DAO Security Analysis by Pessimistic.pdf | SpiralStaking | unmatched — not counted | — | — | no |
| Spiral DAO Lockers Security Analysis by Pessimistic.pdf | LiquidLockerMAV | unmatched — not counted | — | listed in scope | no |
| Spiral DAO Lockers Security Analysis by Pessimistic.pdf | LiquidLockerCRV | unmatched — not counted | — | listed in scope | no |
| Spiral DAO Lockers Security Analysis by Pessimistic.pdf | LockerStaking | unmatched — not counted | — | listed in scope | no |
| Spiral DAO Lockers Security Analysis by Pessimistic.pdf | LockerMaster | unmatched — not counted | — | listed in scope | no |
| Spiral DAO Lockers Security Analysis by Pessimistic.pdf | LiquidLockerMock | unmatched — not counted | — | listed in scope | no |
| Spiral DAO Lockers Security Analysis by Pessimistic.pdf | stLockerTokenMock | unmatched — not counted | — | listed in scope | no |
| Spiral DAO Lockers Security Analysis by Pessimistic.pdf | SafeLocker | unmatched — not counted | — | listed in scope | no |
| Spiral DAO SDT Adapter Security Analysis by Pessimistic.pdf | SDT | unmatched — not counted | — | listed in scope | no |
| Spiral DAO SDT Adapter Security Analysis by Pessimistic.pdf | LockerMasterSDT | unmatched — not counted | — | listed in scope | no |
| Spiral DAO SDT Adapter Security Analysis by Pessimistic.pdf | StakingSDT | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 22 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [2261] Spiral DAO Security Analysis by Pessimistic.pdf
- [2262] Spiral DAO Lockers Security Analysis by Pessimistic.pdf
- [2263] Spiral DAO SDT Adapter Security Analysis by Pessimistic.pdf

Fork inheritance lineage and inherited audits are included when available.
