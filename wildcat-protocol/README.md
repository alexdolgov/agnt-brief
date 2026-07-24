# Agentic Audit Brief: Wildcat Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Wildcat Protocol (`wildcat-protocol`)
- Website: [https://wildcat.finance](https://wildcat.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, plasma, sepolia
- Contract surface: 216 unique implementations (216 raw deployments)
- Coverage basis: 3/7 confirmed own live verified implementations (42.9%); conservative 42.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $362,387,205.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Wildcat Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across ethereum, plasma, sepolia. Structural roles: 5 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (5), supporting (2)
- Contract kinds: contract (7)
- Detected standards: ownable (3)
- Frameworks: solady (6), openzeppelin (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 19 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x437e0551892c2c9b06d3ffd248fe60572e08cd1a`, chain 1)
- UnnamedContract (`0x4c62b4844c8371f321541e8d564a4b3896cecec7`, chain 1)
- UnnamedContract (`0x7e49caba6fb53cdc70cd98829731a2b8d76dfc36`, chain 1)
- UnnamedContract (`0xdd7dd3b5076cf89440d05585ff56d246386207be`, chain 1)
- UnnamedContract (`0xfda5c5b96bb198d2fca1a01d759620b64ae5afe7`, chain 1)
- UnnamedContract (`0xfeb516d9d946dd487a9346f6fee11f40c6945ee4`, chain 1)
- UnnamedContract (`0x40217f6e5891c8f1524744c0747e07d316a0c798`, chain 9745)
- UnnamedContract (`0x437e0551892c2c9b06d3ffd248fe60572e08cd1a`, chain 9745)
- UnnamedContract (`0x59010b706959c15977304c2553f3f4c697a73018`, chain 9745)
- UnnamedContract (`0x792f1368f8b8f450c14875eb6ff0028dfc2629b4`, chain 9745)
- UnnamedContract (`0x7e5d6d9f9a2091dd781118514f5397a8107c81c5`, chain 9745)
- UnnamedContract (`0x931fe4a88e1c1f1a7402df6a40988f38503f1061`, chain 9745)
- ChainalysisProxy (`0x38056f7fe6396417b191bf7dc6a3aa04235f3f46`, chain 9745)
- HooksFactory (`0xb46bae25ac6d23148531ed1853a8881fd842e517`, chain 9745)
- Wildcat4626WrapperFactory (`0xea6de11f8f3f83c79bd9d8db5517fcfdf2bb148a`, chain 1)
- WildcatArchController (`0xdb2e0de97d6d96aa56754635704a4273e0f348ae`, chain 9745)
- WildcatCopyOfChainalysisList (`0xfeb516d9d946dd487a9346f6fee11f40c6945ee4`, chain 9745)
- WildcatFeeRecipient (`0x35a5d1bd68f3139971027b92c1ee9384a0708554`, chain 1)
- WildcatSanctionsSentinel (`0x37064895ba2c1e269eaf7ff32564818d08903f5b`, chain 9745)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/53 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/7 (42.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 19 own, 13 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 184 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 19 of 216 unique; 197 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/12
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 204
- Unique implementations: 216
- Raw deployments: 216
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 42.9% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 4naly3er | Tier 2 | 3 | 25.0% | n/a |
| Code4rena | Tier 1 | 3 | 25.0% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| HooksFactory | unknown | project_anchor | own_supporting | 0 | plasma | unit-396674 | `0xb46bae25ac6d23148531ed1853a8881fd842e517` | ✅ Audited |
| WildcatArchController | unknown | project_anchor | own_supporting | 0 | plasma | unit-396675 | `0xdb2e0de97d6d96aa56754635704a4273e0f348ae` | ✅ Audited |
| WildcatSanctionsSentinel | unknown | project_anchor | own_supporting | 0 | plasma | unit-396666 | `0x37064895ba2c1e269eaf7ff32564818d08903f5b` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ChainalysisProxy | unknown | project_anchor | own_supporting | 0 | plasma | unit-396667 | `0x38056f7fe6396417b191bf7dc6a3aa04235f3f46` | ⚠️ Unaudited |
| MarketLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3556d0497180afb37e6eaebd5d17309159586862` | ⚠️ Unaudited |
| OpenAccessRoleProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5620553d8881335f74ad19259daacd1d9b373101` | ⚠️ Unaudited |
| SphereXEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f90c0a26cc2ad22ee98398dcc02bbe314a1766a` | ⚠️ Unaudited |
| Wildcat4626WrapperFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396648 | `0xea6de11f8f3f83c79bd9d8db5517fcfdf2bb148a` | ⚠️ Unaudited |
| WildcatCopyOfChainalysisList | unknown | project_anchor | own_supporting | 0 | plasma | unit-396676 | `0xfeb516d9d946dd487a9346f6fee11f40c6945ee4` | ⚠️ Unaudited |
| WildcatFeeRecipient | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396623 | `0x35a5d1bd68f3139971027b92c1ee9384a0708554` | ⚠️ Unaudited |
| WildcatMarketCollateralFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbf84ab8b232a467511772af4ab8a4190f403e7c` | ⚠️ Unaudited |
| WildcatMarketControllerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1a18eea2a9e81bf84c131282a4b99867dd6aa4f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (204)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x422489ba6bddd5954c379c41b6c97ab0e4494f90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396630 | `0x437e0551892c2c9b06d3ffd248fe60572e08cd1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396631 | `0x4c62b4844c8371f321541e8d564a4b3896cecec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x731c775385d0efb2cac61074ba2d885d343a09cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396637 | `0x7e49caba6fb53cdc70cd98829731a2b8d76dfc36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac3216fa28f81b8fae150fb5626ca79c7a570daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb7a61bc40c9ea77511d7a1d60ff824c9a353629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbb998043a20a26828617769f37dc3980be25ebc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdf64bd7ea91a534445d06736a0f0e2a33ffa47c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc672760757da93b5f3275dc97203d145806dae33` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396647 | `0xdd7dd3b5076cf89440d05585ff56d246386207be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-396650 | `0xf1d516954f96c1363f8b0ae48d79c8dde6237847` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-396652 | `0xfd31007613c9f671df6a8d4234901324986bfd13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396653 | `0xfda5c5b96bb198d2fca1a01d759620b64ae5afe7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396654 | `0xfeb516d9d946dd487a9346f6fee11f40c6945ee4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffa74a0e4090200be6895a5d349ca88ac32d1b5c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-396668 | `0x40217f6e5891c8f1524744c0747e07d316a0c798` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-396669 | `0x437e0551892c2c9b06d3ffd248fe60572e08cd1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-396670 | `0x59010b706959c15977304c2553f3f4c697a73018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x74b253041be30b7698b5f69239c271ea8db57261` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-396671 | `0x792f1368f8b8f450c14875eb6ff0028dfc2629b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-396672 | `0x7e5d6d9f9a2091dd781118514f5397a8107c81c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-396673 | `0x931fe4a88e1c1f1a7402df6a40988f38503f1061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x04af78cf70121ea8091d971b2a68bc97f3336c7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396655 | `0x0566fe57682164af689f1440cb3bceedee3bf843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0599b6c4baffd9540c535dd0f3c29032abecc7da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x05b9d6062ba1bf28353bbe0f1521eea0df34567b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x07239ec366cf2642228dc1ec0bea88e78191fa9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x08687ae0f077c3db6bff89387ed458d5b1a785a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x08c3f094d7fbbf25846d8cf4b8760517f92bff0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0ac22d06121fc336b2f3dbeb284df65c97bca547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0d54eb7eb8ab39e8a26535daa970bac6b61e741a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0e107779cad2e19ca516140bf103538e58229e64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0eb22ed5d4e5a424db4d733e1a5687f5793bb9ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x10a64aba0159720f8a23e1a552800ca4eb21576c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1133cb138e9640013e6cfb0f2597650382b901fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x134e42649b69902e07ee4531184e58af8affffa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1bccb75b257447f4d404fb45d7a58bb682b55409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1c794b93d9d377204a57805d0b3926863352a155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1d2485f3763d316e114d0fbf641220e1b31bd845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1de0e2e7ac2457c687ddeed89597cfb154559c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1eebc079ae1e7dcde31c74a7ef48fa8737673a6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x20b06d164d7815405fbedff2372cd15f418685f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x250ddb57625d7edefd28d919d14f2b9a49ee8f1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x271ec1c852bf7bf7e7eddbf47b35e2ecdf3b328b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x28612a46627a915684e216a082e2c33f664f00ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x28ae144fd2be9f2a156dc4dd752c919219ffa76c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x28eeb2fe15518f3d51825fddb30302901064a5be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2aa724f0950f86e1582cb667f7fad51f6e3cd61e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2bf8b4ea29259c01eb2cc6bf6bd21a6f4d23fd8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x337e38b3b90ca0b208cda586c843b33d43fad5c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x338ae9da1cabd577218c5cdf4b729b23c1f2bb93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x34e4197928fe060cc98b936aa07520d64065de78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x377d91d15e0e0de955dfadadedf4e16c8e0e5a4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b35be6c5f5169bb6f39b6716e9211d70be1bb75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3d5f0aacfc976a88fc8ca2adbe0453fe876a84bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3d99cf8e9eba2c738195668fb49d1bdc61764884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4229663e1b46a8c186f531eaf5658169b882cea2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396656 | `0x42893972c752e731c3457d0d541a2bc6fadfe751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x42f1d9086ce1682f4bf5f5b17879b80128f5a541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x434dc43a513b954c3a4d180abfcbe750c7a2c991` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4385e0888daea92e13a42bb74fc1d179c5e67ff3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x43ace9e199471348681a04120411224c4dc56726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x43f1db4e70ccb43ccd5d4a7bc033245254cc3909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x44f5644105fa2fb04bf598aa8f3f05543b832457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x47d3c9706d78693d4c58dd859125240008a2691f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49c5002edea9a79b7a0678d49b1ec1203a024800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4e040fe4728ff88c082148384a5bf22b0b7b5b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4e55e20cc4ff6b69e6b28ac29dcc55c0f8937ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4f674a125a8615a926f2dd5b61d02859b6939cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x50e22a592e86a6f9e39b1acaff7a6074cfb4ff60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x513826b6bb38fc159f152a4bf6e1ec3650a7ee46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x51e80431fc7b5a82f66cf278f554437e5ac48a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5348104bd2b018f1b81e210239a2978d3c62673f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x53cf24023adbbb44b0ac78bef770a671798b0f7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x53d692ee5e6d43e57eac6184e5a9deee1ded9ace` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396657 | `0x54a3103904977dcb3c2fb782059f5431db90c96e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x55d6bf32c59d49545400fe95398db94f4cbcb2ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x56e526cdb86f15a9f2ca97c2a8eb62b4bfe45b7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x58bde3894a6e27dbffe4321e567c256f5a0f5bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5a49828b3e9acbc614cdd703601406b1854aa578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5ad00b665ea71e27628d75102b1497cc75e531fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5aff430579853b90faf17b69e2480557c3d84b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5cbea1cef37d79cd00b0a1cb0dba338c3f46b2b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5d14d290eea69584106a381910eaa93c2b21c6b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5d8ceacee19c06c3b4108b8ae5b881eb0240b9c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5ea44a0244f35951d0994e0d5ce63baf822c44ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x61c3f23157b6657847cbdda7ed08f30bb247e943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x63759fc645514999fef38479c07b9eab2b67752f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6381a0ecaa64ec7a7f3c255d1a12cc4863584014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6391fe8b1a1ef2cfe5ccfcf55694104824e2e77f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x64516948476c1059a94100db2c29c9e9f12876c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x664780e218b0c4bdb81fbcd29d7caf76cdd878de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x67681e8a49cd6fc1dac0dadfbd665bd2ec36cb8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6873916d94d1e85b8301d7cabee17ace6ac42993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x69227badb3f5ecaf016c25a12f4ce688064ce850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x69abd26a6882357b9d26ea7718b33c159d682b21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396658 | `0x6cb3512b541733d340aa520b63105586588bd600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6fb02197a8f8bc839c91b4ca4a0dcdcdf85ccc8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7033574116084cff174c67be148a8f691a6fb22f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7335afd69c7c2411d6758f0d24af000f27acb23f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x74275efe86068b8e25eef58e66fb1fbbf814b78e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x74f4613a3fb76b8c126779b635b588e5eee66c2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x79d3ab535bac4bc97647914d76b7c585d011da06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7cc91e3c64a0b5844650d586b87b291ac3a3aad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7e23134b2fae1373ddf1a2192b268575117336a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7f7799ac66d19fe2fea5137cd32d7088e07f5cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7fde2a98bf532c2fcb49f090aa142732e55df7c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x80afd39d57811c615499351b3a5ba4ba38d1be6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x827ac8f2fd73a31ed20d13b85689b32902ae9c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8425a3f9a4c6b1b54206c4aeb8271d854351e839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x84bf15fbcf301a90364f1cba936367084aad6484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8538335093a184cf942b0eeb7b090eb235460f40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x860dcc10dfc6b9f0ef4f1aa3c0ff6fb034fd5eb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x88923b4fc06eae8396dff08e046e1d6cbe965bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x88f91e1f1b3de69cee100fd9dfd5f86d465dc375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8b076b2502cdd5f86fc1710cb0408be0adebf38d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8b64e9ae41718d3b030d012c273668b4341b7812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8d1492c3573d258f86afa622b4ccfa143f5174b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x90e4aadbd47379df4763099279976e103ac55358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9249d24a594d701b2320c43039b9d2cd2aa018ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x93a486c66b10daf79c6f5b8b05be45730d2a244d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x93c498a69e8a684e3f71870ff32297bce4751947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x96efd2a3fc5fa5a21adb38722d1f5f1908fdde0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x973816964230ede705a4f6016eaca2dc0b08cef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x987b5b3de72b5660b6084778eb95194774a645c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9a99d96ae66cf9499615b0dac64f3e0a6d085fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9acde253f7a51456c48604185c0cea4fc9e58e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9b8113d08c08eff7a23cf469942ca26f44fa239a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9cd08ccecb6400954ea61a391c643c5b58ac4591` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396659 | `0x9d1060f8dee8cbcf5ec772c51ec671f70cc7f8d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9f8313b15da5e8e7e0bf43e71aa838b3bd23ea81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa19681275008609015793cbfa7c9b7dea103d5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa2ef24f26273d3d1b68ac03158a2276e5bceaa59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa47237531fae13c82a4361d68aa1e53fc939d70f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396660 | `0xa476920af80b587f696734430227869795e2ea78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa5ebbb71702349ddae7c88a5a6d10068e2a25db1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa76342caf9ad83b2b586df1a6e4a0eea67f775a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaa65a6703ab80112ca8e204e8cf330af6621871e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaacacf6729391742cbe130d6c5ae76469c0600d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xab379345b186c4914d109916c50337d46e72f5e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xad28a117e272800abec3ce8f02584927e4da5d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xae18c1988b7b947140b5fd2582ac63b8756bfd7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb13feb3edf6f7c4e60a364429d3730541f1d6f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb28afb62e3f5a16234819bfa600a0dd5988f5717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb332fc9bfc77aa109b556bc27a271c4ede52b45d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396661 | `0xb3925b31a8aedce8cfc885e0d5daa057a1ea8a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb6318f6da599b85b933a249a141a679a5571e57f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396662 | `0xb666c1c67a20814e3eee15a06780e0821ae30dd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb8175dee39f86b8e337bffb4f2bd9e3025a2f26a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb899ba2a5f5b609898a2babe445aa31ddf0277e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb8dac67b2e5ede30cc7b51800ee209934a0b48dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb9250049a1b9507892fc205e70266a8209e3d8e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xba370992d7041b5c3b9aebc61e0cc52c57138918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbc3981a458b1ca607ef2a181a3b050fb0ae0d724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbe36dbcb9475d3e6e4efd50f41f7e3a2625d94d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbed406fd810d70d2c4d70d91dc31cc891089a454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbf78dfb3c2d5e131307f294dd38181daf1275772` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396663 | `0xc003f20f2642c76b81e5e1620c6d8cdee826408f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc1cd37c8c67555178770ea98e40b901420b585c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc3629dd29624fcefb95c1aa3facaa05baf5a9120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc54c18fbda39a089901f59133909012ef116e464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc556d6142ec8eb4eeb753b958c84c59385bf6ef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc9490f78a131c51829cda5c4455e88caac6246f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc98817086188529f002a2c7c76c87c1421876e41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcb7839d03ebc1e628295b2fde3b73fc53412e87f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcc65c2ad8ab5b5c63489cfc77f782175e0c6a36e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcd4eafe0ad9b4deced6aa4762cc9e4fce02e1595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcf457789877037bb14e7136374e2b882297e8666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcf872ac862d2ba97f99804ed25f0db5f2352933a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd2595296a51be9604279aea4804b540429103371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd26f107796582fdf64658d81e2170c7c05082e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd3dc59adb55d31079c17720dd4cca0daa3bfb9e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd611166369ca1004835d5a735b660c26082df2b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd94748c005d4d384dd72ec3374973ce8a8b31697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdae94956c3793f6f82b18a104b2e832b96084357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdb2d6eeb5ac72252955783fee44f6667b63b7a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdf3a6430e4f3052c4e37682e62b033a087e3ac2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdf3e97ed83a1dc8171ce81b682a3159fed233c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe0b536e3b389b77b9dc8d7e8e623cbef69b4ed84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe1028dea69a0833a14a31b87c858785b47374381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe11e41e9162ad07f1a9853c3123c33b7e9cf59d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe1d14e8176d27415c204a4f9ef58e107964ca12c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe28589c18c8b16df979ab1a054e07bd361603820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe3b4a1311f205319c473c423a08fbd3f9d55c82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe3e4b7c9e0ab4ccbc70e0583dca7b4db9b4cfd88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe49e0a24ab2a193c6987ade63d5cd911839b8a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe6aebe0fd1f41053967907d6edd1801d77cbf969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe6c3db8aeef6c3b51b6dae683e77a279ca766b50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe6e1fe478daaa1109580ded70a0c60135c5c232f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396664 | `0xeb97c8e52d7fdf978a64a538f28271fd8499b864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xef0601c4df089f3020f373589ffcd8dea0b4fd76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xef56cfa2b6b033188c4d27cffb8c573f6058bd76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeff6e54c169c3f78731b3aa6affbbac283e42f6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf0c0ed88e596637b90ce4fbac838f4f57edb7046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf3fe96705d85a1592b31592b628667ea21fdd7c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf4564015e524cf5629828e61f45ed339d998d85f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf4ae692b91069123763d3fa28533229588a557af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf668f605a69826e59a894a530e0343b886d1c552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf7cbdae57972e6307d287a8030f48f991a01adba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf98dad3014adf635e070799966c2376e21658f56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfaa58265608084d10f528e865d31bbbdd6baf03f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-396665 | `0xfbce262ec835be5e6a458ce1722eece0e453316b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfc1ef4095bd39c747cace66bc9983cafd2134658` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 178
- Live contracts: 0
- Unknown liveness contracts: 178
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=178

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x422489ba6bddd5954c379c41b6c97ab0e4494f90` | non_address_book | unknown | unknown | unverified | n/a | `0xb4b9f935bf0189c2ff46165f04b0d517e9553fbc` |
| unverified unclassified | UnnamedContract<br>`0x731c775385d0efb2cac61074ba2d885d343a09cd` | non_address_book | unknown | unknown | unverified | n/a | `0xb4b9f935bf0189c2ff46165f04b0d517e9553fbc` |
| unverified unclassified | UnnamedContract<br>`0xac3216fa28f81b8fae150fb5626ca79c7a570daf` | non_address_book | unknown | unknown | unverified | n/a | `0x240334405021f4242d57a3785df39edc23e1b607` |
| unverified unclassified | UnnamedContract<br>`0xbb7a61bc40c9ea77511d7a1d60ff824c9a353629` | non_address_book | unknown | unknown | unverified | n/a | `0xb4b9f935bf0189c2ff46165f04b0d517e9553fbc` |
| unverified unclassified | UnnamedContract<br>`0xbbb998043a20a26828617769f37dc3980be25ebc` | non_address_book | unknown | unknown | unverified | n/a | `0xb4b9f935bf0189c2ff46165f04b0d517e9553fbc` |
| unverified unclassified | UnnamedContract<br>`0xbdf64bd7ea91a534445d06736a0f0e2a33ffa47c` | non_address_book | unknown | unknown | unverified | n/a | `0xb4b9f935bf0189c2ff46165f04b0d517e9553fbc` |
| unverified unclassified | UnnamedContract<br>`0xc672760757da93b5f3275dc97203d145806dae33` | non_address_book | unknown | unknown | unverified | n/a | `0x240334405021f4242d57a3785df39edc23e1b607` |
| unverified unclassified | UnnamedContract<br>`0xffa74a0e4090200be6895a5d349ca88ac32d1b5c` | non_address_book | unknown | unknown | unverified | n/a | `0xb4b9f935bf0189c2ff46165f04b0d517e9553fbc` |
| unverified unclassified | UnnamedContract<br>`0x04af78cf70121ea8091d971b2a68bc97f3336c7b` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x0599b6c4baffd9540c535dd0f3c29032abecc7da` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x05b9d6062ba1bf28353bbe0f1521eea0df34567b` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x07239ec366cf2642228dc1ec0bea88e78191fa9f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x08687ae0f077c3db6bff89387ed458d5b1a785a6` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x08c3f094d7fbbf25846d8cf4b8760517f92bff0f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x0ac22d06121fc336b2f3dbeb284df65c97bca547` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x0d54eb7eb8ab39e8a26535daa970bac6b61e741a` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x0e107779cad2e19ca516140bf103538e58229e64` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x0eb22ed5d4e5a424db4d733e1a5687f5793bb9ef` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x10a64aba0159720f8a23e1a552800ca4eb21576c` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x1133cb138e9640013e6cfb0f2597650382b901fd` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x134e42649b69902e07ee4531184e58af8affffa9` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x1bccb75b257447f4d404fb45d7a58bb682b55409` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x1c794b93d9d377204a57805d0b3926863352a155` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x1d2485f3763d316e114d0fbf641220e1b31bd845` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x1de0e2e7ac2457c687ddeed89597cfb154559c44` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x1eebc079ae1e7dcde31c74a7ef48fa8737673a6a` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x20b06d164d7815405fbedff2372cd15f418685f8` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x250ddb57625d7edefd28d919d14f2b9a49ee8f1c` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x271ec1c852bf7bf7e7eddbf47b35e2ecdf3b328b` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x28612a46627a915684e216a082e2c33f664f00ce` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x28ae144fd2be9f2a156dc4dd752c919219ffa76c` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x28eeb2fe15518f3d51825fddb30302901064a5be` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x2aa724f0950f86e1582cb667f7fad51f6e3cd61e` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x2bf8b4ea29259c01eb2cc6bf6bd21a6f4d23fd8f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x337e38b3b90ca0b208cda586c843b33d43fad5c4` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x338ae9da1cabd577218c5cdf4b729b23c1f2bb93` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x34e4197928fe060cc98b936aa07520d64065de78` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x377d91d15e0e0de955dfadadedf4e16c8e0e5a4d` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x3b35be6c5f5169bb6f39b6716e9211d70be1bb75` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x3d5f0aacfc976a88fc8ca2adbe0453fe876a84bb` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x3d99cf8e9eba2c738195668fb49d1bdc61764884` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x4229663e1b46a8c186f531eaf5658169b882cea2` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x42f1d9086ce1682f4bf5f5b17879b80128f5a541` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x434dc43a513b954c3a4d180abfcbe750c7a2c991` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x4385e0888daea92e13a42bb74fc1d179c5e67ff3` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x43ace9e199471348681a04120411224c4dc56726` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x43f1db4e70ccb43ccd5d4a7bc033245254cc3909` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x44f5644105fa2fb04bf598aa8f3f05543b832457` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x47d3c9706d78693d4c58dd859125240008a2691f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x49c5002edea9a79b7a0678d49b1ec1203a024800` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x4e040fe4728ff88c082148384a5bf22b0b7b5b43` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x4e55e20cc4ff6b69e6b28ac29dcc55c0f8937ccb` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x4f674a125a8615a926f2dd5b61d02859b6939cd8` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x50e22a592e86a6f9e39b1acaff7a6074cfb4ff60` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x513826b6bb38fc159f152a4bf6e1ec3650a7ee46` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x51e80431fc7b5a82f66cf278f554437e5ac48a72` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x5348104bd2b018f1b81e210239a2978d3c62673f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x53cf24023adbbb44b0ac78bef770a671798b0f7e` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x53d692ee5e6d43e57eac6184e5a9deee1ded9ace` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x55d6bf32c59d49545400fe95398db94f4cbcb2ea` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x56e526cdb86f15a9f2ca97c2a8eb62b4bfe45b7b` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x58bde3894a6e27dbffe4321e567c256f5a0f5bab` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x5a49828b3e9acbc614cdd703601406b1854aa578` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x5ad00b665ea71e27628d75102b1497cc75e531fb` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x5aff430579853b90faf17b69e2480557c3d84b4d` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x5cbea1cef37d79cd00b0a1cb0dba338c3f46b2b3` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x5d14d290eea69584106a381910eaa93c2b21c6b2` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x5d8ceacee19c06c3b4108b8ae5b881eb0240b9c7` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x5ea44a0244f35951d0994e0d5ce63baf822c44ee` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x61c3f23157b6657847cbdda7ed08f30bb247e943` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x63759fc645514999fef38479c07b9eab2b67752f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x6381a0ecaa64ec7a7f3c255d1a12cc4863584014` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x6391fe8b1a1ef2cfe5ccfcf55694104824e2e77f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x64516948476c1059a94100db2c29c9e9f12876c1` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x664780e218b0c4bdb81fbcd29d7caf76cdd878de` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x67681e8a49cd6fc1dac0dadfbd665bd2ec36cb8b` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x6873916d94d1e85b8301d7cabee17ace6ac42993` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x69227badb3f5ecaf016c25a12f4ce688064ce850` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x69abd26a6882357b9d26ea7718b33c159d682b21` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x6fb02197a8f8bc839c91b4ca4a0dcdcdf85ccc8d` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x7033574116084cff174c67be148a8f691a6fb22f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x7335afd69c7c2411d6758f0d24af000f27acb23f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x74275efe86068b8e25eef58e66fb1fbbf814b78e` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x74f4613a3fb76b8c126779b635b588e5eee66c2e` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x79d3ab535bac4bc97647914d76b7c585d011da06` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x7cc91e3c64a0b5844650d586b87b291ac3a3aad4` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x7e23134b2fae1373ddf1a2192b268575117336a5` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x7f7799ac66d19fe2fea5137cd32d7088e07f5cfb` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x7fde2a98bf532c2fcb49f090aa142732e55df7c6` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x80afd39d57811c615499351b3a5ba4ba38d1be6f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x827ac8f2fd73a31ed20d13b85689b32902ae9c0e` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x8425a3f9a4c6b1b54206c4aeb8271d854351e839` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x84bf15fbcf301a90364f1cba936367084aad6484` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x8538335093a184cf942b0eeb7b090eb235460f40` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x860dcc10dfc6b9f0ef4f1aa3c0ff6fb034fd5eb6` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x88923b4fc06eae8396dff08e046e1d6cbe965bdc` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x88f91e1f1b3de69cee100fd9dfd5f86d465dc375` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x8b076b2502cdd5f86fc1710cb0408be0adebf38d` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x8b64e9ae41718d3b030d012c273668b4341b7812` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x8d1492c3573d258f86afa622b4ccfa143f5174b8` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x90e4aadbd47379df4763099279976e103ac55358` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x9249d24a594d701b2320c43039b9d2cd2aa018ce` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x93a486c66b10daf79c6f5b8b05be45730d2a244d` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x93c498a69e8a684e3f71870ff32297bce4751947` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x96efd2a3fc5fa5a21adb38722d1f5f1908fdde0a` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x973816964230ede705a4f6016eaca2dc0b08cef2` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x987b5b3de72b5660b6084778eb95194774a645c0` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x9a99d96ae66cf9499615b0dac64f3e0a6d085fd7` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x9acde253f7a51456c48604185c0cea4fc9e58e3a` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x9b8113d08c08eff7a23cf469942ca26f44fa239a` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x9cd08ccecb6400954ea61a391c643c5b58ac4591` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0x9f8313b15da5e8e7e0bf43e71aa838b3bd23ea81` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xa19681275008609015793cbfa7c9b7dea103d5f6` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xa2ef24f26273d3d1b68ac03158a2276e5bceaa59` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xa47237531fae13c82a4361d68aa1e53fc939d70f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xa5ebbb71702349ddae7c88a5a6d10068e2a25db1` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xa76342caf9ad83b2b586df1a6e4a0eea67f775a3` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xaa65a6703ab80112ca8e204e8cf330af6621871e` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xaacacf6729391742cbe130d6c5ae76469c0600d6` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xab379345b186c4914d109916c50337d46e72f5e8` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xad28a117e272800abec3ce8f02584927e4da5d3b` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xae18c1988b7b947140b5fd2582ac63b8756bfd7e` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xb13feb3edf6f7c4e60a364429d3730541f1d6f7c` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xb28afb62e3f5a16234819bfa600a0dd5988f5717` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xb332fc9bfc77aa109b556bc27a271c4ede52b45d` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xb6318f6da599b85b933a249a141a679a5571e57f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xb8175dee39f86b8e337bffb4f2bd9e3025a2f26a` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xb899ba2a5f5b609898a2babe445aa31ddf0277e5` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xb8dac67b2e5ede30cc7b51800ee209934a0b48dd` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xb9250049a1b9507892fc205e70266a8209e3d8e7` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xba370992d7041b5c3b9aebc61e0cc52c57138918` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xbc3981a458b1ca607ef2a181a3b050fb0ae0d724` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xbe36dbcb9475d3e6e4efd50f41f7e3a2625d94d9` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xbed406fd810d70d2c4d70d91dc31cc891089a454` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xbf78dfb3c2d5e131307f294dd38181daf1275772` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xc1cd37c8c67555178770ea98e40b901420b585c3` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xc3629dd29624fcefb95c1aa3facaa05baf5a9120` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xc54c18fbda39a089901f59133909012ef116e464` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xc556d6142ec8eb4eeb753b958c84c59385bf6ef4` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xc9490f78a131c51829cda5c4455e88caac6246f0` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xc98817086188529f002a2c7c76c87c1421876e41` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xcb7839d03ebc1e628295b2fde3b73fc53412e87f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xcc65c2ad8ab5b5c63489cfc77f782175e0c6a36e` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xcd4eafe0ad9b4deced6aa4762cc9e4fce02e1595` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xcf457789877037bb14e7136374e2b882297e8666` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xcf872ac862d2ba97f99804ed25f0db5f2352933a` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xd2595296a51be9604279aea4804b540429103371` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xd26f107796582fdf64658d81e2170c7c05082e5f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xd3dc59adb55d31079c17720dd4cca0daa3bfb9e8` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xd611166369ca1004835d5a735b660c26082df2b2` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xd94748c005d4d384dd72ec3374973ce8a8b31697` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xdae94956c3793f6f82b18a104b2e832b96084357` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xdb2d6eeb5ac72252955783fee44f6667b63b7a11` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xdf3a6430e4f3052c4e37682e62b033a087e3ac2f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xdf3e97ed83a1dc8171ce81b682a3159fed233c8c` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xe0b536e3b389b77b9dc8d7e8e623cbef69b4ed84` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xe1028dea69a0833a14a31b87c858785b47374381` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xe11e41e9162ad07f1a9853c3123c33b7e9cf59d6` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xe1d14e8176d27415c204a4f9ef58e107964ca12c` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xe28589c18c8b16df979ab1a054e07bd361603820` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xe3b4a1311f205319c473c423a08fbd3f9d55c82d` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xe3e4b7c9e0ab4ccbc70e0583dca7b4db9b4cfd88` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xe49e0a24ab2a193c6987ade63d5cd911839b8a0b` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xe6aebe0fd1f41053967907d6edd1801d77cbf969` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xe6c3db8aeef6c3b51b6dae683e77a279ca766b50` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xe6e1fe478daaa1109580ded70a0c60135c5c232f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xef0601c4df089f3020f373589ffcd8dea0b4fd76` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xef56cfa2b6b033188c4d27cffb8c573f6058bd76` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xeff6e54c169c3f78731b3aa6affbbac283e42f6a` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xf0c0ed88e596637b90ce4fbac838f4f57edb7046` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xf3fe96705d85a1592b31592b628667ea21fdd7c7` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xf4564015e524cf5629828e61f45ed339d998d85f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xf4ae692b91069123763d3fa28533229588a557af` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xf668f605a69826e59a894a530e0343b886d1c552` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xf7cbdae57972e6307d287a8030f48f991a01adba` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xf98dad3014adf635e070799966c2376e21658f56` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xfaa58265608084d10f528e865d31bbbdd6baf03f` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |
| unverified unclassified | UnnamedContract<br>`0xfc1ef4095bd39c747cace66bc9983cafd2134658` | non_address_book | unknown | unknown | unverified | n/a | `0xca732651410e915090d7a7d889a1e44ef4575fce` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hackmd.io/@geistermeister/BJk4Ekt90](https://hackmd.io/@geistermeister/BJk4Ekt90) | alpeh_v | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [4naly3er-report.md](https://github.com/code-423n4/2024-08-wildcat/blob/main/4naly3er-report.md) | 4naly3er | Audit | n/a | unknown | Direct | contract_name | matched | 3 | 0 | 0 | 16 | high |
| [code4rena.com/reports/2024-08-wildcat](https://code4rena.com/reports/2024-08-wildcat) | Code4rena | Contest | 2024-08 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 20 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21199] hackmd.io/@geistermeister/BJk4Ekt90 — no match: No explicit scope section or contract file paths found. The report mentions 'Wildcat V2 smart contracts' and 'core contracts' but does not list specific contract names or files.
- [21201] 4naly3er-report.md — matched: The report is a gas optimization and non-critical issues report. No explicit scope section or audit date was found. Contract names were extracted from file paths in the findings.
- [21202] code4rena.com/reports/2024-08-wildcat — matched: Extracted 23 contract names from the audit report, including those explicitly listed in scope and those referenced in findings and imports. The audit date is from the report header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 4naly3er-report.md | HooksFactory | own contract | HooksFactory (selected) `0xb46bae25ac6d23148531ed1853a8881fd842e517` — deployed 2025-09-26 23:33:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 4naly3er-report.md | WildcatArchController | own contract | WildcatArchController (selected) `0xdb2e0de97d6d96aa56754635704a4273e0f348ae` — deployed 2025-09-26 23:33:18+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 4naly3er-report.md | WildcatSanctionsEscrow | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | WildcatSanctionsSentinel | own contract | WildcatSanctionsSentinel (selected) `0x37064895ba2c1e269eaf7ff32564818d08903f5b` — deployed 2025-09-26 23:33:22+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 4naly3er-report.md | AccessControlHooks | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | FixedTermLoanHooks | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | MarketConstraintHooks | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | LibStoredInitCode | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | MarketState | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | WildcatMarket | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | WildcatMarketBase | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | WildcatMarketConfig | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | WildcatMarketToken | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | WildcatMarketWithdrawals | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | HooksConfig | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | LenderStatus | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | RoleProvider | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | TransientBytesArray | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2024-08-wildcat | FixedTermLoanHooks | unmatched — not counted | — | mentioned in scope and findings | no |
| code4rena.com/reports/2024-08-wildcat | AccessControlHooks | unmatched — not counted | — | mentioned in scope and findings | no |
| code4rena.com/reports/2024-08-wildcat | WildcatMarket | unmatched — not counted | — | mentioned in scope and findings | no |
| code4rena.com/reports/2024-08-wildcat | WildcatMarketWithdrawals | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | WildcatMarketToken | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | WildcatMarketBase | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | WildcatSanctionsEscrow | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | WildcatSanctionsSentinel | own contract | WildcatSanctionsSentinel (selected) `0x37064895ba2c1e269eaf7ff32564818d08903f5b` — deployed 2025-09-26 23:33:22+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-08-wildcat | WildcatArchController | own contract | WildcatArchController (selected) `0xdb2e0de97d6d96aa56754635704a4273e0f348ae` — deployed 2025-09-26 23:33:18+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-08-wildcat | HooksFactory | own contract | HooksFactory (selected) `0xb46bae25ac6d23148531ed1853a8881fd842e517` — deployed 2025-09-26 23:33:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2024-08-wildcat | MarketConstraintHooks | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | FeeMath | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | MathUtils | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | LenderStatus | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | RoleProvider | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | TransientBytesArray | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | IHooks | unmatched — not counted | — | mentioned in imports | no |
| code4rena.com/reports/2024-08-wildcat | IHooksFactory | unmatched — not counted | — | mentioned in imports | no |
| code4rena.com/reports/2024-08-wildcat | IRoleProvider | unmatched — not counted | — | mentioned in findings | no |
| code4rena.com/reports/2024-08-wildcat | LibStoredInitCode | unmatched — not counted | — | mentioned in imports | no |
| code4rena.com/reports/2024-08-wildcat | LibERC20 | unmatched — not counted | — | mentioned in imports | no |
| code4rena.com/reports/2024-08-wildcat | ReentrancyGuard | unmatched — not counted | — | mentioned in imports | no |
| code4rena.com/reports/2024-08-wildcat | SphereXProtectedRegisteredBase | unmatched — not counted | — | mentioned in imports | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| plasma | `0x38056f7fe6396417b191bf7dc6a3aa04235f3f46` | ChainalysisProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xea6de11f8f3f83c79bd9d8db5517fcfdf2bb148a` | Wildcat4626WrapperFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xfeb516d9d946dd487a9346f6fee11f40c6945ee4` | WildcatCopyOfChainalysisList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35a5d1bd68f3139971027b92c1ee9384a0708554` | WildcatFeeRecipient | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 204 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 36 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: unique_name=6

Zero-match audit list:

- [21199] hackmd.io/@geistermeister/BJk4Ekt90

Fork inheritance lineage and inherited audits are included when available.
