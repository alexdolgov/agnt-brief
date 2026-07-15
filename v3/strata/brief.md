# Agentic Audit Brief: Strata

## Export Authority

- Production state: **published scope**
- Raw selected rows: 17 across 3 audit(s)
- Eligible audit results: 7 (3 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Strata (`strata`)
- Website: [https://strata.money](https://strata.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 124 unique implementations (229 raw deployments)
- Coverage basis: 10/82 confirmed own live verified implementations (12.2%); conservative 12.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $66,577,693.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Strata. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 144 contract row(s) across ethereum. Structural roles: 117 unclassified, 10 infra, 10 supporting, 7 core. 12 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 144
- Structural roles: unclassified (117), infra (10), supporting (10), core (7)
- Contract kinds: contract (144)
- Detected standards: erc1967proxy (8), accesscontrol (5), erc165 (5), ownable (3), ownable2step (3)
- Frameworks: openzeppelin (25), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 12

## Fork Analysis

0 of 141 contracts are derived from known codebases. 141 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x277d26...2cea5b`, chain 1)
- AaveAprPairProvider (`0x1c1377...f0af73`, chain 1)
- AaveOracleAprPairProvider (`0x991e78...b929aa`, chain 1)
- AccessControlManager (`0x040ef2...f8c74a`, chain 1)
- AccessControlManager (`0x06e84a...8203e4`, chain 1)
- AccessControlManager (`0x6ce1aa...601c36`, chain 1)
- AccessControlManager (`0xd5d18d...e44014`, chain 1)
- AccessControlManager (`0xd61990...d399b8`, chain 1)
- Accounting (`0x5a8d34...59cbff`, chain 1)
- Accounting (`0x8cabd1...048643`, chain 1)
- Accounting (`0xeb97f3...dea057`, chain 1)
- AprPairFeed (`0x74188a...0fbadc`, chain 1)
- AprPairFeed (`0x80f7b3...41ecf9`, chain 1)
- AprPairFeed (`0xbd1844...94d5bb`, chain 1)
- AprPairFeed (`0xd9d971...baaf08`, chain 1)
- AprPairFeed (`0xed83dc...8000e9`, chain 1)
- AprPairFeed (`0xfb0294...668e8a`, chain 1)
- ConstantOracleAprPairProvider (`0x8b7258...018bf0`, chain 1)
- ConstantOracleAprPairProvider (`0xd7bac4...b9eadc`, chain 1)
- DiscreteAccounting (`0x628bdd...35872e`, chain 1)
- DiscreteAccounting (`0xd6e34b...e6f0c5`, chain 1)
- DiscreteAccounting (`0xd8ef4b...d4f0b8`, chain 1)
- ERC20Cooldown (`0x5a428c...75c1a4`, chain 1)
- ERC20Cooldown (`0x73dfde...292219`, chain 1)
- ERC20Cooldown (`0x74c74f...a78913`, chain 1)
- ERC20Cooldown (`0x940a04...925933`, chain 1)
- ERC20Cooldown (`0xa14009...74db9d`, chain 1)
- ERC20Cooldown (`0xc284ae...93a84e`, chain 1)
- FigureCooldownRequestImpl (`0x837ab0...127da4`, chain 1)
- FigureStrategy (`0x46d68d...697376`, chain 1)
- GnosisSafeProxy (`0xa27ca9...b68b50`, chain 1)
- MidasCooldownRequestImpl (`0x6ce2fa...a12348`, chain 1)
- MidasCooldownRequestImpl (`0xb4605c...f7752e`, chain 1)
- SafeProxy (`0x4be374...694ef4`, chain 1)
- SaturnAprPairProvider (`0x4bcc15...854be8`, chain 1)
- SaturnCooldownRequestImpl (`0xfb8db7...9ac84e`, chain 1)
- SharesCooldown (`0x25f7ce...58bcae`, chain 1)
- SharesCooldown (`0x655c80...8a1e58`, chain 1)
- SharesCooldown (`0x8da07f...6638cf`, chain 1)
- SharesCooldown (`0xa9e7e9...4982b8`, chain 1)
- SharesCooldown (`0xb56240...b01a08`, chain 1)
- sNUSDAprPairProvider (`0x12db79...2f9eab`, chain 1)
- sNUSDStrategy (`0x4c8fa0...4af269`, chain 1)
- StrataCDO (`0x0f8d08...448bc1`, chain 1)
- StrataCDO (`0x3afc31...05d0a9`, chain 1)
- StrataCDO (`0x93f45b...4fa358`, chain 1)
- StrataCDO (`0x94a956...94c24c`, chain 1)
- StrataCDO (`0xb3d4f2...9c79ba`, chain 1)
- StrataCDO (`0xf39e55...fc4e00`, chain 1)
- StrataMasterChef (`0x4f2682...7e022d`, chain 1)
- StrataMasterChef (`0xb2a3cf...77b706`, chain 1)
- sUSDeStrategy (`0x2b9796...adb107`, chain 1)
- Tranche (`0x461d16...5d0b83`, chain 1)
- Tranche (`0x5c8df1...72a6db`, chain 1)
- Tranche (`0x86e638...cd739e`, chain 1)
- Tranche (`0x901443...19209d`, chain 1)
- Tranche (`0x96f88f...30c1c9`, chain 1)
- Tranche (`0xb4eea6...44f2b1`, chain 1)
- Tranche (`0xb8e946...80499e`, chain 1)
- Tranche (`0xc71b90...07e767`, chain 1)
- Tranche (`0xe89405...30210b`, chain 1)
- Tranche (`0xe91869...5ac09c`, chain 1)
- Tranche (`0xecbde9...4de952`, chain 1)
- Tranche (`0xfcda74...e0d847`, chain 1)
- TrancheDepositor (`0x127f27...d4eb80`, chain 1)
- TrancheDepositor (`0x22f929...4cabaa`, chain 1)
- TrancheDepositor (`0x6e5a69...26b20b`, chain 1)
- TransparentUpgradeableProxy (`0x011e55...5a455d`, chain 1)
- TransparentUpgradeableProxy (`0x03dbbc...11dbcc`, chain 1)
- TransparentUpgradeableProxy (`0x0404ea...cdf1ce`, chain 1)
- TransparentUpgradeableProxy (`0x0e90b8...6267d7`, chain 1)
- TransparentUpgradeableProxy (`0x0f93ba...818994`, chain 1)
- TransparentUpgradeableProxy (`0x1695a2...b4d171`, chain 1)
- TransparentUpgradeableProxy (`0x180f7b...e8cf88`, chain 1)
- TransparentUpgradeableProxy (`0x1abc3c...907990`, chain 1)
- TransparentUpgradeableProxy (`0x21d616...579115`, chain 1)
- TransparentUpgradeableProxy (`0x25138d...2929ab`, chain 1)
- TransparentUpgradeableProxy (`0x2a5236...2bc749`, chain 1)
- TransparentUpgradeableProxy (`0x2bb416...800ec2`, chain 1)
- TransparentUpgradeableProxy (`0x35bff7...9232eb`, chain 1)
- TransparentUpgradeableProxy (`0x39c7e6...27e6cf`, chain 1)
- TransparentUpgradeableProxy (`0x3cef2c...b5de88`, chain 1)
- TransparentUpgradeableProxy (`0x3d7d6f...cdc003`, chain 1)
- TransparentUpgradeableProxy (`0x440938...1bfbaa`, chain 1)
- TransparentUpgradeableProxy (`0x4c2680...72296e`, chain 1)
- TransparentUpgradeableProxy (`0x50e850...52f47e`, chain 1)
- TransparentUpgradeableProxy (`0x5efe7c...a2aa52`, chain 1)
- TransparentUpgradeableProxy (`0x60dae2...47eb79`, chain 1)
- TransparentUpgradeableProxy (`0x613d17...120e5f`, chain 1)
- TransparentUpgradeableProxy (`0x616af7...9381ac`, chain 1)
- TransparentUpgradeableProxy (`0x627ea6...129b53`, chain 1)
- TransparentUpgradeableProxy (`0x65a445...f589db`, chain 1)
- TransparentUpgradeableProxy (`0x6f6904...d681c1`, chain 1)
- TransparentUpgradeableProxy (`0x71ec07...788fda`, chain 1)
- TransparentUpgradeableProxy (`0x735edd...610f74`, chain 1)
- TransparentUpgradeableProxy (`0x7910cb...08805c`, chain 1)
- TransparentUpgradeableProxy (`0x7945e4...cb4bf7`, chain 1)
- TransparentUpgradeableProxy (`0x7a0f6f...89b30e`, chain 1)
- TransparentUpgradeableProxy (`0x7b6c96...bedd10`, chain 1)
- TransparentUpgradeableProxy (`0x80187f...f51c9e`, chain 1)
- TransparentUpgradeableProxy (`0x807150...fd184d`, chain 1)
- TransparentUpgradeableProxy (`0x83c11b...0a59e1`, chain 1)
- TransparentUpgradeableProxy (`0x908b39...6c0e20`, chain 1)
- TransparentUpgradeableProxy (`0xa436c5...355102`, chain 1)
- TransparentUpgradeableProxy (`0xa61776...fb846b`, chain 1)
- TransparentUpgradeableProxy (`0xaf32d4...f2b228`, chain 1)
- TransparentUpgradeableProxy (`0xbe71d2...e324be`, chain 1)
- TransparentUpgradeableProxy (`0xc58d04...a53d8f`, chain 1)
- TransparentUpgradeableProxy (`0xcced21...c40d60`, chain 1)
- TransparentUpgradeableProxy (`0xce7043...deb3f1`, chain 1)
- TransparentUpgradeableProxy (`0xce7b00...97b090`, chain 1)
- TransparentUpgradeableProxy (`0xd1fc85...82e4e9`, chain 1)
- TransparentUpgradeableProxy (`0xd2923d...e32044`, chain 1)
- TransparentUpgradeableProxy (`0xd6dad1...6a6faf`, chain 1)
- TransparentUpgradeableProxy (`0xd8ea64...2e7823`, chain 1)
- TransparentUpgradeableProxy (`0xdbf4fb...e7099f`, chain 1)
- TransparentUpgradeableProxy (`0xe4a3a2...bb2a4a`, chain 1)
- TransparentUpgradeableProxy (`0xe851de...455b66`, chain 1)
- TransparentUpgradeableProxy (`0xeb205d...78714b`, chain 1)
- TransparentUpgradeableProxy (`0xeb30f8...b4f693`, chain 1)
- TransparentUpgradeableProxy (`0xece480...f28d64`, chain 1)
- TransparentUpgradeableProxy (`0xeed127...c18c75`, chain 1)
- TransparentUpgradeableProxy (`0xef9911...e7a95a`, chain 1)
- TransparentUpgradeableProxy (`0xf4c91f...4c2f27`, chain 1)
- TransparentUpgradeableProxy (`0xf4ff82...7c4ddc`, chain 1)
- TransparentUpgradeableProxy (`0xf7eb8d...821688`, chain 1)
- TransparentUpgradeableProxy (`0xfaa9a0...53d066`, chain 1)
- TransparentUpgradeableProxy (`0xfc8070...25e772`, chain 1)
- TransparentUpgradeableProxy (`0xff408b...71c234`, chain 1)
- TwoStepConfigManager (`0x084fe1...9fa11c`, chain 1)
- TwoStepConfigManager (`0x0a0e72...a846c8`, chain 1)
- TwoStepConfigManager (`0x452f0e...51fe8a`, chain 1)
- TwoStepConfigManager (`0x663ddb...caf190`, chain 1)
- TwoStepConfigManager (`0xadbba0...c25afc`, chain 1)
- TwoStepConfigManager (`0xd85d0f...fd3341`, chain 1)
- UnstakeCooldown (`0x2822b8...d98ce5`, chain 1)
- UnstakeCooldown (`0x7a7fa1...a28a1b`, chain 1)
- UnstakeCooldown (`0xd2843c...6f3451`, chain 1)
- UnstakeCooldown (`0xd59b3f...d47613`, chain 1)
- UnstakeCooldown (`0xea3676...a5fb20`, chain 1)
- UnstakeCooldown (`0xf783d4...d0ed1f`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 144; live-surface rows included: 144 (143 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 83/84 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/82 (12.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 83 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 41 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 94
- Confirmed-live implementations: 83 of 124 unique; 41 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/123
- Verified + Unaudited implementations: 113
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 124
- Raw deployments: 229
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 12.2% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 10 | 8.1% | 2026-01 |
| Guardian | Tier 2 | 6 | 4.9% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Accounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257198 | 2 deployments: ethereum `0x5efe7c...a2aa52`; ethereum `0xeb97f3...dea057` | ✅ Audited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257162 | 2 deployments: ethereum `0x73dfde...292219`; ethereum `0xd6dad1...6a6faf` | ✅ Audited |
| SharesCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257159 | 2 deployments: ethereum `0x0404ea...cdf1ce`; ethereum `0x655c80...8a1e58` | ✅ Audited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257149 | 2 deployments: ethereum `0x3afc31...05d0a9`; ethereum `0x7b6c96...bedd10` | ✅ Audited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257180 | 2 deployments: ethereum `0x908b39...6c0e20`; ethereum `0xb3d4f2...9c79ba` | ✅ Audited |
| StrataMasterChef | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257128 | `0x4f2682...7e022d` | ✅ Audited |
| sUSDeCooldownRequestImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257121 | `0x00a960...26dde2` | ✅ Audited |
| sUSDeStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257148 | 2 deployments: ethereum `0x2b9796...adb107`; ethereum `0xdbf4fb...e7099f` | ✅ Audited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257151 | 2 deployments: ethereum `0x452f0e...51fe8a`; ethereum `0x60dae2...47eb79` | ✅ Audited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257188 | 2 deployments: ethereum `0x735edd...610f74`; ethereum `0xd2843c...6f3451` | ✅ Audited |

### ⚠️ Verified + Unaudited (113)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveAprPairProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257125 | `0x1c1377...f0af73` | ⚠️ Unaudited |
| AaveOracleAprPairProvider | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257134 | `0x991e78...b929aa` | ⚠️ Unaudited |
| AccessControlManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-257122 | `0x040ef2...f8c74a` | ⚠️ Unaudited |
| AccessControlManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-257123 | `0x06e84a...8203e4` | ⚠️ Unaudited |
| AccessControlManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d19e1...605f60` | ⚠️ Unaudited |
| AccessControlManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-257129 | `0x6ce1aa...601c36` | ⚠️ Unaudited |
| AccessControlManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-257137 | `0xd5d18d...e44014` | ⚠️ Unaudited |
| AccessControlManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-257138 | `0xd61990...d399b8` | ⚠️ Unaudited |
| Accounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0f751e...67a20e`; ethereum `0x4e409d...64e5b6`; ethereum `0x4e9f8d...8e8da2`; ethereum `0xc634e9...d3be7e`; ethereum `0xc89951...7734f3` | ⚠️ Unaudited |
| Accounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257169 | 2 deployments: ethereum `0x180f7b...e8cf88`; ethereum `0x8cabd1...048643` | ⚠️ Unaudited |
| Accounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257156 | 2 deployments: ethereum `0x5a8d34...59cbff`; ethereum `0xa436c5...355102` | ⚠️ Unaudited |
| Accounting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6b9ab8...99767b`; ethereum `0xd1efb5...ea5651` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257166 | 2 deployments: ethereum `0x1695a2...b4d171`; ethereum `0x80f7b3...41ecf9` | ⚠️ Unaudited |
| AprPairFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1f3aab...0a3c57`; ethereum `0x3ea2f3...2bb26c` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257193 | 2 deployments: ethereum `0x21d616...579115`; ethereum `0xd9d971...baaf08` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257163 | 2 deployments: ethereum `0x2bb416...800ec2`; ethereum `0x74188a...0fbadc` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257184 | 2 deployments: ethereum `0xbd1844...94d5bb`; ethereum `0xd2923d...e32044` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257200 | 2 deployments: ethereum `0xd1fc85...82e4e9`; ethereum `0xed83dc...8000e9` | ⚠️ Unaudited |
| AprPairFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257203 | 2 deployments: ethereum `0xece480...f28d64`; ethereum `0xfb0294...668e8a` | ⚠️ Unaudited |
| AprPairFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf158a4...6ef6a2` | ⚠️ Unaudited |
| CDOLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x02d622...ab5b62`; ethereum `0x16f62b...16fff0`; ethereum `0xa7c547...2da3a4`; ethereum `0xc9d29a...b06611` | ⚠️ Unaudited |
| CDOLens | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x38274d...e1bb25`; ethereum `0xea62e3...851f4e` | ⚠️ Unaudited |
| ConstantOracleAprPairProvider | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257132 | `0x8b7258...018bf0` | ⚠️ Unaudited |
| ConstantOracleAprPairProvider | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-257139 | `0xd7bac4...b9eadc` | ⚠️ Unaudited |
| DiscreteAccounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257190 | 2 deployments: ethereum `0x0e90b8...6267d7`; ethereum `0xd6e34b...e6f0c5` | ⚠️ Unaudited |
| DiscreteAccounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257158 | 2 deployments: ethereum `0x628bdd...35872e`; ethereum `0xe4a3a2...bb2a4a` | ⚠️ Unaudited |
| DiscreteAccounting | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257192 | 2 deployments: ethereum `0xaf32d4...f2b228`; ethereum `0xd8ef4b...d4f0b8` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257177 | 2 deployments: ethereum `0x1abc3c...907990`; ethereum `0xa14009...74db9d` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257173 | 2 deployments: ethereum `0x25138d...2929ab`; ethereum `0x940a04...925933` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x428c24...33508e`; ethereum `0xe4489e...32b272` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257164 | 2 deployments: ethereum `0x4c2680...72296e`; ethereum `0x74c74f...a78913` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257155 | 2 deployments: ethereum `0x5a428c...75c1a4`; ethereum `0x71ec07...788fda` | ⚠️ Unaudited |
| ERC20Cooldown | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5c818c...ab687d`; ethereum `0xe93b75...e938f8` | ⚠️ Unaudited |
| ERC20Cooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257185 | 2 deployments: ethereum `0xbe71d2...e324be`; ethereum `0xc284ae...93a84e` | ⚠️ Unaudited |
| EulerIntegration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf25129...876682` | ⚠️ Unaudited |
| EulerLens | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5c36c8...e309fa`; ethereum `0xc7e74a...b54727` | ⚠️ Unaudited |
| FigureCooldownRequestImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x0107cf...abeaa0`; ethereum `0x4889e2...e3d5da` | ⚠️ Unaudited |
| FigureCooldownRequestImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257131 | `0x837ab0...127da4` | ⚠️ Unaudited |
| FigureStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257153 | 2 deployments: ethereum `0x46d68d...697376`; ethereum `0x80187f...f51c9e` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-257194 | `0xa27ca9...b68b50` | ⚠️ Unaudited |
| MidasCooldownRequestImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x086332...d88087`; ethereum `0x5d6e12...c89cf6` | ⚠️ Unaudited |
| MidasCooldownRequestImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x0afc25...3f8a8a`; ethereum `0x109f11...63ab60` | ⚠️ Unaudited |
| MidasCooldownRequestImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257130 | `0x6ce2fa...a12348` | ⚠️ Unaudited |
| MidasCooldownRequestImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257136 | `0xb4605c...f7752e` | ⚠️ Unaudited |
| MidasStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257167 | 2 deployments: ethereum `0x807150...fd184d`; ethereum `0x839d89...9637ec` | ⚠️ Unaudited |
| MidasStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257175 | 2 deployments: ethereum `0x96ef7d...71cf6e`; ethereum `0xeed127...c18c75` | ⚠️ Unaudited |
| PendleIntegration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b7597...4d78fc` | ⚠️ Unaudited |
| pUSDeDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1516d0...403660`; ethereum `0x28ab38...8ce118` | ⚠️ Unaudited |
| pUSDeLens | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x32e333...e62637`; ethereum `0xc734d6...62eca8` | ⚠️ Unaudited |
| pUSDeLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd23de7...1b3006` | ⚠️ Unaudited |
| pUSDeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7fe8d7...47b851`; ethereum `0xa62b20...aa96ce` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257150 | `0x4be374...694ef4` | ⚠️ Unaudited |
| SaturnAprPairProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257127 | `0x4bcc15...854be8` | ⚠️ Unaudited |
| SaturnCooldownRequestImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x7399f5...41d780`; ethereum `0x9aacf1...38fc18` | ⚠️ Unaudited |
| SaturnCooldownRequestImpl | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257140 | `0xfb8db7...9ac84e` | ⚠️ Unaudited |
| SaturnStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x36f593...8c1939`; ethereum `0xcaf086...e19d9b` | ⚠️ Unaudited |
| SaturnStrategy | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257133 | `0x9686e3...9dc286` | ⚠️ Unaudited |
| SaturnStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257187 | `0xce7b00...97b090` | ⚠️ Unaudited |
| SharesCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257146 | 2 deployments: ethereum `0x25f7ce...58bcae`; ethereum `0x83c11b...0a59e1` | ⚠️ Unaudited |
| SharesCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257170 | 2 deployments: ethereum `0x8da07f...6638cf`; ethereum `0xce7043...deb3f1` | ⚠️ Unaudited |
| SharesCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257178 | 2 deployments: ethereum `0xa9e7e9...4982b8`; ethereum `0xe851de...455b66` | ⚠️ Unaudited |
| SharesCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257182 | 2 deployments: ethereum `0xb56240...b01a08`; ethereum `0xeb30f8...b4f693` | ⚠️ Unaudited |
| sNUSDAprPairProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257124 | `0x12db79...2f9eab` | ⚠️ Unaudited |
| sNUSDCooldownRequestImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x1545cf...472d20`; ethereum `0xca8649...fe22f7`; ethereum `0xea5595...ee32d7` | ⚠️ Unaudited |
| sNUSDStrategy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257154 | 2 deployments: ethereum `0x3cef2c...b5de88`; ethereum `0x4c8fa0...4af269` | ⚠️ Unaudited |
| sNUSDSwapAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbebbeb...3d6303` | ⚠️ Unaudited |
| StrataCDO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0eccfa...c1b756`; ethereum `0x30faef...87f02a` | ⚠️ Unaudited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257143 | 2 deployments: ethereum `0x0f8d08...448bc1`; ethereum `0x613d17...120e5f` | ⚠️ Unaudited |
| StrataCDO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1f5a75...c4cdc4`; ethereum `0xecff8b...730b94` | ⚠️ Unaudited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257174 | 2 deployments: ethereum `0x39c7e6...27e6cf`; ethereum `0x94a956...94c24c` | ⚠️ Unaudited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257172 | 2 deployments: ethereum `0x93f45b...4fa358`; ethereum `0xff408b...71c234` | ⚠️ Unaudited |
| StrataCDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257201 | 2 deployments: ethereum `0xa61776...fb846b`; ethereum `0xf39e55...fc4e00` | ⚠️ Unaudited |
| StrataMasterChef | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257135 | `0xb2a3cf...77b706` | ⚠️ Unaudited |
| sUSDeAprPairProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa621c5...b80277`; ethereum `0xaff405...6d596b` | ⚠️ Unaudited |
| sUSDeCooldownRequestImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x3f7041...79a2cc`; ethereum `0xc5827b...0c76a4`; ethereum `0xe5e4fe...fa42c8` | ⚠️ Unaudited |
| sUSDeCooldownRequestImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x97f7e9...d62e69`; ethereum `0x9c8c72...7ad6a8` | ⚠️ Unaudited |
| sUSDeStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0da391...78f213`; ethereum `0x4f514f...fd5b17`; ethereum `0xcbb548...16c5e0` | ⚠️ Unaudited |
| sUSDeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x75489e...d40f20`; ethereum `0x99fe6b...5f1a20` | ⚠️ Unaudited |
| TermmaxIntegration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7940b9...1a4a7b` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257157 | 2 deployments: ethereum `0x011e55...5a455d`; ethereum `0x5c8df1...72a6db` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257171 | 2 deployments: ethereum `0x35bff7...9232eb`; ethereum `0x901443...19209d` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257195 | 2 deployments: ethereum `0x3d7d6f...cdc003`; ethereum `0xe89405...30210b` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4111c7...7366d0`; ethereum `0xb0a808...89f62c` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257152 | 2 deployments: ethereum `0x461d16...5d0b83`; ethereum `0x627ea6...129b53` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5ddb16...0b5999`; ethereum `0xb8b04f...db6013` | ⚠️ Unaudited |
| Tranche | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x64c628...d9630e`; ethereum `0x90f806...dcbcdb`; ethereum `0xdc3190...0bc297`; ethereum `0xffe76a...50f2be` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257168 | 2 deployments: ethereum `0x65a445...f589db`; ethereum `0x86e638...cd739e` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257176 | 2 deployments: ethereum `0x96f88f...30c1c9`; ethereum `0xeb205d...78714b` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb1f6a2...396d62`; ethereum `0xf1115b...8e3a68` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257181 | 2 deployments: ethereum `0xb4eea6...44f2b1`; ethereum `0xf7eb8d...821688` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257183 | 2 deployments: ethereum `0xb8e946...80499e`; ethereum `0xfaa9a0...53d066` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257196 | 2 deployments: ethereum `0xc58d04...a53d8f`; ethereum `0xe91869...5ac09c` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257186 | 2 deployments: ethereum `0xc71b90...07e767`; ethereum `0xfc8070...25e772` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcc3777...0aab6f`; ethereum `0xd4847c...105525` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257199 | 2 deployments: ethereum `0xcced21...c40d60`; ethereum `0xecbde9...4de952` | ⚠️ Unaudited |
| Tranche | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257204 | 2 deployments: ethereum `0xf4c91f...4c2f27`; ethereum `0xfcda74...e0d847` | ⚠️ Unaudited |
| TrancheDepositor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257144 | 2 deployments: ethereum `0x127f27...d4eb80`; ethereum `0xd8ea64...2e7823` | ⚠️ Unaudited |
| TrancheDepositor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257145 | 2 deployments: ethereum `0x22f929...4cabaa`; ethereum `0x7945e4...cb4bf7` | ⚠️ Unaudited |
| TrancheDepositor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257161 | 2 deployments: ethereum `0x50e850...52f47e`; ethereum `0x6e5a69...26b20b` | ⚠️ Unaudited |
| TrancheDepositor | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x60f130...0b4f1f`; ethereum `0xb8f2da...3a3abf`; ethereum `0xe375c1...f85cee` | ⚠️ Unaudited |
| TrancheDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7a6ad3...b6e50f`; ethereum `0x932a1d...ac0d11` | ⚠️ Unaudited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257160 | 2 deployments: ethereum `0x03dbbc...11dbcc`; ethereum `0x663ddb...caf190` | ⚠️ Unaudited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257141 | 2 deployments: ethereum `0x084fe1...9fa11c`; ethereum `0x7a0f6f...89b30e` | ⚠️ Unaudited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257142 | 2 deployments: ethereum `0x0a0e72...a846c8`; ethereum `0x0f93ba...818994` | ⚠️ Unaudited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257179 | 2 deployments: ethereum `0xadbba0...c25afc`; ethereum `0xf4ff82...7c4ddc` | ⚠️ Unaudited |
| TwoStepConfigManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257191 | 2 deployments: ethereum `0xd85d0f...fd3341`; ethereum `0xef9911...e7a95a` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0aff54...3ec57c`; ethereum `0xa3b5c1...1a7473` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257147 | 2 deployments: ethereum `0x2822b8...d98ce5`; ethereum `0x2a5236...2bc749` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257197 | 2 deployments: ethereum `0x440938...1bfbaa`; ethereum `0xea3676...a5fb20` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257189 | 2 deployments: ethereum `0x616af7...9381ac`; ethereum `0xd59b3f...d47613` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257165 | 2 deployments: ethereum `0x6f6904...d681c1`; ethereum `0x7a7fa1...a28a1b` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | project_anchor | own_supporting | 1 | ethereum | unit-257202 | 2 deployments: ethereum `0x7910cb...08805c`; ethereum `0xf783d4...d0ed1f` | ⚠️ Unaudited |
| UnstakeCooldown | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc4eaa8...5d419c`; ethereum `0xff8d8a...33ac7a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257126 | `0x277d26...2cea5b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audits.md](https://docs.strata.markets/technical-documentation/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [index.html](https://certificate.quantstamp.com/full/strata-discrete-accounting/02318e87-e35f-4e96-81ad-192253203d55/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf) | Cyfrin | Audit | 2026-01 | fresh | Direct | contract_name | matched | 5 | 5 | 0 | 1 | high |
| [2025-10-08-cyfrin-strata-tranches-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-10-08-cyfrin-strata-tranches-v2.0.pdf) | Cyfrin | Audit | 2025-10 | fresh | Direct | contract_name | matched | 6 | 4 | 0 | 9 | high |
| [Strata_Tranches_report.pdf](https://github.com/GuardianAudits/Audits/blob/main/Strata/Strata_Tranches_report.pdf) | Guardian | Audit | 2025-10 | fresh | Direct | contract_name | matched | 6 | 4 | 0 | 10 | high |
| [www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b](https://www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b) | Cyfrin | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.papermark.com/view/cmgm9op9b0003l404g395i6a5](https://www.papermark.com/view/cmgm9op9b0003l404g395i6a5) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4595] audits.md — no match: The document is an index page listing audit reports but does not contain specific contract names or a scope section with file paths. No contracts in scope are identifiable.
- [4596] index.html — no match: The provided text is incomplete and does not contain any contract names or audit details.
- [4597] 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf — matched: Audit scope section lists 6 contracts. Date from cover page: January 23, 2026.
- [4600] 2025-10-08-cyfrin-strata-tranches-v2.0.pdf — matched: All 15 contracts listed in the 'Audit Scope' section were extracted. The audit date is explicitly stated on the cover page as 'October 8, 2025'.
- [4601] Strata_Tranches_report.pdf — matched: Extracted 16 contract names from the scope table on page 5. Audit date found on cover page and delivery date.
- [4602] www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b — no match: The provided text is not an audit report; it is a title/header for a product called Papermark. No contracts, scope, or audit date were found.
- [4603] www.papermark.com/view/cmgm9op9b0003l404g395i6a5 — no match: The provided text is not an audit report; it is a title/header for a product called Papermark. No contracts, scope, or audit date were found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | SharesCooldown | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0xeb30f8...b4f693` — deployed 2026-05-18 02:21:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x0404ea...cdf1ce` — deployed 2026-02-05 19:43:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xce7043...deb3f1` — deployed 2026-03-30 12:09:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe851de...455b66` — deployed 2026-04-25 01:33:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x83c11b...0a59e1` — deployed 2026-04-10 11:14:23+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2026-02-05 was 13d from audit; next candidate 66d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | sUSDeStrategy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xdbf4fb...e7099f` — deployed 2025-10-02 23:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | Tranche | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x3d7d6f...cdc003` — deployed 2025-10-02 23:09:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfc8070...25e772` — deployed 2026-02-05 20:17:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xcced21...c40d60` — deployed 2026-04-10 11:40:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xeb205d...78714b` — deployed 2026-03-30 12:15:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf7eb8d...821688` — deployed 2026-04-10 11:40:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x35bff7...9232eb` — deployed 2026-05-18 02:27:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfaa9a0...53d066` — deployed 2026-04-25 01:42:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x011e55...5a455d` — deployed 2026-04-25 01:42:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x627ea6...129b53` — deployed 2026-03-30 12:16:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc58d04...a53d8f` — deployed 2025-10-02 23:03:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4c91f...4c2f27` — deployed 2026-05-18 02:26:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x65a445...f589db` — deployed 2026-02-05 20:18:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | StrataCDO | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x613d17...120e5f` — deployed 2026-04-10 11:09:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (selected) `0x7b6c96...bedd10` — deployed 2026-02-05 19:29:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x39c7e6...27e6cf` — deployed 2026-03-30 12:07:11+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xff408b...71c234` — deployed 2026-05-18 02:20:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x908b39...6c0e20` — deployed 2025-10-02 22:54:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa61776...fb846b` — deployed 2026-04-25 01:31:47+03 — liveness: live (proxy_unit_reachable) | deployment-date disambiguation: 2026-02-05 was 13d from audit; next candidate 66d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | Accounting | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x180f7b...e8cf88` — deployed 2026-04-25 01:41:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa436c5...355102` — deployed 2025-10-02 23:02:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x5efe7c...a2aa52` — deployed 2026-02-05 19:48:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2026-02-05 was 13d from audit; next candidate 92d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-23-cyfrin-strata-shares-cooldown-v2.0.pdf | TwoStepConfigManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x03dbbc...11dbcc` — deployed 2026-04-25 02:03:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef9911...e7a95a` — deployed 2026-03-30 13:23:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x60dae2...47eb79` — deployed 2026-02-05 20:42:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7a0f6f...89b30e` — deployed 2026-04-10 11:59:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x0f93ba...818994` — deployed 2025-11-27 16:33:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4ff82...7c4ddc` — deployed 2026-05-18 02:35:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2026-02-05 was 13d from audit; next candidate 57d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | AccessControlled | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | AccessControlManager | ambiguous — not counted | AccessControlManager (alternative) `0xd5d18d...e44014` — deployed 2026-05-18 02:20:11+03 — liveness: live (current_address_book_code)<br>AccessControlManager (alternative) `0x6ce1aa...601c36` — deployed 2026-04-25 01:31:11+03 — liveness: live (code_present_context)<br>AccessControlManager (alternative) `0xd61990...d399b8` — deployed 2026-03-30 12:06:23+03 — liveness: live (code_present_context)<br>AccessControlManager (alternative) `0x040ef2...f8c74a` — deployed 2026-04-10 11:08:47+03 — liveness: live (current_address_book_code)<br>AccessControlManager (alternative) `0x06e84a...8203e4` — deployed 2026-02-05 18:39:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | StrataMasterChef | own contract | StrataMasterChef (selected) `0x4f2682...7e022d` — deployed 2025-10-31 17:42:23+03 — liveness: live (current_address_book_code)<br>StrataMasterChef (alternative) `0xb2a3cf...77b706` — deployed 2025-08-02 03:07:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-31 was 23d from audit; next candidate 67d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | ERC20Cooldown | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd6dad1...6a6faf` — deployed 2025-10-02 22:55:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4c2680...72296e` — deployed 2026-04-10 11:12:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbe71d2...e324be` — deployed 2026-05-18 02:21:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x25138d...2929ab` — deployed 2026-04-25 01:32:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71ec07...788fda` — deployed 2026-03-30 12:08:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1abc3c...907990` — deployed 2026-02-05 19:42:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-02 was 6d from audit; next candidate 120d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | UnstakeCooldown | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x440938...1bfbaa` — deployed 2026-05-18 02:21:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2a5236...2bc749` — deployed 2026-02-05 19:43:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6f6904...d681c1` — deployed 2026-04-10 11:13:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7910cb...08805c` — deployed 2026-03-30 12:08:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x735edd...610f74` — deployed 2025-10-02 22:56:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x616af7...9381ac` — deployed 2026-04-25 01:33:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-02 was 6d from audit; next candidate 120d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | CDOComponent | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | Tranche | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x3d7d6f...cdc003` — deployed 2025-10-02 23:09:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfc8070...25e772` — deployed 2026-02-05 20:17:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xcced21...c40d60` — deployed 2026-04-10 11:40:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xeb205d...78714b` — deployed 2026-03-30 12:15:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf7eb8d...821688` — deployed 2026-04-10 11:40:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x35bff7...9232eb` — deployed 2026-05-18 02:27:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfaa9a0...53d066` — deployed 2026-04-25 01:42:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x011e55...5a455d` — deployed 2026-04-25 01:42:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x627ea6...129b53` — deployed 2026-03-30 12:16:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc58d04...a53d8f` — deployed 2025-10-02 23:03:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4c91f...4c2f27` — deployed 2026-05-18 02:26:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x65a445...f589db` — deployed 2026-02-05 20:18:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | AprTupleFeed | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | sUSDeCooldownRequestImpl | own contract | sUSDeCooldownRequestImpl (selected) `0x00a960...26dde2` — deployed 2025-10-02 22:56:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | sUSDeStrategy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xdbf4fb...e7099f` — deployed 2025-10-02 23:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | UD60x18Extra | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | StrataCDO | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x613d17...120e5f` — deployed 2026-04-10 11:09:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7b6c96...bedd10` — deployed 2026-02-05 19:29:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x39c7e6...27e6cf` — deployed 2026-03-30 12:07:11+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xff408b...71c234` — deployed 2026-05-18 02:20:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (selected) `0x908b39...6c0e20` — deployed 2025-10-02 22:54:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa61776...fb846b` — deployed 2026-04-25 01:31:47+03 — liveness: live (proxy_unit_reachable) | deployment-date disambiguation: 2025-10-02 was 6d from audit; next candidate 120d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | YieldAccounting | unmatched — not counted | — | listed in scope | no |
| 2025-10-08-cyfrin-strata-tranches-v2.0.pdf | StrataCDOStorage | unmatched — not counted | — | listed in scope | no |
| Strata_Tranches_report.pdf | StrataCDO | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x613d17...120e5f` — deployed 2026-04-10 11:09:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7b6c96...bedd10` — deployed 2026-02-05 19:29:23+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x39c7e6...27e6cf` — deployed 2026-03-30 12:07:11+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xff408b...71c234` — deployed 2026-05-18 02:20:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (selected) `0x908b39...6c0e20` — deployed 2025-10-02 22:54:35+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa61776...fb846b` — deployed 2026-04-25 01:31:47+03 — liveness: live (proxy_unit_reachable) | deployment-date disambiguation: 2025-10-02 was 8d from audit; next candidate 118d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Strata_Tranches_report.pdf | StrataCDOStorage | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | YieldAccounting | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | AccessControlManager | ambiguous — not counted | AccessControlManager (alternative) `0xd5d18d...e44014` — deployed 2026-05-18 02:20:11+03 — liveness: live (current_address_book_code)<br>AccessControlManager (alternative) `0x6ce1aa...601c36` — deployed 2026-04-25 01:31:11+03 — liveness: live (code_present_context)<br>AccessControlManager (alternative) `0xd61990...d399b8` — deployed 2026-03-30 12:06:23+03 — liveness: live (code_present_context)<br>AccessControlManager (alternative) `0x040ef2...f8c74a` — deployed 2026-04-10 11:08:47+03 — liveness: live (current_address_book_code)<br>AccessControlManager (alternative) `0x06e84a...8203e4` — deployed 2026-02-05 18:39:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Strata_Tranches_report.pdf | AccessControlled | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | StrataMasterChef | own contract | StrataMasterChef (selected) `0x4f2682...7e022d` — deployed 2025-10-31 17:42:23+03 — liveness: live (current_address_book_code)<br>StrataMasterChef (alternative) `0xb2a3cf...77b706` — deployed 2025-08-02 03:07:35+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-31 was 21d from audit; next candidate 69d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Strata_Tranches_report.pdf | UD60x18Extra | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | Strategy | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | AprTupleFeed | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | CDOComponent | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | Tranche | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x3d7d6f...cdc003` — deployed 2025-10-02 23:09:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfc8070...25e772` — deployed 2026-02-05 20:17:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xcced21...c40d60` — deployed 2026-04-10 11:40:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xeb205d...78714b` — deployed 2026-03-30 12:15:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf7eb8d...821688` — deployed 2026-04-10 11:40:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x35bff7...9232eb` — deployed 2026-05-18 02:27:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfaa9a0...53d066` — deployed 2026-04-25 01:42:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x011e55...5a455d` — deployed 2026-04-25 01:42:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x627ea6...129b53` — deployed 2026-03-30 12:16:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc58d04...a53d8f` — deployed 2025-10-02 23:03:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4c91f...4c2f27` — deployed 2026-05-18 02:26:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x65a445...f589db` — deployed 2026-02-05 20:18:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Strata_Tranches_report.pdf | IsUSDe | unmatched — not counted | — | listed in scope table | no |
| Strata_Tranches_report.pdf | sUSDeCooldownRequestImpl | own contract | sUSDeCooldownRequestImpl (selected) `0x00a960...26dde2` — deployed 2025-10-02 22:56:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Strata_Tranches_report.pdf | sUSDeStrategy | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xdbf4fb...e7099f` — deployed 2025-10-02 23:00:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Strata_Tranches_report.pdf | ERC20Cooldown | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd6dad1...6a6faf` — deployed 2025-10-02 22:55:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4c2680...72296e` — deployed 2026-04-10 11:12:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbe71d2...e324be` — deployed 2026-05-18 02:21:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x25138d...2929ab` — deployed 2026-04-25 01:32:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x71ec07...788fda` — deployed 2026-03-30 12:08:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1abc3c...907990` — deployed 2026-02-05 19:42:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-02 was 8d from audit; next candidate 118d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Strata_Tranches_report.pdf | UnstakeCooldown | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x440938...1bfbaa` — deployed 2026-05-18 02:21:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2a5236...2bc749` — deployed 2026-02-05 19:43:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6f6904...d681c1` — deployed 2026-04-10 11:13:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7910cb...08805c` — deployed 2026-03-30 12:08:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x735edd...610f74` — deployed 2025-10-02 22:56:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x616af7...9381ac` — deployed 2026-04-25 01:33:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-02 was 8d from audit; next candidate 118d; normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x040ef2...f8c74a` | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x06e84a...8203e4` | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ce1aa...601c36` | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd5d18d...e44014` | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd61990...d399b8` | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x180f7b...e8cf88` | Accounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5a8d34...59cbff` | Accounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1695a2...b4d171` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x21d616...579115` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2bb416...800ec2` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbd1844...94d5bb` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd1fc85...82e4e9` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xece480...f28d64` | AprPairFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b7258...018bf0` | ConstantOracleAprPairProvider | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd7bac4...b9eadc` | ConstantOracleAprPairProvider | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0e90b8...6267d7` | DiscreteAccounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x628bdd...35872e` | DiscreteAccounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf32d4...f2b228` | DiscreteAccounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1abc3c...907990` | ERC20Cooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x25138d...2929ab` | ERC20Cooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4c2680...72296e` | ERC20Cooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5a428c...75c1a4` | ERC20Cooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbe71d2...e324be` | ERC20Cooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x837ab0...127da4` | FigureCooldownRequestImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x46d68d...697376` | FigureStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ce2fa...a12348` | MidasCooldownRequestImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb4605c...f7752e` | MidasCooldownRequestImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x807150...fd184d` | MidasStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x96ef7d...71cf6e` | MidasStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4bcc15...854be8` | SaturnAprPairProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfb8db7...9ac84e` | SaturnCooldownRequestImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xce7b00...97b090` | SaturnStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x25f7ce...58bcae` | SharesCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8da07f...6638cf` | SharesCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa9e7e9...4982b8` | SharesCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb56240...b01a08` | SharesCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12db79...2f9eab` | sNUSDAprPairProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3cef2c...b5de88` | sNUSDStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f8d08...448bc1` | StrataCDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x39c7e6...27e6cf` | StrataCDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x93f45b...4fa358` | StrataCDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa61776...fb846b` | StrataCDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb2a3cf...77b706` | StrataMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x011e55...5a455d` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35bff7...9232eb` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3d7d6f...cdc003` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x461d16...5d0b83` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x65a445...f589db` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x96f88f...30c1c9` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb4eea6...44f2b1` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb8e946...80499e` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc58d04...a53d8f` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc71b90...07e767` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcced21...c40d60` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4c91f...4c2f27` | Tranche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x127f27...d4eb80` | TrancheDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x22f929...4cabaa` | TrancheDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x50e850...52f47e` | TrancheDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x03dbbc...11dbcc` | TwoStepConfigManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x084fe1...9fa11c` | TwoStepConfigManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0a0e72...a846c8` | TwoStepConfigManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xadbba0...c25afc` | TwoStepConfigManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd85d0f...fd3341` | TwoStepConfigManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2822b8...d98ce5` | UnstakeCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x440938...1bfbaa` | UnstakeCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x616af7...9381ac` | UnstakeCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6f6904...d681c1` | UnstakeCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7910cb...08805c` | UnstakeCooldown | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 118 |
| upstream | 3 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 17 own (13 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 15 unmatched
- Matched-own operational status: 17 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=4
- Match method counts: temporal_name=12, unique_name=5

Zero-match audit list:

- [4595] audits.md
- [4596] index.html
- [4602] www.papermark.com/view/cmgm9mjyd0001l204bjrh6r1b
- [4603] www.papermark.com/view/cmgm9op9b0003l404g395i6a5

Fork inheritance lineage and inherited audits are included when available.
