# Agentic Audit Brief: Ambient

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: DECLINING - TVL dropped 45.0% over 90 days

## Project Overview

- Project: Ambient (`ambient`)
- Website: [https://ambient.finance/](https://ambient.finance/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: blast, canto, ethereum, scroll, swellchain
- Contract surface: 78 unique implementations (86 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,748,323.91
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ambient. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across blast, canto, ethereum, scroll, swellchain. Structural roles: 4 unclassified, 3 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: unclassified (4), core (3), supporting (3)
- Contract kinds: contract (10)
- Detected standards: accesscontrol (1), erc165 (1)
- Frameworks: foundry (3), openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xaab17419f062bb28cdbe82f9fc05e7c47c3f6194`, chain 81457)
- UnnamedContract (`0xd83ef4d0e968a96329ac297bbf049cddac7e0362`, chain 81457)
- UnnamedContract (`0x62223e90605845cf5cc6dae6e0de4cda130d6ddf`, chain 534352)
- UnnamedContract (`0x70b161f2f0a18bd1865021f25f9e895021e9dc4f`, chain 534352)
- UnnamedContract (`0xc2c301759b5e0c385a38e678014868a33e2f3ae3`, chain 534352)
- UnnamedContract (`0xed5535c6237f72bd9b4fdeaa3b6d8d9998b4c4e4`, chain 534352)
- CrocSwapDex (`0xaaaaaaaaffe404ee9433eef0094b6382d81fb958`, chain 81457)
- CrocSwapDex (`0xaaaaaaaacb71bf2c8cae522ea5fa455571a74106`, chain 534352)
- CrocSwapRouter (`0xfb5f26851e03449a0403ca945ebb4201415fd1fc`, chain 534352)
- TimelockAccepts (`0x19d005f3d4a9c5b0211457339dda9822dc2dee94`, chain 81457)
- UnnamedContract (`0x79cf6e6af136b04c145f330509ad547b0d7ef6e9`, chain 1923)
- UnnamedContract (`0x983a06261ae018fefa16e1e95c7fda13a2eb1038`, chain 1923)
- UnnamedContract (`0xaaaaaaaa82812f0a1f274016514ba2ca933bf24d`, chain 1923)
- UnnamedContract (`0xaab17419f062bb28cdbe82f9fc05e7c47c3f6194`, chain 1923)
- UnnamedContract (`0xd83ef4d0e968a96329ac297bbf049cddac7e0362`, chain 1923)

## Contract Surface Quality

- Logic-topography rows: 10; live-surface rows included: 10 (7 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/30 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 12 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 49 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 18 of 78 unique; 60 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 61
- Unique implementations: 78
- Raw deployments: 86
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ColdPath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x70b161f2f0a18bd1865021f25f9e895021e9dc4f`; blast `0x852c3a00162efdbce7e5bee4dfe065116d0e9915` | ⚠️ Unaudited |
| CrocImpact | unknown | project_anchor | own_supporting | 0 | blast | unit-226614 | `0x6a699ab45adce02891e6115b81dfb46caa5efdb9` | ⚠️ Unaudited |
| CrocPolicy | unknown | project_anchor | own_supporting | 0 | blast | unit-226613 | `0x503e3dfddd22d1c4a9787d2dac8643afc58c162c` | ⚠️ Unaudited |
| CrocQuery | unknown | project_anchor | own_supporting | 0 | blast | unit-226615 | `0xa3bd3be19012de72190c885fb270beb93e36a8a7` | ⚠️ Unaudited |
| CrocSwapDex | unknown | project_anchor | own_supporting | 0 | scroll | unit-226608 | `0xaaaaaaaacb71bf2c8cae522ea5fa455571a74106` | ⚠️ Unaudited |
| CrocSwapRouter | adapter | project_anchor | own_supporting | 0 | scroll | unit-226611 | `0xfb5f26851e03449a0403ca945ebb4201415fd1fc` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | blast | unit-226620 | `0xc73c8c60ea7d7f4338f9a8542927f4f1471e36ed` | ⚠️ Unaudited |
| HotProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6050cf4b9125c81dbccb5d662131d4de04d5bb86` | ⚠️ Unaudited |
| HotProxy | unknown | project_anchor | own_supporting | 1 | blast | unit-226621 | 2 deployments: blast `0x79cf6e6af136b04c145f330509ad547b0d7ef6e9`; blast `0xaaaaaaaaffe404ee9433eef0094b6382d81fb958` | ⚠️ Unaudited |
| KnockoutFlagPath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0xd54874d2a5715d9d4ccd32e1c6151ac8d51dcdc1`; blast `0xe3150c65446dc05505ac33b51d742e9458fe0bfe` | ⚠️ Unaudited |
| KnockoutLiqPath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x67231c7db63e5d7378596aadd6ba69345e6a53aa`; blast `0x6e26253238becf5e7099cbe2e74cbf378d03132f` | ⚠️ Unaudited |
| LongPath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x07ec4ad8478d667e5cad4e4601879cd5ae65cfdd`; blast `0x646929453e753565467f330110850885ead93fa9` | ⚠️ Unaudited |
| MicroPaths | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x8296b24386b85471af51ee4bfe6166df1f1d1534`; blast `0xc58f7a96a3a8e82da0747a6e1411c3a531220066` | ⚠️ Unaudited |
| TimelockAccepts | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-226612 | `0x19d005f3d4a9c5b0211457339dda9822dc2dee94` | ⚠️ Unaudited |
| TimelockAccepts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x786fbc62e881ba3d933058148514278d2071eb8f` | ⚠️ Unaudited |
| WarmPath | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226619 | `0xaaaaaaaaa24eeeb8d57d431224f73832bc34f688` | ⚠️ Unaudited |
| WarmPath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 2 deployments: blast `0x62223e90605845cf5cc6dae6e0de4cda130d6ddf`; blast `0x99f213608941b6116e8f1fab1908ddb33d796ca5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (61)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226592 | `0x0b6cd0ecb176cb39ad99b3a0e4294167a80b68a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13242bd05b1d3d6b79ada2b28678c235f3f2389b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25662c94d28da775c4e4fdca987b14d704b4b349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37e00522ce66507239d59b541940f99ea19ff81f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226593 | `0x3e3edd3ed7621891e574e5d7f47b1f30a994c0d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226594 | `0x41114a13230625a2735faa7183e528ed2538cb7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x509de582af6b4658a1830f7882077fba5523c957` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226595 | `0x533e164ded63f4c55e83e1f409bdf2bac5278035` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226596 | `0x7237c120fca2081f1a36ab933b065389174962b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f5d75ade75646919c923c98d53e9cc7be7ea794` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226597 | `0x9facdcfb3b58d85d0440af292d64480ad2503a6e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226598 | `0xa3e58b0cb05447398358b6c59e4b2465342efed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8f881a98e78cda7a0b3a613121a529b234eb56f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf9c4f56b29f0f109595b97198660b1dde730c77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc75a2965ddadff9856c661d45941e738779b305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2e1f740e11294c64ade66f69a1271c5b32004c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226599 | `0xca00926b6190c2c59336e73f02569c356d7b6b56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd268767be4597151ce2bb4a70a9e368ff26cb195` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-226600 | `0xdbd8d583a18c99e7f5191351e6e739af8e62dac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf241bef0ea64020655c70963ef81fea333752367` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8fe6fa0d9c778f8d814c838758b57a9cf1dd710` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-226601 | `0x79cf6e6af136b04c145f330509ad547b0d7ef6e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-226602 | `0x983a06261ae018fefa16e1e95c7fda13a2eb1038` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-226603 | `0xaaaaaaaa82812f0a1f274016514ba2ca933bf24d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-226604 | `0xaab17419f062bb28cdbe82f9fc05e7c47c3f6194` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-226605 | `0xd83ef4d0e968a96329ac297bbf049cddac7e0362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | canto | n/a | 2 deployments: swellchain `0xaaaaaaaa81a99d2a05ee428ec7a1d8a3c2237d85`; canto `0x9290c893ce949fe13ef3355660d07de0fb793618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x754eef5862082607184e7a3ab08cea76ef928285` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-226616 | `0xaab17419f062bb28cdbe82f9fc05e7c47c3f6194` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-226618 | `0xd83ef4d0e968a96329ac297bbf049cddac7e0362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x09f65b62467b1d43443b368e51085e1f29132988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1fa54687497f1205fd515f4032ea0bcff4169b7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x418c68ce5b73783abe178db12dfee9375d965dbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x51d3ba9ca9a120da0bcf8b487bd42878758f7916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x61a2d26d44973bca75c0ced0648bbaec7760d059` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-226606 | `0x62223e90605845cf5cc6dae6e0de4cda130d6ddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x646929453e753565467f330110850885ead93fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x67231c7db63e5d7378596aadd6ba69345e6a53aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x6e867e0493b3bec2a5576b73d1e127b6287f3060` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-226607 | `0x70b161f2f0a18bd1865021f25f9e895021e9dc4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x754eef5862082607184e7a3ab08cea76ef928285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x79cf6e6af136b04c145f330509ad547b0d7ef6e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x7f4c5653f7dbc91578d7e8eb22cb87d27c3107f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x89c8f762a5df63c268fce52fd54fa0786524015d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8cd474f5e213bb00c4d46b7ef60e689aa7c82db6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x95e657bf09fa8dfe096cee9bc8f8620cfe00a5b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa01c4e40fe62c3ffd7152569e20a5bdad23f171d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xa7e57a4ebade9c39397f1998ca3964993ba678a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xb5056c2f905b4155f726aea0dfe8bab3c023254d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-226609 | `0xc2c301759b5e0c385a38e678014868a33e2f3ae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc58f7a96a3a8e82da0747a6e1411c3a531220066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xd22e28f54399c7f2bf2a7cf4910ebdbddb93a5e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xdafbea5890d06a74e34271774d4714889edec6d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xdb0ee1193c4d05eb644efb2a1db13275b8f5994f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xdf3bd846bb2adc6ff2094b4579e9e324a250d2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe1ec23f5069586cd4cde4e693a354e7a45e12608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe3150c65446dc05505ac33b51d742e9458fe0bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xebfa8eeb9b37e046a69d1f4754c97fd147b15e7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-226610 | `0xed5535c6237f72bd9b4fdeaa3b6d8d9998b4c4e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xef2610cb7d84d48402543403f5fff0861fdd659b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xfb1d7506c6391d80d434b63b4924dd8ba1ddc789` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 54
- Live contracts: 6
- Unknown liveness contracts: 48
- Source-verified contracts: 12
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=7, exact address book overlap=3, source verified unclassified=4, unverified unclassified=40

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| blast | candidate review | ColdPath<br>`0x70b161f2f0a18bd1865021f25f9e895021e9dc4f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| blast | candidate review | CrocImpact<br>`0x6a699ab45adce02891e6115b81dfb46caa5efdb9` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| blast | candidate review | CrocPolicy<br>`0x503e3dfddd22d1c4a9787d2dac8643afc58c162c` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| blast | candidate review | CrocQuery<br>`0xa3bd3be19012de72190c885fb270beb93e36a8a7` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| blast | candidate review | LongPath<br>`0x646929453e753565467f330110850885ead93fa9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| blast | candidate review | MicroPaths<br>`0xc58f7a96a3a8e82da0747a6e1411c3a531220066` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| blast | candidate review | WarmPath<br>`0x62223e90605845cf5cc6dae6e0de4cda130d6ddf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| blast | exact address book overlap | TimelockAccepts<br>`0x19d005f3d4a9c5b0211457339dda9822dc2dee94` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| blast | exact address book overlap | UnnamedContract<br>`0xaab17419f062bb28cdbe82f9fc05e7c47c3f6194` | project_anchor | unknown | live | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| blast | exact address book overlap | UnnamedContract<br>`0xd83ef4d0e968a96329ac297bbf049cddac7e0362` | project_anchor | unknown | live | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| blast | source verified unclassified | HotProxy<br>`0x79cf6e6af136b04c145f330509ad547b0d7ef6e9` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| blast | source verified unclassified | KnockoutFlagPath<br>`0xe3150c65446dc05505ac33b51d742e9458fe0bfe` | non_address_book | unknown | unknown | verified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| blast | source verified unclassified | KnockoutLiqPath<br>`0x67231c7db63e5d7378596aadd6ba69345e6a53aa` | non_address_book | unknown | unknown | verified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| blast | source verified unclassified | TimelockAccepts<br>`0x786fbc62e881ba3d933058148514278d2071eb8f` | non_address_book | unknown | unknown | verified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| blast | unverified unclassified | UnnamedContract<br>`0x754eef5862082607184e7a3ab08cea76ef928285` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa8f881a98e78cda7a0b3a613121a529b234eb56f` | non_address_book | unknown | unknown | unverified | n/a | `0x051668b832d6f9437cff4955ae5a2bd68ebe5422` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaf9c4f56b29f0f109595b97198660b1dde730c77` | non_address_book | unknown | unknown | unverified | n/a | `0x051668b832d6f9437cff4955ae5a2bd68ebe5422` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc75a2965ddadff9856c661d45941e738779b305` | non_address_book | unknown | unknown | unverified | n/a | `0x051668b832d6f9437cff4955ae5a2bd68ebe5422` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x13242bd05b1d3d6b79ada2b28678c235f3f2389b` | non_address_book | unknown | unknown | unverified | n/a | `0x8023901399d7927181892642a0913b06fda30847` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25662c94d28da775c4e4fdca987b14d704b4b349` | non_address_book | unknown | unknown | unverified | n/a | `0x8023901399d7927181892642a0913b06fda30847` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x37e00522ce66507239d59b541940f99ea19ff81f` | non_address_book | unknown | unknown | unverified | n/a | `0x8023901399d7927181892642a0913b06fda30847` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x509de582af6b4658a1830f7882077fba5523c957` | non_address_book | unknown | unknown | unverified | n/a | `0x8023901399d7927181892642a0913b06fda30847` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f5d75ade75646919c923c98d53e9cc7be7ea794` | non_address_book | unknown | unknown | unverified | n/a | `0x8023901399d7927181892642a0913b06fda30847` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2e1f740e11294c64ade66f69a1271c5b32004c8` | non_address_book | unknown | unknown | unverified | n/a | `0x8023901399d7927181892642a0913b06fda30847` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd268767be4597151ce2bb4a70a9e368ff26cb195` | non_address_book | unknown | unknown | unverified | n/a | `0x8023901399d7927181892642a0913b06fda30847` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf241bef0ea64020655c70963ef81fea333752367` | non_address_book | unknown | unknown | unverified | n/a | `0x8023901399d7927181892642a0913b06fda30847` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf8fe6fa0d9c778f8d814c838758b57a9cf1dd710` | non_address_book | unknown | unknown | unverified | n/a | `0x8023901399d7927181892642a0913b06fda30847` |
| scroll | unverified unclassified | UnnamedContract<br>`0x09f65b62467b1d43443b368e51085e1f29132988` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0x1fa54687497f1205fd515f4032ea0bcff4169b7e` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0x418c68ce5b73783abe178db12dfee9375d965dbb` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0x51d3ba9ca9a120da0bcf8b487bd42878758f7916` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0x61a2d26d44973bca75c0ced0648bbaec7760d059` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0x646929453e753565467f330110850885ead93fa9` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0x67231c7db63e5d7378596aadd6ba69345e6a53aa` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0x6e867e0493b3bec2a5576b73d1e127b6287f3060` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0x754eef5862082607184e7a3ab08cea76ef928285` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0x79cf6e6af136b04c145f330509ad547b0d7ef6e9` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0x7f4c5653f7dbc91578d7e8eb22cb87d27c3107f6` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0x89c8f762a5df63c268fce52fd54fa0786524015d` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0x8cd474f5e213bb00c4d46b7ef60e689aa7c82db6` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0x95e657bf09fa8dfe096cee9bc8f8620cfe00a5b9` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0xa01c4e40fe62c3ffd7152569e20a5bdad23f171d` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0xa7e57a4ebade9c39397f1998ca3964993ba678a9` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0xb5056c2f905b4155f726aea0dfe8bab3c023254d` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0xc58f7a96a3a8e82da0747a6e1411c3a531220066` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0xd22e28f54399c7f2bf2a7cf4910ebdbddb93a5e9` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0xdafbea5890d06a74e34271774d4714889edec6d7` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0xdb0ee1193c4d05eb644efb2a1db13275b8f5994f` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0xdf3bd846bb2adc6ff2094b4579e9e324a250d2a2` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0xe1ec23f5069586cd4cde4e693a354e7a45e12608` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0xe3150c65446dc05505ac33b51d742e9458fe0bfe` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0xebfa8eeb9b37e046a69d1f4754c97fd147b15e7f` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0xef2610cb7d84d48402543403f5fff0861fdd659b` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |
| scroll | unverified unclassified | UnnamedContract<br>`0xfb1d7506c6391d80d434b63b4924dd8ba1ddc789` | non_address_book | unknown | unknown | unverified | n/a | `0x478ce50d3ce95224312a3f44ade1e3ddc047ae1a` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [QuantstampV1.pdf](https://github.com/CrocSwap/CrocSwap-protocol/blob/main/audits/QuantstampV1.pdf) | Quantstamp | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 56 | high |
| [QuantstampV2.pdf](https://github.com/CrocSwap/CrocSwap-protocol/blob/main/audits/QuantstampV2.pdf) | Quantstamp | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 55 | high |
| [Zellic.pdf](https://github.com/CrocSwap/CrocSwap-protocol/blob/main/audits/Zellic.pdf) | Zellic | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [8689] QuantstampV1.pdf — no match: Extracted contract names from findings sections and file paths. Audit date from cover page.
- [8690] QuantstampV2.pdf — no match: Extracted all contract names from the file signatures appendix and the findings section. The audit date is the fix review date (2023-05-30) from the changelog.
- [8691] Zellic.pdf — no match: Scope section lists CrocSwap contracts repository and version, but specific contract files are identified from findings targets.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| QuantstampV1.pdf | MultiPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | WarmPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CrocSwapDex | ambiguous — not counted | CrocSwapDex (proxy) (alternative) `0xaaaaaaaaffe404ee9433eef0094b6382d81fb958` — deployed 2024-02-29 05:42:09+03 — liveness: live (code_present_context)<br>UnnamedContract (alternative) `0xaaaaaaaa82812f0a1f274016514ba2ca933bf24d` — liveness: live (current_address_book_code)<br>CrocSwapDex (alternative) `0xaaaaaaaacb71bf2c8cae522ea5fa455571a74106` — deployed 2023-10-24 19:12:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| QuantstampV1.pdf | AgentMask | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | ColdPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | PoolRegistry | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | PositionRegistry | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | ColdInjector | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | Encoding | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CompoundMath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | LiquidityMath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | DepositDesk | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | SettleLayer | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CrocPolicy | ambiguous — not counted | 0x70b161… (alternative) `0x70b161f2f0a18bd1865021f25f9e895021e9dc4f` — deployed 2023-10-24 19:13:55+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x79cf6e6af136b04c145f330509ad547b0d7ef6e9` — liveness: live (current_address_book_code)<br>CrocPolicy (alternative) `0x503e3dfddd22d1c4a9787d2dac8643afc58c162c` — deployed 2024-02-29 05:43:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| QuantstampV1.pdf | FixedPoint | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | HotPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | LongPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | SafeModePath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CurveMath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | Chaining | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | SwapCurve | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CurveAssimilate | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CurveRoll | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | MarketSequencer | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | LevelBook | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | TransferHelper | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | BootPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | TimeLock | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | TradeMatcher | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | Bitmaps | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | TickMath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | SafeCast | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | PriceGrid | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | KnockoutLiq | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | KnockoutFlagPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | KnockoutLiqPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | KnockoutPath | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | MicroPaths | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | TickCensus | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | LiquidityCurve | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | PositionRegistrar | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | KnockoutCounter | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | TokenFlow | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CurveCache | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | PoolSpecs | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | StorageLayout | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | ProtocolCmd | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | ProtocolAccount | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CrocEvents | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CrocLpErc20 | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | CrocQuery | ambiguous — not counted | 0x62223e… (alternative) `0x62223e90605845cf5cc6dae6e0de4cda130d6ddf` — deployed 2023-10-24 19:16:21+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xaab17419f062bb28cdbe82f9fc05e7c47c3f6194` — liveness: live (current_address_book_code)<br>CrocQuery (alternative) `0xa3bd3be19012de72190c885fb270beb93e36a8a7` — deployed 2024-02-29 05:45:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| QuantstampV1.pdf | ICrocLpConduit | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | ICrocMinion | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | ICrocPermitOracle | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | ICrocVirtualToken | unmatched — not counted | — | listed in findings | no |
| QuantstampV1.pdf | Directives | unmatched — not counted | — | listed in findings | no |
| QuantstampV2.pdf | CrocSwapDex | ambiguous — not counted | CrocSwapDex (proxy) (alternative) `0xaaaaaaaaffe404ee9433eef0094b6382d81fb958` — deployed 2024-02-29 05:42:09+03 — liveness: live (code_present_context)<br>UnnamedContract (alternative) `0xaaaaaaaa82812f0a1f274016514ba2ca933bf24d` — liveness: live (current_address_book_code)<br>CrocSwapDex (alternative) `0xaaaaaaaacb71bf2c8cae522ea5fa455571a74106` — deployed 2023-10-24 19:12:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| QuantstampV2.pdf | CrocEvents | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | ICrocLpConduit | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | ICrocMinion | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | ICrocCondOracle | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | ICrocPermitOracle | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | IERC20Minimal | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | Timelock | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | KnockoutPath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | LongPath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | SafeModePath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | WarmPath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | BootPath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | HotPath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | ColdPath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | MicroPaths | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | CrocPolicy | ambiguous — not counted | 0x70b161… (alternative) `0x70b161f2f0a18bd1865021f25f9e895021e9dc4f` — deployed 2023-10-24 19:13:55+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x79cf6e6af136b04c145f330509ad547b0d7ef6e9` — liveness: live (current_address_book_code)<br>CrocPolicy (alternative) `0x503e3dfddd22d1c4a9787d2dac8643afc58c162c` — deployed 2024-02-29 05:43:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| QuantstampV2.pdf | CrocQuery | ambiguous — not counted | 0x62223e… (alternative) `0x62223e90605845cf5cc6dae6e0de4cda130d6ddf` — deployed 2023-10-24 19:16:21+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xaab17419f062bb28cdbe82f9fc05e7c47c3f6194` — liveness: live (current_address_book_code)<br>CrocQuery (alternative) `0xa3bd3be19012de72190c885fb270beb93e36a8a7` — deployed 2024-02-29 05:45:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| QuantstampV2.pdf | CrocImpact | ambiguous — not counted | CrocImpact (alternative) `0x6a699ab45adce02891e6115b81dfb46caa5efdb9` — deployed 2024-02-29 05:45:37+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xd83ef4d0e968a96329ac297bbf049cddac7e0362` — liveness: live (current_address_book_code)<br>0xc2c301… (alternative) `0xc2c301759b5e0c385a38e678014868a33e2f3ae3` — deployed 2023-10-24 19:16:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| QuantstampV2.pdf | CrocLpErc20 | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | KnockoutLiq | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | Bitmaps | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | Directives | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | Encoding | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | BitMath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | FixedPoint | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | ProtocolCmd | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | TickMath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | PriceGrid | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | CurveCache | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | CompoundMath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | SwapCurve | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | CurveMath | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | PoolSpecs | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | CurveRoll | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | CurveAssimilate | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | Chaining | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | TokenFlow | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | PoolRegistry | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | LevelBook | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | StorageLayout | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | ProtocolAccount | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | KnockoutCounter | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | TickCensus | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | ProxyCaller | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | MarketSequencer | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | TradeMatcher | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | AgentMask | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | LiquidityCurve | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | PositionRegistrar | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | DepositDesk | unmatched — not counted | — | listed in scope | no |
| QuantstampV2.pdf | SettleLayer | unmatched — not counted | — | listed in scope | no |
| Zellic.pdf | PoolRegistry | unmatched — not counted | — | Target in finding 3.1 | no |
| Zellic.pdf | TransferHelper | unmatched — not counted | — | Target in finding 3.2 | no |
| Zellic.pdf | TradeMatcher | unmatched — not counted | — | Target in finding 3.3 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | `0x6a699ab45adce02891e6115b81dfb46caa5efdb9` | CrocImpact | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x503e3dfddd22d1c4a9787d2dac8643afc58c162c` | CrocPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xa3bd3be19012de72190c885fb270beb93e36a8a7` | CrocQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xaaaaaaaacb71bf2c8cae522ea5fa455571a74106` | CrocSwapDex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xfb5f26851e03449a0403ca945ebb4201415fd1fc` | CrocSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x79cf6e6af136b04c145f330509ad547b0d7ef6e9` | HotProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 55 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 7 ambiguous, 107 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [8689] QuantstampV1.pdf
- [8690] QuantstampV2.pdf
- [8691] Zellic.pdf

Fork inheritance lineage and inherited audits are included when available.
