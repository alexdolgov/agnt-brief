# Agentic Audit Brief: Meter Passport

## Project Overview

- Project: Meter Passport (`meter-passport`)
- Website: [https://passport.meter.io](https://passport.meter.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:23.477Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc, ethereum, moonbeam, moonriver, polygon
- Contract surface: 86 unique implementations (86 raw deployments)
- DeFi Llama TVL: $773,200.60
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 84 project-authored contract(s) across 5 chain(s); 25 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 21 common project-authored base contract(s) (erc20detailed, erc20basic, blacklistable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 86; live-surface contracts included: 86 (86 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/86 (0.0%)
- Deployed-live implementations: 86 of 86 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/86
- Verified + Unaudited implementations: 86
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 86
- Raw deployments: 86
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (86)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x0142ed...6d9b83`](./contracts/bsc-56/0x0142ed98ecc63daec2a6cb90b73d6d405d6d9b83/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x17f084...67aa81`](./contracts/bsc-56/0x17f084dff8a71e38521bcbd3da871753dc67aa81/) | ⚠️ Unaudited |
| AMPLChainBridgeGateway | unknown | ethereum | n/a | [`0x48bc03...6f6bbb`](./contracts/ethereum-1/0x48bc03bc755ac3e8cc511d9d480a5bffb16f6bbb/) | ⚠️ Unaudited |
| AmplElasticCRP | unknown | ethereum | n/a | [`0x49f2be...e7786f`](./contracts/ethereum-1/0x49f2beff98ce62999792ec98d0ee4ad790e7786f/) | ⚠️ Unaudited |
| AmplElasticCRPWrapper | unknown | ethereum | n/a | [`0xe39953...be229a`](./contracts/ethereum-1/0xe39953deac442fd5a2ccd1ca3a1f5b4b90be229a/) | ⚠️ Unaudited |
| AMPLMaticRebaseGateway | unknown | ethereum | n/a | [`0x6625aa...8a7681`](./contracts/ethereum-1/0x6625aa109bc11d18aa6f219d453e9dba728a7681/) | ⚠️ Unaudited |
| AMPLMaticTransferGateway | unknown | ethereum | n/a | [`0x27b4fd...b83543`](./contracts/ethereum-1/0x27b4fdaed477f018fd2e2024c7dc5291f0b83543/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | moonriver | n/a | [`0xe3f5a9...a0ad7d`](./contracts/moonriver-1285/0xe3f5a90f9cb311505cd691a46596599aa1a0ad7d/) | ⚠️ Unaudited |
| App | unknown | ethereum | n/a | [`0x4ab5ff...dcd9ba`](./contracts/ethereum-1/0x4ab5ff14f658f1aa122f56ca86cf5f5682dcd9ba/) | ⚠️ Unaudited |
| BatchTxCaller | unknown | ethereum | n/a | [`0x36aaf4...398400`](./contracts/ethereum-1/0x36aaf46cab4b6e5390fb44311b5664a71a398400/) | ⚠️ Unaudited |
| BatchTxExecutor | unknown | bsc | n/a | [`0x0c0144...1b589e`](./contracts/bsc-56/0x0c0144d04594ab99f4c02691b6684e3d871b589e/) | ⚠️ Unaudited |
| BEP20Token | unknown | bsc | n/a | [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/) | ⚠️ Unaudited |
| Bepro | unknown | moonbeam | n/a | [`0x4edf8e...426f88`](./contracts/moonbeam-1284/0x4edf8e0778967012d46968ceadb75436d0426f88/) | ⚠️ Unaudited |
| BetProtocolToken | unknown | ethereum | n/a | [`0xcf3c8b...03d36a`](./contracts/ethereum-1/0xcf3c8be2e2c42331da80ef210e9b1b307c03d36a/) | ⚠️ Unaudited |
| BridgeUpgradeable | unknown | moonbeam | n/a | [`0x2e8fc3...71e940`](./contracts/moonbeam-1284/0x2e8fc3d4399c9c775746469412b344716471e940/) | ⚠️ Unaudited |
| bsc_bridge | unknown | bsc | n/a | [`0xcdc5de...ff92ca`](./contracts/bsc-56/0xcdc5deefa9f540bac261829b6c64163e2cff92ca/) | ⚠️ Unaudited |
| ChainBridgeBatchRebaseReport | unknown | ethereum | n/a | [`0x454de9...d07e29`](./contracts/ethereum-1/0x454de9c544fcae74eb09c57a042349d3ead07e29/) | ⚠️ Unaudited |
| ChainBridgeXCAmpleGateway | unknown | bsc | n/a | [`0x0c318c...b0311c`](./contracts/bsc-56/0x0c318c047e8038e9a5e7ac613e73c39220b0311c/) | ⚠️ Unaudited |
| CityFactory | unknown | moonbeam | n/a | [`0x66182e...9c5c94`](./contracts/moonbeam-1284/0x66182e72c7d3b1268d304a48ddd9bd4a5d9c5c94/) | ⚠️ Unaudited |
| CityNft | unknown | moonbeam | n/a | [`0x7cdc5d...2615dc`](./contracts/moonbeam-1284/0x7cdc5d0188733edf08412eecb9afa840772615dc/) | ⚠️ Unaudited |
| CityNftSale | unknown | moonbeam | n/a | [`0x9326ff...c79d51`](./contracts/moonbeam-1284/0x9326ffc875b32677132184e68bccc6fd75c79d51/) | ⚠️ Unaudited |
| CitySwapParams | unknown | moonbeam | n/a | [`0xb4d9d2...e53ea0`](./contracts/moonbeam-1284/0xb4d9d2ace6ecbc3264ef5fa8329ebfb467e53ea0/) | ⚠️ Unaudited |
| CLIQ | unknown | ethereum | n/a | [`0x0def8d...826767`](./contracts/ethereum-1/0x0def8d8adde14c9ef7c2a986df3ea4bd65826767/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0xca0641...febeb7`](./contracts/ethereum-1/0xca06411bd7a7296d7dbdd0050dfc846e95febeb7/) | ⚠️ Unaudited |
| CrownsToken | unknown | ethereum | n/a | [`0xac0104...8c33e0`](./contracts/ethereum-1/0xac0104cca91d167873b8601d2e71eb3d4d8c33e0/) | ⚠️ Unaudited |
| Dai | unknown | ethereum | n/a | [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | ⚠️ Unaudited |
| DistibutionContract1 | unknown | ethereum | n/a | [`0x763e3e...206008`](./contracts/ethereum-1/0x763e3ee4ee9cac68200e0d358ab10f5136206008/) | ⚠️ Unaudited |
| DistibutionContract2 | unknown | ethereum | n/a | [`0x531a9f...ac8273`](./contracts/ethereum-1/0x531a9f9f384be2a3acd9581d574bd47e65ac8273/) | ⚠️ Unaudited |
| DistibutionContract3 | unknown | ethereum | n/a | [`0xafea45...6b7a04`](./contracts/ethereum-1/0xafea4511e634928f3a70b18ae565cd07736b7a04/) | ⚠️ Unaudited |
| DistibutionContract4 | unknown | ethereum | n/a | [`0x126b53...b95861`](./contracts/ethereum-1/0x126b53a1b0f6d036f4ef93a4e5af984bb4b95861/) | ⚠️ Unaudited |
| DistibutionContract5 | unknown | ethereum | n/a | [`0xa6972f...721805`](./contracts/ethereum-1/0xa6972fd8b71e7af7173e18a3ed986114bb721805/) | ⚠️ Unaudited |
| Distributor | unknown | ethereum | n/a | [`0x3c4b07...6232c7`](./contracts/ethereum-1/0x3c4b07ecdad1b58ac05fa5a3c3c598b1c16232c7/) | ⚠️ Unaudited |
| ERC20Handler | unknown | ethereum | n/a | [`0xccf4a9...4aad9d`](./contracts/ethereum-1/0xccf4a9fdee040782a6a37a65c986c23d964aad9d/) | ⚠️ Unaudited |
| ERC20HandlerUpgradeable | unknown | ethereum | n/a | [`0x3de382...0422a8`](./contracts/ethereum-1/0x3de3826f4d28cf8bbc854c34a16753e9150422a8/) | ⚠️ Unaudited |
| ERC20MinterBurnerPauser | unknown | moonriver | n/a | [`0x090916...bc5213`](./contracts/moonriver-1285/0x090916ac145b613c1481aab198168c3a37bc5213/) | ⚠️ Unaudited |
| Factory | unknown | ethereum | n/a | [`0xe5a5f1...f2322b`](./contracts/ethereum-1/0xe5a5f138005e19a3e6d0fe68b039397eeef2322b/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| ForthClaim | unknown | ethereum | n/a | [`0xf497b8...2d03a1`](./contracts/ethereum-1/0xf497b83cfbd31e7ba1ab646f3b50ae0af52d03a1/) | ⚠️ Unaudited |
| GenericHandler | unknown | ethereum | n/a | [`0x30b702...e7e3b1`](./contracts/ethereum-1/0x30b7026e9e5b35c844f6b115ab4558c3f7e7e3b1/) | ⚠️ Unaudited |
| ImplementationDirectory | unknown | ethereum | n/a | [`0x287666...2c97bb`](./contracts/ethereum-1/0x287666565af226634a4d425943b84c88152c97bb/) | ⚠️ Unaudited |
| LpMining | unknown | bsc | n/a | [`0x82b6ed...bd5605`](./contracts/bsc-56/0x82b6ed562f202e76a5bdbb209e077f4a96bd5605/) | ⚠️ Unaudited |
| MainToken | unknown | ethereum | n/a | [`0xabe580...22e6be`](./contracts/ethereum-1/0xabe580e7ee158da464b51ee1a83ac0289622e6be/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| MedianOracle | unknown | ethereum | n/a | [`0x99c977...2d8914`](./contracts/ethereum-1/0x99c9775e076fdf99388c029550155032ba2d8914/) | ⚠️ Unaudited |
| Members | unknown | ethereum | n/a | [`0x3e8640...107ac5`](./contracts/ethereum-1/0x3e8640574aa764763291ed733672d3a105107ac5/) | ⚠️ Unaudited |
| MeterGovERC20V1_1 | unknown | ethereum | n/a | [`0xbd2949...988a9f`](./contracts/ethereum-1/0xbd2949f67dcdc549c6ebe98696449fa79d988a9f/) | ⚠️ Unaudited |
| MeterGovProxy | unknown | ethereum | n/a | [`0x29e9fd...735e32`](./contracts/ethereum-1/0x29e9fdf5933824ad21bc6dbb8bf156efa3735e32/) | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | ethereum | n/a | [`0x003ea7...f15505`](./contracts/ethereum-1/0x003ea7f54b6dcf6cee86986edc18143a35f15505/) | ⚠️ Unaudited |
| MscpToken | unknown | bsc | n/a | [`0x27d724...2b297a`](./contracts/bsc-56/0x27d72484f1910f5d0226afa4e03742c9cd2b297a/) | ⚠️ Unaudited |
| Multicall | unknown | moonbeam | n/a | [`0x83e3b6...f7f36b`](./contracts/moonbeam-1284/0x83e3b61886770de2f64aacad2724ed4f08f7f36b/) | ⚠️ Unaudited |
| Multicall2 | unknown | moonbeam | n/a | [`0x647720...897bb2`](./contracts/moonbeam-1284/0x6477204e12a7236b9619385ea453f370ad897bb2/) | ⚠️ Unaudited |
| MultiSend | unknown | moonbeam | n/a | [`0xd22497...b08836`](./contracts/moonbeam-1284/0xd224973b558d9b0c3a782d8984f8ff3932b08836/) | ⚠️ Unaudited |
| NEC | unknown | ethereum | n/a | [`0xcc80c0...b97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | ⚠️ Unaudited |
| NectarController | unknown | ethereum | n/a | [`0x8d5a41...05d98d`](./contracts/ethereum-1/0x8d5a41e85f4ce2433beef476305d307b9205d98d/) | ⚠️ Unaudited |
| NftFactory | unknown | bsc | n/a | [`0xa304d2...ad437d`](./contracts/bsc-56/0xa304d289f6d0a30aeb33e9243f47efa3a9ad437d/) | ⚠️ Unaudited |
| NftMarket | unknown | moonbeam | n/a | [`0xe56355...a10016`](./contracts/moonbeam-1284/0xe563557fd604e3a40fff57a8f5b9082aaea10016/) | ⚠️ Unaudited |
| NftSwap | unknown | moonbeam | n/a | [`0x8b4eba...e3ff8f`](./contracts/moonbeam-1284/0x8b4eba83ff7b2985924d05b9d0a064b9c6e3ff8f/) | ⚠️ Unaudited |
| Orchestrator | unknown | ethereum | n/a | [`0x24232c...74746d`](./contracts/ethereum-1/0x24232ccaf8bb87908c419ad7ddcca8cc9e74746d/) | ⚠️ Unaudited |
| Package | unknown | ethereum | n/a | [`0x722bcc...cf972e`](./contracts/ethereum-1/0x722bcc1c85037c7c233eff80f3c057b980cf972e/) | ⚠️ Unaudited |
| PolkamarketsToken | unknown | ethereum | n/a | [`0xd47816...f1cfbf`](./contracts/ethereum-1/0xd478161c952357f05f0292b56012cd8457f1cfbf/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x027dbc...e53aa7`](./contracts/bsc-56/0x027dbca046ca156de9622cd1e2d907d375e53aa7/) | ⚠️ Unaudited |
| Rib | unknown | moonbeam | n/a | [`0x4bde98...e6e5ce`](./contracts/moonbeam-1284/0x4bde98731149093a12579d71338fd3741fe6e5ce/) | ⚠️ Unaudited |
| RightsManager | unknown | ethereum | n/a | [`0x2992a0...2b9e28`](./contracts/ethereum-1/0x2992a06af9b5e156cd6574049d37ad8da52b9e28/) | ⚠️ Unaudited |
| Sale | unknown | ethereum | n/a | [`0x6dd25c...b0fdfd`](./contracts/ethereum-1/0x6dd25ce9a4e09d16c6ab2a2e9caa373aaeb0fdfd/) | ⚠️ Unaudited |
| SeascapeNft | unknown | bsc | n/a | [`0xc54b96...6ac6c8`](./contracts/bsc-56/0xc54b96b04aa8828b63cf250408e1084e9f6ac6c8/) | ⚠️ Unaudited |
| setNumberContract | unknown | moonbeam | n/a | [`0x70755c...60803f`](./contracts/moonbeam-1284/0x70755c95cad4d6917c51e49d4fbc932efd60803f/) | ⚠️ Unaudited |
| SetText | unknown | moonbeam | n/a | [`0x65bf1e...d1d27e`](./contracts/moonbeam-1284/0x65bf1e4a5af9939549afc7c8e9d2438f5ed1d27e/) | ⚠️ Unaudited |
| SmartPoolManager | unknown | ethereum | n/a | [`0xa854ec...d43b86`](./contracts/ethereum-1/0xa854ecc4d8bf77cad542a04087fc6e0082d43b86/) | ⚠️ Unaudited |
| standardToken | unknown | polygon | n/a | [`0xf30501...b40320`](./contracts/polygon-137/0xf305012ea754252184f1071c86ae99fac5b40320/) | ⚠️ Unaudited |
| SwapSigner | unknown | moonbeam | n/a | [`0xbfb0b8...edcc69`](./contracts/moonbeam-1284/0xbfb0b85fdbf132bb23db11f9c9aa72a153edcc69/) | ⚠️ Unaudited |
| TetherToken | unknown | ethereum | n/a | [`0x0e98db...fdba1b`](./contracts/ethereum-1/0x0e98db51010dd1ade14dd3fb164e218805fdba1b/) | ⚠️ Unaudited |
| TokenGeyser | unknown | ethereum | n/a | [`0x0142ed...6d9b83`](./contracts/ethereum-1/0x0142ed98ecc63daec2a6cb90b73d6d405d6d9b83/) | ⚠️ Unaudited |
| TokenVault | unknown | ethereum | n/a | [`0x805c7e...07de2f`](./contracts/ethereum-1/0x805c7ecba41f9321bb098ec1cf31d86d9407de2f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x0b9709...c7da9a`](./contracts/polygon-137/0x0b9709fe3aa76068f07d054fd4417445d5c7da9a/) | ⚠️ Unaudited |
| UFragments | unknown | ethereum | n/a | [`0x027dbc...e53aa7`](./contracts/ethereum-1/0x027dbca046ca156de9622cd1e2d907d375e53aa7/) | ⚠️ Unaudited |
| UFragmentsPolicy | unknown | ethereum | n/a | [`0x14e733...58f477`](./contracts/ethereum-1/0x14e73381e5e29b00f91a1a6709d6f4509158f477/) | ⚠️ Unaudited |
| UTUToken | unknown | ethereum | n/a | [`0x804dd5...150993`](./contracts/ethereum-1/0x804dd5e6c45181b0b13ab58a3480956026150993/) | ⚠️ Unaudited |
| WBTC | unknown | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WETH9 | unknown | moonbeam | n/a | [`0xacc15d...c6077f`](./contracts/moonbeam-1284/0xacc15dc74880c9944775448304b263d191c6077f/) | ⚠️ Unaudited |
| WrapperLockEth | unknown | ethereum | n/a | [`0x991f0e...f3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | ⚠️ Unaudited |
| XFT_FARM | unknown | bsc | n/a | [`0xc5d4b6...621d93`](./contracts/bsc-56/0xc5d4b6fad11bf3ac46862155a79dbbb7ee621d93/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [[HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf](https://github.com/meterio/Passportv2Contracts/blob/main/audit/%5BHAECHI%20AUDIT%5D%20Meter%20Bridge%20Smart%20Contract%20Audit%20Report%20v1.2.pdf) | HAECHI AUDIT | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [[HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf](https://github.com/meterio/Passportv2Contracts/blob/main/audit/%5BHAECHI%20AUDIT%5D%20Meter%20Bridge%20Smart%20Contract%20Audit%20Report%20v1.1.pdf) | HAECHI AUDIT | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 86 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21325] [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.2.pdf
- [21326] [HAECHI AUDIT] Meter Bridge Smart Contract Audit Report v1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
