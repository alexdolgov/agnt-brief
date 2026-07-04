# Agentic Audit Brief: Liquity

## Project Overview

- Project: Liquity (`liquity`)
- Website: [https://www.liquity.org/](https://www.liquity.org/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.589Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, avalanche, base, berachain, ethereum, hyperliquid, optimism, scroll, sonic, swellchain
- Contract surface: 112 unique implementations (171 raw deployments)
- DeFi Llama TVL: $204,759,211.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 70 project-authored contract(s) across 3 chain(s); 6 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 15 common project-authored base contract(s) (dsmath, dsauth, dsauthevents). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 211; live-surface contracts included: 171 (102 live, 69 unknown).
- Excluded by liveness: 40 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 16/44 (36.4%)
- Deployed-live implementations: 44 of 112 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 16/44
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 68
- Unique implementations: 112
- Raw deployments: 171
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 16 match-unverified
- Tier 1 coverage: 22.7% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Coinspect | Tier 2 | 16 | 36.4% | 2025-01 |
| yAudit | Tier 2 | 16 | 36.4% | 2021-03 |
| Trail of Bits | Tier 1 | 10 | 22.7% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ActivePool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x531a8f...7919a0`](./contracts/ethereum-1/0x531a8f99c70d6a56a7cee02d6b4281650d7919a0/); ethereum `0x9074d7...79532f`; ethereum `0xdf9eb2...fe3d7f`; ethereum `0xeb5a8c...b16afe` | ✅ Audited |
| BorrowerOperations | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/); ethereum `0x372abd...46bc65`; ethereum `0xa741a3...7d5da3`; ethereum `0xe8119f...a17329` | ✅ Audited |
| CollSurplusPool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x36e6cb...d0a235`](./contracts/ethereum-1/0x36e6cbdf68f64cf00fc3a6c634a25be32dd0a235/); ethereum `0x3d32e8...ce5521`; ethereum `0xba4a2b...3192bf`; ethereum `0xedbe25...50e2bf` | ✅ Audited |
| CommunityIssuance | unknown | ethereum | n/a | [`0xd8c9d9...08d816`](./contracts/ethereum-1/0xd8c9d9071123a059c6e0a945cf0e0c82b508d816/) | ✅ Audited |
| DefaultPool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x5cc5ce...ddcd6b`](./contracts/ethereum-1/0x5cc5cefd034fdc4728d487a72ca58a410cddcd6b/); ethereum `0x896a3f...0d741c`; ethereum `0xd45582...e5b1a0`; ethereum `0xd796e1...6a22a1` | ✅ Audited |
| GasPool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x45c81d...8dad41`](./contracts/ethereum-1/0x45c81dce308389e1bee63ae30a04fb1e148dad41/); ethereum `0x7b9ab3...bcf921`; ethereum `0x8c44fb...81db1f`; ethereum `0x9555b0...49a8d9` | ✅ Audited |
| HintHelpers | periphery | ethereum | n/a | 2 deployments: ethereum [`0xe84251...f997c0`](./contracts/ethereum-1/0xe84251b93d9524e0d2e621ba7dc7cb3579f997c0/); ethereum `0xf0cae1...cbe657` | ✅ Audited |
| LQTYStaking | unknown | ethereum | n/a | [`0x4f9fbb...fc605d`](./contracts/ethereum-1/0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d/) | ✅ Audited |
| LQTYToken | token | ethereum | n/a | [`0x6dea81...88c54d`](./contracts/ethereum-1/0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d/) | ✅ Audited |
| LUSDToken | token | ethereum | n/a | [`0x5f9880...568ba0`](./contracts/ethereum-1/0x5f98805a4e8be255a32880fdec7f6728c6568ba0/) | ✅ Audited |
| MultiTroveGetter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xfa61db...31d235`](./contracts/ethereum-1/0xfa61db085510c64b83056db3a7acf3b6f631d235/); ethereum `0xfc92d0...49922b` | ✅ Audited |
| SortedTroves | unknown | ethereum | n/a | 4 deployments: ethereum [`0x14d8d8...24f386`](./contracts/ethereum-1/0x14d8d8011df2b396ed2bbc4959bb73250324f386/); ethereum `0x84eb85...2e86f1`; ethereum `0x8fdd3f...a741a6`; ethereum `0xa25269...3063f4` | ✅ Audited |
| StabilityPool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x5721cb...4cf9bf`](./contracts/ethereum-1/0x5721cbbd64fc7ae3ef44a0a3f9a790a9264cf9bf/); ethereum `0x66017d...5a21bb`; ethereum `0x9502b7...ebe56b`; ethereum `0xd442e4...148695` | ✅ Audited |
| TellorCaller | unknown | ethereum | n/a | [`0xad4305...641112`](./contracts/ethereum-1/0xad430500ecda11e38c9bcb08a702274b94641112/) | ✅ Audited |
| TroveManager | governance | ethereum | n/a | 4 deployments: ethereum [`0x7bcb64...76cf5a`](./contracts/ethereum-1/0x7bcb64b2c9206a5b699ed43363f6f98d4776cf5a/); ethereum `0xa2895d...928b22`; ethereum `0xa39739...cf4bb2`; ethereum `0xb2b2ab...e3e19e` | ✅ Audited |
| Unipool | core_logic | ethereum | n/a | [`0xd37a77...bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressesRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x610604...3e8789`](./contracts/ethereum-1/0x6106046f031a22713697e04c08b330ddaf3e8789/); ethereum `0x8d733f...3aac54` | ⚠️ Unaudited |
| AddressSetStorage | unknown | ethereum | n/a | [`0xd4ae25...1c6a16`](./contracts/ethereum-1/0xd4ae2511df21f367792ba4d67c6eb032171c6a16/) | ⚠️ Unaudited |
| BoldToken | token | ethereum | n/a | [`0x6440f1...beb01d`](./contracts/ethereum-1/0x6440f144b7e50d6a8439336510312d2f54beb01d/) | ⚠️ Unaudited |
| BurnMintERC20 | token | optimism | n/a | 7 deployments: optimism [`0x03569c...81b01d`](./contracts/optimism-10/0x03569cc076654f82679c4ba2124d64774781b01d/); sonic `0xc6e53b...e6ae08`; sonic `0xf05a20...8cb1c9`; base [`0x03569c...81b01d`](./contracts/base-8453/0x03569cc076654f82679c4ba2124d64774781b01d/); arbitrum [`0x03569c...81b01d`](./contracts/arbitrum-42161/0x03569cc076654f82679c4ba2124d64774781b01d/); berachain `0xf05a20...8cb1c9`; scroll [`0x03569c...81b01d`](./contracts/scroll-534352/0x03569cc076654f82679c4ba2124d64774781b01d/) | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | sonic | n/a | 4 deployments: sonic [`0x10a9de...4b7d92`](./contracts/sonic-146/0x10a9de252eb9e11841fa58b18fd09ab43d4b7d92/); sonic `0xcfc509...bf3d1b`; berachain [`0x10a9de...4b7d92`](./contracts/berachain-80094/0x10a9de252eb9e11841fa58b18fd09ab43d4b7d92/); berachain `0xcfc509...bf3d1b` | ⚠️ Unaudited |
| CollateralRegistry | registry | ethereum | n/a | [`0xf94998...386684`](./contracts/ethereum-1/0xf949982b91c8c61e952b3ba942cbbfaef5386684/) | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x7ed17e...18f12b`](./contracts/ethereum-1/0x7ed17e037b7d88a8270c89b3afa9c38e5218f12b/); ethereum `0xefc651...a54b3e` | ⚠️ Unaudited |
| CurveV2GaugeRewards | operational_periphery | ethereum | n/a | [`0xba415a...ee33b4`](./contracts/ethereum-1/0xba415afa8fcd65196764b5e08cb4dbf90bee33b4/) | ⚠️ Unaudited |
| GasCompZapper | adapter | ethereum | n/a | 2 deployments: ethereum [`0xbd69d3...c4127d`](./contracts/ethereum-1/0xbd69d3e0ea967d146e925b7572b765c8e9c4127d/); ethereum `0xbe8b23...ab636f` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | n/a | [`0xdc6f86...f7f690`](./contracts/ethereum-1/0xdc6f869d2d34e4aee3e89a51f2af6d54f0f7f690/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | [`0x807def...d6eee1`](./contracts/ethereum-1/0x807def5e7d057df05c796f4bc75c3fe82bd6eee1/) | ⚠️ Unaudited |
| LeverageLSTZapper | adapter | ethereum | n/a | 2 deployments: ethereum [`0x75036b...3211a2`](./contracts/ethereum-1/0x75036b1d6de5665c60f5c33bb4a64e8e123211a2/); ethereum `0xe85230...df0a56` | ⚠️ Unaudited |
| LeverageWETHZapper | adapter | ethereum | n/a | [`0xdccbd7...770ae3`](./contracts/ethereum-1/0xdccbd7a365aee086aa3b4ede8afe895b20770ae3/) | ⚠️ Unaudited |
| LiquidityGaugeV6 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x07a014...ad05e9`](./contracts/ethereum-1/0x07a01471fa544d9c6531b631e6a96a79a9ad05e9/); ethereum `0xa37cdc...5d6c5c` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | n/a | [`0xdb46c2...546296`](./contracts/ethereum-1/0xdb46c277da1599390eab394327602889e9546296/) | ⚠️ Unaudited |
| MetadataNFT | token | ethereum | n/a | 3 deployments: ethereum [`0x340087...7171af`](./contracts/ethereum-1/0x3400874305e1547020fb8e80eaf1308b757171af/); ethereum `0x362f82...f682a1`; ethereum `0x9b36c3...af4a12` | ⚠️ Unaudited |
| RedemptionHelper | periphery | ethereum | n/a | [`0xb36625...f07b80`](./contracts/ethereum-1/0xb366256d033ae7e4f7bddec822a5adec9df07b80/) | ⚠️ Unaudited |
| RETHPriceFeed | unknown | ethereum | n/a | [`0x34f1e9...8b7b2b`](./contracts/ethereum-1/0x34f1e9c7dcc279ec70d3c4488eb2d80fba8b7b2b/) | ⚠️ Unaudited |
| RocketTokenRETH | token | ethereum | n/a | [`0xae7873...fc6393`](./contracts/ethereum-1/0xae78736cd615f374d3085123a210448e74fc6393/) | ⚠️ Unaudited |
| TroveNFT | token | ethereum | n/a | 3 deployments: ethereum [`0x1a0fc0...838013`](./contracts/ethereum-1/0x1a0fc0b843afd9140267d25d4e575cb37a838013/); ethereum `0x7ae430...4c0873`; ethereum `0x857aec...a31b04` | ⚠️ Unaudited |
| UniV4MerklRewards | unknown | ethereum | n/a | 3 deployments: ethereum [`0x16897a...8d24b6`](./contracts/ethereum-1/0x16897a8a7713d0f709a914d9d05edf6b598d24b6/); ethereum `0xb42448...54f615`; ethereum `0xe9a4cf...1dff49` | ⚠️ Unaudited |
| UniV4MerklRewardsWrapper | unknown | ethereum | n/a | [`0x82e293...57238e`](./contracts/ethereum-1/0x82e29308c96c2bebddc90b4a2e4ee7e60d57238e/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 14 deployments: ethereum [`0x513251...1affad`](./contracts/ethereum-1/0x513251fab2542532753972b8fe9a7b60621affad/); ethereum `0x6875ce...34914f`; ethereum `0x707f91...963fc8`; ethereum `0x777cee...34051d`; ethereum `0x7859f9...f21ee4`; ethereum `0x7b64b0...3d6bdd`; ethereum `0x86bb5d...39c2ae`; ethereum `0xa9b2f5...7fa70e`; ethereum `0xb2022e...feaa52`; ethereum `0xdb99fd...bfa321`; ethereum `0xe3c8a4...697fb7`; ethereum `0xf8b237...c1ffad`; ethereum `0xfb2731...0da180`; ethereum `0xfef762...33fe27` | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WETHPriceFeed | operational_periphery | ethereum | n/a | [`0xcc5f81...03c24f`](./contracts/ethereum-1/0xcc5f8102eb670c89a4a3c567c13851260303c24f/) | ⚠️ Unaudited |
| WETHZapper | adapter | ethereum | n/a | [`0x7022a4...e70c1f`](./contracts/ethereum-1/0x7022a4f4a2b9f0c30a5eb0b0073a8bb4c8e70c1f/) | ⚠️ Unaudited |
| WstETH | token | ethereum | n/a | [`0x7f39c5...5e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| WSTETHPriceFeed | operational_periphery | ethereum | n/a | [`0xe7aa2b...6e314e`](./contracts/ethereum-1/0xe7aa2ba9e086a379d3beb224098bc634a46e314e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (68)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0cbd55...390940` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d126c...c00c60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d64d8...50fbd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x102560...5df38b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x127f3c...a9199b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15f73a...6f5605` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x183739...a98908` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ff103...26f4da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20826b...363058` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20bdda...9a55b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x230557...37b15e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c6f75...35b507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ff889...b8854d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31d687...cda740` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x335926...f90c3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x362b56...9dfce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x384c53...293036` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ad977...98f8a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bd1ee...3ca5af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x402fa0...2584b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x411ea3...9e93b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46695c...003ee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x471208...0a8732` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c209a...223d28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c9ad5...1c9acd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56de9e...fa51a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4997...5c76c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4ba4...789c09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5cca54...f563d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76d8a5...b14646` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cf03c...55ea3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d3701...6b4877` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84f162...cbf197` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x884acf...881c42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x897c79...ebc249` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89f800...389aa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b00a8...af293b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cbd1d...aeed7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92bfd0...fb3e9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9843e5...bd50ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98bc79...4cf142` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e978e...73fdd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f4ef8...57df75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f6de3...1f2423` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fcb31...35be6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa71a6c...905627` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb45d37...c4d05b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc61d91...f4a581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc77841...0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc882b9...2b0d9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbc21c...efe931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3f3c5...8a8a89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6eaa2...a68e1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe81930...a59891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef0594...5e8173` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4a3fe...6483e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf50db8...785f99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf68393...8fbf14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf85903...287c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf88cbc...c08ff4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff0eb5...489010` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x39b59c...c48b5e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x48fd11...f9aab1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x84533b...dbb11a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcfc509...bf3d1b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe9f1f1...0baaec` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | n/a | `0x1a17b2...bb0d8c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x03569c...81b01d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Liquity.pdf](https://github.com/trailofbits/publications/blob/master/reviews/Liquity.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | contract_name | 10 | n/a |
| [www.coinspect.com/blog/liquity-audit](https://www.coinspect.com/blog/liquity-audit) | unknown | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [Liquity - Smart Contract Audit 2021.pdf](https://www.coinspect.com/doc/Liquity%20%2D%20Smart%20Contract%20Audit%202021%2Epdf) | yAudit | Audit | 2021-03 | stale | Direct | contract_name | 16 | n/a |
| [www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit](https://www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit) | Coinspect | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit](https://www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit) | Coinspect | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Liquity - Smart Contract Audit 2021.pdf](https://www.coinspect.com/doc/Liquity%20%2D%20Smart%20Contract%20Audit%202021.pdf) | Coinspect | Audit | 2021-03 | stale | Direct | contract_name | 16 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 112 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=42

Zero-match audit list:

- [13391] www.coinspect.com/blog/liquity-audit
- [13393] www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit
- [13394] www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit

Fork inheritance lineage and inherited audits are included when available.
