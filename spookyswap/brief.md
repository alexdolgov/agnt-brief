# Agentic Audit Brief: SpookySwap

⚠️ Lifecycle status: DEAD - TVL changed 13.7% over 90 days

## Project Overview

- Project: SpookySwap (`spookyswap`)
- Website: [https://spooky.fi](https://spooky.fi)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-24T23:47:56.909Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: fantom, sonic
- Contract surface: 150 unique implementations (254 raw deployments)
- DeFi Llama TVL: $1,386,988.00
- On-chain TVL (included contracts): $171,994.45
- TVL by chain: Sonic $171,994.45

## Project Description

SpookySwap is a decentralized exchange (DEX) and DeFi protocol operating on Fantom and Sonic chains. It provides automated market making (AMM) via Uniswap V2 and V3 forks, token swaps, liquidity provision, yield farming, and a launchpad. The protocol also includes bridging, perpetuals, and various token adapters for cross-chain and synthetic asset support.

### Architecture

The Sonic Mainnet family provides the core DEX functionality, relying on token contracts from the Single Token Addresses family for trading pairs. LP tokens from Spooky LP Pair Addresses represent liquidity positions in the AMM pools. The Fantom Opera family likely contains older or parallel deployments sharing similar token and pool structures.

## Audit Coverage Summary

- Verified implementations audited: 0/52 (0.0%)
- Verified + Unaudited implementations: 50
- Verified by bytecode match: 2
- Unverified implementations: 98
- Unique implementations: 150
- Raw deployments: 254
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $171,994.45
- Latest audit: 2021-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $171,994.45 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (50)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UniswapV3Staker | core_logic | sonic | [`0x160f55...217c23`](./contracts/sonic-146/0x160f55276713f356d8409910c3cfa1da23217c23/) | ⚠️ Unaudited |
| BooMirrorWorld | unknown | sonic | [`0xa95ea1...f5d605`](./contracts/sonic-146/0xa95ea1cfabccf0e9eb94b646cefe9ed71ff5d605/) | ⚠️ Unaudited |
| BooOFT | unknown | sonic | 2 deployments: sonic [`0x7a0c53...6cb384`](./contracts/sonic-146/0x7a0c53f7eb34c5bc8b01691723669ada9d6cb384/); sonic `0xb8fce7...fa4156` | ⚠️ Unaudited |
| BrewBooV3 | unknown | sonic | 3 deployments: sonic [`0x79710d...c8b179`](./contracts/sonic-146/0x79710d58c3600401fe21e799ff97f37100c8b179/); sonic `0x84a190...6b09b0`; sonic `0xc3815b...ef00ea` | ⚠️ Unaudited |
| Bridge | operational_periphery | sonic | 8 deployments: sonic [`0x0b3fe0...f2107c`](./contracts/sonic-146/0x0b3fe0c10c050270a9bc34271987989b6cf2107c/); sonic `0x0c3443...b4322d`; sonic `0x826c84...171d8e`; sonic `0x9e70d1...2b56cd`; sonic `0x9ef762...c895b3`; sonic `0xb90371...336387`; sonic `0xf06a64...2cd698`; sonic `0xf77146...a3e079` | ⚠️ Unaudited |
| CircleTokenAdapter | adapter | sonic | 6 deployments: sonic [`0x25c049...e400f4`](./contracts/sonic-146/0x25c049cadb9bb7cea794dba3b58dfdb1ece400f4/); sonic `0x391071...79c7e2`; sonic `0x6f0444...e28d6a`; sonic `0xba2b70...b0e563`; sonic `0xe6dcd5...c3bc8a`; sonic `0xfac12d...33c59c` | ⚠️ Unaudited |
| CircleTokenOwner | token | sonic | [`0x11c224...322545`](./contracts/sonic-146/0x11c224fe2be939718eccc560c4887ef05c322545/) | ⚠️ Unaudited |
| ConfigRegistry | registry | sonic | 2 deployments: sonic [`0x33e1cc...956b00`](./contracts/sonic-146/0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00/); sonic `0xffd7c8...b670f3` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | sonic | 2 deployments: sonic [`0x4c0b5b...9e9ec7`](./contracts/sonic-146/0x4c0b5bfd9b7a970e24ce5d62af510258c99e9ec7/); sonic `0x65f235...7c3477` | ⚠️ Unaudited |
| FeeSender | unknown | sonic | [`0x2bb0bd...748e0b`](./contracts/sonic-146/0x2bb0bda25fbf103176337551729741b4d5748e0b/) | ⚠️ Unaudited |
| FiatTokenProxy | token | sonic | 2 deployments: sonic [`0x3fd4ea...1ee783`](./contracts/sonic-146/0x3fd4eaa6f9b0b46bb8a2dbe8c646524e141ee783/); sonic `0x7657f0...61fe35` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | sonic | 8 deployments: sonic [`0x229e64...d92dcc`](./contracts/sonic-146/0x229e64252e2901a424600e22c28a722404d92dcc/); sonic `0x23af48...544c1a`; sonic `0x29219d...038894`; sonic `0x35d511...186535`; sonic `0x767628...9a0801`; sonic `0xb070ad...47db87`; sonic `0xde95b3...9e09b3`; sonic `0xe715cb...b17e57` | ⚠️ Unaudited |
| LeverageFiller | unknown | sonic | 2 deployments: sonic [`0x053714...83f16a`](./contracts/sonic-146/0x053714a436ea716e14b3430f2ee8e2488c83f16a/); sonic `0xfe4a47...b31e7d` | ⚠️ Unaudited |
| Liquidator | operational_periphery | sonic | 2 deployments: sonic [`0x332a62...f9a926`](./contracts/sonic-146/0x332a6211b594fefed5a5d779e51dacd145f9a926/); sonic `0xd8c562...558402` | ⚠️ Unaudited |
| LongTailIRM | unknown | sonic | [`0x12f407...10305a`](./contracts/sonic-146/0x12f407bfdbbe56ab19ecd389992f0f408810305a/) | ⚠️ Unaudited |
| MajorIRM | unknown | sonic | [`0x18fad5...5505fa`](./contracts/sonic-146/0x18fad5b72113497e1c92570b6f517328d05505fa/) | ⚠️ Unaudited |
| MasterMinter | unknown | sonic | 7 deployments: sonic [`0x3c05fa...4996ed`](./contracts/sonic-146/0x3c05fae3805e4dbdec04e56adc5ee493194996ed/); sonic `0x589cfd...94bec7`; sonic `0x7bc1cf...3ba48e`; sonic `0xad9ed0...570393`; sonic `0xafcb4b...2002d0`; sonic `0xbe9f04...63b954`; sonic `0xc787a9...4f8be1` | ⚠️ Unaudited |
| MessageBus | operational_periphery | sonic | 4 deployments: sonic [`0x4af339...fa0885`](./contracts/sonic-146/0x4af3397fb17c35ce31bc6e006d60c60136fa0885/); sonic `0x63c379...f8c654`; sonic `0xa71610...955006`; sonic `0xb5b371...925308` | ⚠️ Unaudited |
| MPTProofVerifier | periphery | sonic | 4 deployments: sonic [`0x6aba65...e3036a`](./contracts/sonic-146/0x6aba65dc38e6ae9ed0d95eb67bf1b524c1e3036a/); sonic `0x838e5d...5f8c3c`; sonic `0xa13fc0...4da6d0`; sonic `0xd2f1e9...5d29a9` | ⚠️ Unaudited |
| NativeTokenAdapter | adapter | sonic | 2 deployments: sonic [`0x4c5683...ad6c6c`](./contracts/sonic-146/0x4c5683a9ede3c8b4fb5ad2e980bbf88652ad6c6c/); sonic `0x6d9d62...e91a1e` | ⚠️ Unaudited |
| NFTDescriptor | token | sonic | [`0xa5ae26...046856`](./contracts/sonic-146/0xa5ae26ac861375a6830caf1443ed385298046856/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | 2 deployments: sonic [`0x839216...db3b55`](./contracts/sonic-146/0x8392166e9e45fb568d84c9ab3cd7566977db3b55/); sonic `0xf807ac...b17fac` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | sonic | [`0x7d0776...53d32d`](./contracts/sonic-146/0x7d0776b117c87f4bc174870ec19719972853d32d/) | ⚠️ Unaudited |
| OracleRouterChainlink | operational_periphery | sonic | [`0xfb0497...5a32e8`](./contracts/sonic-146/0xfb04979bda6546f114afcff2a78d35446d5a32e8/) | ⚠️ Unaudited |
| Permit2 | unknown | sonic | [`0x981ef1...162723`](./contracts/sonic-146/0x981ef1f1644715ae797434de4c0aad16e6162723/) | ⚠️ Unaudited |
| PositionsManager | governance | sonic | 2 deployments: sonic [`0x31b57e...749a4b`](./contracts/sonic-146/0x31b57e9dadc3227400bf1742fc9692ebb3749a4b/); sonic `0x31b68b...ef0303` | ⚠️ Unaudited |
| PrizeToken | token | sonic | 2 deployments: sonic [`0x40dcf9...d267e3`](./contracts/sonic-146/0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3/); sonic `0x78d976...d94c69` | ⚠️ Unaudited |
| ProxyAdmin | governance | sonic | [`0x90409d...874be3`](./contracts/sonic-146/0x90409d5b57e77ca394167b781cfc79a2a0874be3/) | ⚠️ Unaudited |
| Quoter | periphery | sonic | 3 deployments: sonic [`0x593856...d1aa68`](./contracts/sonic-146/0x593856bbfd6aaf0b714277c0bf06307900d1aa68/); sonic `0x746c97...7f78e1`; sonic `0xddafeb...9c6a47` | ⚠️ Unaudited |
| QuoterV2 | periphery | sonic | 3 deployments: sonic [`0x3f2026...388234`](./contracts/sonic-146/0x3f2026cae76b987c4002e62b9df70988b4388234/); sonic `0x6e70f8...b525bc`; sonic `0xd71a77...b4b6b3` | ⚠️ Unaudited |
| RfqEngine | unknown | sonic | [`0x201169...13e95b`](./contracts/sonic-146/0x20116919299625b1b3e474d5a594a5b4ed13e95b/) | ⚠️ Unaudited |
| SignatureChecker | unknown | sonic | 6 deployments: sonic [`0x017980...e6bf1b`](./contracts/sonic-146/0x01798076f71e0e48c37b670af7752d74d6e6bf1b/); sonic `0x26c060...7d4e81`; sonic `0x5d0311...68f887`; sonic `0x6edf3f...b6d820`; sonic `0xb4a197...2dd7cf`; sonic `0xb90f6a...b502fe` | ⚠️ Unaudited |
| SpookyLaunchpad | unknown | sonic | [`0xb52c0e...850c31`](./contracts/sonic-146/0xb52c0eb864722c313d2c084c6ffa2a6e46850c31/) | ⚠️ Unaudited |
| StableIRM | unknown | sonic | [`0x4bd77b...edefd5`](./contracts/sonic-146/0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5/) | ⚠️ Unaudited |
| StateOracle | operational_periphery | sonic | 4 deployments: sonic [`0x6494ce...66d684`](./contracts/sonic-146/0x6494ce4a3f9b3b765fbd07aa7ec2d3108e66d684/); sonic `0x836664...28f2c3`; sonic `0xad9f40...e150b9`; sonic `0xb1703a...9c5df9` | ⚠️ Unaudited |
| Storage | unknown | sonic | [`0x4fec0c...135d73`](./contracts/sonic-146/0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | sonic | 5 deployments: sonic [`0x0c2bc0...abdd87`](./contracts/sonic-146/0x0c2bc01d435cfeb2dc6ad7cec0e473e2dbabdd87/); sonic `0xb75efb...270445`; sonic `0xb8d867...c54d31`; sonic `0xbece4e...6bea4e`; sonic `0xcbdeca...f74362` | ⚠️ Unaudited |
| TetherTokenAdapter | adapter | sonic | 2 deployments: sonic [`0x188042...53d4e4`](./contracts/sonic-146/0x1880425307124ce875aac3e9eb47b5a87453d4e4/); sonic `0x667e06...aa304a` | ⚠️ Unaudited |
| TetherTokenV2 | token | sonic | 2 deployments: sonic [`0x604782...a5eaf9`](./contracts/sonic-146/0x6047828dc181963ba44974801ff68e538da5eaf9/); sonic `0xc80268...252fad` | ⚠️ Unaudited |
| TickLens | periphery | sonic | 2 deployments: sonic [`0x71d0f7...ac1bac`](./contracts/sonic-146/0x71d0f7b02e76c773693ade6f521cfc7becac1bac/); sonic `0x7b97e8...554449` | ⚠️ Unaudited |
| TicTacToe | unknown | sonic | 2 deployments: sonic [`0x882171...1dcb47`](./contracts/sonic-146/0x88217164e88201227c76a888d18ba507cd1dcb47/); sonic `0xaa0944...e02c14` | ⚠️ Unaudited |
| TokenPairs | registry | sonic | 6 deployments: sonic [`0x1109f1...5c81db`](./contracts/sonic-146/0x1109f1a00fbe5c44555a543540bb2db2c15c81db/); sonic `0x134e4c...00ba94`; sonic `0x36535d...f9cd43`; sonic `0x9171ac...f13d34`; sonic `0xabf0c9...5ebf25`; sonic `0xe34e68...c2d315` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sonic | 5 deployments: sonic [`0x62a572...dcd70a`](./contracts/sonic-146/0x62a572120530a6cbbcafb7c6fb8c94fbdedcd70a/); sonic `0x89c312...11df5e`; sonic `0xc1883f...992748`; sonic `0xd89992...4de721`; sonic `0xfb7040...a993f8` | ⚠️ Unaudited |
| UniswapV2Factory | registry | sonic | [`0xee4bc4...76f741`](./contracts/sonic-146/0xee4bc42157cf65291ba2fe839ae127e3cc76f741/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | sonic | [`0xa6ad18...b94883`](./contracts/sonic-146/0xa6ad18c2ac47803e193f75c3677b14bf19b94883/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | sonic | [`0x3d91b7...69c8ad`](./contracts/sonic-146/0x3d91b700252e0e3ee7805d12e048a988ab69c8ad/) | ⚠️ Unaudited |
| UniversalRouter | adapter | sonic | 2 deployments: sonic [`0x55d10e...4ebef8`](./contracts/sonic-146/0x55d10e597275d5e572cd0ecf85a0c944964ebef8/); sonic `0x8762fc...3acd97` | ⚠️ Unaudited |
| UpdateManager | governance | sonic | 7 deployments: sonic [`0x107140...7ee6d4`](./contracts/sonic-146/0x1071405a4736535c545580064039a235827ee6d4/); sonic `0x1d3c99...176bb7`; sonic `0x5d3850...d3cf2b`; sonic `0x7160ec...e4ee53`; sonic `0x9a59b2...6f3b01`; sonic `0xa432cf...20187a`; sonic `0xb63f4e...d5f0d3` | ⚠️ Unaudited |
| V3Migrator | periphery | sonic | 3 deployments: sonic [`0x865c43...ab92fa`](./contracts/sonic-146/0x865c434b5c4d2296776352da5ce72feaaaab92fa/); sonic `0x9e5b69...799f80`; sonic `0xc86bd0...e8c191` | ⚠️ Unaudited |
| WrappedSonic | unknown | sonic | [`0x039e2f...94ad38`](./contracts/sonic-146/0x039e2fb66102314ce7b64ce5ce3e5183bc94ad38/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MintedERC20 | token | sonic | 21 deployments: sonic [`0x0fdbce...4be3fd`](./contracts/sonic-146/0x0fdbce271bea0d9819034cd09021e0bbe94be3fd/); sonic `0x1a08d5...b336e6`; sonic `0x2fb960...e2eea1`; sonic `0x309c92...79ebc7`; sonic `0x48540d...6fc335`; sonic `0x50c42d...f2634b`; sonic `0x53f753...81e698`; sonic `0x616478...8f6194`; sonic `0x6c7d5e...f354f9`; sonic `0x7cb451...e8edb3`; sonic `0x7fff4c...ccd270`; sonic `0x858657...8ce686`; sonic `0x8f1cbc...c6544c`; sonic `0x9605cc...abf386`; sonic `0x9cacb5...7e8c6b`; sonic `0xa3b9ec...52ce0b`; sonic `0xb026e4...8269fd`; sonic `0xb5f0ed...186fac`; sonic `0xc6915d...38030c`; sonic `0xf1ef7d...71a74b`; sonic `0xffe007...b864c8` | ⚠️ Unaudited (bytecode match) |
| ValidatorsRegistry | registry | sonic | 4 deployments: sonic [`0x12727d...d3f447`](./contracts/sonic-146/0x12727d4169a42a9b5e3ecb11a6d2c95553d3f447/); sonic `0x78f6a7...7bb2e9`; sonic `0x9943af...b4e674`; sonic `0xbcba1f...ae28d9` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (98)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | sonic | `0x0ae71c...26f17c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x0df628...47174f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1a2dd1...7a0cc1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1fac89...026f0a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x352866...b4c0e7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x3665a6...462a21` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x3d9cd8...1938c3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x3faf5b...5a4876` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x4a5f9a...148568` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5f9857...d9f3e8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x63ad1a...a31527` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x643c5b...73d55f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x6697ee...e0e324` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x6a8c15...6c599c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x70d1f6...ad90ea` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x775525...81f835` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x7779f5...313a11` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x836b8c...c6aa4f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x8482eb...2a5f7f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x86aa8e...6a1084` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x8d47c2...2ab93c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x910afa...d3caa5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x912060...1335df` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x94e848...74904f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x9522ba...d887c8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x97bc7d...6f0b0d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x9d0d2c...18a910` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xaecac5...3ca4b4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xb7d1d2...589533` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xbab4a1...800310` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc3b668...dc6d31` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc57afd...56e6ce` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc6b9df...8e2403` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xcc96a3...31020e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe607f5...380f5a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe85df5...7ef797` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xfb9114...84079a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xfbbb87...447b28` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x04068d...5d5b75` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x049d68...3a3c7a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x06d173...cafcb7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x0845c0...b6b7df` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x08f6fe...33e19b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x157f91...11d9b9` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x165672...27059e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x1c9466...982022` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x1e4f97...19c68b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x21be37...1a4c83` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x29b0da...c0ec69` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x2b4c76...7fc75c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x30872e...c09086` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x321162...051b11` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x3cceb4...8d7b27` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x40f70b...38adf8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x46e762...76c6c5` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x56ee92...1e3adc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x5965e5...047410` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x5c021d...e375b4` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x5dc784...8ee34b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x623ee4...13021d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x627524...b671fd` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x657a18...bdcbc6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x6a07a7...3a993b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x6f86e6...456efc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x74b238...58c76d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x753fbc...87dfc9` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x7928a2...e5c3e6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x82f0b8...6829c1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x838c01...04ecb1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x841fad...c7effe` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x89d9bc...c2fd29` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x8d11ec...8abf3e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x91b39d...f2e8cf` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x956de1...005820` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x9c04f7...f79e68` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xa48d95...de7598` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xae75a4...4477cc` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xb01e84...f7159d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xb3654d...4fbdc8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xb39d21...33d6c2` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xb471ac...96c93b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xb77b22...dcb934` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xb9507f...504a92` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xbaa835...6e554c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xbf4d61...e2eb4c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xd0660c...8157f1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xd6070a...79d960` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xd67de0...850454` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xddcb3f...b34239` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xe120ff...66a428` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xebf374...ff2bf6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xec7178...8a7a58` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xf07022...5ab577` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xf16e81...b87df9` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xf3582d...60a5fd` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xf84e31...b443c3` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xfd0ab5...5c0794` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xfdb9ab...2c3ee3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/spookyswap) | CertiK | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0xa95ea1...f5d605`](./contracts/sonic-146/0xa95ea1cfabccf0e9eb94b646cefe9ed71ff5d605/) | BooMirrorWorld | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7a0c53...6cb384`](./contracts/sonic-146/0x7a0c53f7eb34c5bc8b01691723669ada9d6cb384/) | BooOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x79710d...c8b179`](./contracts/sonic-146/0x79710d58c3600401fe21e799ff97f37100c8b179/) | BrewBooV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0b3fe0...f2107c`](./contracts/sonic-146/0x0b3fe0c10c050270a9bc34271987989b6cf2107c/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x33e1cc...956b00`](./contracts/sonic-146/0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00/) | ConfigRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2bb0bd...748e0b`](./contracts/sonic-146/0x2bb0bda25fbf103176337551729741b4d5748e0b/) | FeeSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x12f407...10305a`](./contracts/sonic-146/0x12f407bfdbbe56ab19ecd389992f0f408810305a/) | LongTailIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x18fad5...5505fa`](./contracts/sonic-146/0x18fad5b72113497e1c92570b6f517328d05505fa/) | MajorIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6aba65...e3036a`](./contracts/sonic-146/0x6aba65dc38e6ae9ed0d95eb67bf1b524c1e3036a/) | MPTProofVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa5ae26...046856`](./contracts/sonic-146/0xa5ae26ac861375a6830caf1443ed385298046856/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x839216...db3b55`](./contracts/sonic-146/0x8392166e9e45fb568d84c9ab3cd7566977db3b55/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7d0776...53d32d`](./contracts/sonic-146/0x7d0776b117c87f4bc174870ec19719972853d32d/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x31b57e...749a4b`](./contracts/sonic-146/0x31b57e9dadc3227400bf1742fc9692ebb3749a4b/) | PositionsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x40dcf9...d267e3`](./contracts/sonic-146/0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3/) | PrizeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x201169...13e95b`](./contracts/sonic-146/0x20116919299625b1b3e474d5a594a5b4ed13e95b/) | RfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb52c0e...850c31`](./contracts/sonic-146/0xb52c0eb864722c313d2c084c6ffa2a6e46850c31/) | SpookyLaunchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4bd77b...edefd5`](./contracts/sonic-146/0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5/) | StableIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6494ce...66d684`](./contracts/sonic-146/0x6494ce4a3f9b3b765fbd07aa7ec2d3108e66d684/) | StateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4fec0c...135d73`](./contracts/sonic-146/0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73/) | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x882171...1dcb47`](./contracts/sonic-146/0x88217164e88201227c76a888d18ba507cd1dcb47/) | TicTacToe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x107140...7ee6d4`](./contracts/sonic-146/0x1071405a4736535c545580064039a235827ee6d4/) | UpdateManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x865c43...ab92fa`](./contracts/sonic-146/0x865c434b5c4d2296776352da5ce72feaaaab92fa/) | V3Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x12727d...d3f447`](./contracts/sonic-146/0x12727d4169a42a9b5e3ecb11a6d2c95553d3f447/) | ValidatorsRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x039e2f...94ad38`](./contracts/sonic-146/0x039e2fb66102314ce7b64ce5ce3e5183bc94ad38/) | WrappedSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 13 |
| standard_library | 9 |
| needs_review | 77 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3096] DL audit link

Fork inheritance lineage and inherited audits are included when available.
