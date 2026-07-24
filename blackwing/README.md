# Agentic Audit Brief: Blackwing

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Blackwing (`blackwing`)
- Website: [https://blackwing.fi/](https://blackwing.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, bsc, ethereum
- Contract surface: 75 unique implementations (75 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $768,964.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Blackwing. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, bsc, ethereum. Structural roles: 5 core. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: accesscontrol (3), erc165 (3), erc20 (2), ownable (1), pausable (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 4

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 5; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 37 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 38 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 34
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/39
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 75
- Raw deployments: 75
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BlackwingNoopDeployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-230401 | `0x3b7df0cd432c8f3b01b969ad8d2a2a1405b1c04f` | ⚠️ Unaudited |
| BlackwingNoopDeployer | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-230424 | `0x3b7df0cd432c8f3b01b969ad8d2a2a1405b1c04f` | ⚠️ Unaudited |
| BlackwingVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa92299289361fdcbb4ce9acbb512a84bd5fab37d` | ⚠️ Unaudited |
| BlackwingVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230411 | `0xc6ade8a68026d582ab37b879d188caf7e405dd09` | ⚠️ Unaudited |
| BlackwingVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-230433 | `0xd00789260984160a64dcf19a03896dff73bf4514` | ⚠️ Unaudited |
| BlackwingVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-230427 | `0xc6ade8a68026d582ab37b879d188caf7e405dd09` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x010bd3cfe12cd3f57b7b0dcf23a7a8eb26845ec7` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230398 | `0x10b939b5f820cd6687280f8d103056fb56a21517` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230399 | `0x28d6f930462299c6597ac40b06f95dad3476477e` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230400 | `0x33f0d2e2b8588bcddb47728ee25c3ed6e1308cb7` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230402 | `0x418d54b4dc069e8a3dda78df19aeb0cba11aaf9e` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230403 | `0x533a3a06680db5dafacde57691d3dd2a7f4fe332` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230404 | `0x5635b051a97fc1cdcb480c760763fa2546298aef` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230405 | `0x81a3b889b718be0503698e18f836bf44a0a8be22` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230406 | `0x9a597101684cae355c1663ff23f20eb4fcb3a783` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230407 | `0x9eede5f450e7a2b7ee632fd228bcfe322ecefcdf` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230408 | `0xa451169fe5f41474e7a370acbfe390807008fbfe` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230409 | `0xb943bd7da6948324363025e3fe789cd02c846c86` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230410 | `0xbf1253983b930fea513e2437e8d83520d9ddeaee` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230412 | `0xc7461574b8179c2ec6bdcbab7f63c30fa7d0d4bd` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230413 | `0xc7fa9aef1fe5b598e3671baa4fcab0f9024ea306` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230414 | `0xc912b8fbc8310b714cd05263380f85834779ad7e` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230415 | `0xc9fb68a2c76fdc07fb76df4ff8149f48482b1a16` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230416 | `0xcfd9020f41162eede87252885e2551a9377263a3` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230417 | `0xd13dfb42bf50a9577a4b3b67ae3f41b152092f45` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230419 | `0xd821b54f27e4841ea75a414a0ebfec94c3f27098` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230420 | `0xdcfe7cdb5b1bb7bfd4ed57b83efd49fe9cd19b2e` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230421 | `0xf19e652679ab166fca767d853b1459c3922d0ae5` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-230422 | `0xf59ab8c53f2075339a1e31c16c227c51264e3359` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-230431 | `0x1004dd758d318fa786ca13f46b2d37088cf32c12` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-230432 | `0xa767c903d8b801a2f3cc451134ead2d7903c0350` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-230423 | `0x27ea06f9e5e4deb9349187a39edadef9142a46ec` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-230425 | `0x7ae9431fa62f5be2da7dcb05dcb1fc5fb2fe7cc3` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-230426 | `0xb943bd7da6948324363025e3fe789cd02c846c86` | ⚠️ Unaudited |
| BlackwingVaultToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-230430 | `0xe8330250d7b996cde78bce829779005e35e48218` | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-230418 | `0xd810362556296c834e30c9a61d8e21a5cf29eab4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-230434 | `0x761b2ccdd37ef1cac84f8728687a5248c9efb78f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-230428 | `0xd18c3fc06b42f053ed485f233eb90b06a4f3d778` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-230429 | `0xd2e23b76b44d568b77d65b64a2beff8439e437b6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x032f155884dcc6b86dd70595cafdee0f7003d322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27ea06f9e5e4deb9349187a39edadef9142a46ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x283d3d96b9aba96028a9a1cd6cafd4f78c003eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x369c60d4f3c732ca7d65cedffe2c3ed6aa2a3af0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39c973162f2af3dd7dc8bfbecc7fdc0b8602b979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43edc8040b3bb9aecc5871d6d42eedc2385b1533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e20d2943b7f8c8e3dcf4910f5069726d71b190d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x522bf877c828977b3dfaec12b96ea50f6fa9ab0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69ae4230d59c6ea3f4b0ea5034de88aeeca1fd29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79a22f422ba994297537473b9ef48faee37503fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ae9431fa62f5be2da7dcb05dcb1fc5fb2fe7cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e9e93f98d2da68ed553d07f1e853da178ee9f08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870824f50f0b18c56ebe2f3e9fa2904a4a3ba985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a29788d21b424c5356038af5d7f04f03fd6109e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a4b0d475a37a3aabb53d20c30a2d0b965cb6dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc34a8abffbb9a392fdb6c56ecab0317a64b54b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7f545a9b6a12407d1f20b09f17d8850446f1981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbda273d19ab51027643cb4c4a8d20b3797ea6475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce057c3305175ce440454bfe6b7a067d24211a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ffe6c7a7629d3376fed69865bc99f4fd92f205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9beb11b967b3a96e15df83613951eae61bf8c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcca89195a71190e9935d25a098735cf000bdaf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xede07fbac1f3cee96ca1b4dbd1fa9f5b928fc8f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf962098614b4d33a3223b56e0f4a83144db7fba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b7df0cd432c8f3b01b969ad8d2a2a1405b1c04f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb943bd7da6948324363025e3fe789cd02c846c86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6ade8a68026d582ab37b879d188caf7e405dd09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdcfe7cdb5b1bb7bfd4ed57b83efd49fe9cd19b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39c973162f2af3dd7dc8bfbecc7fdc0b8602b979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7273f0ecd087d1193c74cd121a62e19ff95ce7e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9db97df1e818cc4ada61daf45e1717d1359e07ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa5e5c53edefe4ff90cf9f19edac730fff2b7ca27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa92299289361fdcbb4ce9acbb512a84bd5fab37d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcfd90e3b89dcff2d357463f0aafdb175075eab9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd1783ebb2d47ae0b24a66ebac28a7e160da2abeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf214afcb3d138bf9e96153dd76c89b7d025f2e80` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 36
- Live contracts: 0
- Unknown liveness contracts: 36
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=36

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x032f155884dcc6b86dd70595cafdee0f7003d322` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x27ea06f9e5e4deb9349187a39edadef9142a46ec` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x283d3d96b9aba96028a9a1cd6cafd4f78c003eaf` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x369c60d4f3c732ca7d65cedffe2c3ed6aa2a3af0` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x39c973162f2af3dd7dc8bfbecc7fdc0b8602b979` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x43edc8040b3bb9aecc5871d6d42eedc2385b1533` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x4e20d2943b7f8c8e3dcf4910f5069726d71b190d` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x522bf877c828977b3dfaec12b96ea50f6fa9ab0a` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x69ae4230d59c6ea3f4b0ea5034de88aeeca1fd29` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x79a22f422ba994297537473b9ef48faee37503fd` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x7ae9431fa62f5be2da7dcb05dcb1fc5fb2fe7cc3` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x7e9e93f98d2da68ed553d07f1e853da178ee9f08` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x870824f50f0b18c56ebe2f3e9fa2904a4a3ba985` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x9a29788d21b424c5356038af5d7f04f03fd6109e` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x9a4b0d475a37a3aabb53d20c30a2d0b965cb6dbf` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x9cc34a8abffbb9a392fdb6c56ecab0317a64b54b` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0xb7f545a9b6a12407d1f20b09f17d8850446f1981` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0xbda273d19ab51027643cb4c4a8d20b3797ea6475` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0xce057c3305175ce440454bfe6b7a067d24211a04` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0xd0ffe6c7a7629d3376fed69865bc99f4fd92f205` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0xd9beb11b967b3a96e15df83613951eae61bf8c14` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0xdcca89195a71190e9935d25a098735cf000bdaf0` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0xede07fbac1f3cee96ca1b4dbd1fa9f5b928fc8f1` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0xf962098614b4d33a3223b56e0f4a83144db7fba1` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x3b7df0cd432c8f3b01b969ad8d2a2a1405b1c04f` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0xb943bd7da6948324363025e3fe789cd02c846c86` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0xc6ade8a68026d582ab37b879d188caf7e405dd09` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0xdcfe7cdb5b1bb7bfd4ed57b83efd49fe9cd19b2e` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x39c973162f2af3dd7dc8bfbecc7fdc0b8602b979` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x7273f0ecd087d1193c74cd121a62e19ff95ce7e4` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0x9db97df1e818cc4ada61daf45e1717d1359e07ba` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0xa5e5c53edefe4ff90cf9f19edac730fff2b7ca27` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0xa92299289361fdcbb4ce9acbb512a84bd5fab37d` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0xcfd90e3b89dcff2d357463f0aafdb175075eab9d` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0xd1783ebb2d47ae0b24a66ebac28a7e160da2abeb` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |
| unverified unclassified | UnnamedContract<br>`0xf214afcb3d138bf9e96153dd76c89b7d025f2e80` | non_address_book | unknown | unknown | unverified | n/a | `0x551d1f5a39aa64952d83f0cd6d6cb74563587226` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ottersec-evm-vault.pdf](https://raw.githubusercontent.com/ferumlabs/public-contracts/main/audits/ottersec-evm-vault.pdf) | OtterSec | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [zellic-evm-vault.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/ferumlabs/public-contracts/main/audits/zellic-evm-vault.pdf) | Zellic | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [ottersec.pdf](https://raw.githubusercontent.com/ferumlabs/evm-contracts/main/audits/ottersec.pdf) | OtterSec | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [zellic.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/ferumlabs/evm-contracts/main/audits/zellic.pdf) | Zellic | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21345] ottersec-evm-vault.pdf — no match: The scope section describes the program as 'blackwing-EVM-contracts' but does not list individual contract files. Contract names were inferred from findings: BlackwingVault (main contract) and VaultToken (token contract). No other contracts explicitly named.
- [21346] zellic-evm-vault.pdf — no match: Scope section lists three Solidity files: vault.sol, vault_token.sol, and deployer/aave_deployer.sol. Audit date is February 29, 2024 from cover page.
- [21347] ottersec.pdf — no match: Scope section describes the program 'blackwing-EVM-contracts' but does not list individual contract files. Contract names extracted from findings: BlackwingVault and VaultToken.
- [21348] zellic.pdf — no match: Scope section lists three Solidity files: vault.sol, vault_token.sol, and deployer/aave_deployer.sol. Audit date is February 29, 2024 from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ottersec-evm-vault.pdf | BlackwingVault | unmatched — not counted | — | Referenced in findings OS-FRM-ADV-00 and OS-FRM-ADV-01 as the contract containing deposit and withdraw functions. | no |
| ottersec-evm-vault.pdf | VaultToken | unmatched — not counted | — | Mentioned in general finding OS-FRM-SUG-00 as a token created within the system. | no |
| zellic-evm-vault.pdf | vault.sol | unmatched — not counted | — | listed in scope section | no |
| zellic-evm-vault.pdf | vault_token.sol | unmatched — not counted | — | listed in scope section | no |
| zellic-evm-vault.pdf | aave_deployer.sol | unmatched — not counted | — | listed in scope section | no |
| ottersec.pdf | BlackwingVault | unmatched — not counted | — | mentioned in findings as containing deposit and withdraw functions | no |
| ottersec.pdf | VaultToken | unmatched — not counted | — | mentioned in findings as created within BlackwingVault | no |
| zellic.pdf | vault.sol | unmatched — not counted | — | listed in scope section | no |
| zellic.pdf | vault_token.sol | unmatched — not counted | — | listed in scope section | no |
| zellic.pdf | aave_deployer.sol | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 70 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, medium=2
- Match method counts: n/a

Zero-match audit list:

- [21345] ottersec-evm-vault.pdf
- [21346] zellic-evm-vault.pdf
- [21347] ottersec.pdf
- [21348] zellic.pdf

Fork inheritance lineage and inherited audits are included when available.
