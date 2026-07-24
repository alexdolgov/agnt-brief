# Agentic Audit Brief: WardenSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 3 audit(s)
- Eligible audit results: 7 (3 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: WardenSwap (`wardenswap`)
- Website: [https://www.wardenswap.com](https://www.wardenswap.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, bsc, ethereum, optimism, polygon
- Contract surface: 319 unique implementations (319 raw deployments)
- Coverage basis: 4/7 confirmed own live verified implementations (57.1%); conservative 57.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $249,004.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for WardenSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across arbitrum, avalanche, bsc, ethereum, optimism, polygon. Structural roles: 7 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (7)
- Contract kinds: contract (7)
- Detected standards: ownable (5)
- Frameworks: openzeppelin (7)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x204bafc07e707840aa1f7abdb95cae21742702f6`, chain 1)
- UnnamedContract (`0x39f97198c5dbc193eb962c4b3b7e447091a18eab`, chain 1)
- UnnamedContract (`0x7ea8c22e6dcd7bd69eb180664da68e1f1f11d696`, chain 10)
- UnnamedContract (`0x7a1decf6c24232060f4d76a33a317157549c2093`, chain 56)
- UnnamedContract (`0xa5fdb0822bf82de3315f1766574547115e99016f`, chain 56)
- UnnamedContract (`0x030b8b7bf245e762736e65c0903295447b898c30`, chain 137)
- UnnamedContract (`0x3657952d7ba5a0a4799809b5b6fdff9ec5b46293`, chain 137)
- UnnamedContract (`0x226cb17a52709034e2ec6abe0d2f0a9ebcec1059`, chain 42161)
- UnnamedContract (`0x5ef960eb78b8cfc11e654d03beeb313badf5c7c0`, chain 43114)
- MasterChef (`0xde866dd77b6df6772e320dc92bff0eddc626c674`, chain 56)
- Timelock (`0x7a6981d4dbfa6b8fe4a75b8947363084719a3d86`, chain 56)
- WardenRouterV2 (`0x451ef8d6b645a60115eb8b8bea76b39c0c761004`, chain 56)
- WardenSwap (`0xb75fa2a799fc7935f37500ba9780cbe10aa6610a`, chain 56)
- WardenSwap1_5 (`0x359b9fc0765481569c33ccef23bd14d0878125ae`, chain 56)
- WardenSwap1_5_Aegis (`0x68fac8a95d04b69bdbf66ca554f47a8193d0e5b6`, chain 56)
- WardenswapV2Router02 (`0x71ac17934b60a4610dc58b715b61e45dcbde4054`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/7 (57.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 303 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 16 of 319 unique; 303 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/21
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 298
- Unique implementations: 319
- Raw deployments: 319
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 3 | 14.3% | 2021-05 |
| CertiK | Tier 2 | 1 | 4.8% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MasterChef | unknown | project_anchor | own_supporting | 0 | bsc | unit-396397 | `0xde866dd77b6df6772e320dc92bff0eddc626c674` | ✅ Audited |
| Timelock | unknown | project_anchor | own_supporting | 0 | bsc | unit-396394 | `0x7a6981d4dbfa6b8fe4a75b8947363084719a3d86` | ✅ Audited |
| WardenSwap | unknown | project_anchor | own_supporting | 0 | bsc | unit-396396 | `0xb75fa2a799fc7935f37500ba9780cbe10aa6610a` | ✅ Audited |
| WardenSwap1_5_Aegis | unknown | project_anchor | own_supporting | 0 | bsc | unit-396391 | `0x68fac8a95d04b69bdbf66ca554f47a8193d0e5b6` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NullifierToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3598059bfe7ce24ab939bee17bf06101ddfeddd1` | ⚠️ Unaudited |
| SpartanRoute | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecc52cc4d767d85a451b542c09a0eb1392e0d88a` | ⚠️ Unaudited |
| Tempest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x372aed0528ea4bc95e1101b2882cb15fca4b226e` | ⚠️ Unaudited |
| WardenACryptoSRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21068601985069868cef87b951763e47cd5e0711` | ⚠️ Unaudited |
| WardenBestRateQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d32aa3ce12c9869156eba5e384ea00e81c34eff` | ⚠️ Unaudited |
| WardenBnbRoute | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83e187bba6f16424b8efcdc21ba13d0e0fa9001a` | ⚠️ Unaudited |
| WardenCosmicBrain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c0d058aab0b47a377c25effc856b84f0ebcb783` | ⚠️ Unaudited |
| WardenCosmoCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf0955a3c4d3dd474b397ae4cdb8d264065c575a` | ⚠️ Unaudited |
| WardenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3657952d7ba5a0a4799809b5b6fdff9ec5b46293` | ⚠️ Unaudited |
| WardenMdexRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00a73c823044ff385d905636ebd48a122517e516` | ⚠️ Unaudited |
| WardenNerveRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3d8efc4c3289163e52de716212b67e3c571b602` | ⚠️ Unaudited |
| WardenRouterV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396388 | `0x451ef8d6b645a60115eb8b8bea76b39c0c761004` | ⚠️ Unaudited |
| WardenSwap1_5 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396387 | `0x359b9fc0765481569c33ccef23bd14d0878125ae` | ⚠️ Unaudited |
| WardenswapV2Router02 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396392 | `0x71ac17934b60a4610dc58b715b61e45dcbde4054` | ⚠️ Unaudited |
| WardenswapValueDefiRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64e16e42493c9d537521a0346c91e254de9ff415` | ⚠️ Unaudited |
| WardenToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0feadcc3824e7f3c12f40e324a60c23ca51627fc` | ⚠️ Unaudited |
| WardenUV2Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0235910cd3017178f69db8ea98c43f3764cb6978` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (298)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b6f3c17e1626a7cbfa4302ce4e3c45522d23a83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396378 | `0x204bafc07e707840aa1f7abdb95cae21742702f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c4b4ebbc2676d0bd16ba792fb1be800cd7eafaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396379 | `0x39f97198c5dbc193eb962c4b3b7e447091a18eab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a24e3d0c1cac841478ff6d7de5d7cefd7350724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b7ac96a0698bbcd80dbb7b17130d0a94284bd4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7968edaef6e70a406bcbc799682e05e512a42b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5c8c2cfed4237dfb50234500829c2d92170a840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbf093f64a60b7abcc9721f52903537ab5f74699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9f10830f90bac287e16dc70875786e9a6d97eb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x02800d3d33e7e9d32c586fcaaea0412e5a57792d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x158a3bf73c07a64225c1568d4c85a1d78480c0ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2208705b6f232ef498d46514b5130192789e9dc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2c49bdff3acb931491d1c0231952d9718c516539` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2c7a8122a1b512adc848024ce72e837001ecb586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x338f48b6c18a49fc7dd7137498617d06a5e089c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x493f1b81b05e29e86d9a4762944ed8b5fd2924a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x71762f1fdc36afc769a25dcd73226c6edca6832a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x755db0a2c1041b20ad123792181c55a3d6e2ffde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-396382 | `0x7ea8c22e6dcd7bd69eb180664da68e1f1f11d696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x815f667a542653d89d44ff9d09b11dd7d4d78004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x81d10cbea2b7e2ce9589cfe48442a83f013885ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8860dc637a513027e4883a77a5567cfeaa718ae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x978e214ce2e34d14cf80ee6c0951909cab18abb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc6433cd73071bb5fd607a0bd3cdc15487590825b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdcc3a56e97a7448c64341e38867241f65168817d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe2f50042766bdea8bcbfa0ff6a94bab65f897826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf220408d5f8cf3a2d43126d3413fe3acbdf94363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xffbd0e92861b9cb4b7ae17361786868e6f2f9324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02f79f71b7dffd0f15a22db08143924fb6ee7d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x034c8c6ab0f1b8058c31841ea445afb069f91895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x040ced4f68bdc453b9e774f96c5b75b56bfaff04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04a6b323711de0a4044de31d01bf8d9418defa32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x080ca1616e922f28b0983c28a3fe5471cde0357c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x081b7166e27f6be490b6c3229b3ebeaf23e710c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x095429a7ece237e70a776669f255f1daa6842602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x098ae6953f5a1465b92ab4f0669abd7cfbee581d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a64baad4cfe6609df51920962c945f2296bead2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ccfdd8ca03c87565d7323055001da0b38305e9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0de1a48edf23263af08dd08a2c54c5161cb01a18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fb8df744a8940da4b544f9f1f393891831cfd0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x105af48789fd5f4b77fa54760e067bb44ab861ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10d54ac97de423c5ca19a48173ac0f602b6e962a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12c1ca857112ab5bfa2709efd5f1a84c198a876c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x142791b2b19d4e62022f47d4e32c6a09f903faba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x144e133028c8811d0f9decf87ef778410c988bac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1454fa540f29885605c0e34360ebb2ad28b8ae8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15089db8d2de750b5ee39a6f99f1bbf8d7e2bfce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16173e3caaf58a4934dacca7e80f59c8bccd730d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17d1f41d7a94270177042d20ebe4088f67eccf06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17d82eaef88752322dbfebdefe6cf9eafff688d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x181d91becdfc99e55cc0915d8afb546b5fcee459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18240dbd0c814536cbe52d202a3fb55fe6612467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b044bfaf92027f9a44a274f7eb5a1292e52ad0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d3db697b99a79608f7491a4065ea1226823943f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1da0977134c5c80236c9111bad78164041da2a36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1fabd0f3732b9d007e374c457c095566a8657f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x209294b70ec5ea5d2adf6bd1efc75f7ede7c73e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21b0aed6321bb9279ba168ad4826fa2d02a58b12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2208a494b50b71090299a96447e35a8150e6a8e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x23c26e05982a4ca982e06e8c693cdb96be5fc471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x253834655296d2b9b2a87814351410e7f093170a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2572f592435cd87a673bb0e1ecd8114cf7360812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26690f61813563969da61f08666aa50c6bc7faad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27169f397cb8782b58f7777289b5aaeec385f23e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28b1d58ab44dc7b4d9b55b1982b584b134a08b7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x292f588384a02169598cbecadf635779eca295f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x295ab7eb42a0a8f89b406d9caddf6558c1667f37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29b5a2ed3de9b8930cc7f5c0a35ee65ebdb3641e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b2369ad8e5a465de428893d3aa792cc32106154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b3b27a5536abafc4ea66ecce78c0dab414fe0b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c2231ed6798956a2af995e252f5e7ae6bf7c789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2daed0bb4916ac95c903997fcf729e9a858ac298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e8b5b47c1e46617bd724adbc14135681abfea2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30fbd1d9902980b56c88e2e835985041aa37aaac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3442013773e49e13a111fb4c5bfb50d46206aceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34507a01f35e691773711510461c5e2e8f56ec36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x350a53c7f407ece70890bfe84960f22076eac9ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38013cac5e964d03df7f6b8e962197a12c3e4035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x386b11cb7f0867411e4036241655d3deca7d820e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x394f4e81c195a78abd1a77038386e91d9999e964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40f68fb65e1065308f4c996d77cb8a38040de9fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4197d5c72b4dd94da1d9b0e087b300ee83e0c039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4264b395c4b80c421b821d072466aa9fb18e5523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4298cc2d6402e1dfc20ee517d96aa6cb05bf7f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43253edddffbd7fd7868cc26d067dfcaa3a1b341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44152fa75b3002869b41131bbea91746e3827b4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4430ad4295ff976f88760919c258fc3bf342eca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44ba9f33fd2df205da5396dd68d3aec49315bcb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x472104c31ad3f8ca53e8dac91675b2074449e8d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x486a58f3ce50f7633c014b50ed98d15c85d792bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x492f6b0a62a57a064fdd5c9153c1b8d127625eba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49682c847815baf644b783d446d1d4a99509af1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49b7692a1926d9ccd83a16cdf0ffc140f0812005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4bee7667e2f8486cd7cbfe3ae9b65a29d2627f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d9e344527b01af7dc7cdd1cdead0cd4be7c150c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4de6f1f6b0ad2b8cd2320157feba9e2de9672321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e662429cc5cecf232f431e3b5c4a9bf42a5c86f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fcb14295d1ed4fcaf91fcc6ff22f3cbb20234af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fdc1c4b2032d85e925ab3ae66c77143fe3e6b72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5045aa5ad9219437026f3088e013214f5b3ca65f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x526b8e5eed34701dfface0158f14a402f34c9df7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52b54fbac77f30d882b7077599b70055e7e52577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x541925be5bce9e55c76ecfb3edb46a9cd15df9de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54eb7b6585c179c86b09a9b83b84e56bc799d02e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5581ddd4a3d19a5308d7e24ea4675af17fed56c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x558930babd1e0d6ee0fdf7ba74281d215af2325f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55e39e02b84b1eeb453d73b3eeb9b50b8789882a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x578a9132536525689b960e686d741cf3e209d374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a0dd2a7ef0f0337c5679d98dda0f5c8034ef363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a328183db56dd02daa27b8a2b9c4c934d283da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a4cbf638bcfbe19ff1a11bdbb33253773ee005b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b4c0202b6e6782e3c2d3560007c0fbdf2e9cbfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5da5eaa0d1ede9e5ffc41e8b6f73e31856dd3e42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x602fb05446a072510d21c381af22740348870f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x629d58eab1a75575f4549de5500f096f04797067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62bebcff620e3fbcc205ceeeaf4b189b4ebbf03e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62cf0ad98258a3adf7e0ef049c14a622a15fa0ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x654c191c09a0965fad8d31363c7daee24fa08fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x661f001c96ea13f423d421b970f32d1e922293f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6795906fc59e22018d723b49b26dfbf82678d39e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67a9171eec7f3a8d1a039fa6b550e04b6bf00081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6923f0756e1344b22bb020086d110ca40b1a18a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c50cba4f6c45dfdb8515fef5ecb0f3da6bdb75a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e50bbd1f3993da79ccb7cf8fb539c1ae91398d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6eab6ab41bfbb84ffdbb49ae27da1e03f44759cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71c45babc04bd28cd2f681ae109e08b7aa15e0e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7239a0a8447ecc2179b9678fa2e2ab7a8b646380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7298af45ae61b7db8d5267f71233d84e9a35f389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72e6e1c7a535924a290fb6f408c1eb0253a375d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7313eeb7cfc7775242cf9647dcffa415698236a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73a396e7b30ec0f4f8ff5671b279d482abe03e38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x740094bf862cf603cfe3998e50e293e2fd68c191` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74157a292b3f120b2fb129a6b73fcaf4ddd9aa77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x747b5b3b6758c164ace810f25489eca70ac7c6cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74ae6ef5ee4b98c6bd847f3f9374346687d41dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x758d5d80287257cccf8fc04412c75f4ef99c435f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x762cadc6ee9f87c15c5cadfa16b94b2fdf0425e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x762e5ff9ccdd82e8b71c6508eb7f5c3b19915eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76571dd67adf0dde6773f95169dbc13dd0802cef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7663dd9f437156f2f8fe911c0de7e379384b150f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-396393 | `0x7a1decf6c24232060f4d76a33a317157549c2093` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7af466723308a2eedab2c22fdaa2eb9be7902c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c5d43b27926789f707656a48c2aa4330ac01a99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d59f76728d98985840a06171ae93595551bfad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x800d848c01e7b9bc8cc30f4fab1ca5003ec9c0ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x814180b140d33cc890a704c96b19ccbd731c3613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81fd809604a8796be435a78f2b5ca7b3405a7ae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x838941361d3d1631a2817b7c9a381dc13db70ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84d7bdeab89110beca63d1fd73acec23f851e9ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85608b78167e3aa40cd5e3bb51f1d773e266ea25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x863d3b07082fc59dd51f372ff4f08d91b0b0bb6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86b52c17c2fb16c1eff849d284de9b546dc41ae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8703388874ddd0302424e61a7582cd4003b23400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x878a11ac067e0f19069716a9463ec1deb8dd98c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x878d63b455ec856de8aa9db43c114d953ec83b2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x880be801dc4aaee81534e68448eb89681e1709e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8814aa828204e31ec6c397ff03b0caf2b9e556db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8867561dbf20edb27ccbfd1f8f79fdb758be24b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88c18579ef6dbe0c6e12da43302aba5f8c659477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88e5ff0abb88ff664ffcd4de7a6f5471338c9581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88f2c1ad50cf9e2fe91e306d9b6daff7738dfc8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x892ddc2048e49ccbeb66e4eade17eff2b198cc32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x898f503742d999e9ea8b3be0ff38b86606a99843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x899ea261c5a9be616ac3b8003c51328785a3a018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8aaef70175412e1b5faa35a456e5870f25424d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8abc39fc81a17e89abd4e3db6ef44df245365a54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ad070eccdb94d038faa377537cf4aebfdffad5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f60df7acb65708ab87b7c5d6da371e64eadc5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8fce30abc7a7c091b37f463e8686b27c02e5047c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x917958145208bdda3643d8a4fba7f03b1e3c720b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9274a12777688612d51ae35e64c23c806b387684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95d9b6d0d0472cdfe53d5ac27f40420283af4a6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x960741753cbc1df5b89d4d6f02bd0aec3050baad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96ef66c1251123f340985520afff957eea4ff7e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9708e909d2cf06b0bb3ce9e06e113d2f8e70e5fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x973ffb39c52886e01e1bd0da559a8d2b2369ba14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99841a129cecf68740b571b8e5afb7cbd88a7a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9cbd1322c3d029d32357808665dcae5c286c7081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d3ccd807d3c1508331cf2162babb56b33131ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0959e78a594691ec89a0912939cb7ebc228f3dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0a663b9ef6372183feb03649fff202277ed2a3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0ef8dd5312cfe9d63ec66ee925993d2b8056efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1f4c9f8fe21aed36b23f0c7bb5650e2062e2ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa24a012537e434a0e2741ca16bbda2d7d12fa42a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-396395 | `0xa5fdb0822bf82de3315f1766574547115e99016f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6d21739eaeb7b10857bafd2aaf8d36f74376bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa766f7746b6bd44fee24fc111b0dd6d51082f620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa85b0689493e942c760d144301a16b3f360305e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8edc071366b4e8b804054c0f85c6330767f5088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa95400c716d64e020d08b026fd62e2ce5de8a1aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9662eeaa34196c1827471e91eea9db9400b1780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa30aa3b12a754218933acb7d5967243306592bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab86b6973bcb8e763b5e7168f9037f0b22569e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaba915022945eb70badfe6a551ce2cafba8b674f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf62d8179ddbf562fe077aa63782d2e1cde19168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0393aa28ce746aa1e7d192a652912c0c261fa5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb0f13bb8129ecbe6517977e9820f647c7174f1ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb121c79f10a88175750029fbfb9142230dda34f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1d46041f2dcedc4b90980758e069f678d5ce41f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb31cd83b1eedf5d95a01824df6baf0c2da83de73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb34f47457892fca539d0be2fad392cb31c6c4d68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4f9e2c907fb12f0a422009128ed88148da7b910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb567596372bd773be2226aa2c13b3fe2cee3d6b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb657e23418d1eb748d88ba9fc474c655fecccff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb69dd96df44f583d8ccb7fa2919d1cbad28a0844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8339b1c8c68e17c938d797aca21f3351b06c69f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb84e5c701c59794ee5e264da7e10638e4c4d2237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb881471df08f5c8af8af24cc110807c77f1653bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8a0a1bf85cef55f006f93cb846a059f32a948e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb917a9b1b6c5e8b003d0c072718d4dd72c8e7d64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba2877a13bc48292ab50b5dc0cb20369ac5723d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbbf50bf50729785af9fbd62d0a715fa0d083ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbdafe76ab5379377bd6b773bc76f653445b7dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbdac6507ce444a792bd6667cdbf89a789e785274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfee3dca1bdc9014747b9d10cc44ec5ecd7a8686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfeed36e84c10f88fdcd4591e75c092a2e8eece7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc127d25492dd6c4e4b41293f197e7efb9ef08a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1548b9eb032f40aae5071b344b98574483e259e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc185140c0d6146ec358a4335485fdca848780476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc291655e58a82c0c879791ecd79aabbc9b7787b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc29789621c6206039d11e0429233ae7dd5abe4e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc377b7431697685a46921d169a0efeb0c152da8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc57360b997a1ee1b64311558cf6477fa2e923e85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7a29b469201127d867b2c53ee8d1d9eea6cb4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca09990986bb5c0983345777882f82eddd2ffe7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcabad684f22ab1228a4452f6876facd1142f4d9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcadd44e70db70b93650863e6189b15bf7b62e2e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd864a62d37bbf7584917b7ff95e2458785af2b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf3b7841157f0d83c898148b4a78e0a7a2700e60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfe589aed4aadc3f5b21e10b0699ae2da5850642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd37ec23052fa09cd2783e667c2364d84a19d83ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3e088e470224b4facf9bee1e54429c113efe2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4165e994335d561607fe0f3c239033cb5bc14e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6bbd64d42731c7ae026ac18992d6623a84f4072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd71cdb7110eddfdc6fc344acee356e5f43b6a30a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9566c0fff3591193ad2f505e65bc0c587617f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd95925b21100e1c5c36d6bb8e742a0d4e33fa9bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdda9e9f924de58098c58c577bc8fcd383a919524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde88c82fab0b6c3a70a0f32cc44113e74993f468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf01b2057c8803f4dcfa44d667ec0e26a16a7df7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdff6a2530089106da0d0c1d11a78bb909a765aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe34643de53952617d03ae6e4c585c98769c7a611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe368ac5321b3c51cf043af87ee3ce5010994d48c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe440a53533952ddf6e3b8d8f25e1fb1607a68a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4e9708b93d22c4c42b627159751ee928cae11ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe55a3fa8a344763f4fbabaff49c7a2d5d68b34f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7f0c889578c2071602b67bdeed24a7e07ae0327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9c548d94d33afbf04317f4c1de3f88454976189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea528824e0de1825fa9b7a39ac84abadd5c5ed3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xead24ce312b0a5f594c60d6b121798bb6ff285f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xedea30ea938e22c3c347a5fe496468a8ae0c4149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2b4cc788a3dd8ae507684c961c5b699b46a9ae6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf305c10e541ad04aa658b2a3303bad5b12bed4a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4bd21762402448c4e76a94182b7fe346945abab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf55f7d2ceb968aacfe33968edf0c39b312e6939f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5b1a385f88c3609d8ba872553981446f1bb3229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf74c5d4c6cdc321ba222f4188d6d49377ed44309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf76b5bee04b1490cd6a40d5d232f379ee64c6c84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf877eca658b98a56d35989741756892cf5e86655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9af83b52c2c2bdbd17d14a25372700d51ab69b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9c7ee68da9fc03ff26b3996ed85291324abde3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcc469fef182096055695d16fd8dd6c69311b2e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe59fab25ed9a323baf1d265c3dc3ff236380d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff4af40e13447b474799a35bb60a331dd352355b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-396383 | `0x030b8b7bf245e762736e65c0903295447b898c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14e941145353a4a97386365f2ec5eca5d03129b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-396384 | `0x3657952d7ba5a0a4799809b5b6fdff9ec5b46293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x39723675926df8c1c8de690ed8516dbc85eab4fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb75fa2a799fc7935f37500ba9780cbe10aa6610a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd260f87c39f31685398348af0259d323a52e4b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe2e045a69e08cf8ff499400522538c554fed3efd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0feadcc3824e7f3c12f40e324a60c23ca51627fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a5f88fb85bd2b5eb1b5dc738ae02a5f0a69729f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396385 | `0x226cb17a52709034e2ec6abe0d2f0a9ebcec1059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3657952d7ba5a0a4799809b5b6fdff9ec5b46293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x71ac17934b60a4610dc58b715b61e45dcbde4054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6f94ac0e173a05865c522caf801db6a7da7fd3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac8b2026587e2e9f83f066cd302b1b71dc41f6e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb041eec12596841e91b2cb81ea9b6037377684c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0261fe3d25e470c387f456cd68b69eaf20b21063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x156928f341f8618ec88820f85b4ea52468d088e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e92474af285b41b39a0701109ebc22195f3583f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2eca6cfc9f78c9dd10e03520613a647ac8b5fdcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ffecb3df6c24b3676cafd408b561065337326c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x537b067958afbc9327958fb7441f086b71888a4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5731a6b2c7e485a954f2545850a3849e4154d7a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5781d7645ad1c0e3d19365324f0b910e8a977974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58ace9e109d9e34bb12b0afb3d09e9d94b849544` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-396386 | `0x5ef960eb78b8cfc11e654d03beeb313badf5c7c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x672c44cba94c08b9a7d079d79a25107da5d4f585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9db45b627ee95ac86b059171cb17dc266be857fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2b12a2816d2cbe083b45367e97824ec2bb2d97a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3a8412c853043d4390d715b133d6c60214585de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb048ed7234277fe37db6fa00ed4d3d54296c275b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb1fae488e9cc7eb03a2b8ed5ef2f5475f4aaf1e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb964976c3c4f60278fc755ffc5a65008a147b014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc05d55315c78d8884d31656d56b20c14f89ef68e` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 289
- Live contracts: 0
- Unknown liveness contracts: 289
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=289

Showing first 200 of 289 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0b6f3c17e1626a7cbfa4302ce4e3c45522d23a83` | non_address_book | unknown | unknown | unverified | n/a | `0xc866676cfc397b279a65cae53bcfea6a3d63a16e` |
| unverified unclassified | UnnamedContract<br>`0x2c4b4ebbc2676d0bd16ba792fb1be800cd7eafaa` | non_address_book | unknown | unknown | unverified | n/a | `0xc866676cfc397b279a65cae53bcfea6a3d63a16e` |
| unverified unclassified | UnnamedContract<br>`0x3a24e3d0c1cac841478ff6d7de5d7cefd7350724` | non_address_book | unknown | unknown | unverified | n/a | `0xc866676cfc397b279a65cae53bcfea6a3d63a16e` |
| unverified unclassified | UnnamedContract<br>`0x6b7ac96a0698bbcd80dbb7b17130d0a94284bd4d` | non_address_book | unknown | unknown | unverified | n/a | `0xc866676cfc397b279a65cae53bcfea6a3d63a16e` |
| unverified unclassified | UnnamedContract<br>`0x7968edaef6e70a406bcbc799682e05e512a42b68` | non_address_book | unknown | unknown | unverified | n/a | `0xc866676cfc397b279a65cae53bcfea6a3d63a16e` |
| unverified unclassified | UnnamedContract<br>`0xd5c8c2cfed4237dfb50234500829c2d92170a840` | non_address_book | unknown | unknown | unverified | n/a | `0xc866676cfc397b279a65cae53bcfea6a3d63a16e` |
| unverified unclassified | UnnamedContract<br>`0xdbf093f64a60b7abcc9721f52903537ab5f74699` | non_address_book | unknown | unknown | unverified | n/a | `0xc866676cfc397b279a65cae53bcfea6a3d63a16e` |
| unverified unclassified | UnnamedContract<br>`0xe9f10830f90bac287e16dc70875786e9a6d97eb4` | non_address_book | unknown | unknown | unverified | n/a | `0xc866676cfc397b279a65cae53bcfea6a3d63a16e` |
| unverified unclassified | UnnamedContract<br>`0x02800d3d33e7e9d32c586fcaaea0412e5a57792d` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0x158a3bf73c07a64225c1568d4c85a1d78480c0ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0x2208705b6f232ef498d46514b5130192789e9dc8` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0x2c49bdff3acb931491d1c0231952d9718c516539` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0x2c7a8122a1b512adc848024ce72e837001ecb586` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0x338f48b6c18a49fc7dd7137498617d06a5e089c7` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0x493f1b81b05e29e86d9a4762944ed8b5fd2924a5` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0x71762f1fdc36afc769a25dcd73226c6edca6832a` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0x755db0a2c1041b20ad123792181c55a3d6e2ffde` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0x815f667a542653d89d44ff9d09b11dd7d4d78004` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0x81d10cbea2b7e2ce9589cfe48442a83f013885ab` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0x8860dc637a513027e4883a77a5567cfeaa718ae2` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0x978e214ce2e34d14cf80ee6c0951909cab18abb8` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0xc6433cd73071bb5fd607a0bd3cdc15487590825b` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0xdcc3a56e97a7448c64341e38867241f65168817d` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0xe2f50042766bdea8bcbfa0ff6a94bab65f897826` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0xf220408d5f8cf3a2d43126d3413fe3acbdf94363` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0xffbd0e92861b9cb4b7ae17361786868e6f2f9324` | non_address_book | unknown | unknown | unverified | n/a | `0xbe9228ce3b7ed30c8646143d0e56ee16fec6c07c` |
| unverified unclassified | UnnamedContract<br>`0x02f79f71b7dffd0f15a22db08143924fb6ee7d26` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x034c8c6ab0f1b8058c31841ea445afb069f91895` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x040ced4f68bdc453b9e774f96c5b75b56bfaff04` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x04a6b323711de0a4044de31d01bf8d9418defa32` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x080ca1616e922f28b0983c28a3fe5471cde0357c` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x081b7166e27f6be490b6c3229b3ebeaf23e710c7` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x095429a7ece237e70a776669f255f1daa6842602` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x098ae6953f5a1465b92ab4f0669abd7cfbee581d` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x0a64baad4cfe6609df51920962c945f2296bead2` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x0ccfdd8ca03c87565d7323055001da0b38305e9e` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x0de1a48edf23263af08dd08a2c54c5161cb01a18` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x0fb8df744a8940da4b544f9f1f393891831cfd0e` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x105af48789fd5f4b77fa54760e067bb44ab861ec` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x10d54ac97de423c5ca19a48173ac0f602b6e962a` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x12c1ca857112ab5bfa2709efd5f1a84c198a876c` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x142791b2b19d4e62022f47d4e32c6a09f903faba` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x144e133028c8811d0f9decf87ef778410c988bac` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x1454fa540f29885605c0e34360ebb2ad28b8ae8e` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x15089db8d2de750b5ee39a6f99f1bbf8d7e2bfce` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x16173e3caaf58a4934dacca7e80f59c8bccd730d` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x17d1f41d7a94270177042d20ebe4088f67eccf06` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x17d82eaef88752322dbfebdefe6cf9eafff688d6` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x181d91becdfc99e55cc0915d8afb546b5fcee459` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x18240dbd0c814536cbe52d202a3fb55fe6612467` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x1b044bfaf92027f9a44a274f7eb5a1292e52ad0f` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x1d3db697b99a79608f7491a4065ea1226823943f` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x1da0977134c5c80236c9111bad78164041da2a36` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x1fabd0f3732b9d007e374c457c095566a8657f4e` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x209294b70ec5ea5d2adf6bd1efc75f7ede7c73e0` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x21b0aed6321bb9279ba168ad4826fa2d02a58b12` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x2208a494b50b71090299a96447e35a8150e6a8e1` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x23c26e05982a4ca982e06e8c693cdb96be5fc471` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x253834655296d2b9b2a87814351410e7f093170a` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x2572f592435cd87a673bb0e1ecd8114cf7360812` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x26690f61813563969da61f08666aa50c6bc7faad` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x27169f397cb8782b58f7777289b5aaeec385f23e` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x28b1d58ab44dc7b4d9b55b1982b584b134a08b7c` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x292f588384a02169598cbecadf635779eca295f1` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x295ab7eb42a0a8f89b406d9caddf6558c1667f37` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x29b5a2ed3de9b8930cc7f5c0a35ee65ebdb3641e` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x2b2369ad8e5a465de428893d3aa792cc32106154` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x2b3b27a5536abafc4ea66ecce78c0dab414fe0b1` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x2c2231ed6798956a2af995e252f5e7ae6bf7c789` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x2daed0bb4916ac95c903997fcf729e9a858ac298` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x2e8b5b47c1e46617bd724adbc14135681abfea2d` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x30fbd1d9902980b56c88e2e835985041aa37aaac` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x3442013773e49e13a111fb4c5bfb50d46206aceb` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x34507a01f35e691773711510461c5e2e8f56ec36` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x350a53c7f407ece70890bfe84960f22076eac9ff` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x38013cac5e964d03df7f6b8e962197a12c3e4035` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x386b11cb7f0867411e4036241655d3deca7d820e` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x394f4e81c195a78abd1a77038386e91d9999e964` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x40f68fb65e1065308f4c996d77cb8a38040de9fc` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x4197d5c72b4dd94da1d9b0e087b300ee83e0c039` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x4264b395c4b80c421b821d072466aa9fb18e5523` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x4298cc2d6402e1dfc20ee517d96aa6cb05bf7f04` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x43253edddffbd7fd7868cc26d067dfcaa3a1b341` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x44152fa75b3002869b41131bbea91746e3827b4b` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x4430ad4295ff976f88760919c258fc3bf342eca6` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x44ba9f33fd2df205da5396dd68d3aec49315bcb3` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x472104c31ad3f8ca53e8dac91675b2074449e8d0` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x486a58f3ce50f7633c014b50ed98d15c85d792bb` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x492f6b0a62a57a064fdd5c9153c1b8d127625eba` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x49682c847815baf644b783d446d1d4a99509af1a` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x49b7692a1926d9ccd83a16cdf0ffc140f0812005` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x4bee7667e2f8486cd7cbfe3ae9b65a29d2627f2a` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x4d9e344527b01af7dc7cdd1cdead0cd4be7c150c` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x4de6f1f6b0ad2b8cd2320157feba9e2de9672321` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x4e662429cc5cecf232f431e3b5c4a9bf42a5c86f` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x4fcb14295d1ed4fcaf91fcc6ff22f3cbb20234af` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x4fdc1c4b2032d85e925ab3ae66c77143fe3e6b72` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x5045aa5ad9219437026f3088e013214f5b3ca65f` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x526b8e5eed34701dfface0158f14a402f34c9df7` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x52b54fbac77f30d882b7077599b70055e7e52577` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x541925be5bce9e55c76ecfb3edb46a9cd15df9de` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x54eb7b6585c179c86b09a9b83b84e56bc799d02e` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x5581ddd4a3d19a5308d7e24ea4675af17fed56c0` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x558930babd1e0d6ee0fdf7ba74281d215af2325f` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x55e39e02b84b1eeb453d73b3eeb9b50b8789882a` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x578a9132536525689b960e686d741cf3e209d374` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x5a0dd2a7ef0f0337c5679d98dda0f5c8034ef363` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x5a328183db56dd02daa27b8a2b9c4c934d283da4` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x5a4cbf638bcfbe19ff1a11bdbb33253773ee005b` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x5b4c0202b6e6782e3c2d3560007c0fbdf2e9cbfa` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x5da5eaa0d1ede9e5ffc41e8b6f73e31856dd3e42` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x602fb05446a072510d21c381af22740348870f78` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x629d58eab1a75575f4549de5500f096f04797067` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x62bebcff620e3fbcc205ceeeaf4b189b4ebbf03e` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x62cf0ad98258a3adf7e0ef049c14a622a15fa0ff` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x654c191c09a0965fad8d31363c7daee24fa08fb4` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x661f001c96ea13f423d421b970f32d1e922293f8` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x6795906fc59e22018d723b49b26dfbf82678d39e` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x67a9171eec7f3a8d1a039fa6b550e04b6bf00081` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x6923f0756e1344b22bb020086d110ca40b1a18a7` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x6c50cba4f6c45dfdb8515fef5ecb0f3da6bdb75a` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x6e50bbd1f3993da79ccb7cf8fb539c1ae91398d3` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x6eab6ab41bfbb84ffdbb49ae27da1e03f44759cf` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x71c45babc04bd28cd2f681ae109e08b7aa15e0e2` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x7239a0a8447ecc2179b9678fa2e2ab7a8b646380` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x7298af45ae61b7db8d5267f71233d84e9a35f389` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x72e6e1c7a535924a290fb6f408c1eb0253a375d9` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x7313eeb7cfc7775242cf9647dcffa415698236a3` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x73a396e7b30ec0f4f8ff5671b279d482abe03e38` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x740094bf862cf603cfe3998e50e293e2fd68c191` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x74157a292b3f120b2fb129a6b73fcaf4ddd9aa77` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x747b5b3b6758c164ace810f25489eca70ac7c6cd` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x74ae6ef5ee4b98c6bd847f3f9374346687d41dff` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x758d5d80287257cccf8fc04412c75f4ef99c435f` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x762cadc6ee9f87c15c5cadfa16b94b2fdf0425e4` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x762e5ff9ccdd82e8b71c6508eb7f5c3b19915eee` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x76571dd67adf0dde6773f95169dbc13dd0802cef` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x7663dd9f437156f2f8fe911c0de7e379384b150f` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x7af466723308a2eedab2c22fdaa2eb9be7902c58` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x7c5d43b27926789f707656a48c2aa4330ac01a99` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x7d59f76728d98985840a06171ae93595551bfad4` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x800d848c01e7b9bc8cc30f4fab1ca5003ec9c0ad` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x814180b140d33cc890a704c96b19ccbd731c3613` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x81fd809604a8796be435a78f2b5ca7b3405a7ae1` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x838941361d3d1631a2817b7c9a381dc13db70ab8` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x84d7bdeab89110beca63d1fd73acec23f851e9ab` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x85608b78167e3aa40cd5e3bb51f1d773e266ea25` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x863d3b07082fc59dd51f372ff4f08d91b0b0bb6b` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x86b52c17c2fb16c1eff849d284de9b546dc41ae4` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x8703388874ddd0302424e61a7582cd4003b23400` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x878a11ac067e0f19069716a9463ec1deb8dd98c7` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x878d63b455ec856de8aa9db43c114d953ec83b2b` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x880be801dc4aaee81534e68448eb89681e1709e9` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x8814aa828204e31ec6c397ff03b0caf2b9e556db` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x8867561dbf20edb27ccbfd1f8f79fdb758be24b2` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x88c18579ef6dbe0c6e12da43302aba5f8c659477` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x88e5ff0abb88ff664ffcd4de7a6f5471338c9581` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x88f2c1ad50cf9e2fe91e306d9b6daff7738dfc8d` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x892ddc2048e49ccbeb66e4eade17eff2b198cc32` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x898f503742d999e9ea8b3be0ff38b86606a99843` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x899ea261c5a9be616ac3b8003c51328785a3a018` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x8aaef70175412e1b5faa35a456e5870f25424d48` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x8abc39fc81a17e89abd4e3db6ef44df245365a54` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x8ad070eccdb94d038faa377537cf4aebfdffad5b` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x8f60df7acb65708ab87b7c5d6da371e64eadc5e5` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x8fce30abc7a7c091b37f463e8686b27c02e5047c` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x917958145208bdda3643d8a4fba7f03b1e3c720b` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x9274a12777688612d51ae35e64c23c806b387684` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x95d9b6d0d0472cdfe53d5ac27f40420283af4a6d` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x960741753cbc1df5b89d4d6f02bd0aec3050baad` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x96ef66c1251123f340985520afff957eea4ff7e7` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x9708e909d2cf06b0bb3ce9e06e113d2f8e70e5fa` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x973ffb39c52886e01e1bd0da559a8d2b2369ba14` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x99841a129cecf68740b571b8e5afb7cbd88a7a8b` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x9cbd1322c3d029d32357808665dcae5c286c7081` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0x9d3ccd807d3c1508331cf2162babb56b33131ccb` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xa0959e78a594691ec89a0912939cb7ebc228f3dc` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xa0a663b9ef6372183feb03649fff202277ed2a3b` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xa0ef8dd5312cfe9d63ec66ee925993d2b8056efa` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xa1f4c9f8fe21aed36b23f0c7bb5650e2062e2ea9` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xa24a012537e434a0e2741ca16bbda2d7d12fa42a` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xa6d21739eaeb7b10857bafd2aaf8d36f74376bc6` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xa766f7746b6bd44fee24fc111b0dd6d51082f620` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xa85b0689493e942c760d144301a16b3f360305e1` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xa8edc071366b4e8b804054c0f85c6330767f5088` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xa95400c716d64e020d08b026fd62e2ce5de8a1aa` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xa9662eeaa34196c1827471e91eea9db9400b1780` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xaa30aa3b12a754218933acb7d5967243306592bc` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xab86b6973bcb8e763b5e7168f9037f0b22569e16` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xaba915022945eb70badfe6a551ce2cafba8b674f` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xaf62d8179ddbf562fe077aa63782d2e1cde19168` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xb0393aa28ce746aa1e7d192a652912c0c261fa5c` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xb0f13bb8129ecbe6517977e9820f647c7174f1ad` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xb121c79f10a88175750029fbfb9142230dda34f1` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xb1d46041f2dcedc4b90980758e069f678d5ce41f` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xb31cd83b1eedf5d95a01824df6baf0c2da83de73` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xb34f47457892fca539d0be2fad392cb31c6c4d68` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xb4f9e2c907fb12f0a422009128ed88148da7b910` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xb567596372bd773be2226aa2c13b3fe2cee3d6b6` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |
| unverified unclassified | UnnamedContract<br>`0xb657e23418d1eb748d88ba9fc474c655fecccff9` | non_address_book | unknown | unknown | unverified | n/a | `0x5e12ae8e436cd25f0041d931f8e4c7a3bb42cc1f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/wardenswap) | CertiK | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audit Report Valix](https://github.com/valixconsulting/audit-reports/blob/main/ValixConsulting-Audit-Report-WardenFinance-Aegis-and-AegisL2-v1.0.pdf) | CertiK | Audit | 2021-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |
| [Audited by Certik](https://docs.wardenswap.finance/warden/transparency/audited-by-certik.md) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audited by Valix](https://docs.wardenswap.finance/warden/transparency/audited-by-valix.md) | Valix | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | low |
| [ValixConsulting-Audit-Report-WardenFinance-Wondrous-X-v1.0.pdf](https://github.com/valixconsulting/audit-reports/blob/main/ValixConsulting-Audit-Report-WardenFinance-Wondrous-X-v1.0.pdf) | Valix Consulting | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [WardenSwap Farm](https://github.com/Wardenswap/warden-farm/blob/main/audits/WardenSwap-Farm-Audit.pdf) | yAudit | Audit | 2021-05 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |
| [WardenSwap Protocol](https://github.com/Wardenswap/warden-protocol/blob/main/audits/WardenSwap-Protocal-Audit.pdf) | yAudit | Audit | 2021-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18622] DL audit link — no match: The provided text is a project overview page from CertiK Skynet, not an audit report. It mentions 'Warden - WardenSwap Farm' and 'Warden - WardenSwap Protocol' but these are not explicitly listed as contracts in scope. No audit report content with scope section or findings was found.
- [18623] Audit Report Valix — matched: Extracted contracts from scope table and audited files list. Date found in executive summary: 'published on October 6, 2021'.
- [18624] Audited by Certik — no match: The document is a summary blog post, not the full audit report. It mentions two audit reports (WardenSwap Farm and WardenSwap Protocol) but does not list specific contract names or file paths. No scope section is present.
- [18625] Audited by Valix — no match: The report is a blog post summarizing an audit by Valix Consulting. It mentions 'Aegis' and 'Aegis L2' as the audited contracts but does not provide specific contract names, file paths, or a clear scope section. The audit date is not provided in the text.
- [18626] ValixConsulting-Audit-Report-WardenFinance-Wondrous-X-v1.0.pdf — no match: Extracted WondrousX and SaleSwitch from scope table. Excluded WonderousXFusion.sol as explicitly excluded. Excluded OpenZeppelin imports as third-party dependencies.
- [18627] WardenSwap Farm — matched: Scope table lists 5 contracts: MasterChef.sol, Tempest.sol, Timelock.sol, WardenToken.sol, Multicall.sol. Files in scope also list MasterChef.sol, WardenToken.sol, Tempest.sol. Audit date is May 7th, 2021.
- [18628] WardenSwap Protocol — matched: Extracted 14 contracts from the scope table and file listings. Audit date found on cover page: May 8th, 2021.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit Report Valix | WardenSwap1_5_Aegis | own contract | WardenSwap1_5_Aegis (selected) `0x68fac8a95d04b69bdbf66ca554f47a8193d0e5b6` — deployed 2021-08-25 11:15:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit Report Valix | WardenSwap1_5_Aegis_L2 | unmatched — not counted | — | listed in scope table | no |
| Audit Report Valix | WardenCosmoCore | unmatched — not counted | — | listed in scope table and findings | no |
| Audit Report Valix | WardenDataDeserialize | unmatched — not counted | — | listed in scope table and findings | no |
| Audit Report Valix | BytesLib | unmatched — not counted | — | listed in scope table and findings | no |
| Audit Report Valix | WardenDataSerialize | unmatched — not counted | — | listed in scope table and findings | no |
| Audit Report Valix | IWardenCosmicBrainForL2 | unmatched — not counted | — | listed in audited files | no |
| Audit Report Valix | IWardenCosmoCore0_8 | unmatched — not counted | — | listed in audited files | no |
| Audit Report Valix | IWardenPostTrade | unmatched — not counted | — | listed in audited files | no |
| Audit Report Valix | IWETH | unmatched — not counted | — | listed in audited files | no |
| Audit Report Valix | IWardenTradingRoute0_8 | unmatched — not counted | — | listed in audited files | no |
| Audit Report Valix | IArbAddressTable | unmatched — not counted | — | listed in audited files | no |
| Audited by Valix | Aegis | unmatched — not counted | — | mentioned as audited smart contract | no |
| Audited by Valix | Aegis L2 | unmatched — not counted | — | mentioned as audited smart contract | no |
| ValixConsulting-Audit-Report-WardenFinance-Wondrous-X-v1.0.pdf | WondrousX | unmatched — not counted | — | listed in scope table and findings | no |
| ValixConsulting-Audit-Report-WardenFinance-Wondrous-X-v1.0.pdf | SaleSwitch | unmatched — not counted | — | listed in scope table and findings | no |
| WardenSwap Farm | MasterChef | own contract | MasterChef (selected) `0xde866dd77b6df6772e320dc92bff0eddc626c674` — deployed 2021-03-15 19:00:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WardenSwap Farm | Tempest | unmatched — not counted | — | listed in scope table and files in scope | no |
| WardenSwap Farm | Timelock | own contract | Timelock (selected) `0x7a6981d4dbfa6b8fe4a75b8947363084719a3d86` — deployed 2021-03-17 14:11:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WardenSwap Farm | WardenToken | unmatched — not counted | — | listed in scope table and files in scope | no |
| WardenSwap Farm | Multicall | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | Partnership | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | RoutingManagement | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | WardenSwap | own contract | WardenSwap (selected) `0xb75fa2a799fc7935f37500ba9780cbe10aa6610a` — deployed 2021-03-15 20:37:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WardenSwap Protocol | WardenBestRateQuery | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | IUniswapV2Router | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | IWardenTradingRoute | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | CurveSusdRoute | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | SpartanRoute | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | SushiswapRoute | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | UniswapV2PoolToPoolTokenEthTokenRoute | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | UniswapV2Route | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | UniswapV2TokenEthTokenRoute | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | WardenCurveRouter | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | WardenUV2Router | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x451ef8d6b645a60115eb8b8bea76b39c0c761004` | WardenRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x359b9fc0765481569c33ccef23bd14d0878125ae` | WardenSwap1_5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x71ac17934b60a4610dc58b715b61e45dcbde4054` | WardenswapV2Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 298 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 31 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=3
- Match method counts: unique_name=4

Zero-match audit list:

- [18622] DL audit link
- [18624] Audited by Certik
- [18625] Audited by Valix
- [18626] ValixConsulting-Audit-Report-WardenFinance-Wondrous-X-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
