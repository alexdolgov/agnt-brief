# Agentic Audit Brief: DOOAR

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: DOOAR (`dooar`)
- Website: [https://beta.dooar.com/swap](https://beta.dooar.com/swap)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum, polygon
- Contract surface: 108 unique implementations (146 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,621,058.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for DOOAR. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, ethereum, polygon. Structural roles: 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: supporting (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x473037de59cf9484632f4a27b509cfe8d4a31404`, chain 1)
- UnnamedContract (`0xe3c408bd53c31c085a1746af401a4042954ff740`, chain 1)
- UnnamedContract (`0x3019bf2a2ef8040c242c9a4c5c4bd4c81678b2a1`, chain 56)
- UnnamedContract (`0x4a2c860cec6471b9f5f5a336eb4f38bb21683c98`, chain 56)
- UnnamedContract (`0x714db550b574b3e927af3d93e26127d15721d4c2`, chain 137)
- UnnamedContract (`0xacc8e414ceecf0bbf438f6c4b7417ca59dcf7e47`, chain 137)
- UnnamedContract (`0xc289a1684a04faaf926204235588f5fc1d5e458e`, chain 137)
- DooarSwapV2Factory (`0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c`, chain 56)
- DooarSwapV2Router02 (`0x53e0e51b5ed9202110d7ecd637a4581db8b9879f`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 99 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 9 of 108 unique; 99 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 81
- Unique implementations: 108
- Raw deployments: 146
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DooarSwapV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c`; polygon `0x9472047e34313384e07dbef2f9235e0107d85cab`; polygon `0xb61cb31d4ed1eef56c8398fdfcc6bd23db007922`; polygon `0xbdd46fd173ad1d158578feb5d10573baf8ee89d2` | ⚠️ Unaudited |
| DooarSwapV2Factory | registry | project_anchor | own_supporting | 0 | bsc | unit-384055 | `0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c` | ⚠️ Unaudited |
| DooarSwapV2Router02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e0e51b5ed9202110d7ecd637a4581db8b9879f` | ⚠️ Unaudited |
| DooarSwapV2Router02 | adapter | project_anchor | own_supporting | 0 | bsc | unit-384058 | `0x53e0e51b5ed9202110d7ecd637a4581db8b9879f` | ⚠️ Unaudited |
| GasHeroBadge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x39ad68c0ca12907c5f60a50c5b5f045cab16a3eb`; polygon `0xd652c25e5507270b826f00d724b20186fdd321bc` | ⚠️ Unaudited |
| GasHeroCoupon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x903d8caa9c94075a08d3e7758b7a20b9fc604854` | ⚠️ Unaudited |
| GasHeroGate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f8a6a6d277c85519a0faeb552ec8c2578deb107` | ⚠️ Unaudited |
| GasHeroObject | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 15 deployments: polygon `0x00509e403ca5e24b91007472b79ca78e06c8268a`; polygon `0x2b085e882f142e65b9ede0beb1ba6242daaf0dd2`; polygon `0x2e6f38f017f805390a093d33bab960251eee83ae`; polygon `0x30f378ef04234f720d422e29d005788334e4d551`; polygon `0x4af742b23d3cbc2009586a1368f8b1ce1c031fbd`; polygon `0x80cdf265f9f4344e7a35357933fe665e80dc857b`; polygon `0x834160ca762bc929152333fb909f670f17a3dd44`; polygon `0x8eef8b943ab5d34bd273159f59ce8b1d76f2d9b9`; polygon `0xa07cd19ae5e1272b35846e5b91551548f2aea9d1`; polygon `0xa284bb9b0cc45b9df9072589f508c48e0c5123d0`; polygon `0xd56fadccd9f1a220ed6668e2f9afeed8f8713246`; polygon `0xdadd999a3753d6f09954a1593d59c12c1f999957`; polygon `0xef62afdb7afd4cdde44765993f4ff23951ff4ecb`; polygon `0xf6011e7f61cc9154839f0b10af7372cea8000f71`; polygon `0xf6f47750d4cdfbef75875c4854d47a0902500ce6` | ⚠️ Unaudited |
| GasHeroToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x00c4f2b8677574bae73c72766d83534611739282`; polygon `0x3c1a1252af117f0ad43f9e58ccb739ab2f8787f5`; polygon `0xaaf8f8a418e09aac17e1a1c5b997b29ee2b035ef`; polygon `0xc3d747d3793649ed3137b9f910dbad6c256f9900` | ⚠️ Unaudited |
| GGUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x191274ba0ebb29c650798ffae06adfd39ec8a5c9`; polygon `0xaea64a2971d0fdac38edc6ddac6cc2f36ed3ec50` | ⚠️ Unaudited |
| GGUSDOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73e6fb324e621639cf20ff1c44b954a2c7512f8b` | ⚠️ Unaudited |
| MooarBroker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7cbeaccab2a845d9e9e7e71eb13cdb7dc98f3ea1`; polygon `0xe87fd2d255a562acda798731bb05586450ac332d` | ⚠️ Unaudited |
| MooarFairMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x650d6af0e788d1d575c900fee415098cdc94195d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x0add07566430e90bfbedba9eb6be206faab858b5`; polygon `0x39fb309f204dc3739cd448db4a5fcc20253d11e3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x19335aa79a73004b93d807bd08d8765bb605acf9`; polygon `0x3113206f7fd3260ac6751922528a75a9bfa15ddf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x198cc50edf20eaaae565d3fa77d0cb28a867c890`; polygon `0x447c67dd8b0d26713e79ca438b2d7eb6849cdac9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | polygon | n/a | 3 deployments: polygon `0x36d394803c33b58c6c4d580d5c39adb1f93ac670`; polygon `0x5b00646169fbc1487c472f1dc28de09c5d350ced`; polygon `0xc9eabd991021d8c8d5bbfcf27c0e55e758f88ce1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x39a3755a7ddbc6c0f7846bbdef6063233e29faea`; polygon `0x9964317eb7afbfb8cb266f8c81f1fb6979453301` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x45842d4cc72e845055a9caf02f363e57e48ac1e9`; polygon `0x96f9d9a3d3014a7c66bd030d7c164a38470cda3b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x468736bee54e27d54682af1cf21454d42dd26cb2`; polygon `0xc67ee4c6a06be91f1468e259ca6bf947da112b85` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x4d705e8dc80c0a22df59e1e4db5291c709fc34bf`; polygon `0xce93b21356271b2cb80a36abf066e9013d288e90` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x653c3e6c3daaa03b9011ccbd5a881bc4694e492b`; polygon `0x976d26b12f6e982e7aaf94dfe2daf41603b19bb0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x74796fd8c0ef5c17340f38f5ff672580d3e57f2d`; polygon `0xb5f158be24a5d7aa4be7537a9472fee92ca0c527` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x8d6d4170ed68f14c226994e93ffc487482e24069`; polygon `0x9a90a7a8d905862e741c921078a9da567148398d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0xa80739520dfd78c4d4dfcb677bb3877f93fe6aca`; polygon `0xbcbcc256cda501bb6573b2eb7cd6ceb5456bdf71` | ⚠️ Unaudited |
| Upgradeable721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x26f6b439499720e40f679af5d20d8c193dc5115c` | ⚠️ Unaudited |
| WalletSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x715a391f47426ed1cfa576255711b2ac176de572`; polygon `0xca650002ce8f0fb66ce930cc0df130e24573ee6b`; polygon `0xdc08edb2625f3ce68156e1895cac6dd63e36be3e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (81)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a036569dbbe7730d69ed664b74412e49f43c2c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3151134bf7eface581fc4ca26583a47b96d5bbae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384050 | `0x473037de59cf9484632f4a27b509cfe8d4a31404` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-384051 | `0xe3c408bd53c31c085a1746af401a4042954ff740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1755cc025a546180f9b554269294d0b3e3c56246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17db7a395bcc1ec828e732a014dd2a7c43ed30f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384056 | `0x3019bf2a2ef8040c242c9a4c5c4bd4c81678b2a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31f7651d290959603e05ecf8f65c8d8bdbe4aa5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-384057 | `0x4a2c860cec6471b9f5f5a336eb4f38bb21683c98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f5d385397095aaed4daffe336f9815ac598dff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63a7dd7d5aec625fdd4018bf45e8924626b025f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69d60ad11feb699fe5feeeb16ac691df090bfd50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x805b2123b1a96d82fad52b21f38771370391ae61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94333d9e5afd0522022976d2099efe12ad4632e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba5ae86960fe468ff02d83022c0079670bd8f6a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdcaaaea5acef96e5c37ee44e07fc790fb8de4a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5af8926707bea471cd3a60f0571d9faa8d22fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfbf79388ba42635da0152586ac3115edba37136e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffc525173f839a2deab775aa038e539ff720640e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06a851cb8ea6ba8761ede8d543210836aa27930a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08766ce393fde189409f536c15d0d5d2fa20377f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a659b3791ed4c6baa0189fca8878f5a17679d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d6f2e9663f6d6894e215940808ef9678635662a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1bfc619480c821fcfccccf7723da10986ab1323d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c60512eb376c13b1e2c8e240e1d39c456af9624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d0fee93e08d615900c310f40e9f39fd9d731c97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x247f9d3e97aa2bcc3177de80787400b00d35d9ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2caa2bd7495d8cf8142d87805dbb33412e401bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x30fe36969b1b6f2b4bfc62fff1f3e2c7713ceed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3415b90ce755ff54e15b1eca2579da9bb3563a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x39a17e068da91f413bbac0227e085fbea79f721d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x41fc5635fc878d13934dc576134c139941b854f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x472dc538a716f6161bd087eb4541cfb3b92e3750` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4cb5378a6b44f85eb3c60a2e7f6e9215b361e2bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e80022a01cd8802ac218ebc9fa37ddf81a68c55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4fd478241a6e9c205c2182f2751b60427bd79d84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x55d9cf5218cb6742840f83c572dd82653413b0d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x59d3eee2fa3b035fbc80fd20d95f2d52c96babda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5ef792f70fac063da4065376069d3b89956e145f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x619d8f54cfe7ac97cae56b06e4ee165ead32bae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6aff345d4b9ead0a565f741659a4fab109be3eff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x70aa1ca9ed8cee008bad161b870e95c2b4347ad6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-384052 | `0x714db550b574b3e927af3d93e26127d15721d4c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x726b0317f448d2cc0bba60718f34e0eb41040ab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x738f530dc2868f586ff09619f782dae3ef0e8bc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x785112c90fbbbf526a44703ba2074d75d1b470b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78aaa3775999503e439112dc8801fb4a839934ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7dd732700504936f87928e524b17eddd71cc3cfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x81500a29bdc8c58dd405e27c0f71a12bd1254aef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x82eb5c1f39afdda183eb402e9181eaadeb8945ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x862c5d8b6ee00e2c176f8101a53a374ea98dd330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x894f77e879f34f3aaa23fef2a8a8dee271ef51e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d1cfcb35662a733642e0e6bedca30b4c0eb63f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f516a5be143438b229c89aa58cec4cd915dbe59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x90b8a5db1f7eb2bbf6981f86bc45dbb51dea31d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x92985fbfd15e23affe3cd857f36f834a0a2f7bc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x940ffa3627facd1b68be77cad68d4e677cc5623e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d2fd91370e8551a8f2705b31fe1de9953b880ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-384053 | `0xacc8e414ceecf0bbf438f6c4b7417ca59dcf7e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae274b51325984ee679d5fd4af6630511d1374c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1da83f13a2f699ab365c273eca931940c460880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb22ea796d50b5510544c0769076982cd01f86312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2b68e168c09c5eaa0ed53a38e04dd05aeecc3e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb7f473915070f76d8365f59977c278033f1e3be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbc0c0d36eaefbb434d3a0ecc3783713135747de3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc205b28040a51e1e2c1b407cab3ef804d6c048ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-384054 | `0xc289a1684a04faaf926204235588f5fc1d5e458e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc374982c4daa37b57d1aa428bc6489bdb39570e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5997d30424c2d151c5915f8a18ee08e802abede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5b17b711f9db9bb54d155b6238a0181f6f1e5af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6766433f8c6d4eabd6e5d8fb6efd430560768ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc7dc9fd444d338d0cef2fe9efb00c7ff13f78df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf0a4ea2536a333b7706dddbcf1f5edf4d50b9f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf1f77e4cc49eaf8d702baafcbc57c4573366c89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xda70fe8342fcab5157c7707dd3fa81da462d730d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdd0d4f773862eb1cb4d713444f4834c64f798f7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdd57c1cb6d04ad5fb19cfd173460276e45ac3b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe32b74ceb7416fdd8f558887706db15153fe98ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe9fcea6bb5129de1de4419fdfe2342c8e46039f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xecf0aec19675029030db03c3bdabf935a4d835b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xee7beb13ba4df0bdf569119db2fd32d0a267223c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 132
- Live contracts: 0
- Unknown liveness contracts: 132
- Source-verified contracts: 49
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: contamination review=1, source verified unclassified=48, unverified unclassified=83

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x1755cc025a546180f9b554269294d0b3e3c56246` | non_address_book | unknown | unknown | unverified | n/a | `0xba5a5fd18254f1b4cb64f675ffee44a47fa8f449` |
| bsc | unverified unclassified | UnnamedContract<br>`0x31f7651d290959603e05ecf8f65c8d8bdbe4aa5a` | non_address_book | unknown | unknown | unverified | n/a | `0xba5a5fd18254f1b4cb64f675ffee44a47fa8f449` |
| bsc | unverified unclassified | UnnamedContract<br>`0x63a7dd7d5aec625fdd4018bf45e8924626b025f1` | non_address_book | unknown | unknown | unverified | n/a | `0xba5a5fd18254f1b4cb64f675ffee44a47fa8f449` |
| bsc | unverified unclassified | UnnamedContract<br>`0x69d60ad11feb699fe5feeeb16ac691df090bfd50` | non_address_book | unknown | unknown | unverified | n/a | `0xba5a5fd18254f1b4cb64f675ffee44a47fa8f449` |
| bsc | unverified unclassified | UnnamedContract<br>`0x805b2123b1a96d82fad52b21f38771370391ae61` | non_address_book | unknown | unknown | unverified | n/a | `0xba5a5fd18254f1b4cb64f675ffee44a47fa8f449` |
| bsc | unverified unclassified | UnnamedContract<br>`0x94333d9e5afd0522022976d2099efe12ad4632e2` | non_address_book | unknown | unknown | unverified | n/a | `0xba5a5fd18254f1b4cb64f675ffee44a47fa8f449` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdcaaaea5acef96e5c37ee44e07fc790fb8de4a8d` | non_address_book | unknown | unknown | unverified | n/a | `0xba5a5fd18254f1b4cb64f675ffee44a47fa8f449` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf5af8926707bea471cd3a60f0571d9faa8d22fad` | non_address_book | unknown | unknown | unverified | n/a | `0xba5a5fd18254f1b4cb64f675ffee44a47fa8f449` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfbf79388ba42635da0152586ac3115edba37136e` | non_address_book | unknown | unknown | unverified | n/a | `0xba5a5fd18254f1b4cb64f675ffee44a47fa8f449` |
| bsc | unverified unclassified | UnnamedContract<br>`0xffc525173f839a2deab775aa038e539ff720640e` | non_address_book | unknown | unknown | unverified | n/a | `0xba5a5fd18254f1b4cb64f675ffee44a47fa8f449` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a036569dbbe7730d69ed664b74412e49f43c2c0` | non_address_book | unknown | unknown | unverified | n/a | `0x656b1d2e9425c76eaa15f67e7ae17ff72415ecc9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3151134bf7eface581fc4ca26583a47b96d5bbae` | non_address_book | unknown | unknown | unverified | n/a | `0x656b1d2e9425c76eaa15f67e7ae17ff72415ecc9` |
| polygon | unverified unclassified | UnnamedContract<br>`0x59d3eee2fa3b035fbc80fd20d95f2d52c96babda` | non_address_book | unknown | unknown | unverified | n/a | `0x19b1a33b0c98af899a2dd9cbed64544eda36b2ca` |
| polygon | contamination review | WalletSplitter<br>`0x715a391f47426ed1cfa576255711b2ac176de572` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | DooarSwapV2Factory<br>`0x9472047e34313384e07dbef2f9235e0107d85cab` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | DooarSwapV2Factory<br>`0xb61cb31d4ed1eef56c8398fdfcc6bd23db007922` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | DooarSwapV2Factory<br>`0xbdd46fd173ad1d158578feb5d10573baf8ee89d2` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroBadge<br>`0x39ad68c0ca12907c5f60a50c5b5f045cab16a3eb` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroBadge<br>`0xd652c25e5507270b826f00d724b20186fdd321bc` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroCoupon<br>`0x903d8caa9c94075a08d3e7758b7a20b9fc604854` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroGate<br>`0x0f8a6a6d277c85519a0faeb552ec8c2578deb107` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroObject<br>`0x00509e403ca5e24b91007472b79ca78e06c8268a` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroObject<br>`0x2b085e882f142e65b9ede0beb1ba6242daaf0dd2` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroObject<br>`0x2e6f38f017f805390a093d33bab960251eee83ae` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroObject<br>`0x30f378ef04234f720d422e29d005788334e4d551` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroObject<br>`0x4af742b23d3cbc2009586a1368f8b1ce1c031fbd` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroObject<br>`0x80cdf265f9f4344e7a35357933fe665e80dc857b` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroObject<br>`0x834160ca762bc929152333fb909f670f17a3dd44` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroObject<br>`0x8eef8b943ab5d34bd273159f59ce8b1d76f2d9b9` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroObject<br>`0xa07cd19ae5e1272b35846e5b91551548f2aea9d1` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroObject<br>`0xa284bb9b0cc45b9df9072589f508c48e0c5123d0` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroObject<br>`0xd56fadccd9f1a220ed6668e2f9afeed8f8713246` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroObject<br>`0xdadd999a3753d6f09954a1593d59c12c1f999957` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroObject<br>`0xef62afdb7afd4cdde44765993f4ff23951ff4ecb` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroObject<br>`0xf6011e7f61cc9154839f0b10af7372cea8000f71` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroObject<br>`0xf6f47750d4cdfbef75875c4854d47a0902500ce6` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroToken<br>`0x00c4f2b8677574bae73c72766d83534611739282` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroToken<br>`0x3c1a1252af117f0ad43f9e58ccb739ab2f8787f5` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroToken<br>`0xaaf8f8a418e09aac17e1a1c5b997b29ee2b035ef` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GasHeroToken<br>`0xc3d747d3793649ed3137b9f910dbad6c256f9900` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GGUSD<br>`0x191274ba0ebb29c650798ffae06adfd39ec8a5c9` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GGUSD<br>`0xaea64a2971d0fdac38edc6ddac6cc2f36ed3ec50` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | GGUSDOFTAdapter<br>`0x73e6fb324e621639cf20ff1c44b954a2c7512f8b` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | MooarBroker<br>`0x7cbeaccab2a845d9e9e7e71eb13cdb7dc98f3ea1` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | MooarFairMint<br>`0x650d6af0e788d1d575c900fee415098cdc94195d` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0x0add07566430e90bfbedba9eb6be206faab858b5` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0x19335aa79a73004b93d807bd08d8765bb605acf9` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0x39a3755a7ddbc6c0f7846bbdef6063233e29faea` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0x447c67dd8b0d26713e79ca438b2d7eb6849cdac9` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0x4d705e8dc80c0a22df59e1e4db5291c709fc34bf` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0x5b00646169fbc1487c472f1dc28de09c5d350ced` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0x653c3e6c3daaa03b9011ccbd5a881bc4694e492b` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0x74796fd8c0ef5c17340f38f5ff672580d3e57f2d` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0x96f9d9a3d3014a7c66bd030d7c164a38470cda3b` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0x9a90a7a8d905862e741c921078a9da567148398d` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0xa80739520dfd78c4d4dfcb677bb3877f93fe6aca` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0xc67ee4c6a06be91f1468e259ca6bf947da112b85` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0xc9eabd991021d8c8d5bbfcf27c0e55e758f88ce1` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | TransparentUpgradeableProxy<br>`0xe87fd2d255a562acda798731bb05586450ac332d` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | Upgradeable721<br>`0x26f6b439499720e40f679af5d20d8c193dc5115c` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | WalletSplitter<br>`0xca650002ce8f0fb66ce930cc0df130e24573ee6b` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | source verified unclassified | WalletSplitter<br>`0xdc08edb2625f3ce68156e1895cac6dd63e36be3e` | non_address_book | unknown | unknown | verified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x06a851cb8ea6ba8761ede8d543210836aa27930a` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x08766ce393fde189409f536c15d0d5d2fa20377f` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0a659b3791ed4c6baa0189fca8878f5a17679d15` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0d6f2e9663f6d6894e215940808ef9678635662a` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x198cc50edf20eaaae565d3fa77d0cb28a867c890` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1bfc619480c821fcfccccf7723da10986ab1323d` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1c60512eb376c13b1e2c8e240e1d39c456af9624` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1d0fee93e08d615900c310f40e9f39fd9d731c97` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x247f9d3e97aa2bcc3177de80787400b00d35d9ad` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2caa2bd7495d8cf8142d87805dbb33412e401bf8` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x30fe36969b1b6f2b4bfc62fff1f3e2c7713ceed6` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3113206f7fd3260ac6751922528a75a9bfa15ddf` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3415b90ce755ff54e15b1eca2579da9bb3563a0b` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x36d394803c33b58c6c4d580d5c39adb1f93ac670` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x39a17e068da91f413bbac0227e085fbea79f721d` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x39fb309f204dc3739cd448db4a5fcc20253d11e3` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x41fc5635fc878d13934dc576134c139941b854f9` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x45842d4cc72e845055a9caf02f363e57e48ac1e9` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x468736bee54e27d54682af1cf21454d42dd26cb2` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x472dc538a716f6161bd087eb4541cfb3b92e3750` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4cb5378a6b44f85eb3c60a2e7f6e9215b361e2bd` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4e80022a01cd8802ac218ebc9fa37ddf81a68c55` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4fd478241a6e9c205c2182f2751b60427bd79d84` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x55d9cf5218cb6742840f83c572dd82653413b0d8` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5ef792f70fac063da4065376069d3b89956e145f` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x619d8f54cfe7ac97cae56b06e4ee165ead32bae1` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6aff345d4b9ead0a565f741659a4fab109be3eff` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x70aa1ca9ed8cee008bad161b870e95c2b4347ad6` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x726b0317f448d2cc0bba60718f34e0eb41040ab3` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x738f530dc2868f586ff09619f782dae3ef0e8bc8` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x785112c90fbbbf526a44703ba2074d75d1b470b7` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x78aaa3775999503e439112dc8801fb4a839934ef` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7dd732700504936f87928e524b17eddd71cc3cfd` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x81500a29bdc8c58dd405e27c0f71a12bd1254aef` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x82eb5c1f39afdda183eb402e9181eaadeb8945ac` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x862c5d8b6ee00e2c176f8101a53a374ea98dd330` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x894f77e879f34f3aaa23fef2a8a8dee271ef51e0` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8d1cfcb35662a733642e0e6bedca30b4c0eb63f7` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8d6d4170ed68f14c226994e93ffc487482e24069` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8f516a5be143438b229c89aa58cec4cd915dbe59` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x90b8a5db1f7eb2bbf6981f86bc45dbb51dea31d5` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x92985fbfd15e23affe3cd857f36f834a0a2f7bc4` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x940ffa3627facd1b68be77cad68d4e677cc5623e` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x976d26b12f6e982e7aaf94dfe2daf41603b19bb0` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9964317eb7afbfb8cb266f8c81f1fb6979453301` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9d2fd91370e8551a8f2705b31fe1de9953b880ca` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xae274b51325984ee679d5fd4af6630511d1374c0` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb1da83f13a2f699ab365c273eca931940c460880` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb22ea796d50b5510544c0769076982cd01f86312` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb2b68e168c09c5eaa0ed53a38e04dd05aeecc3e4` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb5f158be24a5d7aa4be7537a9472fee92ca0c527` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb7f473915070f76d8365f59977c278033f1e3be5` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbc0c0d36eaefbb434d3a0ecc3783713135747de3` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xbcbcc256cda501bb6573b2eb7cd6ceb5456bdf71` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc205b28040a51e1e2c1b407cab3ef804d6c048ff` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc374982c4daa37b57d1aa428bc6489bdb39570e5` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc5997d30424c2d151c5915f8a18ee08e802abede` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc5b17b711f9db9bb54d155b6238a0181f6f1e5af` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc6766433f8c6d4eabd6e5d8fb6efd430560768ce` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc7dc9fd444d338d0cef2fe9efb00c7ff13f78df9` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xce93b21356271b2cb80a36abf066e9013d288e90` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcf0a4ea2536a333b7706dddbcf1f5edf4d50b9f8` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcf1f77e4cc49eaf8d702baafcbc57c4573366c89` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xda70fe8342fcab5157c7707dd3fa81da462d730d` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xdd0d4f773862eb1cb4d713444f4834c64f798f7b` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xdd57c1cb6d04ad5fb19cfd173460276e45ac3b43` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe32b74ceb7416fdd8f558887706db15153fe98ef` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe9fcea6bb5129de1de4419fdfe2342c8e46039f4` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xecf0aec19675029030db03c3bdabf935a4d835b4` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |
| polygon | unverified unclassified | UnnamedContract<br>`0xee7beb13ba4df0bdf569119db2fd32d0a267223c` | non_address_book | unknown | unknown | unverified | n/a | `0xedd5b79d4d27b12f1a0520f30d7cf196e82dc61b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x1e895bfe59e3a5103e8b7da3897d1f2391476f3c` | DooarSwapV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x53e0e51b5ed9202110d7ecd637a4581db8b9879f` | DooarSwapV2Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 86 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
