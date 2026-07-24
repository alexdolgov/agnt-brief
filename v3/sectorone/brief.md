# Agentic Audit Brief: SectorOne

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

- Project: SectorOne (`sectorone`)
- Website: [https://sectorone.xyz](https://sectorone.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, ethereum, megaeth
- Contract surface: 94 unique implementations (96 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $286,558.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for SectorOne. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across base, ethereum, megaeth. Structural roles: 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: accesscontrol (1)
- Frameworks: openzeppelin (5), foundry (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 5; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 37 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 57 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 56
- Unique implementations: 94
- Raw deployments: 96
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

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DexLens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0b7e780982be01fcb55a1e56cee1842ec0a4e17c` | ⚠️ Unaudited |
| DexLens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-254377 | `0x236db792935ab03ac8bd29df5e769c7ed0b28abb` | ⚠️ Unaudited |
| DexLens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-254387 | `0x0ff91ba6928f5bb700662d72b8290fea7a5a96d1` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70b52dbf8794cdc2026da5bfea31647a4e6a713e` | ⚠️ Unaudited |
| Factory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254380 | `0x96559af835e5a3e9bb68c17eba8520295370698f` | ⚠️ Unaudited |
| Factory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254396 | `0xcf0685f37a139de56afc4a89aa343849358c05cb` | ⚠️ Unaudited |
| JoeDexLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d52467d074b3590760831af816046471a81bf3a` | ⚠️ Unaudited |
| JoeV21LegacyDexLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x69298ffe05627268d32dd32762e364bfeb42206b` | ⚠️ Unaudited |
| LBFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254381 | `0x98501d0bb98d92a3234bae0f2a42befb5075224a` | ⚠️ Unaudited |
| LBFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254383 | `0x9d8688043150c2b2a4cdce2ed03eb40b6ccd2c57` | ⚠️ Unaudited |
| LBFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1bbbbcc3bc3f8c6beb174e772930e64ba7f0497d` | ⚠️ Unaudited |
| LBFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254390 | `0x217da3e53f221d1f36e8b09bc7d55d4012c0aa70` | ⚠️ Unaudited |
| LBFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254391 | `0x3357f02fb3aa78fc86d3bccdc5edf039d4b952b5` | ⚠️ Unaudited |
| LBPair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254379 | `0x585e52b2b4fb0ccbd433751791eb60d8e3a50a43` | ⚠️ Unaudited |
| LBPair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254384 | `0xca3fe461f0041662826697916c33c8af5cbdb7f1` | ⚠️ Unaudited |
| LBPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25b320a7c69e66515d7f6c044ec9af49fa1588bb` | ⚠️ Unaudited |
| LBPair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254392 | `0x37d11ffc23f4b87ae65a7ffd4951b331bded1dd9` | ⚠️ Unaudited |
| LBPair | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254399 | `0xf879e534a9c7a099dcb532fd931eb93e653649db` | ⚠️ Unaudited |
| LBQuoter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254385 | `0xe839a439809edc00e004c3c58aa141ff4cb8109b` | ⚠️ Unaudited |
| LBQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04682d6c443c48245a0eb52a0a015f9bfe45ed40` | ⚠️ Unaudited |
| LBQuoter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254388 | `0x15c7efc1837e3867d10dda89b32cd05a46ef4b14` | ⚠️ Unaudited |
| LBRouter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254376 | `0x035a4a069f8949845eef57fcd697d0196a80ae7d` | ⚠️ Unaudited |
| LBRouter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254382 | `0x9adb4beaeecf04313619dbec923f71323d96c26a` | ⚠️ Unaudited |
| LBRouter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254394 | `0x87ac1eb5596d47f6fd7d0d17bee233783db5cfec` | ⚠️ Unaudited |
| LBRouter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254397 | `0xd4f937581650a2d6e416dd9ef5372c1672422843` | ⚠️ Unaudited |
| LBSwaplineQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3b015e2f379019d42ed7427825acaa0a0475742` | ⚠️ Unaudited |
| LiquidityAmountsContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254393 | `0x3cf9c2eedf007cf428b67219dcfb2fd700b1a2c0` | ⚠️ Unaudited |
| LiquidityHelperContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254389 | `0x17e6bfd8b8f8ac6981c9c786137d2d592c6773a8` | ⚠️ Unaudited |
| OracleRewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e4f2fa76a308d80ff0aba8857ef83555fbc8f6c` | ⚠️ Unaudited |
| OracleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x22178951866a9b9768ea3d563c061bff19ebafdc` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x00879e6b688c7d317301b461258895be5baeb16b` | ⚠️ Unaudited |
| Router | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-254398 | `0xddf9025cf1fc3a7945ea54a53d856c81b9284c38` | ⚠️ Unaudited |
| SimpleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4baa24c3d50108cdf8d85fda023eda1d933ed6ef` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2807f5fd3f8fb2810a351bfe0255527103616c6f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6e6577ae563d28c6fd0b5d1f2f32361339deb09e`; base `0xcc356156f743d487f6cdf4cb0291c6ec999ad55e` | ⚠️ Unaudited |
| VaultFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-254378 | `0x2a1960451c99947a9c14f0fa7911df5fa0d0e322` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x057fd3822cf566ccdc021a910b47b4656f165f92`; base `0x0862bdd835adaabe615bd1d953aac9b92de76926` | ⚠️ Unaudited |
| VaultFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-254395 | `0x8f04ff2198550dfdf5169892d1d47573b4f71ba6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (56)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x056b3828a16c24e8d4a5e81050cccd811b399b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e3a29293dedb581d215f310f614e0103b5e8d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x150a90a0a47cb85fd07b9c54e54752c993ed1155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34e90be7969afdbee30ad6f65f17651a3dbfe581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50cc287d65b65036d4f4458c3f821d67c4cdd707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d33eb18118214cc36c865ed9584946c0f794742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd60b2aef1a5694aaa56926af395b1ba069e3ef1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeadf742e2c0af89408531a934518b53c654320bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf09cfd92b665a23ed8f72833b7bee0e033f62f3b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-254386 | `0xf5e5eae03c5ccde623a19117c8b7f788c8812667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf736faae6d0433cc09e3eadc7a026b40b01b2d86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x304baeb300dd71cd76f771343e74612c2237a320` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x3b35a0438b36e045d848c84949734e0f9e130355` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x3c510cbce8effad5dc9868647afd063688d85472` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x41c1624de6f461d2e2719cd76bd1fa8a5c36008c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x423cea630052f7715d782b079c57dc08784e1845` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x6814e09796664be213361bc8b30535d647492202` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x71238df08c3901d8e19f46ef9cb373b8229d7b58` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x771b228b641a30d5846ce638a20cadea153b13c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x8ca1937056f1a8612a7c6513926336927ab6915c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x958e7d2edaee6a0ccf928a40c386b655a7008243` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0xc715c99789f2a37750ac917fca782c9e903d1434` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0xdef5b8b7f467b3451393daf36afb1ad3ced42d5b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0xfc3c8ad928a5b8bd6008d71ec1d64f17cd5bf04a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04600ccbee826a748fb699dd31ccef85ca17ee58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e221e65f85336db137b22596c5c5c259a629d15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e649177be11147947272a6831ee83bf99611689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20918f4ba70439c58d070d4746f3aa303a7595d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2443e5165db8a8a7cff5d66cb9861806332ace4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25d526ba7c9905c764aeb63bfe0b0ddf1c69bce1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x289da15cb216f812af2d7eb21e395f5cde28981e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x335c800782e89e80f80319e88bcdc0759d3120ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x400546670ef7db7e03e3024f6f4593a46159663d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43a08d9c7a30645b41fc48c8e81c7ad3de5587bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x55506a6d88106820e6a33a2c3feb7c57f41f1688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59691fb945b7199d1f87e84063d66f05adf83e62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a5c0c4832828ff878ce3ab4fec44d21200b1496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d5c4610761d922b1b298f05f39eb9e5f8698866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ed434eb77a56104aa4a4067261dd298880fd414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e0f1d95a738d9db8f629834a4b7d67257e021a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95abdcf4e3711690cb99dc0cc96c4254744af43d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9882a2fbb0a4393302482bb5258c2f9ff8887479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaef5b36234af8bf117753b69d352e33a654a60b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb2755feec193a718f6135351057a63b2f7b95cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbbcf4b8aa06e524c88943daf74228df434c4c57b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc83aea91be690cdc9a5eb60a23ad9ea7fedf71e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc0303760e38bfe1ab1484c6e2d892640a94484dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc3076d34a40680daf1774b7626902a4b31b92e36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc3f8d0c672b5388b4ff5a99a9d3c182332b77c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd47885eda0a0b4ec79e5c37379e8d2e1d0b39017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd693b9f810d0aee1b3b74c50d3c363ce45cec0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf1f93df50aa659cec23b8a9e4e982ae9c1490f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeab2abfb36c28316b0b7dae80cdccbd26b2e6833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xefe9a79d4f319a9ffcb61edde7648833eae80b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4fa4dd473d6188eb12e29500ced7559d093c0ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe5566f2d6fbe1913d8f3ef1dbdf2e46dd811f4f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 44
- Live contracts: 0
- Unknown liveness contracts: 44
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=44

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | unverified unclassified | UnnamedContract<br>`0x04600ccbee826a748fb699dd31ccef85ca17ee58` | non_address_book | unknown | unknown | unverified | n/a | `0x183902a82032cb25b50417178fe433a8a5c458c1` |
| base | unverified unclassified | UnnamedContract<br>`0x289da15cb216f812af2d7eb21e395f5cde28981e` | non_address_book | unknown | unknown | unverified | n/a | `0x183902a82032cb25b50417178fe433a8a5c458c1` |
| base | unverified unclassified | UnnamedContract<br>`0x335c800782e89e80f80319e88bcdc0759d3120ef` | non_address_book | unknown | unknown | unverified | n/a | `0x183902a82032cb25b50417178fe433a8a5c458c1` |
| base | unverified unclassified | UnnamedContract<br>`0x400546670ef7db7e03e3024f6f4593a46159663d` | non_address_book | unknown | unknown | unverified | n/a | `0x183902a82032cb25b50417178fe433a8a5c458c1` |
| base | unverified unclassified | UnnamedContract<br>`0x59691fb945b7199d1f87e84063d66f05adf83e62` | non_address_book | unknown | unknown | unverified | n/a | `0x183902a82032cb25b50417178fe433a8a5c458c1` |
| base | unverified unclassified | UnnamedContract<br>`0x7ed434eb77a56104aa4a4067261dd298880fd414` | non_address_book | unknown | unknown | unverified | n/a | `0x183902a82032cb25b50417178fe433a8a5c458c1` |
| base | unverified unclassified | UnnamedContract<br>`0x8e0f1d95a738d9db8f629834a4b7d67257e021a9` | non_address_book | unknown | unknown | unverified | n/a | `0x183902a82032cb25b50417178fe433a8a5c458c1` |
| base | unverified unclassified | UnnamedContract<br>`0xaef5b36234af8bf117753b69d352e33a654a60b4` | non_address_book | unknown | unknown | unverified | n/a | `0x183902a82032cb25b50417178fe433a8a5c458c1` |
| base | unverified unclassified | UnnamedContract<br>`0xbbcf4b8aa06e524c88943daf74228df434c4c57b` | non_address_book | unknown | unknown | unverified | n/a | `0x183902a82032cb25b50417178fe433a8a5c458c1` |
| base | unverified unclassified | UnnamedContract<br>`0xc3076d34a40680daf1774b7626902a4b31b92e36` | non_address_book | unknown | unknown | unverified | n/a | `0x183902a82032cb25b50417178fe433a8a5c458c1` |
| base | unverified unclassified | UnnamedContract<br>`0xc3f8d0c672b5388b4ff5a99a9d3c182332b77c4a` | non_address_book | unknown | unknown | unverified | n/a | `0x183902a82032cb25b50417178fe433a8a5c458c1` |
| base | unverified unclassified | UnnamedContract<br>`0xefe9a79d4f319a9ffcb61edde7648833eae80b61` | non_address_book | unknown | unknown | unverified | n/a | `0x183902a82032cb25b50417178fe433a8a5c458c1` |
| base | unverified unclassified | UnnamedContract<br>`0xf4fa4dd473d6188eb12e29500ced7559d093c0ec` | non_address_book | unknown | unknown | unverified | n/a | `0x183902a82032cb25b50417178fe433a8a5c458c1` |
| base | unverified unclassified | UnnamedContract<br>`0x0862bdd835adaabe615bd1d953aac9b92de76926` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0x0e221e65f85336db137b22596c5c5c259a629d15` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0x1e649177be11147947272a6831ee83bf99611689` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0x20918f4ba70439c58d070d4746f3aa303a7595d8` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0x2443e5165db8a8a7cff5d66cb9861806332ace4d` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0x25d526ba7c9905c764aeb63bfe0b0ddf1c69bce1` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0x43a08d9c7a30645b41fc48c8e81c7ad3de5587bd` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0x55506a6d88106820e6a33a2c3feb7c57f41f1688` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0x5a5c0c4832828ff878ce3ab4fec44d21200b1496` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0x7d5c4610761d922b1b298f05f39eb9e5f8698866` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0x95abdcf4e3711690cb99dc0cc96c4254744af43d` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0x9882a2fbb0a4393302482bb5258c2f9ff8887479` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0xb2755feec193a718f6135351057a63b2f7b95cef` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0xbc83aea91be690cdc9a5eb60a23ad9ea7fedf71e` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0xc0303760e38bfe1ab1484c6e2d892640a94484dc` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0xcc356156f743d487f6cdf4cb0291c6ec999ad55e` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0xd47885eda0a0b4ec79e5c37379e8d2e1d0b39017` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0xdd693b9f810d0aee1b3b74c50d3c363ce45cec0c` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0xdf1f93df50aa659cec23b8a9e4e982ae9c1490f3` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0xeab2abfb36c28316b0b7dae80cdccbd26b2e6833` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| base | unverified unclassified | UnnamedContract<br>`0xfe5566f2d6fbe1913d8f3ef1dbdf2e46dd811f4f` | non_address_book | unknown | unknown | unverified | n/a | `0xded212b8bab662b98f49e757cbb409bb7808dc10` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x056b3828a16c24e8d4a5e81050cccd811b399b08` | non_address_book | unknown | unknown | unverified | n/a | `0x81dcf6c408cd14d3940068e84c3f2364b3c43852` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e3a29293dedb581d215f310f614e0103b5e8d27` | non_address_book | unknown | unknown | unverified | n/a | `0x81dcf6c408cd14d3940068e84c3f2364b3c43852` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x150a90a0a47cb85fd07b9c54e54752c993ed1155` | non_address_book | unknown | unknown | unverified | n/a | `0x81dcf6c408cd14d3940068e84c3f2364b3c43852` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34e90be7969afdbee30ad6f65f17651a3dbfe581` | non_address_book | unknown | unknown | unverified | n/a | `0x81dcf6c408cd14d3940068e84c3f2364b3c43852` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50cc287d65b65036d4f4458c3f821d67c4cdd707` | non_address_book | unknown | unknown | unverified | n/a | `0x81dcf6c408cd14d3940068e84c3f2364b3c43852` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d33eb18118214cc36c865ed9584946c0f794742` | non_address_book | unknown | unknown | unverified | n/a | `0x81dcf6c408cd14d3940068e84c3f2364b3c43852` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd60b2aef1a5694aaa56926af395b1ba069e3ef1a` | non_address_book | unknown | unknown | unverified | n/a | `0x81dcf6c408cd14d3940068e84c3f2364b3c43852` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeadf742e2c0af89408531a934518b53c654320bc` | non_address_book | unknown | unknown | unverified | n/a | `0x81dcf6c408cd14d3940068e84c3f2364b3c43852` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf09cfd92b665a23ed8f72833b7bee0e033f62f3b` | non_address_book | unknown | unknown | unverified | n/a | `0x81dcf6c408cd14d3940068e84c3f2364b3c43852` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf736faae6d0433cc09e3eadc7a026b40b01b2d86` | non_address_book | unknown | unknown | unverified | n/a | `0x81dcf6c408cd14d3940068e84c3f2364b3c43852` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 75 |

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
