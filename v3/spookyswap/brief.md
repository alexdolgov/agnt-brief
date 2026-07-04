# Agentic Audit Brief: SpookySwap

## Project Overview

- Project: SpookySwap (`spookyswap`)
- Website: [https://spooky.fi](https://spooky.fi)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:56.497Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: fantom, sonic
- Contract surface: 94 unique implementations (216 raw deployments)
- DeFi Llama TVL: $848,278.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Interface. Structurally: 75 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 22 common project-authored base contract(s) (hedgerpartybv3, hedgerpartybv2, hedgerpartybv1). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 304; live-surface contracts included: 195 (87 live, 108 unknown).
- Excluded by liveness: 109 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/48 (0.0%)
- Deployed-live implementations: 48 of 94 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/48
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 46
- Unique implementations: 94
- Raw deployments: 216
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BooMirrorWorld | unknown | sonic | n/a | [`0xa95ea1...f5d605`](./contracts/sonic-146/0xa95ea1cfabccf0e9eb94b646cefe9ed71ff5d605/) | ⚠️ Unaudited |
| BooOFT | unknown | sonic | n/a | [`0x7a0c53...6cb384`](./contracts/sonic-146/0x7a0c53f7eb34c5bc8b01691723669ada9d6cb384/) | ⚠️ Unaudited |
| Bridge | unknown | sonic | n/a | 2 deployments: sonic [`0x0c3443...b4322d`](./contracts/sonic-146/0x0c34438efe0e13ad2a64e9ced14bf6bb58b4322d/); sonic `0x9ef762...c895b3` | ⚠️ Unaudited |
| Bridge | unknown | sonic | n/a | 2 deployments: sonic [`0x826c84...171d8e`](./contracts/sonic-146/0x826c8465b6e6a0ca6454cc15703b60101f171d8e/); sonic `0xf77146...a3e079` | ⚠️ Unaudited |
| Bridge | unknown | sonic | n/a | 2 deployments: sonic [`0x9e70d1...2b56cd`](./contracts/sonic-146/0x9e70d16f16bbb97d1f1d5dab9fdb8e071f2b56cd/); sonic `0xf06a64...2cd698` | ⚠️ Unaudited |
| ConfigRegistry | unknown | sonic | n/a | 2 deployments: sonic [`0x33e1cc...956b00`](./contracts/sonic-146/0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00/); sonic `0xffd7c8...b670f3` | ⚠️ Unaudited |
| Diamond | unknown | sonic | n/a | [`0x803de3...7a72e3`](./contracts/sonic-146/0x803de354cbd853d9ae3bc58131a5d538de7a72e3/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sonic | n/a | 2 deployments: sonic [`0x4c0b5b...9e9ec7`](./contracts/sonic-146/0x4c0b5bfd9b7a970e24ce5d62af510258c99e9ec7/); sonic `0x910afa...d3caa5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sonic | n/a | 2 deployments: sonic [`0x5f9857...d9f3e8`](./contracts/sonic-146/0x5f985705a9ed0cd2561c8d69e77b66ce99d9f3e8/); sonic `0x65f235...7c3477` | ⚠️ Unaudited |
| HedgerPartyBV7 | unknown | sonic | n/a | 4 deployments: sonic [`0x3844de...59784b`](./contracts/sonic-146/0x3844ded07a515d7d18073538d553d298d259784b/); sonic `0x7d3877...0825d0`; sonic `0x8141c1...999b12`; sonic `0xf25f5a...48ae4c` | ⚠️ Unaudited |
| LeverageFiller | unknown | sonic | n/a | 2 deployments: sonic [`0x053714...83f16a`](./contracts/sonic-146/0x053714a436ea716e14b3430f2ee8e2488c83f16a/); sonic `0xfe4a47...b31e7d` | ⚠️ Unaudited |
| Liquidator | unknown | sonic | n/a | 2 deployments: sonic [`0x332a62...f9a926`](./contracts/sonic-146/0x332a6211b594fefed5a5d779e51dacd145f9a926/); sonic `0xd8c562...558402` | ⚠️ Unaudited |
| LongTailIRM | unknown | sonic | n/a | [`0x12f407...10305a`](./contracts/sonic-146/0x12f407bfdbbe56ab19ecd389992f0f408810305a/) | ⚠️ Unaudited |
| MajorIRM | unknown | sonic | n/a | [`0x18fad5...5505fa`](./contracts/sonic-146/0x18fad5b72113497e1c92570b6f517328d05505fa/) | ⚠️ Unaudited |
| MintedERC20 | unknown | sonic | n/a | 14 deployments: sonic [`0x0fdbce...4be3fd`](./contracts/sonic-146/0x0fdbce271bea0d9819034cd09021e0bbe94be3fd/); sonic `0x2fb960...e2eea1`; sonic `0x48540d...6fc335`; sonic `0x53f753...81e698`; sonic `0x616478...8f6194`; sonic `0x6c7d5e...f354f9`; sonic `0x7cb451...e8edb3`; sonic `0x7fff4c...ccd270`; sonic `0x8f1cbc...c6544c`; sonic `0x9cacb5...7e8c6b`; sonic `0xb026e4...8269fd`; sonic `0xb5f0ed...186fac`; sonic `0xc6915d...38030c`; sonic `0xf1ef7d...71a74b` | ⚠️ Unaudited |
| MintedERC20 | token | sonic | n/a | 2 deployments: sonic [`0x50c42d...f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/); sonic `0x9605cc...abf386` | ⚠️ Unaudited |
| MultiAccount | unknown | sonic | n/a | 2 deployments: sonic [`0x4bd822...1310d8`](./contracts/sonic-146/0x4bd822749416543da46eee10fc9e7f173c1310d8/); sonic `0x8a8cf9...d4595c` | ⚠️ Unaudited |
| MultiAccountV2 | unknown | sonic | n/a | 2 deployments: sonic [`0x330043...f09a70`](./contracts/sonic-146/0x3300433ca6832fc095506449fc1ab0bf3bf09a70/); sonic `0xd90aca...6cdd17` | ⚠️ Unaudited |
| NativeTokenAdapter | unknown | sonic | n/a | 2 deployments: sonic [`0x4c5683...ad6c6c`](./contracts/sonic-146/0x4c5683a9ede3c8b4fb5ad2e980bbf88652ad6c6c/); sonic `0x6d9d62...e91a1e` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | n/a | [`0xf807ac...b17fac`](./contracts/sonic-146/0xf807aca27b1550fe778fd4e7013bb57480b17fac/) | ⚠️ Unaudited |
| OracleRouterChainlink | operational_periphery | sonic | n/a | [`0xfb0497...5a32e8`](./contracts/sonic-146/0xfb04979bda6546f114afcff2a78d35446d5a32e8/) | ⚠️ Unaudited |
| Permit2 | unknown | sonic | n/a | [`0x981ef1...162723`](./contracts/sonic-146/0x981ef1f1644715ae797434de4c0aad16e6162723/) | ⚠️ Unaudited |
| PositionsManager | unknown | sonic | n/a | 2 deployments: sonic [`0x31b57e...749a4b`](./contracts/sonic-146/0x31b57e9dadc3227400bf1742fc9692ebb3749a4b/); sonic `0x31b68b...ef0303` | ⚠️ Unaudited |
| PrizeToken | unknown | sonic | n/a | 2 deployments: sonic [`0x40dcf9...d267e3`](./contracts/sonic-146/0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3/); sonic `0x78d976...d94c69` | ⚠️ Unaudited |
| ProxyAdmin | unknown | sonic | n/a | 16 deployments: sonic [`0x3e09db...5849d3`](./contracts/sonic-146/0x3e09dbfe0f6e82b8448a11fb082d44cd575849d3/); sonic `0x3e864a...ace120`; sonic `0x6255ab...8b8909`; sonic `0x6b44c8...09716e`; sonic `0x84da34...f3f191`; sonic `0x87fc46...536eb7`; sonic `0x8f3718...ea5787`; sonic `0x90409d...874be3`; sonic `0x9303e1...75802c`; sonic `0xae16f9...c7f16a`; sonic `0xb6e3b4...8d62db`; sonic `0xccde63...d37f77`; sonic `0xd7a652...8c7133`; sonic `0xdb91d2...604426`; sonic `0xfc3f16...ee4864`; sonic `0xfc4ac3...dc6873` | ⚠️ Unaudited |
| RfqEngine | unknown | sonic | n/a | [`0x201169...13e95b`](./contracts/sonic-146/0x20116919299625b1b3e474d5a594a5b4ed13e95b/) | ⚠️ Unaudited |
| SpookyLaunchpad | unknown | sonic | n/a | [`0xb52c0e...850c31`](./contracts/sonic-146/0xb52c0eb864722c313d2c084c6ffa2a6e46850c31/) | ⚠️ Unaudited |
| StableIRM | unknown | sonic | n/a | [`0x4bd77b...edefd5`](./contracts/sonic-146/0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5/) | ⚠️ Unaudited |
| Storage | unknown | sonic | n/a | [`0x4fec0c...135d73`](./contracts/sonic-146/0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | sonic | n/a | 5 deployments: sonic [`0x0c2bc0...abdd87`](./contracts/sonic-146/0x0c2bc01d435cfeb2dc6ad7cec0e473e2dbabdd87/); sonic `0xb75efb...270445`; sonic `0xb8d867...c54d31`; sonic `0xbece4e...6bea4e`; sonic `0xcbdeca...f74362` | ⚠️ Unaudited |
| SymmCoreCaller | unknown | sonic | n/a | 2 deployments: sonic [`0x9fa492...c9d69d`](./contracts/sonic-146/0x9fa4923601b951d22bf72311b69251f196c9d69d/); sonic `0x9fd1fd...0a7c3c` | ⚠️ Unaudited |
| SymmioFeeDistributor | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x61662e...28f5f4`](./contracts/sonic-146/0x61662ea0eeecaf693538284d4332ec6f2828f5f4/); sonic `0x99886d...d95519` | ⚠️ Unaudited |
| TetherTokenAdapter | unknown | sonic | n/a | 2 deployments: sonic [`0x188042...53d4e4`](./contracts/sonic-146/0x1880425307124ce875aac3e9eb47b5a87453d4e4/); sonic `0x667e06...aa304a` | ⚠️ Unaudited |
| TetherTokenV2 | unknown | sonic | n/a | 2 deployments: sonic [`0x604782...a5eaf9`](./contracts/sonic-146/0x6047828dc181963ba44974801ff68e538da5eaf9/); sonic `0xc80268...252fad` | ⚠️ Unaudited |
| TicTacToe | unknown | sonic | n/a | 2 deployments: sonic [`0x882171...1dcb47`](./contracts/sonic-146/0x88217164e88201227c76a888d18ba507cd1dcb47/); sonic `0xaa0944...e02c14` | ⚠️ Unaudited |
| TokenPairs | unknown | sonic | n/a | 2 deployments: sonic [`0x1109f1...5c81db`](./contracts/sonic-146/0x1109f1a00fbe5c44555a543540bb2db2c15c81db/); sonic `0x36535d...f9cd43` | ⚠️ Unaudited |
| TokenPairs | unknown | sonic | n/a | 2 deployments: sonic [`0x134e4c...00ba94`](./contracts/sonic-146/0x134e4c207ad5a13549de1ebf8d43c1f49b00ba94/); sonic `0xabf0c9...5ebf25` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | 2 deployments: sonic [`0x3faf5b...5a4876`](./contracts/sonic-146/0x3faf5b5d4355aee4b9381147dcac8d7f1b5a4876/); sonic `0x62a572...dcd70a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sonic | n/a | 5 deployments: sonic [`0x89c312...11df5e`](./contracts/sonic-146/0x89c31261221961acbae55917256d59257511df5e/); sonic `0x960bdc...e3a020`; sonic `0xc1883f...992748`; sonic `0xd89992...4de721`; sonic `0xfb7040...a993f8` | ⚠️ Unaudited |
| UniswapV2Factory | registry | sonic | n/a | [`0xee4bc4...76f741`](./contracts/sonic-146/0xee4bc42157cf65291ba2fe839ae127e3cc76f741/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | sonic | n/a | [`0xa6ad18...b94883`](./contracts/sonic-146/0xa6ad18c2ac47803e193f75c3677b14bf19b94883/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | sonic | n/a | [`0x3d91b7...69c8ad`](./contracts/sonic-146/0x3d91b700252e0e3ee7805d12e048a988ab69c8ad/) | ⚠️ Unaudited |
| UniswapV3Staker | core_logic | sonic | n/a | [`0x160f55...217c23`](./contracts/sonic-146/0x160f55276713f356d8409910c3cfa1da23217c23/) | ⚠️ Unaudited |
| UniversalRouter | adapter | sonic | n/a | [`0x55d10e...4ebef8`](./contracts/sonic-146/0x55d10e597275d5e572cd0ecf85a0c944964ebef8/) | ⚠️ Unaudited |
| UpdateManager | unknown | sonic | n/a | 2 deployments: sonic [`0x1d3c99...176bb7`](./contracts/sonic-146/0x1d3c99da3cef5c26f02a86dc7d685efa40176bb7/); sonic `0x7160ec...e4ee53` | ⚠️ Unaudited |
| UpdateManager | unknown | sonic | n/a | 2 deployments: sonic [`0x5d3850...d3cf2b`](./contracts/sonic-146/0x5d3850377c22dd8b154161d07102b60ef4d3cf2b/); sonic `0xa432cf...20187a` | ⚠️ Unaudited |
| V3Migrator | periphery | sonic | n/a | [`0x865c43...ab92fa`](./contracts/sonic-146/0x865c434b5c4d2296776352da5ce72feaaaab92fa/) | ⚠️ Unaudited |
| WrappedSonic | unknown | sonic | n/a | [`0x039e2f...94ad38`](./contracts/sonic-146/0x039e2fb66102314ce7b64ce5ce3e5183bc94ad38/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (46)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x0ae71c...26f17c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0df628...47174f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1a2dd1...7a0cc1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1fac89...026f0a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2071a8...637be3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x352866...b4c0e7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3665a6...462a21` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3d9cd8...1938c3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x44ca93...864676` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4a5f9a...148568` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x50e88c...e0d5ba` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x63ad1a...a31527` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x643c5b...73d55f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6697ee...e0e324` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6a8c15...6c599c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6b0d9f...91a83d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x70d1f6...ad90ea` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x775525...81f835` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7779f5...313a11` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x78f6a7...7bb2e9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x836b8c...c6aa4f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8482eb...2a5f7f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x858657...8ce686` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x86aa8e...6a1084` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8d47c2...2ab93c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x912060...1335df` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x94e848...74904f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9522ba...d887c8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x97bc7d...6f0b0d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9943af...b4e674` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9d0d2c...18a910` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaecac5...3ca4b4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb7d1d2...589533` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbab4a1...800310` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc3b668...dc6d31` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc57afd...56e6ce` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc6b9df...8e2403` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcc96a3...31020e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe607f5...380f5a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe85df5...7ef797` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xecbd07...26e456` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf39352...86684e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf73865...424a9e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfb9114...84079a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfbbb87...447b28` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 60 deployments: fantom `0x04068d...5d5b75`; fantom `0x049d68...3a3c7a`; fantom `0x06d173...cafcb7`; fantom `0x0845c0...b6b7df`; fantom `0x08f6fe...33e19b`; fantom `0x157f91...11d9b9`; fantom `0x165672...27059e`; fantom `0x1c9466...982022`; fantom `0x1e4f97...19c68b`; fantom `0x21be37...1a4c83`; fantom `0x29b0da...c0ec69`; fantom `0x2b4c76...7fc75c`; fantom `0x30872e...c09086`; fantom `0x321162...051b11`; fantom `0x3cceb4...8d7b27`; fantom `0x40f70b...38adf8`; fantom `0x46e762...76c6c5`; fantom `0x56ee92...1e3adc`; fantom `0x5965e5...047410`; fantom `0x5c021d...e375b4`; fantom `0x5dc784...8ee34b`; fantom `0x623ee4...13021d`; fantom `0x627524...b671fd`; fantom `0x657a18...bdcbc6`; fantom `0x6a07a7...3a993b`; fantom `0x6f86e6...456efc`; fantom `0x74b238...58c76d`; fantom `0x753fbc...87dfc9`; fantom `0x7928a2...e5c3e6`; fantom `0x82f0b8...6829c1`; fantom `0x838c01...04ecb1`; fantom `0x841fad...c7effe`; fantom `0x89d9bc...c2fd29`; fantom `0x8d11ec...8abf3e`; fantom `0x91b39d...f2e8cf`; fantom `0x956de1...005820`; fantom `0x9c04f7...f79e68`; fantom `0xa48d95...de7598`; fantom `0xae75a4...4477cc`; fantom `0xb01e84...f7159d`; fantom `0xb3654d...4fbdc8`; fantom `0xb39d21...33d6c2`; fantom `0xb471ac...96c93b`; fantom `0xb77b22...dcb934`; fantom `0xb9507f...504a92`; fantom `0xbaa835...6e554c`; fantom `0xbf4d61...e2eb4c`; fantom `0xd0660c...8157f1`; fantom `0xd6070a...79d960`; fantom `0xd67de0...850454`; fantom `0xddcb3f...b34239`; fantom `0xe120ff...66a428`; fantom `0xebf374...ff2bf6`; fantom `0xec7178...8a7a58`; fantom `0xf07022...5ab577`; fantom `0xf16e81...b87df9`; fantom `0xf3582d...60a5fd`; fantom `0xf84e31...b443c3`; fantom `0xfd0ab5...5c0794`; fantom `0xfdb9ab...2c3ee3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/spookyswap](https://skynet.certik.com/projects/spookyswap) | CertiK | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 94 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3096] skynet.certik.com/projects/spookyswap

Fork inheritance lineage and inherited audits are included when available.
