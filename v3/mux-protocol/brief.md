# Agentic Audit Brief: MUX Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 4 (1 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: MUX Protocol (`mux-protocol`)
- Website: [https://mux.network](https://mux.network)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, bsc, fantom, optimism
- Contract surface: 269 unique implementations (269 raw deployments)
- Coverage basis: 2/6 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,961,190.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MUX Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across arbitrum, avalanche, bsc, ethereum, fantom, optimism. Structural roles: 3 unclassified, 2 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: unclassified (3), core (2), supporting (1)
- Contract kinds: contract (6)
- Detected standards: ownable (2)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 209 contracts are derived from known codebases. 209 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x050947...ef0f17`, chain 10)
- UnnamedContract (`0x0532e5...b4fbc3`, chain 10)
- UnnamedContract (`0x1bba86...5f34ed`, chain 10)
- UnnamedContract (`0x253be9...8745e0`, chain 10)
- UnnamedContract (`0x39d653...fd544b`, chain 10)
- UnnamedContract (`0x497c0d...3c5c7c`, chain 10)
- UnnamedContract (`0x50ec9b...9fba4f`, chain 10)
- UnnamedContract (`0x68e13c...d6afc3`, chain 10)
- UnnamedContract (`0x69663e...e75363`, chain 10)
- UnnamedContract (`0x6fde98...63bc9d`, chain 10)
- UnnamedContract (`0x7ae9fd...91045c`, chain 10)
- UnnamedContract (`0x7e647a...09b391`, chain 10)
- UnnamedContract (`0x9a383f...6494b6`, chain 10)
- UnnamedContract (`0xb35686...c90b9e`, chain 10)
- UnnamedContract (`0xc6bd76...fb7260`, chain 10)
- UnnamedContract (`0xc9296e...f0b404`, chain 10)
- UnnamedContract (`0xd19cc2...d5c34d`, chain 10)
- UnnamedContract (`0xdf88fe...893a44`, chain 10)
- UnnamedContract (`0xe80e0b...389881`, chain 10)
- UnnamedContract (`0xee4b6c...c45f48`, chain 10)
- UnnamedContract (`0xfd951e...500fa8`, chain 10)
- UnnamedContract (`0xfec370...41e9d5`, chain 10)
- UnnamedContract (`0xff8640...f48c77`, chain 10)
- UnnamedContract (`0x07145a...b475a7`, chain 56)
- UnnamedContract (`0x0acc63...b9d4d3`, chain 56)
- UnnamedContract (`0x1c9bf5...e95dd1`, chain 56)
- UnnamedContract (`0x2de35a...819391`, chain 56)
- UnnamedContract (`0x3efe46...5bf82b`, chain 56)
- UnnamedContract (`0x4abc47...31eb59`, chain 56)
- UnnamedContract (`0x4b9465...eca2d3`, chain 56)
- UnnamedContract (`0x523d3e...6cebec`, chain 56)
- UnnamedContract (`0x6d9c34...2c702d`, chain 56)
- UnnamedContract (`0x81421a...26360c`, chain 56)
- UnnamedContract (`0x855e99...96d520`, chain 56)
- UnnamedContract (`0x8d7515...1aab0a`, chain 56)
- UnnamedContract (`0x8feb41...c00b7e`, chain 56)
- UnnamedContract (`0x904d02...98ff0b`, chain 56)
- UnnamedContract (`0x914997...01bddd`, chain 56)
- UnnamedContract (`0x9897a7...63a9c3`, chain 56)
- UnnamedContract (`0xa67aa2...451a08`, chain 56)
- UnnamedContract (`0xb66755...b52782`, chain 56)
- UnnamedContract (`0xea09cb...2476ae`, chain 56)
- UnnamedContract (`0xee85cd...a3b09f`, chain 56)
- UnnamedContract (`0xf23443...408108`, chain 56)
- UnnamedContract (`0x02fae0...c2b23c`, chain 42161)
- UnnamedContract (`0x085f5b...fe33ba`, chain 42161)
- UnnamedContract (`0x0a9bbf...de8e5d`, chain 42161)
- UnnamedContract (`0x0d37bc...fa7112`, chain 42161)
- UnnamedContract (`0x0f4dfd...03ea39`, chain 42161)
- UnnamedContract (`0x188914...5cfdef`, chain 42161)
- UnnamedContract (`0x18b930...24695a`, chain 42161)
- UnnamedContract (`0x198f15...98753f`, chain 42161)
- UnnamedContract (`0x2245c7...2be696`, chain 42161)
- UnnamedContract (`0x24bd1b...f2f752`, chain 42161)
- UnnamedContract (`0x25ab6c...e3b7fd`, chain 42161)
- UnnamedContract (`0x283458...affd16`, chain 42161)
- UnnamedContract (`0x290450...292914`, chain 42161)
- UnnamedContract (`0x2ac61d...2c8ba1`, chain 42161)
- UnnamedContract (`0x2ef6d4...5cf7a6`, chain 42161)
- UnnamedContract (`0x2f977a...3cb988`, chain 42161)
- UnnamedContract (`0x2ff2f1...ab0918`, chain 42161)
- UnnamedContract (`0x33261b...ceed62`, chain 42161)
- UnnamedContract (`0x338097...ee9c3e`, chain 42161)
- UnnamedContract (`0x381200...7961e2`, chain 42161)
- UnnamedContract (`0x39a656...9204fa`, chain 42161)
- UnnamedContract (`0x3b9d9e...3dda71`, chain 42161)
- UnnamedContract (`0x3d1bf0...320f9a`, chain 42161)
- UnnamedContract (`0x3e0199...8d6633`, chain 42161)
- UnnamedContract (`0x445c1c...0a01de`, chain 42161)
- UnnamedContract (`0x454c4e...c20d8a`, chain 42161)
- UnnamedContract (`0x458cd4...e497c3`, chain 42161)
- UnnamedContract (`0x482dd8...4d7a51`, chain 42161)
- UnnamedContract (`0x48fa7d...88ff6d`, chain 42161)
- UnnamedContract (`0x517220...b3f785`, chain 42161)
- UnnamedContract (`0x52162c...ad5189`, chain 42161)
- UnnamedContract (`0x5571e4...1ddaca`, chain 42161)
- UnnamedContract (`0x594839...d86e40`, chain 42161)
- UnnamedContract (`0x5dfcde...eab3ff`, chain 42161)
- UnnamedContract (`0x61d7cf...db2d97`, chain 42161)
- UnnamedContract (`0x623cca...0a5299`, chain 42161)
- UnnamedContract (`0x6256dc...592859`, chain 42161)
- UnnamedContract (`0x645a63...02f9d3`, chain 42161)
- UnnamedContract (`0x661dfb...f46a09`, chain 42161)
- UnnamedContract (`0x675807...64b213`, chain 42161)
- UnnamedContract (`0x697af7...faddac`, chain 42161)
- UnnamedContract (`0x6a82d8...950138`, chain 42161)
- UnnamedContract (`0x77ea37...351ea0`, chain 42161)
- UnnamedContract (`0x7b0f52...cd997b`, chain 42161)
- UnnamedContract (`0x7cbaf5...8737c8`, chain 42161)
- UnnamedContract (`0x7fbd0c...1184dd`, chain 42161)
- UnnamedContract (`0x809e14...19f41c`, chain 42161)
- UnnamedContract (`0x831dca...c613d1`, chain 42161)
- UnnamedContract (`0x854cf7...a13eae`, chain 42161)
- UnnamedContract (`0x85c8f4...78bfac`, chain 42161)
- UnnamedContract (`0x8824b3...54e5f8`, chain 42161)
- UnnamedContract (`0x883774...96b50e`, chain 42161)
- UnnamedContract (`0x8acb0c...df8a7a`, chain 42161)
- UnnamedContract (`0x8bb2ac...9b679b`, chain 42161)
- UnnamedContract (`0x8cee7e...9d12be`, chain 42161)
- UnnamedContract (`0x8ec387...8e16b4`, chain 42161)
- UnnamedContract (`0x9047c4...78d4bb`, chain 42161)
- UnnamedContract (`0x917952...71d57e`, chain 42161)
- UnnamedContract (`0x91cf3e...9ee189`, chain 42161)
- UnnamedContract (`0x9357e3...0ae94e`, chain 42161)
- UnnamedContract (`0x958853...c36f15`, chain 42161)
- UnnamedContract (`0x965a45...00d7c5`, chain 42161)
- UnnamedContract (`0x99615f...1ce198`, chain 42161)
- UnnamedContract (`0x9b637a...1f18c5`, chain 42161)
- UnnamedContract (`0x9e9f9b...5d978a`, chain 42161)
- UnnamedContract (`0xa14180...84e033`, chain 42161)
- UnnamedContract (`0xa19fd5...aaf5e3`, chain 42161)
- UnnamedContract (`0xa65ba1...097810`, chain 42161)
- UnnamedContract (`0xa68d96...604c2a`, chain 42161)
- UnnamedContract (`0xab7bd1...c5aa19`, chain 42161)
- UnnamedContract (`0xac96e1...9395fd`, chain 42161)
- UnnamedContract (`0xad367f...7632da`, chain 42161)
- UnnamedContract (`0xaf9c4f...320cee`, chain 42161)
- UnnamedContract (`0xb0cf86...d69330`, chain 42161)
- UnnamedContract (`0xb1bca2...237d18`, chain 42161)
- UnnamedContract (`0xb68ac7...2a9a41`, chain 42161)
- UnnamedContract (`0xb90fe3...1f6d21`, chain 42161)
- UnnamedContract (`0xb9943b...480b6f`, chain 42161)
- UnnamedContract (`0xbcf8c1...620226`, chain 42161)
- UnnamedContract (`0xbe002a...ae5597`, chain 42161)
- UnnamedContract (`0xbe08ad...3deb9d`, chain 42161)
- UnnamedContract (`0xbfbda4...17466d`, chain 42161)
- UnnamedContract (`0xc2d287...fbbebb`, chain 42161)
- UnnamedContract (`0xc30992...5c4ec1`, chain 42161)
- UnnamedContract (`0xc8efd5...1ad667`, chain 42161)
- UnnamedContract (`0xc90a58...50b2fc`, chain 42161)
- UnnamedContract (`0xcc6dea...8cd141`, chain 42161)
- UnnamedContract (`0xccd848...2eff6b`, chain 42161)
- UnnamedContract (`0xcd5daf...31c358`, chain 42161)
- UnnamedContract (`0xd18e07...e608be`, chain 42161)
- UnnamedContract (`0xd2df81...b2c74c`, chain 42161)
- UnnamedContract (`0xd7e864...e8ad18`, chain 42161)
- UnnamedContract (`0xd8d059...ef3943`, chain 42161)
- UnnamedContract (`0xdc3ba8...224d13`, chain 42161)
- UnnamedContract (`0xdd3cf6...eae2e4`, chain 42161)
- UnnamedContract (`0xe03b9b...4c2af1`, chain 42161)
- UnnamedContract (`0xe06347...619bcb`, chain 42161)
- UnnamedContract (`0xe16195...c52460`, chain 42161)
- UnnamedContract (`0xe1b50b...fddd8d`, chain 42161)
- UnnamedContract (`0xe1d143...eaf2ec`, chain 42161)
- UnnamedContract (`0xe739c5...c60f6b`, chain 42161)
- UnnamedContract (`0xe9944e...f8c9cb`, chain 42161)
- UnnamedContract (`0xeb13a6...fb07ec`, chain 42161)
- UnnamedContract (`0xeb678f...109e47`, chain 42161)
- UnnamedContract (`0xeb8c86...7adc40`, chain 42161)
- UnnamedContract (`0xef501d...e5d7b0`, chain 42161)
- UnnamedContract (`0xf01d26...216720`, chain 42161)
- UnnamedContract (`0xf0d95e...451c69`, chain 42161)
- UnnamedContract (`0xf64b4b...d2e7d6`, chain 42161)
- UnnamedContract (`0xf66937...c431e9`, chain 42161)
- UnnamedContract (`0xfd92e0...a35879`, chain 42161)
- UnnamedContract (`0xff5bb6...1ed758`, chain 42161)
- UnnamedContract (`0x0ba2e4...ee1d84`, chain 43114)
- UnnamedContract (`0x127963...30a96e`, chain 43114)
- UnnamedContract (`0x1444ed...70c4b0`, chain 43114)
- UnnamedContract (`0x18968a...33c82a`, chain 43114)
- UnnamedContract (`0x1ea32f...0e5b3b`, chain 43114)
- UnnamedContract (`0x28f16e...20a36c`, chain 43114)
- UnnamedContract (`0x29a28c...3b7062`, chain 43114)
- UnnamedContract (`0x30a667...ac0c2f`, chain 43114)
- UnnamedContract (`0x350c9c...f79c79`, chain 43114)
- UnnamedContract (`0x5898c3...ea2add`, chain 43114)
- UnnamedContract (`0x70d302...e08cea`, chain 43114)
- UnnamedContract (`0x7a1ae3...7f27c5`, chain 43114)
- UnnamedContract (`0x973db3...ee6b07`, chain 43114)
- UnnamedContract (`0x9d4a8d...7e95ae`, chain 43114)
- UnnamedContract (`0xac8009...72b9eb`, chain 43114)
- UnnamedContract (`0xaf2d36...94e390`, chain 43114)
- UnnamedContract (`0xcd7d33...65119d`, chain 43114)
- UnnamedContract (`0xce443b...95b01d`, chain 43114)
- UnnamedContract (`0xd4b442...10c935`, chain 43114)
- UnnamedContract (`0xde5384...5ff842`, chain 43114)
- UnnamedContract (`0xe01375...bdc938`, chain 43114)
- UnnamedContract (`0xe80e0b...389881`, chain 43114)
- UnnamedContract (`0xea4b1b...a4a58b`, chain 43114)
- GnosisSafeProxy (`0x7c8126...8068a5`, chain 10)
- GnosisSafeProxy (`0xf67d9e...964204`, chain 56)
- GnosisSafeProxy (`0x029a4a...c6bfd6`, chain 42161)
- GnosisSafeProxy (`0x8564c7...23fc94`, chain 43114)
- LiquidityPoolHop2 (`0x3e3ae3...a9706f`, chain 56)
- NativeUnwrapper (`0x2b9d44...e7771d`, chain 56)
- UnnamedContract (`0x0b70ad...ecd07c`, chain 250)
- UnnamedContract (`0x0c30b1...5a965b`, chain 250)
- UnnamedContract (`0x1305b2...619fd4`, chain 250)
- UnnamedContract (`0x13ccb7...892861`, chain 250)
- UnnamedContract (`0x2e81f4...1a88e6`, chain 250)
- UnnamedContract (`0x30acc1...2f707e`, chain 250)
- UnnamedContract (`0x3efe46...5bf82b`, chain 250)
- UnnamedContract (`0x450d81...bf9718`, chain 250)
- UnnamedContract (`0x480894...91df89`, chain 250)
- UnnamedContract (`0x55214e...7a9fb6`, chain 250)
- UnnamedContract (`0x5898c3...ea2add`, chain 250)
- UnnamedContract (`0x746ba4...b9c3dc`, chain 250)
- UnnamedContract (`0x9d4a8d...7e95ae`, chain 250)
- UnnamedContract (`0x9ea320...ba2adc`, chain 250)
- UnnamedContract (`0xb5e423...4f594d`, chain 250)
- UnnamedContract (`0xc70107...f04878`, chain 250)
- UnnamedContract (`0xc9296e...f0b404`, chain 250)
- UnnamedContract (`0xdaf206...a99683`, chain 250)
- UnnamedContract (`0xddade9...39edd2`, chain 250)
- UnnamedContract (`0xe60061...5cf8ff`, chain 250)
- UnnamedContract (`0xe6f4e8...7cd8c3`, chain 250)
- UnnamedContract (`0xe780d9...1ae9c7`, chain 250)
- UnnamedContract (`0xf16f66...63e424`, chain 250)
- UnnamedContract (`0xfcca7f...e9647a`, chain 250)

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 209/217 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/6 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 209 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 60 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 209 of 269 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/6
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 203
- Unique implementations: 269
- Raw deployments: 269
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/mux/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 2 | 33.3% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LiquidityPoolHop2 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-248745 | `0x3e3ae3...a9706f` | ✅ Audited |
| NativeUnwrapper | unknown | project_anchor | own_supporting | 0 | bsc | unit-248743 | `0x2b9d44...e7771d` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | optimism | unit-248763 | `0x7c8126...8068a5` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | bsc | unit-248766 | `0xf67d9e...964204` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | arbitrum | unit-248764 | `0x029a4a...c6bfd6` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | avalanche | unit-248765 | `0x8564c7...23fc94` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (263)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248558 | `0x050947...ef0f17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248559 | `0x0532e5...b4fbc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248560 | `0x1bba86...5f34ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248561 | `0x253be9...8745e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248562 | `0x39d653...fd544b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248563 | `0x497c0d...3c5c7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248564 | `0x50ec9b...9fba4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248565 | `0x68e13c...d6afc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248566 | `0x69663e...e75363` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248567 | `0x6fde98...63bc9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248568 | `0x7ae9fd...91045c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248569 | `0x7e647a...09b391` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248570 | `0x9a383f...6494b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248571 | `0xb35686...c90b9e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248572 | `0xc6bd76...fb7260` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248573 | `0xc9296e...f0b404` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248574 | `0xd19cc2...d5c34d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248575 | `0xdf88fe...893a44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248576 | `0xe80e0b...389881` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248577 | `0xee4b6c...c45f48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248578 | `0xfd951e...500fa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248579 | `0xfec370...41e9d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-248580 | `0xff8640...f48c77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248740 | `0x07145a...b475a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248741 | `0x0acc63...b9d4d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248742 | `0x1c9bf5...e95dd1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248744 | `0x2de35a...819391` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248746 | `0x3efe46...5bf82b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248747 | `0x4abc47...31eb59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248748 | `0x4b9465...eca2d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248749 | `0x523d3e...6cebec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248750 | `0x6d9c34...2c702d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248751 | `0x81421a...26360c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248752 | `0x855e99...96d520` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248753 | `0x8d7515...1aab0a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248754 | `0x8feb41...c00b7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248755 | `0x904d02...98ff0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248756 | `0x914997...01bddd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248757 | `0x9897a7...63a9c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248758 | `0xa67aa2...451a08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248759 | `0xb66755...b52782` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248760 | `0xea09cb...2476ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248761 | `0xee85cd...a3b09f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-248762 | `0xf23443...408108` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248581 | `0x0b70ad...ecd07c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248582 | `0x0c30b1...5a965b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248583 | `0x1305b2...619fd4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248584 | `0x13ccb7...892861` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248585 | `0x2e81f4...1a88e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248586 | `0x30acc1...2f707e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248587 | `0x3efe46...5bf82b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248588 | `0x450d81...bf9718` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248589 | `0x480894...91df89` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248590 | `0x55214e...7a9fb6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248591 | `0x5898c3...ea2add` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248592 | `0x746ba4...b9c3dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248593 | `0x9d4a8d...7e95ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248594 | `0x9ea320...ba2adc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248595 | `0xb5e423...4f594d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248596 | `0xc70107...f04878` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248597 | `0xc9296e...f0b404` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248598 | `0xdaf206...a99683` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248599 | `0xddade9...39edd2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248600 | `0xe60061...5cf8ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248601 | `0xe6f4e8...7cd8c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248602 | `0xe780d9...1ae9c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248603 | `0xf16f66...63e424` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-248604 | `0xfcca7f...e9647a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248605 | `0x02fae0...c2b23c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x050947...ef0f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07145a...b475a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08483f...77e3dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248606 | `0x085f5b...fe33ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248607 | `0x0a9bbf...de8e5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0acc63...b9d4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b70ad...ecd07c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248608 | `0x0d37bc...fa7112` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248609 | `0x0f4dfd...03ea39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1305b2...619fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13ccb7...892861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1444ed...70c4b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248610 | `0x188914...5cfdef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248611 | `0x18b930...24695a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248612 | `0x198f15...98753f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bba86...5f34ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248613 | `0x2245c7...2be696` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248614 | `0x24bd1b...f2f752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x253be9...8745e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248615 | `0x25ab6c...e3b7fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248616 | `0x283458...affd16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248617 | `0x290450...292914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29a28c...3b7062` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248618 | `0x2ac61d...2c8ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b9d44...e7771d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2de35a...819391` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248619 | `0x2ef6d4...5cf7a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248620 | `0x2f977a...3cb988` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248621 | `0x2ff2f1...ab0918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30a667...ac0c2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248622 | `0x33261b...ceed62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248623 | `0x338097...ee9c3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248624 | `0x381200...7961e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248625 | `0x39a656...9204fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39d653...fd544b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248626 | `0x3b9d9e...3dda71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248627 | `0x3d1bf0...320f9a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248628 | `0x3e0199...8d6633` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248629 | `0x445c1c...0a01de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248630 | `0x454c4e...c20d8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248631 | `0x458cd4...e497c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248632 | `0x482dd8...4d7a51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248633 | `0x48fa7d...88ff6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x497c0d...3c5c7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b9465...eca2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50ec9b...9fba4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248634 | `0x517220...b3f785` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248635 | `0x52162c...ad5189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x523d3e...6cebec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248636 | `0x5571e4...1ddaca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55d21e...f55fa9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248637 | `0x594839...d86e40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248638 | `0x5dfcde...eab3ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248639 | `0x61d7cf...db2d97` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248640 | `0x623cca...0a5299` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248641 | `0x6256dc...592859` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248642 | `0x645a63...02f9d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248643 | `0x661dfb...f46a09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248644 | `0x675807...64b213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68e13c...d6afc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69663e...e75363` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248645 | `0x697af7...faddac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248646 | `0x6a82d8...950138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d9c34...2c702d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70d302...e08cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73c595...ce8e16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x746ba4...b9c3dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248647 | `0x77ea37...351ea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a1ae3...7f27c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248648 | `0x7b0f52...cd997b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248649 | `0x7cbaf5...8737c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e647a...09b391` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248650 | `0x7fbd0c...1184dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248651 | `0x809e14...19f41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81421a...26360c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248652 | `0x831dca...c613d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248653 | `0x854cf7...a13eae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248654 | `0x85c8f4...78bfac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248655 | `0x8824b3...54e5f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248656 | `0x883774...96b50e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248657 | `0x8acb0c...df8a7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248658 | `0x8bb2ac...9b679b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248659 | `0x8cee7e...9d12be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d7515...1aab0a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248660 | `0x8ec387...8e16b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8feb41...c00b7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248661 | `0x9047c4...78d4bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x904d02...98ff0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248662 | `0x917952...71d57e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248663 | `0x91cf3e...9ee189` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248664 | `0x9357e3...0ae94e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248665 | `0x958853...c36f15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x95f298...f3e35c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248666 | `0x965a45...00d7c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x973db3...ee6b07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248667 | `0x99615f...1ce198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9a383f...6494b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248668 | `0x9b637a...1f18c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d4a8d...7e95ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248669 | `0x9e9f9b...5d978a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248670 | `0xa14180...84e033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa199be...103452` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248671 | `0xa19fd5...aaf5e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248672 | `0xa65ba1...097810` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248673 | `0xa68d96...604c2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa851ee...73cb45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248674 | `0xab7bd1...c5aa19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac8009...72b9eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248675 | `0xac96e1...9395fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248676 | `0xad367f...7632da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf2d36...94e390` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248677 | `0xaf9c4f...320cee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248678 | `0xb0cf86...d69330` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248679 | `0xb1bca2...237d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb5e423...4f594d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248680 | `0xb68ac7...2a9a41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6ad7e...09a622` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248681 | `0xb90fe3...1f6d21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248682 | `0xb9943b...480b6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248683 | `0xbcf8c1...620226` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248684 | `0xbe002a...ae5597` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248685 | `0xbe08ad...3deb9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248686 | `0xbfbda4...17466d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248687 | `0xc2d287...fbbebb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248688 | `0xc30992...5c4ec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc70107...f04878` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248689 | `0xc8efd5...1ad667` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248690 | `0xc90a58...50b2fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9296e...f0b404` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248691 | `0xcc6dea...8cd141` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248692 | `0xccd848...2eff6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248693 | `0xcd5daf...31c358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd7d33...65119d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce443b...95b01d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248694 | `0xd18e07...e608be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248695 | `0xd2df81...b2c74c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248696 | `0xd7e864...e8ad18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248697 | `0xd8d059...ef3943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdaf206...a99683` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248698 | `0xdc3ba8...224d13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248699 | `0xdd3cf6...eae2e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xddade9...39edd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde5384...5ff842` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248700 | `0xe03b9b...4c2af1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248701 | `0xe06347...619bcb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248702 | `0xe16195...c52460` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248703 | `0xe1b50b...fddd8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248704 | `0xe1d143...eaf2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe60061...5cf8ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248705 | `0xe739c5...c60f6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe80e0b...389881` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248706 | `0xe9944e...f8c9cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea09cb...2476ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248707 | `0xeb13a6...fb07ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248708 | `0xeb678f...109e47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248709 | `0xeb8c86...7adc40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee858b...5db1f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee85cd...a3b09f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248710 | `0xef501d...e5d7b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248711 | `0xf01d26...216720` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248712 | `0xf0d95e...451c69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf16f66...63e424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf23443...408108` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248713 | `0xf64b4b...d2e7d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248714 | `0xf66937...c431e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfcca7f...e9647a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248715 | `0xfd92e0...a35879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd951e...500fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfec370...41e9d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248716 | `0xff5bb6...1ed758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff8640...f48c77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248717 | `0x0ba2e4...ee1d84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248718 | `0x127963...30a96e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248719 | `0x1444ed...70c4b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248720 | `0x18968a...33c82a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248721 | `0x1ea32f...0e5b3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248722 | `0x28f16e...20a36c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248723 | `0x29a28c...3b7062` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248724 | `0x30a667...ac0c2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248725 | `0x350c9c...f79c79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248726 | `0x5898c3...ea2add` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248727 | `0x70d302...e08cea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248728 | `0x7a1ae3...7f27c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248729 | `0x973db3...ee6b07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248730 | `0x9d4a8d...7e95ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248731 | `0xac8009...72b9eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248732 | `0xaf2d36...94e390` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248733 | `0xcd7d33...65119d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248734 | `0xce443b...95b01d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248735 | `0xd4b442...10c935` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248736 | `0xde5384...5ff842` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248737 | `0xe01375...bdc938` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248738 | `0xe80e0b...389881` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-248739 | `0xea4b1b...a4a58b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [MUX 3 Protocol Report.pdf](https://github.com/mux-world/mux3-protocol/blob/main/audit/MUX%203%20Protocol%20Report.pdf) | Guardian | Audit | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [Certik-Audit-20220601.pdf](https://github.com/mux-world/mux-protocol/blob/main/audit/Certik-Audit-20220601.pdf) | CertiK | Audit | 2022-06 | stale | Direct | n/a | matched | 2 | 0 | 0 | 25 | n/a |
| [skynet.certik.com/projects/mux-protocol](https://skynet.certik.com/projects/mux-protocol) | CertiK | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [immunefi.com/bug-bounty/mux/information](https://immunefi.com/bug-bounty/mux/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3381] MUX 3 Protocol Report.pdf — no match: No reason recorded
- [3382] Certik-Audit-20220601.pdf — matched: No reason recorded
- [11952] skynet.certik.com/projects/mux-protocol — no match: Extracted from 'Audited Files' section; only two files explicitly listed, but report mentions 'View 63 Audited Files' suggesting more files exist but not shown in provided text.
- [11955] immunefi.com/bug-bounty/mux/information — no match: The document is a bug bounty program description, not an audit report. No specific contract names or audit date are provided.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| MUX 3 Protocol Report.pdf | ChainlinkStreamProvider | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | CollateralManager | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | CollateralPool | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | CollateralPoolAumReader | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | CollateralPoolComputed | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | Delegator | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | FacetClose | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | FacetManagement | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | FacetPositionAccount | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | FacetReader | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | LibCodec | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | LibExpBorrowingRate | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | LibOrderBook | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | Market | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | Mux3FeeDistributor | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | MuxPriceProvider | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | OrderBook | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | OrderBookGetter | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | PositionAccount | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | PricingManager | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | SusdsOracleL2 | unmatched — not counted | — | — | no |
| MUX 3 Protocol Report.pdf | Swapper | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | Account | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | Admin | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | Events | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | Getter | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | LibAsset | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | LibChainedProxy | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | LibMath | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | LibOrder | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | LibReferenceOracle | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | LibSubAccount | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | LibUtils | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | Liquidity | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | LiquidityManager | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | LiquidityPool | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | LiquidityPoolHop1 | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | LiquidityPoolHop2 | own contract | LiquidityPoolHop2 (selected) `0x3e3ae3...a9706f` — deployed 2024-04-02 17:11:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik-Audit-20220601.pdf | MlpToken | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | ModuleCall | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | MuxTimelockController | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | MuxToken | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | NativeUnwrapper | own contract | NativeUnwrapper (selected) `0x2b9d44...e7771d` — deployed 2024-04-02 11:47:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik-Audit-20220601.pdf | OrderBook | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | SafeOwnable | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | SafeOwnableUpgradeable | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | Storage | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | Trade | unmatched — not counted | — | — | no |
| Certik-Audit-20220601.pdf | Types | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/mux-protocol | Types | unmatched — not counted | — | listed in Audited Files | no |
| skynet.certik.com/projects/mux-protocol | LiquidityPool | unmatched — not counted | — | listed in Audited Files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 263 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 49 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1, medium=1
- Match method counts: unique_name=2

Zero-match audit list:

- [3381] MUX 3 Protocol Report.pdf
- [11952] skynet.certik.com/projects/mux-protocol

Fork inheritance lineage and inherited audits are included when available.
