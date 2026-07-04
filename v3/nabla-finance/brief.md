# Agentic Audit Brief: Nabla Finance

## Project Overview

- Project: Nabla Finance (`nabla-finance`)
- Website: [https://nabla.fi](https://nabla.fi)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:34.072Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum, base, berachain, hyperliquid
- Contract surface: 234 unique implementations (240 raw deployments)
- DeFi Llama TVL: $89,239.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 38 project-authored contract(s) across 4 chain(s); 7 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 24 common project-authored base contract(s) (mintcontroller, controller, fiattokenv2). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 272; live-surface contracts included: 236 (28 live, 208 unknown).
- Excluded by liveness: 36 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/27 (0.0%)
- Deployed-live implementations: 27 of 234 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 207
- Unique implementations: 234
- Raw deployments: 240
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| aeWETH | token | arbitrum | n/a | 2 deployments: arbitrum [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/); arbitrum `0x8b194b...fba668` | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | n/a | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| ArbitrumFoundationVestingWallet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x15533b...5d6844`](./contracts/arbitrum-42161/0x15533b77981cda0f85c4f9a485237df4285d6844/); arbitrum `0x28b72d...9d2a14` | ⚠️ Unaudited |
| ArbitrumFoundationVestingWallet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xcfc79f...47513f`](./contracts/arbitrum-42161/0xcfc79fcd07929467a8e1925e06007de5f047513f/); arbitrum `0xe3c6c2...108659` | ⚠️ Unaudited |
| BeaconProxyFactory | unknown | arbitrum | n/a | [`0x863491...a1bda9`](./contracts/arbitrum-42161/0x863491cc6c7275bcc15a386093e92390e2a1bda9/) | ⚠️ Unaudited |
| CreditMessaging | unknown | berachain | n/a | [`0x45a01e...2033cd`](./contracts/berachain-80094/0x45a01e4e04f14f7a4a6702c74187c5f6222033cd/) | ⚠️ Unaudited |
| DegenToken | token | base | n/a | [`0x4ed4e8...efefed`](./contracts/base-8453/0x4ed4e862860bed51a9570b96d89af5e1b0efefed/) | ⚠️ Unaudited |
| DVFDepositContract | unknown | arbitrum | n/a | [`0x104177...b28ad0`](./contracts/arbitrum-42161/0x10417734001162ea139e8b044dfe28dbb8b28ad0/) | ⚠️ Unaudited |
| FeeLibV1 | unknown | berachain | n/a | 2 deployments: berachain [`0x808d7c...bc0949`](./contracts/berachain-80094/0x808d7c71ad2ba3fa531b068a2417c63106bc0949/); berachain `0x9d1b16...25b944` | ⚠️ Unaudited |
| FiatTokenProxy | token | arbitrum | n/a | [`0xcbb7c0...ed33bf`](./contracts/arbitrum-42161/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | n/a | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | n/a | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | berachain | n/a | 2 deployments: berachain [`0x549943...1d3241`](./contracts/berachain-80094/0x549943e04f40284185054145c6e4e9568c1d3241/); berachain `0xa272ff...a2d8f9` | ⚠️ Unaudited |
| L2ArbitrumToken | token | arbitrum | n/a | [`0x912ce5...9e6548`](./contracts/arbitrum-42161/0x912ce59144191c1204e64559fe8253a0e49e6548/) | ⚠️ Unaudited |
| NablaToken | token | base | n/a | [`0x01ed85...fd679b`](./contracts/base-8453/0x01ed85d73645523b0d62c7a8e35d03601cfd679b/) | ⚠️ Unaudited |
| OFTTokenERC20 | token | berachain | n/a | [`0x2f6f07...6e7590`](./contracts/berachain-80094/0x2f6f07cdcf3588944bf4c42ac74ff24bf56e7590/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0x2da56a...a7af71`](./contracts/base-8453/0x2da56acb9ea78330f947bd57c54119debda7af71/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0x5db54b...3dd797`](./contracts/arbitrum-42161/0x5db54b55ffd0887bf1634a865db1e7db7a3dd797/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | ⚠️ Unaudited |
| TokenMessaging | token | berachain | n/a | [`0xaf5191...ba2cd6`](./contracts/berachain-80094/0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1313bb...b51d9f`](./contracts/arbitrum-42161/0x1313bbf677e8fda5284f714f9c743a55a8b51d9f/); arbitrum `0x952a6d...300e58` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x29f86a...3f7ca5`](./contracts/arbitrum-42161/0x29f86a78551fac44217a8763a45540027c3f7ca5/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | arbitrum | n/a | [`0xded882...626341`](./contracts/arbitrum-42161/0xded8823234e28f18a824abe4f64fa7863b626341/) | ⚠️ Unaudited |
| WBTCOFT | token | berachain | n/a | [`0x0555e3...0d2b9c`](./contracts/berachain-80094/0x0555e30da8f98308edb960aa94c0db47230d2b9c/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WHYPE9 | unknown | hyperliquid | n/a | [`0x555555...555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (207)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x0d9ce4...279a2e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1056d1...ddb7ea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x11b406...56276c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x15dacd...a6378e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x194f34...a3c516` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1f0f3c...109b59` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1fa1fd...296811` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1fe0bf...cafc9e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x212376...48d0ea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2341ca...ff4b81` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2634ef...8a207d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x283781...eef44c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x28901e...9b2840` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x29403e...0199a1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x29f4af...65022d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2cd52f...6d2363` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x374704...def97d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x378574...5fb560` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x37b524...d57d78` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3ab310...b2110b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3e3ae8...21c8c9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x41cb73...f249aa` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x45a2c9...f8c948` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x45f119...c3aaee` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4e9f70...0d457a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4fbe52...d4e2d3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x503b62...6b4a0a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x57a90b...4fa97e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x59e4c7...98872e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5c2352...3aadd7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5c542c...27b3dd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5e8f29...385c97` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5f4d79...e5cec6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x60bd06...c74366` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6288d7...075b00` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x64e141...75ce98` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x669727...34774e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6a5696...a96e7e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6b1b4a...1444d7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x74de33...3c186e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7a6852...a7ae8a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7bad49...0f23fb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7c9afa...2aea0c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7f5e34...7297b7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8319eb...2fa891` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8426d3...39ad73` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x87e33a...698f9b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x87f4af...d96562` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8c5049...2b20a6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8cea80...5d7f53` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x94ef11...67f759` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x95e4f3...c97f59` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x97d40a...0425ba` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9cd99f...295057` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa16360...730237` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa25a72...7b6620` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa2ab9c...1939ff` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa69eec...722181` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb0adcf...98b832` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb0b504...cc3b7f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb0bb9a...281477` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb230e6...b29853` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb2677f...c78ea3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb5e4c3...3b65e5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xba97b1...990c61` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbb534b...36b9ea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc2490e...887ce5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc85d88...56705d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc94374...2d34bc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xca450a...2a3818` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcb0dea...c5aea8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd98461...9576c9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdae614...099b6e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdc49a9...3bbc38` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdc557e...12ee49` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdc6712...1d9d7c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdca0a2...b3d2e9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xde73e6...aa3c55` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdfc0f7...83ce3d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe3cb38...f52825` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe62b7c...2d426f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe6b08b...c8e3bf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe6e9b6...428b8e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xea5206...2e7fea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf1ae7b...76ea1f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf34170...cb7606` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf346bc...fe352c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf45505...d3338a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfad4f3...3b506b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfbcb7d...9c160f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfc68ee...bd152a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfe0136...36e75f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0706e6...8e8992` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b4105...9ff4c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x123456...9c12eb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x232087...f4d90b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x276d61...197fe3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2966df...c0ff89` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2e56ce...7674f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x44c4b9...e7a96a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4835c7...0ef012` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ec0c3...0995b3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x50841f...892b69` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63c994...b210b1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x65e85e...c0fa5e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6821f0...76f6fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a2f1d...8fcf3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x70f29b...eb939f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x731248...e11f6c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x791fee...6f487b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d970c...1c1983` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x831d18...03f16e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x84bec2...9c494d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8661d1...c42794` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89f57d...5eab6e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x925d24...be5976` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9cae34...c38005` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa087f5...a9333b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa35933...94c905` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa82230...c8c9be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa83a20...b39b85` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaeeca6...a787cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf6072...b35e6b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb11ad7...4cd457` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbfe5d9...abfa21` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcb1f2b...fe8813` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd24d14...e67fff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd739ec...d27aa9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd8f26...67dab0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec74e1...069974` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeef559...b3ef8e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7e21f...d56867` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x058a08...ccd9a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x107330...caa6e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x163ccf...33a973` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1e0987...7451eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1e577c...005849` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x272df8...76a155` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2babb1...6d3b66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x305681...aaa4d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x337b03...68a29a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3aa4b1...a0318c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x411ef7...32bf12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43f986...53608f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x44154d...f0971d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x44f805...82303b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x47eecf...bbe0c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x485a91...d2b603` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4bbc02...89bdd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4cc48f...8af4aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d044d...1dd3c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x504554...90b478` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53a87f...d1afbf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x563a8a...269859` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5862f4...777408` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59d9e1...bd5925` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5e6b5c...4c7164` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x607451...670f8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x68c395...4b8abb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6a482f...569920` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6b6b23...8fb3e3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x71c0af...411d88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7666a2...87c35d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7bcfc8...06d18d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c9afa...2aea0c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x898f11...5fc80e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c5049...2b20a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e74ed...b00d39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa124de...9aa561` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa297ec...319212` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2ab9c...1939ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa59003...3f8eeb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa5b14e...9d07a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2677f...c78ea3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb77388...0599b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc5bc16...e21d0e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc85d88...56705d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc9752a...422a0c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xca8b86...35b8d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcb94ee...6b676b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc5544...284a87` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdb68e1...0373da` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe42bcd...e06f90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe70292...06efeb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7a344...e92c94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9accd...7bb4d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeccd1d...9a4584` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed6623...df3106` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1df59...58264f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf82bfa...b7f185` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfeeaa0...412afb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xffe48f...9e1b45` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x00ded7...87d85a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1f917f...35b9ec` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x42989e...ea0c4b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x68f75f...d24e71` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x6d6190...66e441` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x6da532...0e2440` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x824d8f...4e4cba` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8756fd...64d2a4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x896bde...0b8b5f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x9b5a42...ce43ec` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x9c155c...f8ee2c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x9dc06a...1f2bb6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xba8cc2...fb3282` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe97144...dddae7` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xfa158c...2447f6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Nabla-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Nabla-security-review.pdf) | Pashov Audit Group | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 234 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13545] Nabla-security-review.pdf

Fork inheritance lineage and inherited audits are included when available.
