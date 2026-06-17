# Agentic Audit Brief: ELFi Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 34.2% over 90 days

## Project Overview

- Project: ELFi Protocol (`elfi-protocol`)
- Website: [https://www.elfi.xyz](https://www.elfi.xyz)
- Lifecycle: declining (Tier 0, 81.8% below peak)
- Generated: 2026-06-17T07:00:35.565Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base
- Contract surface: 360 unique implementations (360 raw deployments)
- DeFi Llama TVL: $2,897,797.99
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

ELFi Protocol is a P2Pool decentralized perpetuals and derivatives exchange deployed on Base and Arbitrum One. It supports portfolio margin, multi-asset collateral, ELP liquidity and yield pools, and staking/rewards mechanisms; internal vault and diamond proxy architecture should be treated as implementation details rather than the primary product description.

### Architecture

The Diamond proxy serves as the central access point for user accounts, routing calls to the AccountFacet, while the TradeVault, PortfolioVault, and LpVault interact to manage trading and liquidity. StakeToken likely incentivizes participation across these vaults, and external tokens like USDC (via FiatTokenProxy) are used for deposits and withdrawals.

## Contract Surface Quality

- Indexed contracts: 2470; live-surface contracts included: 360 (359 live, 1 unknown).
- Excluded by liveness: 2108 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 2/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 358
- Unique implementations: 360
- Raw deployments: 360
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FiatTokenV2_2 | token | arbitrum | unit-21351 | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-21350 | [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (358)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x001690...6ef87c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x002b6b...4960e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x00e0f7...8a8ff2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x020650...633cb2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03490b...1eddf3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03b845...dff74e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x04167e...190290` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0446ca...e83353` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x053e31...9d861a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x07da47...d26e46` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08e1bd...f8f20b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x09c8b5...f0dec2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0af33b...1898bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b52e5...1c7f4e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b9234...6f25e0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d1676...dd87a2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0dd509...8fadca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x100745...ec16a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x111603...b093df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x131c28...51f2ca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x143e6e...3120de` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x151def...3cb4b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1597c9...1a4784` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x159cbf...a84d5b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x163971...ed7908` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x17a604...341795` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1a09c4...9ab130` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c3459...f2faac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1cc99d...d242e1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1d7857...8d5d48` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x223f1e...164716` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x24bb47...6744f4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25120c...48f76f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x252e7e...56cc88` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x27a105...3c6c9f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2827da...f29fc0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x28d7d9...ce71d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2be8c1...32f8fc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2d0717...093fab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2f7706...917d84` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2fc877...e4a813` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x30bd49...9f802b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x30e47d...053fb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x32f7b2...8bb101` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x346059...3a2f06` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x348137...30d6e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34de07...bbaeb2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34f4db...23c19a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x387b54...eae7a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x394a38...7131e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x39a9d7...0fcb1d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a2303...0ed7fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b3581...a17cc0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b3bba...dca83a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3cfdfa...c19fa2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x40f477...997513` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x422555...32472a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x42bed0...3249dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x457b20...58ec42` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x46aad5...3dafe1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x472dc1...937595` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4750d0...3496d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ecf83...2cd056` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x50d836...1378aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5172bb...0de966` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x52af2f...558520` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x530eba...c1646b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x549f0d...d8f42c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x55019c...7b95eb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x57bc2a...6b6714` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c0aea...31303c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c91fd...be88e8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5de83d...96f555` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5f975e...61b39e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5f9adc...1b959a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5fe5e4...8774f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6013e4...3032a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x61b81f...760a54` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x62c614...ed45ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x643584...f6d785` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x648608...63449f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x65d125...c80774` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6623e4...f3234b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x66357e...b223dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x694c9c...b51117` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x695948...2b65db` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6e22d2...9aaf18` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x70b3d2...3bc4b3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x70fb4a...d8a0e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71317f...207b87` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71cfa9...e09a36` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7201e6...7bc694` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72f0a1...2d9615` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78030b...1b5108` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x783321...daf9cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x79ab72...17b110` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7abff2...e4b467` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7b9da9...f8e461` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7ecb5d...b5806a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7fb53a...8f3111` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7ff41c...4fe144` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x807369...1d7854` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x809d6f...11b759` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8196b0...72a50c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81e543...624ab7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x841bc7...bf10bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x873b66...ab1afb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8846c0...d30a2d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a3a74...75ccc0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ca1b9...06455f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8d85fe...ab78a9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8dc164...234a0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8deb3c...625003` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8e0e87...d908fc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x90ceb1...cfcab8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x915d4d...0efe51` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x92aa6a...a5b4af` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x92fde1...4579f5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x957e0c...729d50` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x95ce67...39f81a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x993809...66b56e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9955f8...80b437` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c36c6...5d4209` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9cd6b2...d724db` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d8bd3...3a6e24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9feb5f...abf151` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa00a76...c865a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa033a1...39b653` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa05ad1...5cf22c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa08de6...f06bef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3375d...a9cd70` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa40dea...cedfc8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4a82f...8c41e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa53439...295aa0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa57b64...494729` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa5c51b...d233d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa5c781...e5d095` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa8bfc0...603957` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaa0810...736d7e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaae28a...468809` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xabb534...6924b8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac2239...08bc91` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf1a6d...2ec2c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf2735...cc1755` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf7192...744a71` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf8a2c...7e24f8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb08110...566916` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb17ad6...058a2a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb17dba...8df9ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb5d1f4...064dca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb7e5a7...51e4bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb9f486...1f4a59` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xba4424...dbf533` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xba4958...1d9ec7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb0909...c69a2a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbbec17...ce9fd1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc13939...d33a23` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc36728...25d5e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc46650...ff5cb2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc633db...862fce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc72d5e...e66109` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc5ed1...879234` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcef764...d0a9a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcf600b...2244b3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd1c403...202ba6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd209a3...fc5900` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd4041a...da3464` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd4ffa6...77ceed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd51d95...1ebe9e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd894ad...30f571` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd90dd5...3b44bc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdb690d...00adac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdb9cae...b7c62a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdcad01...27aadb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe25ebd...81e213` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe29c5c...b1efb4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe61e06...6b4ed8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe69a0d...cc5094` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb96a0...16c622` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec2b4d...c41572` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xecc817...463c68` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xef3ae3...62378e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xefa935...3d2639` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf0a38f...bf1e38` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf0cac0...0233fa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf14012...185236` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf18ea7...10b995` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf22f5e...8ac465` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf5f2d1...8ea737` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf8040b...1e99b6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf8d8df...5cc58d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf9bf01...abdc85` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb2bd4...8cda2d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfcc1f9...ab011d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfcf84a...73c091` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdd0e5...70f3c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfddaf5...37b61e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0272b7...ce064a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0478bb...c24bec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x055629...05762a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x081ac5...473e6b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0a5521...1b9ffc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ad7cb...648b85` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0de32f...48c64f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f12b5...8875e4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f95b5...36bd7b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0fb58f...169761` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10aca9...85f3bc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x129bb2...7f3836` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x13dea4...8f2bae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x16f44a...682531` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x175303...4deb96` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1aedc7...532c32` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b4dfe...e6883d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1d56c7...3c3107` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1dace9...0b0ea4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1e8157...17db4e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x204c35...f485af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x23a127...5763ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x23c93e...86ff88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x259916...ca106a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x27053c...3e7378` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2a0c00...f68746` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d3ac5...bc5316` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d9e31...841277` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2e85d3...d62615` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2edf13...05af9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ee231...117bf1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f63e0...0b3b3f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3033b4...8c95d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3239c4...6a3664` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3266d6...1ba061` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x362f59...2ef666` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x385dc0...5f5c0e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3c3e06...62f6f2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3dd539...7d2a02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3edd78...c9568e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x401468...ee6aad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43a46a...4d010c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4400b3...ce6d6a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x450452...25496a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x468c3c...3d360e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x477d09...240fb2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x47ca3f...78b0d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x493a6a...55adae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x495ee9...18e381` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4a0c16...3c7b53` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4b3fb9...29e9bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4b745a...26776d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d45d3...cc5c8a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4dba3d...b87146` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f78cf...bb0a95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50bd55...6e6200` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x51d141...d175ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5271b8...ea040d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x527875...a298e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x538fe0...61b34c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x544aec...3e1a59` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x553521...1c0524` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x55f310...4202b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5702c4...fb77b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5772c6...f18d13` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5827da...ca65b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5a9008...63d6ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5ed688...7cb861` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5fa5c5...e4a183` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5faa4d...26fbab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61544a...57a475` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x615d82...def7b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61f656...67923c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x64cf44...0cb8c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x64ef18...c61b86` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6616d1...4388bc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x66d920...3fdc94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6729bb...8853f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x68d934...35d1c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6cb392...096e46` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6f6060...9e0e0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x75e6b4...5a686b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x768997...f76423` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77a5ea...9c55d4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77c01b...a6b552` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x789395...075029` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7aa18d...ac16d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7d188a...1242c3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7df460...3b4ba7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7e985e...166eeb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7fade7...0975b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x80d84f...2fbcf7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8422ce...3a9f23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84c01d...2ea9a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x869694...bf5b67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x88fbde...236ac1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8911e2...5acdc2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8f0f23...457703` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8f1369...f5c34a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x923ca9...b4281f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x935fef...a0306f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9812a9...29b365` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d8283...3e4879` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f0c82...c4f537` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9fe47f...152fe5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa0a19b...e5a103` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa1f4d2...de1204` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6b79b...8019b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa7b215...2ac5cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa800de...82cf6a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa924f9...e8e167` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa96cec...2a31de` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9fa9d...73a7ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xab8a99...374c81` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xab9352...8a8ca4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae4b4b...45ef1c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb1343e...418620` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb176e9...908822` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2322a...6b8043` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb27905...0e1fac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb31701...2e646d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb86a57...cce622` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbaf01a...79b98d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb6c39...c35dd2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb98b9...aea2d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbc5ab0...dc7337` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbc65c1...a3d075` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbce3da...87766e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf4d40...cbfcd1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf8aff...dcd94b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbfd07e...801c49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbff471...3a2596` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc15384...7e3081` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc21373...a0bedd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc3070c...7bf14f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc5d36d...5fe233` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc60a2e...ad1627` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc68091...f481cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc698ef...a2e7a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6afb7...daceea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6ecda...612fcb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc7a711...4cc36e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc7d25e...a1f151` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcfe5f8...deefeb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd2444e...1aac70` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd38bc0...ca2f15` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd87467...ad6e3a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe509e9...b26e5a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe806b2...34fce8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe85e25...52d585` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe8cced...725177` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebaf6b...129757` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf15930...1f49d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf2b577...530f7e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf42828...cc3843` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf435ed...cc8be3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf4415d...7f3ad2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf5427c...190ab3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf5c40b...8433ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7905a...bb0f6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb4273...8581f6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://www.elfi.xyz/Sherlock_Elfi_Audit_Report.pdf) | Sherlock | Contest | 2024-07 | aging | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 336 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=55

Zero-match audit list:

- [2765] DL audit link

Fork inheritance lineage and inherited audits are included when available.
