# Agentic Audit Brief: WavesBridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: WavesBridge (`wavesbridge`)
- Website: [https://wavesbridge.io/](https://wavesbridge.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, bsc, ethereum
- Contract surface: 28 unique implementations (66 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,102,614.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for WavesBridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, bsc, ethereum. Structural roles: 2 supporting, 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: supporting (2), core (1)
- Contract kinds: contract (3)
- Detected standards: accesscontrol (2), erc165 (2), ownable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f`, chain 42161)
- Bridge (`0x3ac7a6635d99f376c3c05442f7eef62d349c3a55`, chain 1)
- Bridge (`0x3ac7a6635d99f376c3c05442f7eef62d349c3a55`, chain 56)
- PortalV2 (`0xac8f44ceca92b2a4b30360e5bd3043850a0ffcbe`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 4 of 28 unique; 24 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 28
- Raw deployments: 66
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
| AddressBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x564a0c04877e4ca6f5d0cad8c20522226321d9b0`; arbitrum `0x78c9730279b3256655fec668644ba9e97e461005`; arbitrum `0x9bbc7661af64d7af74f41ffee71a2b2798900d31` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-396606 | `0x3ac7a6635d99f376c3c05442f7eef62d349c3a55` | ⚠️ Unaudited |
| Bridge | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-396610 | `0x3ac7a6635d99f376c3c05442f7eef62d349c3a55` | ⚠️ Unaudited |
| ClaimHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1d1fc5d96f542042001d78e92ed60c3dae15a735`; arbitrum `0xbf47522c2b6d9e56195f5b6d4c7479be9b3ee3db` | ⚠️ Unaudited |
| COLON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e21c12eb03a0d235d6c513762050e9f58828eca` | ⚠️ Unaudited |
| ITO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x465dbc39f46f9d43c581a5d90a43e4a0f2a6ff2d` | ⚠️ Unaudited |
| Neiro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ba41e071c7b7fa4ebcfb62df5f45f6fa853ee` | ⚠️ Unaudited |
| OpsRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5571e37ec0a44019350880944e3619934a8fdbb9` | ⚠️ Unaudited |
| PepeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6982508145454ce325ddbe47a25d4ec3d2311933` | ⚠️ Unaudited |
| PoolAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0xa6062214b07ea1fb384caea20bf2c692064ad4d4`; arbitrum `0xda1a6c9a431062909e84aae97d999de32bbface8`; arbitrum `0xef4f5e58e67afca010df69a605935f6d073c1e56` | ⚠️ Unaudited |
| PoolAdapterCrypto | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x01aa1bdd140163b37c48e6a198565a7d44c42051`; arbitrum `0x3106047d9e3c39f9d982bdd83036166c7a50e4b6`; arbitrum `0xfa9dc4d47cbe235d38810f3d23bd7c0b8dd1e88a` | ⚠️ Unaudited |
| PoolAdapterStableNg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x05f4f0fbe800758637c6e8c97f641fea03437948`; arbitrum `0x853a954944a9a5d67e1e880ff9fb593a72a8e3a6` | ⚠️ Unaudited |
| PoolHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9c98a0a2bf4991ad8209c296dc6d3544575f1d5` | ⚠️ Unaudited |
| PortalV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396609 | `0xac8f44ceca92b2a4b30360e5bd3043850a0ffcbe` | ⚠️ Unaudited |
| RealGames | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a920b0eae5b49c51ebf042a61c3fa58dae04882` | ⚠️ Unaudited |
| SATO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32f411f32dd14f142c087062335032f89bdecb0e` | ⚠️ Unaudited |
| SimpleToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d224452801aced8b2f0aebe155379bb5d594381` | ⚠️ Unaudited |
| SynthesisV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf370d9ed0141207e81321158393eea5d8a50cc72` | ⚠️ Unaudited |
| SynthFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b86074274067133cabecbd882519a7e7af69178` | ⚠️ Unaudited |
| Tweet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d696dc16bc0d49daadb80d9bf312cec2c3f7501` | ⚠️ Unaudited |
| UnifiedRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0xa2a786ff9148f7c88ee93372db8cbe9e94585c74`; arbitrum `0xe7db62c7960183895190274f26925388db4a3be4`; arbitrum `0xfa43de785dd3cd0ef3dae0dd2b8be3f1b5112d1a` | ⚠️ Unaudited |
| Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xf787128e3eb8161174944117b9fe1204a22097fb`; bsc `0xf787128e3eb8161174944117b9fe1204a22097fb` | ⚠️ Unaudited |
| VestingByFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8c3fba99d378d2617658edcea7ae11a1d5a69095`; arbitrum `0xf1bd32384a4c0eb8bcd157a7712015dfe05fc99f` | ⚠️ Unaudited |
| VestingByNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x790b4a82eb55dee72d65a7eb313fd9a2d3e2e3bc`; arbitrum `0xf236547e48b7ef008a5d0fcd75310b45cf5b3188` | ⚠️ Unaudited |
| VestingByWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 24 deployments: arbitrum `0x05f238678d7ecda27bcb9842604330099dcff5e8`; arbitrum `0x06bbafb1bce612f80b79105e61e615219875da20`; arbitrum `0x0d624f722d5b190e6fe8ab11f44914290ca4c940`; arbitrum `0x1486b4bc1bbe4bc02989b8a46a8b27ce6a836ef3`; arbitrum `0x1ec4c286df11f3104470a6bfac0a40baff87b07d`; arbitrum `0x3814bbb04ce40b473596802f30a683e4c2576ad4`; arbitrum `0x3d0ebf699c829f8365ce9e0db1998b89a6cdfde7`; arbitrum `0x47847347397ff761b6dc9fb7907736b13d9e7c58`; arbitrum `0x6cd1d5c140b0f19d95afb996aa0c766967dd8dcc`; arbitrum `0x702f9dee35992bcd1081a61676c3a7e10433aacb`; arbitrum `0x7793c60408301311e96e30cda4bcb151d40607ae`; arbitrum `0x7a9b6af42d76c1d19ed687e702609c5ba5ccc1cf`; arbitrum `0x7e010ae57611a375c79877ecc845e25b9487756a`; arbitrum `0x7ffe1563ef92ec2df4df4052a3e54826f28eb37d`; arbitrum `0x803102403d600c82742241b4cb894e3e7f895558`; arbitrum `0x88b927af527abcfa736fb6d08e9d5100af420c6b`; arbitrum `0x9d791936f297cf36f18f41b49f64ec4ee94f483d`; arbitrum `0xa0b70eae1e02a43f28af2bc67e73a9c917f012d5`; arbitrum `0xafbc097e5d6f469b27532c51169a6f64b82a1412`; arbitrum `0xb70f4b4465b124c20db7a3b982debd6d032a269a`; arbitrum `0xce04dcd8ace2745dbf3219d670f92b73bdd882ef`; arbitrum `0xdcf4ce2b394de339268e93cdd8bb0d58b59a243d`; arbitrum `0xe0276217339c277c95be81fbdafe20df256df4ea`; arbitrum `0xfc2e04dbf969f4869a381a8da4c9145e6ebfaf3e` | ⚠️ Unaudited |
| VirtualPriceSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x68fc274b9d9e2baddc19492f512460f962639b4d`; arbitrum `0xfa843add03f881304af116caf704549867142541` | ⚠️ Unaudited |
| WalletFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x76f7b0cbc49f6aac02d0e548b51c8851daccf8d7`; arbitrum `0x8cb8c4263eb26b2349d74ea2cb1b27bc40709e12` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396607 | `0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 58
- Live contracts: 0
- Unknown liveness contracts: 58
- Source-verified contracts: 58
- Currently scope-matched contracts retained as-is: 0
- Classification counts: contamination review=3, source verified unclassified=55

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| contamination review | ClaimHelper<br>`0x1d1fc5d96f542042001d78e92ed60c3dae15a735` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| contamination review | PoolHelper<br>`0xc9c98a0a2bf4991ad8209c296dc6d3544575f1d5` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| contamination review | WalletFactory<br>`0x76f7b0cbc49f6aac02d0e548b51c8851daccf8d7` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | COLON<br>`0x7e21c12eb03a0d235d6c513762050e9f58828eca` | non_address_book | unknown | unknown | verified | n/a | `0xc35dec0a0180ded238d90d969c00692c9cccdfcb` |
| source verified unclassified | ITO<br>`0x465dbc39f46f9d43c581a5d90a43e4a0f2a6ff2d` | non_address_book | unknown | unknown | verified | n/a | `0xc35dec0a0180ded238d90d969c00692c9cccdfcb` |
| source verified unclassified | SATO<br>`0x32f411f32dd14f142c087062335032f89bdecb0e` | non_address_book | unknown | unknown | verified | n/a | `0xc35dec0a0180ded238d90d969c00692c9cccdfcb` |
| source verified unclassified | Tweet<br>`0x9d696dc16bc0d49daadb80d9bf312cec2c3f7501` | non_address_book | unknown | unknown | verified | n/a | `0xc35dec0a0180ded238d90d969c00692c9cccdfcb` |
| source verified unclassified | Validator<br>`0xf787128e3eb8161174944117b9fe1204a22097fb` | non_address_book | unknown | unknown | verified | n/a | `0xa0036dbc9e996d0ea65e8212f99d040044bb8beb` |
| source verified unclassified | Validator<br>`0xf787128e3eb8161174944117b9fe1204a22097fb` | non_address_book | unknown | unknown | verified | n/a | `0xa0036dbc9e996d0ea65e8212f99d040044bb8beb` |
| source verified unclassified | AddressBook<br>`0x564a0c04877e4ca6f5d0cad8c20522226321d9b0` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | AddressBook<br>`0x78c9730279b3256655fec668644ba9e97e461005` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | AddressBook<br>`0x9bbc7661af64d7af74f41ffee71a2b2798900d31` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | ClaimHelper<br>`0xbf47522c2b6d9e56195f5b6d4c7479be9b3ee3db` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | OpsRegistrar<br>`0x5571e37ec0a44019350880944e3619934a8fdbb9` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | PoolAdapter<br>`0xa6062214b07ea1fb384caea20bf2c692064ad4d4` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | PoolAdapter<br>`0xda1a6c9a431062909e84aae97d999de32bbface8` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | PoolAdapter<br>`0xef4f5e58e67afca010df69a605935f6d073c1e56` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | PoolAdapterCrypto<br>`0x01aa1bdd140163b37c48e6a198565a7d44c42051` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | PoolAdapterCrypto<br>`0x3106047d9e3c39f9d982bdd83036166c7a50e4b6` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | PoolAdapterCrypto<br>`0xfa9dc4d47cbe235d38810f3d23bd7c0b8dd1e88a` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | PoolAdapterStableNg<br>`0x05f4f0fbe800758637c6e8c97f641fea03437948` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | PoolAdapterStableNg<br>`0x853a954944a9a5d67e1e880ff9fb593a72a8e3a6` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | SynthesisV2<br>`0xf370d9ed0141207e81321158393eea5d8a50cc72` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | SynthFactory<br>`0x1b86074274067133cabecbd882519a7e7af69178` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | UnifiedRouterV2<br>`0xa2a786ff9148f7c88ee93372db8cbe9e94585c74` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | UnifiedRouterV2<br>`0xe7db62c7960183895190274f26925388db4a3be4` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | UnifiedRouterV2<br>`0xfa43de785dd3cd0ef3dae0dd2b8be3f1b5112d1a` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByFarming<br>`0x8c3fba99d378d2617658edcea7ae11a1d5a69095` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByFarming<br>`0xf1bd32384a4c0eb8bcd157a7712015dfe05fc99f` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByNFT<br>`0x790b4a82eb55dee72d65a7eb313fd9a2d3e2e3bc` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByNFT<br>`0xf236547e48b7ef008a5d0fcd75310b45cf5b3188` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x05f238678d7ecda27bcb9842604330099dcff5e8` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x06bbafb1bce612f80b79105e61e615219875da20` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x0d624f722d5b190e6fe8ab11f44914290ca4c940` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x1486b4bc1bbe4bc02989b8a46a8b27ce6a836ef3` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x1ec4c286df11f3104470a6bfac0a40baff87b07d` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x3814bbb04ce40b473596802f30a683e4c2576ad4` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x3d0ebf699c829f8365ce9e0db1998b89a6cdfde7` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x47847347397ff761b6dc9fb7907736b13d9e7c58` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x6cd1d5c140b0f19d95afb996aa0c766967dd8dcc` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x702f9dee35992bcd1081a61676c3a7e10433aacb` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x7793c60408301311e96e30cda4bcb151d40607ae` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x7a9b6af42d76c1d19ed687e702609c5ba5ccc1cf` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x7e010ae57611a375c79877ecc845e25b9487756a` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x7ffe1563ef92ec2df4df4052a3e54826f28eb37d` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x803102403d600c82742241b4cb894e3e7f895558` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x88b927af527abcfa736fb6d08e9d5100af420c6b` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0x9d791936f297cf36f18f41b49f64ec4ee94f483d` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0xa0b70eae1e02a43f28af2bc67e73a9c917f012d5` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0xafbc097e5d6f469b27532c51169a6f64b82a1412` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0xb70f4b4465b124c20db7a3b982debd6d032a269a` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0xce04dcd8ace2745dbf3219d670f92b73bdd882ef` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0xdcf4ce2b394de339268e93cdd8bb0d58b59a243d` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0xe0276217339c277c95be81fbdafe20df256df4ea` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VestingByWhitelist<br>`0xfc2e04dbf969f4869a381a8da4c9145e6ebfaf3e` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VirtualPriceSender<br>`0x68fc274b9d9e2baddc19492f512460f962639b4d` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | VirtualPriceSender<br>`0xfa843add03f881304af116caf704549867142541` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |
| source verified unclassified | WalletFactory<br>`0x8cb8c4263eb26b2349d74ea2cb1b27bc40709e12` | non_address_book | unknown | unknown | verified | n/a | `0x624e0bd3114e333375f10883b0d7621547939cd5` |

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
| ethereum | `0x3ac7a6635d99f376c3c05442f7eef62d349c3a55` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3ac7a6635d99f376c3c05442f7eef62d349c3a55` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xac8f44ceca92b2a4b30360e5bd3043850a0ffcbe` | PortalV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

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
