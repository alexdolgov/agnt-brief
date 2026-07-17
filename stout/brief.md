# Agentic Audit Brief: Stout

## Project Overview

- Project: Stout (`stout`)
- Website: [https://stout.fi/](https://stout.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.938Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: sonic
- Contract surface: 106 unique implementations (114 raw deployments)
- DeFi Llama TVL: $2,097,839.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 53 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 8 ERC20 tokens, 5 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 8 common project-authored base contract(s) (initializegovernedupgradeabilityproxy, governable, oethvaultcore). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Compound Finance** (`compound-finance`) in the OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, VaultAdmin, VaultCore, … subsystem.
11 audits inherited from `compound-finance`, scoped to that subsystem.

Total inherited audits: 11. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 208; live-surface contracts included: 114 (28 live, 86 unknown).
- Excluded by liveness: 94 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/20 (0.0%)
- Deployed-live implementations: 20 of 106 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 86
- Unique implementations: 106
- Raw deployments: 114
- Audits discovered: 11 (0 direct, 11 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DUSX | unknown | sonic | n/a | [`0xe30e73cc52ef50a4e4a8b1a3dd0b002b2276f854`](./contracts/sonic-146/0xe30e73cc52ef50a4e4a8b1a3dd0b002b2276f854/) | ⚠️ Unaudited |
| EGGS | unknown | sonic | n/a | [`0xf26ff70573ddc8a90bd7865af8d7d70b8ff019bc`](./contracts/sonic-146/0xf26ff70573ddc8a90bd7865af8d7d70b8ff019bc/) | ⚠️ Unaudited |
| FeeFix | unknown | sonic | n/a | [`0xec44aa4fd30f0860f8f39ef4b7a2400785da0e8b`](./contracts/sonic-146/0xec44aa4fd30f0860f8f39ef4b7a2400785da0e8b/) | ⚠️ Unaudited |
| FixOwnerEggs | unknown | sonic | n/a | [`0xfb8e178b8b606da5de7417f476472c695a52695a`](./contracts/sonic-146/0xfb8e178b8b606da5de7417f476472c695a52695a/) | ⚠️ Unaudited |
| Lender | unknown | sonic | n/a | 9 deployments: sonic [`0x40e0faa1ff6e73e2955266c1b897fc3545ad4c48`](./contracts/sonic-146/0x40e0faa1ff6e73e2955266c1b897fc3545ad4c48/); sonic `0x57c02e4ef1e025ca0a0835d623cffbbaa95f2709`; sonic `0x669fd3ca283ac0981fa0bd9ac2deca352b1dd198`; sonic `0x711de8e2fb625c523e0954f9948d090b8f584a62`; sonic `0x94395fcc29945afaae414229c0799889438ed3f2`; sonic `0x9c1b02c401d33431708b116765a8bd41b90e10e1`; sonic `0xbf7104e48b477ff1de21b5592604b89da745de13`; sonic `0xf49e97cc12be4337ad6e9fabb619ece15ea48b7a`; sonic `0xf55e1e569da5f02998bf98ed6bebdcda661c1a91` | ⚠️ Unaudited |
| LenderOwner | unknown | sonic | n/a | [`0xec7fa6ae97bcab9236696b24be8d55879f39a6a7`](./contracts/sonic-146/0xec7fa6ae97bcab9236696b24be8d55879f39a6a7/) | ⚠️ Unaudited |
| LiquidationHelper | periphery | sonic | n/a | [`0xef2d85c2b4dee15660cdfb0465c4bb0aac1aec75`](./contracts/sonic-146/0xef2d85c2b4dee15660cdfb0465c4bb0aac1aec75/) | ⚠️ Unaudited |
| Minter | operational_periphery | sonic | n/a | [`0x5ed2e91d451dcb4639d2057613cc542c2264b28e`](./contracts/sonic-146/0x5ed2e91d451dcb4639d2057613cc542c2264b28e/) | ⚠️ Unaudited |
| MiscHelper | periphery | sonic | n/a | [`0xa1ba6ee9ea1abb234281117a3e8ba0995252fd0a`](./contracts/sonic-146/0xa1ba6ee9ea1abb234281117a3e8ba0995252fd0a/) | ⚠️ Unaudited |
| OSonic | unknown | sonic | n/a | [`0xb1e25689d55734fd3fffc939c4c3eb52dff8a794`](./contracts/sonic-146/0xb1e25689d55734fd3fffc939c4c3eb52dff8a794/) | ⚠️ Unaudited |
| OSonicVaultCore | core_logic | sonic | n/a | [`0xd66afaa7fe071162d055b3cc703cc1eaed836cf3`](./contracts/sonic-146/0xd66afaa7fe071162d055b3cc703cc1eaed836cf3/) | ⚠️ Unaudited |
| OSonicZapper | adapter | sonic | n/a | [`0xe25a2b256ffb3ad73678d5e80de8d2f6022fab21`](./contracts/sonic-146/0xe25a2b256ffb3ad73678d5e80de8d2f6022fab21/) | ⚠️ Unaudited |
| OSVault | core_logic | sonic | n/a | [`0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186`](./contracts/sonic-146/0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186/) | ⚠️ Unaudited |
| PoolBoosterFactorySwapxDouble | registry | sonic | n/a | [`0x840081c97256d553a8f234d469d797b9535a3b49`](./contracts/sonic-146/0x840081c97256d553a8f234d469d797b9535a3b49/) | ⚠️ Unaudited |
| RepayHelper | periphery | sonic | n/a | [`0x6524278eb519553f1d8c03e08b840de4d2dbb121`](./contracts/sonic-146/0x6524278eb519553f1d8c03e08b840de4d2dbb121/) | ⚠️ Unaudited |
| StakedDUSX | token | sonic | n/a | [`0xa0b0cbffed77e57e946fb1fb875b28edd0d0cc6d`](./contracts/sonic-146/0xa0b0cbffed77e57e946fb1fb875b28edd0d0cc6d/) | ⚠️ Unaudited |
| StoutTimelock | governance | sonic | n/a | [`0xd3a6b1a9026485bbd39a75a352e968711e21744b`](./contracts/sonic-146/0xd3a6b1a9026485bbd39a75a352e968711e21744b/) | ⚠️ Unaudited |
| StoutVault | core_logic | sonic | n/a | [`0x88d6d8547bcbd5366538cedccf424776f3f7cabf`](./contracts/sonic-146/0x88d6d8547bcbd5366538cedccf424776f3f7cabf/) | ⚠️ Unaudited |
| STTX | unknown | sonic | n/a | [`0x97a10beebb25e0ebfa55ca0a7d00e37afe957dea`](./contracts/sonic-146/0x97a10beebb25e0ebfa55ca0a7d00e37afe957dea/) | ⚠️ Unaudited |
| VoteEscrowedSTTX | operational_periphery | sonic | n/a | [`0x8221312e9cf90a2b160ecdabf922408a5ef1cf9e`](./contracts/sonic-146/0x8221312e9cf90a2b160ecdabf922408a5ef1cf9e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (86)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x006bce3ea7405387f36388222a17b9888c88699f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x03372565db135c0413b9502c714a9989e1d36e16` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0957b387be8e993e5b154ddb6513d03e0471cefa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x121383458071600f52ecc1a5c3694f1bd8b221f5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x18e6246dd6082cd360a66b1963e2debf7fc5234e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1a436a1663f6d31a96ce3849d7c00da034c8f901` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1ea4733cfc451eb85923df949312cbb238f70b79` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1f1d3b0e4fe00b1076220ca84c3f1bb57d858a06` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x204329eb60d07ee92e91eef70590e2421efe8e08` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x25c43620603c1040f50720babab2170445bc7777` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2776f29ef9ad1a2c84503e470f2aa3113254151f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x29200339f8ae018ecef0e857c87934ace9729105` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2d88f89c0c4f0c6d5cc2d7fd253977a542a51db4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2eff965bad1c13827d6888fb13c4aa173477285b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3a9b663f7381c9570affd5cfe2da60c5e060b063` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3f80f349731ed7d8a5374513117dbff5929a18e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x425a625de374ff3f6a64c1157fd89a481b4ed56a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x46c06f7c2b123e2d7987c510e30f6dde3529d6ec` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4bf2389f3e79cf61dbe275b30cc3f0ddf3888315` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4f1aef16b1c5246a7562046bf675e02d9db836d4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x50a68cf27c6cb264d1d9657435da5a75bab7739a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5220ffe4afecdd24684e16b090eac60fc48ea29e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x54527e18b2c186f6fc1dc0a99636797aae3d40bf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x55fefae7553d7e4894f8746b589f71c286a44153` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5847b1834e2842e9363da23927da03f6cd3193da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x58cc8b56bd559454a44d5f25b3fa576698ba0a80` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5979827b9295b801fa637d03b3d5c40d0442bb10` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5c9ad1ecd22e5d30a8af8dddde57410633c49db4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x608a61d31177ed558b137b1e4a19bbe2739867d3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6276d483fa8856a280e19b198aaf09f4c46bf4bf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x63b173d52f4065adb01db22579f8ebebe616a79d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x63cde3525fd246f7ef9b867fa07c075fae5ce654` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x657af63abc3d42a18f4cb85844309f83fbd58720` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x66f2dffb2d4436b483319528220a68319f63f590` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x67d57096d4521cdf79313433ba21a8dc99c437cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6b26d42371de167abde8c54bd89272271a80a0dd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x748ee7b58d872e30042c13a704aaaa89f605a4ae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x74f54fc8ced2329fd041634e43529f0ae61b55ee` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x77dd3b78c899aab57fc4c703378d0e1968c3da28` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8000638a4dfb97d70604010c6b5efc61f543d68b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x81a14017bc28ba35d0f7a183f699c7356717567a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x83c117f9ce3cc640aeb64812b768f03e315a33e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x842c9121ee835b5147753a865766d695b6899238` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x846fb33a3ba477eb4094b516e614d1938cac813a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8cce209ca1f289cb33bfc90e648a516018e28a96` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8d0ea3fc76ce91db4c949acdb38b4a9b1d0aa322` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8e06874cb7bc31cf28fb56025221e2b97e8a77f3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8fde1fd8fc952d53b52f5c8c874f41c01fe0cd63` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x94cbd262a34103a6990ca4fa80b27f4f89c10599` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x951881874374d41c1caa951024f9b446370858a9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9ddb17cc319164562532d350f521368e631e7287` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9e3143c171e6baf5132a653dd59129789bc174b6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9e88952079ce1d4d0025606fbf6688f56e7ad43d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa5e1b0e69d4c9f583300a0f7e5aca388b07e381e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa6c53aede0001a818b0340266fa4b3563f02e0a6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaa97db14f4584ba3815b935887c28e3b2f3023da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xac3c72bab476ecf3fc5d17345501ea82ad210eb2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xae3dcffd56d2442682ae9a349fa69b414ce864a6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb275f115e0174aaf582a6331b63f9259b7af8d4d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb6424648df6aa069cf3ceaf85a634c05cd4f6a2b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xba09a5de005e3496aa40e8c006c4605a56613e12` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc3ca8fad52911edfb3c2f499044b16d4bab5c8bb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc4c7324559ad3c3da7ea8f9e089fe5d703baba48` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc82bd70ed3bbb470e9501c08df1ea2dae558fc69` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc9ec89e5dc92eb42c1f50b40dbadab7835a1675e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcd3d2d6b15149a9a5b69de7b9949cf47929f062a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcdcf8e4703dc9c72a599a9195916ee4019600846` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcf89906a45055399c216d522c8f89d1b55536b14` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcfce49ebd2bad4a1d93d269806a753f33f9637c1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd0cc28bc8f4666286f3211e465ecf1fe5c72ac8b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd1a9c3a30708fe1fe42bd46b7d6fcd646e3cee21` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd3001a166db1b347e1851d8bd3d429f18d8c5121` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd4cceaa6caa829dbf54bea9d942235ed348b7ce1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd5909a743c9b168b8fa9f3c71ccfd3fee0bb4040` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd9efb02c55c758e8a1e58d8b9f29dcc74a4cbb66` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdae5a33e75081f7882033eec82550d0ea64d8775` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdb564bc6865b84e1270fad3473d64b6400c9f06b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe3717f9a2c2f04041c87958fe56140ebd6e7d230` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe504b2f4dee931c800243eb44374c193311577e7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe64d5d19237b53f63fae3d18c37e019155e242e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe6a16237d3f5ded27fc823ea996888cb883a3450` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe9f739d47df07561809f43eb37f9df1e5b1fc51c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xed6bb8e862b656120a5ff4635c34af0918cabcfa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf22f2808ee09c9f00d055413a1f415dbc84b13cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf2625c69797b4237e0e193e1063c3e17686306e1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf8fcbbf814c5edacac747b17cce16f0db2e81104` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [compound-governance.pdf](https://github.com/trailofbits/publications/blob/master/reviews/compound-governance.pdf) | Trail of Bits | Audit | 2020-02 | stale | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [www.openzeppelin.com/news/compound-audit](https://www.openzeppelin.com/news/compound-audit) | OpenZeppelin | Audit | 2019-08 | stale | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [compound-3.pdf](https://github.com/trailofbits/publications/blob/master/reviews/compound-3.pdf) | Trail of Bits | Audit | 2019-08 | stale | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [compound-2.pdf](https://github.com/trailofbits/publications/blob/master/reviews/compound-2.pdf) | Trail of Bits | Audit | 2019-04 | stale | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [www.openzeppelin.com/news/compound-finance-patch-audit](https://www.openzeppelin.com/news/compound-finance-patch-audit) | OpenZeppelin | Audit | n/a | unknown | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [www.openzeppelin.com/news/compound-finance-mcd-dsr-integration](https://www.openzeppelin.com/news/compound-finance-mcd-dsr-integration) | OpenZeppelin | Audit | n/a | unknown | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [www.openzeppelin.com/news/compound-alpha-governance-system-audit](https://www.openzeppelin.com/news/compound-alpha-governance-system-audit) | OpenZeppelin | Audit | n/a | unknown | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [www.openzeppelin.com/news/compound-tether-integration-audit](https://www.openzeppelin.com/news/compound-tether-integration-audit) | OpenZeppelin | Audit | n/a | unknown | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [www.chainsecurity.com/security-audit/compound-iii](https://www.chainsecurity.com/security-audit/compound-iii) | ChainSecurity | Audit | 2024-12 | aging | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [www.openzeppelin.com/news/compound-iii-audit](https://www.openzeppelin.com/news/compound-iii-audit) | OpenZeppelin | Audit | 2022-06 | stale | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [www.openzeppelin.com/news/compound-comp-distribution-system-audit](https://www.openzeppelin.com/news/compound-comp-distribution-system-audit) | OpenZeppelin | Audit | 2020-05 | stale | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0xe30e73cc52ef50a4e4a8b1a3dd0b002b2276f854`](./contracts/sonic-146/0xe30e73cc52ef50a4e4a8b1a3dd0b002b2276f854/) | DUSX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xf26ff70573ddc8a90bd7865af8d7d70b8ff019bc`](./contracts/sonic-146/0xf26ff70573ddc8a90bd7865af8d7d70b8ff019bc/) | EGGS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xec44aa4fd30f0860f8f39ef4b7a2400785da0e8b`](./contracts/sonic-146/0xec44aa4fd30f0860f8f39ef4b7a2400785da0e8b/) | FeeFix | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xfb8e178b8b606da5de7417f476472c695a52695a`](./contracts/sonic-146/0xfb8e178b8b606da5de7417f476472c695a52695a/) | FixOwnerEggs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x40e0faa1ff6e73e2955266c1b897fc3545ad4c48`](./contracts/sonic-146/0x40e0faa1ff6e73e2955266c1b897fc3545ad4c48/) | Lender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xec7fa6ae97bcab9236696b24be8d55879f39a6a7`](./contracts/sonic-146/0xec7fa6ae97bcab9236696b24be8d55879f39a6a7/) | LenderOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xef2d85c2b4dee15660cdfb0465c4bb0aac1aec75`](./contracts/sonic-146/0xef2d85c2b4dee15660cdfb0465c4bb0aac1aec75/) | LiquidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5ed2e91d451dcb4639d2057613cc542c2264b28e`](./contracts/sonic-146/0x5ed2e91d451dcb4639d2057613cc542c2264b28e/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa1ba6ee9ea1abb234281117a3e8ba0995252fd0a`](./contracts/sonic-146/0xa1ba6ee9ea1abb234281117a3e8ba0995252fd0a/) | MiscHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb1e25689d55734fd3fffc939c4c3eb52dff8a794`](./contracts/sonic-146/0xb1e25689d55734fd3fffc939c4c3eb52dff8a794/) | OSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xd66afaa7fe071162d055b3cc703cc1eaed836cf3`](./contracts/sonic-146/0xd66afaa7fe071162d055b3cc703cc1eaed836cf3/) | OSonicVaultCore | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe25a2b256ffb3ad73678d5e80de8d2f6022fab21`](./contracts/sonic-146/0xe25a2b256ffb3ad73678d5e80de8d2f6022fab21/) | OSonicZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186`](./contracts/sonic-146/0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186/) | OSVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x840081c97256d553a8f234d469d797b9535a3b49`](./contracts/sonic-146/0x840081c97256d553a8f234d469d797b9535a3b49/) | PoolBoosterFactorySwapxDouble | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6524278eb519553f1d8c03e08b840de4d2dbb121`](./contracts/sonic-146/0x6524278eb519553f1d8c03e08b840de4d2dbb121/) | RepayHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa0b0cbffed77e57e946fb1fb875b28edd0d0cc6d`](./contracts/sonic-146/0xa0b0cbffed77e57e946fb1fb875b28edd0d0cc6d/) | StakedDUSX | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xd3a6b1a9026485bbd39a75a352e968711e21744b`](./contracts/sonic-146/0xd3a6b1a9026485bbd39a75a352e968711e21744b/) | StoutTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x88d6d8547bcbd5366538cedccf424776f3f7cabf`](./contracts/sonic-146/0x88d6d8547bcbd5366538cedccf424776f3f7cabf/) | StoutVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x97a10beebb25e0ebfa55ca0a7d00e37afe957dea`](./contracts/sonic-146/0x97a10beebb25e0ebfa55ca0a7d00e37afe957dea/) | STTX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8221312e9cf90a2b160ecdabf922408a5ef1cf9e`](./contracts/sonic-146/0x8221312e9cf90a2b160ecdabf922408a5ef1cf9e/) | VoteEscrowedSTTX | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 86 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19208] compound-governance.pdf
- [19209] www.openzeppelin.com/news/compound-audit
- [19210] compound-3.pdf
- [19211] compound-2.pdf
- [19212] www.openzeppelin.com/news/compound-finance-patch-audit
- [19213] www.openzeppelin.com/news/compound-finance-mcd-dsr-integration
- [19214] www.openzeppelin.com/news/compound-alpha-governance-system-audit
- [19215] www.openzeppelin.com/news/compound-tether-integration-audit
- [25007] www.chainsecurity.com/security-audit/compound-iii
- [25008] www.openzeppelin.com/news/compound-iii-audit
- [25009] www.openzeppelin.com/news/compound-comp-distribution-system-audit

Fork inheritance lineage and inherited audits are included when available.
