# Agentic Audit Brief: SpookySwap

## Project Overview

- Project: SpookySwap (`spookyswap`)
- Website: [https://spooky.fi](https://spooky.fi)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.539Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: fantom, sonic
- Contract surface: 86 unique implementations (186 raw deployments)
- DeFi Llama TVL: $848,278.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Interface. Structurally: 75 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 22 common project-authored base contract(s) (hedgerpartybv3, hedgerpartybv2, hedgerpartybv1). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 254; live-surface contracts included: 174 (66 live, 108 unknown).
- Excluded by liveness: 80 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/33 (0.0%)
- Deployed-live implementations: 40 of 86 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/40
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 46
- Unique implementations: 86
- Raw deployments: 186
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

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BooMirrorWorld | unknown | sonic | n/a | [`0xa95ea1cfabccf0e9eb94b646cefe9ed71ff5d605`](./contracts/sonic-146/0xa95ea1cfabccf0e9eb94b646cefe9ed71ff5d605/) | ⚠️ Unaudited |
| BooOFT | unknown | sonic | n/a | [`0x7a0c53f7eb34c5bc8b01691723669ada9d6cb384`](./contracts/sonic-146/0x7a0c53f7eb34c5bc8b01691723669ada9d6cb384/) | ⚠️ Unaudited |
| Bridge | unknown | sonic | n/a | 2 deployments: sonic [`0x826c8465b6e6a0ca6454cc15703b60101f171d8e`](./contracts/sonic-146/0x826c8465b6e6a0ca6454cc15703b60101f171d8e/); sonic `0xf771463d1e9524574d7117f90c5b1d66a1a3e079` | ⚠️ Unaudited |
| Bridge | unknown | sonic | n/a | 2 deployments: sonic [`0x9e70d16f16bbb97d1f1d5dab9fdb8e071f2b56cd`](./contracts/sonic-146/0x9e70d16f16bbb97d1f1d5dab9fdb8e071f2b56cd/); sonic `0xf06a648cd013990c237318cb49a56bb54e2cd698` | ⚠️ Unaudited |
| ConfigRegistry | unknown | sonic | n/a | 2 deployments: sonic [`0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00`](./contracts/sonic-146/0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00/); sonic `0xffd7c82bbf7e44fb986c4ae34e376cd674b670f3` | ⚠️ Unaudited |
| Diamond | unknown | sonic | n/a | [`0x803de354cbd853d9ae3bc58131a5d538de7a72e3`](./contracts/sonic-146/0x803de354cbd853d9ae3bc58131a5d538de7a72e3/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sonic | n/a | 2 deployments: sonic [`0x4c0b5bfd9b7a970e24ce5d62af510258c99e9ec7`](./contracts/sonic-146/0x4c0b5bfd9b7a970e24ce5d62af510258c99e9ec7/); sonic `0x910afaa218ce5228f024252a1ea69780dcd3caa5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sonic | n/a | 2 deployments: sonic [`0x5f985705a9ed0cd2561c8d69e77b66ce99d9f3e8`](./contracts/sonic-146/0x5f985705a9ed0cd2561c8d69e77b66ce99d9f3e8/); sonic `0x65f2358801ece9e06d283d0d80f3e6ca7a7c3477` | ⚠️ Unaudited |
| HedgerPartyBV7 | unknown | sonic | n/a | 4 deployments: sonic [`0x3844ded07a515d7d18073538d553d298d259784b`](./contracts/sonic-146/0x3844ded07a515d7d18073538d553d298d259784b/); sonic `0x7d387771f6e23f353a4afce21af521875c0825d0`; sonic `0x8141c1840f7d190cd24239c22b1e560e08999b12`; sonic `0xf25f5aab4e26e75c09ac665c66943ac11b48ae4c` | ⚠️ Unaudited |
| LeverageFiller | unknown | sonic | n/a | 2 deployments: sonic [`0x053714a436ea716e14b3430f2ee8e2488c83f16a`](./contracts/sonic-146/0x053714a436ea716e14b3430f2ee8e2488c83f16a/); sonic `0xfe4a47e10ee3b270b43972629e9a93ee0ab31e7d` | ⚠️ Unaudited |
| LongTailIRM | unknown | sonic | n/a | [`0x12f407bfdbbe56ab19ecd389992f0f408810305a`](./contracts/sonic-146/0x12f407bfdbbe56ab19ecd389992f0f408810305a/) | ⚠️ Unaudited |
| MajorIRM | unknown | sonic | n/a | [`0x18fad5b72113497e1c92570b6f517328d05505fa`](./contracts/sonic-146/0x18fad5b72113497e1c92570b6f517328d05505fa/) | ⚠️ Unaudited |
| MintedERC20 | token | sonic | n/a | [`0x50c42deacd8fc9773493ed674b675be577f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/) | ⚠️ Unaudited |
| MultiAccount | unknown | sonic | n/a | 2 deployments: sonic [`0x4bd822749416543da46eee10fc9e7f173c1310d8`](./contracts/sonic-146/0x4bd822749416543da46eee10fc9e7f173c1310d8/); sonic `0x8a8cf91dc8f5c93f6bad1dc69961c3d768d4595c` | ⚠️ Unaudited |
| MultiAccountV2 | unknown | sonic | n/a | 2 deployments: sonic [`0x3300433ca6832fc095506449fc1ab0bf3bf09a70`](./contracts/sonic-146/0x3300433ca6832fc095506449fc1ab0bf3bf09a70/); sonic `0xd90aca50ee8cb7c3dd1fee84a722d574186cdd17` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | n/a | [`0xf807aca27b1550fe778fd4e7013bb57480b17fac`](./contracts/sonic-146/0xf807aca27b1550fe778fd4e7013bb57480b17fac/) | ⚠️ Unaudited |
| OracleRouterChainlink | operational_periphery | sonic | n/a | [`0xfb04979bda6546f114afcff2a78d35446d5a32e8`](./contracts/sonic-146/0xfb04979bda6546f114afcff2a78d35446d5a32e8/) | ⚠️ Unaudited |
| Permit2 | unknown | sonic | n/a | [`0x981ef1f1644715ae797434de4c0aad16e6162723`](./contracts/sonic-146/0x981ef1f1644715ae797434de4c0aad16e6162723/) | ⚠️ Unaudited |
| PositionsManager | unknown | sonic | n/a | 2 deployments: sonic [`0x31b57e9dadc3227400bf1742fc9692ebb3749a4b`](./contracts/sonic-146/0x31b57e9dadc3227400bf1742fc9692ebb3749a4b/); sonic `0x31b68b75a817d74fad9a9cb04b63ab9b61ef0303` | ⚠️ Unaudited |
| PrizeToken | unknown | sonic | n/a | 2 deployments: sonic [`0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3`](./contracts/sonic-146/0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3/); sonic `0x78d97679b6582eb0adfd2b1b52a7dced76d94c69` | ⚠️ Unaudited |
| ProxyAdmin | unknown | sonic | n/a | 15 deployments: sonic [`0x3e09dbfe0f6e82b8448a11fb082d44cd575849d3`](./contracts/sonic-146/0x3e09dbfe0f6e82b8448a11fb082d44cd575849d3/); sonic `0x3e864a2ae46fa8e7eaac25012f517907f3ace120`; sonic `0x6255ab31db76f82fda66d0bca46bbe221f8b8909`; sonic `0x6b44c878f869cf742a6d4dd60180a19c3b09716e`; sonic `0x84da347c0fe5ce5d03470ecb174d5c6d66f3f191`; sonic `0x87fc464fa528260f1eeab94fa20f73fed8536eb7`; sonic `0x8f371825ee8dbe65d221d1aeb143778006ea5787`; sonic `0x9303e1783a99f1ee4dbf0f78ce4832b4d475802c`; sonic `0xae16f9d330f37e8f077d2280ac0433bce7c7f16a`; sonic `0xb6e3b44975f2966707a91747f89d2002ff8d62db`; sonic `0xccde63f39d7d528ab270375a960c748238d37f77`; sonic `0xd7a652118799b7a84478982a0b68ffa7f78c7133`; sonic `0xdb91d232e93969130272de309d3d914547604426`; sonic `0xfc3f164042a1da15287a8fc682f0298f1fee4864`; sonic `0xfc4ac3af357ebe6d556dcd72453e9b30f6dc6873` | ⚠️ Unaudited |
| RfqEngine | unknown | sonic | n/a | [`0x20116919299625b1b3e474d5a594a5b4ed13e95b`](./contracts/sonic-146/0x20116919299625b1b3e474d5a594a5b4ed13e95b/) | ⚠️ Unaudited |
| SpookyLaunchpad | unknown | sonic | n/a | [`0xb52c0eb864722c313d2c084c6ffa2a6e46850c31`](./contracts/sonic-146/0xb52c0eb864722c313d2c084c6ffa2a6e46850c31/) | ⚠️ Unaudited |
| StableIRM | unknown | sonic | n/a | [`0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5`](./contracts/sonic-146/0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5/) | ⚠️ Unaudited |
| Storage | unknown | sonic | n/a | [`0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73`](./contracts/sonic-146/0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | sonic | n/a | 5 deployments: sonic [`0x0c2bc01d435cfeb2dc6ad7cec0e473e2dbabdd87`](./contracts/sonic-146/0x0c2bc01d435cfeb2dc6ad7cec0e473e2dbabdd87/); sonic `0xb75efbe431444667bbfc0b9faba9eab33e270445`; sonic `0xb8d86732fe95d3168669f4b2b73eda00fbc54d31`; sonic `0xbece4e11a73c209bfb6c8c96e5034dc1556bea4e`; sonic `0xcbdeca132f93a71d963d26d8c93cfcced7f74362` | ⚠️ Unaudited |
| SymmCoreCaller | unknown | sonic | n/a | 2 deployments: sonic [`0x9fa4923601b951d22bf72311b69251f196c9d69d`](./contracts/sonic-146/0x9fa4923601b951d22bf72311b69251f196c9d69d/); sonic `0x9fd1fd7910f61cc6f5a18ed4916fa0c0f40a7c3c` | ⚠️ Unaudited |
| SymmioFeeDistributor | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x61662ea0eeecaf693538284d4332ec6f2828f5f4`](./contracts/sonic-146/0x61662ea0eeecaf693538284d4332ec6f2828f5f4/); sonic `0x99886d393329681ed35042854b18d82c7ad95519` | ⚠️ Unaudited |
| TicTacToe | unknown | sonic | n/a | 2 deployments: sonic [`0x88217164e88201227c76a888d18ba507cd1dcb47`](./contracts/sonic-146/0x88217164e88201227c76a888d18ba507cd1dcb47/); sonic `0xaa0944ea173d300945ee5f13ae49560643e02c14` | ⚠️ Unaudited |
| TokenPairs | unknown | sonic | n/a | 2 deployments: sonic [`0x1109f1a00fbe5c44555a543540bb2db2c15c81db`](./contracts/sonic-146/0x1109f1a00fbe5c44555a543540bb2db2c15c81db/); sonic `0x36535d7bbfc61e2336faae501f38d77ccdf9cd43` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | 2 deployments: sonic [`0x3faf5b5d4355aee4b9381147dcac8d7f1b5a4876`](./contracts/sonic-146/0x3faf5b5d4355aee4b9381147dcac8d7f1b5a4876/); sonic `0x62a572120530a6cbbcafb7c6fb8c94fbdedcd70a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sonic | n/a | 5 deployments: sonic [`0x89c31261221961acbae55917256d59257511df5e`](./contracts/sonic-146/0x89c31261221961acbae55917256d59257511df5e/); sonic `0x960bdccee3ccb6b26db9e070713d92657de3a020`; sonic `0xc1883ff64adac9014b40fab45d7dbd8e34992748`; sonic `0xd899927a68bc0c355a3eb0e089a6db815b4de721`; sonic `0xfb70405f550695feb9f6ccae17a210a612a993f8` | ⚠️ Unaudited |
| UniswapV2Factory | registry | sonic | n/a | [`0xee4bc42157cf65291ba2fe839ae127e3cc76f741`](./contracts/sonic-146/0xee4bc42157cf65291ba2fe839ae127e3cc76f741/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | sonic | n/a | [`0xa6ad18c2ac47803e193f75c3677b14bf19b94883`](./contracts/sonic-146/0xa6ad18c2ac47803e193f75c3677b14bf19b94883/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | sonic | n/a | [`0x3d91b700252e0e3ee7805d12e048a988ab69c8ad`](./contracts/sonic-146/0x3d91b700252e0e3ee7805d12e048a988ab69c8ad/) | ⚠️ Unaudited |
| UniswapV3Staker | core_logic | sonic | n/a | [`0x160f55276713f356d8409910c3cfa1da23217c23`](./contracts/sonic-146/0x160f55276713f356d8409910c3cfa1da23217c23/) | ⚠️ Unaudited |
| UniversalRouter | adapter | sonic | n/a | [`0x55d10e597275d5e572cd0ecf85a0c944964ebef8`](./contracts/sonic-146/0x55d10e597275d5e572cd0ecf85a0c944964ebef8/) | ⚠️ Unaudited |
| UpdateManager | unknown | sonic | n/a | 2 deployments: sonic [`0x5d3850377c22dd8b154161d07102b60ef4d3cf2b`](./contracts/sonic-146/0x5d3850377c22dd8b154161d07102b60ef4d3cf2b/); sonic `0xa432cfb45b61a19acde9e9b60f9d6b8f3420187a` | ⚠️ Unaudited |
| V3Migrator | periphery | sonic | n/a | [`0x865c434b5c4d2296776352da5ce72feaaaab92fa`](./contracts/sonic-146/0x865c434b5c4d2296776352da5ce72feaaaab92fa/) | ⚠️ Unaudited |
| WrappedSonic | unknown | sonic | n/a | [`0x039e2fb66102314ce7b64ce5ce3e5183bc94ad38`](./contracts/sonic-146/0x039e2fb66102314ce7b64ce5ce3e5183bc94ad38/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | sonic | n/a | `0x0ae71c8f93af79417c5e2fd796ec2a288626f17c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0df6281a09d39dd59e90ae2ad088f1d21947174f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1a2dd14da3858cb913207575e699937a307a0cc1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1fac89ea9757be6f7f040ac88853458c6c026f0a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2071a84b76cb9d3f2c2c25c04af327287d637be3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x352866b5c559a3292144263ddd937cc3b8b4c0e7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3665a6a80604269633f19d1d78a321b069462a21` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3d9cd8a63e2769b761fadd6e867221c8381938c3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x44ca93531be2872a1e6e9987bc8f2d62c0864676` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4a5f9a946d23f43cced8e6bbf783f45592148568` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x50e88c692b137b8a51b6017026ef414651e0d5ba` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x63ad1a0b191687fcaaa1bccb824421aeada31527` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x643c5bd74da7d37f60615562bc2b1dbf2b73d55f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6697eefaff6e8cc532115c8d0a51164f92e0e324` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6a8c15229ffd048dcfff3d05eaa5c1a70e6c599c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6b0d9fa54cec03e83a6b08400228c2afd291a83d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x70d1f613af7345cb1ef7999e6868cd11c8ad90ea` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x775525b3e7569057c29c31bdd6bc9c90fd81f835` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7779f53fcbc0848353e238de2c975a4794313a11` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x78f6a74a0074a0353349e070368e6d2d587bb2e9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x836b8c114ac6301e1e96bbea7b00a99b1fc6aa4f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8482eb00293a0c8703ed43feb42629a2f12a5f7f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x858657908d257cff5f72aba48b857c9b848ce686` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x86aa8e40c5258a94bd2428e8ea55621e376a1084` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8d47c22f331d3851fe0f5c8085c81bff6b2ab93c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x912060d9c7244a7601276c16ccb5be258f1335df` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x94e84861513304fb2e20491408a410889374904f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9522bacee3e237cf81cd0a1823cf3dc751d887c8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x97bc7db6c898473bdbcce5f46250e30dc96f0b0d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9943afde8779fc05334c1577812b29b36fb4e674` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9d0d2c55d98d86b4377fb9cf60871bed5c18a910` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaecac50ba44dc8fa2a4c8410e5215315ed3ca4b4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb7d1d27221f636da91300288dc012927e3589533` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbab4a13713c4dfba3073d0b35e2829f8be800310` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc3b6680629b7cc2130e131485f169c8c51dc6d31` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc57afd1d249839c16bf9c0bf9ffa4200b256e6ce` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc6b9df7c769ce5689da6b98a852d1b0d588e2403` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcc96a349d1627ccc07628cadbee7ab7e3031020e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe607f56463bf9cdc776ba630084ab542f2380f5a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe85df5c4e588fb0dd4af2436820429a3eb7ef797` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xecbd0788bb5a72f9dfdac1ffeaaf9b7c2b26e456` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf39352ec34a007b2726e2c4610a13f7aea86684e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf738659243be53148eaa8937eaac5e55c0424a9e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfb9114dbd11450444e7b2ca7a6b666151784079a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfbbb87b674adffe7313ed6217451200632447b28` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 60 deployments: fantom `0x04068da6c83afcfa0e13ba15a6696662335d5b75`; fantom `0x049d68029688eabf473097a2fc38ef61633a3c7a`; fantom `0x06d173628be105fe81f1c82c9979ba79ebcafcb7`; fantom `0x0845c0bfe75691b1e21b24351aac581a7fb6b7df`; fantom `0x08f6fe8f4dc577cf81e40e03e561d29b8b33e19b`; fantom `0x157f913ed0961a8d0d06a258019840919111d9b9`; fantom `0x1656728af3a14e1319f030dc147fabf6f627059e`; fantom `0x1c94665fd3ecfa969feda7ed01e35522e6982022`; fantom `0x1e4f97b9f9f913c46f1632781732927b9019c68b`; fantom `0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83`; fantom `0x29b0da86e484e1c0029b56e817912d778ac0ec69`; fantom `0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c`; fantom `0x30872e4fc4edbfd7a352bfc2463eb4fae9c09086`; fantom `0x321162cd933e2be498cd2267a90534a804051b11`; fantom `0x3cceb477fcb6cde90180983642486e68148d7b27`; fantom `0x40f70b72796c30f355df859b2c8f94f18c38adf8`; fantom `0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6c5`; fantom `0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3adc`; fantom `0x5965e53aa80a0bcf1cd6dbdd72e6a9b2aa047410`; fantom `0x5c021d9cfad40aafc57786b409a9ce571de375b4`; fantom `0x5dc7848bf215f1d99f2af3d2bf78fcdf238ee34b`; fantom `0x623ee4a7f290d11c11315994db70fb148b13021d`; fantom `0x627524d78b4fc840c887ffec90563c7a42b671fd`; fantom `0x657a1861c15a3ded9af0b6799a195a249ebdcbc6`; fantom `0x6a07a792ab2965c72a5b8088d3a069a7ac3a993b`; fantom `0x6f86e65b255c9111109d2d2325ca2dfc82456efc`; fantom `0x74b23882a30290451a17c44f4f05243b6b58c76d`; fantom `0x753fbc5800a8c8e3fb6dc6415810d627a387dfc9`; fantom `0x7928a2c48754501f3a8064765ecae541dae5c3e6`; fantom `0x82f0b8b456c1a451378467398982d4834b6829c1`; fantom `0x838c010f57889195c88f2097488e49b7ad04ecb1`; fantom `0x841fad6eae12c286d1fd18d1d525dffa75c7effe`; fantom `0x89d9bc2f2d091cfbfc31e333d6dc555ddbc2fd29`; fantom `0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e`; fantom `0x91b39d5584e2a7dc829f696235742cc293f2e8cf`; fantom `0x956de13ea0fa5b577e4097be837bf4ac80005820`; fantom `0x9c04f7a1506abdde1a3bb8ab1a2da520bdf79e68`; fantom `0xa48d959ae2e88f1daa7d5f611e01908106de7598`; fantom `0xae75a438b2e0cb8bb01ec1e1e376de11d44477cc`; fantom `0xb01e8419d842beebf1b70a7b5f7142abbaf7159d`; fantom `0xb3654dc3d10ea7645f8319668e8f54d2574fbdc8`; fantom `0xb39d21718e24de36fdd8c5c73e928b5eff33d6c2`; fantom `0xb471ac6ef617e952b84c6a9ff5de65a9da96c93b`; fantom `0xb77b223490e1f5951ec79a8d09db9eab2adcb934`; fantom `0xb9507f2ed171d52c5c2efaeabde440d264504a92`; fantom `0xbaa8353cc9d02733ef12f9556ed999521f6e554c`; fantom `0xbf4d61d4cec3a9dff7452d8987e1cc2943e2eb4c`; fantom `0xd0660cd418a64a1d44e9214ad8e459324d8157f1`; fantom `0xd6070ae98b8069de6b494332d1a1a81b6179d960`; fantom `0xd67de0e0a0fd7b15dc8348bb9be742f3c5850454`; fantom `0xddcb3ffd12750b45d32e084887fdf1aabab34239`; fantom `0xe120ffbda0d14f3bb6d6053e90e63c572a66a428`; fantom `0xebf374bb21d83cf010cc7363918776adf6ff2bf6`; fantom `0xec7178f4c41f346b2721907f5cf7628e388a7a58`; fantom `0xf0702249f4d3a25cd3ded7859a165693685ab577`; fantom `0xf16e81dce15b08f326220742020379b855b87df9`; fantom `0xf3582dbaebb4287b462f00d308911621a960a5fd`; fantom `0xf84e313b36e86315af7a06ff26c8b20e9eb443c3`; fantom `0xfd0ab56b83130ce8f2b7a4f4d4532dee495c0794`; fantom `0xfdb9ab8b9513ad9e419cf19530fee49d412c3ee3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/spookyswap](https://skynet.certik.com/projects/spookyswap) | CertiK | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0xa95ea1cfabccf0e9eb94b646cefe9ed71ff5d605`](./contracts/sonic-146/0xa95ea1cfabccf0e9eb94b646cefe9ed71ff5d605/) | BooMirrorWorld | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7a0c53f7eb34c5bc8b01691723669ada9d6cb384`](./contracts/sonic-146/0x7a0c53f7eb34c5bc8b01691723669ada9d6cb384/) | BooOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x826c8465b6e6a0ca6454cc15703b60101f171d8e`](./contracts/sonic-146/0x826c8465b6e6a0ca6454cc15703b60101f171d8e/) | Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9e70d16f16bbb97d1f1d5dab9fdb8e071f2b56cd`](./contracts/sonic-146/0x9e70d16f16bbb97d1f1d5dab9fdb8e071f2b56cd/) | Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00`](./contracts/sonic-146/0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00/) | ConfigRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x803de354cbd853d9ae3bc58131a5d538de7a72e3`](./contracts/sonic-146/0x803de354cbd853d9ae3bc58131a5d538de7a72e3/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3844ded07a515d7d18073538d553d298d259784b`](./contracts/sonic-146/0x3844ded07a515d7d18073538d553d298d259784b/) | HedgerPartyBV7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x053714a436ea716e14b3430f2ee8e2488c83f16a`](./contracts/sonic-146/0x053714a436ea716e14b3430f2ee8e2488c83f16a/) | LeverageFiller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x12f407bfdbbe56ab19ecd389992f0f408810305a`](./contracts/sonic-146/0x12f407bfdbbe56ab19ecd389992f0f408810305a/) | LongTailIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x18fad5b72113497e1c92570b6f517328d05505fa`](./contracts/sonic-146/0x18fad5b72113497e1c92570b6f517328d05505fa/) | MajorIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x50c42deacd8fc9773493ed674b675be577f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/) | MintedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4bd822749416543da46eee10fc9e7f173c1310d8`](./contracts/sonic-146/0x4bd822749416543da46eee10fc9e7f173c1310d8/) | MultiAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3300433ca6832fc095506449fc1ab0bf3bf09a70`](./contracts/sonic-146/0x3300433ca6832fc095506449fc1ab0bf3bf09a70/) | MultiAccountV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xf807aca27b1550fe778fd4e7013bb57480b17fac`](./contracts/sonic-146/0xf807aca27b1550fe778fd4e7013bb57480b17fac/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xfb04979bda6546f114afcff2a78d35446d5a32e8`](./contracts/sonic-146/0xfb04979bda6546f114afcff2a78d35446d5a32e8/) | OracleRouterChainlink | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x31b57e9dadc3227400bf1742fc9692ebb3749a4b`](./contracts/sonic-146/0x31b57e9dadc3227400bf1742fc9692ebb3749a4b/) | PositionsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3`](./contracts/sonic-146/0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3/) | PrizeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x20116919299625b1b3e474d5a594a5b4ed13e95b`](./contracts/sonic-146/0x20116919299625b1b3e474d5a594a5b4ed13e95b/) | RfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb52c0eb864722c313d2c084c6ffa2a6e46850c31`](./contracts/sonic-146/0xb52c0eb864722c313d2c084c6ffa2a6e46850c31/) | SpookyLaunchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5`](./contracts/sonic-146/0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5/) | StableIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73`](./contracts/sonic-146/0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73/) | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0c2bc01d435cfeb2dc6ad7cec0e473e2dbabdd87`](./contracts/sonic-146/0x0c2bc01d435cfeb2dc6ad7cec0e473e2dbabdd87/) | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9fa4923601b951d22bf72311b69251f196c9d69d`](./contracts/sonic-146/0x9fa4923601b951d22bf72311b69251f196c9d69d/) | SymmCoreCaller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x61662ea0eeecaf693538284d4332ec6f2828f5f4`](./contracts/sonic-146/0x61662ea0eeecaf693538284d4332ec6f2828f5f4/) | SymmioFeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x88217164e88201227c76a888d18ba507cd1dcb47`](./contracts/sonic-146/0x88217164e88201227c76a888d18ba507cd1dcb47/) | TicTacToe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1109f1a00fbe5c44555a543540bb2db2c15c81db`](./contracts/sonic-146/0x1109f1a00fbe5c44555a543540bb2db2c15c81db/) | TokenPairs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x55d10e597275d5e572cd0ecf85a0c944964ebef8`](./contracts/sonic-146/0x55d10e597275d5e572cd0ecf85a0c944964ebef8/) | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5d3850377c22dd8b154161d07102b60ef4d3cf2b`](./contracts/sonic-146/0x5d3850377c22dd8b154161d07102b60ef4d3cf2b/) | UpdateManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x865c434b5c4d2296776352da5ce72feaaaab92fa`](./contracts/sonic-146/0x865c434b5c4d2296776352da5ce72feaaaab92fa/) | V3Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x039e2fb66102314ce7b64ce5ce3e5183bc94ad38`](./contracts/sonic-146/0x039e2fb66102314ce7b64ce5ce3e5183bc94ad38/) | WrappedSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 4 |
| standard_library | 4 |
| needs_review | 48 |

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
