# Agentic Audit Brief: Juice Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Juice Finance (`juice-finance`)
- Website: [https://juice.finance](https://juice.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: blast
- Contract surface: 122 unique implementations (127 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $103,727.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Juice Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across blast. Structural roles: 7 core, 1 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (7), unclassified (1)
- Contract kinds: contract (8)
- Detected standards: erc20 (6), erc20permit (6), pausable (6), ownable (1), ownable2step (1)
- Frameworks: foundry (7), openzeppelin (7), prb-math (7), solady (6), uniswap-v3 (1)
- Upgradeable-pattern rows: 1

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 8; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 17 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 105 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/30
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 92
- Unique implementations: 122
- Raw deployments: 127
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetPriceAggregator | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | n/a | `0xdb4cfe914f304a513a01b12f4c0379dba1ea0a72` | ⚠️ Unaudited |
| ConstantStrategySlippageModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x001dae45b94a81cd1118f19733dc980c99361fb4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0xc0f68276bf79cb033641f615e72b19deb44fb7a3`; blast `0xcc8dc66b5e71bd8f4b3c99c0fd05d6991b1ce196` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0xdbe0c0b891b3c58a320b32e5426acff0efdf463f`; blast `0xfec64ae675cc4b1aacf8f9c0abead585c5496382` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | blast | n/a | `0xe2ff1a8a302f406aee73271f83386aaa37ef34cd` | ⚠️ Unaudited |
| FixedPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x28334aa690505f67f7c070b136ab80d289ffac61` | ⚠️ Unaudited |
| JuiceAccountManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-243416 | `0x23eba06981b5c2a6f1a985bdce41bd64d18e6dfa` | ⚠️ Unaudited |
| JuiceERC20AccountManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0246937acacabe4e1b6045de9b68113d72966be2` | ⚠️ Unaudited |
| JuiceGovernor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-243415 | `0x21d1887a5dd441dc8c01713713035dd171cd30d2` | ⚠️ Unaudited |
| JuiceHyperlockERC20PointsDepositStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-243419 | `0x8034b01555487c26d4e21f4e33b7a30fbc90d181` | ⚠️ Unaudited |
| JuiceLendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xdc9ed546bcf0546a22c242d023eb59d37d25813d` | ⚠️ Unaudited |
| JuiceStrategyKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5c484539c7ca2e1f9188e7e24e74fd6e46f0e3cf` | ⚠️ Unaudited |
| JuiceThrusterV2Strategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-243418 | `0x72e4ce9b7cc5d9c017f64ad58e512c253a11d30a` | ⚠️ Unaudited |
| JuiceThrusterV3SpotStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x54e5382d11d99178aef1e5a9c62fb7ee8b3f5ab2` | ⚠️ Unaudited |
| JuiceThrusterV3WETHSpotStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-243417 | `0x4a355d57fc1a5eeb33c0a19539744a2144220027` | ⚠️ Unaudited |
| JuiceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x818a92bc81aad0053d72ba753fb5bc3d0c5c0923` | ⚠️ Unaudited |
| JuiceV2LPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x576314f851732b208d807260fe19fec7dba3e40c`; blast `0x8791100e8134f5a7221c23d6a17c2c3a4486a60c` | ⚠️ Unaudited |
| JuiceV2SpotStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x15e44c3f3f9b34fc49cc15a18a597bf80f144bc9`; blast `0x445715f83e2ae91d8660a2f6dd68cc7ed6a5537b` | ⚠️ Unaudited |
| JuiceVaultActivator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc4438286b0793c35a94469dbacda54235a40ba45` | ⚠️ Unaudited |
| JuiceWasabiStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-243414 | `0x0ca56aa647e83a8f0a5f7a81a2fdca393bc68d78` | ⚠️ Unaudited |
| JuiceWasabiWETHStrategy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-243420 | `0x98546cdd046219b25b2e617a55563a5e4a3b9adc` | ⚠️ Unaudited |
| MunchableLockdropStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x01f7df622dde3b7d234aadbe282dda24cead9d21`; blast `0x38bd4396cb994a43ed84f012448a5b9cab5652b0` | ⚠️ Unaudited |
| ParticleDuoPointsStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x01e4ebac4767f14ee0e959961f78486b5dfe9fc3` | ⚠️ Unaudited |
| Presale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x360310975fae34d51a404099342baa812c689441` | ⚠️ Unaudited |
| ProtocolGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa25e37aef324edb69db1b31e9877968236965f7b` | ⚠️ Unaudited |
| PythPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x43b6e7acff40a11643c0d680df8bcad17c567002` | ⚠️ Unaudited |
| RingV2StrategyView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5487fd96e66b4e7c529e080c6dd49dafc64ff5ab` | ⚠️ Unaudited |
| StakeIdentifiers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4ca392f74a4c86f5e521f1d8e915b36ed425b331` | ⚠️ Unaudited |
| V3RangeDepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x245aed66a9f257b6799fb8cfc53d009d53c48071` | ⚠️ Unaudited |
| ViewV3SwapPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa31af89858960f3a2642ceb2495a40c231a31a13` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (92)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | n/a | `0x0c9a7b46334ae10a4a07398c266792b978af8c5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | n/a | `0x105e285f1a2370d325046fed1424d4e73f6fa2b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x10977b6924859b7ed5b0694b91a98934f32d630a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1d37383447ceceeedb7c92372d6993821d3d7b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x23026a138b8b372a5bbfafab0b9a96a72eaa5e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x28e22ad9fcd5f8b22a0e33b6fd2269fd0ee946e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x295e17672f1290b66dd064ec6b7fdaf280b33cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2a8c1fb09e97f1fdb70c3b4ee3214a06be6a310b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2b1c36a733b1bab31f05ac8866d330e29c604b8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x32b6c6322939263029a5cf37f14a59ab0a9e277c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | n/a | `0x34c9f9353566fd33682dbd77054d2287bff7ca7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x370bb609dd8d4ef0543618b28d75aee5049d333a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3e1b017d21ad613c58f8ee2f78987b3c9f14f643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3ecc555894b0d5e2d59433603a493d7a33fc121a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3fec7f626923445f587c4881a80d00a7104782d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x40214edef589149b9cebb7be7025197d885d6cb1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | n/a | `0x44f33bc796f7d3df55040cd3c631628b560715c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x451555983d4021168b5e40cf8f2b15f9a0eaba9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x46afa03c82a9e2fb933c23d01e6ec3a7eec22156` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x49d52bcbda04d67fccf9a8ebcb5847df3e1b3a3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | n/a | `0x4a1d9220e11a47d8ab22ccd82da616740cf0920a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4ace334860c91ae778ad0eb70b4ecbd7ed80cf32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4b9cff6f0b47e247b74b7a9224aaaf1994a6a049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4c8542aa99dd15baefd1db67550340b71e241048` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x501f5e26d000d374bda9236f2ac8601a80fa351a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | n/a | `0x530d188848fa7ec8e78a491010baea4de697f598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x542a672b1dea78efd83b9d7d8cae76cea59964a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x55155dd31c197da7735440fa5544ae782c81ac23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5650a9b3230a686be86ea4c244a187213051c245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5b05c7791f2845c950dc67c7ec8f0cc9500489a2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | n/a | `0x5bbc51eda8508f598e01eecd1ea129e741bcc25a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5eed3fea11ef1ea98970eb0129c5a424c7f215f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5f9db7fd07703881b3ff61cdd0ad032b868ed388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6040434e07dc88bfd2ea33f42c62fd130087807e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6301795aa55b90427cf74c18c8636e0443f2100b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6b30b081bb1b7218e94ab0c6f21a6439e14f661a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6e3e0e259d3580c583894079f90dcd6ea73932a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6f3bc2f9034c151326a80f5ca1ee0f1ea1e6f002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x741011f52b7499ca951f8b8ee547dd3cdd813fda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x78e6265a11a41e5dcd1431448d00f3524943fd11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7e4afebe294345d72de6bb8405c871d7bb6c53d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x81076e10ada4365fd721806d7340b3a15006ae0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8116a8c0e7629b028155387fc2ec8c130f68b916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x859f43ce8ca0bf176d8c68bbcf1f8e156f0558d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x86a29d4dbd9005bedf2e26ed33f74504e237d436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8b822a34577b1bb95cb657d990c180aa677d7e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8c123a1299843c64bc46681ac4f63ead076294b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8fd3c12f7c763d6ea0c038b634baa21922764c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x90afaf8beadfd4f28d88c9fa984f327b44444407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9810e5f491113caa7f160dc8298eb0f6b1fa0648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9dfd4094b3e88f3b9e79b04514b1669d6779aec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa1633af38f99528613e21864171b81e54dc9199b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa2e3fd7ec28bde6b3ec3d987057bebd4c9d79bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa628f04073df45047d47f18d34cbe5cd1d970f79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa674744253add4f9b8cffbaab7d675a34d8c11cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xaa9d57493a13ff4a764f06187f6f2dd082cb8920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xac88578449e158dda907750ceef4d488960c9b63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xace6b2ae21a8097fe932f7a9f66b2b60ccc7bad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xaf158f196994914add7069b41460594b49b2f7f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xaf70826a1363cf3fb6a221ab3adb2375a224b770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb4e4051190a43fa165c17f216571045628bedfbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb6b6f984df2a97a428a9ef5247f42ede11977a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbc0b332d88dcf65a4cd6905ef939213f485fe1a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbea850bdef49dd94f15315976f4eff628471e8bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc1b1ae2502d2cdef4772fb4a4a6fcbf4fd9c1b80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | n/a | `0xc81a630806d1af3fd7509187e1afc501fd46e818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc877b52c628dba77fc55f1ddb140747155c9b39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc912d67b1228f0fccce5fbdc63c206e024f7ec07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd04c891876675f8c02160ee33466315ac13afc38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | n/a | `0xd240c4e8e4de74726635a4fa98570d4bcef78e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd3dda9f38cfc5bdec7999450f5b0f3254c71c064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd602210f75e99d8dfeb050a5b65d2cdfa66754be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe0f52c81fd21b15db7458201431327dba71efd4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe1afaa16dd9ea241743e16ff0161398772a316d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe71ba6349e5c7f4596e705e5d40ceac78955cfe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe73e7716bd41d849ab6ecf3edddcdb29eef878a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe945655e93d369b2093fbbd9d3d12d1abe06f29d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe9e0e119fe5f96a93bc40bb7f959e2610bebbeeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xea42f500a92e4caa02b2f10e323eadee1f00fbf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xec2f41fecc39faffa50a67e4969214df79fbbacb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xece5468919ba981fcfc1e0c02b9709c52a7b7b19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf1dd5020c13ca6dc7598dccb9252aeb298b74e68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf2d3fb014900a61776de4e7c7034fd7966808928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf40958f2dc39bd3b7ad954dbdf73e6c0a4aa01bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf43e5b899e99dffdab0917b3fecc8547d113ada0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf538a5cad58ba908aa6f2fe62dfb801d87bf2b4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf7713de7aae0f749448e88613a225b6e1bedebbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf8009e0dfaa464dc2db0be0e4053a994396a210c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf8ce294aa8401bf8ec7b42aeb4de8ff3e60ffe30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfa4042e6777c6c66d71e9b288e756f8fde802130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfbaa0a681024cfb1e1f9f8b9a103cf376aa052e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfe215092d22ed6185b0e575d23518ed5fcfaddb4` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 90
- Live contracts: 0
- Unknown liveness contracts: 90
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=2, unverified unclassified=88

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0x5bbc51eda8508f598e01eecd1ea129e741bcc25a` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| exact address book overlap | UnnamedContract<br>`0xc81a630806d1af3fd7509187e1afc501fd46e818` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x10977b6924859b7ed5b0694b91a98934f32d630a` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x1d37383447ceceeedb7c92372d6993821d3d7b40` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x23026a138b8b372a5bbfafab0b9a96a72eaa5e05` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x28e22ad9fcd5f8b22a0e33b6fd2269fd0ee946e7` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x295e17672f1290b66dd064ec6b7fdaf280b33cea` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x2a8c1fb09e97f1fdb70c3b4ee3214a06be6a310b` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x2b1c36a733b1bab31f05ac8866d330e29c604b8f` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x32b6c6322939263029a5cf37f14a59ab0a9e277c` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x370bb609dd8d4ef0543618b28d75aee5049d333a` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x38bd4396cb994a43ed84f012448a5b9cab5652b0` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x3e1b017d21ad613c58f8ee2f78987b3c9f14f643` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x3ecc555894b0d5e2d59433603a493d7a33fc121a` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x3fec7f626923445f587c4881a80d00a7104782d1` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x40214edef589149b9cebb7be7025197d885d6cb1` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x445715f83e2ae91d8660a2f6dd68cc7ed6a5537b` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x451555983d4021168b5e40cf8f2b15f9a0eaba9c` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x46afa03c82a9e2fb933c23d01e6ec3a7eec22156` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x49d52bcbda04d67fccf9a8ebcb5847df3e1b3a3a` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x4ace334860c91ae778ad0eb70b4ecbd7ed80cf32` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x4b9cff6f0b47e247b74b7a9224aaaf1994a6a049` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x4c8542aa99dd15baefd1db67550340b71e241048` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x501f5e26d000d374bda9236f2ac8601a80fa351a` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x542a672b1dea78efd83b9d7d8cae76cea59964a1` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x55155dd31c197da7735440fa5544ae782c81ac23` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x5650a9b3230a686be86ea4c244a187213051c245` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x5b05c7791f2845c950dc67c7ec8f0cc9500489a2` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x5eed3fea11ef1ea98970eb0129c5a424c7f215f3` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x5f9db7fd07703881b3ff61cdd0ad032b868ed388` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x6040434e07dc88bfd2ea33f42c62fd130087807e` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x6301795aa55b90427cf74c18c8636e0443f2100b` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x6b30b081bb1b7218e94ab0c6f21a6439e14f661a` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x6e3e0e259d3580c583894079f90dcd6ea73932a3` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x6f3bc2f9034c151326a80f5ca1ee0f1ea1e6f002` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x741011f52b7499ca951f8b8ee547dd3cdd813fda` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x78e6265a11a41e5dcd1431448d00f3524943fd11` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x7e4afebe294345d72de6bb8405c871d7bb6c53d1` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x81076e10ada4365fd721806d7340b3a15006ae0c` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x8116a8c0e7629b028155387fc2ec8c130f68b916` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x859f43ce8ca0bf176d8c68bbcf1f8e156f0558d9` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x86a29d4dbd9005bedf2e26ed33f74504e237d436` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x8791100e8134f5a7221c23d6a17c2c3a4486a60c` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x8b822a34577b1bb95cb657d990c180aa677d7e16` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x8c123a1299843c64bc46681ac4f63ead076294b1` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x8fd3c12f7c763d6ea0c038b634baa21922764c44` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x90afaf8beadfd4f28d88c9fa984f327b44444407` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x9810e5f491113caa7f160dc8298eb0f6b1fa0648` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0x9dfd4094b3e88f3b9e79b04514b1669d6779aec9` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xa1633af38f99528613e21864171b81e54dc9199b` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xa2e3fd7ec28bde6b3ec3d987057bebd4c9d79bdc` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xa628f04073df45047d47f18d34cbe5cd1d970f79` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xa674744253add4f9b8cffbaab7d675a34d8c11cf` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xaa9d57493a13ff4a764f06187f6f2dd082cb8920` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xac88578449e158dda907750ceef4d488960c9b63` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xace6b2ae21a8097fe932f7a9f66b2b60ccc7bad1` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xaf158f196994914add7069b41460594b49b2f7f8` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xaf70826a1363cf3fb6a221ab3adb2375a224b770` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xb4e4051190a43fa165c17f216571045628bedfbe` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xb6b6f984df2a97a428a9ef5247f42ede11977a72` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xbc0b332d88dcf65a4cd6905ef939213f485fe1a3` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xbea850bdef49dd94f15315976f4eff628471e8bd` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xc1b1ae2502d2cdef4772fb4a4a6fcbf4fd9c1b80` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xc877b52c628dba77fc55f1ddb140747155c9b39d` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xc912d67b1228f0fccce5fbdc63c206e024f7ec07` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xcc8dc66b5e71bd8f4b3c99c0fd05d6991b1ce196` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xd04c891876675f8c02160ee33466315ac13afc38` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xd3dda9f38cfc5bdec7999450f5b0f3254c71c064` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xd602210f75e99d8dfeb050a5b65d2cdfa66754be` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xdbe0c0b891b3c58a320b32e5426acff0efdf463f` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xe0f52c81fd21b15db7458201431327dba71efd4c` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xe1afaa16dd9ea241743e16ff0161398772a316d5` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xe71ba6349e5c7f4596e705e5d40ceac78955cfe9` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xe73e7716bd41d849ab6ecf3edddcdb29eef878a3` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xe945655e93d369b2093fbbd9d3d12d1abe06f29d` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xe9e0e119fe5f96a93bc40bb7f959e2610bebbeeb` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xea42f500a92e4caa02b2f10e323eadee1f00fbf7` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xec2f41fecc39faffa50a67e4969214df79fbbacb` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xece5468919ba981fcfc1e0c02b9709c52a7b7b19` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xf1dd5020c13ca6dc7598dccb9252aeb298b74e68` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xf2d3fb014900a61776de4e7c7034fd7966808928` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xf40958f2dc39bd3b7ad954dbdf73e6c0a4aa01bf` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xf43e5b899e99dffdab0917b3fecc8547d113ada0` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xf538a5cad58ba908aa6f2fe62dfb801d87bf2b4c` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xf7713de7aae0f749448e88613a225b6e1bedebbf` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xf8009e0dfaa464dc2db0be0e4053a994396a210c` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xf8ce294aa8401bf8ec7b42aeb4de8ff3e60ffe30` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xfa4042e6777c6c66d71e9b288e756f8fde802130` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xfbaa0a681024cfb1e1f9f8b9a103cf376aa052e0` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |
| unverified unclassified | UnnamedContract<br>`0xfe215092d22ed6185b0e575d23518ed5fcfaddb4` | non_address_book | unknown | unknown | unverified | n/a | `0x0ee09b204ffebf9a1f14c99e242830a09958ba34` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf (also discovered via alternate URL)](https://3056968727-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FWknP2uI2K6bJ6A8rjMCU%2Fuploads%2FsPOYBN0lSFOcXueNilnx%2FJUICE-Trust_Security-consultaion_report.pdf?alt=media) | Trust Security | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21390] spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf — no match: Scope section lists contracts/LendingPool and contracts/Juice (excluding subdirectories). Additional contracts identified from findings sources.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf | LendingPool | unmatched — not counted | — | listed in scope | no |
| spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf | Juice | unmatched — not counted | — | listed in scope | no |
| spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf | ERC20CollateralVault | unmatched — not counted | — | source in findings | no |
| spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf | Liquidator | unmatched — not counted | — | source in findings | no |
| spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf | AccountManager | unmatched — not counted | — | source in findings | no |
| spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf | BaseAccount | unmatched — not counted | — | source in findings | no |
| spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf | JuiceAccountManager | unmatched — not counted | — | source in findings | no |
| spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf | JuiceAccount | unmatched — not counted | — | source in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 94 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [21390] spaces/WknP2uI2K6bJ6A8rjMCU/uploads/sPOYBN0lSFOcXueNilnx/JUICE-Trust_Security-consultaion_report.pdf

Fork inheritance lineage and inherited audits are included when available.
