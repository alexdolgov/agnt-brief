# Agentic Audit Brief: Hinkal

## Project Overview

- Project: Hinkal (`hinkal`)
- Website: [https://hinkal.pro](https://hinkal.pro)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.506Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 1470 unique implementations (1470 raw deployments)
- DeFi Llama TVL: $620,966.74
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Privacy. Structurally: 1324 project-authored contract(s) across 5 chain(s); 4 ERC4626 vaults, 277 ERC20 tokens, 21 ERC721 NFTs, 4 ERC1155 multi-tokens, 11 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 198 common project-authored base contract(s) (erc20withpermit, checkpoints, ctokeninterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 1470; live-surface contracts included: 1470 (1464 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1252 (0.0%)
- Deployed-live implementations: 1464 of 1470 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1470
- Verified + Unaudited implementations: 1470
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1470
- Raw deployments: 1470
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1470)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveStrategy | unknown | ethereum | n/a | [`0x051cae...b176b6`](./contracts/ethereum-1/0x051caefa90adf261b8e8200920c83778b7b176b6/) | ⚠️ Unaudited |
| AccessController | unknown | polygon | n/a | [`0x21cd9d...1bb592`](./contracts/polygon-137/0x21cd9de229d6c9db9bdf20cfad075dca991bb592/) | ⚠️ Unaudited |
| AcreMultiAssetVault | unknown | ethereum | n/a | [`0x4a6e0d...afd18d`](./contracts/ethereum-1/0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d/) | ⚠️ Unaudited |
| ActionAddRemoveLiq | unknown | ethereum | n/a | [`0x3bbacd...a897da`](./contracts/ethereum-1/0x3bbacda010e7f4347e54f2bf0f42ff30b5a897da/) | ⚠️ Unaudited |
| ActionAddRemoveLiqV3 | unknown | ethereum | n/a | [`0x24ec4b...002744`](./contracts/ethereum-1/0x24ec4b068140dd3c0d63d904a24656c6fd002744/) | ⚠️ Unaudited |
| ActionCallback | unknown | ethereum | n/a | [`0x09f4ac...1c3d07`](./contracts/ethereum-1/0x09f4acb1023fe06e0f7a2f8f1ae9ae2c011c3d07/) | ⚠️ Unaudited |
| ActionInfoStatic | unknown | ethereum | n/a | [`0x3f9f34...88f23b`](./contracts/ethereum-1/0x3f9f34113254cff59ce94af85982f7d75588f23b/) | ⚠️ Unaudited |
| ActionMarketAuxStatic | unknown | ethereum | n/a | [`0x33f707...f0a836`](./contracts/ethereum-1/0x33f7077b62fa30c865813708ebed535a5ef0a836/) | ⚠️ Unaudited |
| ActionMarketCoreStatic | unknown | ethereum | n/a | [`0x519f39...698080`](./contracts/ethereum-1/0x519f3907379491c291cf7b98425f35036a698080/) | ⚠️ Unaudited |
| ActionMintRedeem | unknown | ethereum | n/a | [`0x4dba36...185369`](./contracts/ethereum-1/0x4dba367d0f05bcd6a405f3d90c4c4fd93e185369/) | ⚠️ Unaudited |
| ActionMintRedeemStatic | unknown | ethereum | n/a | [`0x1812a7...437ed6`](./contracts/ethereum-1/0x1812a77aa47f40c84fc46deb0644c1a486437ed6/) | ⚠️ Unaudited |
| ActionMisc | unknown | ethereum | n/a | [`0xfc49c4...94065c`](./contracts/ethereum-1/0xfc49c4fec5306c73cd21661f9b2fe4b14f94065c/) | ⚠️ Unaudited |
| ActionStorageStatic | unknown | ethereum | n/a | [`0x0a60b5...46d2a1`](./contracts/ethereum-1/0x0a60b5d39b27e18f63aa937ad09acc2b3d46d2a1/) | ⚠️ Unaudited |
| ActionSwapPT | unknown | ethereum | n/a | [`0x6c0df4...51bf50`](./contracts/ethereum-1/0x6c0df4896b4b57dcc6d121aa4fd8569b4451bf50/) | ⚠️ Unaudited |
| ActionSwapPTV3 | unknown | ethereum | n/a | [`0x209829...9747fd`](./contracts/ethereum-1/0x209829e8082b96031fbc5f717aa4deab0c9747fd/) | ⚠️ Unaudited |
| ActionSwapPTYT | unknown | ethereum | n/a | [`0x5f438e...41c3b7`](./contracts/ethereum-1/0x5f438e5d032fd933fca63335a8097b466241c3b7/) | ⚠️ Unaudited |
| ActionSwapYT | unknown | ethereum | n/a | [`0x41d81d...1a0d64`](./contracts/ethereum-1/0x41d81daf401a0aa7422a769243fa933f351a0d64/) | ⚠️ Unaudited |
| ActionSwapYTV3 | unknown | ethereum | n/a | [`0x32ed8f...1d158d`](./contracts/ethereum-1/0x32ed8fc44a5608d22519dca5a5a135f9661d158d/) | ⚠️ Unaudited |
| Address | unknown | ethereum | n/a | [`0x1ed976...ea0aab`](./contracts/ethereum-1/0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab/) | ⚠️ Unaudited |
| AddressProvider | unknown | polygon | n/a | [`0x534148...e05d7b`](./contracts/polygon-137/0x534148d8cda5c252c97671053408da46c5e05d7b/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x8e870d...8289e1`](./contracts/ethereum-1/0x8e870d67f660d95d5be530380d0ec0bd388289e1/) | ⚠️ Unaudited |
| AgentTimelock | unknown | optimism | n/a | [`0x180326...ae9688`](./contracts/optimism-10/0x180326708fddf39c38294b28ff89a829bcae9688/) | ⚠️ Unaudited |
| AgEthRateProvider | unknown | ethereum | n/a | [`0xc276db...1813fe`](./contracts/ethereum-1/0xc276db339e551ecbe0ac323a7c4a5c6ca61813fe/) | ⚠️ Unaudited |
| AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | ethereum | n/a | [`0x0901b5...48e62b`](./contracts/ethereum-1/0x0901b541beff2cd44859701619e245e82f48e62b/) | ⚠️ Unaudited |
| AggregationRouterHelper | unknown | ethereum | n/a | [`0x09d4b4...a1da29`](./contracts/ethereum-1/0x09d4b49b12f567b96b387ce5823059bb7ba1da29/) | ⚠️ Unaudited |
| AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | ethereum | n/a | [`0x18672b...0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | ⚠️ Unaudited |
| AGLDLevSwapper | unknown | ethereum | n/a | [`0x244baf...92285b`](./contracts/ethereum-1/0x244bafbae9c47c795d3ab76ee77c5ba62e92285b/) | ⚠️ Unaudited |
| AGLDSwapper | unknown | ethereum | n/a | [`0x184a07...8733cf`](./contracts/ethereum-1/0x184a07c9cfd6165d6accdc373eb00bc5cd8733cf/) | ⚠️ Unaudited |
| AGLDUniV3ChainlinkOracle | unknown | ethereum | n/a | [`0x791aab...91dcc1`](./contracts/ethereum-1/0x791aab38c442a327df0beb1fec5767d8ca91dcc1/) | ⚠️ Unaudited |
| AgTokenSideChainMultiBridge | unknown | optimism | n/a | [`0x7ab641...142ddb`](./contracts/optimism-10/0x7ab641e661a9728913a44e06f6a4879481142ddb/) | ⚠️ Unaudited |
| AHv2Repayment | unknown | ethereum | n/a | [`0x141e05...2f629e`](./contracts/ethereum-1/0x141e0541d87c6cbdbf2a6a8104248b4b922f629e/) | ⚠️ Unaudited |
| Airdrop | unknown | optimism | n/a | [`0x1071f3...bb70c0`](./contracts/optimism-10/0x1071f3b2893f41094b1c84f090ea023042bb70c0/) | ⚠️ Unaudited |
| AirdropGrapesToken | unknown | ethereum | n/a | [`0x025c6d...205a1f`](./contracts/ethereum-1/0x025c6da5bd0e6a5dd1350fda9e3b6a614b205a1f/) | ⚠️ Unaudited |
| Alchemist | unknown | ethereum | n/a | [`0xc21d35...9fe35b`](./contracts/ethereum-1/0xc21d353ff4ee73c572425697f4f5aad2109fe35b/) | ⚠️ Unaudited |
| AlchemistEth | unknown | ethereum | n/a | [`0x6b5665...7d03ab`](./contracts/ethereum-1/0x6b566554378477490ab040f6f757171c967d03ab/) | ⚠️ Unaudited |
| AlchemixToken | unknown | ethereum | n/a | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | ⚠️ Unaudited |
| AlEth | unknown | ethereum | n/a | [`0x010054...ff7ee6`](./contracts/ethereum-1/0x0100546f2cd4c9d97f798ffc9755e47865ff7ee6/) | ⚠️ Unaudited |
| AllocationExchange | unknown | ethereum | n/a | [`0x4a53cf...94385f`](./contracts/ethereum-1/0x4a53cf3b3eda545dc61dee0ca21ea8996c94385f/) | ⚠️ Unaudited |
| AllocationIDTracker | unknown | arbitrum | n/a | [`0x5b2f33...d9fe7c`](./contracts/arbitrum-42161/0x5b2f33d7ca6ec88f5586f2528f58c20843d9fe7c/) | ⚠️ Unaudited |
| AlToken | unknown | ethereum | n/a | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | ⚠️ Unaudited |
| AmmVault | unknown | optimism | n/a | [`0x0d1098...cfb7a9`](./contracts/optimism-10/0x0d1098469d651161cc8211e2973afd5ad1cfb7a9/) | ⚠️ Unaudited |
| AmpleforthWrapper | unknown | ethereum | n/a | [`0xb2b9d7...947dc5`](./contracts/ethereum-1/0xb2b9d7ba7b7e5fb4e51a8bac83fd43e90c947dc5/) | ⚠️ Unaudited |
| AnchorStrat | unknown | ethereum | n/a | [`0x360f8d...4e73c3`](./contracts/ethereum-1/0x360f8dadc56717cfb53b03ff4a570f4fd54e73c3/) | ⚠️ Unaudited |
| AngleRouterOptimism | unknown | optimism | n/a | [`0x0d7105...eccf52`](./contracts/optimism-10/0x0d710512e100c171139d2cf5708f22c680eccf52/) | ⚠️ Unaudited |
| AnycallExecutor | unknown | polygon | n/a | [`0xd9bfdd...5d2d8c`](./contracts/polygon-137/0xd9bfdd4d53cfe38a7266fdab2ca74549e75d2d8c/) | ⚠️ Unaudited |
| AnyswapV4ERC20 | unknown | polygon | n/a | [`0xfbdd19...5d01b8`](./contracts/polygon-137/0xfbdd194376de19a88118e84e279b977f165d01b8/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | ethereum | n/a | [`0x130966...b8c18d`](./contracts/ethereum-1/0x130966628846bfd36ff31a822705796e8cb8c18d/) | ⚠️ Unaudited |
| AnyswapV6ERC20 | unknown | optimism | n/a | [`0x4e720d...6f4642`](./contracts/optimism-10/0x4e720dd3ac5cfe1e1fbde4935f386bb1c66f4642/) | ⚠️ Unaudited |
| ApeMatchingMarketplace | unknown | ethereum | n/a | [`0x5135fc...2d612e`](./contracts/ethereum-1/0x5135fc99e6f2dc02d07abe03ea2aa96ee32d612e/) | ⚠️ Unaudited |
| ApeStakingLib | unknown | ethereum | n/a | [`0x499618...5d438f`](./contracts/ethereum-1/0x499618600e8811e068ba6a0812c8c69fbd5d438f/) | ⚠️ Unaudited |
| ApexConsumerWrapper | unknown | optimism | n/a | [`0x20612e...36210e`](./contracts/optimism-10/0x20612e6a0ddadc322b7b48e3c4246fb23836210e/) | ⚠️ Unaudited |
| APROracle | unknown | ethereum | n/a | [`0x4ddc33...919361`](./contracts/ethereum-1/0x4ddc33689380e6b56783a5442999b75a5b919361/) | ⚠️ Unaudited |
| APRWithPoolOracle | unknown | ethereum | n/a | [`0x044dad...47ca14`](./contracts/ethereum-1/0x044dad5c0da888c93d8244261b67bd431b47ca14/) | ⚠️ Unaudited |
| AssetPool | unknown | ethereum | n/a | [`0x21b86f...d28d5d`](./contracts/ethereum-1/0x21b86fdc93f23fd52022a283828df8e808d28d5d/) | ⚠️ Unaudited |
| Astgik | unknown | ethereum | n/a | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |
| Auction | unknown | ethereum | n/a | [`0x45a01e...2033cd`](./contracts/ethereum-1/0x45a01e4e04f14f7a4a6702c74187c5f6222033cd/) | ⚠️ Unaudited |
| AuctionBidder | unknown | ethereum | n/a | [`0x773a4c...37b3c4`](./contracts/ethereum-1/0x773a4cacbca8e3704f8f7842531eab83e437b3c4/) | ⚠️ Unaudited |
| Auditor | unknown | optimism | n/a | [`0x3f55a3...243c46`](./contracts/optimism-10/0x3f55a319d2fd003f87a96c1c3484121936243c46/) | ⚠️ Unaudited |
| aUSTOracle | unknown | ethereum | n/a | [`0x24a760...d3116c`](./contracts/ethereum-1/0x24a76073ab9131b25693f3b75dd1ce996fd3116c/) | ⚠️ Unaudited |
| AUTOCOLOR_Technica | unknown | ethereum | n/a | [`0x8e734e...6dae11`](./contracts/ethereum-1/0x8e734e30270292993dbe71c421ad2b128b6dae11/) | ⚠️ Unaudited |
| BAKCApeStakingStrategy | unknown | ethereum | n/a | [`0x0915d8...e135a0`](./contracts/ethereum-1/0x0915d829df26d65d9716c5e9ba0535b8f8e135a0/) | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | optimism | n/a | [`0x79bca9...1f8dce`](./contracts/optimism-10/0x79bca9bcc19e157cb5f8c5a2f4d6cb951b1f8dce/) | ⚠️ Unaudited |
| BancorFormula | unknown | arbitrum | n/a | [`0xa489fd...f00ee9`](./contracts/arbitrum-42161/0xa489fdc65229d6225014c0b357bcd19af6f00ee9/) | ⚠️ Unaudited |
| Bank | unknown | ethereum | n/a | [`0x65fbae...9d9fc6`](./contracts/ethereum-1/0x65fbae61ad2c8836ffbfb502a0da41b0789d9fc6/) | ⚠️ Unaudited |
| BanxaWrapper | unknown | arbitrum | n/a | [`0xc9e1aa...a8a34a`](./contracts/arbitrum-42161/0xc9e1aa57223add21cc88a03088af552f1ea8a34a/) | ⚠️ Unaudited |
| BaseRewardPool | unknown | ethereum | n/a | [`0x689440...ece1c8`](./contracts/ethereum-1/0x689440f2ff927e1f24c72f1087e1faf471ece1c8/) | ⚠️ Unaudited |
| BaseSplitCodeFactoryContract | unknown | ethereum | n/a | [`0x35878c...a618a2`](./contracts/ethereum-1/0x35878c2cff38cc4032e85283183428170ba618a2/) | ⚠️ Unaudited |
| BasicAdapter | unknown | ethereum | n/a | [`0x0807d0...41b7c3`](./contracts/ethereum-1/0x0807d0810714d85b49e40349a3002f06e841b7c3/) | ⚠️ Unaudited |
| BasicLens | unknown | optimism | n/a | [`0x168901...6fd311`](./contracts/optimism-10/0x168901193a72e82c00110c799c9c22f3ae6fd311/) | ⚠️ Unaudited |
| BatchClaimer | unknown | optimism | n/a | [`0x6fd879...bebd0b`](./contracts/optimism-10/0x6fd879830d9b1ee5d4f9ef12f8d5dee916bebd0b/) | ⚠️ Unaudited |
| BatchedPhasedEscrow | unknown | ethereum | n/a | [`0x1b8e50...f831ca`](./contracts/ethereum-1/0x1b8e50ec9fbf844c3671bc178df8eadfcff831ca/) | ⚠️ Unaudited |
| BatchSender | unknown | arbitrum | n/a | [`0x1070f7...fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/) | ⚠️ Unaudited |
| BAYCApeStakingStrategy | unknown | ethereum | n/a | [`0x266def...d59eeb`](./contracts/ethereum-1/0x266defe3ac742279db62ad215a8aca0d1cd59eeb/) | ⚠️ Unaudited |
| BCH_DAI_Reserve | unknown | ethereum | n/a | [`0xa2d578...b69772`](./contracts/ethereum-1/0xa2d578e21f430d7469cbc135952dfe5c34b69772/) | ⚠️ Unaudited |
| BCHGateway | unknown | ethereum | n/a | [`0xcabb5e...e1a461`](./contracts/ethereum-1/0xcabb5e9e48f22cb6736d5f5cd3f1b652d7e1a461/) | ⚠️ Unaudited |
| BCHShifter | unknown | ethereum | n/a | [`0x2095be...0de6cd`](./contracts/ethereum-1/0x2095be01f9a30a8ac8302245fdfa524fb20de6cd/) | ⚠️ Unaudited |
| BeaconAuthorization | unknown | ethereum | n/a | [`0x632c2d...6e83e8`](./contracts/ethereum-1/0x632c2d58ad870fbd4569da0a4e82ddf4b56e83e8/) | ⚠️ Unaudited |
| BeaconBackportRewards | unknown | ethereum | n/a | [`0x8fec9c...ffbfff`](./contracts/ethereum-1/0x8fec9cf78087064f1f32269f68f94ae343ffbfff/) | ⚠️ Unaudited |
| BeaconBackportRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x24c0fb...f07647`](./contracts/ethereum-1/0x24c0fbd3ff8e742080c60881f8527ca3baf07647/) | ⚠️ Unaudited |
| BeaconDkg | unknown | ethereum | n/a | [`0x024a69...2abd84`](./contracts/ethereum-1/0x024a697788918007592572f7cd020df2bc2abd84/) | ⚠️ Unaudited |
| BeaconDkgValidator | unknown | ethereum | n/a | [`0x4edc83...653f94`](./contracts/ethereum-1/0x4edc83c5c5b0c41a594371485554b95280653f94/) | ⚠️ Unaudited |
| BeaconInactivity | unknown | ethereum | n/a | [`0x67a26f...941ec0`](./contracts/ethereum-1/0x67a26f2ebdb2448605936fe9a5f496cda7941ec0/) | ⚠️ Unaudited |
| BeaconRewards | unknown | ethereum | n/a | [`0xbf5180...f5f491`](./contracts/ethereum-1/0xbf51807acb3394b8550f0554fb9098856ef5f491/) | ⚠️ Unaudited |
| BeaconRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x9b15fe...e68ff0`](./contracts/ethereum-1/0x9b15fef1bfa4aff9b51f7b3b2df4d197cde68ff0/) | ⚠️ Unaudited |
| BeamToken | unknown | ethereum | n/a | [`0x62d0a8...b0bfce`](./contracts/ethereum-1/0x62d0a8458ed7719fdaf978fe5929c6d342b0bfce/) | ⚠️ Unaudited |
| BeanstalkERC20 | unknown | ethereum | n/a | [`0xbea000...d1efab`](./contracts/ethereum-1/0xbea0000029ad1c77d3d5d23ba2d8893db9d1efab/) | ⚠️ Unaudited |
| BeefyFeeConfigurator | unknown | arbitrum | n/a | [`0xdc036a...3e9292`](./contracts/arbitrum-42161/0xdc036ab31d2f105e15c1896f88d13b7bcf3e9292/) | ⚠️ Unaudited |
| BeefyMigrator | unknown | arbitrum | n/a | [`0x64920a...72f164`](./contracts/arbitrum-42161/0x64920af66d5772042b0aae8a1ebef75b4372f164/) | ⚠️ Unaudited |
| BeefyMultiHopSwapper | unknown | arbitrum | n/a | [`0xa720b7...b0b885`](./contracts/arbitrum-42161/0xa720b7225deeea1d29cf7ca9affac9520fb0b885/) | ⚠️ Unaudited |
| BeefyOracleAlgebra | unknown | arbitrum | n/a | [`0xd404bd...f7f64c`](./contracts/arbitrum-42161/0xd404bd6629624962e1c762215c809a4c6ef7f64c/) | ⚠️ Unaudited |
| BeefyOracleStableRouter | unknown | arbitrum | n/a | [`0x65db8f...f71dbd`](./contracts/arbitrum-42161/0x65db8f64d77c48b3143cbb351428ad70c5f71dbd/) | ⚠️ Unaudited |
| BeefyOracleStableRouterEthBase | unknown | arbitrum | n/a | [`0x902156...e473a1`](./contracts/arbitrum-42161/0x9021564e8bc6a36838e0d87cb8faa3ee8ee473a1/) | ⚠️ Unaudited |
| BeefySolidlyZap | unknown | arbitrum | n/a | [`0xe2f035...f25fec`](./contracts/arbitrum-42161/0xe2f035f59de6a952ff699b4edd0f99c466f25fec/) | ⚠️ Unaudited |
| BeefyTimelockCaller | unknown | arbitrum | n/a | [`0x46a188...f4af2b`](./contracts/arbitrum-42161/0x46a1884484a51b799414c6f02aeed80246f4af2b/) | ⚠️ Unaudited |
| BeefyVaultV6 | unknown | arbitrum | n/a | [`0x0673a2...d24d1a`](./contracts/arbitrum-42161/0x0673a2dde104e5fd3d5e75a12c201c3db0d24d1a/) | ⚠️ Unaudited |
| BeefyVaultV6Native | unknown | arbitrum | n/a | [`0x1ae135...c4bdf3`](./contracts/arbitrum-42161/0x1ae1355545dd55c144d1ed9dda396b078ec4bdf3/) | ⚠️ Unaudited |
| BeefyVaultV7 | unknown | ethereum | n/a | [`0x047c41...c23f1f`](./contracts/ethereum-1/0x047c41817954b51309a2bd6f60e47bc115c23f1f/) | ⚠️ Unaudited |
| BeefyVaultV7Factory | unknown | arbitrum | n/a | [`0x8396f3...4953f7`](./contracts/arbitrum-42161/0x8396f3d25d07531a80770ce3dea025932c4953f7/) | ⚠️ Unaudited |
| BeefyWrapper | unknown | arbitrum | n/a | [`0x48bf3a...a83a36`](./contracts/arbitrum-42161/0x48bf3a071098a09c7d00379b4dbc69ab6da83a36/) | ⚠️ Unaudited |
| BeefyZapRouter | unknown | arbitrum | n/a | [`0x52a743...3b0ad2`](./contracts/arbitrum-42161/0x52a7436dea377cd39d51ab6c60c7b4c36a3b0ad2/) | ⚠️ Unaudited |
| BentoBoxOwner | unknown | ethereum | n/a | [`0xb9b55d...878211`](./contracts/ethereum-1/0xb9b55db94eb5581d7716235f5f55156f73878211/) | ⚠️ Unaudited |
| BFactory | unknown | ethereum | n/a | [`0x0d3303...9b619f`](./contracts/ethereum-1/0x0d3303ffaf107cd732396570bf07b2dbd79b619f/) | ⚠️ Unaudited |
| Billing | unknown | arbitrum | n/a | [`0x1b07d3...48477a`](./contracts/arbitrum-42161/0x1b07d3344188908fb6deceac381f3ee63c48477a/) | ⚠️ Unaudited |
| BinaryOptionMarketData | unknown | optimism | n/a | [`0xe2881c...0c0fa0`](./contracts/optimism-10/0xe2881cad27db4c27fb3814ad97cca694b80c0fa0/) | ⚠️ Unaudited |
| BinaryOptionMarketFactory | unknown | optimism | n/a | [`0xe0b316...86dd63`](./contracts/optimism-10/0xe0b31640b07e4bcfafc190d7dde951ba3286dd63/) | ⚠️ Unaudited |
| BinaryOptionMarketManager | unknown | optimism | n/a | [`0xbe086e...d6a6f3`](./contracts/optimism-10/0xbe086e0a2c588ad64c8530048ce4356190d6a6f3/) | ⚠️ Unaudited |
| BinaryOptionMarketMastercopy | unknown | optimism | n/a | [`0x89df50...033cdb`](./contracts/optimism-10/0x89df505c693ac7e07d8d5d6308fe0bd041033cdb/) | ⚠️ Unaudited |
| BinaryOptionMastercopy | unknown | optimism | n/a | [`0x8947da...a8c3c5`](./contracts/optimism-10/0x8947da500eb47f82df21143d0c01a29862a8c3c5/) | ⚠️ Unaudited |
| BirdsArentReal | unknown | ethereum | n/a | [`0xd07379...0f615a`](./contracts/ethereum-1/0xd07379a755a8f11b57610154861d694b2a0f615a/) | ⚠️ Unaudited |
| BitcoinDepositor | unknown | ethereum | n/a | [`0x04b94f...0f4d32`](./contracts/ethereum-1/0x04b94f55780682478c8d8329368aaafd320f4d32/) | ⚠️ Unaudited |
| BitcoinRedeemer | unknown | ethereum | n/a | [`0x1f2766...4839a5`](./contracts/ethereum-1/0x1f2766373e74f268d5dbde32a395eb1c924839a5/) | ⚠️ Unaudited |
| BlackScholesEstimate | unknown | ethereum | n/a | [`0x8b4fd0...5da3dc`](./contracts/ethereum-1/0x8b4fd02326db6ebe095e0707e2973c9e045da3dc/) | ⚠️ Unaudited |
| BlockNumber | unknown | optimism | n/a | [`0x06d538...c2173e`](./contracts/optimism-10/0x06d538690af257da524f25d0cd52fd85b1c2173e/) | ⚠️ Unaudited |
| BLS | unknown | ethereum | n/a | [`0x655205...e020cd`](./contracts/ethereum-1/0x6552059b6efc6aa4ae3ea45f28ed4d92ace020cd/) | ⚠️ Unaudited |
| BondedECDSAKeep | unknown | ethereum | n/a | [`0xa9e838...22c105`](./contracts/ethereum-1/0xa9e838fcb9295fa44d89d06ed59811ae1a22c105/) | ⚠️ Unaudited |
| BondedECDSAKeepFactory | unknown | ethereum | n/a | [`0x6a7cd8...35c5d7`](./contracts/ethereum-1/0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7/) | ⚠️ Unaudited |
| BondedSortitionPoolFactory | unknown | ethereum | n/a | [`0x0c46f4...2ede4f`](./contracts/ethereum-1/0x0c46f496c410465975a427e34a976fc15a2ede4f/) | ⚠️ Unaudited |
| BondingCurve | unknown | optimism | n/a | [`0x693604...562341`](./contracts/optimism-10/0x693604e757ac7e2c4a8263594a18d69c35562341/) | ⚠️ Unaudited |
| BonusDistributor | unknown | arbitrum | n/a | [`0x03f349...40d356`](./contracts/arbitrum-42161/0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356/) | ⚠️ Unaudited |
| BorrowController | unknown | ethereum | n/a | [`0x20c734...80bc0d`](./contracts/ethereum-1/0x20c7349f6d6a746a25e66f7c235e96dac880bc0d/) | ⚠️ Unaudited |
| BribeFactory | unknown | optimism | n/a | [`0xa84ea9...6b748e`](./contracts/optimism-10/0xa84ea94aa705f7d009cddf2a60f65c0d446b748e/) | ⚠️ Unaudited |
| Bridge | unknown | ethereum | n/a | [`0x17d6e6...012330`](./contracts/ethereum-1/0x17d6e670ee8ef8464cafc098bf20668987012330/) | ⚠️ Unaudited |
| BridgeGovernance | unknown | ethereum | n/a | [`0xa94dd6...0778ee`](./contracts/ethereum-1/0xa94dd662e2a247493facceab9f2459aaf90778ee/) | ⚠️ Unaudited |
| BridgeGovernanceParameters | unknown | ethereum | n/a | [`0xce4b16...0d3443`](./contracts/ethereum-1/0xce4b16b81a28d785feeb7b1d56a9b97d450d3443/) | ⚠️ Unaudited |
| BSCBridge | unknown | ethereum | n/a | [`0x6e4ae3...464ed6`](./contracts/ethereum-1/0x6e4ae385d1f68e4d4feb455e0526c08c77464ed6/) | ⚠️ Unaudited |
| BSCWallet | unknown | ethereum | n/a | [`0x70266e...cf18ea`](./contracts/ethereum-1/0x70266e9b23dadead1210ff58b6723a6ca0cf18ea/) | ⚠️ Unaudited |
| BTC_DAI_Reserve | unknown | ethereum | n/a | [`0x11716a...aee110`](./contracts/ethereum-1/0x11716a1f51fad053e9b43da1025e8ace32aee110/) | ⚠️ Unaudited |
| BTCShifter | unknown | ethereum | n/a | [`0x1258d7...61902a`](./contracts/ethereum-1/0x1258d7ff385d1d81017d4a3d464c02f74c61902a/) | ⚠️ Unaudited |
| BulkSeller | unknown | ethereum | n/a | [`0x1a3753...f00f73`](./contracts/ethereum-1/0x1a3753fa1eee1622fe327df0b7ec03463ef00f73/) | ⚠️ Unaudited |
| BulkSellerFactory | unknown | ethereum | n/a | [`0x40ae6d...cb7c85`](./contracts/ethereum-1/0x40ae6da2d92aa3dcb7f8d7a7209fd12bdfcb7c85/) | ⚠️ Unaudited |
| BulkSellerOffchain | unknown | ethereum | n/a | [`0x9acc60...6bd320`](./contracts/ethereum-1/0x9acc60f915dfcd190d270fc92567ae71776bd320/) | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | unknown | base | n/a | [`0x23ee23...c6810f`](./contracts/base-8453/0x23ee2343b892b1bb63503a4fabc840e0e2c6810f/) | ⚠️ Unaudited |
| BuybackMigrator | unknown | arbitrum | n/a | [`0x4f47a1...8379d4`](./contracts/arbitrum-42161/0x4f47a156fa8106aa7bd13e6219c54a78748379d4/) | ⚠️ Unaudited |
| CappedETHDonation | unknown | ethereum | n/a | [`0xf62b40...9752e6`](./contracts/ethereum-1/0xf62b408738b4d7003bc9a3dcdf2de9ca709752e6/) | ⚠️ Unaudited |
| CauldronLib | unknown | ethereum | n/a | [`0x480a0a...51eb4d`](./contracts/ethereum-1/0x480a0af04186080bac985e595d66ea3bf351eb4d/) | ⚠️ Unaudited |
| CauldronLowRiskV1 | unknown | ethereum | n/a | [`0x469a99...c0b3d3`](./contracts/ethereum-1/0x469a991a6bb8cbbfee42e7ab846edeef1bc0b3d3/) | ⚠️ Unaudited |
| CauldronMediumRiskV1 | unknown | ethereum | n/a | [`0x4a9cb5...c7c7d2`](./contracts/ethereum-1/0x4a9cb5d0b755275fd188f87c0a8df531b0c7c7d2/) | ⚠️ Unaudited |
| CauldronV2 | unknown | ethereum | n/a | [`0x476b1e...a85c1f`](./contracts/ethereum-1/0x476b1e35dde474cb9aa1f6b85c9cc589bfa85c1f/) | ⚠️ Unaudited |
| CauldronV2CheckpointV1 | unknown | ethereum | n/a | [`0x1df188...dd9e51`](./contracts/ethereum-1/0x1df188958a8674b5177f77667b8d173c3cdd9e51/) | ⚠️ Unaudited |
| CauldronV3 | unknown | ethereum | n/a | [`0xe965db...d6010b`](./contracts/ethereum-1/0xe965db54fe154765460c5289a2b383d34fd6010b/) | ⚠️ Unaudited |
| CCapableErc20Delegate | unknown | ethereum | n/a | [`0x018a82...9ff5ab`](./contracts/ethereum-1/0x018a82a5bd6e0a4ae8c5cf54527775d17d9ff5ab/) | ⚠️ Unaudited |
| CCIPBlockHashSender | unknown | ethereum | n/a | [`0x51a00f...5d9e61`](./contracts/ethereum-1/0x51a00f38cb1c055ebbbe380d3ba3d27cae5d9e61/) | ⚠️ Unaudited |
| CCollateralCapErc20 | unknown | ethereum | n/a | [`0x6a6fd0...2b930f`](./contracts/ethereum-1/0x6a6fd01c92f0390670cce399b532017cdb2b930f/) | ⚠️ Unaudited |
| CCollateralCapErc20NoInterestDelegate | unknown | ethereum | n/a | [`0xca1041...41c157`](./contracts/ethereum-1/0xca1041f188ffecc499e8d4d0f08dd31b0f41c157/) | ⚠️ Unaudited |
| CCTokenDelegate | unknown | ethereum | n/a | [`0x4f0800...909b9e`](./contracts/ethereum-1/0x4f08008ef178929e3866f1aeea75beaa8b909b9e/) | ⚠️ Unaudited |
| CErc20 | unknown | ethereum | n/a | [`0x158079...ac95c1`](./contracts/ethereum-1/0x158079ee67fce2f58472a96584a73c7ab9ac95c1/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x00e5c0...c84bf3`](./contracts/ethereum-1/0x00e5c0774a5f065c285068170b20393925c84bf3/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x011a01...230afa`](./contracts/ethereum-1/0x011a014d5e8eb4771e575bb1000318d509230afa/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x0e821d...11c2cb`](./contracts/ethereum-1/0x0e821d855f4fc427200484ae42369b8a6611c2cb/) | ⚠️ Unaudited |
| CErc20Delegator | unknown | ethereum | n/a | [`0x2db6c8...5066d6`](./contracts/ethereum-1/0x2db6c82ce72c8d7d770ba1b5f5ed0b6e075066d6/) | ⚠️ Unaudited |
| CErc20Immutable | unknown | optimism | n/a | [`0x066c98...d2848d`](./contracts/optimism-10/0x066c98e48238e8d77006a5fa14ec3b080fd2848d/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | ⚠️ Unaudited |
| ChildChainManager | unknown | polygon | n/a | [`0x195fe6...5dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | polygon | n/a | [`0xafeea1...171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ⚠️ Unaudited |
| ChildERC1155 | unknown | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | unknown | polygon | n/a | [`0x0b9020...6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x004bae...4d5b57`](./contracts/polygon-137/0x004bae2ed0210e937327aaf199135393f64d5b57/) | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | polygon | n/a | [`0xbda641...3fdbb6`](./contracts/polygon-137/0xbda6415502b0ddab9eda1d09f4f16286273fdbb6/) | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | polygon | n/a | [`0x07280d...3952ea`](./contracts/polygon-137/0x07280d3143311b012ad268a74f2aa791713952ea/) | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | polygon | n/a | [`0xd4888f...25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ⚠️ Unaudited |
| ChildWUSDR | unknown | optimism | n/a | [`0x08a3f2...833ba1`](./contracts/optimism-10/0x08a3f224b4a5ce4588bca5c64fbb9d120f833ba1/) | ⚠️ Unaudited |
| ClaimingNativeStrat | unknown | ethereum | n/a | [`0x6756ef...e8f9ef`](./contracts/ethereum-1/0x6756effa8aabeb9031279e4c71d8c1bd3ae8f9ef/) | ⚠️ Unaudited |
| ClaimingStrat | unknown | ethereum | n/a | [`0xa655aa...e0a143`](./contracts/ethereum-1/0xa655aa809d1fe7a55e22425780bb676e8ae0a143/) | ⚠️ Unaudited |
| ClassicalOracle | unknown | ethereum | n/a | [`0x95cf8c...cc5220`](./contracts/ethereum-1/0x95cf8c1cb7d256082eccf71371e50a5dbccc5220/) | ⚠️ Unaudited |
| CLFactory | unknown | optimism | n/a | [`0x3fc8e6...38e2eb`](./contracts/optimism-10/0x3fc8e63e98f83ba0f28336fb537699655938e2eb/) | ⚠️ Unaudited |
| CLGauge | unknown | optimism | n/a | [`0x629e12...7cd905`](./contracts/optimism-10/0x629e122d4542f49145d89bad8b4cbe74757cd905/) | ⚠️ Unaudited |
| CLGaugeFactory | unknown | optimism | n/a | [`0x282ac0...f1592a`](./contracts/optimism-10/0x282ac0ea96493650f1a5e5e5d20490c782f1592a/) | ⚠️ Unaudited |
| ClonexEggAirdropClaim | unknown | ethereum | n/a | [`0x0f8558...d70a08`](./contracts/ethereum-1/0x0f85580aa1e81b345f6ec8701a297696c9d70a08/) | ⚠️ Unaudited |
| CLPool | unknown | optimism | n/a | [`0x209ce0...98e3f5`](./contracts/optimism-10/0x209ce04710fb9a5c2147ca0fd30922b5e998e3f5/) | ⚠️ Unaudited |
| CollateralAggregator | unknown | ethereum | n/a | [`0x1e94e1...afedd9`](./contracts/ethereum-1/0x1e94e130c03e32a4378a352ceff327b301afedd9/) | ⚠️ Unaudited |
| CollateralMaximizer | unknown | ethereum | n/a | [`0x494ba8...1b96c1`](./contracts/ethereum-1/0x494ba8753a253bb314f1e8324c36f804d31b96c1/) | ⚠️ Unaudited |
| CollateralVaultFactory | unknown | ethereum | n/a | [`0x026803...33eee7`](./contracts/ethereum-1/0x026803874894b04fa6bf3c5d2abf8a42c333eee7/) | ⚠️ Unaudited |
| ComboOracle | unknown | optimism | n/a | [`0x626efc...60f72a`](./contracts/optimism-10/0x626efc448227d794dc8c02ffea6a932bb360f72a/) | ⚠️ Unaudited |
| ComboOracle_UniV2_UniV3 | unknown | optimism | n/a | [`0x09044d...3b199a`](./contracts/optimism-10/0x09044da6e6ea891c83ee8d980bc109fda73b199a/) | ⚠️ Unaudited |
| Comp | unknown | ethereum | n/a | [`0x2ba592...7cb200`](./contracts/ethereum-1/0x2ba592f78db6436527729929aaf6c908497cb200/) | ⚠️ Unaudited |
| CompensationEscrow | unknown | ethereum | n/a | [`0xda7b94...4b64c3`](./contracts/ethereum-1/0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3/) | ⚠️ Unaudited |
| COMPfarming | unknown | ethereum | n/a | [`0x1532eb...6aa870`](./contracts/ethereum-1/0x1532eb6c6d134903a0dedfc840128007b36aa870/) | ⚠️ Unaudited |
| ComposableStablePool | unknown | ethereum | n/a | [`0x20a61b...66c5a9`](./contracts/ethereum-1/0x20a61b948e33879ce7f23e535cc7baa3bc66c5a9/) | ⚠️ Unaudited |
| ComposableStablePreview | unknown | ethereum | n/a | [`0x4a303b...5d3007`](./contracts/ethereum-1/0x4a303b4e823b97689bcc77ae3dde6b6e5b5d3007/) | ⚠️ Unaudited |
| ComposableStablePreviewProxy | unknown | ethereum | n/a | [`0x4239dd...faf64a`](./contracts/ethereum-1/0x4239ddd3c50463383670e86c119220849bfaf64a/) | ⚠️ Unaudited |
| ComposableStablePreviewV4 | unknown | ethereum | n/a | [`0x886c9a...00442d`](./contracts/ethereum-1/0x886c9a91bf10dbc5e3c66c29387be9421a00442d/) | ⚠️ Unaudited |
| ComposableStablePreviewV5 | unknown | ethereum | n/a | [`0x39a65b...7341fe`](./contracts/ethereum-1/0x39a65bfdb7b977a019564c2f9a81e1a29f7341fe/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x178053...63df29`](./contracts/ethereum-1/0x178053c06006e67e09879c09ff012ff9d263df29/) | ⚠️ Unaudited |
| ConfigProvider | unknown | polygon | n/a | [`0x6e2719...a7538a`](./contracts/polygon-137/0x6e271923a0afe69408d2f0425d16dbdacea7538a/) | ⚠️ Unaudited |
| Constitution | unknown | ethereum | n/a | [`0x47e037...cf437c`](./contracts/ethereum-1/0x47e037c9d5ef7cabe5389cedaa5e51f5c0cf437c/) | ⚠️ Unaudited |
| Controller | unknown | arbitrum | n/a | [`0x0a8491...b2c97e`](./contracts/arbitrum-42161/0x0a8491544221dd212964fbb96487467291b2c97e/) | ⚠️ Unaudited |
| ConverterDAItoYCRV | unknown | ethereum | n/a | [`0x98158e...8039ca`](./contracts/ethereum-1/0x98158e133f7f56a574fc806e579e1355048039ca/) | ⚠️ Unaudited |
| ConvertibleFactory | unknown | ethereum | n/a | [`0x6525fc...bd0769`](./contracts/ethereum-1/0x6525fc98f2a43633c2a36d5cca0abbdaa6bd0769/) | ⚠️ Unaudited |
| ConvexRewardPool | unknown | arbitrum | n/a | [`0x6b7b84...8a8ea6`](./contracts/arbitrum-42161/0x6b7b84f6ec1c019af08c7a2f34d3c10ccb8a8ea6/) | ⚠️ Unaudited |
| ConvexWrapperLevSwapper | unknown | ethereum | n/a | [`0x134dd2...fa6a89`](./contracts/ethereum-1/0x134dd2fa4a61d757dc79a9d21b01e97eadfa6a89/) | ⚠️ Unaudited |
| ConvexWrapperSwapper | unknown | ethereum | n/a | [`0x9bee1f...bec67c`](./contracts/ethereum-1/0x9bee1fb5b4137ce17e47c303d3407919cdbec67c/) | ⚠️ Unaudited |
| CoreBorrow | unknown | optimism | n/a | [`0x1a7e4e...fcbce8`](./contracts/optimism-10/0x1a7e4e63778b4f12a199c062f3efdd288afcbce8/) | ⚠️ Unaudited |
| CoveragePool | unknown | ethereum | n/a | [`0x7d7b62...6d811a`](./contracts/ethereum-1/0x7d7b622c07f216d99efc3efb9cf71872f46d811a/) | ⚠️ Unaudited |
| CoveragePoolBeneficiary | unknown | ethereum | n/a | [`0x22428b...2ee39b`](./contracts/ethereum-1/0x22428b09efc87709ab49a77da6f9ce4ffa2ee39b/) | ⚠️ Unaudited |
| CPITrackerOracle | unknown | ethereum | n/a | [`0x66b7df...ff3146`](./contracts/ethereum-1/0x66b7dff2ac66dc4d6fbb3db1cb627bbb01ff3146/) | ⚠️ Unaudited |
| CreamEth2 | unknown | ethereum | n/a | [`0x49d72e...9fdb64`](./contracts/ethereum-1/0x49d72e3973900a195a155a46441f0c08179fdb64/) | ⚠️ Unaudited |
| CreamLiquidate | unknown | ethereum | n/a | [`0x8584b7...40ca64`](./contracts/ethereum-1/0x8584b7ac8b1e4255c18784928fbf1c6fca40ca64/) | ⚠️ Unaudited |
| CreamLock | unknown | ethereum | n/a | [`0x780f75...7a8b45`](./contracts/ethereum-1/0x780f75ad0b02afeb6039672e6a6cede7447a8b45/) | ⚠️ Unaudited |
| CreamVotingPower | unknown | ethereum | n/a | [`0xb146bf...20d0f9`](./contracts/ethereum-1/0xb146bf59f30a54750209ef529a766d952720d0f9/) | ⚠️ Unaudited |
| Create2Deployer | unknown | ethereum | n/a | [`0x0e55ae...a4afab`](./contracts/ethereum-1/0x0e55aef1b392b8491369091ad808e87feaa4afab/) | ⚠️ Unaudited |
| CRON | unknown | ethereum | n/a | [`0x8e14d0...5d322e`](./contracts/ethereum-1/0x8e14d03061705eb48fda6bc6e244c5eabe5d322e/) | ⚠️ Unaudited |
| Cross-Chain Gauge Mass Killer | unknown | ethereum | n/a | [`0xf08fa0...7d4e7d`](./contracts/ethereum-1/0xf08fa0aea90f9904f0c4853a3225408b5a7d4e7d/) | ⚠️ Unaudited |
| CrossChainBridgeBacker_OPTI_Celer | unknown | optimism | n/a | [`0x7f35dc...084ed0`](./contracts/optimism-10/0x7f35dc487a5422d6946aad733c6018f163084ed0/) | ⚠️ Unaudited |
| CrossChainCanonicalFXS | unknown | optimism | n/a | [`0x67ccea...2205be`](./contracts/optimism-10/0x67ccea5bb16181e7b4109c9c2143c24a1c2205be/) | ⚠️ Unaudited |
| CrossChainCanonicalGALCX | unknown | optimism | n/a | [`0x843b66...7fad92`](./contracts/optimism-10/0x843b66a06a4f00c0703fd2ae2e67c9399f7fad92/) | ⚠️ Unaudited |
| CrossChainCanonicalV2 | unknown | optimism | n/a | [`0x484c2d...36578c`](./contracts/optimism-10/0x484c2d6e3cdd945a8b2df735e079178c1036578c/) | ⚠️ Unaudited |
| CrossChainOracle | unknown | optimism | n/a | [`0x31aa22...b86509`](./contracts/optimism-10/0x31aa22d69270148ec63baf53fde846b45db86509/) | ⚠️ Unaudited |
| CrossChainOracleSingleAsset | unknown | optimism | n/a | [`0x35c696...ea66de`](./contracts/optimism-10/0x35c6962c221e4e8c17e2b4d59c8de79457ea66de/) | ⚠️ Unaudited |
| CroToken | unknown | ethereum | n/a | [`0xa0b73e...34450b`](./contracts/ethereum-1/0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b/) | ⚠️ Unaudited |
| CrowdProposal | unknown | ethereum | n/a | [`0x62134f...45df23`](./contracts/ethereum-1/0x62134f1897e236e06ed34841ba91cef55945df23/) | ⚠️ Unaudited |
| Crowdsale | unknown | ethereum | n/a | [`0x398e41...a446f7`](./contracts/ethereum-1/0x398e41ac3d5972b4bac2320cd130c7a25ca446f7/) | ⚠️ Unaudited |
| CRVDisperse | unknown | ethereum | n/a | [`0x53e6c8...65dcde`](./contracts/ethereum-1/0x53e6c8a06f831c3281ccca5f0e349bbe0a65dcde/) | ⚠️ Unaudited |
| CrvOracle | unknown | ethereum | n/a | [`0x69f795...50af50`](./contracts/ethereum-1/0x69f79536d304a556603ff55d4dac017ddf50af50/) | ⚠️ Unaudited |
| crvUSD Controller | unknown | ethereum | n/a | [`0x17c6e1...41f4d4`](./contracts/ethereum-1/0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4/) | ⚠️ Unaudited |
| crvUSDControllerFactory | unknown | ethereum | n/a | [`0xc9332f...0738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | ⚠️ Unaudited |
| crvUSDdeleveragezap | unknown | ethereum | n/a | [`0x2bc706...f81d74`](./contracts/ethereum-1/0x2bc706b83ab08d0437b8a397242c3284b5f81d74/) | ⚠️ Unaudited |
| crvUSDPoolRegistry | unknown | ethereum | n/a | [`0x538e98...d3df2d`](./contracts/ethereum-1/0x538e984c2d5f821d51932dd9c570dff192d3df2d/) | ⚠️ Unaudited |
| crvUSDStablecoin | unknown | ethereum | n/a | [`0xf939e0...ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | ⚠️ Unaudited |
| CryptoCabz | unknown | polygon | n/a | [`0x76bf9a...ed5c30`](./contracts/polygon-137/0x76bf9ac96fc75849c6872cf89f367e56feed5c30/) | ⚠️ Unaudited |
| CryptoFromPool | unknown | ethereum | n/a | [`0x3b38ce...db7a25`](./contracts/ethereum-1/0x3b38ce23799dc56664ff6048892510abffdb7a25/) | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | ethereum | n/a | [`0x38e762...3ba2f8`](./contracts/ethereum-1/0x38e7627eb98a40e7528bcce709a80083093ba2f8/) | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | unknown | ethereum | n/a | [`0x0a9ae9...c91aab`](./contracts/ethereum-1/0x0a9ae947495034c0bbbab845fd75b5bbafc91aab/) | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | ethereum | n/a | [`0x002688...1b09be`](./contracts/ethereum-1/0x002688c4296a2c4d800f271fe6f01741111b09be/) | ⚠️ Unaudited |
| CryptoFromPoolWAgg | unknown | ethereum | n/a | [`0x2d89d8...e1d5ca`](./contracts/ethereum-1/0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca/) | ⚠️ Unaudited |
| CryptoWithStablePriceETH | unknown | ethereum | n/a | [`0x966cbd...32ca06`](./contracts/ethereum-1/0x966cbdecefb60a289b0460f7638f4a75f432ca06/) | ⚠️ Unaudited |
| CryptoWithStablePriceSfrxeth | unknown | ethereum | n/a | [`0x28d788...113c29`](./contracts/ethereum-1/0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29/) | ⚠️ Unaudited |
| CryptoWithStablePriceTBTC | unknown | ethereum | n/a | [`0xbef434...fc4217`](./contracts/ethereum-1/0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217/) | ⚠️ Unaudited |
| CryptoWithStablePriceWBTC | unknown | ethereum | n/a | [`0x07374b...3e46fa`](./contracts/ethereum-1/0x07374b547cae235227635c13266c69847a3e46fa/) | ⚠️ Unaudited |
| CryptoWithStablePriceWsteth | unknown | ethereum | n/a | [`0x21f5f6...51b304`](./contracts/ethereum-1/0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304/) | ⚠️ Unaudited |
| CSLPDelegate | unknown | ethereum | n/a | [`0x0b4722...151ffb`](./contracts/ethereum-1/0x0b4722779a0ed7d79101c0d251987e76d4151ffb/) | ⚠️ Unaudited |
| CTokenAdmin | unknown | ethereum | n/a | [`0xa67b44...2a038d`](./contracts/ethereum-1/0xa67b44e37200e92e6da6249d8ae6d48f832a038d/) | ⚠️ Unaudited |
| CTokenStrat | unknown | ethereum | n/a | [`0x42b5d4...8bdbe5`](./contracts/ethereum-1/0x42b5d4a11c8fe76d114759f7f3d8e94ea28bdbe5/) | ⚠️ Unaudited |
| Curation | unknown | arbitrum | n/a | [`0x234071...fa4606`](./contracts/arbitrum-42161/0x234071f4b1e322d1167d63503498f82cc7fa4606/) | ⚠️ Unaudited |
| CurveStableSwap2Prices | unknown | ethereum | n/a | [`0x1539c2...ca2c92`](./contracts/ethereum-1/0x1539c2461d7432cc114b0903f1824079bfca2c92/) | ⚠️ Unaudited |
| CurveStableSwapNG | unknown | ethereum | n/a | [`0x1f7e93...1ffd95`](./contracts/ethereum-1/0x1f7e9321ce32af1f9ea1185fd10d31fea31ffd95/) | ⚠️ Unaudited |
| Custodian | unknown | ethereum | n/a | [`0x1789cc...4764eb`](./contracts/ethereum-1/0x1789cca7430aacbdb7c89f9b5695a9c06e4764eb/) | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | optimism | n/a | [`0x4bc0e3...bf1c8f`](./contracts/optimism-10/0x4bc0e3f3699d152ecb9c80f3de73a4ff78bf1c8f/) | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | optimism | n/a | [`0x5a6f7f...26678a`](./contracts/optimism-10/0x5a6f7f478cd55904216f1354b2a36d56b826678a/) | ⚠️ Unaudited |
| CYFI | unknown | ethereum | n/a | [`0xde2af8...34b4a4`](./contracts/ethereum-1/0xde2af899040536884e062d3a334f2dd36f34b4a4/) | ⚠️ Unaudited |
| DaoCollateral | unknown | ethereum | n/a | [`0x26227b...fd8d0b`](./contracts/ethereum-1/0x26227b1f96c773c0ed4c6ea99fc8b0d69efd8d0b/) | ⚠️ Unaudited |
| DAONFTVault | unknown | ethereum | n/a | [`0x2e919b...d10364`](./contracts/ethereum-1/0x2e919b626221890c10a954cc8c3f3e8110d10364/) | ⚠️ Unaudited |
| DarknodePayment | unknown | ethereum | n/a | [`0x098e17...c370b9`](./contracts/ethereum-1/0x098e1708b920efbdd7afe33adb6a4cba30c370b9/) | ⚠️ Unaudited |
| DarknodePaymentMigrator | unknown | ethereum | n/a | [`0x085d9b...05f54d`](./contracts/ethereum-1/0x085d9b18be81f2b0c35086972caa46177205f54d/) | ⚠️ Unaudited |
| DarknodePaymentStore | unknown | ethereum | n/a | [`0x311999...effe49`](./contracts/ethereum-1/0x311999ee72b5826d664fd4f3ac09c0c462effe49/) | ⚠️ Unaudited |
| DarknodeRegistry | unknown | ethereum | n/a | [`0x379900...341c2f`](./contracts/ethereum-1/0x3799006a87fde3ccfc7666b3e6553b03ed341c2f/) | ⚠️ Unaudited |
| DarknodeRegistryForwarder | unknown | ethereum | n/a | [`0xb03201...3058fa`](./contracts/ethereum-1/0xb032012073765a74f8f8fe2e6685ad70253058fa/) | ⚠️ Unaudited |
| DarknodeRegistryLogicV2 | unknown | ethereum | n/a | [`0x7f9822...4acecb`](./contracts/ethereum-1/0x7f98228b464101a3b19bf1cc337a9b88c84acecb/) | ⚠️ Unaudited |
| DarknodeRegistryProxy | unknown | ethereum | n/a | [`0x09e343...017405`](./contracts/ethereum-1/0x09e3435c7a92d3296d1221161cb0cbaafa017405/) | ⚠️ Unaudited |
| DarknodeRegistryProxy | unknown | ethereum | n/a | [`0x2d7b6c...054f0a`](./contracts/ethereum-1/0x2d7b6c95afeffa50c068d50f89c5c0014e054f0a/) | ⚠️ Unaudited |
| DarknodeRegistryStore | unknown | ethereum | n/a | [`0x14add4...98897a`](./contracts/ethereum-1/0x14add4ca443e7445a3418bb572d6079bfc98897a/) | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Preupgrader | unknown | ethereum | n/a | [`0x1e69da...c38f1e`](./contracts/ethereum-1/0x1e69da530e2051cd08259221ef1dacc703c38f1e/) | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Upgrader | unknown | ethereum | n/a | [`0x5945bb...9cfaa5`](./contracts/ethereum-1/0x5945bbe065b7a723fd4cf9485a726cb5529cfaa5/) | ⚠️ Unaudited |
| DarknodeRewardVault | unknown | ethereum | n/a | [`0x880407...3cd588`](./contracts/ethereum-1/0x880407c9cd119bef48b1821cdfc434e3ca3cd588/) | ⚠️ Unaudited |
| DarknodeSlasher | unknown | ethereum | n/a | [`0x04ed8f...2962f2`](./contracts/ethereum-1/0x04ed8f5730dd4d2b2064cdb6a5bffc26a72962f2/) | ⚠️ Unaudited |
| DebtNotifier | unknown | polygon | n/a | [`0xc7d868...ef926c`](./contracts/polygon-137/0xc7d868954009df558ac5fd54032f2b6fb6ef926c/) | ⚠️ Unaudited |
| DebtVault | unknown | ethereum | n/a | [`0x08422a...f80442`](./contracts/ethereum-1/0x08422ab5eedff7b7e34f2f4370b6584deef80442/) | ⚠️ Unaudited |
| DeciMath | unknown | optimism | n/a | [`0x5c779c...60fb14`](./contracts/optimism-10/0x5c779cfae4b6b7a02c32938ddabdada8ab60fb14/) | ⚠️ Unaudited |
| DefiedgeZap | unknown | optimism | n/a | [`0x1946cb...4d6d3e`](./contracts/optimism-10/0x1946cb50db9aa631b60b5b54623eab3bb84d6d3e/) | ⚠️ Unaudited |
| DegenBox | unknown | ethereum | n/a | [`0xd96f48...fc2cce`](./contracts/ethereum-1/0xd96f48665a1410c0cd669a88898eca36b9fc2cce/) | ⚠️ Unaudited |
| DegenBoxConvexWrapper | unknown | ethereum | n/a | [`0x48a89a...cdc4a4`](./contracts/ethereum-1/0x48a89a28cffb2f519e975964ae366e710bcdc4a4/) | ⚠️ Unaudited |
| DelegatedVEQuerier | unknown | polygon | n/a | [`0xd0d533...b0dc50`](./contracts/polygon-137/0xd0d5332b37294003f3a915753ea15e4e1bb0dc50/) | ⚠️ Unaudited |
| DelegationLogicLibrary | unknown | optimism | n/a | [`0x737464...aefd30`](./contracts/optimism-10/0x73746410b0dd4526e1fa00d0854e99ba54aefd30/) | ⚠️ Unaudited |
| DemandMiner | unknown | polygon | n/a | [`0xdbe0ec...69c6fe`](./contracts/polygon-137/0xdbe0ec403e2f206fe3e45408657449082369c6fe/) | ⚠️ Unaudited |
| DeploymentHelpers | unknown | ethereum | n/a | [`0x758888...18ce84`](./contracts/ethereum-1/0x758888dd8cc9c654519413e3da099c3ff618ce84/) | ⚠️ Unaudited |
| Deposit | unknown | ethereum | n/a | [`0x1ac184...c04dc5`](./contracts/ethereum-1/0x1ac1841a47054e070236f1664991e52c30c04dc5/) | ⚠️ Unaudited |
| DepositFactory | unknown | ethereum | n/a | [`0x87effe...0faf8b`](./contracts/ethereum-1/0x87effef56c7ff13e2463b5d4dce81be2340faf8b/) | ⚠️ Unaudited |
| DepositFunding | unknown | ethereum | n/a | [`0x62d128...ccd125`](./contracts/ethereum-1/0x62d1286683507939c065c12f2d1e80cca8ccd125/) | ⚠️ Unaudited |
| DepositLiquidation | unknown | ethereum | n/a | [`0x1ca506...081a56`](./contracts/ethereum-1/0x1ca5060bf142c58168aedb974aabb020bc081a56/) | ⚠️ Unaudited |
| DepositRedemption | unknown | ethereum | n/a | [`0x817c0f...372323`](./contracts/ethereum-1/0x817c0f6332392ad65d7688ed22f59b227e372323/) | ⚠️ Unaudited |
| DepositStates | unknown | ethereum | n/a | [`0x8695ff...ae1c80`](./contracts/ethereum-1/0x8695ff199a1216fc7e2bf97303bf662babae1c80/) | ⚠️ Unaudited |
| DepositSweep | unknown | ethereum | n/a | [`0x392635...ac9b95`](./contracts/ethereum-1/0x392635646bc22fc13c86859d1f02b27974ac9b95/) | ⚠️ Unaudited |
| DepositUtils | unknown | ethereum | n/a | [`0x2ad83d...212517`](./contracts/ethereum-1/0x2ad83decf0555945094e5d25129c1f324f212517/) | ⚠️ Unaudited |
| DestSwapperUniV3 | unknown | arbitrum | n/a | [`0x595167...3968d7`](./contracts/arbitrum-42161/0x5951674ec4662a7c680e4b0e41f2e4eeaf3968d7/) | ⚠️ Unaudited |
| DEX | unknown | ethereum | n/a | [`0x8ff192...a8373a`](./contracts/ethereum-1/0x8ff192e634ef6463be60792a384e5f1219a8373a/) | ⚠️ Unaudited |
| DEXAdapter | unknown | ethereum | n/a | [`0x9992e9...8d3a58`](./contracts/ethereum-1/0x9992e9341e496be5bc8f424dfc1f78a7388d3a58/) | ⚠️ Unaudited |
| DisputeManager | unknown | arbitrum | n/a | [`0x0ab2b0...e3bd46`](./contracts/arbitrum-42161/0x0ab2b043138352413bb02e67e626a70320e3bd46/) | ⚠️ Unaudited |
| DistributeYFI | unknown | ethereum | n/a | [`0x812ac0...cfa017`](./contracts/ethereum-1/0x812ac0eaeb422efa44eac670aa2246a25ecfa017/) | ⚠️ Unaudited |
| DistributionCreator | unknown | optimism | n/a | [`0x53d6ea...9eebbe`](./contracts/optimism-10/0x53d6ea4775e08232a2c88d2f103cb124089eebbe/) | ⚠️ Unaudited |
| DistributionModule | unknown | ethereum | n/a | [`0xd56e99...469e73`](./contracts/ethereum-1/0xd56e9949d77001fa33ceab758bb93e1ab6469e73/) | ⚠️ Unaudited |
| DistributionRewardsProxy | unknown | ethereum | n/a | [`0x4b1b08...368d6d`](./contracts/ethereum-1/0x4b1b08313a290adf97d36a6f41f42bb19e368d6d/) | ⚠️ Unaudited |
| Distributor | unknown | optimism | n/a | [`0x52b88b...1a8253`](./contracts/optimism-10/0x52b88b300a8dd0808e53203eb499cfca051a8253/) | ⚠️ Unaudited |
| DolaBorrowingRights | unknown | ethereum | n/a | [`0xad038e...c5d710`](./contracts/ethereum-1/0xad038eb671c44b853887a7e32528fab35dc5d710/) | ⚠️ Unaudited |
| DolaFeed | unknown | ethereum | n/a | [`0xf45c5e...055a18`](./contracts/ethereum-1/0xf45c5ef54e1401569325e047f2fea7190e055a18/) | ⚠️ Unaudited |
| DolaPayroll | unknown | ethereum | n/a | [`0x32eddd...15358f`](./contracts/ethereum-1/0x32eddd879b199503c6fc37df95b8920cd415358f/) | ⚠️ Unaudited |
| DonationVault | unknown | ethereum | n/a | [`0xa544b7...50e672`](./contracts/ethereum-1/0xa544b70dc6af906862f68eb8e68c27bb7150e672/) | ⚠️ Unaudited |
| Donator | unknown | ethereum | n/a | [`0xc368ed...d28839`](./contracts/ethereum-1/0xc368ed8efc69d8e38ed4b4d726c40f9f9ad28839/) | ⚠️ Unaudited |
| DSSLeverage | unknown | ethereum | n/a | [`0x050cd4...92640e`](./contracts/ethereum-1/0x050cd4835b08babfc6ff92187971b3253e92640e/) | ⚠️ Unaudited |
| DynamicSwap | unknown | ethereum | n/a | [`0x035fb9...4b5f60`](./contracts/ethereum-1/0x035fb9efa7ed40a688044af22282fb19b64b5f60/) | ⚠️ Unaudited |
| EasyConverter | unknown | ethereum | n/a | [`0x50697a...224790`](./contracts/ethereum-1/0x50697a3a8698e36549db3e1e46ef136149224790/) | ⚠️ Unaudited |
| ECDSABackportRewards | unknown | ethereum | n/a | [`0xe9ca1a...c036fa`](./contracts/ethereum-1/0xe9ca1abe343515312eb6d13178c5a2dce3c036fa/) | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x82ab5f...c76108`](./contracts/ethereum-1/0x82ab5f02993bf312d9aca03157f26febebc76108/) | ⚠️ Unaudited |
| EcdsaDkgValidator | unknown | ethereum | n/a | [`0x0125c8...d4ef27`](./contracts/ethereum-1/0x0125c8977a02b2fa3970b1ed9af02f5bedd4ef27/) | ⚠️ Unaudited |
| EcdsaInactivity | unknown | ethereum | n/a | [`0x8263ef...46f764`](./contracts/ethereum-1/0x8263efcb8f28246697585c89fed0501cd946f764/) | ⚠️ Unaudited |
| ECDSARewards | unknown | ethereum | n/a | [`0xc5ac5a...ffca88`](./contracts/ethereum-1/0xc5ac5a8892230e0a3e1c473881a2de7353ffca88/) | ⚠️ Unaudited |
| ECDSARewardsDistributor | unknown | ethereum | n/a | [`0x5b9e48...91bbb3`](./contracts/ethereum-1/0x5b9e48f8818962699fe38f5989b130cee691bbb3/) | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | unknown | ethereum | n/a | [`0xa77ec9...952042`](./contracts/ethereum-1/0xa77ec9c89a0c889bcb05d15df42d49b706952042/) | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x037a91...5efb84`](./contracts/ethereum-1/0x037a91d627cdbdd5ae20d6912fa15ae29b5efb84/) | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | polygon | n/a | [`0x47d022...90a65a`](./contracts/polygon-137/0x47d022080d1b1fff0eb0b8acc98ac9f3ac90a65a/) | ⚠️ Unaudited |
| ELT | unknown | ethereum | n/a | [`0x42873d...48091b`](./contracts/ethereum-1/0x42873d662fd25b6b5d2a240afa1d39824a48091b/) | ⚠️ Unaudited |
| EminenceCurrency | unknown | ethereum | n/a | [`0x4ccea6...559ad4`](./contracts/ethereum-1/0x4ccea6503e8e5525d3de0c60855b6332af559ad4/) | ⚠️ Unaudited |
| EmptyUUPS | unknown | ethereum | n/a | [`0x3f69a9...297807`](./contracts/ethereum-1/0x3f69a9a183c62cff7ed5b07a3102a9c36e297807/) | ⚠️ Unaudited |
| ENA | unknown | ethereum | n/a | [`0x57e114...1e6061`](./contracts/ethereum-1/0x57e114b691db790c35207b2e685d4a43181e6061/) | ⚠️ Unaudited |
| EpochManager | unknown | ethereum | n/a | [`0x3fab25...d2ee31`](./contracts/ethereum-1/0x3fab259f2392f733c60c19492b5678e5d2d2ee31/) | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | arbitrum | n/a | [`0x312966...a8a43c`](./contracts/arbitrum-42161/0x3129662808bec728a27ab6a6b9afd3cbaca8a43c/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x0d8688...b6f378`](./contracts/ethereum-1/0x0d86883faf4ffd7aeb116390af37746f45b6f378/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x147379...f2d786`](./contracts/ethereum-1/0x147379a0174780570d07d70a14fb244ee5f2d786/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xd9a442...306a72`](./contracts/ethereum-1/0xd9a442856c234a39a81a089c06451ebaa4306a72/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | optimism | n/a | [`0x005980...1f46b2`](./contracts/optimism-10/0x005980270c2ad8728e8479ac3b1b25d8671f46b2/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | optimism | n/a | [`0x2e8012...9c8850`](./contracts/optimism-10/0x2e80122b1a095c25aa5717b2be8dc1eafe9c8850/) | ⚠️ Unaudited |
| ERC20 | unknown | ethereum | n/a | [`0x865377...dc9ce4`](./contracts/ethereum-1/0x865377367054516e17014ccded1e7d814edc9ce4/) | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | polygon | n/a | [`0x690df4...ebc653`](./contracts/polygon-137/0x690df473a6a4604391d150320f33afc1d4ebc653/) | ⚠️ Unaudited |
| ERC20Impl | unknown | ethereum | n/a | [`0x6704ba...df4ade`](./contracts/ethereum-1/0x6704ba24b8640bccee6bf2fd276a6a1b8edf4ade/) | ⚠️ Unaudited |
| ERC20Proxy | unknown | ethereum | n/a | [`0x056fd4...b6d5cd`](./contracts/ethereum-1/0x056fd409e1d7a124bd7017459dfea2f387b6d5cd/) | ⚠️ Unaudited |
| ERC20Store | unknown | ethereum | n/a | [`0xa17254...fcc6f2`](./contracts/ethereum-1/0xa17254482b5d4abd55433ce4ecdff21932fcc6f2/) | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | arbitrum | n/a | [`0xd806a4...247b2b`](./contracts/arbitrum-42161/0xd806a4a473e44578796898a4c546f575d7247b2b/) | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | ethereum | n/a | [`0x154547...f96f11`](./contracts/ethereum-1/0x1545473701f011a5c977e48ac43e1404cdf96f11/) | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | polygon | n/a | [`0x00f7b0...d50d32`](./contracts/polygon-137/0x00f7b061d410bb4afe189e80c8981774a2d50d32/) | ⚠️ Unaudited |
| Escrow | unknown | ethereum | n/a | [`0x10819c...1fb64f`](./contracts/ethereum-1/0x10819c95e76de0d58999832ed1e385176f1fb64f/) | ⚠️ Unaudited |
| EscrowedEXA | unknown | optimism | n/a | [`0x2d550e...51e280`](./contracts/optimism-10/0x2d550e003fde3e3114b1bbd03a25f2498c51e280/) | ⚠️ Unaudited |
| EscrowedMultipleMerkleDistributor | unknown | optimism | n/a | [`0x195f6f...aba307`](./contracts/optimism-10/0x195f6f7ca2268e1dec03352786c350eb61aba307/) | ⚠️ Unaudited |
| EscrowThales | unknown | optimism | n/a | [`0x566d35...aac9c2`](./contracts/optimism-10/0x566d358f3386abac32cbe750489306c73caac9c2/) | ⚠️ Unaudited |
| EsGMX | unknown | arbitrum | n/a | [`0x56f979...8758a0`](./contracts/arbitrum-42161/0x56f9799a53fa850d6f7c71f7e9015eb7768758a0/) | ⚠️ Unaudited |
| EsGmxBatchSender | unknown | arbitrum | n/a | [`0xc3828f...0207ef`](./contracts/arbitrum-42161/0xc3828fa579996090dc7767e051341338e60207ef/) | ⚠️ Unaudited |
| EthereumDIDRegistry | unknown | arbitrum | n/a | [`0xa9aeb1...047638`](./contracts/arbitrum-42161/0xa9aeb1c6f14f4244547b9a0946c485da99047638/) | ⚠️ Unaudited |
| ETHEscrow | unknown | ethereum | n/a | [`0xc48ee5...d9764d`](./contracts/ethereum-1/0xc48ee5a0e04f8ddc293c00c5d9ba6ee160d9764d/) | ⚠️ Unaudited |
| EthRepayAllHelper | unknown | ethereum | n/a | [`0xbe0c96...adfeae`](./contracts/ethereum-1/0xbe0c9650cf8ce5279b990e7a6634c63323adfeae/) | ⚠️ Unaudited |
| EthVault | unknown | ethereum | n/a | [`0x2dcdca...d8b277`](./contracts/ethereum-1/0x2dcdca085af2e258654e47204e483127e0d8b277/) | ⚠️ Unaudited |
| EURSToken | unknown | ethereum | n/a | [`0xdb25f2...807ad8`](./contracts/ethereum-1/0xdb25f211ab05b1c97d595516f45794528a807ad8/) | ⚠️ Unaudited |
| EventfulDataEdge | unknown | arbitrum | n/a | [`0xed16ce...223aec`](./contracts/arbitrum-42161/0xed16cebd4fa74a0016e1149cc03563db4b223aec/) | ⚠️ Unaudited |
| EXA | unknown | optimism | n/a | [`0x0810a8...d4c076`](./contracts/optimism-10/0x0810a8c5a2365943300523f4f947ae1546d4c076/) | ⚠️ Unaudited |
| ExaAccountFactory | unknown | optimism | n/a | [`0x3427a5...79616e`](./contracts/optimism-10/0x3427a595ed6e05cc2d8115e28bad151cb879616e/) | ⚠️ Unaudited |
| ExaPlugin | unknown | optimism | n/a | [`0x2bbaf5...c26887`](./contracts/optimism-10/0x2bbaf52f13513ce325066d387c1da1f260c26887/) | ⚠️ Unaudited |
| ExaPreviewer | unknown | optimism | n/a | [`0x0fc711...02d470`](./contracts/optimism-10/0x0fc7119947bb95d2e67c699c0dfe8bc22a02d470/) | ⚠️ Unaudited |
| Exchange | unknown | optimism | n/a | [`0x159f28...499660`](./contracts/optimism-10/0x159f28f598b5c5340d6a902d34eb373d30499660/) | ⚠️ Unaudited |
| ExchangeEfx | unknown | ethereum | n/a | [`0xdcdb42...dd5851`](./contracts/ethereum-1/0xdcdb42c9a256690bd153a7b409751adfc8dd5851/) | ⚠️ Unaudited |
| ExternalRewardDistributor | unknown | optimism | n/a | [`0x2b1d11...ae2597`](./contracts/optimism-10/0x2b1d11f82fc70e2693ab19c4c3da23da75ae2597/) | ⚠️ Unaudited |
| ExtraReward | unknown | ethereum | n/a | [`0x4b8674...697392`](./contracts/ethereum-1/0x4b86747e4d5d664d5bc40bf317e66e1898697392/) | ⚠️ Unaudited |
| Factory | unknown | ethereum | n/a | [`0x06d538...c2173e`](./contracts/ethereum-1/0x06d538690af257da524f25d0cd52fd85b1c2173e/) | ⚠️ Unaudited |
| FactoryPortal | unknown | polygon | n/a | [`0x0084b0...42a262`](./contracts/polygon-137/0x0084b0c29e25d5ccaee5465981837ebef542a262/) | ⚠️ Unaudited |
| FactoryRegistry | unknown | optimism | n/a | [`0xf4c67c...aa1d7b`](./contracts/optimism-10/0xf4c67cdeaab8360370f41514d06e32ccd8aa1d7b/) | ⚠️ Unaudited |
| FairLaunchCapitalVault | unknown | ethereum | n/a | [`0x3a2d0e...c6cc0a`](./contracts/ethereum-1/0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a/) | ⚠️ Unaudited |
| Faketroller | unknown | ethereum | n/a | [`0x6257e3...9fef3f`](./contracts/ethereum-1/0x6257e36efc9c7c6057c119ea2af40907159fef3f/) | ⚠️ Unaudited |
| FantomAnimals | unknown | ethereum | n/a | [`0x6bd3fe...5e08d3`](./contracts/ethereum-1/0x6bd3feef505256b01f0b0bf7b89124b80c5e08d3/) | ⚠️ Unaudited |
| FastPriceEvents | unknown | arbitrum | n/a | [`0x1b27de...d983e6`](./contracts/arbitrum-42161/0x1b27de2815b7903b64961e8c6a992e013dd983e6/) | ⚠️ Unaudited |
| FastPriceFeed | unknown | arbitrum | n/a | [`0x068f28...2167c7`](./contracts/arbitrum-42161/0x068f2880c5dc0cb5c1ef913a517f3ad4122167c7/) | ⚠️ Unaudited |
| Fed | unknown | ethereum | n/a | [`0x2b3454...5b90fd`](./contracts/ethereum-1/0x2b34548b865ad66a2b046cb82e59ee43f75b90fd/) | ⚠️ Unaudited |
| FeeDistributor | unknown | polygon | n/a | [`0x313d1d...a347fb`](./contracts/polygon-137/0x313d1d48430721370ecc57262a7664e375a347fb/) | ⚠️ Unaudited |
| FeeRebateToken | unknown | ethereum | n/a | [`0xaf3fff...f94789`](./contracts/ethereum-1/0xaf3fff06b75f99352d8c2a3c4bef1339a2f94789/) | ⚠️ Unaudited |
| FeeReceiver | unknown | ethereum | n/a | [`0x868cef...d96b33`](./contracts/ethereum-1/0x868cef33e29bf3037b5d4cf5c408eaef29d96b33/) | ⚠️ Unaudited |
| FeeSplitter | unknown | ethereum | n/a | [`0x09dcde...70199f`](./contracts/ethereum-1/0x09dcdeed84106f894412228479caffc3dd70199f/) | ⚠️ Unaudited |
| FetchToken | unknown | ethereum | n/a | [`0x031b41...91fa7f`](./contracts/ethereum-1/0x031b41e504677879370e9dbcf937283a8691fa7f/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | polygon | n/a | [`0x431d5d...f37bdb`](./contracts/polygon-137/0x431d5dff03120afa4bdf332c61a6e1766ef37bdb/) | ⚠️ Unaudited |
| FinalizeAndBroadcast | unknown | ethereum | n/a | [`0xcfaa95...5fd4ee`](./contracts/ethereum-1/0xcfaa9540332afa3974bceed79bdd24d86c5fd4ee/) | ⚠️ Unaudited |
| FixedRateIRM | unknown | ethereum | n/a | [`0xd3d6dd...e6f1a7`](./contracts/ethereum-1/0xd3d6ddb266dc9db2b71b095840c3b98e17e6f1a7/) | ⚠️ Unaudited |
| fKRW | unknown | ethereum | n/a | [`0x5c08b5...f2893a`](./contracts/ethereum-1/0x5c08b51ddbe8ba76e07be79975906c39aef2893a/) | ⚠️ Unaudited |
| FlashAngle | unknown | optimism | n/a | [`0xf1ddca...efe123`](./contracts/optimism-10/0xf1ddcaca7d17f8030ab2eb54f2d9811365efe123/) | ⚠️ Unaudited |
| Forwarder | unknown | optimism | n/a | [`0x06824d...29ab74`](./contracts/optimism-10/0x06824df38d1d77eadeb6bafcb03904e27429ab74/) | ⚠️ Unaudited |
| FoundationFunder | unknown | ethereum | n/a | [`0xadd84d...480993`](./contracts/ethereum-1/0xadd84d9312ed1961ce80a1ceb17446737f480993/) | ⚠️ Unaudited |
| Fountain | unknown | polygon | n/a | [`0xb24b7b...9d5191`](./contracts/polygon-137/0xb24b7b21839a6bbd017bc3159fc8ad3b959d5191/) | ⚠️ Unaudited |
| FPI | unknown | ethereum | n/a | [`0x5ca135...cbe08e`](./contracts/ethereum-1/0x5ca135cb8527d76e932f34b5145575f9d8cbe08e/) | ⚠️ Unaudited |
| FPIControllerPool | unknown | ethereum | n/a | [`0x0ae84c...469e37`](./contracts/ethereum-1/0x0ae84c1a6e142ed90f8a35a7e7b216cb25469e37/) | ⚠️ Unaudited |
| FPIS | unknown | ethereum | n/a | [`0xc2544a...901fdb`](./contracts/ethereum-1/0xc2544a32872a91f4a553b404c6950e89de901fdb/) | ⚠️ Unaudited |
| Fraud | unknown | ethereum | n/a | [`0x51bbef...ba3559`](./contracts/ethereum-1/0x51bbef1c7cc3a1d3bc5e64ce6c3ba6e66fba3559/) | ⚠️ Unaudited |
| FraxlendPair | unknown | ethereum | n/a | [`0x3835a5...752510`](./contracts/ethereum-1/0x3835a58ca93cdb5f912519ad366826ac9a752510/) | ⚠️ Unaudited |
| FrxETHOracle | unknown | ethereum | n/a | [`0x594618...29a158`](./contracts/ethereum-1/0x594618fb84e6d5ecbe876f4d9c9ed3cb4129a158/) | ⚠️ Unaudited |
| FTTOracle | unknown | ethereum | n/a | [`0x41a376...7da186`](./contracts/ethereum-1/0x41a37655a7afb85787bd60a9fa750225567da186/) | ⚠️ Unaudited |
| FundingScript | unknown | ethereum | n/a | [`0x94c70c...93d063`](./contracts/ethereum-1/0x94c70c36b519e03705ddc26982d438f71993d063/) | ⚠️ Unaudited |
| Fundraising | unknown | optimism | n/a | [`0x5b8978...f81e5f`](./contracts/optimism-10/0x5b89789fb230d17c4b0ae1461f26828554f81e5f/) | ⚠️ Unaudited |
| fUSD | unknown | ethereum | n/a | [`0x3d7f09...6dc10f`](./contracts/ethereum-1/0x3d7f0933ac403773d219cf0519de8082946dc10f/) | ⚠️ Unaudited |
| FXB | unknown | ethereum | n/a | [`0x0de54c...f1df1e`](./contracts/ethereum-1/0x0de54cfdfed8005176f8b7a9d5438b45c4f1df1e/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| FxnOracle | unknown | ethereum | n/a | [`0x1e08f5...8fd11e`](./contracts/ethereum-1/0x1e08f5c21817b5f8f3629471fcc2387e5b8fd11e/) | ⚠️ Unaudited |
| FxStateRootTunnel | unknown | ethereum | n/a | [`0xc7dd5c...87fc66`](./contracts/ethereum-1/0xc7dd5c30dca04f487c9ede0c5ac580c91587fc66/) | ⚠️ Unaudited |
| fxToken | unknown | ethereum | n/a | [`0x116172...3fcd35`](./contracts/ethereum-1/0x116172b2482c5dc3e6f445c16ac13367ac3fcd35/) | ⚠️ Unaudited |
| FxUsdOracle | unknown | ethereum | n/a | [`0xcc7988...f94327`](./contracts/ethereum-1/0xcc798827741e5e83477b601bbc3cc4eb92f94327/) | ⚠️ Unaudited |
| GamesOddsObtainer | unknown | optimism | n/a | [`0xc647ab...b7c03c`](./contracts/optimism-10/0xc647ab2cab7d6da6081703382ecf2814d8b7c03c/) | ⚠️ Unaudited |
| GasPriceOracle | unknown | ethereum | n/a | [`0x2c0a34...e46ab3`](./contracts/ethereum-1/0x2c0a348500638aace229d6868c26b4e64fe46ab3/) | ⚠️ Unaudited |
| GatewayRegistry | unknown | ethereum | n/a | [`0x503670...67a24e`](./contracts/ethereum-1/0x503670ec851c55ec1acfb5230192da921467a24e/) | ⚠️ Unaudited |
| GaugeFactory | unknown | optimism | n/a | [`0x8391fe...835071`](./contracts/optimism-10/0x8391fe399640e7228a059f8fa104b8a7b4835071/) | ⚠️ Unaudited |
| GaugeProxy | unknown | ethereum | n/a | [`0x823fd2...61081c`](./contracts/ethereum-1/0x823fd217dcc5ce36ca6bc1489586ecb42b61081c/) | ⚠️ Unaudited |
| Generalized4626Strategy | unknown | ethereum | n/a | [`0x167747...98d425`](./contracts/ethereum-1/0x167747bf5b3b6bf2f7f7c4cce32c463e9598d425/) | ⚠️ Unaudited |
| GenericOracle | unknown | ethereum | n/a | [`0x4142bb...e18410`](./contracts/ethereum-1/0x4142bb1ceec0dec4f7aaeb3d51d2dc8e6ee18410/) | ⚠️ Unaudited |
| GetOperatorDarknodes | unknown | ethereum | n/a | [`0x4e27a3...b8b5f0`](./contracts/ethereum-1/0x4e27a3e21e747cf875ad5829b6d9cb7700b8b5f0/) | ⚠️ Unaudited |
| GHIToken | unknown | ethereum | n/a | [`0x4be1f1...2faf4a`](./contracts/ethereum-1/0x4be1f1026fb4280f1ab3c35e16a38fb13c2faf4a/) | ⚠️ Unaudited |
| GLP | unknown | arbitrum | n/a | [`0x4277f8...1ac258`](./contracts/arbitrum-42161/0x4277f8f2c384827b5273592ff7cebd9f2c1ac258/) | ⚠️ Unaudited |
| GlpBalance | unknown | arbitrum | n/a | [`0x13e0bb...a4ebce`](./contracts/arbitrum-42161/0x13e0bbe893b33b64d4f3f96725dd70531fa4ebce/) | ⚠️ Unaudited |
| GlpManager | unknown | arbitrum | n/a | [`0x321f65...e22649`](./contracts/arbitrum-42161/0x321f653eed006ad1c29d174e17d96351bde22649/) | ⚠️ Unaudited |
| GMX | unknown | arbitrum | n/a | [`0x012341...d7c7b8`](./contracts/arbitrum-42161/0x01234181085565ed162a948b6a5e88758cd7c7b8/) | ⚠️ Unaudited |
| GmxTimelock | unknown | arbitrum | n/a | [`0x34b45e...118a81`](./contracts/arbitrum-42161/0x34b45ee7cdccb5652bf54fd9795dd447a4118a81/) | ⚠️ Unaudited |
| GNS | unknown | ethereum | n/a | [`0x28037b...05daeb`](./contracts/ethereum-1/0x28037b93702335e55fe6319e1c144b8a4d05daeb/) | ⚠️ Unaudited |
| Governable | unknown | arbitrum | n/a | [`0xaf8e96...9d8a47`](./contracts/arbitrum-42161/0xaf8e969e3e23f1732f614e64630498ec809d8a47/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | [`0xc7212f...0cb735`](./contracts/ethereum-1/0xc7212fc959bbb606f97036e8ac3da7aabf0cb735/) | ⚠️ Unaudited |
| GovernanceAddressProvider | unknown | polygon | n/a | [`0x2489df...d0453c`](./contracts/polygon-137/0x2489df1f40bca6dba1554aafecc237bbc6d0453c/) | ⚠️ Unaudited |
| Governor | unknown | ethereum | n/a | [`0x8a5ff7...7be76e`](./contracts/ethereum-1/0x8a5ff78bfe0de04f5dc1b57d2e1095be697be76e/) | ⚠️ Unaudited |
| GovernorAlpha | unknown | ethereum | n/a | [`0x260ac7...4534b1`](./contracts/ethereum-1/0x260ac708a95b10715d8bcd2f335196fd354534b1/) | ⚠️ Unaudited |
| GovernorMills | unknown | ethereum | n/a | [`0xbeccb6...359bf6`](./contracts/ethereum-1/0xbeccb6bb0aa4ab551966a7e4b97cec74bb359bf6/) | ⚠️ Unaudited |
| GrantStaking | unknown | ethereum | n/a | [`0x02612d...8a3db3`](./contracts/ethereum-1/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/) | ⚠️ Unaudited |
| GraphCurationToken | unknown | arbitrum | n/a | [`0x47a0d5...7d209c`](./contracts/arbitrum-42161/0x47a0d56ea574419b524285d52ffe7198297d209c/) | ⚠️ Unaudited |
| GraphPayments | unknown | arbitrum | n/a | [`0x6bc86e...cca86a`](./contracts/arbitrum-42161/0x6bc86e5d64c6c4882670804ca7ee4919cccca86a/) | ⚠️ Unaudited |
| GraphPreToken | unknown | ethereum | n/a | [`0x5d9611...559e10`](./contracts/ethereum-1/0x5d96113bac24d0b24f73d4cbb27b65ca7e559e10/) | ⚠️ Unaudited |
| GraphProxy | unknown | ethereum | n/a | [`0xadca0d...7b6825`](./contracts/ethereum-1/0xadca0dd4729c8ba3acf3e99f3a9f471ef37b6825/) | ⚠️ Unaudited |
| GraphProxy | unknown | ethereum | n/a | [`0xf55041...1263b9`](./contracts/ethereum-1/0xf55041e37e12cd407ad00ce2910b8269b01263b9/) | ⚠️ Unaudited |
| GraphProxy | unknown | arbitrum | n/a | [`0x65e1a5...9fd302`](./contracts/arbitrum-42161/0x65e1a5e8946e7e87d9774f5288f41c30a99fd302/) | ⚠️ Unaudited |
| GraphProxyAdmin | unknown | arbitrum | n/a | [`0x298393...8ca5fd`](./contracts/arbitrum-42161/0x2983936ac20202a6555993448e0d5654ac8ca5fd/) | ⚠️ Unaudited |
| GraphSale | unknown | ethereum | n/a | [`0x09695a...afa68b`](./contracts/ethereum-1/0x09695a6dff47b0053ef9553fee49d2d833afa68b/) | ⚠️ Unaudited |
| GraphTallyCollector | unknown | arbitrum | n/a | [`0x8f69f5...111a9e`](./contracts/arbitrum-42161/0x8f69f5c07477ac46fbc491b1e6d91e2bb0111a9e/) | ⚠️ Unaudited |
| GraphToken | unknown | ethereum | n/a | [`0xc944e9...da44a7`](./contracts/ethereum-1/0xc944e90c64b2c07662a292be6244bdf05cda44a7/) | ⚠️ Unaudited |
| GraphTokenLockManager | unknown | ethereum | n/a | [`0x628404...095883`](./contracts/ethereum-1/0x6284042d4da0931cbc64c5aab2d6184403095883/) | ⚠️ Unaudited |
| GraphTokenLockSimple | unknown | ethereum | n/a | [`0x32ec7a...7f2ca1`](./contracts/ethereum-1/0x32ec7a59549b9f114c9d7d8b21891d91ae7f2ca1/) | ⚠️ Unaudited |
| GraphTokenLockWallet | unknown | ethereum | n/a | [`0xbe5e63...5a2255`](./contracts/ethereum-1/0xbe5e630383b5baecf0db7b15c50d410edd5a2255/) | ⚠️ Unaudited |
| GRTTokenSwap | unknown | arbitrum | n/a | [`0xde2f97...548b94`](./contracts/arbitrum-42161/0xde2f97cf98411b4aeb2b2952556ff9553d548b94/) | ⚠️ Unaudited |
| Guardian | unknown | ethereum | n/a | [`0x941c26...39259d`](./contracts/ethereum-1/0x941c2699ec7e55a50bde030d8e1e70649839259d/) | ⚠️ Unaudited |
| gVEC | unknown | ethereum | n/a | [`0xb2d007...dfa2e6`](./contracts/ethereum-1/0xb2d007293a421471586d6bc3fbfeb1990fdfa2e6/) | ⚠️ Unaudited |
| gVECOFTAdapter | unknown | ethereum | n/a | [`0xc00a7e...036057`](./contracts/ethereum-1/0xc00a7efa3c59abd91be95accb8cdc9c50e036057/) | ⚠️ Unaudited |
| GyroECLPPool | unknown | polygon | n/a | [`0xf0ad20...47d5c2`](./contracts/polygon-137/0xf0ad209e2e969eaaa8c882aac71f02d8a047d5c2/) | ⚠️ Unaudited |
| HBTCStorage | unknown | ethereum | n/a | [`0xc72869...26eefd`](./contracts/ethereum-1/0xc728693dcf6b257bf88577d6c92e52028426eefd/) | ⚠️ Unaudited |
| HBTCToken | unknown | ethereum | n/a | [`0x0316eb...c6d380`](./contracts/ethereum-1/0x0316eb71485b0ab14103307bf65a021042c6d380/) | ⚠️ Unaudited |
| HCTToken | unknown | ethereum | n/a | [`0x60b920...9dd9ad`](./contracts/ethereum-1/0x60b920ed2e048b10d087ffc63f1adc303e9dd9ad/) | ⚠️ Unaudited |
| HDTToken | unknown | ethereum | n/a | [`0xe42ef5...cd06a6`](./contracts/ethereum-1/0xe42ef56340bca5072e3c7ba07df835a65ecd06a6/) | ⚠️ Unaudited |
| HealthcalculatorzapforcrvUSDcontroller | unknown | ethereum | n/a | [`0xcf61ee...830d6a`](./contracts/ethereum-1/0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a/) | ⚠️ Unaudited |
| HedgeExchanger | unknown | optimism | n/a | [`0x03afe3...799479`](./contracts/optimism-10/0x03afe3617e5251b976b9d20a3efb68eab7799479/) | ⚠️ Unaudited |
| HegicERCPool | unknown | ethereum | n/a | [`0x7224f2...a1345a`](./contracts/ethereum-1/0x7224f2e96061a1e3f51d152e32ccfab79ca1345a/) | ⚠️ Unaudited |
| HegicOptions | unknown | ethereum | n/a | [`0x30a086...e4ae70`](./contracts/ethereum-1/0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70/) | ⚠️ Unaudited |
| HegicOptionsFactory | unknown | ethereum | n/a | [`0x061940...082f23`](./contracts/ethereum-1/0x06194062288575f35c0af45d5e7013b65e082f23/) | ⚠️ Unaudited |
| HelloWorld | unknown | polygon | n/a | [`0x04de5e...7d1f98`](./contracts/polygon-137/0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98/) | ⚠️ Unaudited |
| Helper | unknown | ethereum | n/a | [`0x658890...a1c266`](./contracts/ethereum-1/0x658890f633b6892c1ba13247502791ad6da1c266/) | ⚠️ Unaudited |
| Hinkal | unknown | base | n/a | [`0x25e5e8...fca826`](./contracts/base-8453/0x25e5e82f5702a27c3466fe68f14abdbbadfca826/) | ⚠️ Unaudited |
| HorizonStaking | unknown | arbitrum | n/a | [`0x00669a...61ef03`](./contracts/arbitrum-42161/0x00669a4cf01450b64e8a2a20e9b1fcb71e61ef03/) | ⚠️ Unaudited |
| HorizonStakingExtension | unknown | arbitrum | n/a | [`0x3396f4...219d64`](./contracts/arbitrum-42161/0x3396f4f9b3c9e9b28126713b32d1d9939a219d64/) | ⚠️ Unaudited |
| hToken | unknown | ethereum | n/a | [`0x270b77...695389`](./contracts/ethereum-1/0x270b7748cdf8243bfe68face7230ef0fce695389/) | ⚠️ Unaudited |
| HUSDToken | unknown | ethereum | n/a | [`0x2a683d...13e846`](./contracts/ethereum-1/0x2a683d58afa5ce9f54cc498672a33c4a0e13e846/) | ⚠️ Unaudited |
| Hypervisor | unknown | polygon | n/a | [`0x02203f...b7d814`](./contracts/polygon-137/0x02203f2351e7ac6ab5051205172d3f772db7d814/) | ⚠️ Unaudited |
| IBAgreement | unknown | ethereum | n/a | [`0x30f254...37f812`](./contracts/ethereum-1/0x30f254104a8a7b7779483eeef5560397a737f812/) | ⚠️ Unaudited |
| IBAgreementV2 | unknown | ethereum | n/a | [`0x9ae50b...46b3ff`](./contracts/ethereum-1/0x9ae50bd64e45fd87dd05c768ff314b8fe246b3ff/) | ⚠️ Unaudited |
| iCollateral | unknown | ethereum | n/a | [`0x78705d...f4e025`](./contracts/ethereum-1/0x78705df56477ff301b71b176a2bd3151b9f4e025/) | ⚠️ Unaudited |
| iCollateralVaultFactory | unknown | ethereum | n/a | [`0xb10e11...3b0f69`](./contracts/ethereum-1/0xb10e11f3e38dc35e06397689e45fa939eb3b0f69/) | ⚠️ Unaudited |
| iCollateralVaultProxy | unknown | ethereum | n/a | [`0x06a8fe...3ddcc1`](./contracts/ethereum-1/0x06a8fee7a607c5c887f5f0672f7d8849583ddcc1/) | ⚠️ Unaudited |
| iDAI | unknown | ethereum | n/a | [`0x6c5f9d...ca35a0`](./contracts/ethereum-1/0x6c5f9d1d115862ca99253e5738590f6d31ca35a0/) | ⚠️ Unaudited |
| iDAIZapSwap | unknown | ethereum | n/a | [`0x260fbb...a867fa`](./contracts/ethereum-1/0x260fbb4855b2a4a719097131016b573f95a867fa/) | ⚠️ Unaudited |
| IDCard_V2 | unknown | polygon | n/a | [`0x2df86a...c13448`](./contracts/polygon-137/0x2df86a5f761532d764d8e3861ccdb1e763c13448/) | ⚠️ Unaudited |
| IDCard_V2_Controller | unknown | polygon | n/a | [`0x2d11a4...d3954a`](./contracts/polygon-137/0x2d11a42c7952d645089c8bfeb3a0728a0dd3954a/) | ⚠️ Unaudited |
| IdentityEvents | unknown | ethereum | n/a | [`0x8ac16c...fa4d86`](./contracts/ethereum-1/0x8ac16c08105de55a02e2b7462b1eec6085fa4d86/) | ⚠️ Unaudited |
| IDNFT_v1 | unknown | polygon | n/a | [`0xd84855...2d0da1`](./contracts/polygon-137/0xd8485513dd9947aa3287d90fd3804d3df52d0da1/) | ⚠️ Unaudited |
| IEarnAPR | unknown | ethereum | n/a | [`0x9cad8a...268eec`](./contracts/ethereum-1/0x9cad8ab10daa9af1a9d2b878541f41b697268eec/) | ⚠️ Unaudited |
| IEarnAPRWithPool | unknown | ethereum | n/a | [`0x029fea...44c9bb`](./contracts/ethereum-1/0x029feae8d773a3fe25f1a3e35a526bb54744c9bb/) | ⚠️ Unaudited |
| IEarnManager | unknown | ethereum | n/a | [`0x318135...50edfb`](./contracts/ethereum-1/0x318135fbd0b40d48fcef431ccdf6c7926450edfb/) | ⚠️ Unaudited |
| IEarnProvider | unknown | ethereum | n/a | [`0x7b3680...884bb4`](./contracts/ethereum-1/0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4/) | ⚠️ Unaudited |
| IEther | unknown | ethereum | n/a | [`0x75a4d0...cd25eb`](./contracts/ethereum-1/0x75a4d0b18e98674199829ddd2a6477ea25cd25eb/) | ⚠️ Unaudited |
| IJPEGDistribution | unknown | ethereum | n/a | [`0x2d1cb6...56557d`](./contracts/ethereum-1/0x2d1cb6fc2e13215841dc4f7dcd1aaa0fe256557d/) | ⚠️ Unaudited |
| ImplicitSwapfeeContract | unknown | ethereum | n/a | [`0x43d030...72011f`](./contracts/ethereum-1/0x43d03031fab845065e9cefe89dd122d63f72011f/) | ⚠️ Unaudited |
| IMXToken | unknown | ethereum | n/a | [`0xf57e7e...6e79ff`](./contracts/ethereum-1/0xf57e7e7c23978c3caec3c3548e3d615c346e79ff/) | ⚠️ Unaudited |
| InchSpellSwapper | unknown | ethereum | n/a | [`0xdfe1a5...a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | ⚠️ Unaudited |
| InchSwapper | unknown | optimism | n/a | [`0xf96fc9...b01a88`](./contracts/optimism-10/0xf96fc9ff8863c8b2fe73ad95a909dc86efb01a88/) | ⚠️ Unaudited |
| IndirectOFTWithFee | unknown | polygon | n/a | [`0xef06f4...c81f15`](./contracts/polygon-137/0xef06f4c43a07310fb17ef040dd78d2cd61c81f15/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x7a43b0...51ee52`](./contracts/ethereum-1/0x7a43b06ed73fcd3707f1a681ca645d758a51ee52/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x018008...754e63`](./contracts/ethereum-1/0x018008bfb33d285247a21d44e50697654f754e63/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x028171...5b68a3`](./contracts/ethereum-1/0x028171bca77440897b824ca71d1c56cac55b68a3/) | ⚠️ Unaudited |
| InitializeGovernedUpgradeabilityProxy | unknown | ethereum | n/a | [`0x41a925...2e4c10`](./contracts/ethereum-1/0x41a9257554c69c2187bafa6977d4953e0f2e4c10/) | ⚠️ Unaudited |
| InjectiveToken | unknown | ethereum | n/a | [`0xe28b3b...ceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | ⚠️ Unaudited |
| InstallmentsPreviewer | unknown | optimism | n/a | [`0xdfb4f5...5c3043`](./contracts/optimism-10/0xdfb4f5e2099c40e96fa28af83395d587b55c3043/) | ⚠️ Unaudited |
| InstallmentsRouter | unknown | optimism | n/a | [`0x5cf950...a2fa38`](./contracts/optimism-10/0x5cf950c9d446693ba9fb14300a52c90abda2fa38/) | ⚠️ Unaudited |
| InsuranceEtsOpUsdc | unknown | optimism | n/a | [`0x8767a4...a67516`](./contracts/optimism-10/0x8767a49d90f6fd60295083eade854f3a67a67516/) | ⚠️ Unaudited |
| InsuranceExchange | unknown | optimism | n/a | [`0x85bd0a...063018`](./contracts/optimism-10/0x85bd0a230a539f0043ba112bb51789e665063018/) | ⚠️ Unaudited |
| insuredVault | unknown | ethereum | n/a | [`0xa53e9e...2863d9`](./contracts/ethereum-1/0xa53e9e63793e55c533fe98d0ed178992942863d9/) | ⚠️ Unaudited |
| insurerVault | unknown | ethereum | n/a | [`0xb8813d...457bcf`](./contracts/ethereum-1/0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf/) | ⚠️ Unaudited |
| InterestRateDataResolver | unknown | ethereum | n/a | [`0x69a753...708909`](./contracts/ethereum-1/0x69a753b2dd4ab6cb7197308913f3ebb82d708909/) | ⚠️ Unaudited |
| InterestRateModel | unknown | optimism | n/a | [`0x005eee...b8d8b6`](./contracts/optimism-10/0x005eeeb489606ad0b73ad2b7f429d1e988b8d8b6/) | ⚠️ Unaudited |
| InterestStrategy | unknown | ethereum | n/a | [`0x0ec271...b0d377`](./contracts/ethereum-1/0x0ec271d3bdb1a723088d1dcef6b7ebf9c1b0d377/) | ⚠️ Unaudited |
| INV | unknown | ethereum | n/a | [`0x41d5d7...9dfb68`](./contracts/ethereum-1/0x41d5d79431a913c4ae7d69a668ecdfe5ff9dfb68/) | ⚠️ Unaudited |
| InvariantWatchdog | unknown | optimism | n/a | [`0x5aa7d1...58f722`](./contracts/optimism-10/0x5aa7d1f42d2bdd7ca7f7fe3a724327573658f722/) | ⚠️ Unaudited |
| InverseOracle | unknown | ethereum | n/a | [`0xe1ac24...60d318`](./contracts/ethereum-1/0xe1ac243f14de48eba4c267e82d97ebc7d260d318/) | ⚠️ Unaudited |
| InvFeed | unknown | ethereum | n/a | [`0x210ac5...90258f`](./contracts/ethereum-1/0x210ac53b27f16e20a9aa7d16260f84693390258f/) | ⚠️ Unaudited |
| IssuerChecker | unknown | optimism | n/a | [`0x59a644...4feb3a`](./contracts/optimism-10/0x59a644e490e48235adf8ba9b814a4f666c4feb3a/) | ⚠️ Unaudited |
| iTrade | unknown | ethereum | n/a | [`0x14a5ca...104e3e`](./contracts/ethereum-1/0x14a5ca87175cc04b90cd31b2f13fbf88d9104e3e/) | ⚠️ Unaudited |
| JPEG | unknown | ethereum | n/a | [`0xe80c0c...8345a3`](./contracts/ethereum-1/0xe80c0cd204d654cebe8dd64a4857cab6be8345a3/) | ⚠️ Unaudited |
| JPEGAirdrop | unknown | ethereum | n/a | [`0x4d7849...d99728`](./contracts/ethereum-1/0x4d7849f0ad7f265b458e1df991f58fb683d99728/) | ⚠️ Unaudited |
| JPEGAirdropClaim | unknown | ethereum | n/a | [`0xbff844...131a8e`](./contracts/ethereum-1/0xbff8443e25aea1245481995e8d961a77d4131a8e/) | ⚠️ Unaudited |
| JPEGAuction | unknown | ethereum | n/a | [`0x0bb49d...282630`](./contracts/ethereum-1/0x0bb49d6d3c51708cb0c810e169455022f5282630/) | ⚠️ Unaudited |
| JPEGC | unknown | ethereum | n/a | [`0x839795...eba6f4`](./contracts/ethereum-1/0x83979584ec8c6d94d93f838a524049173deba6f4/) | ⚠️ Unaudited |
| JPEGCardsCigStaking | unknown | ethereum | n/a | [`0xff9233...64d3b7`](./contracts/ethereum-1/0xff9233825542977cd093e9ffb8f0fc526164d3b7/) | ⚠️ Unaudited |
| JPEGCStaking | unknown | ethereum | n/a | [`0x45c2d9...066f81`](./contracts/ethereum-1/0x45c2d9f2553f4e1794e1b99b8e319ead8a066f81/) | ⚠️ Unaudited |
| JPEGIndex | unknown | ethereum | n/a | [`0x3415cf...5ac0ac`](./contracts/ethereum-1/0x3415cf1a6459b62a34656e53e4048233775ac0ac/) | ⚠️ Unaudited |
| JPEGIndexStaking | unknown | ethereum | n/a | [`0x26f501...f1ef9c`](./contracts/ethereum-1/0x26f5016ce71881bf6ff7537d4d56b3864df1ef9c/) | ⚠️ Unaudited |
| JPEGOraclesAggregator | unknown | ethereum | n/a | [`0x0eb4c7...305e7a`](./contracts/ethereum-1/0x0eb4c7309a100e95b69e4a39af6bf84cea305e7a/) | ⚠️ Unaudited |
| JPGD | unknown | ethereum | n/a | [`0xce722f...a89dd6`](./contracts/ethereum-1/0xce722f60f35c37ab295adc4e6ba45bcc7ca89dd6/) | ⚠️ Unaudited |
| JPGDStaking | unknown | ethereum | n/a | [`0x05fc48...fdf6cb`](./contracts/ethereum-1/0x05fc48447e0ac445042823dd36e3e4ed2ffdf6cb/) | ⚠️ Unaudited |
| JumpRateModel | unknown | ethereum | n/a | [`0x556202...7b57e7`](./contracts/ethereum-1/0x5562024784cc914069d67d89a28e3201bf7b57e7/) | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | ethereum | n/a | [`0x014872...d2e1a6`](./contracts/ethereum-1/0x014872728e7d8b1c6781f96ecfbd262ea4d2e1a6/) | ⚠️ Unaudited |
| JumpRateModelV4 | unknown | optimism | n/a | [`0x3f6fb8...02631e`](./contracts/optimism-10/0x3f6fb832279ac7db0b4f92b79cbb8df03702631e/) | ⚠️ Unaudited |
| Keep3r | unknown | ethereum | n/a | [`0x30f358...2f57f1`](./contracts/ethereum-1/0x30f3581ef6469334c8752d9b6ca3fb39c72f57f1/) | ⚠️ Unaudited |
| Keep3rHelper | unknown | ethereum | n/a | [`0xb41772...af955e`](./contracts/ethereum-1/0xb41772890c8b1564c5015a12c0dc6f18b0af955e/) | ⚠️ Unaudited |
| Keep3rJob | unknown | ethereum | n/a | [`0xb68e7d...02d10d`](./contracts/ethereum-1/0xb68e7deb279eaa11f234dff4931458d2c002d10d/) | ⚠️ Unaudited |
| Keep3rV1 | unknown | ethereum | n/a | [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | ⚠️ Unaudited |
| Keep3rV1Helper | unknown | ethereum | n/a | [`0x1530a2...5a5df9`](./contracts/ethereum-1/0x1530a2924805aed2385f8b91849cab7fe95a5df9/) | ⚠️ Unaudited |
| Keep3rV1JobRegistry | unknown | ethereum | n/a | [`0x739689...ab620c`](./contracts/ethereum-1/0x7396899638410094b3690f8bd2b56f07fdab620c/) | ⚠️ Unaudited |
| Keep3rV1Library | unknown | ethereum | n/a | [`0xdaef20...924c93`](./contracts/ethereum-1/0xdaef201ba1ba0354d71848893dd6d56905924c93/) | ⚠️ Unaudited |
| Keep3rV1Oracle | unknown | ethereum | n/a | [`0x733538...70282c`](./contracts/ethereum-1/0x73353801921417f465377c8d898c6f4c0270282c/) | ⚠️ Unaudited |
| Keep3rV1OracleUSD | unknown | ethereum | n/a | [`0x0a03b4...f5c080`](./contracts/ethereum-1/0x0a03b4f6d5314bb257540dc7702c326f97f5c080/) | ⚠️ Unaudited |
| Keep3rV1Volatility | unknown | ethereum | n/a | [`0x173ed6...132dc9`](./contracts/ethereum-1/0x173ed6531818456f29fc74011a3b1fb4b6132dc9/) | ⚠️ Unaudited |
| Keep3rV2Helper | unknown | ethereum | n/a | [`0x1bf162...c8f6c0`](./contracts/ethereum-1/0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0/) | ⚠️ Unaudited |
| Keep3rV2OracleFactory | unknown | ethereum | n/a | [`0x2266be...7880cb`](./contracts/ethereum-1/0x2266be1ee5d345914976fd4ce9f4be65737880cb/) | ⚠️ Unaudited |
| Keep3rV3OracleUSD | unknown | ethereum | n/a | [`0x1542ec...ba0f82`](./contracts/ethereum-1/0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82/) | ⚠️ Unaudited |
| KeepBonding | unknown | ethereum | n/a | [`0x27321f...89a3d5`](./contracts/ethereum-1/0x27321f84704a599ab740281e285cc4463d89a3d5/) | ⚠️ Unaudited |
| KeepFactorySelection | unknown | ethereum | n/a | [`0x29fa8f...78261c`](./contracts/ethereum-1/0x29fa8f46cbb9562b87773c8f50a7f9f27178261c/) | ⚠️ Unaudited |
| KeepRandomBeaconOperator | unknown | ethereum | n/a | [`0xdf7084...fcf9de`](./contracts/ethereum-1/0xdf708431162ba247ddae362d2c919e0fbafcf9de/) | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | unknown | ethereum | n/a | [`0x3975ce...5718e7`](./contracts/ethereum-1/0x3975ce253ff9d586cf08c3898f95064b7a5718e7/) | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | unknown | ethereum | n/a | [`0x099597...599eab`](./contracts/ethereum-1/0x09959798b95d00a3183d20fac298e4594e599eab/) | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x06b586...13fd7d`](./contracts/ethereum-1/0x06b5869aadcf3fa9a2733dd93d4240a6d813fd7d/) | ⚠️ Unaudited |
| KeepVault | unknown | ethereum | n/a | [`0xdf00da...016c87`](./contracts/ethereum-1/0xdf00dac2be1250cf62cbfc617ee7bc45c0016c87/) | ⚠️ Unaudited |
| KernelDepositPool | unknown | ethereum | n/a | [`0x534b51...6332bb`](./contracts/ethereum-1/0x534b51ba0fd7831394416681ce7cf401986332bb/) | ⚠️ Unaudited |
| Kwenta | unknown | optimism | n/a | [`0x920cf6...99456b`](./contracts/optimism-10/0x920cf626a271321c151d027030d5d08af699456b/) | ⚠️ Unaudited |
| KyberSwapRewardUsdcDaiLibrary | unknown | optimism | n/a | [`0xc4b4a2...3315a6`](./contracts/optimism-10/0xc4b4a2308b14704cb39c019c92e4cbf6b53315a6/) | ⚠️ Unaudited |
| KyberSwapRewardUsdcUsdtLibrary | unknown | optimism | n/a | [`0xf8928f...81fc7d`](./contracts/optimism-10/0xf8928f9118f9719d5f1b2aa5e7697bee6381fc7d/) | ⚠️ Unaudited |
| L1MantleToken | unknown | ethereum | n/a | [`0x3c3a81...6bf354`](./contracts/ethereum-1/0x3c3a81e81dc49a522a592e7622a7e711c06bf354/) | ⚠️ Unaudited |
| L2Curation | unknown | arbitrum | n/a | [`0x1b7551...45168d`](./contracts/arbitrum-42161/0x1b75515d958b7d18f07e5239513f1f285545168d/) | ⚠️ Unaudited |
| L2GNS | unknown | arbitrum | n/a | [`0x5cbdb6...d71667`](./contracts/arbitrum-42161/0x5cbdb6cfb91d435c5899fc05741e7d371fd71667/) | ⚠️ Unaudited |
| L2GraphToken | unknown | arbitrum | n/a | [`0x962306...7e88c7`](./contracts/arbitrum-42161/0x9623063377ad1b27544c965ccd7342f7ea7e88c7/) | ⚠️ Unaudited |
| L2GraphTokenLockManager | unknown | arbitrum | n/a | [`0x4f74c7...f9d911`](./contracts/arbitrum-42161/0x4f74c728cee713191e500e68a8c8cc32bff9d911/) | ⚠️ Unaudited |
| L2GraphTokenLockTransferTool | unknown | arbitrum | n/a | [`0x23c9c8...e68028`](./contracts/arbitrum-42161/0x23c9c8575e6ba0349a497b6d0e8f0b9239e68028/) | ⚠️ Unaudited |
| L2GraphTokenLockWallet | unknown | arbitrum | n/a | [`0x6864cd...8b51b0`](./contracts/arbitrum-42161/0x6864cdd6d69dbef02e5e06c5534b20fdaf8b51b0/) | ⚠️ Unaudited |
| L2Staking | unknown | arbitrum | n/a | [`0x069fac...5750d3`](./contracts/arbitrum-42161/0x069facd162023626866efda1c079d848575750d3/) | ⚠️ Unaudited |
| L2StandardERC20 | unknown | optimism | n/a | [`0x8ae125...ce7384`](./contracts/optimism-10/0x8ae125e8653821e851f12a49f7765db9a9ce7384/) | ⚠️ Unaudited |
| L3USD | unknown | polygon | n/a | [`0x2c2d8a...a90d5f`](./contracts/polygon-137/0x2c2d8a078b33bf7782a16acce2c5ba6653a90d5f/) | ⚠️ Unaudited |
| LayerZeroBridgeToken | unknown | optimism | n/a | [`0x840b25...230a72`](./contracts/optimism-10/0x840b25c87b626a259ca5ac32124fa752f0230a72/) | ⚠️ Unaudited |
| LayerZeroBridgeTokenERC20 | unknown | optimism | n/a | [`0x9201cc...15313a`](./contracts/optimism-10/0x9201cc18965792808549566e6b06b016d915313a/) | ⚠️ Unaudited |
| LazyHarvest | unknown | ethereum | n/a | [`0x9ea775...c5d0f3`](./contracts/ethereum-1/0x9ea775672e4424c403f048ab08c7f56015c5d0f3/) | ⚠️ Unaudited |
| Lens | unknown | ethereum | n/a | [`0x941a22...5e7fb7`](./contracts/ethereum-1/0x941a224090dc7890bcbc89adfd045d45e95e7fb7/) | ⚠️ Unaudited |
| LEO | unknown | ethereum | n/a | [`0x2af5d2...912ca3`](./contracts/ethereum-1/0x2af5d2ad76741191d15dfe7bf6ac92d4bd912ca3/) | ⚠️ Unaudited |
| LEOController | unknown | ethereum | n/a | [`0xf17ebb...9e5672`](./contracts/ethereum-1/0xf17ebb3a24dc6d6b56d38adf0df499c1cd9e5672/) | ⚠️ Unaudited |
| Leverager | unknown | optimism | n/a | [`0x5e454b...e1c7e9`](./contracts/optimism-10/0x5e454beff7378781376dcf5cb733fb4259e1c7e9/) | ⚠️ Unaudited |
| LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | ethereum | n/a | [`0xb556fa...7f2eac`](./contracts/ethereum-1/0xb556fa4c4752321b3154f08dfbdfcf34847f2eac/) | ⚠️ Unaudited |
| LibCobbDouglas | unknown | arbitrum | n/a | [`0x2bca89...855d57`](./contracts/arbitrum-42161/0x2bca89936fd13bacddd91d219f15df07da855d57/) | ⚠️ Unaudited |
| LibExponential | unknown | arbitrum | n/a | [`0x208f63...c289ee`](./contracts/arbitrum-42161/0x208f638d8804e4ccc874ec39e240feea3dc289ee/) | ⚠️ Unaudited |
| LightRelay | unknown | ethereum | n/a | [`0x836cdf...35896e`](./contracts/ethereum-1/0x836cdfe63fe2d63f8bdb69b96f6097f36635896e/) | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | ethereum | n/a | [`0x4ca2f6...efa3c8`](./contracts/ethereum-1/0x4ca2f6206da1a7cb8155fea68797efdf25efa3c8/) | ⚠️ Unaudited |
| LimitBackendHelper | unknown | ethereum | n/a | [`0x599609...08bfcd`](./contracts/ethereum-1/0x5996098a8bfa69fdff93e21228d895ba3608bfcd/) | ⚠️ Unaudited |
| LinearPreview | unknown | ethereum | n/a | [`0x73187e...5f2ad6`](./contracts/ethereum-1/0x73187e5b27f2aadd5ffee023d6a9e179365f2ad6/) | ⚠️ Unaudited |
| LiquidationHelper | unknown | ethereum | n/a | [`0x58f6a7...1ca85d`](./contracts/ethereum-1/0x58f6a780fe047b1ec4e4f8a4fd418b81361ca85d/) | ⚠️ Unaudited |
| LiquidationManager | unknown | polygon | n/a | [`0x57896e...6660ab`](./contracts/polygon-137/0x57896e135f845301c706f643506629493b6660ab/) | ⚠️ Unaudited |
| LiquidationOracle | unknown | ethereum | n/a | [`0xd82f6d...a3e8ce`](./contracts/ethereum-1/0xd82f6d42356e225bf79b870a05aac79062a3e8ce/) | ⚠️ Unaudited |
| Liquidator | unknown | ethereum | n/a | [`0x59bc9f...3b1963`](./contracts/ethereum-1/0x59bc9f79b3f91a90bfd286c9f8c4c8de143b1963/) | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | ethereum | n/a | [`0x00b71a...a2de99`](./contracts/ethereum-1/0x00b71a425db7c8b65a46cf39c23a188e10a2de99/) | ⚠️ Unaudited |
| LiquidityGenerator | unknown | optimism | n/a | [`0x17063a...a00ed7`](./contracts/optimism-10/0x17063ad4e83b0aba4ca0f3fc3a9794e807a00ed7/) | ⚠️ Unaudited |
| LiquidityIncome | unknown | ethereum | n/a | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | ⚠️ Unaudited |
| LiquiditySeedingHelper | unknown | ethereum | n/a | [`0x39cd9c...c76d23`](./contracts/ethereum-1/0x39cd9cb33da6b5eb2a22cbe0a07647e2c3c76d23/) | ⚠️ Unaudited |
| LizardPair | unknown | arbitrum | n/a | [`0x9cb911...2dedbc`](./contracts/arbitrum-42161/0x9cb911cbb270cae0d132689ce11c2c52ab2dedbc/) | ⚠️ Unaudited |
| LlamalendCrvStakeDaoERC4626Strat | unknown | ethereum | n/a | [`0xf3558b...96ab73`](./contracts/ethereum-1/0xf3558b523235fe9bb78a02ca6f18292f4796ab73/) | ⚠️ Unaudited |
| LlamalendCrvUsdStakeDaoERC4626Strat | unknown | ethereum | n/a | [`0x8dfcd3...81ed47`](./contracts/ethereum-1/0x8dfcd34b074517c446a7885c271afd365981ed47/) | ⚠️ Unaudited |
| LlamalendWeth2StakeDaoERC4626Strat | unknown | ethereum | n/a | [`0x531bba...42633d`](./contracts/ethereum-1/0x531bba64373a1b8e5a94bb51ba32cce1cb42633d/) | ⚠️ Unaudited |
| LlamalendWethStakeDaoERC4626Strat | unknown | ethereum | n/a | [`0x5de1bd...6998f1`](./contracts/ethereum-1/0x5de1bdedcdef3a5d6a833b6385ef7bd24e6998f1/) | ⚠️ Unaudited |
| LlamaPayFactory | unknown | ethereum | n/a | [`0x24529a...8a7ae3`](./contracts/ethereum-1/0x24529ad5bf07c97185632c6b015dad142b8a7ae3/) | ⚠️ Unaudited |
| LlamaSale | unknown | ethereum | n/a | [`0x8c2346...dd1dc6`](./contracts/ethereum-1/0x8c2346f74d15b27402c39d26d58daba57bdd1dc6/) | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | ethereum | n/a | [`0x0ec8e0...dbd93a`](./contracts/ethereum-1/0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a/) | ⚠️ Unaudited |
| LoanRegistry | unknown | ethereum | n/a | [`0x3eb2b8...dfe433`](./contracts/ethereum-1/0x3eb2b8c996c3660dddefc1f4559bab2ebbdfe433/) | ⚠️ Unaudited |
| Locks | unknown | ethereum | n/a | [`0x6c84a8...d0de40`](./contracts/ethereum-1/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| Lockup | unknown | optimism | n/a | [`0x019cfa...51a273`](./contracts/optimism-10/0x019cfa4d703b9f48643adc38c68b47a98651a273/) | ⚠️ Unaudited |
| LpFeed | unknown | ethereum | n/a | [`0x56775f...aa41ff`](./contracts/ethereum-1/0x56775f083ac3015b8c869d9e089da251dcaa41ff/) | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | ethereum | n/a | [`0x47a5f2...9d6f44`](./contracts/ethereum-1/0x47a5f2ffdf66d13ed7e317581f458d09b49d6f44/) | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | ethereum | n/a | [`0x78aa83...482edd`](./contracts/ethereum-1/0x78aa83bd6c9de5de0a2231366900ab060a482edd/) | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | ethereum | n/a | [`0x6ad9e8...03f76d`](./contracts/ethereum-1/0x6ad9e8e5236c0e2cf6d755bb7be4eabcbc03f76d/) | ⚠️ Unaudited |
| LPStaking | unknown | optimism | n/a | [`0x224d8f...277f03`](./contracts/optimism-10/0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03/) | ⚠️ Unaudited |
| LPStakingTime | unknown | ethereum | n/a | [`0x1c3000...3122fc`](./contracts/ethereum-1/0x1c3000b8f475a958b87c73a5cc5780ab763122fc/) | ⚠️ Unaudited |
| LPToken | unknown | arbitrum | n/a | [`0x597457...84985a`](./contracts/arbitrum-42161/0x59745774ed5eff903e615f5a2282cae03484985a/) | ⚠️ Unaudited |
| LRTConfig | unknown | ethereum | n/a | [`0x12c391...291fb4`](./contracts/ethereum-1/0x12c391f1bef4663532ffbab2664138f290291fb4/) | ⚠️ Unaudited |
| LRTConverter | unknown | ethereum | n/a | [`0x1bc711...a45993`](./contracts/ethereum-1/0x1bc71130a0e39942a7658878169764bbd8a45993/) | ⚠️ Unaudited |
| LRTDepositPool | unknown | ethereum | n/a | [`0x50fb23...3eb5e7`](./contracts/ethereum-1/0x50fb23fde4d469698821792d4a34863dca3eb5e7/) | ⚠️ Unaudited |
| LRTOracle | unknown | ethereum | n/a | [`0x144853...d94221`](./contracts/ethereum-1/0x144853f68b948625bbd2d3bc50431547c3d94221/) | ⚠️ Unaudited |
| LRTUnstakingVault | unknown | ethereum | n/a | [`0x1fc8ee...e5a2a4`](./contracts/ethereum-1/0x1fc8eebd7e1e61cc2cca005ee0f0d08417e5a2a4/) | ⚠️ Unaudited |
| LRTWithdrawalManager | unknown | ethereum | n/a | [`0x0ecde3...684e19`](./contracts/ethereum-1/0x0ecde3f414d1a245246d121e37191d9a63684e19/) | ⚠️ Unaudited |
| MagicInternetGold | unknown | ethereum | n/a | [`0x5624b4...8c5fd0`](./contracts/ethereum-1/0x5624b48ec2848bd642230b46405e1f65938c5fd0/) | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | ethereum | n/a | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | ⚠️ Unaudited |
| MainApeMatchingStrategy | unknown | ethereum | n/a | [`0x5ba384...87f163`](./contracts/ethereum-1/0x5ba38450dee95600a7d762c379d4bc956087f163/) | ⚠️ Unaudited |
| MaintainerProxy | unknown | ethereum | n/a | [`0x535e01...40140f`](./contracts/ethereum-1/0x535e01f948458e0b64f9db2a01da6f32e240140f/) | ⚠️ Unaudited |
| ManagedRewardsFactory | unknown | optimism | n/a | [`0xcdd958...05cff0`](./contracts/optimism-10/0xcdd9585005095ac7447d1fdbc990c5cfb805cff0/) | ⚠️ Unaudited |
| MarchMadness | unknown | optimism | n/a | [`0x3b05d4...2a4c31`](./contracts/optimism-10/0x3b05d4c58de4e96ea093032c6d70c7e4212a4c31/) | ⚠️ Unaudited |
| Mark2Market | unknown | optimism | n/a | [`0x7cb1b3...ca2789`](./contracts/optimism-10/0x7cb1b38591021309c64f451859d79312d8ca2789/) | ⚠️ Unaudited |
| Market | unknown | optimism | n/a | [`0x096f2c...39235d`](./contracts/optimism-10/0x096f2c15dbe3a12f812cd3ad921d166da839235d/) | ⚠️ Unaudited |
| MarketETHRouter | unknown | optimism | n/a | [`0x29babf...a10258`](./contracts/optimism-10/0x29babff3eba7b517a75109ea8fd6d1eab4a10258/) | ⚠️ Unaudited |
| MarketMathStatic | unknown | ethereum | n/a | [`0x4f9433...2e4f50`](./contracts/ethereum-1/0x4f9433e9b5272e0f8f3ee33e5fd718407a2e4f50/) | ⚠️ Unaudited |
| MaticWETH | unknown | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| Maximillion | unknown | ethereum | n/a | [`0x060917...e5aa2f`](./contracts/ethereum-1/0x06091717521c2002f2859c75f53987eaf1e5aa2f/) | ⚠️ Unaudited |
| MAYCApeStakingStrategy | unknown | ethereum | n/a | [`0x066de3...8b50d9`](./contracts/ethereum-1/0x066de3369aee792274d55d53fe9c14d06f8b50d9/) | ⚠️ Unaudited |
| MeritID | unknown | ethereum | n/a | [`0xc79903...afe4a2`](./contracts/ethereum-1/0xc79903fe6f268f2ac77a85df1c319bbd18afe4a2/) | ⚠️ Unaudited |
| MeritNFTDropFactory | unknown | ethereum | n/a | [`0x0c8015...7e1f42`](./contracts/ethereum-1/0x0c8015c94f21544aa958a55849a2af1f987e1f42/) | ⚠️ Unaudited |
| MerkleAirdrop | unknown | optimism | n/a | [`0x6b38c5...a71df9`](./contracts/optimism-10/0x6b38c561366a939ea8711a7311c8e5aab0a71df9/) | ⚠️ Unaudited |
| MerkleClaim | unknown | optimism | n/a | [`0x00d59b...777a49`](./contracts/optimism-10/0x00d59bc35174c3b250dd92a363495d38c8777a49/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0xe81028...bc6b00`](./contracts/ethereum-1/0xe810281d189f19572b5250556369c39f5ebc6b00/) | ⚠️ Unaudited |
| MerkleOrchard | unknown | ethereum | n/a | [`0x03caec...560e7e`](./contracts/ethereum-1/0x03caec60a734da03f3ee8f8aca8834e8c3560e7e/) | ⚠️ Unaudited |
| MetaKeep3r | unknown | ethereum | n/a | [`0x93dfa8...0a9372`](./contracts/ethereum-1/0x93dfa873b15ad496ba8116ce6cfec52ef30a9372/) | ⚠️ Unaudited |
| MetaStablePool | unknown | arbitrum | n/a | [`0x36bf22...91943f`](./contracts/arbitrum-42161/0x36bf227d6bac96e2ab1ebb5492ecec69c691943f/) | ⚠️ Unaudited |
| MetaStablePreview | unknown | ethereum | n/a | [`0x21a9fd...d59cd3`](./contracts/ethereum-1/0x21a9fd7212f37c35b030e9374510f99128d59cd3/) | ⚠️ Unaudited |
| MezoAllocator | unknown | ethereum | n/a | [`0x3e1d7e...e2b5df`](./contracts/ethereum-1/0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df/) | ⚠️ Unaudited |
| MezoBridge | unknown | ethereum | n/a | [`0x1af817...27d1f5`](./contracts/ethereum-1/0x1af817c36708fd0d057c87a51c92fbb0e527d1f5/) | ⚠️ Unaudited |
| Migrator | unknown | ethereum | n/a | [`0x8fb422...af6ddf`](./contracts/ethereum-1/0x8fb4223b7751243ae14987d6fc9e71d06aaf6ddf/) | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | ethereum | n/a | [`0x8e9ac0...2a12b8`](./contracts/ethereum-1/0x8e9ac0de3ab634ce0e2f0e397efc5ce8a72a12b8/) | ⚠️ Unaudited |
| MintableBaseToken | unknown | arbitrum | n/a | [`0x0d0e30...0e6a4f`](./contracts/arbitrum-42161/0x0d0e30d12b54d9ef7300edba23cb34f3730e6a4f/) | ⚠️ Unaudited |
| MintableBurnableSyntheticTokenPermit | unknown | optimism | n/a | [`0x79af5d...47d043`](./contracts/optimism-10/0x79af5dd14e855823fa3e9ecacdf001d99647d043/) | ⚠️ Unaudited |
| Minter | unknown | optimism | n/a | [`0x3460dc...a4102d`](./contracts/optimism-10/0x3460dc71a8863710d1c907b8d9d5dbc053a4102d/) | ⚠️ Unaudited |
| MinterAdmin | unknown | polygon | n/a | [`0xc6b1dc...084247`](./contracts/polygon-137/0xc6b1dc6c9ff85e968527f5c755fc07253a084247/) | ⚠️ Unaudited |
| MintGatewayLogicV2 | unknown | ethereum | n/a | [`0x1a5628...ce22b4`](./contracts/ethereum-1/0x1a562822f99d11e8f993f6bcda86277123ce22b4/) | ⚠️ Unaudited |
| MintGatewayProxy | unknown | ethereum | n/a | [`0x05387a...c6b1aa`](./contracts/ethereum-1/0x05387a10bb3ef789b6c2a9ce2d6c21d5a8c6b1aa/) | ⚠️ Unaudited |
| MintGatewayUpgrader | unknown | ethereum | n/a | [`0x137730...b04804`](./contracts/ethereum-1/0x13773093cdad89e8e1615f581a37c7eeabb04804/) | ⚠️ Unaudited |
| MinuteTimelock | unknown | ethereum | n/a | [`0x52bebd...a7f428`](./contracts/ethereum-1/0x52bebd3d7f37ec4284853fd5861ae71253a7f428/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | optimism | n/a | [`0x6315dc...3056a3`](./contracts/optimism-10/0x6315dc8ffeaf4278f062a3a9137eeee54f3056a3/) | ⚠️ Unaudited |
| MixOracle | unknown | ethereum | n/a | [`0x4d4f5e...584458`](./contracts/ethereum-1/0x4d4f5e7a1fe57f5ceb38bfce8653effa5e584458/) | ⚠️ Unaudited |
| MobixToken | unknown | ethereum | n/a | [`0x5311cf...cb9999`](./contracts/ethereum-1/0x5311cf987ad2b8087d7d83efc379d6f916cb9999/) | ⚠️ Unaudited |
| ModernTreasury | unknown | polygon | n/a | [`0x581c05...20b0db`](./contracts/polygon-137/0x581c05c6e4c22fcef7521448bb68d29c7720b0db/) | ⚠️ Unaudited |
| MonthlyBounty | unknown | polygon | n/a | [`0x1515bc...0a7a9a`](./contracts/polygon-137/0x1515bcb5489c6323de36a5bcd6b81d13a10a7a9a/) | ⚠️ Unaudited |
| MovingFunds | unknown | ethereum | n/a | [`0x310667...d42123`](./contracts/ethereum-1/0x3106675ede4a64d70131247466fd8704a3d42123/) | ⚠️ Unaudited |
| mSpellSender | unknown | ethereum | n/a | [`0x1440ec...e80815`](./contracts/ethereum-1/0x1440ecdfc61386a64116e58326bc7d6074e80815/) | ⚠️ Unaudited |
| mSpellSenderManual | unknown | ethereum | n/a | [`0xfc2796...13a4c0`](./contracts/ethereum-1/0xfc2796c47063d6fcb98006081778c7b45b13a4c0/) | ⚠️ Unaudited |
| mSpellStaking | unknown | ethereum | n/a | [`0x94635b...53f41d`](./contracts/ethereum-1/0x94635b2034ccec3293b81d411cd77c36c353f41d/) | ⚠️ Unaudited |
| Multicall2 | unknown | optimism | n/a | [`0xfbdd19...5d01b8`](./contracts/optimism-10/0xfbdd194376de19a88118e84e279b977f165d01b8/) | ⚠️ Unaudited |
| Multicall3p | unknown | ethereum | n/a | [`0xb782c6...d2d202`](./contracts/ethereum-1/0xb782c60c9e27dd66b8b63e3694b45d8636d2d202/) | ⚠️ Unaudited |
| MultiCallWithFailure | unknown | optimism | n/a | [`0x6cd24a...07eaf5`](./contracts/optimism-10/0x6cd24ac05103c2c911347a6d3628d64a9f07eaf5/) | ⚠️ Unaudited |
| MultichainVerseExplore | unknown | polygon | n/a | [`0x221050...11a0fd`](./contracts/polygon-137/0x2210502051221a600d3653eccc899eceea11a0fd/) | ⚠️ Unaudited |
| MultiClaim | unknown | ethereum | n/a | [`0x32facb...203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | ⚠️ Unaudited |
| MultiDAO_VotePower | unknown | polygon | n/a | [`0x2503c0...1c518d`](./contracts/polygon-137/0x2503c0f180bc6a4375e02309a26a9979171c518d/) | ⚠️ Unaudited |
| MultiDelegator | unknown | ethereum | n/a | [`0x1ba87b...207f76`](./contracts/ethereum-1/0x1ba87be4c20fa2d4cbd8e4ae9998649226207f76/) | ⚠️ Unaudited |
| MultiHonor_1155Querier | unknown | polygon | n/a | [`0x113ce4...58a713`](./contracts/polygon-137/0x113ce4b850d94e37077da2e1dc708a317458a713/) | ⚠️ Unaudited |
| MultiHonor_V1 | unknown | polygon | n/a | [`0x1ff9b7...42111b`](./contracts/polygon-137/0x1ff9b7dc66bb8cc7819e875b6739409b3a42111b/) | ⚠️ Unaudited |
| MultipleMerkleDistributor | unknown | optimism | n/a | [`0x1964cf...37f6f5`](./contracts/optimism-10/0x1964cf9d0c5c268dcf5a5d37f13600483237f6f5/) | ⚠️ Unaudited |
| MultiPriceOracle | unknown | ethereum | n/a | [`0x4e064e...a50d3d`](./contracts/ethereum-1/0x4e064e16be2a23b3284ec5d6e4d11ab253a50d3d/) | ⚠️ Unaudited |
| MultiRewards | unknown | ethereum | n/a | [`0x3547df...6b0043`](./contracts/ethereum-1/0x3547dfca04358540891149559e691b146c6b0043/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | n/a | [`0x4f85a4...d12ed0`](./contracts/ethereum-1/0x4f85a4b398b27935ba3c8aa79b0dc5ea52d12ed0/) | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | unknown | ethereum | n/a | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | ⚠️ Unaudited |
| NativeStakingChecker | unknown | ethereum | n/a | [`0xa47f92...a5a0da`](./contracts/ethereum-1/0xa47f925659799636c73f1fa244affe21f2a5a0da/) | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | ethereum | n/a | [`0x645e75...231f4c`](./contracts/ethereum-1/0x645e758796408efdd65bbbd877e8ebceeb231f4c/) | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | ethereum | n/a | [`0x18b5b6...5d14a7`](./contracts/ethereum-1/0x18b5b6696e6569f437f48b111734d72b225d14a7/) | ⚠️ Unaudited |
| NectarController | unknown | ethereum | n/a | [`0x0e55c5...7ba76d`](./contracts/ethereum-1/0x0e55c54249f25f70d519b7fb1c20e3331e7ba76d/) | ⚠️ Unaudited |
| NectarTreasury | unknown | ethereum | n/a | [`0xe85104...864125`](./contracts/ethereum-1/0xe851048c101abbdac26615c44dcec4c051864125/) | ⚠️ Unaudited |
| NexusMutualCover | unknown | ethereum | n/a | [`0x93a288...de7a28`](./contracts/ethereum-1/0x93a2880f657793a1d839653c8f8cef52f3de7a28/) | ⚠️ Unaudited |
| NFTDescriptor | unknown | optimism | n/a | [`0x829f78...61bea9`](./contracts/optimism-10/0x829f7819ef21301f423bbf406f6fc3f22b61bea9/) | ⚠️ Unaudited |
| NFTHelper | unknown | ethereum | n/a | [`0x83d85a...8f38e8`](./contracts/ethereum-1/0x83d85aedd308261d847c3eb8d7146457bd8f38e8/) | ⚠️ Unaudited |
| NFTRouter | unknown | polygon | n/a | [`0x887230...bdd1bb`](./contracts/polygon-137/0x887230c6bfeecd0d94c467fb05e852defcbdd1bb/) | ⚠️ Unaudited |
| NFTSVG | unknown | optimism | n/a | [`0x005c6a...f9fa16`](./contracts/optimism-10/0x005c6ac3a3e1543e5ff6c8f37641fa313af9fa16/) | ⚠️ Unaudited |
| NFTVaultSetter | unknown | ethereum | n/a | [`0x40eda5...94aac1`](./contracts/ethereum-1/0x40eda5fd29f306f72b2ad1d7d8be144f7b94aac1/) | ⚠️ Unaudited |
| NodeDelegator | unknown | ethereum | n/a | [`0x266a15...c44abc`](./contracts/ethereum-1/0x266a15d35327406c51789a7669465505abc44abc/) | ⚠️ Unaudited |
| NodeOperatorRegistry | unknown | ethereum | n/a | [`0x1b6c71...fdd7f3`](./contracts/ethereum-1/0x1b6c71edbdb8174420cf9b368b38a1b52bfdd7f3/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | optimism | n/a | [`0x0b98e0...8a7356`](./contracts/optimism-10/0x0b98e071c552c3a70796589c0cc9d4f9a68a7356/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | optimism | n/a | [`0x0452df...02e3c7`](./contracts/optimism-10/0x0452dfdf6e6fa85e53d476434df634b4fd02e3c7/) | ⚠️ Unaudited |
| NoOp | unknown | ethereum | n/a | [`0x1d5b85...590daf`](./contracts/ethereum-1/0x1d5b85d4099958de09fee8bc252a546b42590daf/) | ⚠️ Unaudited |
| Normalizer | unknown | ethereum | n/a | [`0x9214a6...f023aa`](./contracts/ethereum-1/0x9214a67186965fd5fe582a64a8646ff058f023aa/) | ⚠️ Unaudited |
| NttManager | unknown | ethereum | n/a | [`0x075108...1d6363`](./contracts/ethereum-1/0x075108f275ed81c9cfc01065e6e50ceea81d6363/) | ⚠️ Unaudited |
| OETH | unknown | ethereum | n/a | [`0x63fcd4...465ec0`](./contracts/ethereum-1/0x63fcd49f390c83494d6e086339c452444d465ec0/) | ⚠️ Unaudited |
| OETHDripper | unknown | ethereum | n/a | [`0x2fdfbb...e43dec`](./contracts/ethereum-1/0x2fdfbb2b905484f1445e23a97c97f65fe0e43dec/) | ⚠️ Unaudited |
| OETHHarvester | unknown | ethereum | n/a | [`0x0d017a...a6785c`](./contracts/ethereum-1/0x0d017afa83eace9f10a8ec5b6e13941664a6785c/) | ⚠️ Unaudited |
| OETHOracleRouter | unknown | ethereum | n/a | [`0x3ccd26...b61dba`](./contracts/ethereum-1/0x3ccd26e82f7305b12742fbb36708b42f82b61dba/) | ⚠️ Unaudited |
| OETHVault | unknown | ethereum | n/a | [`0x392540...8bd7ab`](./contracts/ethereum-1/0x39254033945aa2e4809cc2977e7087bee48bd7ab/) | ⚠️ Unaudited |
| OETHVaultAdmin | unknown | ethereum | n/a | [`0x60c91b...940d74`](./contracts/ethereum-1/0x60c91b985ac7117765b859d718576b2ed8940d74/) | ⚠️ Unaudited |
| OETHVaultCore | unknown | ethereum | n/a | [`0x109158...1c89f3`](./contracts/ethereum-1/0x1091588cc431275f99dc5df311fd8e1ab81c89f3/) | ⚠️ Unaudited |
| OETHZapper | unknown | ethereum | n/a | [`0x8c135f...5b66b0`](./contracts/ethereum-1/0x8c135f50c7317a93cc95bb208a494e5ade5b66b0/) | ⚠️ Unaudited |
| OFTWithFee | unknown | polygon | n/a | [`0x0e62ca...2837d2`](./contracts/polygon-137/0x0e62cadbaeec69b8b0f2e9d56510f925512837d2/) | ⚠️ Unaudited |
| OgvStaking | unknown | ethereum | n/a | [`0xe61110...590a42`](./contracts/ethereum-1/0xe61110663334794aba03c349c621a075dc590a42/) | ⚠️ Unaudited |
| OKBImplementation | unknown | ethereum | n/a | [`0x5dba7d...605621`](./contracts/ethereum-1/0x5dba7dfcdbfb8812d30fdd99d9441f8b7a605621/) | ⚠️ Unaudited |
| OKBImplementationV2 | unknown | ethereum | n/a | [`0x75231f...42a86c`](./contracts/ethereum-1/0x75231f58b43240c9718dd58b4967c5114342a86c/) | ⚠️ Unaudited |
| OmniCat | unknown | ethereum | n/a | [`0x9e2046...a6a356`](./contracts/ethereum-1/0x9e20461bc2c4c980f62f1b279d71734207a6a356/) | ⚠️ Unaudited |
| OnDemandSPV | unknown | ethereum | n/a | [`0x1531b6...a4b154`](./contracts/ethereum-1/0x1531b6e3d51bf80f634957df81a990b92da4b154/) | ⚠️ Unaudited |
| OneTimeListingManager | unknown | ethereum | n/a | [`0x8714f6...d2a48a`](./contracts/ethereum-1/0x8714f686102f206a233f415d521194ec80d2a48a/) | ⚠️ Unaudited |
| OneWayLendingFactory | unknown | ethereum | n/a | [`0x34024b...41f38c`](./contracts/ethereum-1/0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c/) | ⚠️ Unaudited |
| OpThales | unknown | optimism | n/a | [`0x217d47...a5bb11`](./contracts/optimism-10/0x217d47011b23bb961eb6d93ca9945b7501a5bb11/) | ⚠️ Unaudited |
| OptimismGlobalPayoutListener | unknown | optimism | n/a | [`0x9c97eb...10a641`](./contracts/optimism-10/0x9c97eb920f88a927ef3b0a89650104744910a641/) | ⚠️ Unaudited |
| OptimismPayoutListener | unknown | optimism | n/a | [`0x33b15a...21d72a`](./contracts/optimism-10/0x33b15a1b4e7bbecfa2e67318d661ece53421d72a/) | ⚠️ Unaudited |
| OptionsV1Library | unknown | ethereum | n/a | [`0x48bc6d...76cdd5`](./contracts/ethereum-1/0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5/) | ⚠️ Unaudited |
| OptionsV1Reserve | unknown | ethereum | n/a | [`0x00fbd1...d86309`](./contracts/ethereum-1/0x00fbd1774093e9240beb559f7a1300d291d86309/) | ⚠️ Unaudited |
| Oracle | unknown | ethereum | n/a | [`0xabe146...10cce8`](./contracts/ethereum-1/0xabe146cf570fd27ddd985895ce9b138a7110cce8/) | ⚠️ Unaudited |
| OracleAggregator | unknown | ethereum | n/a | [`0xa83682...f8f087`](./contracts/ethereum-1/0xa836826fda1332ea06c796c9b7990a9378f8f087/) | ⚠️ Unaudited |
| OracleFeed | unknown | ethereum | n/a | [`0x022abb...aad735`](./contracts/ethereum-1/0x022abb391ddcc80a17cd0a3873ff88dd06aad735/) | ⚠️ Unaudited |
| OracleLib | unknown | ethereum | n/a | [`0x02176d...c10ecc`](./contracts/ethereum-1/0x02176d640657740539f70eea98501ebbf1c10ecc/) | ⚠️ Unaudited |
| OracleRouter | unknown | ethereum | n/a | [`0x06c7a3...cc89ff`](./contracts/ethereum-1/0x06c7a36bfe715479c7f583785b7e9303dfcc89ff/) | ⚠️ Unaudited |
| OracleV1 | unknown | ethereum | n/a | [`0xc92ae5...fa9eda`](./contracts/ethereum-1/0xc92ae5e2a955a3440f677c1c60d48baa1cfa9eda/) | ⚠️ Unaudited |
| OracleV2 | unknown | ethereum | n/a | [`0xa9465f...167f53`](./contracts/ethereum-1/0xa9465f75eecfa4293abcafc02d68e79bd4167f53/) | ⚠️ Unaudited |
| OrderBook | unknown | arbitrum | n/a | [`0x09f77e...8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/) | ⚠️ Unaudited |
| OrderBookReader | unknown | arbitrum | n/a | [`0xa27c20...62bc21`](./contracts/arbitrum-42161/0xa27c20a7cf0e1c68c0460706bb674f98f362bc21/) | ⚠️ Unaudited |
| OrderExecutor | unknown | arbitrum | n/a | [`0x7257ac...32c3fb`](./contracts/arbitrum-42161/0x7257ac5d0a0aac04aa7ba2ac0a6eb742e332c3fb/) | ⚠️ Unaudited |
| OriginToken | unknown | ethereum | n/a | [`0x8207c1...41ae26`](./contracts/ethereum-1/0x8207c1ffc5b6804f6024322ccf34f29c3541ae26/) | ⚠️ Unaudited |
| OSMedianizer | unknown | ethereum | n/a | [`0xcf6308...1ed0f1`](./contracts/ethereum-1/0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1/) | ⚠️ Unaudited |
| OTC | unknown | ethereum | n/a | [`0x35fdfa...334c0e`](./contracts/ethereum-1/0x35fdfab459043a335cbbdf8fa28b31a147334c0e/) | ⚠️ Unaudited |
| OUSD | unknown | ethereum | n/a | [`0x1ae95d...18f805`](./contracts/ethereum-1/0x1ae95dd4eeae7ed03da79856c2d44ffa3318f805/) | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | ethereum | n/a | [`0x478409...ec29ed`](./contracts/ethereum-1/0x478409d856cd759cbfaa6639d88b7cdcb8ec29ed/) | ⚠️ Unaudited |
| OvertimeVoucher | unknown | optimism | n/a | [`0x5442ff...a3c671`](./contracts/optimism-10/0x5442ff0573fd54a4f6c02a7a0d8e22bdc1a3c671/) | ⚠️ Unaudited |
| Ovn | unknown | optimism | n/a | [`0x3a1806...00ea42`](./contracts/optimism-10/0x3a18062f12939658ac8c020a0443a388db00ea42/) | ⚠️ Unaudited |
| OvnGovernor | unknown | optimism | n/a | [`0x279a30...1c091e`](./contracts/optimism-10/0x279a30ed284d49d32de901acfc0004b2db1c091e/) | ⚠️ Unaudited |
| OvnTimelock | unknown | optimism | n/a | [`0x82c470...b018f6`](./contracts/optimism-10/0x82c470166bca446ed2fb90e08ab7941e3eb018f6/) | ⚠️ Unaudited |
| OvnTimelockController | unknown | optimism | n/a | [`0x0e2b2e...2a5679`](./contracts/optimism-10/0x0e2b2e48d5d10a5ac71c6d468cd7f92a962a5679/) | ⚠️ Unaudited |
| OvnToken | unknown | optimism | n/a | [`0x448e87...7b2615`](./contracts/optimism-10/0x448e87779345cc2a4b3772dfd0f63200837b2615/) | ⚠️ Unaudited |
| OwnedDistributor | unknown | optimism | n/a | [`0x2ba860...99ffc5`](./contracts/optimism-10/0x2ba86032e601e001aeb0069efff824bcf699ffc5/) | ⚠️ Unaudited |
| Pair | unknown | arbitrum | n/a | [`0x3c6ef5...7fb735`](./contracts/arbitrum-42161/0x3c6ef5ed8ad5df0d5e3d05c6e607c60f987fb735/) | ⚠️ Unaudited |
| PairFactory | unknown | optimism | n/a | [`0x25cbdd...b6b746`](./contracts/optimism-10/0x25cbddb98b35ab1ff77413456b31ec81a6b6b746/) | ⚠️ Unaudited |
| PAR | unknown | polygon | n/a | [`0x5c0326...90f17e`](./contracts/polygon-137/0x5c03264f1d2a996ecb12c3d56e9de401d190f17e/) | ⚠️ Unaudited |
| ParlayMarketsAMM | unknown | optimism | n/a | [`0x912f88...1e4d4e`](./contracts/optimism-10/0x912f889034ddd593a087c4e59061e549891e4d4e/) | ⚠️ Unaudited |
| ParlayVault | unknown | optimism | n/a | [`0x0a9397...08aacd`](./contracts/optimism-10/0x0a9397378c427e39bde0c53e6626523b7d08aacd/) | ⚠️ Unaudited |
| ParlayVerifier | unknown | optimism | n/a | [`0x146444...8017b6`](./contracts/optimism-10/0x146444d363028c5495f7d57a4c49e641ce8017b6/) | ⚠️ Unaudited |
| Patch0000 | unknown | ethereum | n/a | [`0x9d594d...da69b4`](./contracts/ethereum-1/0x9d594d1fba500113ede103c071dcf68535da69b4/) | ⚠️ Unaudited |
| PatchedManagedRewardsFactory | unknown | optimism | n/a | [`0x3f468e...142e9c`](./contracts/optimism-10/0x3f468e35f5c262a6e796bfe3be831bf8b9142e9c/) | ⚠️ Unaudited |
| Pauser | unknown | optimism | n/a | [`0x8cc053...f6f2a3`](./contracts/optimism-10/0x8cc05394ed714073758e9bef8073a83d79f6f2a3/) | ⚠️ Unaudited |
| PAXImplementation | unknown | ethereum | n/a | [`0x6ffcb0...da9ce6`](./contracts/ethereum-1/0x6ffcb0f00c3ad2575e443152d8861aec1bda9ce6/) | ⚠️ Unaudited |
| PAXImplementationV2 | unknown | ethereum | n/a | [`0x86eee0...55310a`](./contracts/ethereum-1/0x86eee0422322710866af89e9cae3f7383d55310a/) | ⚠️ Unaudited |
| PaymentsEscrow | unknown | arbitrum | n/a | [`0xc493e8...da11f7`](./contracts/arbitrum-42161/0xc493e8ebede3d1cc61632736108d943693da11f7/) | ⚠️ Unaudited |
| Payroll | unknown | ethereum | n/a | [`0x4e802c...4e560e`](./contracts/ethereum-1/0x4e802cedf01f9c83d5dba3caf7e7b70deb4e560e/) | ⚠️ Unaudited |
| PegKeeper | unknown | ethereum | n/a | [`0x1ef89e...4dccae`](./contracts/ethereum-1/0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae/) | ⚠️ Unaudited |
| PegPrice | unknown | ethereum | n/a | [`0x226845...6c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/) | ⚠️ Unaudited |
| PendleAaveV3SY | unknown | ethereum | n/a | [`0x8c28d2...9dfb74`](./contracts/ethereum-1/0x8c28d28bad669afadc37b034a8070d6d7b9dfb74/) | ⚠️ Unaudited |
| PendleAaveV3WithRewardsSYUpg | unknown | ethereum | n/a | [`0x269b2a...a98161`](./contracts/ethereum-1/0x269b2a2d136a46b8d48842cb6f306668e0a98161/) | ⚠️ Unaudited |
| PendleAgETHSY | unknown | ethereum | n/a | [`0xb1b915...02752a`](./contracts/ethereum-1/0xb1b9150f2085f6a553b547099977181ca802752a/) | ⚠️ Unaudited |
| PendleAuraBbAWethSwethSY | unknown | ethereum | n/a | [`0xcb611d...887da3`](./contracts/ethereum-1/0xcb611d0bd02a74c491b75d51d6ea5558f1887da3/) | ⚠️ Unaudited |
| PendleAuraWethAnkrethSY | unknown | ethereum | n/a | [`0xc0ca1e...01e9dc`](./contracts/ethereum-1/0xc0ca1e345be44ea2c83202222e5084ae3a01e9dc/) | ⚠️ Unaudited |
| PendleAuraWethAnkrethSYV2 | unknown | ethereum | n/a | [`0x7f531a...ef8463`](./contracts/ethereum-1/0x7f531a70a240fba0e40169e56eede1c6b7ef8463/) | ⚠️ Unaudited |
| PendleAuraWethRethSY | unknown | ethereum | n/a | [`0xdf7083...3dd915`](./contracts/ethereum-1/0xdf7083f2a0f8a191ab5eeafebe92ed21cd3dd915/) | ⚠️ Unaudited |
| PendleAuraWethRocketEthSYV2 | unknown | ethereum | n/a | [`0x9bdb1d...c89e56`](./contracts/ethereum-1/0x9bdb1dfd15d9051d127c3cd6882e194ca1c89e56/) | ⚠️ Unaudited |
| PendleAuraWethVethSY | unknown | ethereum | n/a | [`0x8c76e1...a159ea`](./contracts/ethereum-1/0x8c76e1c2c57c343afa77c4374471eb4eb6a159ea/) | ⚠️ Unaudited |
| PendleAuraWethWstethSY | unknown | ethereum | n/a | [`0x8267fd...dc9820`](./contracts/ethereum-1/0x8267fdabd1b8c8645138f2de5b0fe24988dc9820/) | ⚠️ Unaudited |
| PendleAuraWstethAnkreth | unknown | ethereum | n/a | [`0xb5cd09...36f044`](./contracts/ethereum-1/0xb5cd090010d4735f18306eb680d898ef9f36f044/) | ⚠️ Unaudited |
| PendleBeraStoneVaultSY | unknown | ethereum | n/a | [`0xd7b2a4...e97c45`](./contracts/ethereum-1/0xd7b2a47ac9236d9685b573a2428f72ec45e97c45/) | ⚠️ Unaudited |
| PendleBeraVedaBTCSY | unknown | ethereum | n/a | [`0xaaa576...a6ab94`](./contracts/ethereum-1/0xaaa576f3c8b1f6f12afd37f3936ced36e1a6ab94/) | ⚠️ Unaudited |
| PendleBeraVedaETHSY | unknown | ethereum | n/a | [`0x042677...5f55da`](./contracts/ethereum-1/0x042677ce7e0e63fa5881f44a0f00d33feb5f55da/) | ⚠️ Unaudited |
| PendleBoringSolvBTCOneracle | unknown | ethereum | n/a | [`0x98f8c6...2589ed`](./contracts/ethereum-1/0x98f8c6467b1875d07df0bfc9137a751eaa2589ed/) | ⚠️ Unaudited |
| PendleBridgedPrincipalToken | unknown | ethereum | n/a | [`0xa28b24...806f45`](./contracts/ethereum-1/0xa28b2445c8e1751733e75e6794971aeea4806f45/) | ⚠️ Unaudited |
| PendleCommonPoolDeployHelperV2 | unknown | ethereum | n/a | [`0x71364e...e6335d`](./contracts/ethereum-1/0x71364efef30cc27a9c7632ff91cb8be1dee6335d/) | ⚠️ Unaudited |
| PendleCommonSYFactory | unknown | ethereum | n/a | [`0xfe906f...c4fff4`](./contracts/ethereum-1/0xfe906f1ec1722029799da23bdc43179302c4fff4/) | ⚠️ Unaudited |
| PendleConcreteLBTCSY | unknown | ethereum | n/a | [`0x83cb5e...ba4723`](./contracts/ethereum-1/0x83cb5e4ea2d95327d33a15902c1da5671eba4723/) | ⚠️ Unaudited |
| PendleConcreteSolvBTCBBNSY | unknown | ethereum | n/a | [`0x24e957...4f0b6b`](./contracts/ethereum-1/0x24e9571c29d749e54246741ba137fe2d574f0b6b/) | ⚠️ Unaudited |
| PendleConcreteSUSDESY | unknown | ethereum | n/a | [`0x7258e5...1e2790`](./contracts/ethereum-1/0x7258e564c8123227616cadf5466dc9ee261e2790/) | ⚠️ Unaudited |
| PendleConcreteUniBTCSY | unknown | ethereum | n/a | [`0xa42436...2b4e68`](./contracts/ethereum-1/0xa424366bcf639628b400d7c0e0607c6b2e2b4e68/) | ⚠️ Unaudited |
| PendleConcreteVaultSY | unknown | ethereum | n/a | [`0x9a90fd...440423`](./contracts/ethereum-1/0x9a90fd7088cc1dc1099b25d2a99a6cee93440423/) | ⚠️ Unaudited |
| PendleCornEBTCSY | unknown | ethereum | n/a | [`0xc86cc6...3ebfe7`](./contracts/ethereum-1/0xc86cc613aa22ca1d476aeba2c3c437bac63ebfe7/) | ⚠️ Unaudited |
| PendleCornLBTCSY | unknown | ethereum | n/a | [`0x9d6ec7...7f223e`](./contracts/ethereum-1/0x9d6ec7a7b051b32205f74b140a0fa6f09d7f223e/) | ⚠️ Unaudited |
| PendleCornSolvBTCBBNSYUpg | unknown | ethereum | n/a | [`0x23e068...8b5f80`](./contracts/ethereum-1/0x23e06828d1a1460aba63f92ba75396bdf88b5f80/) | ⚠️ Unaudited |
| PendleCornUniBTCSYUpg | unknown | ethereum | n/a | [`0x83e1d1...cc5593`](./contracts/ethereum-1/0x83e1d1a2ce8ed6c4674d9ac61b5bf51395cc5593/) | ⚠️ Unaudited |
| PendleCurveFraxUsdcSY | unknown | ethereum | n/a | [`0xd393d1...81bc04`](./contracts/ethereum-1/0xd393d1ddd6b8811a86d925f5e14014282581bc04/) | ⚠️ Unaudited |
| PendleCurvePool2TokenSYUpg | unknown | ethereum | n/a | [`0xba04c9...ac8037`](./contracts/ethereum-1/0xba04c9a4297484aa671fd3425364994cf2ac8037/) | ⚠️ Unaudited |
| PendleCUSDAdapter | unknown | ethereum | n/a | [`0xae8bc0...21d33b`](./contracts/ethereum-1/0xae8bc036451af7c8f96fd90642e163392d21d33b/) | ⚠️ Unaudited |
| PendleEBTCSY | unknown | ethereum | n/a | [`0xc7b695...8c10a6`](./contracts/ethereum-1/0xc7b6957a4feedfc3043e8675d51f75ee688c10a6/) | ⚠️ Unaudited |
| PendleEBTCSYV2 | unknown | ethereum | n/a | [`0x7acdf2...961880`](./contracts/ethereum-1/0x7acdf2012aac69d70b86677fe91eb66e08961880/) | ⚠️ Unaudited |
| PendleEEigenSYUpg | unknown | ethereum | n/a | [`0x782374...b21923`](./contracts/ethereum-1/0x78237434ed20f2e2f4aadc7ef4e789644ab21923/) | ⚠️ Unaudited |
| PendleERC20SY | unknown | ethereum | n/a | [`0x8b9d89...c29c48`](./contracts/ethereum-1/0x8b9d898327c0ac74b946ca3ca9fcfcbe9bc29c48/) | ⚠️ Unaudited |
| PendleERC20SYUpg | unknown | ethereum | n/a | [`0x982be5...064c9d`](./contracts/ethereum-1/0x982be58c67689e0bab9e884c30e7a6e78e064c9d/) | ⚠️ Unaudited |
| PendleERC4626NoRedeemNoDepositUpgSY | unknown | ethereum | n/a | [`0x8e5e01...7ba515`](./contracts/ethereum-1/0x8e5e017d6b3f567623b5d4a690a2a686bf7ba515/) | ⚠️ Unaudited |
| PendleERC4626NoRedeemUpgSY | unknown | ethereum | n/a | [`0x338e2c...d718cb`](./contracts/ethereum-1/0x338e2cafa81e72ff422983e124e265eeccd718cb/) | ⚠️ Unaudited |
| PendleERC4626NotRedeemableToAssetSY | unknown | ethereum | n/a | [`0xf6193c...ec980f`](./contracts/ethereum-1/0xf6193c65cf3d1cedde0ff9d8cb9781ad21ec980f/) | ⚠️ Unaudited |
| PendleERC4626OptRedeemSYUpg | unknown | ethereum | n/a | [`0x86e2a1...c185a8`](./contracts/ethereum-1/0x86e2a16a5abc67467ce502e3dab511c909c185a8/) | ⚠️ Unaudited |
| PendleERC4626SY | unknown | ethereum | n/a | [`0x90f193...0e978e`](./contracts/ethereum-1/0x90f1935f733dd8826dca2bd01ccfc600f20e978e/) | ⚠️ Unaudited |
| PendleERC4626SYV2 | unknown | ethereum | n/a | [`0xcf120a...d5eab0`](./contracts/ethereum-1/0xcf120a4812b8a33830caf83d1cf843a2f4d5eab0/) | ⚠️ Unaudited |
| PendleERC4626UpgSYV2 | unknown | ethereum | n/a | [`0x0a9116...520b78`](./contracts/ethereum-1/0x0a91166428d71777e1a9b338b84eb9452e520b78/) | ⚠️ Unaudited |
| PendleEUSDSY | unknown | ethereum | n/a | [`0x7e16e4...c207f1`](./contracts/ethereum-1/0x7e16e4253ce4a1c96422a9567b23b4b5ebc207f1/) | ⚠️ Unaudited |
| PendleExchangeRateOracle | unknown | ethereum | n/a | [`0x78d686...3cd7a0`](./contracts/ethereum-1/0x78d686134aaf149aa767dce1ad0cd2799a3cd7a0/) | ⚠️ Unaudited |
| PendleExchangeRateOracleApp | unknown | ethereum | n/a | [`0xb6d07d...024d33`](./contracts/ethereum-1/0xb6d07db872eb82717794d2a3d64aad04d0024d33/) | ⚠️ Unaudited |
| PendleFeeDistributor | unknown | ethereum | n/a | [`0xb0caa6...2ce8cb`](./contracts/ethereum-1/0xb0caa67c712d96809f2abaf2c95369ef942ce8cb/) | ⚠️ Unaudited |
| PendleFeeSetter | unknown | ethereum | n/a | [`0xd4dfcf...d09f10`](./contracts/ethereum-1/0xd4dfcf062783b9ec27034c459e73caf930d09f10/) | ⚠️ Unaudited |
| PendleFluxLendingSY | unknown | ethereum | n/a | [`0xdeaa58...6f2d76`](./contracts/ethereum-1/0xdeaa5833d09179c20b55601453b9dd22216f2d76/) | ⚠️ Unaudited |
| PendleFXSaveSY | unknown | ethereum | n/a | [`0x13945b...18d2ab`](./contracts/ethereum-1/0x13945b761b2ed3219a497a46d15a8923f418d2ab/) | ⚠️ Unaudited |
| PendleGaugeControllerMainchainUpg | unknown | ethereum | n/a | [`0x7762cb...a31c9a`](./contracts/ethereum-1/0x7762cbfa8f62999a8a40d800b751686e99a31c9a/) | ⚠️ Unaudited |
| PendleGaugeControllerUpg | unknown | ethereum | n/a | [`0x47d745...c24e57`](./contracts/ethereum-1/0x47d74516b33ed5d70dde7119a40839f6fcc24e57/) | ⚠️ Unaudited |
| PendleGovernanceProxy | unknown | ethereum | n/a | [`0x6f1bfd...0b4188`](./contracts/ethereum-1/0x6f1bfdedd980badbbbfe1c79e9fc9a8c690b4188/) | ⚠️ Unaudited |
| PendleHwHLPSY | unknown | ethereum | n/a | [`0x86f681...e457ed`](./contracts/ethereum-1/0x86f6817c22a14393550b135710ea58f311e457ed/) | ⚠️ Unaudited |
| PendleInstadappLendingSY | unknown | ethereum | n/a | [`0x4726fc...141191`](./contracts/ethereum-1/0x4726fcb2fbe4398449bb7ce44eb458dbd7141191/) | ⚠️ Unaudited |
| PendleKarakVaultSUSDESY | unknown | ethereum | n/a | [`0x1b6418...c8e19e`](./contracts/ethereum-1/0x1b641894e66aec7bf5ab86517e8d81763cc8e19e/) | ⚠️ Unaudited |
| PendleKarakVaultUSDESY | unknown | ethereum | n/a | [`0xd63a35...85b0e8`](./contracts/ethereum-1/0xd63a351dae6523a65a9d8c8291da80579785b0e8/) | ⚠️ Unaudited |
| PendleKarakVaultWEETHSY | unknown | ethereum | n/a | [`0x8db42a...873796`](./contracts/ethereum-1/0x8db42af6b2de9e8aee47f3423570d8e9c3873796/) | ⚠️ Unaudited |
| PendleLBTCExchangeRateOracle | unknown | ethereum | n/a | [`0x82199b...e5e43b`](./contracts/ethereum-1/0x82199b840796cb8d910974b41175d9dfb1e5e43b/) | ⚠️ Unaudited |
| PendleLBTCSY | unknown | ethereum | n/a | [`0xc781c0...5c6f36`](./contracts/ethereum-1/0xc781c0cc527cb8c351be3a64c690216c535c6f36/) | ⚠️ Unaudited |
| PendleLevelUSDSY | unknown | ethereum | n/a | [`0x14ff57...1b9748`](./contracts/ethereum-1/0x14ff57675c9c34eeb9e1516ffda7cac6ed1b9748/) | ⚠️ Unaudited |
| PendleLimitRouter | unknown | ethereum | n/a | [`0xc20e5f...38f2db`](./contracts/ethereum-1/0xc20e5f2721a2553fa8135e447f2812495138f2db/) | ⚠️ Unaudited |
| PendleLiquidBeraBTCSYScaled18 | unknown | ethereum | n/a | [`0x3d9819...b01aff`](./contracts/ethereum-1/0x3d98195b252dbfec41dff573981224e4a4b01aff/) | ⚠️ Unaudited |
| PendleMarketFactory | unknown | ethereum | n/a | [`0xefbfc4...1a8ee4`](./contracts/ethereum-1/0xefbfc43d3eccc1a7cfd08b9d057457c2341a8ee4/) | ⚠️ Unaudited |
| PendleMarketFactoryV3 | unknown | ethereum | n/a | [`0xc79ace...3a218b`](./contracts/ethereum-1/0xc79aceac25dfce01f60d635397ffb442283a218b/) | ⚠️ Unaudited |
| PendleMarketFactoryV6Upg | unknown | ethereum | n/a | [`0xef0a48...6839c4`](./contracts/ethereum-1/0xef0a480569eeafb156b09d4312d69f54f96839c4/) | ⚠️ Unaudited |
| PendleMellow4626SYUpg | unknown | ethereum | n/a | [`0x210e15...f7422b`](./contracts/ethereum-1/0x210e157a1323d945c7600e31b8cb6763d4f7422b/) | ⚠️ Unaudited |
| PendleMellowRstETHSY | unknown | ethereum | n/a | [`0x749087...0202f9`](./contracts/ethereum-1/0x749087ee993fdfc141f6f0e0b1370fee2d0202f9/) | ⚠️ Unaudited |
| PendleMellowSUSDESY | unknown | ethereum | n/a | [`0xbcd952...c7797e`](./contracts/ethereum-1/0xbcd9522eef626dd0363347bde6cab105c2c7797e/) | ⚠️ Unaudited |
| PendleMellowVaultERC4626SYUpg | unknown | ethereum | n/a | [`0x7b91b6...df9718`](./contracts/ethereum-1/0x7b91b60f96c1c587c830a0239e27431276df9718/) | ⚠️ Unaudited |
| PendleMellowVaultSYBaseV2Upg | unknown | ethereum | n/a | [`0x640467...18291f`](./contracts/ethereum-1/0x64046776c9c856fdc5c39c6eba101adc8e18291f/) | ⚠️ Unaudited |
| PendleMellowVaultWstETHSYUpg | unknown | ethereum | n/a | [`0x198139...b00346`](./contracts/ethereum-1/0x198139f26d42f2028c10427a161e2d0e8bb00346/) | ⚠️ Unaudited |
| PendleMidasSY | unknown | ethereum | n/a | [`0x01e0f0...88bb5c`](./contracts/ethereum-1/0x01e0f0351be9f820f83a6d4175b8e5faa588bb5c/) | ⚠️ Unaudited |
| PendleMorpho4626AssetSY | unknown | ethereum | n/a | [`0x8077b6...34d130`](./contracts/ethereum-1/0x8077b6f34e9193d5bbb0ef06a73119060534d130/) | ⚠️ Unaudited |
| PendleMsgSendEndpointUpg | unknown | ethereum | n/a | [`0x07b101...2e989f`](./contracts/ethereum-1/0x07b1014c88f14c9e910092526db57a20052e989f/) | ⚠️ Unaudited |
| PendleMulticall | unknown | ethereum | n/a | [`0xca54ac...166640`](./contracts/ethereum-1/0xca54acc50ede7f2fc098b6bfa5cebaaf40166640/) | ⚠️ Unaudited |
| PendleMultiTokenMerkleDistributor | unknown | ethereum | n/a | [`0x726db0...609a19`](./contracts/ethereum-1/0x726db0396ba75efeb9362400e6067b7a1d609a19/) | ⚠️ Unaudited |
| PendlePoolDeployHelperV2 | unknown | ethereum | n/a | [`0x8a28d3...6c9c24`](./contracts/ethereum-1/0x8a28d3b02591a2c9eb4e3e7ccf90c78cf26c9c24/) | ⚠️ Unaudited |
| PendlePrincipalToken | unknown | ethereum | n/a | [`0x4ae541...b33fff`](./contracts/ethereum-1/0x4ae5411f3863cdb640309e84cedf4b08b8b33fff/) | ⚠️ Unaudited |
| PendlePTOFTAdapterFactory | unknown | ethereum | n/a | [`0x905af8...636732`](./contracts/ethereum-1/0x905af80c4de82e0075a19fde2f5777f1a6636732/) | ⚠️ Unaudited |
| PendlePtOracle | unknown | ethereum | n/a | [`0xbbd487...4a3e30`](./contracts/ethereum-1/0xbbd487268a295531d299c125f3e5f749884a3e30/) | ⚠️ Unaudited |
| PendlePufWETHSY | unknown | ethereum | n/a | [`0x253008...a0c905`](./contracts/ethereum-1/0x253008ba4ae2f3e6488dc998a5321d4eb1a0c905/) | ⚠️ Unaudited |
| PendlePumpBTCSY | unknown | ethereum | n/a | [`0x78f9af...f19ab2`](./contracts/ethereum-1/0x78f9afec0afd297bea08098ed01719b0b0f19ab2/) | ⚠️ Unaudited |
| PendleReservoirUSDSY | unknown | ethereum | n/a | [`0x43d665...4a7931`](./contracts/ethereum-1/0x43d6651ff941776976ae8e5b11ef513e054a7931/) | ⚠️ Unaudited |
| PendleReservoirWsrUSDSY | unknown | ethereum | n/a | [`0x212670...edd15e`](./contracts/ethereum-1/0x212670e78cbec6f219204c52889763628bedd15e/) | ⚠️ Unaudited |
| PendleREZtakeSY | unknown | ethereum | n/a | [`0x8eb1a6...20c3e4`](./contracts/ethereum-1/0x8eb1a6a1296f41ccaa20d13b952a7fca1b20c3e4/) | ⚠️ Unaudited |
| PendleRLPSY | unknown | ethereum | n/a | [`0x9c846e...426f76`](./contracts/ethereum-1/0x9c846e93628ebfaeefd287457409f1f71f426f76/) | ⚠️ Unaudited |
| PendleRsETHSY | unknown | ethereum | n/a | [`0x730a5e...da793c`](./contracts/ethereum-1/0x730a5e2acebccaa5e9095723b3cb862739da793c/) | ⚠️ Unaudited |
| PendleRswETHSY | unknown | ethereum | n/a | [`0x778672...c615d9`](./contracts/ethereum-1/0x7786729eee8b9d30fe7d91fdff23a0f1d0c615d9/) | ⚠️ Unaudited |
| PendleSavingUSDASY | unknown | ethereum | n/a | [`0x8946f6...f5a14e`](./contracts/ethereum-1/0x8946f653aed1af1f82a8de6d7f54088afff5a14e/) | ⚠️ Unaudited |
| PendleSENASY | unknown | ethereum | n/a | [`0xa36ecc...a12c3d`](./contracts/ethereum-1/0xa36ecca8b7624d224f01cd6649c8afad3da12c3d/) | ⚠️ Unaudited |
| PendleSfrxEthSY | unknown | ethereum | n/a | [`0xeb8300...210673`](./contracts/ethereum-1/0xeb83006b0aaddd15ad8afbebe2f4e0937f210673/) | ⚠️ Unaudited |
| PendleSGHOSY | unknown | ethereum | n/a | [`0xae14ae...71f609`](./contracts/ethereum-1/0xae14ae6818c1db507e471bcf90eb81288c71f609/) | ⚠️ Unaudited |
| PendleSiloWithIncentiveSY | unknown | ethereum | n/a | [`0xe05082...bbb04c`](./contracts/ethereum-1/0xe05082b184a34668cd8a904d85fa815802bbb04c/) | ⚠️ Unaudited |
| PendleSolvBeraBTCSY | unknown | ethereum | n/a | [`0x67e58f...c609d7`](./contracts/ethereum-1/0x67e58f0240b432e78795dc010716e54b70c609d7/) | ⚠️ Unaudited |
| PendleSolvBTCBBNSYUpg | unknown | ethereum | n/a | [`0x859c11...5b4e34`](./contracts/ethereum-1/0x859c11a2483fea4b65d1ae7d207cb5395a5b4e34/) | ⚠️ Unaudited |
| PendleSophonFarmingSY | unknown | ethereum | n/a | [`0xbe9a9b...2ea1e4`](./contracts/ethereum-1/0xbe9a9b386fdba0de5fd76fa2495b0940102ea1e4/) | ⚠️ Unaudited |
| PendleSophonPointManager | unknown | ethereum | n/a | [`0x74c5a0...45d986`](./contracts/ethereum-1/0x74c5a0d5dfcc6d4527c849f09ecc360c5345d986/) | ⚠️ Unaudited |
| PendleSparkLinearDiscountOracle | unknown | ethereum | n/a | [`0x3fa71e...9e7d35`](./contracts/ethereum-1/0x3fa71e3f2788f85d8c4f9c3a05b038eaf29e7d35/) | ⚠️ Unaudited |
| PendleStakedLevelUSDSY | unknown | ethereum | n/a | [`0x0a9b2c...6cf6f9`](./contracts/ethereum-1/0x0a9b2c09f8756c743b0702973ed33970d16cf6f9/) | ⚠️ Unaudited |
| PendleStakingSPKUSDSSY | unknown | ethereum | n/a | [`0x0ee69a...a0d075`](./contracts/ethereum-1/0x0ee69a11b4391c5af5eb2fb088c2df5dd2a0d075/) | ⚠️ Unaudited |
| PendleStakingUSDSSY | unknown | ethereum | n/a | [`0xdb0170...8415de`](./contracts/ethereum-1/0xdb01707567cf99c2e2215f1bd8ca567d998415de/) | ⚠️ Unaudited |
| PendleStEURSY | unknown | ethereum | n/a | [`0xd353ae...43dfde`](./contracts/ethereum-1/0xd353ae1ffabd6647ee3bacd92e93af18c243dfde/) | ⚠️ Unaudited |
| PendleStkGHOSY | unknown | ethereum | n/a | [`0x7fbd26...f71df1`](./contracts/ethereum-1/0x7fbd266872f72694f5bab474edc9505e25f71df1/) | ⚠️ Unaudited |
| PendleStrataUSDESY | unknown | ethereum | n/a | [`0x33e889...af8bee`](./contracts/ethereum-1/0x33e88943b00e699fc5b6597c5f8bcb0872af8bee/) | ⚠️ Unaudited |
| PendleSUSDESY | unknown | ethereum | n/a | [`0xabf816...781d9b`](./contracts/ethereum-1/0xabf8165dd7a90ab75878161db15bf85f6f781d9b/) | ⚠️ Unaudited |
| PendleSUSDSAdapter | unknown | ethereum | n/a | [`0x7ee16d...6bd155`](./contracts/ethereum-1/0x7ee16d58ab482922523b252634ecc324326bd155/) | ⚠️ Unaudited |
| PendleSUSDSSY | unknown | ethereum | n/a | [`0xbe3d4e...018ba7`](./contracts/ethereum-1/0xbe3d4ec488a0a042bb86f9176c24f8cd54018ba7/) | ⚠️ Unaudited |
| PendleSwap | unknown | ethereum | n/a | [`0xd33ae2...bfd782`](./contracts/ethereum-1/0xd33ae23316734ef20233f41437dbdd2590bfd782/) | ⚠️ Unaudited |
| PendleSwapAggregator | unknown | ethereum | n/a | [`0x9660ac...64f924`](./contracts/ethereum-1/0x9660ac0cb085f8fb39a6f383cf2067785364f924/) | ⚠️ Unaudited |
| PendleSwapEthereum | unknown | ethereum | n/a | [`0xddceec...2370bc`](./contracts/ethereum-1/0xddceec69d4a705970a5c60c8e6406ec81f2370bc/) | ⚠️ Unaudited |
| PendleSyrupSY | unknown | ethereum | n/a | [`0xc9e9c8...71551d`](./contracts/ethereum-1/0xc9e9c85b33e87fde85c44dbf72b4b842a071551d/) | ⚠️ Unaudited |
| PendleTerminalExternalCap | unknown | ethereum | n/a | [`0x89c649...4afe3e`](./contracts/ethereum-1/0x89c649c644e9959ca8c2a9f12c1cca1ca44afe3e/) | ⚠️ Unaudited |
| PendleTerminalSYScaled18 | unknown | ethereum | n/a | [`0x0d2984...7451b3`](./contracts/ethereum-1/0x0d298432833e0d60372c70801feaf868eb7451b3/) | ⚠️ Unaudited |
| PendleTreeHouseETHSY | unknown | ethereum | n/a | [`0xb2dbc1...4bf20b`](./contracts/ethereum-1/0xb2dbc10f4fa6113ac75eea254806f6a2aa4bf20b/) | ⚠️ Unaudited |
| PendleUmbrellaStake4626SY | unknown | ethereum | n/a | [`0x39f47a...be7830`](./contracts/ethereum-1/0x39f47ae8a1fb6298260e642d5312e5d89fbe7830/) | ⚠️ Unaudited |
| PendleUmbrellaStakeTokenSY | unknown | ethereum | n/a | [`0x1d292b...d93151`](./contracts/ethereum-1/0x1d292b43171209ef02f00a239353f316c3d93151/) | ⚠️ Unaudited |
| PendleUniBTCSYUpg | unknown | ethereum | n/a | [`0x87b8e4...407d78`](./contracts/ethereum-1/0x87b8e462080fa443a06d2bb119adb3828c407d78/) | ⚠️ Unaudited |
| PendleUniETHSY | unknown | ethereum | n/a | [`0xc430db...6d16b7`](./contracts/ethereum-1/0xc430db19339a3051192233b4c49f9ab3dc6d16b7/) | ⚠️ Unaudited |
| PendleUSDESY | unknown | ethereum | n/a | [`0x925a15...58340e`](./contracts/ethereum-1/0x925a15bd6a1582fa7c0ebbfc3dbd29c34f58340e/) | ⚠️ Unaudited |
| PendleUSDSSYWithCap | unknown | ethereum | n/a | [`0x508def...36697b`](./contracts/ethereum-1/0x508defdb5dd2adeefe36f58fdcd75d6efa36697b/) | ⚠️ Unaudited |
| PendleVotingControllerUpg | unknown | ethereum | n/a | [`0x44087e...21f2f0`](./contracts/ethereum-1/0x44087e105137a5095c008aab6a6530182821f2f0/) | ⚠️ Unaudited |
| PendleWEEthkSY | unknown | ethereum | n/a | [`0xe27967...95894a`](./contracts/ethereum-1/0xe2796707590384430d887f15bdf97c660d95894a/) | ⚠️ Unaudited |
| PendleWEEthkWithRateSY | unknown | ethereum | n/a | [`0xbbf8cf...982d32`](./contracts/ethereum-1/0xbbf8cfc9f38d8ad4eaea405170743c9f4a982d32/) | ⚠️ Unaudited |
| PendleWEEthsSY | unknown | ethereum | n/a | [`0x772079...b3400a`](./contracts/ethereum-1/0x772079c143d9ef931a6df44963bfc37190b3400a/) | ⚠️ Unaudited |
| PendleWEEthsWithRateSY | unknown | ethereum | n/a | [`0x012bad...02c9c5`](./contracts/ethereum-1/0x012badcc6e824c2ea32bd5367ebda3be3402c9c5/) | ⚠️ Unaudited |
| PendleWEEthSY | unknown | ethereum | n/a | [`0xac0047...970d65`](./contracts/ethereum-1/0xac0047886a985071476a1186be89222659970d65/) | ⚠️ Unaudited |
| PendleWstETHPriceFeed | unknown | ethereum | n/a | [`0x905109...63b3f2`](./contracts/ethereum-1/0x90510946d780a5ac7616c30e067670ecdc63b3f2/) | ⚠️ Unaudited |
| PendleWstEthSY | unknown | ethereum | n/a | [`0xcbc72d...40c0bc`](./contracts/ethereum-1/0xcbc72d92b2dc8187414f6734718563898740c0bc/) | ⚠️ Unaudited |
| PendleYearnBalancerLPSY | unknown | ethereum | n/a | [`0xa47e35...85f431`](./contracts/ethereum-1/0xa47e357d68523ace098366888ad6b50e8d85f431/) | ⚠️ Unaudited |
| PendleYieldContractFactory | unknown | ethereum | n/a | [`0x70ee0a...75bafd`](./contracts/ethereum-1/0x70ee0a6db4f5a2dc4d9c0b57be97b9987e75bafd/) | ⚠️ Unaudited |
| PendleYieldToken | unknown | ethereum | n/a | [`0x029aad...fe64bf`](./contracts/ethereum-1/0x029aad400f6092dc735a65be95102efcc2fe64bf/) | ⚠️ Unaudited |
| PendleZerolendEBTCSYUpg | unknown | ethereum | n/a | [`0x96af5d...cf8b6b`](./contracts/ethereum-1/0x96af5d9e4d01fb892fd2d76bfc0e3c07aecf8b6b/) | ⚠️ Unaudited |
| PendleZtakeEzETHSY | unknown | ethereum | n/a | [`0x7a493b...434744`](./contracts/ethereum-1/0x7a493be5c2ce014cd049bf178a1ac0db1b434744/) | ⚠️ Unaudited |
| PendleZtakeRsETHSY | unknown | ethereum | n/a | [`0x34349c...0a9789`](./contracts/ethereum-1/0x34349c5569e7b846c3558961552d2202760a9789/) | ⚠️ Unaudited |
| PendleZtakeUSDESY | unknown | ethereum | n/a | [`0x293c69...256e30`](./contracts/ethereum-1/0x293c6937d8d82e05b01335f7b33fba0c8e256e30/) | ⚠️ Unaudited |
| PendleZtakeWeETHSY | unknown | ethereum | n/a | [`0xd7df7e...20bfa7`](./contracts/ethereum-1/0xd7df7e085214743530aff339afc420c7c720bfa7/) | ⚠️ Unaudited |
| PerlinNoise | unknown | optimism | n/a | [`0x08947e...3f75d4`](./contracts/optimism-10/0x08947e304064b3f3ef2b99fca7e549c5fc3f75d4/) | ⚠️ Unaudited |
| PerpetualPoolParty | unknown | ethereum | n/a | [`0x4e3dec...33fb4c`](./contracts/ethereum-1/0x4e3decbb3645551b8a19f0ea1678079fcb33fb4c/) | ⚠️ Unaudited |
| PETH | unknown | ethereum | n/a | [`0x821a27...195c0c`](./contracts/ethereum-1/0x821a278dfff762c76410264303f25bf42e195c0c/) | ⚠️ Unaudited |
| PhasedEscrow | unknown | ethereum | n/a | [`0x964d45...2ec157`](./contracts/ethereum-1/0x964d45256c73df0239a26216cec155d7e12ec157/) | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | unknown | ethereum | n/a | [`0x8fa3ef...3666c0`](./contracts/ethereum-1/0x8fa3ef45137c3aff337e42f98023c1d7dd3666c0/) | ⚠️ Unaudited |
| POC_SemiToken | unknown | polygon | n/a | [`0x431e70...1dbc24`](./contracts/polygon-137/0x431e70c7d0a5de55d6b4f7af9391edf35b1dbc24/) | ⚠️ Unaudited |
| PoLidoNFT | unknown | ethereum | n/a | [`0x60a91e...082e46`](./contracts/ethereum-1/0x60a91e2b7a1568f0848f3d43353c453730082e46/) | ⚠️ Unaudited |
| Pool | unknown | ethereum | n/a | [`0x101816...390a2e`](./contracts/ethereum-1/0x101816545f6bd2b1076434b54383a1e633390a2e/) | ⚠️ Unaudited |
| PoolBridge | unknown | ethereum | n/a | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | ⚠️ Unaudited |
| PoolDeployer | unknown | ethereum | n/a | [`0x9ca99f...e079c2`](./contracts/ethereum-1/0x9ca99f16ba2ed5627407fd44bd3f9d2810e079c2/) | ⚠️ Unaudited |
| PoolToken | unknown | ethereum | n/a | [`0x8a2f2e...7d1683`](./contracts/ethereum-1/0x8a2f2e0fd65caee0622ee7ba98b67f73717d1683/) | ⚠️ Unaudited |
| Portal | unknown | ethereum | n/a | [`0x0b459c...ddeafd`](./contracts/ethereum-1/0x0b459cae3f5f91469b910a8811723606b2ddeafd/) | ⚠️ Unaudited |
| PortfolioManager | unknown | optimism | n/a | [`0x039d77...1090bc`](./contracts/optimism-10/0x039d778af09e9b71a39f1ba09609b529131090bc/) | ⚠️ Unaudited |
| PositionalMarketData | unknown | optimism | n/a | [`0x63f072...5e9a84`](./contracts/optimism-10/0x63f072928cac9ffd799c6d0f985f9ee3985e9a84/) | ⚠️ Unaudited |
| PositionalMarketManager | unknown | optimism | n/a | [`0x734c6c...38fdc2`](./contracts/optimism-10/0x734c6c0fb8068afc4d795af32b65ba31bb38fdc2/) | ⚠️ Unaudited |
| PositionalMarketMastercopy | unknown | optimism | n/a | [`0x470a69...9564ff`](./contracts/optimism-10/0x470a69afec851c1c4022b4a1b9d3a729389564ff/) | ⚠️ Unaudited |
| PositionManager | unknown | arbitrum | n/a | [`0x6a02e6...af93b2`](./contracts/arbitrum-42161/0x6a02e6381297826cca630fc5e2d53bdbbbaf93b2/) | ⚠️ Unaudited |
| PositionRouter | unknown | arbitrum | n/a | [`0x05cb7c...8cb78f`](./contracts/arbitrum-42161/0x05cb7c42890e0522264fe5ec6d84e8d7218cb78f/) | ⚠️ Unaudited |
| PositionRouterReader | unknown | arbitrum | n/a | [`0x2a74c7...802f74`](./contracts/arbitrum-42161/0x2a74c7498d42ecee75032ed41416c5fa39802f74/) | ⚠️ Unaudited |
| PositionToken | unknown | ethereum | n/a | [`0x264294...e616a4`](./contracts/ethereum-1/0x26429451aab5e4c91277e510f4289ddb8ae616a4/) | ⚠️ Unaudited |
| PRBMathCommon | unknown | ethereum | n/a | [`0x5dea8b...2bdc1b`](./contracts/ethereum-1/0x5dea8bbcc1fca0aaa72872aba72990278d2bdc1b/) | ⚠️ Unaudited |
| PRBMathSD59x18 | unknown | ethereum | n/a | [`0xd0ad0c...ea91f2`](./contracts/ethereum-1/0xd0ad0cdf6c0a08048d95a140fd0eecbeb7ea91f2/) | ⚠️ Unaudited |
| PreJPEG | unknown | ethereum | n/a | [`0xbff28c...8599f6`](./contracts/ethereum-1/0xbff28c0b8c3df7b89e71743e835a7be2c98599f6/) | ⚠️ Unaudited |
| PremiumHolder | unknown | polygon | n/a | [`0x135b6e...0793d1`](./contracts/polygon-137/0x135b6e9c211e6974f7cbb11ff96ac6b1550793d1/) | ⚠️ Unaudited |
| Previewer | unknown | optimism | n/a | [`0x135abf...67a2a2`](./contracts/optimism-10/0x135abf02580ff4f41e6589b0198365d01167a2a2/) | ⚠️ Unaudited |
| PriceFeed | unknown | polygon | n/a | [`0x00dd3f...b9c732`](./contracts/polygon-137/0x00dd3fa34b4d9222a6cba7332bc70d7a8db9c732/) | ⚠️ Unaudited |
| PriceFeedPool | unknown | optimism | n/a | [`0x5fe09b...3a13d3`](./contracts/optimism-10/0x5fe09baaa75fd107a8df8565813f66b3603a13d3/) | ⚠️ Unaudited |
| PriceFeedTimelock | unknown | arbitrum | n/a | [`0x7b1ffd...d43a8b`](./contracts/arbitrum-42161/0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b/) | ⚠️ Unaudited |
| PriceOracle | unknown | ethereum | n/a | [`0x3abce8...525cf7`](./contracts/ethereum-1/0x3abce8f1db258fbc64827b0926e14a0f90525cf7/) | ⚠️ Unaudited |
| PriceOracleProxy | unknown | ethereum | n/a | [`0x1653c0...e53ba1`](./contracts/ethereum-1/0x1653c07fa6ce103b43925dddb5e31ca568e53ba1/) | ⚠️ Unaudited |
| PriceOracleProxyIB | unknown | ethereum | n/a | [`0xde19f5...297266`](./contracts/ethereum-1/0xde19f5a7cf029275be9cec538e81aa298e297266/) | ⚠️ Unaudited |
| PriceOracleV2 | unknown | optimism | n/a | [`0x22c7e5...1c0fea`](./contracts/optimism-10/0x22c7e5ce392bc951f63b68a8020b121a8e1c0fea/) | ⚠️ Unaudited |
| PriceProvidersRepository | unknown | ethereum | n/a | [`0x7c2ca9...05029f`](./contracts/ethereum-1/0x7c2ca9d502f2409beceafa68e97a176ff805029f/) | ⚠️ Unaudited |
| PriceProxy | unknown | ethereum | n/a | [`0x3e94fa...3be471`](./contracts/ethereum-1/0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471/) | ⚠️ Unaudited |
| PrintLimiter | unknown | ethereum | n/a | [`0x72519f...c5c047`](./contracts/ethereum-1/0x72519fa6cd095c99d5d67e31ddc117409bc5c047/) | ⚠️ Unaudited |
| PrivilegedCauldronV4 | unknown | ethereum | n/a | [`0xa869b9...0d49b5`](./contracts/ethereum-1/0xa869b9171c8f912c592abc58005922718d0d49b5/) | ⚠️ Unaudited |
| PrivilegedCheckpointCauldronV4 | unknown | ethereum | n/a | [`0x5e70f7...187103`](./contracts/ethereum-1/0x5e70f7acb8ec0231c00220d11c74dc2b23187103/) | ⚠️ Unaudited |
| ProposalManager | unknown | optimism | n/a | [`0x681797...1c8338`](./contracts/optimism-10/0x6817974ca2c354f2fa40d8349b725b5bf81c8338/) | ⚠️ Unaudited |
| ProposalReceiver | unknown | optimism | n/a | [`0xd67881...bab514`](./contracts/optimism-10/0xd6788102627462d1a679282e726125ccdebab514/) | ⚠️ Unaudited |
| ProtocolLogic | unknown | ethereum | n/a | [`0x547516...bdbadf`](./contracts/ethereum-1/0x54751636e04092ee76f25b2b3c50dcdcfebdbadf/) | ⚠️ Unaudited |
| ProtocolLogicV1 | unknown | ethereum | n/a | [`0x637278...2447c8`](./contracts/ethereum-1/0x637278bf72127c76d98d9a9be36d2121fb2447c8/) | ⚠️ Unaudited |
| ProtocolOwnedDebtCauldron | unknown | ethereum | n/a | [`0xedcf19...08f12a`](./contracts/ethereum-1/0xedcf198bc94ddcabb21dbeb38ad9f9793208f12a/) | ⚠️ Unaudited |
| ProtocolProxy | unknown | ethereum | n/a | [`0x4d880b...69b47a`](./contracts/ethereum-1/0x4d880bb27b1cd850d4bc331b1654af01bd69b47a/) | ⚠️ Unaudited |
| ProtoStaker | unknown | optimism | n/a | [`0x1e5efd...96c012`](./contracts/optimism-10/0x1e5efdf50e47176e062770d5c0eab5a2f196c012/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | [`0x02a5b3...4a9d9c`](./contracts/polygon-137/0x02a5b3151df6621453b6d976144d3621514a9d9c/) | ⚠️ Unaudited |
| ProxyERC20 | unknown | ethereum | n/a | [`0x5e74c9...ea31cb`](./contracts/ethereum-1/0x5e74c9036fb86bd7ecdcb084a0673efc32ea31cb/) | ⚠️ Unaudited |
| ProxyOFTV2 | unknown | ethereum | n/a | [`0xa0aa94...e36212`](./contracts/ethereum-1/0xa0aa943666b4309c1989e3a7ebe7dbe11de36212/) | ⚠️ Unaudited |
| ProxyOracle | unknown | ethereum | n/a | [`0x0ea220...4b8855`](./contracts/ethereum-1/0x0ea2207e31dc03701b12e4b322df1bbb404b8855/) | ⚠️ Unaudited |
| PunkLiquidator | unknown | ethereum | n/a | [`0xb7f6f1...e331b1`](./contracts/ethereum-1/0xb7f6f1a7f200f1c897b0066ac6b3d4c3fae331b1/) | ⚠️ Unaudited |
| PxETHOracle | unknown | ethereum | n/a | [`0x1e276d...454666`](./contracts/ethereum-1/0x1e276d4a186792cafe5c1854be78d47ddc454666/) | ⚠️ Unaudited |
| pxETHvETHBond | unknown | ethereum | n/a | [`0x054b28...dec947`](./contracts/ethereum-1/0x054b28d847c566a6b991de34afeada8bb8dec947/) | ⚠️ Unaudited |
| QiStablecoin | unknown | polygon | n/a | [`0xa3fa99...6997f1`](./contracts/polygon-137/0xa3fa99a148fa48d14ed51d610c367c61876997f1/) | ⚠️ Unaudited |
| QuoterV2 | unknown | optimism | n/a | [`0x1486aa...11465f`](./contracts/optimism-10/0x1486aaf64e0b45334acfdbef524d49eede11465f/) | ⚠️ Unaudited |
| RamsesStaker | unknown | arbitrum | n/a | [`0x46dcaf...f21058`](./contracts/arbitrum-42161/0x46dcafbb2c9d479827f69bec9314e13741f21058/) | ⚠️ Unaudited |
| RandomBeacon | unknown | ethereum | n/a | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | ⚠️ Unaudited |
| RandomBeaconChaosnet | unknown | ethereum | n/a | [`0xf23fc1...b0294a`](./contracts/ethereum-1/0xf23fc18ece6afe7fb57ba59979e8600bb4b0294a/) | ⚠️ Unaudited |
| RandomBeaconGovernance | unknown | ethereum | n/a | [`0xd0a308...cb1c63`](./contracts/ethereum-1/0xd0a3088ed9fff4357b79cd3896bd38876fcb1c63/) | ⚠️ Unaudited |
| RangedMarketMastercopy | unknown | optimism | n/a | [`0x6d53c8...2c39c4`](./contracts/optimism-10/0x6d53c852fe7e0b60d54c70e454cbbccbce2c39c4/) | ⚠️ Unaudited |
| RangedMarketsAMM | unknown | optimism | n/a | [`0x086cc1...49e89d`](./contracts/optimism-10/0x086cc1c04ef1aa4797c18a946c5688bf3949e89d/) | ⚠️ Unaudited |
| RangedPositionMastercopy | unknown | optimism | n/a | [`0x34ed3d...0c5658`](./contracts/optimism-10/0x34ed3d919ad7f533bfafe9295363d9f37c0c5658/) | ⚠️ Unaudited |
| RatesManager | unknown | polygon | n/a | [`0x1f551a...266869`](./contracts/polygon-137/0x1f551a0cd53af4bdb1d29a7b2a77e78afa266869/) | ⚠️ Unaudited |
| Reader | unknown | arbitrum | n/a | [`0x1136b8...bac9fa`](./contracts/arbitrum-42161/0x1136b815765877f4fe626e4e82f462aed5bac9fa/) | ⚠️ Unaudited |
| RebalancingStrat | unknown | ethereum | n/a | [`0x6fcc3b...f907a6`](./contracts/ethereum-1/0x6fcc3bb4948c20a81f652a525f78f80993f907a6/) | ⚠️ Unaudited |
| RebaseHooks | unknown | ethereum | n/a | [`0x3dcd70...ef6c5c`](./contracts/ethereum-1/0x3dcd70e6a3fb474cfd7567a021864066fdef6c5c/) | ⚠️ Unaudited |
| RebaseToken | unknown | optimism | n/a | [`0x0c13ca...c590b6`](./contracts/optimism-10/0x0c13ca908cdf6a49cf3d17f2aff419d45fc590b6/) | ⚠️ Unaudited |
| RecapitalizationManager | unknown | ethereum | n/a | [`0xd5d1ac...1bd062`](./contracts/ethereum-1/0xd5d1acc9c7ebaf8bbf85c45aee2b8b3f3b1bd062/) | ⚠️ Unaudited |
| Redemption | unknown | ethereum | n/a | [`0x7d807e...a25914`](./contracts/ethereum-1/0x7d807e9ce1ef73048fee9a4214e75e894ea25914/) | ⚠️ Unaudited |
| RedemptionReceiver | unknown | optimism | n/a | [`0x846e82...25a951`](./contracts/optimism-10/0x846e822e9a00669dcc647079d7d625d2cd25a951/) | ⚠️ Unaudited |
| RedemptionScript | unknown | ethereum | n/a | [`0x0972e6...adb887`](./contracts/ethereum-1/0x0972e6062eac0fe8686d82ea010504066dadb887/) | ⚠️ Unaudited |
| ReferralReader | unknown | arbitrum | n/a | [`0x8aa382...76f5c8`](./contracts/arbitrum-42161/0x8aa382760bcdce8644c33e6c2d52f6304a76f5c8/) | ⚠️ Unaudited |
| Referrals | unknown | optimism | n/a | [`0x1a59ac...530d57`](./contracts/optimism-10/0x1a59ac5d4bdf35b5255c6d301ad23f6eb1530d57/) | ⚠️ Unaudited |
| ReferralStorage | unknown | arbitrum | n/a | [`0x2249d0...923392`](./contracts/arbitrum-42161/0x2249d006a8ccdf4c99aa6c8b9502a2aecc923392/) | ⚠️ Unaudited |
| Refunder | unknown | optimism | n/a | [`0x2fa807...c6da51`](./contracts/optimism-10/0x2fa807e11ecb1ef44d9175df3608f9c0f1c6da51/) | ⚠️ Unaudited |
| RegistryAccess | unknown | ethereum | n/a | [`0x0d3747...39bb56`](./contracts/ethereum-1/0x0d374775e962c3608b8f0a4b8b10567df739bb56/) | ⚠️ Unaudited |
| RegistryContract | unknown | ethereum | n/a | [`0x0594cb...4db34c`](./contracts/ethereum-1/0x0594cb5ca47efe1ff25c7b8b43e221683b4db34c/) | ⚠️ Unaudited |
| ReimbursementPool | unknown | ethereum | n/a | [`0x369fce...17f9cc`](./contracts/ethereum-1/0x369fce62b33512b2a883cf217635ee28dd17f9cc/) | ⚠️ Unaudited |
| RenBTCCrvOracle | unknown | ethereum | n/a | [`0x2be431...f361b0`](./contracts/ethereum-1/0x2be431ee7e74b1cb7cfa16fc90578ef42ef361b0/) | ⚠️ Unaudited |
| RenCrvLevSwapper | unknown | ethereum | n/a | [`0x3bab72...45ed2a`](./contracts/ethereum-1/0x3bab7207d4e27b5de4a15d540b7297281b45ed2a/) | ⚠️ Unaudited |
| RenCrvSwapper | unknown | ethereum | n/a | [`0x41d65c...29df42`](./contracts/ethereum-1/0x41d65ce96342a3d9c3d878856e283e839d29df42/) | ⚠️ Unaudited |
| RenderToken | unknown | ethereum | n/a | [`0x1a1fdf...e73af0`](./contracts/ethereum-1/0x1a1fdf27c5e6784d1cebf256a8a5cc0877e73af0/) | ⚠️ Unaudited |
| RenERC20LogicV1 | unknown | ethereum | n/a | [`0x0a2d36...8c1bee`](./contracts/ethereum-1/0x0a2d368e4eecbd515033ba29253909f2978c1bee/) | ⚠️ Unaudited |
| RenERC20Proxy | unknown | ethereum | n/a | [`0xee2740...7894a7`](./contracts/ethereum-1/0xee274080b8389ac5add6499df348b653447894a7/) | ⚠️ Unaudited |
| RenExAtomicSwapper | unknown | ethereum | n/a | [`0xc3fed6...a01cc3`](./contracts/ethereum-1/0xc3fed6eb39178a541d274e6fc748d48f0ca01cc3/) | ⚠️ Unaudited |
| RenExBalances | unknown | ethereum | n/a | [`0x5ec18b...a77efd`](./contracts/ethereum-1/0x5ec18b477b20af940807b5478db5a64cd4a77efd/) | ⚠️ Unaudited |
| RenExBrokerVerifier | unknown | ethereum | n/a | [`0x31a0d1...d2e383`](./contracts/ethereum-1/0x31a0d1a199631d244761eeba67e8501296d2e383/) | ⚠️ Unaudited |
| RenExSettlement | unknown | ethereum | n/a | [`0x908262...2b21e1`](./contracts/ethereum-1/0x908262de0366e42d029b0518d5276762c92b21e1/) | ⚠️ Unaudited |
| RenExTokens | unknown | ethereum | n/a | [`0x7cade4...744ec4`](./contracts/ethereum-1/0x7cade4fbc8761817bb62a080733d1b6cad744ec4/) | ⚠️ Unaudited |
| RenProxyAdmin | unknown | ethereum | n/a | [`0x044906...0ad01c`](./contracts/ethereum-1/0x04490672449654b1d9ad6f0aae14e6e4c60ad01c/) | ⚠️ Unaudited |
| RenToken | unknown | ethereum | n/a | [`0x8e0679...eb40ed`](./contracts/ethereum-1/0x8e0679d0d4691ea345fb8c2aec9bf9c1d3eb40ed/) | ⚠️ Unaudited |
| RepayHelper | unknown | ethereum | n/a | [`0x0d07e5...634f21`](./contracts/ethereum-1/0x0d07e5d0c6657a59153359d6552c4664b6634f21/) | ⚠️ Unaudited |
| RepublicToken | unknown | ethereum | n/a | [`0x21c482...9fcebd`](./contracts/ethereum-1/0x21c482f153d0317fe85c60be1f7fa079019fcebd/) | ⚠️ Unaudited |
| ReserveManager | unknown | ethereum | n/a | [`0x0c5bf1...1beaed`](./contracts/ethereum-1/0x0c5bf19618a8fcddb132d82bc6c5ea736a1beaed/) | ⚠️ Unaudited |
| RestrictedTeam | unknown | optimism | n/a | [`0x0a16cb...41d305`](./contracts/optimism-10/0x0a16cb36b553ba2bb2339f3b206a965e9841d305/) | ⚠️ Unaudited |
| RETHPriceOracle | unknown | ethereum | n/a | [`0x4548a9...ec229d`](./contracts/ethereum-1/0x4548a9300d890f6a7c8a5da563bd2ffac4ec229d/) | ⚠️ Unaudited |
| RewardClaimer | unknown | ethereum | n/a | [`0x8fcfd0...998884`](./contracts/ethereum-1/0x8fcfd0eec0cca95b5bcebd33a076b29fd8998884/) | ⚠️ Unaudited |
| RewardDistributor | unknown | ethereum | n/a | [`0x1a6726...4a0496`](./contracts/ethereum-1/0x1a6726a877a8417dfab3308d2ec389bc3f4a0496/) | ⚠️ Unaudited |
| RewardEscrow | unknown | optimism | n/a | [`0x1066a8...e75be2`](./contracts/optimism-10/0x1066a8eb3d90af0ad3f89839b974658577e75be2/) | ⚠️ Unaudited |
| RewardManager | unknown | optimism | n/a | [`0x5da3ea...c3f5c2`](./contracts/optimism-10/0x5da3ea9167e159de0d3003c21c86db1334c3f5c2/) | ⚠️ Unaudited |
| RewardMasterChef | unknown | arbitrum | n/a | [`0x123706...5a5b8e`](./contracts/arbitrum-42161/0x123706cdd8e60324e610e9a2cc7012d0f45a5b8e/) | ⚠️ Unaudited |
| RewardReader | unknown | arbitrum | n/a | [`0x8bfb8e...6d40e0`](./contracts/arbitrum-42161/0x8bfb8e82ee4569aee78d03235ff465bd436d40e0/) | ⚠️ Unaudited |
| RewardRouter | unknown | arbitrum | n/a | [`0xc73d55...980fba`](./contracts/arbitrum-42161/0xc73d553473dc65ce56db96c58e6a091c20980fba/) | ⚠️ Unaudited |
| RewardRouterV2 | unknown | arbitrum | n/a | [`0x159854...a3ce9b`](./contracts/arbitrum-42161/0x159854e14a862df9e39e1d128b8e5f70b4a3ce9b/) | ⚠️ Unaudited |
| RewardsController | unknown | optimism | n/a | [`0x0399cf...a95f7f`](./contracts/optimism-10/0x0399cf66d74106d438d5770dce8c0f7071a95f7f/) | ⚠️ Unaudited |
| RewardsDistributor | unknown | optimism | n/a | [`0x5d5bea...3f784f`](./contracts/optimism-10/0x5d5bea9f0fc13d967511668a60a3369fd53f784f/) | ⚠️ Unaudited |
| RewardsEligibilityOracle | unknown | arbitrum | n/a | [`0x7381f9...e7eb01`](./contracts/arbitrum-42161/0x7381f99a610f6c438206811183e2d3969ae7eb01/) | ⚠️ Unaudited |
| RewardsManager | unknown | arbitrum | n/a | [`0x225ab8...9c64d0`](./contracts/arbitrum-42161/0x225ab818cd003bb17728768e6a48c160d89c64d0/) | ⚠️ Unaudited |
| RewardsPuller | unknown | ethereum | n/a | [`0xb7e60d...6a1503`](./contracts/ethereum-1/0xb7e60dab3799e238d01e0f90c4506eef8f6a1503/) | ⚠️ Unaudited |
| RewardTracker | unknown | arbitrum | n/a | [`0x0755d3...1e5e93`](./contracts/arbitrum-42161/0x0755d33e45ed2b874c9ebf5b279023c8bd1e5e93/) | ⚠️ Unaudited |
| RiskManagerV1 | unknown | ethereum | n/a | [`0x2355d7...f62b30`](./contracts/ethereum-1/0x2355d701d8d85ed161ab66a0a7e759c463f62b30/) | ⚠️ Unaudited |
| RiskOracle | unknown | ethereum | n/a | [`0x073931...e8fe50`](./contracts/ethereum-1/0x0739311a9725779f109706b48a56763a8ae8fe50/) | ⚠️ Unaudited |
| RodeoCaller | unknown | arbitrum | n/a | [`0xa6f958...94fc14`](./contracts/arbitrum-42161/0xa6f9581d3a77dbe3df78d3b048756ab0d294fc14/) | ⚠️ Unaudited |
| RodeoMigrator | unknown | arbitrum | n/a | [`0xb34891...a5ed9e`](./contracts/arbitrum-42161/0xb34891fac221f335131d1b6cd8c883d107a5ed9e/) | ⚠️ Unaudited |
| Router | unknown | ethereum | n/a | [`0x8731d5...e01e98`](./contracts/ethereum-1/0x8731d54e9d02c286767d56ac03e8037c07e01e98/) | ⚠️ Unaudited |
| RouterETH | unknown | ethereum | n/a | [`0x150f94...cc2376`](./contracts/ethereum-1/0x150f94b44927f078737562f0fcf3c95c01cc2376/) | ⚠️ Unaudited |
| RouterStatic | unknown | ethereum | n/a | [`0x7c0fa6...c47161`](./contracts/ethereum-1/0x7c0fa6ad8c14afc85706e28b6ed2d9cbacc47161/) | ⚠️ Unaudited |
| RouterStrategy | unknown | ethereum | n/a | [`0x9084b5...906dce`](./contracts/ethereum-1/0x9084b5a98e3b4b257affd82ae4a1753f87906dce/) | ⚠️ Unaudited |
| RSETH | unknown | ethereum | n/a | [`0x101152...b45fbd`](./contracts/ethereum-1/0x101152a10262a9fa8f4ed8399cd74e2ff9b45fbd/) | ⚠️ Unaudited |
| SafeBoxBuyback | unknown | optimism | n/a | [`0x1b0ed6...8cf0e4`](./contracts/optimism-10/0x1b0ed6567a53eac1fe6d859d3fb2be11738cf0e4/) | ⚠️ Unaudited |
| SafeDecimalMath | unknown | optimism | n/a | [`0x7e2a9a...02b4f2`](./contracts/optimism-10/0x7e2a9aecdb007e060ba8b98f7ed5706c9c02b4f2/) | ⚠️ Unaudited |
| SafetyRedundancy | unknown | ethereum | n/a | [`0x6bdfea...fb3c40`](./contracts/ethereum-1/0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40/) | ⚠️ Unaudited |
| SaleHandler | unknown | ethereum | n/a | [`0x4f4a31...25932e`](./contracts/ethereum-1/0x4f4a31c1c11bdd438cf0c7668d6afa2b5825932e/) | ⚠️ Unaudited |
| sAPE | unknown | ethereum | n/a | [`0x47ba20...1539c5`](./contracts/ethereum-1/0x47ba20283be4d72d4afb1862994f4203551539c5/) | ⚠️ Unaudited |
| Savings | unknown | optimism | n/a | [`0xb23786...e4dc14`](./contracts/optimism-10/0xb2378660daebb9ba6c1ce2a38d3ee1d6a6e4dc14/) | ⚠️ Unaudited |
| scrvUsdERC4626Strat | unknown | ethereum | n/a | [`0x6d2d70...39236f`](./contracts/ethereum-1/0x6d2d702c24fe116e4c859f058551719fb839236f/) | ⚠️ Unaudited |
| Secondarymonetarypolicy | unknown | ethereum | n/a | [`0x188041...8aeaf8`](./contracts/ethereum-1/0x188041ad83145351ef45f4bb91d08886648aeaf8/) | ⚠️ Unaudited |
| SecondarymonetarypolicyforWBTC | unknown | ethereum | n/a | [`0x4e1f16...b10f9c`](./contracts/ethereum-1/0x4e1f162fd143e4a829341efd6dd451b018b10f9c/) | ⚠️ Unaudited |
| SellingRewardManager | unknown | ethereum | n/a | [`0x8cc045...e696de`](./contracts/ethereum-1/0x8cc045ea0cb956a01e802f8e4d09bb8b47e696de/) | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | ethereum | n/a | [`0x2a2878...5b40dd`](./contracts/ethereum-1/0x2a28789645776eaa95f6d491ff375781ea5b40dd/) | ⚠️ Unaudited |
| ServiceRegistry | unknown | arbitrum | n/a | [`0x072884...588f8a`](./contracts/arbitrum-42161/0x072884c745c0a23144753335776c99be22588f8a/) | ⚠️ Unaudited |
| SettlementRegistry | unknown | ethereum | n/a | [`0x119da7...551036`](./contracts/ethereum-1/0x119da7a8500ade0766f758d934808179dc551036/) | ⚠️ Unaudited |
| SewerPassAirdropClaim | unknown | ethereum | n/a | [`0x2738af...ea6adf`](./contracts/ethereum-1/0x2738afa1280795b1a17acad4749490c96dea6adf/) | ⚠️ Unaudited |
| sfrxETH2crvUSDleveragezap | unknown | ethereum | n/a | [`0x43ecff...ce11bc`](./contracts/ethereum-1/0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc/) | ⚠️ Unaudited |
| sfrxETHERC4626Strat | unknown | ethereum | n/a | [`0x342209...5d72f6`](./contracts/ethereum-1/0x342209d6ed7b851d366dfe15dec15689d55d72f6/) | ⚠️ Unaudited |
| ShareCollateralToken | unknown | ethereum | n/a | [`0xb27d17...9ac9f8`](./contracts/ethereum-1/0xb27d1729489d04473631f0afaca3c3a7389ac9f8/) | ⚠️ Unaudited |
| ShareValueHelper | unknown | ethereum | n/a | [`0x0259e6...7671fa`](./contracts/ethereum-1/0x0259e629ecded874e0e289e047817cf50f7671fa/) | ⚠️ Unaudited |
| ShibLevSwapper | unknown | ethereum | n/a | [`0xa3c893...a92a12`](./contracts/ethereum-1/0xa3c8931ec0fef9bf05386d154c4cd1e93aa92a12/) | ⚠️ Unaudited |
| ShibSwapper | unknown | ethereum | n/a | [`0x1085fa...0081ce`](./contracts/ethereum-1/0x1085fa0770a88a132e3b8aae21c84755d70081ce/) | ⚠️ Unaudited |
| ShibUniV3ChainlinkOracle | unknown | ethereum | n/a | [`0x959c61...5bb378`](./contracts/ethereum-1/0x959c6189e6039606a79e209213f85f6e0a5bb378/) | ⚠️ Unaudited |
| ShifterRegistry | unknown | ethereum | n/a | [`0x1d4713...876cac`](./contracts/ethereum-1/0x1d4713b74e79a3696722aebe05de976979876cac/) | ⚠️ Unaudited |
| ShortsTracker | unknown | arbitrum | n/a | [`0xf58eec...d434da`](./contracts/arbitrum-42161/0xf58eec83ba28ddd79390b9e90c4d3ebff1d434da/) | ⚠️ Unaudited |
| ShortsTrackerTimelock | unknown | arbitrum | n/a | [`0x79b6ee...5c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ⚠️ Unaudited |
| Signer | unknown | ethereum | n/a | [`0x10d7cb...7081fc`](./contracts/ethereum-1/0x10d7cb15642d540a4521a7b2840dab01287081fc/) | ⚠️ Unaudited |
| SignerBondsManualSwap | unknown | ethereum | n/a | [`0x43faf6...f7442f`](./contracts/ethereum-1/0x43faf6fe84e01dd186cfeb9ea2f0854a1ef7442f/) | ⚠️ Unaudited |
| SiloFactory | unknown | ethereum | n/a | [`0x4d919c...737589`](./contracts/ethereum-1/0x4d919cecfd4793c0d47866c8d0a02a0950737589/) | ⚠️ Unaudited |
| SiloGovernanceToken | unknown | ethereum | n/a | [`0x6f8031...8ab1f8`](./contracts/ethereum-1/0x6f80310ca7f2c654691d1383149fa1a57d8ab1f8/) | ⚠️ Unaudited |
| SiloGovernanceTokenV2 | unknown | ethereum | n/a | [`0xc0c899...fc3248`](./contracts/ethereum-1/0xc0c89911c20453b1d897355ee7208e8270fc3248/) | ⚠️ Unaudited |
| SiloGovernor | unknown | ethereum | n/a | [`0xa89163...eeaf61`](./contracts/ethereum-1/0xa89163f7b2d68a8fba6ca36beed32bd4f3eeaf61/) | ⚠️ Unaudited |
| SiloLens | unknown | ethereum | n/a | [`0xf12c37...8d92ea`](./contracts/ethereum-1/0xf12c3758c1ec393704f0db8537ef7f57368d92ea/) | ⚠️ Unaudited |
| SiloLiquidationLens | unknown | ethereum | n/a | [`0x06bed4...2680a4`](./contracts/ethereum-1/0x06bed4637e8cf9e4efc1b227e0c322d7042680a4/) | ⚠️ Unaudited |
| SiloModule | unknown | ethereum | n/a | [`0xb98bc3...37f1af`](./contracts/ethereum-1/0xb98bc3e3b9ea8d86f6ee321737fa23710737f1af/) | ⚠️ Unaudited |
| SiloRepository | unknown | ethereum | n/a | [`0xd998c3...cf309d`](./contracts/ethereum-1/0xd998c35b7900b344bbbe6555cc11576942cf309d/) | ⚠️ Unaudited |
| SiloRouter | unknown | ethereum | n/a | [`0xb2374f...322a0c`](./contracts/ethereum-1/0xb2374f84b3ceeff6492943df613c9bcf45322a0c/) | ⚠️ Unaudited |
| SiloSnapshotWrapper | unknown | ethereum | n/a | [`0xce3d2e...b168a4`](./contracts/ethereum-1/0xce3d2e0331d6776c79f329140d7ace2e94b168a4/) | ⚠️ Unaudited |
| SiloToken | unknown | ethereum | n/a | [`0xf0b2dd...486bb0`](./contracts/ethereum-1/0xf0b2dd79324a66d2108c961d680f7616e1486bb0/) | ⚠️ Unaudited |
| SimpleERC20Escrow | unknown | ethereum | n/a | [`0xc06053...0c010f`](./contracts/ethereum-1/0xc06053fcad0a0df7cc32289a135bbea9030c010f/) | ⚠️ Unaudited |
| SimpleUserProxy | unknown | ethereum | n/a | [`0x3808e0...ffdc0d`](./contracts/ethereum-1/0x3808e0ee2d944e4119410dcdaf0864a96bffdc0d/) | ⚠️ Unaudited |
| SingleSidedAMM | unknown | ethereum | n/a | [`0x82bfdd...bf4b8a`](./contracts/ethereum-1/0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a/) | ⚠️ Unaudited |
| SinkConverter | unknown | optimism | n/a | [`0x585af0...34f18d`](./contracts/optimism-10/0x585af0b397ac42dbef7f18395426bf878634f18d/) | ⚠️ Unaudited |
| SinkDrain | unknown | optimism | n/a | [`0x58f62e...cbfca2`](./contracts/optimism-10/0x58f62efb1528d006d22771623c3c3e7953cbfca2/) | ⚠️ Unaudited |
| SinkManager | unknown | optimism | n/a | [`0x5aee5f...abcdae`](./contracts/optimism-10/0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae/) | ⚠️ Unaudited |
| SinkManagerFacilitator | unknown | optimism | n/a | [`0x45ff00...ce78a4`](./contracts/optimism-10/0x45ff00822e8235b86cb605ac8295c14628ce78a4/) | ⚠️ Unaudited |
| Skimmer | unknown | arbitrum | n/a | [`0x82f0b8...6829c1`](./contracts/arbitrum-42161/0x82f0b8b456c1a451378467398982d4834b6829c1/) | ⚠️ Unaudited |
| SmartWalletChecker | unknown | ethereum | n/a | [`0x173f5f...9f3b27`](./contracts/ethereum-1/0x173f5f648b18cf1c7f6aac66a35bf462539f3b27/) | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | ethereum | n/a | [`0x5268ba...b120a3`](./contracts/ethereum-1/0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3/) | ⚠️ Unaudited |
| SnapshotHelper | unknown | ethereum | n/a | [`0x0ad930...26b147`](./contracts/ethereum-1/0x0ad930970b60d24bd30f612d287f188a7626b147/) | ⚠️ Unaudited |
| Sonne | unknown | optimism | n/a | [`0x1db246...2245f0`](./contracts/optimism-10/0x1db2466d9f5e10d7090e7152b68d62703a2245f0/) | ⚠️ Unaudited |
| SonneTimelockController | unknown | optimism | n/a | [`0x5b22bd...e163b0`](./contracts/optimism-10/0x5b22bd2fc485afe2deaf1ac9e2fad316dde163b0/) | ⚠️ Unaudited |
| SortitionPool | unknown | ethereum | n/a | [`0x4e4cba...ecbcf6`](./contracts/ethereum-1/0x4e4cba3779d56386ed43631b4dcd6d8eacecbcf6/) | ⚠️ Unaudited |
| SpellLevSwapper | unknown | ethereum | n/a | [`0x152b59...0ce015`](./contracts/ethereum-1/0x152b59937ecb0f1030d81d2206c4cbb3fd0ce015/) | ⚠️ Unaudited |
| SpellOracle | unknown | ethereum | n/a | [`0x75e142...69ec10`](./contracts/ethereum-1/0x75e14253de6a5c2af12d5f1a1ea0a2e11e69ec10/) | ⚠️ Unaudited |
| SpellPower | unknown | ethereum | n/a | [`0x20cb52...de9430`](./contracts/ethereum-1/0x20cb52832f35c61ccdbe5c336e405fe979de9430/) | ⚠️ Unaudited |
| SpellSuperSwapper | unknown | ethereum | n/a | [`0x66436c...19765d`](./contracts/ethereum-1/0x66436c64da9d9a61bcc3f652490d20d7cf19765d/) | ⚠️ Unaudited |
| SpellSwapper | unknown | ethereum | n/a | [`0x663ef4...1aeb38`](./contracts/ethereum-1/0x663ef4455a07243d9029ba0fc48297ae181aeb38/) | ⚠️ Unaudited |
| Splitter | unknown | ethereum | n/a | [`0x34a045...76e526`](./contracts/ethereum-1/0x34a045499247b983d16a49a1b72d5b3b2e76e526/) | ⚠️ Unaudited |
| SportAMMLiquidityPool | unknown | optimism | n/a | [`0x14c50f...938636`](./contracts/optimism-10/0x14c50f2527ff4c68fac12394883233c701938636/) | ⚠️ Unaudited |
| SportAMMLiquidityPoolRoundMastercopy | unknown | optimism | n/a | [`0xaea1be...93952a`](./contracts/optimism-10/0xaea1be15adb75a49aceef392a6d37625d993952a/) | ⚠️ Unaudited |
| SportPositionalMarketData | unknown | optimism | n/a | [`0xef9865...ebff4a`](./contracts/optimism-10/0xef9865a2d2dc2322d8b4e6ac84b13d4121ebff4a/) | ⚠️ Unaudited |
| SportPositionalMarketManager | unknown | optimism | n/a | [`0x46b1ec...18e154`](./contracts/optimism-10/0x46b1ec25e5e7696ecbae9441d3f79d01b118e154/) | ⚠️ Unaudited |
| SportsAMM | unknown | optimism | n/a | [`0x08e2c2...f4e5ae`](./contracts/optimism-10/0x08e2c2ba4f48e1dd103c12a38d515ba980f4e5ae/) | ⚠️ Unaudited |
| SportsAMMUtils | unknown | optimism | n/a | [`0x060112...aa2344`](./contracts/optimism-10/0x06011212ec56b65133b13c4ad3f11f1d40aa2344/) | ⚠️ Unaudited |
| sSpellOracle | unknown | ethereum | n/a | [`0xf8beb5...de90c7`](./contracts/ethereum-1/0xf8beb5c479a9b58f581076697bbce83baade90c7/) | ⚠️ Unaudited |
| sSpellV1 | unknown | ethereum | n/a | [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | ⚠️ Unaudited |
| StabilizeCaller | unknown | arbitrum | n/a | [`0x8299ba...7d53df`](./contracts/arbitrum-42161/0x8299baba76ae944ffbcea6525aaacb3c1e7d53df/) | ⚠️ Unaudited |
| StabilizeMigrator | unknown | arbitrum | n/a | [`0xad8b9d...5380a9`](./contracts/arbitrum-42161/0xad8b9d2abea3ec3abdaf793b93c7467b525380a9/) | ⚠️ Unaudited |
| Stabilizer | unknown | ethereum | n/a | [`0x7ec0d9...795cdd`](./contracts/ethereum-1/0x7ec0d931affba01b77711c2cd07c76b970795cdd/) | ⚠️ Unaudited |
| StableAMM | unknown | ethereum | n/a | [`0x0670e2...9eb4cd`](./contracts/ethereum-1/0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd/) | ⚠️ Unaudited |
| StableCoin | unknown | ethereum | n/a | [`0x06a220...5e3f6d`](./contracts/ethereum-1/0x06a220976adb39af2e2fac1c2ca523a3155e3f6d/) | ⚠️ Unaudited |
| StableConverter | unknown | ethereum | n/a | [`0x0236b7...a8a42e`](./contracts/ethereum-1/0x0236b7a3996d8c3597173aa95fd2a915c7a8a42e/) | ⚠️ Unaudited |
| StableCreditHelper | unknown | ethereum | n/a | [`0x404f9e...ca0acb`](./contracts/ethereum-1/0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb/) | ⚠️ Unaudited |
| StableCreditProtocol | unknown | ethereum | n/a | [`0x15fe17...26f5f9`](./contracts/ethereum-1/0x15fe17da18288d1799643be1bb07fb939626f5f9/) | ⚠️ Unaudited |
| StablePhantomPool | unknown | ethereum | n/a | [`0x4fd639...78ed23`](./contracts/ethereum-1/0x4fd63966879300cafafbb35d157dc5229278ed23/) | ⚠️ Unaudited |
| StableYieldCredit | unknown | ethereum | n/a | [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/) | ⚠️ Unaudited |
| StakedDistributor | unknown | optimism | n/a | [`0x41279e...171166`](./contracts/optimism-10/0x41279e29586eb20f9a4f65e031af09fced171166/) | ⚠️ Unaudited |
| StakedENA | unknown | ethereum | n/a | [`0x7fd57b...e1018b`](./contracts/ethereum-1/0x7fd57b46ae1a7b14f6940508381877ee03e1018b/) | ⚠️ Unaudited |
| StakedEXA | unknown | optimism | n/a | [`0x33c69e...e682a1`](./contracts/optimism-10/0x33c69e5c0a7a2bad42d178ec11b881acdbe682a1/) | ⚠️ Unaudited |
| StakedGlp | unknown | arbitrum | n/a | [`0x01af26...ba1c55`](./contracts/arbitrum-42161/0x01af26b74409d10e15b102621edd29c326ba1c55/) | ⚠️ Unaudited |
| StakedGlpMigrator | unknown | arbitrum | n/a | [`0xb63366...aba240`](./contracts/arbitrum-42161/0xb6336626c56d72ea501b6d14d1abd356c8aba240/) | ⚠️ Unaudited |
| StakedLIF3 | unknown | polygon | n/a | [`0x34ada0...a2acd2`](./contracts/polygon-137/0x34ada096ba56b579ee92803cc9c7dd3bb8a2acd2/) | ⚠️ Unaudited |
| StakedMvlp | unknown | polygon | n/a | [`0x2ee50c...6894e3`](./contracts/polygon-137/0x2ee50c34392e7e7a1d17b0a42328a8d1ad6894e3/) | ⚠️ Unaudited |
| StakedPendle | unknown | ethereum | n/a | [`0xa98d14...749032`](./contracts/ethereum-1/0xa98d1483781c08e60d944a63721b93fe40749032/) | ⚠️ Unaudited |
| StakedVectorETH | unknown | ethereum | n/a | [`0x6733f0...0fd2bc`](./contracts/ethereum-1/0x6733f0283711f225a447e759d859a70b0c0fd2bc/) | ⚠️ Unaudited |
| StakedVECVesting | unknown | ethereum | n/a | [`0x5291d0...5d26a0`](./contracts/ethereum-1/0x5291d0b8b7d0329ef6895cc759b6fd87125d26a0/) | ⚠️ Unaudited |
| StakeManager | unknown | arbitrum | n/a | [`0xe547ca...d02fd2`](./contracts/arbitrum-42161/0xe547cadbe081749e5b3dc53cb792dfaea2d02fd2/) | ⚠️ Unaudited |
| StakerRewardsBeneficiary | unknown | ethereum | n/a | [`0xbb59f4...8a0b81`](./contracts/ethereum-1/0xbb59f486135145ad247b82f9cdf52be4a58a0b81/) | ⚠️ Unaudited |
| Staking | unknown | arbitrum | n/a | [`0x2787f8...495a06`](./contracts/arbitrum-42161/0x2787f89355924a8781acf988f12855c6cd495a06/) | ⚠️ Unaudited |
| StakingData | unknown | optimism | n/a | [`0xab599b...e0995a`](./contracts/optimism-10/0xab599b2697d836e665706dc59566363e2fe0995a/) | ⚠️ Unaudited |
| StakingExtension | unknown | arbitrum | n/a | [`0x3be385...ba3571`](./contracts/arbitrum-42161/0x3be385576d7c282070ad91bf94366de9f9ba3571/) | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x118b76...069bd8`](./contracts/ethereum-1/0x118b7642b91bcf02c565a3c417534e29e4069bd8/) | ⚠️ Unaudited |
| StakingPools | unknown | ethereum | n/a | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | ⚠️ Unaudited |
| StakingPortBacker | unknown | ethereum | n/a | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| StakingRewardDistributor | unknown | ethereum | n/a | [`0x280d48...0810bd`](./contracts/ethereum-1/0x280d48e85f712e067a16d6b25e7ffe261c0810bd/) | ⚠️ Unaudited |
| StakingRewardDistributorGauge | unknown | ethereum | n/a | [`0x27b465...7151ed`](./contracts/ethereum-1/0x27b4655bd341993c78c8771bdd0caeb3ff7151ed/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x0a758a...e3e9a6`](./contracts/ethereum-1/0x0a758a25997167762e187f960dd0539a4ae3e9a6/) | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | ethereum | n/a | [`0x96ad30...a80356`](./contracts/ethereum-1/0x96ad308cb4479fd2558d40a4abf420565fa80356/) | ⚠️ Unaudited |
| StakingRewardsLock | unknown | ethereum | n/a | [`0x0b471a...85e150`](./contracts/ethereum-1/0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150/) | ⚠️ Unaudited |
| StakingThales | unknown | optimism | n/a | [`0x0886e6...08d9cd`](./contracts/optimism-10/0x0886e6bea150ed770b2ee3341332339c5c08d9cd/) | ⚠️ Unaudited |
| StakingThalesBonusRewardsManager | unknown | optimism | n/a | [`0x5830e9...6afb49`](./contracts/optimism-10/0x5830e9e30b55cb5fd6102805fea2cf951f6afb49/) | ⚠️ Unaudited |
| StandardArbERC20 | unknown | arbitrum | n/a | [`0x13ad51...5efa60`](./contracts/arbitrum-42161/0x13ad51ed4f1b7e9dc168d8a00cb3f4ddd85efa60/) | ⚠️ Unaudited |
| StandardToken | unknown | ethereum | n/a | [`0x4a220e...254675`](./contracts/ethereum-1/0x4a220e6096b25eadb88358cb44068a3248254675/) | ⚠️ Unaudited |
| StargateCurveLevSwapper | unknown | ethereum | n/a | [`0x3e4216...8a5c12`](./contracts/ethereum-1/0x3e4216c5f1f57c43a01180ac819eec23168a5c12/) | ⚠️ Unaudited |
| StargateCurveSwapper | unknown | ethereum | n/a | [`0x674621...296080`](./contracts/ethereum-1/0x67462167ade322938557101c2f6e16f39e296080/) | ⚠️ Unaudited |
| StargateLPOracle | unknown | ethereum | n/a | [`0x0eef51...f9bcc3`](./contracts/ethereum-1/0x0eef516541159830904cba3f52ff8496eff9bcc3/) | ⚠️ Unaudited |
| StargateToken | unknown | optimism | n/a | [`0x296f55...cb3f97`](./contracts/optimism-10/0x296f55f8fb28e498b858d0bcda06d955b2cb3f97/) | ⚠️ Unaudited |
| Stash | unknown | ethereum | n/a | [`0xe376e8...726c2e`](./contracts/ethereum-1/0xe376e8e8e3b0793cd61c6f1283ba18548b726c2e/) | ⚠️ Unaudited |
| StethFeed | unknown | ethereum | n/a | [`0x1b0867...156deb`](./contracts/ethereum-1/0x1b086779e47509bdc9f49f1ed31eefb1ef156deb/) | ⚠️ Unaudited |
| StMATIC | unknown | ethereum | n/a | [`0x15152e...448303`](./contracts/ethereum-1/0x15152eee59752f18c2de8fbd4bc83ec20c448303/) | ⚠️ Unaudited |
| Strategy | unknown | ethereum | n/a | [`0x23724d...d2b022`](./contracts/ethereum-1/0x23724d764d8b3d26852ba20d3bc2578093d2b022/) | ⚠️ Unaudited |
| StrategyAave | unknown | optimism | n/a | [`0x1a8bf9...effb76`](./contracts/optimism-10/0x1a8bf92abe1de4bdbf5fb8af223ec5fedceffb76/) | ⚠️ Unaudited |
| StrategyArrakisDaiUsdc | unknown | optimism | n/a | [`0x5518ed...942725`](./contracts/optimism-10/0x5518ed1dd612742e3369336ecc0fb22d94942725/) | ⚠️ Unaudited |
| StrategyArrakisUsdcDai | unknown | optimism | n/a | [`0x1b7974...3dce4c`](./contracts/optimism-10/0x1b797450434e0deda4d2c3198eee1d677d3dce4c/) | ⚠️ Unaudited |
| StrategyAutoPool | unknown | arbitrum | n/a | [`0x3cc7de...ca5fc9`](./contracts/arbitrum-42161/0x3cc7de561ee9fd960f6633c13e2e575ebbca5fc9/) | ⚠️ Unaudited |
| StrategyBeethovenxSonne | unknown | optimism | n/a | [`0x821863...848eb6`](./contracts/optimism-10/0x821863a25743eaa271fa5e70d9e4632650848eb6/) | ⚠️ Unaudited |
| StrategyBeethovenxUsdc | unknown | optimism | n/a | [`0x2b65fb...2fad6d`](./contracts/optimism-10/0x2b65fb73a3fb0e738bbe0726754801bb422fad6d/) | ⚠️ Unaudited |
| StrategyBifiMaxiV5Solidly | unknown | arbitrum | n/a | [`0x012416...80ccef`](./contracts/arbitrum-42161/0x012416d44cd8397bd798c155f91295b6b980ccef/) | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | ethereum | n/a | [`0x2be5d9...f9e88b`](./contracts/ethereum-1/0x2be5d998c95de70d9a38b3d78e49751f10f9e88b/) | ⚠️ Unaudited |
| StrategyCreamYFI | unknown | ethereum | n/a | [`0x40bd98...549afb`](./contracts/ethereum-1/0x40bd98e3cce4f34c087a73dd3d05558733549afb/) | ⚠️ Unaudited |
| StrategyDForceDAI | unknown | ethereum | n/a | [`0xd643cf...d47ede`](./contracts/ethereum-1/0xd643cf07344428770b84973e049a1c18b5d47ede/) | ⚠️ Unaudited |
| StrategyDForceUSDC | unknown | ethereum | n/a | [`0x01b354...11ab5c`](./contracts/ethereum-1/0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c/) | ⚠️ Unaudited |
| StrategyDForceUSDT | unknown | ethereum | n/a | [`0x787c77...a64bd8`](./contracts/ethereum-1/0x787c771035bde631391ced5c083db424a4a64bd8/) | ⚠️ Unaudited |
| StrategyEnnead | unknown | arbitrum | n/a | [`0xa5125b...90579a`](./contracts/arbitrum-42161/0xa5125b183f8e6e0b28455fa1bd4dc4282f90579a/) | ⚠️ Unaudited |
| StrategyEts | unknown | optimism | n/a | [`0x0275bf...5647c5`](./contracts/optimism-10/0x0275bf949922a3a06963c1556cb2e198d15647c5/) | ⚠️ Unaudited |
| StrategyEtsDaiUsdt | unknown | optimism | n/a | [`0xc2de28...977694`](./contracts/optimism-10/0xc2de28aeac3d4ca04091468cfe5d6cab88977694/) | ⚠️ Unaudited |
| StrategyEtsUsdcDai | unknown | optimism | n/a | [`0x028adf...27e740`](./contracts/optimism-10/0x028adfc6e1a569720dcffc6e36ffc4278627e740/) | ⚠️ Unaudited |
| StrategyFedPartner | unknown | ethereum | n/a | [`0xe6d110...f8b2dc`](./contracts/ethereum-1/0xe6d1100826c9b2db663edde5b2ff16e0baf8b2dc/) | ⚠️ Unaudited |
| StrategyGammaUsdcDai | unknown | optimism | n/a | [`0x081fc0...854064`](./contracts/optimism-10/0x081fc004df1f88e59840ec04fb0ef1e4b0854064/) | ⚠️ Unaudited |
| StrategyGLP | unknown | arbitrum | n/a | [`0x216eee...6a638d`](./contracts/arbitrum-42161/0x216eee15d1e3faad34181f66dd0b665f556a638d/) | ⚠️ Unaudited |
| StrategyGM | unknown | arbitrum | n/a | [`0xbbf258...fc5d56`](./contracts/arbitrum-42161/0xbbf2588fe012888621dbe36dfdec72d117fc5d56/) | ⚠️ Unaudited |
| StrategyGMX | unknown | arbitrum | n/a | [`0x2ca3d8...5a1780`](./contracts/arbitrum-42161/0x2ca3d8569fff9d394063853712aac5ac5a5a1780/) | ⚠️ Unaudited |
| StrategyGMXUniV3 | unknown | arbitrum | n/a | [`0x53b5f9...61f603`](./contracts/arbitrum-42161/0x53b5f983cf086a35fbbee40551e5bc913961f603/) | ⚠️ Unaudited |
| StrategyGNS | unknown | arbitrum | n/a | [`0x56154f...5aecb0`](./contracts/arbitrum-42161/0x56154faf5e8c25844208b391fb6d0f14d55aecb0/) | ⚠️ Unaudited |
| StrategyHop | unknown | arbitrum | n/a | [`0x08ba51...ec690b`](./contracts/arbitrum-42161/0x08ba51a3645678182b15a1a177e50ecadaec690b/) | ⚠️ Unaudited |
| StrategyHopCamelot | unknown | arbitrum | n/a | [`0x50d694...6213af`](./contracts/arbitrum-42161/0x50d6945632e6d89cc9c9d38e1fe5b6250f6213af/) | ⚠️ Unaudited |
| StrategyHopCamelotUniV3 | unknown | arbitrum | n/a | [`0xdd456d...a187b5`](./contracts/arbitrum-42161/0xdd456d6fc0e42bf41be76fb0f84f39d93ca187b5/) | ⚠️ Unaudited |
| StrategyHopUniV3 | unknown | arbitrum | n/a | [`0xebf278...49acbf`](./contracts/arbitrum-42161/0xebf278aacad8ad151e637fbc8acbc5a3a449acbf/) | ⚠️ Unaudited |
| StrategyKyberSwapUsdcDai | unknown | optimism | n/a | [`0x337800...aaf0fd`](./contracts/optimism-10/0x33780001580ebed03362dc07372047523eaaf0fd/) | ⚠️ Unaudited |
| StrategyKyberSwapUsdcUsdt | unknown | optimism | n/a | [`0x062d8e...3e92d0`](./contracts/optimism-10/0x062d8e9189230601329a0ca09fe8de691a3e92d0/) | ⚠️ Unaudited |
| StrategyMKRVaultDAIDelegate | unknown | ethereum | n/a | [`0x28e5a4...e083a5`](./contracts/ethereum-1/0x28e5a47820313da9c74b8f2295795da6e6e083a5/) | ⚠️ Unaudited |
| StrategyMStableSavings | unknown | ethereum | n/a | [`0x31641a...69156f`](./contracts/ethereum-1/0x31641a4836c172640fa1c02999b09c5d1069156f/) | ⚠️ Unaudited |
| StrategyMStableSavingsTUSD | unknown | ethereum | n/a | [`0x442510...e0b81c`](./contracts/ethereum-1/0x442510ba285d5390cb5385a91a380d4268e0b81c/) | ⚠️ Unaudited |
| StrategyPassiveManagerCamelot | unknown | arbitrum | n/a | [`0x7c02fc...c4e147`](./contracts/arbitrum-42161/0x7c02fc607147a3ec19c7c5bc37b47466e4c4e147/) | ⚠️ Unaudited |
| StrategyPassiveManagerPancake | unknown | arbitrum | n/a | [`0x8b7c6d...b94193`](./contracts/arbitrum-42161/0x8b7c6d1e261d243442cc2f72436677ce33b94193/) | ⚠️ Unaudited |
| StrategyPassiveManagerRamses | unknown | arbitrum | n/a | [`0xfb3ded...9ac440`](./contracts/arbitrum-42161/0xfb3ded02359c6b5c36eea2123663b458569ac440/) | ⚠️ Unaudited |
| StrategyPikaUsdc | unknown | optimism | n/a | [`0x9520ae...ffe641`](./contracts/optimism-10/0x9520aef41161f09dce78a8e79482b654d4ffe641/) | ⚠️ Unaudited |
| StrategyPikaV4 | unknown | optimism | n/a | [`0x03df70...104b9e`](./contracts/optimism-10/0x03df70538334f98a5fb71dd6341d3bc6dd104b9e/) | ⚠️ Unaudited |
| StrategyProxy | unknown | ethereum | n/a | [`0x16c20c...597c7a`](./contracts/ethereum-1/0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a/) | ⚠️ Unaudited |
| StrategyReaperSonneDai | unknown | optimism | n/a | [`0x345db9...8b20cb`](./contracts/optimism-10/0x345db956656fe91cf65a47e33347bd05618b20cb/) | ⚠️ Unaudited |
| StrategyReaperSonneDaiDai | unknown | optimism | n/a | [`0x5b4f6f...6de836`](./contracts/optimism-10/0x5b4f6f099d5178209e032644b1184bfe906de836/) | ⚠️ Unaudited |
| StrategyReaperSonneUsdc | unknown | optimism | n/a | [`0x4aa217...220cf4`](./contracts/optimism-10/0x4aa2172b7c6359e0f5050b16e0fc815419220cf4/) | ⚠️ Unaudited |
| StrategyReaperSonneUsdt | unknown | optimism | n/a | [`0x8d2126...528298`](./contracts/optimism-10/0x8d2126e13d4fb57b4dd1e37cb0e74ac270528298/) | ⚠️ Unaudited |
| StrategyRubiconDai | unknown | optimism | n/a | [`0x304d04...b1f4ef`](./contracts/optimism-10/0x304d04acf5637d01588e51100c6b6fdee1b1f4ef/) | ⚠️ Unaudited |
| StrategyRubiconUsdc | unknown | optimism | n/a | [`0x3ddd03...93e09d`](./contracts/optimism-10/0x3ddd035b53035e5e72b5e3d36685f4e28893e09d/) | ⚠️ Unaudited |
| StrategyRubiconUsdt | unknown | optimism | n/a | [`0x0fbba9...2802bc`](./contracts/optimism-10/0x0fbba9778386eb874dd937feee98ab9cff2802bc/) | ⚠️ Unaudited |
| StrategySiloCollateralOnly | unknown | arbitrum | n/a | [`0x5cf7f5...185755`](./contracts/arbitrum-42161/0x5cf7f5a29b74572c0a2832ef2220e2e645185755/) | ⚠️ Unaudited |
| StrategySNXSUSD | unknown | ethereum | n/a | [`0x2288c4...4ec989`](./contracts/ethereum-1/0x2288c409e67b6ce52180f97a8cddf7abc24ec989/) | ⚠️ Unaudited |
| StrategySonneDai | unknown | optimism | n/a | [`0x2e25b0...705e72`](./contracts/optimism-10/0x2e25b00f6c4b7af929043f9778e540d6e3705e72/) | ⚠️ Unaudited |
| StrategySonneUsdc | unknown | optimism | n/a | [`0x7a3fde...89f9f7`](./contracts/optimism-10/0x7a3fde3aa22740850b1e03caa986976acb89f9f7/) | ⚠️ Unaudited |
| StrategySushiswapUsdcUsdt | unknown | optimism | n/a | [`0x0b2876...09d31d`](./contracts/optimism-10/0x0b287606f1867be9d0435089cb08faa16109d31d/) | ⚠️ Unaudited |
| StrategySynapseUsdc | unknown | optimism | n/a | [`0x22c40e...f4047b`](./contracts/optimism-10/0x22c40e877ae928e90d0fde276973bacee2f4047b/) | ⚠️ Unaudited |
| StrategyTest | unknown | optimism | n/a | [`0xd3da26...7b800a`](./contracts/optimism-10/0xd3da26165a1d8a89f02a09d51940e9e8777b800a/) | ⚠️ Unaudited |
| StrategyUs3UsdcWethOp | unknown | optimism | n/a | [`0x2b60ff...f9edcf`](./contracts/optimism-10/0x2b60ffd309929af6be194b1f9428b63980f9edcf/) | ⚠️ Unaudited |
| StrategyUsdPlusDai | unknown | optimism | n/a | [`0x291120...e5e88c`](./contracts/optimism-10/0x291120ffa233285f82a741a2970faf246fe5e88c/) | ⚠️ Unaudited |
| StrategyVaultTUSD | unknown | ethereum | n/a | [`0x35cee4...ba817a`](./contracts/ethereum-1/0x35cee4c61b7619956e0b2015b5411f93cbba817a/) | ⚠️ Unaudited |
| StrategyVaultUSDC | unknown | ethereum | n/a | [`0x25faca...20d8d6`](./contracts/ethereum-1/0x25faca21dd2ad7edb3a027d543e617496820d8d6/) | ⚠️ Unaudited |
| StrategyVelodromeUsdcDai | unknown | optimism | n/a | [`0x7f343c...7cb373`](./contracts/optimism-10/0x7f343c16c0c69a714e0ef8d508c28ad82a7cb373/) | ⚠️ Unaudited |
| StrategyVenus | unknown | arbitrum | n/a | [`0xb50bf8...5cff27`](./contracts/arbitrum-42161/0xb50bf83794c06382ad92decb6f56e10ec95cff27/) | ⚠️ Unaudited |
| StrategyVesperUsdc | unknown | optimism | n/a | [`0x2955ba...d018ec`](./contracts/optimism-10/0x2955ba0fa44202090d840d36b2cae53036d018ec/) | ⚠️ Unaudited |
| StrategyYffi | unknown | ethereum | n/a | [`0xbe197e...da0b73`](./contracts/ethereum-1/0xbe197e668d13746bb92e675dea2868ff14da0b73/) | ⚠️ Unaudited |
| StrategyYFIGovernance | unknown | ethereum | n/a | [`0x395f93...88797c`](./contracts/ethereum-1/0x395f93350d5102b6139abfc84a7d6ee70488797c/) | ⚠️ Unaudited |
| StrategyYfii | unknown | ethereum | n/a | [`0x2de055...edfa70`](./contracts/ethereum-1/0x2de055fec2b826ed4a7478ceddbeff82c1edfa70/) | ⚠️ Unaudited |
| SubaccountRouter | unknown | arbitrum | n/a | [`0x3c48a9...1efa44`](./contracts/arbitrum-42161/0x3c48a997ef5badef5c07780342af0f7ed71efa44/) | ⚠️ Unaudited |
| SubgraphAvailabilityManager | unknown | arbitrum | n/a | [`0x10223d...16ad4d`](./contracts/arbitrum-42161/0x10223d466d9acdf50798fbc3ac0c231eb616ad4d/) | ⚠️ Unaudited |
| SubgraphNFT | unknown | arbitrum | n/a | [`0x3fbd54...22b23f`](./contracts/arbitrum-42161/0x3fbd54f0cc17b7ae649008deea12ed7d2622b23f/) | ⚠️ Unaudited |
| SubgraphNFTDescriptor | unknown | arbitrum | n/a | [`0x96cce9...815ebe`](./contracts/arbitrum-42161/0x96cce9b6489744630a058324fb22e7cd02815ebe/) | ⚠️ Unaudited |
| SubgraphService | unknown | arbitrum | n/a | [`0x80d1a2...4747cd`](./contracts/arbitrum-42161/0x80d1a23472a4ecfa484c95779d5ce855c24747cd/) | ⚠️ Unaudited |
| Subscriptions | unknown | arbitrum | n/a | [`0x482f58...67a750`](./contracts/arbitrum-42161/0x482f58d3513e386036670404b35cb3f2df67a750/) | ⚠️ Unaudited |
| SugarHelper | unknown | optimism | n/a | [`0x495193...447a69`](./contracts/optimism-10/0x495193daebde03e12857f4d3bb8984da2d447a69/) | ⚠️ Unaudited |
| SupplyFactory | unknown | ethereum | n/a | [`0xf2eb91...41978f`](./contracts/ethereum-1/0xf2eb916605402e5c7e81f7d609d0e2204841978f/) | ⚠️ Unaudited |
| SupplyMiner | unknown | polygon | n/a | [`0x0f307e...0b7e2b`](./contracts/polygon-137/0x0f307e021a7e7d03b6d753b972d349f48d0b7e2b/) | ⚠️ Unaudited |
| SupplySchedule | unknown | optimism | n/a | [`0x3e8b82...cb9c26`](./contracts/optimism-10/0x3e8b82326ff5f2f10da8cea117bd44343ccb9c26/) | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | ethereum | n/a | [`0xf574cb...6efef7`](./contracts/ethereum-1/0xf574cbebbd549273af82b42cd0230de9ea6efef7/) | ⚠️ Unaudited |
| sVEC | unknown | ethereum | n/a | [`0x66d5c6...9b3365`](./contracts/ethereum-1/0x66d5c66e7c83e0682d947176534242c9f19b3365/) | ⚠️ Unaudited |
| sVECVesting | unknown | ethereum | n/a | [`0x91c894...812733`](./contracts/ethereum-1/0x91c894635d8cfd2c501763394fd66dc237812733/) | ⚠️ Unaudited |
| svETHRateProvider | unknown | ethereum | n/a | [`0xad4bfa...7a1879`](./contracts/ethereum-1/0xad4bfafae75ecd3fed5cfad4e4e9847cd47a1879/) | ⚠️ Unaudited |
| svETHZap | unknown | ethereum | n/a | [`0x6e2875...ec1314`](./contracts/ethereum-1/0x6e28754fe97c306b6adcbc9dd4f6cc5ee7ec1314/) | ⚠️ Unaudited |
| sVotingEscrow | unknown | ethereum | n/a | [`0x9485db...4a97d9`](./contracts/ethereum-1/0x9485dbda44b279311e3eee374ced60b5364a97d9/) | ⚠️ Unaudited |
| SwapFlashLoan | unknown | optimism | n/a | [`0xf47b8b...b33535`](./contracts/optimism-10/0xf47b8b1daf12c3058b757a1446dadfa8e4b33535/) | ⚠️ Unaudited |
| Swapper1InchV5 | unknown | ethereum | n/a | [`0xcd0fcf...d18366`](./contracts/ethereum-1/0xcd0fcf8a31bc78ec07752e9ccd3960e936d18366/) | ⚠️ Unaudited |
| SwapperEngine | unknown | ethereum | n/a | [`0x23f20b...6be18b`](./contracts/ethereum-1/0x23f20b7ea6194b639f75f2295a8a98ccdf6be18b/) | ⚠️ Unaudited |
| SwapperSidechain | unknown | optimism | n/a | [`0xa014a4...97a549`](./contracts/optimism-10/0xa014a485d64efb236423004ab1a99c0aaa97a549/) | ⚠️ Unaudited |
| SweeperV2 | unknown | ethereum | n/a | [`0x6b3d9f...40ff26`](./contracts/ethereum-1/0x6b3d9fe074c18a2fa10a8206670ef7f65f40ff26/) | ⚠️ Unaudited |
| SwETHPriceOracle | unknown | ethereum | n/a | [`0xe7ab07...415334`](./contracts/ethereum-1/0xe7ab07d7eeb29031e7d2ac083bf0d2ef0e415334/) | ⚠️ Unaudited |
| Synthetic | unknown | ethereum | n/a | [`0x0485a4...e99b6c`](./contracts/ethereum-1/0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c/) | ⚠️ Unaudited |
| SyntheticRebaseDollar | unknown | ethereum | n/a | [`0xaa90d9...38ffdc`](./contracts/ethereum-1/0xaa90d9cc2f41a150489da5fffba2060a2938ffdc/) | ⚠️ Unaudited |
| SynthetixAMM | unknown | ethereum | n/a | [`0x5ed4a4...f8c8be`](./contracts/ethereum-1/0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be/) | ⚠️ Unaudited |
| SynthetixExchange | unknown | ethereum | n/a | [`0x0691cf...04c2cf`](./contracts/ethereum-1/0x0691cf9d171d6c9c3876598b14732248b204c2cf/) | ⚠️ Unaudited |
| SYRedeemAndSwap | unknown | ethereum | n/a | [`0xb50057...86823f`](./contracts/ethereum-1/0xb5005751f2ac076a5a612a8be8f3b953dd86823f/) | ⚠️ Unaudited |
| T | unknown | ethereum | n/a | [`0xcdf702...94bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | ⚠️ Unaudited |
| TaleOfThalesNFTs | unknown | optimism | n/a | [`0x41cccb...486d1f`](./contracts/optimism-10/0x41cccb4935386e0471922d460d9194b7db486d1f/) | ⚠️ Unaudited |
| TAPVerifier | unknown | arbitrum | n/a | [`0x33f9e9...a0f05a`](./contracts/arbitrum-42161/0x33f9e93266ce0e108fc85dde2f71dab555a0f05a/) | ⚠️ Unaudited |
| TBTC | unknown | ethereum | n/a | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | ⚠️ Unaudited |
| TBTCConstants | unknown | ethereum | n/a | [`0x63a152...26750d`](./contracts/ethereum-1/0x63a152ea1cd78ac3c7c1fcf1322dc6de1126750d/) | ⚠️ Unaudited |
| TBTCDepositToken | unknown | ethereum | n/a | [`0x10b66b...37cdf0`](./contracts/ethereum-1/0x10b66bd1e3b5a936b7f8dbc5976004311037cdf0/) | ⚠️ Unaudited |
| TBTCSystem | unknown | ethereum | n/a | [`0xe20a5c...1ab64a`](./contracts/ethereum-1/0xe20a5c79b39bc8c363f0f49adcfa82c2a01ab64a/) | ⚠️ Unaudited |
| TBTCVault | unknown | ethereum | n/a | [`0x52818e...277fd4`](./contracts/ethereum-1/0x52818e501612d3c5b37b5f9b83b024342c277fd4/) | ⚠️ Unaudited |
| TendiesFarm | unknown | ethereum | n/a | [`0x101dd6...e24a9f`](./contracts/ethereum-1/0x101dd6f1f5e396f6ab87407df637cce814e24a9f/) | ⚠️ Unaudited |
| TetherToken | unknown | ethereum | n/a | [`0x6e109e...c07aef`](./contracts/ethereum-1/0x6e109e9dd7fa1a58bc3eff667e8e41fc3cc07aef/) | ⚠️ Unaudited |
| ThalesAMM | unknown | optimism | n/a | [`0x129e14...554c2f`](./contracts/optimism-10/0x129e14f5e79f1423b79d309a2a7ee43121554c2f/) | ⚠️ Unaudited |
| ThalesAMMLiquidityPool | unknown | optimism | n/a | [`0x092e6b...d58b70`](./contracts/optimism-10/0x092e6b8dfddb4b732c89deb4a700868cc5d58b70/) | ⚠️ Unaudited |
| ThalesAMMLiquidityPoolRoundMastercopy | unknown | optimism | n/a | [`0x8f8cc3...132018`](./contracts/optimism-10/0x8f8cc357aaa401cb6f7e01d56c59aa8cb2132018/) | ⚠️ Unaudited |
| ThalesAMMUtils | unknown | optimism | n/a | [`0x279c0d...341373`](./contracts/optimism-10/0x279c0d239d0c036e74aadf872d604af37e341373/) | ⚠️ Unaudited |
| ThalesStakingRewardsPool | unknown | optimism | n/a | [`0x0abc94...7a4ee3`](./contracts/optimism-10/0x0abc94987f6b98bfe6fd40f749e445a2857a4ee3/) | ⚠️ Unaudited |
| TherundownConsumer | unknown | optimism | n/a | [`0x2447ce...9f9985`](./contracts/optimism-10/0x2447ce55d230c01fc430725a8613d852289f9985/) | ⚠️ Unaudited |
| ThreeCrvLevSwapperV1 | unknown | ethereum | n/a | [`0x1fc83f...aae530`](./contracts/ethereum-1/0x1fc83f75499b7620d53757f0b01e2ae626aae530/) | ⚠️ Unaudited |
| ThreeCrvOracle | unknown | ethereum | n/a | [`0x13f193...24ddab`](./contracts/ethereum-1/0x13f193d5328d967076c5ed80be9ed5a79224ddab/) | ⚠️ Unaudited |
| ThreeCrvSwapperV1 | unknown | ethereum | n/a | [`0x286ed6...0af7c5`](./contracts/ethereum-1/0x286ed6c7a0797e370ed47c8f0f57ad68060af7c5/) | ⚠️ Unaudited |
| ThreeCryptoLevSwapper | unknown | ethereum | n/a | [`0x36d938...3889bf`](./contracts/ethereum-1/0x36d9386ad4b8636459c365295ddc7e70e33889bf/) | ⚠️ Unaudited |
| ThreeCryptoOracle | unknown | ethereum | n/a | [`0x20915f...0605f1`](./contracts/ethereum-1/0x20915f71474c127e5c3cdc41c75cb21d4e0605f1/) | ⚠️ Unaudited |
| ThreeCryptoSwapper | unknown | ethereum | n/a | [`0x0e1ea2...b5bc85`](./contracts/ethereum-1/0x0e1ea2269d6e22dfeebce7b0a4c6c3d415b5bc85/) | ⚠️ Unaudited |
| ThreePoolStrategy | unknown | ethereum | n/a | [`0x641e3b...8e23da`](./contracts/ethereum-1/0x641e3b5b081fb2fb8b43d5a163649312a28e23da/) | ⚠️ Unaudited |
| ThreePoolStrategyProxy | unknown | ethereum | n/a | [`0x67023c...dfdd6d`](./contracts/ethereum-1/0x67023c56548ba15ad3542e65493311f19adfdd6d/) | ⚠️ Unaudited |
| TimeLoanPairFactory | unknown | ethereum | n/a | [`0x2df934...60da0d`](./contracts/ethereum-1/0x2df93404574dff883e2b35911a684dab1760da0d/) | ⚠️ Unaudited |
| Timelock | unknown | arbitrum | n/a | [`0x09214c...9b15b8`](./contracts/arbitrum-42161/0x09214c0a3594fbcad59a58099b0a63e2b29b15b8/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x1fda02...08e674`](./contracts/ethereum-1/0x1fda02cf28f28a763d996ad5ee37b9f1b608e674/) | ⚠️ Unaudited |
| TimelockControllerWithCounter | unknown | optimism | n/a | [`0x343902...5e8227`](./contracts/optimism-10/0x343902fe4d72e24b29f22d787b2e54eeea5e8227/) | ⚠️ Unaudited |
| TimelockGovernance | unknown | ethereum | n/a | [`0x026d4b...1dfb61`](./contracts/ethereum-1/0x026d4b8d693f6c446782c2c61ee357ec561dfb61/) | ⚠️ Unaudited |
| TimeLockNonTransferablePoolUnlocked | unknown | ethereum | n/a | [`0x1cf049...47edbc`](./contracts/ethereum-1/0x1cf0494e03516ce466780d34c1f96269eb47edbc/) | ⚠️ Unaudited |
| TimeToken | unknown | ethereum | n/a | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | ⚠️ Unaudited |
| TokenBurner | unknown | ethereum | n/a | [`0x4f2e21...2b44a2`](./contracts/ethereum-1/0x4f2e21062db87d1023e6e5941c5e8c2de32b44a2/) | ⚠️ Unaudited |
| TokenClaim | unknown | ethereum | n/a | [`0xc7f38c...fdc3a5`](./contracts/ethereum-1/0xc7f38c08e1f0b929a2b6af28a567aed839fdc3a5/) | ⚠️ Unaudited |
| TokenContinuousDistribution | unknown | ethereum | n/a | [`0x35f517...e0bc85`](./contracts/ethereum-1/0x35f517cab9a37bc31091c2f155d965af84e0bc85/) | ⚠️ Unaudited |
| TokenConverter | unknown | ethereum | n/a | [`0xf48a59...b34bfc`](./contracts/ethereum-1/0xf48a59434609b6e934c2cf091848fa2d28b34bfc/) | ⚠️ Unaudited |
| TokenListingManager | unknown | ethereum | n/a | [`0x29c317...0bc92d`](./contracts/ethereum-1/0x29c317dccc79ef77ef04bb7e9a852926050bc92d/) | ⚠️ Unaudited |
| TokenListingManagerAdvanced | unknown | ethereum | n/a | [`0x2fe468...6e5705`](./contracts/ethereum-1/0x2fe468219e40b732ee43dc5c1d6295bd796e5705/) | ⚠️ Unaudited |
| TokenManager | unknown | arbitrum | n/a | [`0x1ef815...75ad59`](./contracts/arbitrum-42161/0x1ef8156b46e6f5a1973bff4975177fd13275ad59/) | ⚠️ Unaudited |
| TokenMapping | unknown | ethereum | n/a | [`0x334b18...e5783c`](./contracts/ethereum-1/0x334b18e5e81657efa2057f80e19b8e81f0e5783c/) | ⚠️ Unaudited |
| TokenMigration | unknown | ethereum | n/a | [`0x7be03b...3d27f6`](./contracts/ethereum-1/0x7be03b36bb6eaaed3223f50c7b6ac215673d27f6/) | ⚠️ Unaudited |
| TokenSale | unknown | ethereum | n/a | [`0x05f995...582dab`](./contracts/ethereum-1/0x05f9955ac8236a163833c92b492c67632b582dab/) | ⚠️ Unaudited |
| TokensFactory | unknown | ethereum | n/a | [`0x0e37df...6ad622`](./contracts/ethereum-1/0x0e37df413f97fc198a84a21bc463c41b516ad622/) | ⚠️ Unaudited |
| TokenSideChainMultiBridge | unknown | optimism | n/a | [`0x42dc54...4830ea`](./contracts/optimism-10/0x42dc54fb50db556fa6ffba765f1141536d4830ea/) | ⚠️ Unaudited |
| TokenStakingEscrow | unknown | ethereum | n/a | [`0xda534b...681365`](./contracts/ethereum-1/0xda534b567099ca481384133bc121d5843f681365/) | ⚠️ Unaudited |
| TokenVesting | unknown | ethereum | n/a | [`0x2fe43a...655f41`](./contracts/ethereum-1/0x2fe43a28ad82a7fc5422ab8e9ea4efdeb1655f41/) | ⚠️ Unaudited |
| TopUps | unknown | ethereum | n/a | [`0x41c9b5...79d91a`](./contracts/ethereum-1/0x41c9b5639e3f2f6c61e9b78b2c6ff3746e79d91a/) | ⚠️ Unaudited |
| TotalEthValueReader | unknown | ethereum | n/a | [`0x788f0b...3854aa`](./contracts/ethereum-1/0x788f0b81809be6f5e07f277a676c7f392c3854aa/) | ⚠️ Unaudited |
| Transfer | unknown | polygon | n/a | [`0xfa38b8...e50698`](./contracts/polygon-137/0xfa38b8632153b2d083a94590e577298c0ae50698/) | ⚠️ Unaudited |
| TransferGauge | unknown | ethereum | n/a | [`0x124ab7...cf81df`](./contracts/ethereum-1/0x124ab70402eaf0ba6b18f0b304577c336dcf81df/) | ⚠️ Unaudited |
| TransferRegistry | unknown | ethereum | n/a | [`0x68818d...a9a6c1`](./contracts/ethereum-1/0x68818d468c0e1fefdc56824ab4f3f053a8a9a6c1/) | ⚠️ Unaudited |
| Transmuter | unknown | ethereum | n/a | [`0xab7a49...122086`](./contracts/ethereum-1/0xab7a49b971afdc7ee26255038c82b4006d122086/) | ⚠️ Unaudited |
| TransmuterEth | unknown | ethereum | n/a | [`0x45f81e...ff674b`](./contracts/ethereum-1/0x45f81ef5f2ae78f49851f7a62e4061ff54ff674b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0081fc...f52123`](./contracts/ethereum-1/0x0081fc6517ea64c83bd4460a14c940efcdf52123/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0780ac...abba73`](./contracts/ethereum-1/0x0780ac90fa25fa4ff694e92172fcf3eb34abba73/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x08234d...276ec7`](./contracts/ethereum-1/0x08234d75fcbf3599a6fac456a65313cce1276ec7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x097651...bd6a72`](./contracts/ethereum-1/0x09765190845c35fb81efd6952e19c995f6bd6a72/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0d3ac0...fe6489`](./contracts/ethereum-1/0x0d3ac0aba8efb92222bc050509a0c8d2fbfe6489/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0e628a...aa5913`](./contracts/ethereum-1/0x0e628a1c34c92f0aa85af998814ce4f03caa5913/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x126e6d...7d9a38`](./contracts/ethereum-1/0x126e6da0caefeaf104c6b9d022394a42567d9a38/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x152de6...2900ed`](./contracts/ethereum-1/0x152de634ff2f0a6ecbd05cb591cd1eeacd2900ed/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x18d51a...0ce0e2`](./contracts/ethereum-1/0x18d51abee19819aefb138432210a8b67f10ce0e2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x194996...2c29f7`](./contracts/ethereum-1/0x194996d38fd7f62203e0d77bacab5e191a2c29f7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1de562...32008d`](./contracts/ethereum-1/0x1de562b03184521f9a699e9290a6d578cd32008d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x319eee...35cf8c`](./contracts/ethereum-1/0x319eee64d20a01e4a62215a35727fa8f2f35cf8c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x374434...6ca40c`](./contracts/ethereum-1/0x374434df400c4b68aad8598e79840d109b6ca40c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x3e6eba...0e4637`](./contracts/ethereum-1/0x3e6eba46abc5ab18ed95f6667d8b2fd4020e4637/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x4e91f1...5afb32`](./contracts/ethereum-1/0x4e91f1eb389242b0f718859158c1d912055afb32/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x548cab...08c3ad`](./contracts/ethereum-1/0x548cab89ebf34509ae562bc8ce8d5cdb4f08c3ad/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x57dff3...49e7bb`](./contracts/ethereum-1/0x57dff3ea4006888d2b3e9b0df62e9f3a6a49e7bb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6733cb...d86a91`](./contracts/ethereum-1/0x6733cb3b0e1a55a945c37b7bde543e74bdd86a91/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x6d247b...b29a9f`](./contracts/ethereum-1/0x6d247b1c044fa1e22e6b04fa9f71baf99eb29a9f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x819f7b...d81667`](./contracts/ethereum-1/0x819f7b1e52b9a70e0848148d44b3676819d81667/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x923a36...8264f8`](./contracts/ethereum-1/0x923a36f8fc2cf7628f01dc2b781d81a9c48264f8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x9e2081...5a312b`](./contracts/ethereum-1/0x9e208146a28a653f6212d2931f316932015a312b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xb8df0a...38e6d3`](./contracts/ethereum-1/0xb8df0a949ac45ff8f401553a1dcb742feb38e6d3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xdf217e...854017`](./contracts/ethereum-1/0xdf217efd8f3ecb5e837aedf203c28c1f06854017/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x004d1b...188c07`](./contracts/optimism-10/0x004d1bf176c59890e11e487d1270d809df188c07/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x022ca1...76e385`](./contracts/optimism-10/0x022ca1d3570f6c258ed47c381541d8225176e385/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x033181...294b27`](./contracts/optimism-10/0x0331814f183d6a782e93e46810e76b5d21294b27/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x0565b1...8fb898`](./contracts/optimism-10/0x0565b1ab5cee7075b32c2d6a5b9da44b708fb898/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x057e3e...594d04`](./contracts/optimism-10/0x057e3efca6f9e7094584b176f3e69a4f4b594d04/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x0a6851...b75325`](./contracts/optimism-10/0x0a6851c7d112a27019d84dccb9ce0c0cd8b75325/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x0b8f39...7be900`](./contracts/optimism-10/0x0b8f398d8dbb74bf2dc475d02e802334777be900/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x0e7eb3...823b6b`](./contracts/optimism-10/0x0e7eb3feeae852126dec868505961a0a43823b6b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x10add8...4dea80`](./contracts/optimism-10/0x10add85387101825b180b9f1b33c1603a34dea80/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x15c9ea...27e9db`](./contracts/optimism-10/0x15c9eae416c2e3fbecf2248003a2b2677127e9db/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x1e95fa...c1e0a1`](./contracts/optimism-10/0x1e95faca5f99dcc8e517fea193a3c3b0aac1e0a1/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x21382a...07e23c`](./contracts/optimism-10/0x21382a033e581a2d685826449d6c9b3d6507e23c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x3198ab...a2e579`](./contracts/optimism-10/0x3198ab211cdf3e4d13a698e1fb819507bca2e579/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x31a20e...c1f6bf`](./contracts/optimism-10/0x31a20e5b7b1b067705419d57ab4f72e81cc1f6bf/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x3e29d3...7c5f04`](./contracts/optimism-10/0x3e29d3a9316dab217754d13b28646b76607c5f04/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x474499...33326d`](./contracts/optimism-10/0x474499e5202d8cc7898358526c8d00b43333326d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x5c7949...83c641`](./contracts/optimism-10/0x5c79494df50d9dc56de627f46d0b2e217683c641/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x6ab00f...51d39d`](./contracts/optimism-10/0x6ab00f0b713fd6288fc849b25e580ed2ad51d39d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x70164a...03286b`](./contracts/optimism-10/0x70164a1ec9d21c4dba2b4f9b23750f9c7d03286b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x9485ac...c8b1ed`](./contracts/optimism-10/0x9485aca5bbbe1667ad97c7fe7c4531a624c8b1ed/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0xd557ad...2b5997`](./contracts/optimism-10/0xd557ad9cbddd73570dcd0e00316909fcf62b5997/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0xdd98b7...d5acef`](./contracts/polygon-137/0xdd98b79b36c77ee1f23f37b61e58a61cc3d5acef/) | ⚠️ Unaudited |
| Treasury | unknown | optimism | n/a | [`0x1033dd...68ac6d`](./contracts/optimism-10/0x1033dd8415a282db52f14902e91de6e91868ac6d/) | ⚠️ Unaudited |
| TreasuryVault | unknown | ethereum | n/a | [`0x93a62d...a0efde`](./contracts/ethereum-1/0x93a62da5a14c80f265dabc077fcee437b1a0efde/) | ⚠️ Unaudited |
| TreasuryVester | unknown | ethereum | n/a | [`0x01d360...ed8508`](./contracts/ethereum-1/0x01d360c54eb27a6a95ea1f8e309e5c8263ed8508/) | ⚠️ Unaudited |
| TriCryptoUpdator | unknown | ethereum | n/a | [`0xbdaf49...b1632f`](./contracts/ethereum-1/0xbdaf491a8c45981ccdfe46455f9d62b5c9b1632f/) | ⚠️ Unaudited |
| Trig | unknown | optimism | n/a | [`0xbdd6f9...5170ef`](./contracts/optimism-10/0xbdd6f9662e904a9176aafcbdded45d076b5170ef/) | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | ethereum | n/a | [`0x1b0c25...747556`](./contracts/ethereum-1/0x1b0c2586df3daad42ac2fdcaa0f6b91623747556/) | ⚠️ Unaudited |
| TrustlessOTC | unknown | ethereum | n/a | [`0x93dc6a...1013db`](./contracts/ethereum-1/0x93dc6a333a99c0ede1cd346ccf079ea8451013db/) | ⚠️ Unaudited |
| UChildDAI | unknown | polygon | n/a | [`0x490e37...7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x00032e...b5f25b`](./contracts/polygon-137/0x00032e33ac57c73f9d4e3e85a97488214cb5f25b/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x000de6...6ec08c`](./contracts/polygon-137/0x000de668684839f97d4845f32a43e913366ec08c/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x2791bc...a84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| UnderwriterToken | unknown | ethereum | n/a | [`0x007854...0df843`](./contracts/ethereum-1/0x007854fdcc9c6f748b435e63745599fb1a0df843/) | ⚠️ Unaudited |
| UniOracleFactory | unknown | ethereum | n/a | [`0x61da8b...61d136`](./contracts/ethereum-1/0x61da8b0808cea5281a912cd85421a6d12261d136/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | arbitrum | n/a | [`0x905dfc...711aa3`](./contracts/arbitrum-42161/0x905dfcd5649217c42684f23958568e533c711aa3/) | ⚠️ Unaudited |
| Unitroller | unknown | optimism | n/a | [`0x7d6969...8d6778`](./contracts/optimism-10/0x7d69692389cda1ed99fd04d3081d7ac9368d6778/) | ⚠️ Unaudited |
| UniV2TWAMMFactory | unknown | ethereum | n/a | [`0x54f454...b34e79`](./contracts/ethereum-1/0x54f454d747e037da288db568d4121117eab34e79/) | ⚠️ Unaudited |
| UniV2TWAMMRouter | unknown | ethereum | n/a | [`0xa007a9...e808de`](./contracts/ethereum-1/0xa007a9716dba05289df85a90d0fd9d39bee808de/) | ⚠️ Unaudited |
| UniV3TWAPOracle | unknown | ethereum | n/a | [`0x59985d...d9174b`](./contracts/ethereum-1/0x59985d79e1e69f659f4ab97db07a35ce73d9174b/) | ⚠️ Unaudited |
| UniversalRouter | unknown | optimism | n/a | [`0x0b3ba5...3f12d1`](./contracts/optimism-10/0x0b3ba5b030b95e5d861448d77db7bee3403f12d1/) | ⚠️ Unaudited |
| UnlockedWithdrawalsInitializer | unknown | ethereum | n/a | [`0x81b08a...862439`](./contracts/ethereum-1/0x81b08a0d57ea284b282b12a574139db0ec862439/) | ⚠️ Unaudited |
| Unwrapper | unknown | ethereum | n/a | [`0x13dfeb...cadd85`](./contracts/ethereum-1/0x13dfeb3cc4f05229c449c30a9ae4141d7fcadd85/) | ⚠️ Unaudited |
| Usd0 | unknown | ethereum | n/a | [`0x43ffb6...0c2f01`](./contracts/ethereum-1/0x43ffb63f98ba9b687092f53235490650b30c2f01/) | ⚠️ Unaudited |
| USD0LpOracle | unknown | ethereum | n/a | [`0x2aeb5c...49ae32`](./contracts/ethereum-1/0x2aeb5c8776567c4eeebda1450e343b1bef49ae32/) | ⚠️ Unaudited |
| Usd0PP | unknown | ethereum | n/a | [`0x0202b5...11d62f`](./contracts/ethereum-1/0x0202b5063b40bab1f0548b83bdb6bfbefb11d62f/) | ⚠️ Unaudited |
| USDG | unknown | arbitrum | n/a | [`0x40757a...db2d51`](./contracts/arbitrum-42161/0x40757a2883f82392c49ce86cb0d92d0653db2d51/) | ⚠️ Unaudited |
| UsdPlusToken | unknown | optimism | n/a | [`0x02803f...7ed986`](./contracts/optimism-10/0x02803f6fcb3eda19c854b2defb39cbc3817ed986/) | ⚠️ Unaudited |
| USDR | unknown | optimism | n/a | [`0x0531df...43142e`](./contracts/optimism-10/0x0531dfd07643b549a07f21dd5ba1da1e1c43142e/) | ⚠️ Unaudited |
| USDRMigrationV2 | unknown | optimism | n/a | [`0x39f9f4...b8f8df`](./contracts/optimism-10/0x39f9f458337d801378706748705b0be9adb8f8df/) | ⚠️ Unaudited |
| USTLevSwapper | unknown | ethereum | n/a | [`0x3f3771...11d864`](./contracts/ethereum-1/0x3f37712726c9e509c5479f13e17cb1033411d864/) | ⚠️ Unaudited |
| USTMiddleLayer | unknown | ethereum | n/a | [`0x908fcb...a54536`](./contracts/ethereum-1/0x908fcbf4cc0cb550cdaf668c94bf75321da54536/) | ⚠️ Unaudited |
| USTOracle | unknown | ethereum | n/a | [`0x4f5126...3268a7`](./contracts/ethereum-1/0x4f51264b07db8b2910e892eeef22460de23268a7/) | ⚠️ Unaudited |
| USTStrategy | unknown | ethereum | n/a | [`0xe6191a...2f39e2`](./contracts/ethereum-1/0xe6191aa754f9a881e0a73f2028edf324242f39e2/) | ⚠️ Unaudited |
| USTStrategyV2 | unknown | ethereum | n/a | [`0xe0c29b...63d146`](./contracts/ethereum-1/0xe0c29b1a278d4b5eae5016a7bc9bfee6c663d146/) | ⚠️ Unaudited |
| USTSwapper | unknown | ethereum | n/a | [`0x1067c6...13342c`](./contracts/ethereum-1/0x1067c6dc34c86b5f23f4a9bdbe7a639ad613342c/) | ⚠️ Unaudited |
| UZD | unknown | ethereum | n/a | [`0x015b94...63541f`](./contracts/ethereum-1/0x015b94ab2b0a14a96030573fbcd0f3d3d763541f/) | ⚠️ Unaudited |
| V00_Marketplace | unknown | ethereum | n/a | [`0x79be52...802984`](./contracts/ethereum-1/0x79be524aeca16d117a0a9f0dfa6aec5e31802984/) | ⚠️ Unaudited |
| V00_UserRegistry | unknown | ethereum | n/a | [`0x265a48...d61edd`](./contracts/ethereum-1/0x265a48bc9bf5d274e8f88190c26d713524d61edd/) | ⚠️ Unaudited |
| Validator | unknown | ethereum | n/a | [`0x7db7d8...d6b2f6`](./contracts/ethereum-1/0x7db7d8be39b6bb07115445b5ebaa7b8345d6b2f6/) | ⚠️ Unaudited |
| ValidatorFactory | unknown | ethereum | n/a | [`0x0a6c93...5b78eb`](./contracts/ethereum-1/0x0a6c933495a7bb768d95f4667b074dd5b95b78eb/) | ⚠️ Unaudited |
| ValueRouter | unknown | optimism | n/a | [`0x650af5...504b76`](./contracts/optimism-10/0x650af55d5877f289837c30b94af91538a7504b76/) | ⚠️ Unaudited |
| ValueRouterImpl | unknown | ethereum | n/a | [`0x522cb8...a14aa0`](./contracts/ethereum-1/0x522cb8f25896691bdc5f69aabfccd50647a14aa0/) | ⚠️ Unaudited |
| VaultAdmin | unknown | ethereum | n/a | [`0x1ef055...a6452b`](./contracts/ethereum-1/0x1ef0553feb80e6f133cae3092e38f0b23da6452b/) | ⚠️ Unaudited |
| VaultAPSStrat | unknown | ethereum | n/a | [`0xdc0b52...f6d7dc`](./contracts/ethereum-1/0xdc0b52c04cdc0099aefcca8b0675a00cf8f6d7dc/) | ⚠️ Unaudited |
| VaultCore | unknown | ethereum | n/a | [`0x0660bf...b1369d`](./contracts/ethereum-1/0x0660bf15a89d8e90cba1b3f0ccf493c415b1369d/) | ⚠️ Unaudited |
| VaultErrorController | unknown | arbitrum | n/a | [`0xe56d2e...afd93a`](./contracts/arbitrum-42161/0xe56d2e4c685e67c866c292b583be732068afd93a/) | ⚠️ Unaudited |
| VaultFed | unknown | ethereum | n/a | [`0xe082eb...2734fc`](./contracts/ethereum-1/0xe082eb109fad53ea8db9827ce6b8ef74882734fc/) | ⚠️ Unaudited |
| VaultManager | unknown | optimism | n/a | [`0x97b689...1f227f`](./contracts/optimism-10/0x97b6897aad7aba3861c04c0e6388fc02af1f227f/) | ⚠️ Unaudited |
| VaultManagerLiquidationBoost | unknown | optimism | n/a | [`0x16cd38...43d5aa`](./contracts/optimism-10/0x16cd38b1b54e7abf307cb2697e2d9321e843d5aa/) | ⚠️ Unaudited |
| VaultNativeStrat | unknown | ethereum | n/a | [`0x5255e9...c4d3f9`](./contracts/ethereum-1/0x5255e95ce870f6c92bdc533221cfa011dec4d3f9/) | ⚠️ Unaudited |
| VaultPriceFeed | unknown | arbitrum | n/a | [`0x1cf457...2b5de3`](./contracts/arbitrum-42161/0x1cf4579904eb2acda0e4081e39ec10d0c32b5de3/) | ⚠️ Unaudited |
| VaultReader | unknown | arbitrum | n/a | [`0x060cbb...463cc0`](./contracts/arbitrum-42161/0x060cbba8730eff54ee24e08d6a4973f376463cc0/) | ⚠️ Unaudited |
| VaultsCore | unknown | polygon | n/a | [`0x03175c...ac6ab0`](./contracts/polygon-137/0x03175c19cb1d30fa6060331a9ec181e04cac6ab0/) | ⚠️ Unaudited |
| VaultsCoreState | unknown | polygon | n/a | [`0x2d49e6...dcb417`](./contracts/polygon-137/0x2d49e60555d0372be23e2b24aeb3e5ea55dcb417/) | ⚠️ Unaudited |
| VaultsDataProvider | unknown | polygon | n/a | [`0x85304e...902882`](./contracts/polygon-137/0x85304efe0f7b1a67c49086b7dac53e75ca902882/) | ⚠️ Unaudited |
| VaultsRegistryHelper2 | unknown | ethereum | n/a | [`0x57ca31...cb70d8`](./contracts/ethereum-1/0x57ca31224bec6901b353251840ae4d10c3cb70d8/) | ⚠️ Unaudited |
| VaultStrat | unknown | ethereum | n/a | [`0x2d09fa...83c30b`](./contracts/ethereum-1/0x2d09fac78bbbcee4af6dfae5d3dd425b2883c30b/) | ⚠️ Unaudited |
| VaultValueChecker | unknown | ethereum | n/a | [`0x25041c...ad8739`](./contracts/ethereum-1/0x25041ccb8352b9ba65883a94685aef07a5ad8739/) | ⚠️ Unaudited |
| ve_query | unknown | ethereum | n/a | [`0x443299...35e9ca`](./contracts/ethereum-1/0x443299d9b347ae68c42d4909efa1892caa35e9ca/) | ⚠️ Unaudited |
| VeArtProxy | unknown | optimism | n/a | [`0x4a9ea0...1782dd`](./contracts/optimism-10/0x4a9ea0dd5649ec4b6745c60d1769e2184c1782dd/) | ⚠️ Unaudited |
| VECStaking | unknown | ethereum | n/a | [`0xfdc28c...9be9b1`](./contracts/ethereum-1/0xfdc28cd1bfebf3033870c0344b4e0bee639be9b1/) | ⚠️ Unaudited |
| Vector | unknown | ethereum | n/a | [`0x1bb9b6...5d8447`](./contracts/ethereum-1/0x1bb9b64927e0c5e207c9db4093b3738eef5d8447/) | ⚠️ Unaudited |
| VectorBonding | unknown | ethereum | n/a | [`0x3abcf9...13c969`](./contracts/ethereum-1/0x3abcf9dc9e221ac78b31cd1b9d9f5721a513c969/) | ⚠️ Unaudited |
| VectorETH | unknown | ethereum | n/a | [`0x38d64c...6fb4a0`](./contracts/ethereum-1/0x38d64ce1bdf1a9f24e0ec469c9cade61236fb4a0/) | ⚠️ Unaudited |
| VectorETHManagement | unknown | ethereum | n/a | [`0x2d476b...476bcf`](./contracts/ethereum-1/0x2d476be2269dedaaa99d9c50686a8e1000476bcf/) | ⚠️ Unaudited |
| VectorTreasury | unknown | ethereum | n/a | [`0x2dd568...371064`](./contracts/ethereum-1/0x2dd568028682ff2961cc341a4849f1b32f371064/) | ⚠️ Unaudited |
| VectorVest | unknown | ethereum | n/a | [`0xaa9d91...f88a8c`](./contracts/ethereum-1/0xaa9d911947122cc49cc8e0226e808c1a87f88a8c/) | ⚠️ Unaudited |
| VECVest | unknown | ethereum | n/a | [`0x7abcfd...75f1f8`](./contracts/ethereum-1/0x7abcfda9adb27d2291a189d7153af91d5975f1f8/) | ⚠️ Unaudited |
| veKwentaRedeemer | unknown | optimism | n/a | [`0xc6a9c9...62181a`](./contracts/optimism-10/0xc6a9c939eeb37a49161655f6cc153465de62181a/) | ⚠️ Unaudited |
| Velo | unknown | optimism | n/a | [`0x3c8b65...a11a05`](./contracts/optimism-10/0x3c8b650257cfb5f272f799f5e2b4e65093a11a05/) | ⚠️ Unaudited |
| VelodromeLibrary | unknown | optimism | n/a | [`0xe3c5e2...93fa51`](./contracts/optimism-10/0xe3c5e29ea198e617ebc707718707beff9393fa51/) | ⚠️ Unaudited |
| VeloGovernor | unknown | optimism | n/a | [`0x1f82e1...cbe989`](./contracts/optimism-10/0x1f82e10d58aef03dea2e478029fb0387a1cbe989/) | ⚠️ Unaudited |
| VeloOracle | unknown | optimism | n/a | [`0x07f544...36f5ce`](./contracts/optimism-10/0x07f544813e9fb63d57a92f28fbd3ff0f7136f5ce/) | ⚠️ Unaudited |
| VendingMachine | unknown | ethereum | n/a | [`0x1cca7e...47680e`](./contracts/ethereum-1/0x1cca7e410ee41739792ea0a24e00349dd247680e/) | ⚠️ Unaudited |
| VendingMachineV2 | unknown | ethereum | n/a | [`0xce1f98...026d4b`](./contracts/ethereum-1/0xce1f983c29f7a6c0c0dfa78c4d8fe7bdfe026d4b/) | ⚠️ Unaudited |
| VendingMachineV3 | unknown | ethereum | n/a | [`0x7570a2...6437e6`](./contracts/ethereum-1/0x7570a2350183b4bdf7ca74fad3fc19048e6437e6/) | ⚠️ Unaudited |
| VEPowerOracleReceiver | unknown | polygon | n/a | [`0x417a5b...968cca`](./contracts/polygon-137/0x417a5b82068e8b83c67680b649d7a84fbe968cca/) | ⚠️ Unaudited |
| VEPowerOracleSender | unknown | ethereum | n/a | [`0x559d12...46c5f1`](./contracts/ethereum-1/0x559d12a014497f558a2020a89cda13983846c5f1/) | ⚠️ Unaudited |
| Vester | unknown | arbitrum | n/a | [`0x199070...363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/) | ⚠️ Unaudited |
| VesterCap | unknown | arbitrum | n/a | [`0x57866d...789b60`](./contracts/arbitrum-42161/0x57866d65acbb7ba3269807bf7af4019366789b60/) | ⚠️ Unaudited |
| VesterCliff | unknown | optimism | n/a | [`0xb4bf17...517971`](./contracts/optimism-10/0xb4bf17210844418f9f2d3b90036e11aa40517971/) | ⚠️ Unaudited |
| VesterSale | unknown | optimism | n/a | [`0x8e1036...37ad10`](./contracts/optimism-10/0x8e10362334a4549640481d330a0020238b37ad10/) | ⚠️ Unaudited |
| VestingVault | unknown | ethereum | n/a | [`0x4f5981...a7f03c`](./contracts/ethereum-1/0x4f59818105abe05ae793a8caedb39fc2bea7f03c/) | ⚠️ Unaudited |
| vETHOFTAdapter | unknown | ethereum | n/a | [`0xa508e8...4107b0`](./contracts/ethereum-1/0xa508e87a4c362bf53c3ebab11ea78f57094107b0/) | ⚠️ Unaudited |
| VeYfiPositionHelper | unknown | ethereum | n/a | [`0x5a70cd...6ecbe8`](./contracts/ethereum-1/0x5a70cd937ba3daec8188e937e243ffa43d6ecbe8/) | ⚠️ Unaudited |
| View | unknown | ethereum | n/a | [`0x7e2abf...15d8b7`](./contracts/ethereum-1/0x7e2abf55ef51ca1029d4c5814a35339a3415d8b7/) | ⚠️ Unaudited |
| vKwentaRedeemer | unknown | optimism | n/a | [`0x6895c1...1e612a`](./contracts/optimism-10/0x6895c1c37e466dcd5c9c17b3c30dbe0b261e612a/) | ⚠️ Unaudited |
| VotemarketGauge | unknown | ethereum | n/a | [`0x1c572b...49d920`](./contracts/ethereum-1/0x1c572bf5306c086b43f6f91f032296a25b49d920/) | ⚠️ Unaudited |
| VotePreviewer | unknown | optimism | n/a | [`0x543e3e...d10ae9`](./contracts/optimism-10/0x543e3e0ef9a0ff2d24b5e412763f637a2ad10ae9/) | ⚠️ Unaudited |
| Voter | unknown | optimism | n/a | [`0x09236c...b8cf7e`](./contracts/optimism-10/0x09236cff45047dbee6b921e00704bed6d6b8cf7e/) | ⚠️ Unaudited |
| VotingEscrow | unknown | ethereum | n/a | [`0x0e42ac...fbd58e`](./contracts/ethereum-1/0x0e42acbd23faee03249daff896b78d7e79fbd58e/) | ⚠️ Unaudited |
| VotingMiner | unknown | polygon | n/a | [`0x79e902...e7c6be`](./contracts/polygon-137/0x79e902ce449772decaf339aacc133a40cce7c6be/) | ⚠️ Unaudited |
| VotingResultBroadcaster | unknown | ethereum | n/a | [`0xd8daa6...1c4744`](./contracts/ethereum-1/0xd8daa686de90bf52225628e238b7b392fa1c4744/) | ⚠️ Unaudited |
| VotingRewardsFactory | unknown | optimism | n/a | [`0x756e7c...ada8ec`](./contracts/optimism-10/0x756e7c245c69d351fffbfb88ba234aa395ada8ec/) | ⚠️ Unaudited |
| VotiumGauge | unknown | ethereum | n/a | [`0x0ce6df...027be1`](./contracts/ethereum-1/0x0ce6df2119f649ff6f547bfaf8f4bb7c3b027be1/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x00702b...7f6bdb`](./contracts/ethereum-1/0x00702bbdead24c40647f235f15971db0867f6bdb/) | ⚠️ Unaudited |
| WadRayMath | unknown | optimism | n/a | [`0xd14a17...df4ee1`](./contracts/optimism-10/0xd14a17332c13df64be70ccc4ebbf0b0c29df4ee1/) | ⚠️ Unaudited |
| WalletCoordinator | unknown | ethereum | n/a | [`0x10fb59...43ffe5`](./contracts/ethereum-1/0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5/) | ⚠️ Unaudited |
| WalletProposalValidator | unknown | ethereum | n/a | [`0x30019d...fbdec2`](./contracts/ethereum-1/0x30019d85a86abd3cda1167f4c052690c32fbdec2/) | ⚠️ Unaudited |
| WalletRegistry | unknown | ethereum | n/a | [`0x08d7e8...65c832`](./contracts/ethereum-1/0x08d7e8ce124921caafd7670502379ced0065c832/) | ⚠️ Unaudited |
| WalletRegistryGovernance | unknown | ethereum | n/a | [`0x6aed6c...d47fe8`](./contracts/ethereum-1/0x6aed6cc30d1b2770771052555d257da86ed47fe8/) | ⚠️ Unaudited |
| Wallets | unknown | ethereum | n/a | [`0xc67913...ba47bf`](./contracts/ethereum-1/0xc67913137429985416dbce28d9fa9ec960ba47bf/) | ⚠️ Unaudited |
| WBTC-crvUSDleveragezap | unknown | ethereum | n/a | [`0xa2518b...2de4d7`](./contracts/ethereum-1/0xa2518b71ee64e910741f5cf480b19e8e402de4d7/) | ⚠️ Unaudited |
| WbtcLevSwapper | unknown | ethereum | n/a | [`0x6a5b5e...5c0da8`](./contracts/ethereum-1/0x6a5b5e025f2febf11646050e28240279215c0da8/) | ⚠️ Unaudited |
| WbtcOracle | unknown | ethereum | n/a | [`0x292a6f...5b3f0a`](./contracts/ethereum-1/0x292a6f6156c9e197aa2d059a3194ea8d235b3f0a/) | ⚠️ Unaudited |
| WbtcOracleMig | unknown | ethereum | n/a | [`0xdd1052...20b6b0`](./contracts/ethereum-1/0xdd1052137472cca4c2f55b93cc9c0f06ec20b6b0/) | ⚠️ Unaudited |
| WbtcSwapper | unknown | ethereum | n/a | [`0x6c6a54...19febf`](./contracts/ethereum-1/0x6c6a54a124e7b9859014425b8c0142ee0b19febf/) | ⚠️ Unaudited |
| WebauthnOwnerPlugin | unknown | optimism | n/a | [`0x8f498c...484ca0`](./contracts/optimism-10/0x8f498c8240e621f8050249d1c2f5f2aaee484ca0/) | ⚠️ Unaudited |
| WeightedPool | unknown | ethereum | n/a | [`0x380aab...4d0fad`](./contracts/ethereum-1/0x380aabe019ed2a9c2d632b51eddd30fd804d0fad/) | ⚠️ Unaudited |
| WethLevSwapper | unknown | ethereum | n/a | [`0x205d52...d7e0f5`](./contracts/ethereum-1/0x205d52e9ea8e42659ac5c7f83863b18d27d7e0f5/) | ⚠️ Unaudited |
| WethOracle | unknown | ethereum | n/a | [`0x02dcc3...56557a`](./contracts/ethereum-1/0x02dcc3aaa2f0c97fe0abfaf07df3e0c7ae56557a/) | ⚠️ Unaudited |
| WethSwapper | unknown | ethereum | n/a | [`0xfb81be...245437`](./contracts/ethereum-1/0xfb81be4bde317d32ec6934db87e05cfdc5245437/) | ⚠️ Unaudited |
| WhitelistAuction | unknown | ethereum | n/a | [`0x4dfcad...65e55e`](./contracts/ethereum-1/0x4dfcad285ef39fed84e77edf1b7dbc442565e55e/) | ⚠️ Unaudited |
| WhitelistedCauldronV3 | unknown | ethereum | n/a | [`0xe0d200...183f2b`](./contracts/ethereum-1/0xe0d2007f6f2a71b90143d6667257d95643183f2b/) | ⚠️ Unaudited |
| WhitelistedCauldronV4 | unknown | ethereum | n/a | [`0x369d81...d4da07`](./contracts/ethereum-1/0x369d81cf263abc7ee567d8836a39234141d4da07/) | ⚠️ Unaudited |
| WhitelistedNFTSale | unknown | ethereum | n/a | [`0x4f59cc...b72a8c`](./contracts/ethereum-1/0x4f59cc0e919be7ebbf1c33e6eec8506df4b72a8c/) | ⚠️ Unaudited |
| Whitelister | unknown | ethereum | n/a | [`0x0cc311...79d90a`](./contracts/ethereum-1/0x0cc3114cd2e4adc3ed5691fa28b8cf106579d90a/) | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | ethereum | n/a | [`0x0f0c30...8d1fa9`](./contracts/ethereum-1/0x0f0c30f294dc0ca8c315683fc036179e1d8d1fa9/) | ⚠️ Unaudited |
| WidgetSwap | unknown | ethereum | n/a | [`0x02489a...1009df`](./contracts/ethereum-1/0x02489ac60f7f581445b7d2dd59bb0a415a1009df/) | ⚠️ Unaudited |
| Withdrawer | unknown | ethereum | n/a | [`0x069ee6...fc1cfb`](./contracts/ethereum-1/0x069ee67ccd267c049aa78f787b327315e6fc1cfb/) | ⚠️ Unaudited |
| WOETH | unknown | ethereum | n/a | [`0x388782...4eb830`](./contracts/ethereum-1/0x388782b21275f75255f3ee08e23bd3991d4eb830/) | ⚠️ Unaudited |
| WrappedExternalBribeFactory | unknown | optimism | n/a | [`0x795551...3086a8`](./contracts/optimism-10/0x7955519e14fdf498e28831f4cc06af4b8e3086a8/) | ⚠️ Unaudited |
| WrappedOusd | unknown | ethereum | n/a | [`0xdeabeb...16e632`](./contracts/ethereum-1/0xdeabeb7dfda1deff8a90fde8a16d7a42d316e632/) | ⚠️ Unaudited |
| WrappedUsdPlusRateProvider | unknown | optimism | n/a | [`0xe56145...92bc1a`](./contracts/optimism-10/0xe561451322a5efc51e6f8ffa558c7482c892bc1a/) | ⚠️ Unaudited |
| WrappedUsdPlusToken | unknown | optimism | n/a | [`0x0b8f31...6915bb`](./contracts/optimism-10/0x0b8f31480249cc717081928b8af733f45f6915bb/) | ⚠️ Unaudited |
| WrappedYFI | unknown | ethereum | n/a | [`0x017e71...231981`](./contracts/ethereum-1/0x017e71e96f2ae777c679740d2d8dc15ed4231981/) | ⚠️ Unaudited |
| WrapperDai | unknown | ethereum | n/a | [`0x2cd04b...129fe1`](./contracts/ethereum-1/0x2cd04bb68786834f199ce12074da7b8832129fe1/) | ⚠️ Unaudited |
| WrapperLock | unknown | ethereum | n/a | [`0x058e2b...f09ed7`](./contracts/ethereum-1/0x058e2bec45b24cf4a5d9d8c780731ea4f5f09ed7/) | ⚠️ Unaudited |
| WrapperLockDai | unknown | ethereum | n/a | [`0x54419b...cef543`](./contracts/ethereum-1/0x54419bc42555b4bed712ade1e7942540e0cef543/) | ⚠️ Unaudited |
| WrapperLockEth | unknown | ethereum | n/a | [`0x42b9aa...a59cbf`](./contracts/ethereum-1/0x42b9aa7a244b38ef56dff4d2df7e7a7013a59cbf/) | ⚠️ Unaudited |
| wstETH-crvUSDleveragezap | unknown | ethereum | n/a | [`0x293436...fc74fd`](./contracts/ethereum-1/0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd/) | ⚠️ Unaudited |
| WToken | unknown | ethereum | n/a | [`0x344518...a64411`](./contracts/ethereum-1/0x344518934533ec82b49ea533b196dce5cfa64411/) | ⚠️ Unaudited |
| Xai | unknown | ethereum | n/a | [`0xd7c9f0...c3beac`](./contracts/ethereum-1/0xd7c9f0e536dc865ae858b0c0453fe76d13c3beac/) | ⚠️ Unaudited |
| XINV | unknown | ethereum | n/a | [`0x1637e4...dcd61b`](./contracts/ethereum-1/0x1637e4e9941d55703a7a5e7807d6ada3f7dcd61b/) | ⚠️ Unaudited |
| XinvManager | unknown | ethereum | n/a | [`0x07eb8f...74909d`](./contracts/ethereum-1/0x07eb8fd853c847d6e25f29e566d605cff474909d/) | ⚠️ Unaudited |
| XinvVesterFactory | unknown | ethereum | n/a | [`0xe1c670...053a19`](./contracts/ethereum-1/0xe1c67007d1074bcacc577dd946661f0cb9053a19/) | ⚠️ Unaudited |
| xVault | unknown | ethereum | n/a | [`0x0205ae...e419c5`](./contracts/ethereum-1/0x0205ae93e18aa23d31e3df53899547b986e419c5/) | ⚠️ Unaudited |
| XXXXToken | unknown | ethereum | n/a | [`0xf8f560...c1dc1a`](./contracts/ethereum-1/0xf8f56001db32932f34f18101e6d6f9b4d1c1dc1a/) | ⚠️ Unaudited |
| XYZBroadcaster | unknown | ethereum | n/a | [`0x578669...ff8d89`](./contracts/ethereum-1/0x5786696bb5be7fcdb9997e7f89355d9e97ff8d89/) | ⚠️ Unaudited |
| yAffiliateFactoryV2 | unknown | ethereum | n/a | [`0x44ff2a...53b367`](./contracts/ethereum-1/0x44ff2af361e4b6a2892523d513df5245fc53b367/) | ⚠️ Unaudited |
| yBribe | unknown | ethereum | n/a | [`0x03dfdb...7d3f6d`](./contracts/ethereum-1/0x03dfdbcd4056e2f92251c7b07423e1a33a7d3f6d/) | ⚠️ Unaudited |
| yBUSD | unknown | ethereum | n/a | [`0x04bc0a...bca9ae`](./contracts/ethereum-1/0x04bc0ab673d88ae9dbc9da2380cb6b79c4bca9ae/) | ⚠️ Unaudited |
| yCollateralVaultProxy | unknown | ethereum | n/a | [`0x24dd02...e82a5d`](./contracts/ethereum-1/0x24dd028bd027511482e701d08bae002cd6e82a5d/) | ⚠️ Unaudited |
| yCRV | unknown | ethereum | n/a | [`0x170411...2a221c`](./contracts/ethereum-1/0x170411a2d872945ee8c59e4ef5c3402ebe2a221c/) | ⚠️ Unaudited |
| ycUSDC | unknown | ethereum | n/a | [`0x0597ea...bc0f2c`](./contracts/ethereum-1/0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c/) | ⚠️ Unaudited |
| ycUSDT | unknown | ethereum | n/a | [`0x631d66...3931a4`](./contracts/ethereum-1/0x631d66f79191c86d7b7a7c0e2afae3ae943931a4/) | ⚠️ Unaudited |
| yDAI | unknown | ethereum | n/a | [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/) | ⚠️ Unaudited |
| yDAIv2Proxy | unknown | ethereum | n/a | [`0x56ab71...a6bd33`](./contracts/ethereum-1/0x56ab71990783442f68fb25e0b466196c7ca6bd33/) | ⚠️ Unaudited |
| yDelegate | unknown | ethereum | n/a | [`0x610258...a05f83`](./contracts/ethereum-1/0x61025859c349dfbe6ef0dfca202ef3e84ca05f83/) | ⚠️ Unaudited |
| yDelegatedVault | unknown | ethereum | n/a | [`0x2088ba...b73d99`](./contracts/ethereum-1/0x2088ba482f2097eb47896a2ec5f3925637b73d99/) | ⚠️ Unaudited |
| YearnChainlinkOracleV1 | unknown | ethereum | n/a | [`0x694808...4b99ff`](./contracts/ethereum-1/0x694808221d4f31d5849f2aba08584e2c8f4b99ff/) | ⚠️ Unaudited |
| YearnChainlinkOracleV2 | unknown | ethereum | n/a | [`0x6cc0cd...8ae668`](./contracts/ethereum-1/0x6cc0cd7d25e291029b55c767b9a2d1d9a18ae668/) | ⚠️ Unaudited |
| YearnLiquidationKeep3r | unknown | ethereum | n/a | [`0x41303e...343eeb`](./contracts/ethereum-1/0x41303e87db5be5b1c7a341440d04ec6a11343eeb/) | ⚠️ Unaudited |
| YFI | unknown | ethereum | n/a | [`0x0bc529...6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | ⚠️ Unaudited |
| YieldModule | unknown | ethereum | n/a | [`0x2792da...aa9440`](./contracts/ethereum-1/0x2792dad98fd6ba3743ca3484dbc2ce436faa9440/) | ⚠️ Unaudited |
| yInsure | unknown | ethereum | n/a | [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | ⚠️ Unaudited |
| yInsureView | unknown | ethereum | n/a | [`0x6d2738...98340b`](./contracts/ethereum-1/0x6d2738fa41e83c5b5633f466f9aa11dae098340b/) | ⚠️ Unaudited |
| ySUSD | unknown | ethereum | n/a | [`0x36324b...d41380`](./contracts/ethereum-1/0x36324b8168f960a12a8fd01406c9c78143d41380/) | ⚠️ Unaudited |
| yTokenProxy | unknown | ethereum | n/a | [`0x1d5ad9...54203a`](./contracts/ethereum-1/0x1d5ad987b743eb624662fe5c62b8f6015554203a/) | ⚠️ Unaudited |
| yTokenRebalance | unknown | ethereum | n/a | [`0x19b642...e9cc09`](./contracts/ethereum-1/0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09/) | ⚠️ Unaudited |
| YTokenStrat | unknown | ethereum | n/a | [`0x57faa0...b32052`](./contracts/ethereum-1/0x57faa0dec960ed774674a45d61ecfe738eb32052/) | ⚠️ Unaudited |
| yTUSD | unknown | ethereum | n/a | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | ⚠️ Unaudited |
| yUSD | unknown | ethereum | n/a | [`0x12c068...af3aff`](./contracts/ethereum-1/0x12c0681dca0deb095f2f192c3ab64bf320af3aff/) | ⚠️ Unaudited |
| yUSDC | unknown | ethereum | n/a | [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/) | ⚠️ Unaudited |
| yUSDT | unknown | ethereum | n/a | [`0x3118ee...b9aade`](./contracts/ethereum-1/0x3118eec34240620ffd044dfa3aaa0a0f78b9aade/) | ⚠️ Unaudited |
| yVault | unknown | ethereum | n/a | [`0x0fcda6...367889`](./contracts/ethereum-1/0x0fcda6f268d0c09cdfffe6bceac5233ac2367889/) | ⚠️ Unaudited |
| yVaultCheck | unknown | ethereum | n/a | [`0x1bbe0f...a6d1ad`](./contracts/ethereum-1/0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad/) | ⚠️ Unaudited |
| yVaultFactory | unknown | ethereum | n/a | [`0x044dea...f677b5`](./contracts/ethereum-1/0x044deaa1e5a8593adcead599e8d66fb5d3f677b5/) | ⚠️ Unaudited |
| YVCrvStETHLevSwapper2 | unknown | ethereum | n/a | [`0x39abc0...a7c21d`](./contracts/ethereum-1/0x39abc0483046d7ad4957c8ada6e0787824a7c21d/) | ⚠️ Unaudited |
| YVCrvStETHOracle2 | unknown | ethereum | n/a | [`0xeae436...dd84eb`](./contracts/ethereum-1/0xeae4365f8714b8fdc66ed0f2a3d90338c9dd84eb/) | ⚠️ Unaudited |
| YVCrvStETHSwapper2 | unknown | ethereum | n/a | [`0xa6e97d...7202e7`](./contracts/ethereum-1/0xa6e97d76d21ae347b13c343508826496b07202e7/) | ⚠️ Unaudited |
| yWBTC | unknown | ethereum | n/a | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | ⚠️ Unaudited |
| yWrappedVault | unknown | ethereum | n/a | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | ⚠️ Unaudited |
| zBCH | unknown | ethereum | n/a | [`0x0e68ee...8f1a73`](./contracts/ethereum-1/0x0e68ee104c768078cb3624396aaf9285c58f1a73/) | ⚠️ Unaudited |
| zBTC | unknown | ethereum | n/a | [`0x88c64a...78bb7d`](./contracts/ethereum-1/0x88c64a7d2ecc882d558dd16abc1537515a78bb7d/) | ⚠️ Unaudited |
| ZEC_DAI_Reserve | unknown | ethereum | n/a | [`0x7b3b73...407bf9`](./contracts/ethereum-1/0x7b3b7383bc88b645bdefd7624d9c6fb981407bf9/) | ⚠️ Unaudited |
| ZECGateway | unknown | ethereum | n/a | [`0x37a486...62ef93`](./contracts/ethereum-1/0x37a4860728e292e5852b215c46dbe7a18862ef93/) | ⚠️ Unaudited |
| ZECGateway | unknown | ethereum | n/a | [`0x52c883...ada49d`](./contracts/ethereum-1/0x52c883b626637ae7c2b93909ad40c24676ada49d/) | ⚠️ Unaudited |
| ZECShifter | unknown | ethereum | n/a | [`0x2b59ef...461d5b`](./contracts/ethereum-1/0x2b59ef3eb28c7388c7ec69d43a9b8e585c461d5b/) | ⚠️ Unaudited |
| zETH | unknown | ethereum | n/a | [`0xe47f1c...a87b2b`](./contracts/ethereum-1/0xe47f1cd2a37c6fe69e3501ae45eca263c5a87b2b/) | ⚠️ Unaudited |
| Zunami | unknown | ethereum | n/a | [`0x2ffcc6...4d14ce`](./contracts/ethereum-1/0x2ffcc661011bec72e1a9524e12060983e74d14ce/) | ⚠️ Unaudited |
| ZunamiAPS | unknown | ethereum | n/a | [`0xcab491...2698bd`](./contracts/ethereum-1/0xcab49182aadcd843b037bbf885ad56a3162698bd/) | ⚠️ Unaudited |
| ZunamiDepositEthZap2 | unknown | ethereum | n/a | [`0xdd38c5...3c0ed6`](./contracts/ethereum-1/0xdd38c58c8f8202c9581ff16296ab778e223c0ed6/) | ⚠️ Unaudited |
| ZunamiDepositEthZap3 | unknown | ethereum | n/a | [`0x2160ad...696382`](./contracts/ethereum-1/0x2160ad71208f966948389efc76a4cc4930696382/) | ⚠️ Unaudited |
| ZunamiDepositZap | unknown | ethereum | n/a | [`0x1162c7...f81574`](./contracts/ethereum-1/0x1162c741bda2d0284e88d7c13c1b0bfeb4f81574/) | ⚠️ Unaudited |
| ZunamiDepositZap2 | unknown | ethereum | n/a | [`0x9b6042...1fcce1`](./contracts/ethereum-1/0x9b6042c50a0af6cc657eb8512b47a919351fcce1/) | ⚠️ Unaudited |
| ZunamiDepositZap3 | unknown | ethereum | n/a | [`0xa35fc7...77fef4`](./contracts/ethereum-1/0xa35fc7d58c4e79f58e5cab26937fb6ea0277fef4/) | ⚠️ Unaudited |
| ZunamiForwarder | unknown | ethereum | n/a | [`0x17e392...50a0af`](./contracts/ethereum-1/0x17e39276ae189c286801b91e99bae6885750a0af/) | ⚠️ Unaudited |
| ZunamiGovernor | unknown | ethereum | n/a | [`0x0357f8...a03f98`](./contracts/ethereum-1/0x0357f8afcf8bd2b119a4451bf605bef8cca03f98/) | ⚠️ Unaudited |
| ZunamiLaunchZap | unknown | ethereum | n/a | [`0xd18ac6...5b6699`](./contracts/ethereum-1/0xd18ac6f7b78b9576028940c305c0e767455b6699/) | ⚠️ Unaudited |
| ZunamiNative | unknown | ethereum | n/a | [`0x9de839...c6eea7`](./contracts/ethereum-1/0x9de83985047ab3582668320a784f6b9736c6eea7/) | ⚠️ Unaudited |
| ZunamiNativeAPS | unknown | ethereum | n/a | [`0x0b49d1...b29c82`](./contracts/ethereum-1/0x0b49d1dd3f045c986f7816c2ad56f01d8fb29c82/) | ⚠️ Unaudited |
| ZunamiPoolApsZunBTC | unknown | ethereum | n/a | [`0x3c6e1f...828d82`](./contracts/ethereum-1/0x3c6e1ffffc293e93bb383b375ba348b85e828d82/) | ⚠️ Unaudited |
| ZunamiPoolApsZunETH | unknown | ethereum | n/a | [`0x5ab3aa...bd28e2`](./contracts/ethereum-1/0x5ab3aa11a40eb34f1d2733f08596532871bd28e2/) | ⚠️ Unaudited |
| ZunamiPoolApsZunUSD | unknown | ethereum | n/a | [`0x28e487...082889`](./contracts/ethereum-1/0x28e487bbf6b64867c29e61dccbcd17ab64082889/) | ⚠️ Unaudited |
| ZunamiPoolControllerApsZunBTC | unknown | ethereum | n/a | [`0x179dc3...e99498`](./contracts/ethereum-1/0x179dc3d6b260277643998af7de1a9354fde99498/) | ⚠️ Unaudited |
| ZunamiPoolControllerApsZunETH | unknown | ethereum | n/a | [`0x0beb2b...16de60`](./contracts/ethereum-1/0x0beb2b070d73a678a27ba044fec11ae9d116de60/) | ⚠️ Unaudited |
| ZunamiPoolControllerApsZunUSD | unknown | ethereum | n/a | [`0xd9f559...fccfb5`](./contracts/ethereum-1/0xd9f559280c9d308549e84946c0d668a817fccfb5/) | ⚠️ Unaudited |
| ZunamiPoolControllerZunBTC | unknown | ethereum | n/a | [`0x8d6c5c...11eeb4`](./contracts/ethereum-1/0x8d6c5c61e815a53b1d24ac94deec62f31911eeb4/) | ⚠️ Unaudited |
| ZunamiPoolControllerZunETH | unknown | ethereum | n/a | [`0x4bd57f...6f9f32`](./contracts/ethereum-1/0x4bd57f97e35e7c3302dc3a8d4d803826856f9f32/) | ⚠️ Unaudited |
| ZunamiPoolControllerZunUSD | unknown | ethereum | n/a | [`0x2f858e...dc6f4e`](./contracts/ethereum-1/0x2f858e4d6a96c81e37a130314d6cecb64fdc6f4e/) | ⚠️ Unaudited |
| ZunamiPoolZunBTC | unknown | ethereum | n/a | [`0x0fa308...5fc6db`](./contracts/ethereum-1/0x0fa308ae0dde633b6ede22ba719e7e0bc45fc6db/) | ⚠️ Unaudited |
| ZunamiPoolZunETH | unknown | ethereum | n/a | [`0xc2e660...2f2222`](./contracts/ethereum-1/0xc2e660c62f72c2ad35ace6db78a616215e2f2222/) | ⚠️ Unaudited |
| ZunamiPoolZunUSD | unknown | ethereum | n/a | [`0x1ecc4a...d30b0a`](./contracts/ethereum-1/0x1ecc4a2ee46e50327adc4ab41fec750075d30b0a/) | ⚠️ Unaudited |
| ZunamiRedistributor | unknown | ethereum | n/a | [`0xd9cc8b...dec334`](./contracts/ethereum-1/0xd9cc8b337d9730161b4166edee5beff6c5dec334/) | ⚠️ Unaudited |
| ZunamiRedistributorNative | unknown | ethereum | n/a | [`0x60278e...dbeb8a`](./contracts/ethereum-1/0x60278e383f1299198f70c6dea453ac6cecdbeb8a/) | ⚠️ Unaudited |
| ZunamiStableZap | unknown | ethereum | n/a | [`0x20c3a5...eec3a8`](./contracts/ethereum-1/0x20c3a51c480c33d3b4c375990bf7dc821deec3a8/) | ⚠️ Unaudited |
| ZunamiTest | unknown | ethereum | n/a | [`0x932370...d07197`](./contracts/ethereum-1/0x932370b862599798f3d9a88c59d3d23cc5d07197/) | ⚠️ Unaudited |
| ZunamiToken | unknown | ethereum | n/a | [`0x6b5204...2f0f36`](./contracts/ethereum-1/0x6b5204b0be36771253cc38e88012e02b752f0f36/) | ⚠️ Unaudited |
| ZunDistributor | unknown | ethereum | n/a | [`0xeea950...967b3a`](./contracts/ethereum-1/0xeea950a509d822cf65edceed53d161fbaa967b3a/) | ⚠️ Unaudited |
| ZunETHApsVaultStrat | unknown | ethereum | n/a | [`0xcb17c2...9e5654`](./contracts/ethereum-1/0xcb17c25985e5873ad5d1114b0e03947fc49e5654/) | ⚠️ Unaudited |
| ZunEthOracle | unknown | ethereum | n/a | [`0x64298a...64be4b`](./contracts/ethereum-1/0x64298a70c43d865bedb22fd95fc1f81c3f64be4b/) | ⚠️ Unaudited |
| ZunETHVaultStrat | unknown | ethereum | n/a | [`0x5f8fc0...86b000`](./contracts/ethereum-1/0x5f8fc0976ffe5457ccf7651d5ff4cfca2e86b000/) | ⚠️ Unaudited |
| ZUNStakingRewardDistributor | unknown | ethereum | n/a | [`0x36bae8...b9e8ea`](./contracts/ethereum-1/0x36bae88cb53264662db66db6ac6c7830dbb9e8ea/) | ⚠️ Unaudited |
| ZunUSDApsVaultStrat | unknown | ethereum | n/a | [`0xf859c6...ea0276`](./contracts/ethereum-1/0xf859c621d7ff69df1e283385dbde04135eea0276/) | ⚠️ Unaudited |
| ZunUSDVaultStrat | unknown | ethereum | n/a | [`0x7aa84c...8851a0`](./contracts/ethereum-1/0x7aa84c31be1793f2dab8dbe36faa9478af8851a0/) | ⚠️ Unaudited |
| ZunVestingDistributor | unknown | ethereum | n/a | [`0x190b01...73f931`](./contracts/ethereum-1/0x190b01c325ab18050f13db7e524503336473f931/) | ⚠️ Unaudited |
| zZEC | unknown | ethereum | n/a | [`0x09aa07...f65295`](./contracts/ethereum-1/0x09aa07ae98fde91d66775c13107e9f082ff65295/) | ⚠️ Unaudited |

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
| [Hinkal_Zokyo_Feb20th_2024.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/Hinkal/Hinkal_Zokyo_Feb20th_2024.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [index.html](https://certificate.quantstamp.com/full/hinkal-protocol/66b9b783-8b42-4a4e-89ed-3ef2a2df5958/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://www.zksecurity.xyz/reports/hinkal-audit) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://immunefi.com/audit-competition/hinkal-iop/leaderboard) | Immunefi | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Report](https://drive.google.com/file/d/1DomEnIQ0o4Fv7ELFvnVAIP9vgd6Ez__A/view?usp=sharing&utm_source=immunefi) | unknown | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Security audits](https://hinkal-team.gitbook.io/hinkal/technical-description/security-audits.md) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Hexens](https://drive.google.com/file/d/1A0kGmlg04X88-_c4uU0F5WvaMGTDUT3s/view?usp=sharing) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Neodyme](https://drive.google.com/file/d/1SclKWU99HSVgVxfIh7zz4BWuJO46Jd9W/view?usp=sharing) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x21cd9d...1bb592`](./contracts/polygon-137/0x21cd9de229d6c9db9bdf20cfad075dca991bb592/) | AccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a6e0d...afd18d`](./contracts/ethereum-1/0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d/) | AcreMultiAssetVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bbacd...a897da`](./contracts/ethereum-1/0x3bbacda010e7f4347e54f2bf0f42ff30b5a897da/) | ActionAddRemoveLiq | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24ec4b...002744`](./contracts/ethereum-1/0x24ec4b068140dd3c0d63d904a24656c6fd002744/) | ActionAddRemoveLiqV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09f4ac...1c3d07`](./contracts/ethereum-1/0x09f4acb1023fe06e0f7a2f8f1ae9ae2c011c3d07/) | ActionCallback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f9f34...88f23b`](./contracts/ethereum-1/0x3f9f34113254cff59ce94af85982f7d75588f23b/) | ActionInfoStatic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33f707...f0a836`](./contracts/ethereum-1/0x33f7077b62fa30c865813708ebed535a5ef0a836/) | ActionMarketAuxStatic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x519f39...698080`](./contracts/ethereum-1/0x519f3907379491c291cf7b98425f35036a698080/) | ActionMarketCoreStatic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dba36...185369`](./contracts/ethereum-1/0x4dba367d0f05bcd6a405f3d90c4c4fd93e185369/) | ActionMintRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1812a7...437ed6`](./contracts/ethereum-1/0x1812a77aa47f40c84fc46deb0644c1a486437ed6/) | ActionMintRedeemStatic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc49c4...94065c`](./contracts/ethereum-1/0xfc49c4fec5306c73cd21661f9b2fe4b14f94065c/) | ActionMisc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a60b5...46d2a1`](./contracts/ethereum-1/0x0a60b5d39b27e18f63aa937ad09acc2b3d46d2a1/) | ActionStorageStatic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c0df4...51bf50`](./contracts/ethereum-1/0x6c0df4896b4b57dcc6d121aa4fd8569b4451bf50/) | ActionSwapPT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x209829...9747fd`](./contracts/ethereum-1/0x209829e8082b96031fbc5f717aa4deab0c9747fd/) | ActionSwapPTV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f438e...41c3b7`](./contracts/ethereum-1/0x5f438e5d032fd933fca63335a8097b466241c3b7/) | ActionSwapPTYT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41d81d...1a0d64`](./contracts/ethereum-1/0x41d81daf401a0aa7422a769243fa933f351a0d64/) | ActionSwapYT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32ed8f...1d158d`](./contracts/ethereum-1/0x32ed8fc44a5608d22519dca5a5a135f9661d158d/) | ActionSwapYTV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ed976...ea0aab`](./contracts/ethereum-1/0x1ed97638af0dac459c29b1c650edcfb4b4ea0aab/) | Address | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x534148...e05d7b`](./contracts/polygon-137/0x534148d8cda5c252c97671053408da46c5e05d7b/) | AddressProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x180326...ae9688`](./contracts/optimism-10/0x180326708fddf39c38294b28ff89a829bcae9688/) | AgentTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc276db...1813fe`](./contracts/ethereum-1/0xc276db339e551ecbe0ac323a7c4a5c6ca61813fe/) | AgEthRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0901b5...48e62b`](./contracts/ethereum-1/0x0901b541beff2cd44859701619e245e82f48e62b/) | AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09d4b4...a1da29`](./contracts/ethereum-1/0x09d4b49b12f567b96b387ce5823059bb7ba1da29/) | AggregationRouterHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18672b...0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x244baf...92285b`](./contracts/ethereum-1/0x244bafbae9c47c795d3ab76ee77c5ba62e92285b/) | AGLDLevSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x184a07...8733cf`](./contracts/ethereum-1/0x184a07c9cfd6165d6accdc373eb00bc5cd8733cf/) | AGLDSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x791aab...91dcc1`](./contracts/ethereum-1/0x791aab38c442a327df0beb1fec5767d8ca91dcc1/) | AGLDUniV3ChainlinkOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7ab641...142ddb`](./contracts/optimism-10/0x7ab641e661a9728913a44e06f6a4879481142ddb/) | AgTokenSideChainMultiBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x141e05...2f629e`](./contracts/ethereum-1/0x141e0541d87c6cbdbf2a6a8104248b4b922f629e/) | AHv2Repayment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1071f3...bb70c0`](./contracts/optimism-10/0x1071f3b2893f41094b1c84f090ea023042bb70c0/) | Airdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x025c6d...205a1f`](./contracts/ethereum-1/0x025c6da5bd0e6a5dd1350fda9e3b6a614b205a1f/) | AirdropGrapesToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc21d35...9fe35b`](./contracts/ethereum-1/0xc21d353ff4ee73c572425697f4f5aad2109fe35b/) | Alchemist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b5665...7d03ab`](./contracts/ethereum-1/0x6b566554378477490ab040f6f757171c967d03ab/) | AlchemistEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | AlchemixToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x010054...ff7ee6`](./contracts/ethereum-1/0x0100546f2cd4c9d97f798ffc9755e47865ff7ee6/) | AlEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a53cf...94385f`](./contracts/ethereum-1/0x4a53cf3b3eda545dc61dee0ca21ea8996c94385f/) | AllocationExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5b2f33...d9fe7c`](./contracts/arbitrum-42161/0x5b2f33d7ca6ec88f5586f2528f58c20843d9fe7c/) | AllocationIDTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | AlToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0d1098...cfb7a9`](./contracts/optimism-10/0x0d1098469d651161cc8211e2973afd5ad1cfb7a9/) | AmmVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2b9d7...947dc5`](./contracts/ethereum-1/0xb2b9d7ba7b7e5fb4e51a8bac83fd43e90c947dc5/) | AmpleforthWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x360f8d...4e73c3`](./contracts/ethereum-1/0x360f8dadc56717cfb53b03ff4a570f4fd54e73c3/) | AnchorStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0d7105...eccf52`](./contracts/optimism-10/0x0d710512e100c171139d2cf5708f22c680eccf52/) | AngleRouterOptimism | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd9bfdd...5d2d8c`](./contracts/polygon-137/0xd9bfdd4d53cfe38a7266fdab2ca74549e75d2d8c/) | AnycallExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5135fc...2d612e`](./contracts/ethereum-1/0x5135fc99e6f2dc02d07abe03ea2aa96ee32d612e/) | ApeMatchingMarketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x499618...5d438f`](./contracts/ethereum-1/0x499618600e8811e068ba6a0812c8c69fbd5d438f/) | ApeStakingLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x20612e...36210e`](./contracts/optimism-10/0x20612e6a0ddadc322b7b48e3c4246fb23836210e/) | ApexConsumerWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ddc33...919361`](./contracts/ethereum-1/0x4ddc33689380e6b56783a5442999b75a5b919361/) | APROracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x044dad...47ca14`](./contracts/ethereum-1/0x044dad5c0da888c93d8244261b67bd431b47ca14/) | APRWithPoolOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21b86f...d28d5d`](./contracts/ethereum-1/0x21b86fdc93f23fd52022a283828df8e808d28d5d/) | AssetPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | Astgik | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45a01e...2033cd`](./contracts/ethereum-1/0x45a01e4e04f14f7a4a6702c74187c5f6222033cd/) | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x773a4c...37b3c4`](./contracts/ethereum-1/0x773a4cacbca8e3704f8f7842531eab83e437b3c4/) | AuctionBidder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3f55a3...243c46`](./contracts/optimism-10/0x3f55a319d2fd003f87a96c1c3484121936243c46/) | Auditor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24a760...d3116c`](./contracts/ethereum-1/0x24a76073ab9131b25693f3b75dd1ce996fd3116c/) | aUSTOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e734e...6dae11`](./contracts/ethereum-1/0x8e734e30270292993dbe71c421ad2b128b6dae11/) | AUTOCOLOR_Technica | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0915d8...e135a0`](./contracts/ethereum-1/0x0915d829df26d65d9716c5e9ba0535b8f8e135a0/) | BAKCApeStakingStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x79bca9...1f8dce`](./contracts/optimism-10/0x79bca9bcc19e157cb5f8c5a2f4d6cb951b1f8dce/) | BalanceLogicLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa489fd...f00ee9`](./contracts/arbitrum-42161/0xa489fdc65229d6225014c0b357bcd19af6f00ee9/) | BancorFormula | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65fbae...9d9fc6`](./contracts/ethereum-1/0x65fbae61ad2c8836ffbfb502a0da41b0789d9fc6/) | Bank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc9e1aa...a8a34a`](./contracts/arbitrum-42161/0xc9e1aa57223add21cc88a03088af552f1ea8a34a/) | BanxaWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x689440...ece1c8`](./contracts/ethereum-1/0x689440f2ff927e1f24c72f1087e1faf471ece1c8/) | BaseRewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35878c...a618a2`](./contracts/ethereum-1/0x35878c2cff38cc4032e85283183428170ba618a2/) | BaseSplitCodeFactoryContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0807d0...41b7c3`](./contracts/ethereum-1/0x0807d0810714d85b49e40349a3002f06e841b7c3/) | BasicAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x168901...6fd311`](./contracts/optimism-10/0x168901193a72e82c00110c799c9c22f3ae6fd311/) | BasicLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6fd879...bebd0b`](./contracts/optimism-10/0x6fd879830d9b1ee5d4f9ef12f8d5dee916bebd0b/) | BatchClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b8e50...f831ca`](./contracts/ethereum-1/0x1b8e50ec9fbf844c3671bc178df8eadfcff831ca/) | BatchedPhasedEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1070f7...fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/) | BatchSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x266def...d59eeb`](./contracts/ethereum-1/0x266defe3ac742279db62ad215a8aca0d1cd59eeb/) | BAYCApeStakingStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2d578...b69772`](./contracts/ethereum-1/0xa2d578e21f430d7469cbc135952dfe5c34b69772/) | BCH_DAI_Reserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcabb5e...e1a461`](./contracts/ethereum-1/0xcabb5e9e48f22cb6736d5f5cd3f1b652d7e1a461/) | BCHGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2095be...0de6cd`](./contracts/ethereum-1/0x2095be01f9a30a8ac8302245fdfa524fb20de6cd/) | BCHShifter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x632c2d...6e83e8`](./contracts/ethereum-1/0x632c2d58ad870fbd4569da0a4e82ddf4b56e83e8/) | BeaconAuthorization | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fec9c...ffbfff`](./contracts/ethereum-1/0x8fec9cf78087064f1f32269f68f94ae343ffbfff/) | BeaconBackportRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24c0fb...f07647`](./contracts/ethereum-1/0x24c0fbd3ff8e742080c60881f8527ca3baf07647/) | BeaconBackportRewardsEscrowBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x024a69...2abd84`](./contracts/ethereum-1/0x024a697788918007592572f7cd020df2bc2abd84/) | BeaconDkg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4edc83...653f94`](./contracts/ethereum-1/0x4edc83c5c5b0c41a594371485554b95280653f94/) | BeaconDkgValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67a26f...941ec0`](./contracts/ethereum-1/0x67a26f2ebdb2448605936fe9a5f496cda7941ec0/) | BeaconInactivity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf5180...f5f491`](./contracts/ethereum-1/0xbf51807acb3394b8550f0554fb9098856ef5f491/) | BeaconRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b15fe...e68ff0`](./contracts/ethereum-1/0x9b15fef1bfa4aff9b51f7b3b2df4d197cde68ff0/) | BeaconRewardsEscrowBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62d0a8...b0bfce`](./contracts/ethereum-1/0x62d0a8458ed7719fdaf978fe5929c6d342b0bfce/) | BeamToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbea000...d1efab`](./contracts/ethereum-1/0xbea0000029ad1c77d3d5d23ba2d8893db9d1efab/) | BeanstalkERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdc036a...3e9292`](./contracts/arbitrum-42161/0xdc036ab31d2f105e15c1896f88d13b7bcf3e9292/) | BeefyFeeConfigurator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x64920a...72f164`](./contracts/arbitrum-42161/0x64920af66d5772042b0aae8a1ebef75b4372f164/) | BeefyMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa720b7...b0b885`](./contracts/arbitrum-42161/0xa720b7225deeea1d29cf7ca9affac9520fb0b885/) | BeefyMultiHopSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd404bd...f7f64c`](./contracts/arbitrum-42161/0xd404bd6629624962e1c762215c809a4c6ef7f64c/) | BeefyOracleAlgebra | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x65db8f...f71dbd`](./contracts/arbitrum-42161/0x65db8f64d77c48b3143cbb351428ad70c5f71dbd/) | BeefyOracleStableRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x902156...e473a1`](./contracts/arbitrum-42161/0x9021564e8bc6a36838e0d87cb8faa3ee8ee473a1/) | BeefyOracleStableRouterEthBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe2f035...f25fec`](./contracts/arbitrum-42161/0xe2f035f59de6a952ff699b4edd0f99c466f25fec/) | BeefySolidlyZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x46a188...f4af2b`](./contracts/arbitrum-42161/0x46a1884484a51b799414c6f02aeed80246f4af2b/) | BeefyTimelockCaller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0673a2...d24d1a`](./contracts/arbitrum-42161/0x0673a2dde104e5fd3d5e75a12c201c3db0d24d1a/) | BeefyVaultV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ae135...c4bdf3`](./contracts/arbitrum-42161/0x1ae1355545dd55c144d1ed9dda396b078ec4bdf3/) | BeefyVaultV6Native | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x047c41...c23f1f`](./contracts/ethereum-1/0x047c41817954b51309a2bd6f60e47bc115c23f1f/) | BeefyVaultV7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8396f3...4953f7`](./contracts/arbitrum-42161/0x8396f3d25d07531a80770ce3dea025932c4953f7/) | BeefyVaultV7Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x48bf3a...a83a36`](./contracts/arbitrum-42161/0x48bf3a071098a09c7d00379b4dbc69ab6da83a36/) | BeefyWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x52a743...3b0ad2`](./contracts/arbitrum-42161/0x52a7436dea377cd39d51ab6c60c7b4c36a3b0ad2/) | BeefyZapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9b55d...878211`](./contracts/ethereum-1/0xb9b55db94eb5581d7716235f5f55156f73878211/) | BentoBoxOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d3303...9b619f`](./contracts/ethereum-1/0x0d3303ffaf107cd732396570bf07b2dbd79b619f/) | BFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b07d3...48477a`](./contracts/arbitrum-42161/0x1b07d3344188908fb6deceac381f3ee63c48477a/) | Billing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xe2881c...0c0fa0`](./contracts/optimism-10/0xe2881cad27db4c27fb3814ad97cca694b80c0fa0/) | BinaryOptionMarketData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xe0b316...86dd63`](./contracts/optimism-10/0xe0b31640b07e4bcfafc190d7dde951ba3286dd63/) | BinaryOptionMarketFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xbe086e...d6a6f3`](./contracts/optimism-10/0xbe086e0a2c588ad64c8530048ce4356190d6a6f3/) | BinaryOptionMarketManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x89df50...033cdb`](./contracts/optimism-10/0x89df505c693ac7e07d8d5d6308fe0bd041033cdb/) | BinaryOptionMarketMastercopy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8947da...a8c3c5`](./contracts/optimism-10/0x8947da500eb47f82df21143d0c01a29862a8c3c5/) | BinaryOptionMastercopy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd07379...0f615a`](./contracts/ethereum-1/0xd07379a755a8f11b57610154861d694b2a0f615a/) | BirdsArentReal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04b94f...0f4d32`](./contracts/ethereum-1/0x04b94f55780682478c8d8329368aaafd320f4d32/) | BitcoinDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f2766...4839a5`](./contracts/ethereum-1/0x1f2766373e74f268d5dbde32a395eb1c924839a5/) | BitcoinRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b4fd0...5da3dc`](./contracts/ethereum-1/0x8b4fd02326db6ebe095e0707e2973c9e045da3dc/) | BlackScholesEstimate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x06d538...c2173e`](./contracts/optimism-10/0x06d538690af257da524f25d0cd52fd85b1c2173e/) | BlockNumber | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x655205...e020cd`](./contracts/ethereum-1/0x6552059b6efc6aa4ae3ea45f28ed4d92ace020cd/) | BLS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9e838...22c105`](./contracts/ethereum-1/0xa9e838fcb9295fa44d89d06ed59811ae1a22c105/) | BondedECDSAKeep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a7cd8...35c5d7`](./contracts/ethereum-1/0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7/) | BondedECDSAKeepFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c46f4...2ede4f`](./contracts/ethereum-1/0x0c46f496c410465975a427e34a976fc15a2ede4f/) | BondedSortitionPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x693604...562341`](./contracts/optimism-10/0x693604e757ac7e2c4a8263594a18d69c35562341/) | BondingCurve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x03f349...40d356`](./contracts/arbitrum-42161/0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356/) | BonusDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20c734...80bc0d`](./contracts/ethereum-1/0x20c7349f6d6a746a25e66f7c235e96dac880bc0d/) | BorrowController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa84ea9...6b748e`](./contracts/optimism-10/0xa84ea94aa705f7d009cddf2a60f65c0d446b748e/) | BribeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17d6e6...012330`](./contracts/ethereum-1/0x17d6e670ee8ef8464cafc098bf20668987012330/) | Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa94dd6...0778ee`](./contracts/ethereum-1/0xa94dd662e2a247493facceab9f2459aaf90778ee/) | BridgeGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce4b16...0d3443`](./contracts/ethereum-1/0xce4b16b81a28d785feeb7b1d56a9b97d450d3443/) | BridgeGovernanceParameters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e4ae3...464ed6`](./contracts/ethereum-1/0x6e4ae385d1f68e4d4feb455e0526c08c77464ed6/) | BSCBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70266e...cf18ea`](./contracts/ethereum-1/0x70266e9b23dadead1210ff58b6723a6ca0cf18ea/) | BSCWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11716a...aee110`](./contracts/ethereum-1/0x11716a1f51fad053e9b43da1025e8ace32aee110/) | BTC_DAI_Reserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1258d7...61902a`](./contracts/ethereum-1/0x1258d7ff385d1d81017d4a3d464c02f74c61902a/) | BTCShifter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a3753...f00f73`](./contracts/ethereum-1/0x1a3753fa1eee1622fe327df0b7ec03463ef00f73/) | BulkSeller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40ae6d...cb7c85`](./contracts/ethereum-1/0x40ae6da2d92aa3dcb7f8d7a7209fd12bdfcb7c85/) | BulkSellerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9acc60...6bd320`](./contracts/ethereum-1/0x9acc60f915dfcd190d270fc92567ae71776bd320/) | BulkSellerOffchain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x23ee23...c6810f`](./contracts/base-8453/0x23ee2343b892b1bb63503a4fabc840e0e2c6810f/) | BurnableMintableCappedERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4f47a1...8379d4`](./contracts/arbitrum-42161/0x4f47a156fa8106aa7bd13e6219c54a78748379d4/) | BuybackMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf62b40...9752e6`](./contracts/ethereum-1/0xf62b408738b4d7003bc9a3dcdf2de9ca709752e6/) | CappedETHDonation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x480a0a...51eb4d`](./contracts/ethereum-1/0x480a0af04186080bac985e595d66ea3bf351eb4d/) | CauldronLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x469a99...c0b3d3`](./contracts/ethereum-1/0x469a991a6bb8cbbfee42e7ab846edeef1bc0b3d3/) | CauldronLowRiskV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a9cb5...c7c7d2`](./contracts/ethereum-1/0x4a9cb5d0b755275fd188f87c0a8df531b0c7c7d2/) | CauldronMediumRiskV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x476b1e...a85c1f`](./contracts/ethereum-1/0x476b1e35dde474cb9aa1f6b85c9cc589bfa85c1f/) | CauldronV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1df188...dd9e51`](./contracts/ethereum-1/0x1df188958a8674b5177f77667b8d173c3cdd9e51/) | CauldronV2CheckpointV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe965db...d6010b`](./contracts/ethereum-1/0xe965db54fe154765460c5289a2b383d34fd6010b/) | CauldronV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x018a82...9ff5ab`](./contracts/ethereum-1/0x018a82a5bd6e0a4ae8c5cf54527775d17d9ff5ab/) | CCapableErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51a00f...5d9e61`](./contracts/ethereum-1/0x51a00f38cb1c055ebbbe380d3ba3d27cae5d9e61/) | CCIPBlockHashSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a6fd0...2b930f`](./contracts/ethereum-1/0x6a6fd01c92f0390670cce399b532017cdb2b930f/) | CCollateralCapErc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca1041...41c157`](./contracts/ethereum-1/0xca1041f188ffecc499e8d4d0f08dd31b0f41c157/) | CCollateralCapErc20NoInterestDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f0800...909b9e`](./contracts/ethereum-1/0x4f08008ef178929e3866f1aeea75beaa8b909b9e/) | CCTokenDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x158079...ac95c1`](./contracts/ethereum-1/0x158079ee67fce2f58472a96584a73c7ab9ac95c1/) | CErc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00e5c0...c84bf3`](./contracts/ethereum-1/0x00e5c0774a5f065c285068170b20393925c84bf3/) | CErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x011a01...230afa`](./contracts/ethereum-1/0x011a014d5e8eb4771e575bb1000318d509230afa/) | CErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e821d...11c2cb`](./contracts/ethereum-1/0x0e821d855f4fc427200484ae42369b8a6611c2cb/) | CErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2db6c8...5066d6`](./contracts/ethereum-1/0x2db6c82ce72c8d7d770ba1b5f5ed0b6e075066d6/) | CErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x066c98...d2848d`](./contracts/optimism-10/0x066c98e48238e8d77006a5fa14ec3b080fd2848d/) | CErc20Immutable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x195fe6...5dfa0b`](./contracts/polygon-137/0x195fe6ee6639665cceb15bcceb9980fc445dfa0b/) | ChildChainManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xafeea1...171ce8`](./contracts/polygon-137/0xafeea1de9d660d3cb53031cfe1a58de40b171ce8/) | ChildChainManagerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ChildERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0b9020...6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/) | ChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x004bae...4d5b57`](./contracts/polygon-137/0x004bae2ed0210e937327aaf199135393f64d5b57/) | ChildERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbda641...3fdbb6`](./contracts/polygon-137/0xbda6415502b0ddab9eda1d09f4f16286273fdbb6/) | ChildMintableERC1155 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x07280d...3952ea`](./contracts/polygon-137/0x07280d3143311b012ad268a74f2aa791713952ea/) | ChildMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd4888f...25b653`](./contracts/polygon-137/0xd4888fab8bd39a663b63161f5ee1eae31a25b653/) | ChildMintableERC721 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x08a3f2...833ba1`](./contracts/optimism-10/0x08a3f224b4a5ce4588bca5c64fbb9d120f833ba1/) | ChildWUSDR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6756ef...e8f9ef`](./contracts/ethereum-1/0x6756effa8aabeb9031279e4c71d8c1bd3ae8f9ef/) | ClaimingNativeStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa655aa...e0a143`](./contracts/ethereum-1/0xa655aa809d1fe7a55e22425780bb676e8ae0a143/) | ClaimingStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95cf8c...cc5220`](./contracts/ethereum-1/0x95cf8c1cb7d256082eccf71371e50a5dbccc5220/) | ClassicalOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3fc8e6...38e2eb`](./contracts/optimism-10/0x3fc8e63e98f83ba0f28336fb537699655938e2eb/) | CLFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x629e12...7cd905`](./contracts/optimism-10/0x629e122d4542f49145d89bad8b4cbe74757cd905/) | CLGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x282ac0...f1592a`](./contracts/optimism-10/0x282ac0ea96493650f1a5e5e5d20490c782f1592a/) | CLGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f8558...d70a08`](./contracts/ethereum-1/0x0f85580aa1e81b345f6ec8701a297696c9d70a08/) | ClonexEggAirdropClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x209ce0...98e3f5`](./contracts/optimism-10/0x209ce04710fb9a5c2147ca0fd30922b5e998e3f5/) | CLPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e94e1...afedd9`](./contracts/ethereum-1/0x1e94e130c03e32a4378a352ceff327b301afedd9/) | CollateralAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x494ba8...1b96c1`](./contracts/ethereum-1/0x494ba8753a253bb314f1e8324c36f804d31b96c1/) | CollateralMaximizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x026803...33eee7`](./contracts/ethereum-1/0x026803874894b04fa6bf3c5d2abf8a42c333eee7/) | CollateralVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x626efc...60f72a`](./contracts/optimism-10/0x626efc448227d794dc8c02ffea6a932bb360f72a/) | ComboOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x09044d...3b199a`](./contracts/optimism-10/0x09044da6e6ea891c83ee8d980bc109fda73b199a/) | ComboOracle_UniV2_UniV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ba592...7cb200`](./contracts/ethereum-1/0x2ba592f78db6436527729929aaf6c908497cb200/) | Comp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda7b94...4b64c3`](./contracts/ethereum-1/0xda7b940be1bce0d6e2eecd96f5cf6ed0504b64c3/) | CompensationEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1532eb...6aa870`](./contracts/ethereum-1/0x1532eb6c6d134903a0dedfc840128007b36aa870/) | COMPfarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20a61b...66c5a9`](./contracts/ethereum-1/0x20a61b948e33879ce7f23e535cc7baa3bc66c5a9/) | ComposableStablePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a303b...5d3007`](./contracts/ethereum-1/0x4a303b4e823b97689bcc77ae3dde6b6e5b5d3007/) | ComposableStablePreview | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4239dd...faf64a`](./contracts/ethereum-1/0x4239ddd3c50463383670e86c119220849bfaf64a/) | ComposableStablePreviewProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x886c9a...00442d`](./contracts/ethereum-1/0x886c9a91bf10dbc5e3c66c29387be9421a00442d/) | ComposableStablePreviewV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39a65b...7341fe`](./contracts/ethereum-1/0x39a65bfdb7b977a019564c2f9a81e1a29f7341fe/) | ComposableStablePreviewV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x178053...63df29`](./contracts/ethereum-1/0x178053c06006e67e09879c09ff012ff9d263df29/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6e2719...a7538a`](./contracts/polygon-137/0x6e271923a0afe69408d2f0425d16dbdacea7538a/) | ConfigProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47e037...cf437c`](./contracts/ethereum-1/0x47e037c9d5ef7cabe5389cedaa5e51f5c0cf437c/) | Constitution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0a8491...b2c97e`](./contracts/arbitrum-42161/0x0a8491544221dd212964fbb96487467291b2c97e/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98158e...8039ca`](./contracts/ethereum-1/0x98158e133f7f56a574fc806e579e1355048039ca/) | ConverterDAItoYCRV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6525fc...bd0769`](./contracts/ethereum-1/0x6525fc98f2a43633c2a36d5cca0abbdaa6bd0769/) | ConvertibleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1a7e4e...fcbce8`](./contracts/optimism-10/0x1a7e4e63778b4f12a199c062f3efdd288afcbce8/) | CoreBorrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d7b62...6d811a`](./contracts/ethereum-1/0x7d7b622c07f216d99efc3efb9cf71872f46d811a/) | CoveragePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22428b...2ee39b`](./contracts/ethereum-1/0x22428b09efc87709ab49a77da6f9ce4ffa2ee39b/) | CoveragePoolBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66b7df...ff3146`](./contracts/ethereum-1/0x66b7dff2ac66dc4d6fbb3db1cb627bbb01ff3146/) | CPITrackerOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49d72e...9fdb64`](./contracts/ethereum-1/0x49d72e3973900a195a155a46441f0c08179fdb64/) | CreamEth2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8584b7...40ca64`](./contracts/ethereum-1/0x8584b7ac8b1e4255c18784928fbf1c6fca40ca64/) | CreamLiquidate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x780f75...7a8b45`](./contracts/ethereum-1/0x780f75ad0b02afeb6039672e6a6cede7447a8b45/) | CreamLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb146bf...20d0f9`](./contracts/ethereum-1/0xb146bf59f30a54750209ef529a766d952720d0f9/) | CreamVotingPower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e14d0...5d322e`](./contracts/ethereum-1/0x8e14d03061705eb48fda6bc6e244c5eabe5d322e/) | CRON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf08fa0...7d4e7d`](./contracts/ethereum-1/0xf08fa0aea90f9904f0c4853a3225408b5a7d4e7d/) | Cross-Chain Gauge Mass Killer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7f35dc...084ed0`](./contracts/optimism-10/0x7f35dc487a5422d6946aad733c6018f163084ed0/) | CrossChainBridgeBacker_OPTI_Celer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x67ccea...2205be`](./contracts/optimism-10/0x67ccea5bb16181e7b4109c9c2143c24a1c2205be/) | CrossChainCanonicalFXS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x843b66...7fad92`](./contracts/optimism-10/0x843b66a06a4f00c0703fd2ae2e67c9399f7fad92/) | CrossChainCanonicalGALCX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x484c2d...36578c`](./contracts/optimism-10/0x484c2d6e3cdd945a8b2df735e079178c1036578c/) | CrossChainCanonicalV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x31aa22...b86509`](./contracts/optimism-10/0x31aa22d69270148ec63baf53fde846b45db86509/) | CrossChainOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x35c696...ea66de`](./contracts/optimism-10/0x35c6962c221e4e8c17e2b4d59c8de79457ea66de/) | CrossChainOracleSingleAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b73e...34450b`](./contracts/ethereum-1/0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b/) | CroToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62134f...45df23`](./contracts/ethereum-1/0x62134f1897e236e06ed34841ba91cef55945df23/) | CrowdProposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x398e41...a446f7`](./contracts/ethereum-1/0x398e41ac3d5972b4bac2320cd130c7a25ca446f7/) | Crowdsale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53e6c8...65dcde`](./contracts/ethereum-1/0x53e6c8a06f831c3281ccca5f0e349bbe0a65dcde/) | CRVDisperse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69f795...50af50`](./contracts/ethereum-1/0x69f79536d304a556603ff55d4dac017ddf50af50/) | CrvOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17c6e1...41f4d4`](./contracts/ethereum-1/0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4/) | crvUSD Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9332f...0738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | crvUSDControllerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bc706...f81d74`](./contracts/ethereum-1/0x2bc706b83ab08d0437b8a397242c3284b5f81d74/) | crvUSDdeleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x538e98...d3df2d`](./contracts/ethereum-1/0x538e984c2d5f821d51932dd9c570dff192d3df2d/) | crvUSDPoolRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf939e0...ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | crvUSDStablecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x76bf9a...ed5c30`](./contracts/polygon-137/0x76bf9ac96fc75849c6872cf89f367e56feed5c30/) | CryptoCabz | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b38ce...db7a25`](./contracts/ethereum-1/0x3b38ce23799dc56664ff6048892510abffdb7a25/) | CryptoFromPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38e762...3ba2f8`](./contracts/ethereum-1/0x38e7627eb98a40e7528bcce709a80083093ba2f8/) | CryptoFromPoolsRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a9ae9...c91aab`](./contracts/ethereum-1/0x0a9ae947495034c0bbbab845fd75b5bbafc91aab/) | CryptoFromPoolsRateWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x002688...1b09be`](./contracts/ethereum-1/0x002688c4296a2c4d800f271fe6f01741111b09be/) | CryptoFromPoolVaultWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d89d8...e1d5ca`](./contracts/ethereum-1/0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca/) | CryptoFromPoolWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x966cbd...32ca06`](./contracts/ethereum-1/0x966cbdecefb60a289b0460f7638f4a75f432ca06/) | CryptoWithStablePriceETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28d788...113c29`](./contracts/ethereum-1/0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29/) | CryptoWithStablePriceSfrxeth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbef434...fc4217`](./contracts/ethereum-1/0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217/) | CryptoWithStablePriceTBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07374b...3e46fa`](./contracts/ethereum-1/0x07374b547cae235227635c13266c69847a3e46fa/) | CryptoWithStablePriceWBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21f5f6...51b304`](./contracts/ethereum-1/0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304/) | CryptoWithStablePriceWsteth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b4722...151ffb`](./contracts/ethereum-1/0x0b4722779a0ed7d79101c0d251987e76d4151ffb/) | CSLPDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa67b44...2a038d`](./contracts/ethereum-1/0xa67b44e37200e92e6da6249d8ae6d48f832a038d/) | CTokenAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42b5d4...8bdbe5`](./contracts/ethereum-1/0x42b5d4a11c8fe76d114759f7f3d8e94ea28bdbe5/) | CTokenStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x234071...fa4606`](./contracts/arbitrum-42161/0x234071f4b1e322d1167d63503498f82cc7fa4606/) | Curation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1789cc...4764eb`](./contracts/ethereum-1/0x1789cca7430aacbdb7c89f9b5695a9c06e4764eb/) | Custodian | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4bc0e3...bf1c8f`](./contracts/optimism-10/0x4bc0e3f3699d152ecb9c80f3de73a4ff78bf1c8f/) | CustomSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5a6f7f...26678a`](./contracts/optimism-10/0x5a6f7f478cd55904216f1354b2a36d56b826678a/) | CustomUnstakedFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde2af8...34b4a4`](./contracts/ethereum-1/0xde2af899040536884e062d3a334f2dd36f34b4a4/) | CYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26227b...fd8d0b`](./contracts/ethereum-1/0x26227b1f96c773c0ed4c6ea99fc8b0d69efd8d0b/) | DaoCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e919b...d10364`](./contracts/ethereum-1/0x2e919b626221890c10a954cc8c3f3e8110d10364/) | DAONFTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x098e17...c370b9`](./contracts/ethereum-1/0x098e1708b920efbdd7afe33adb6a4cba30c370b9/) | DarknodePayment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x085d9b...05f54d`](./contracts/ethereum-1/0x085d9b18be81f2b0c35086972caa46177205f54d/) | DarknodePaymentMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x311999...effe49`](./contracts/ethereum-1/0x311999ee72b5826d664fd4f3ac09c0c462effe49/) | DarknodePaymentStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x379900...341c2f`](./contracts/ethereum-1/0x3799006a87fde3ccfc7666b3e6553b03ed341c2f/) | DarknodeRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb03201...3058fa`](./contracts/ethereum-1/0xb032012073765a74f8f8fe2e6685ad70253058fa/) | DarknodeRegistryForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f9822...4acecb`](./contracts/ethereum-1/0x7f98228b464101a3b19bf1cc337a9b88c84acecb/) | DarknodeRegistryLogicV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09e343...017405`](./contracts/ethereum-1/0x09e3435c7a92d3296d1221161cb0cbaafa017405/) | DarknodeRegistryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d7b6c...054f0a`](./contracts/ethereum-1/0x2d7b6c95afeffa50c068d50f89c5c0014e054f0a/) | DarknodeRegistryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14add4...98897a`](./contracts/ethereum-1/0x14add4ca443e7445a3418bb572d6079bfc98897a/) | DarknodeRegistryStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e69da...c38f1e`](./contracts/ethereum-1/0x1e69da530e2051cd08259221ef1dacc703c38f1e/) | DarknodeRegistryV1ToV2Preupgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5945bb...9cfaa5`](./contracts/ethereum-1/0x5945bbe065b7a723fd4cf9485a726cb5529cfaa5/) | DarknodeRegistryV1ToV2Upgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x880407...3cd588`](./contracts/ethereum-1/0x880407c9cd119bef48b1821cdfc434e3ca3cd588/) | DarknodeRewardVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04ed8f...2962f2`](./contracts/ethereum-1/0x04ed8f5730dd4d2b2064cdb6a5bffc26a72962f2/) | DarknodeSlasher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc7d868...ef926c`](./contracts/polygon-137/0xc7d868954009df558ac5fd54032f2b6fb6ef926c/) | DebtNotifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08422a...f80442`](./contracts/ethereum-1/0x08422ab5eedff7b7e34f2f4370b6584deef80442/) | DebtVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5c779c...60fb14`](./contracts/optimism-10/0x5c779cfae4b6b7a02c32938ddabdada8ab60fb14/) | DeciMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1946cb...4d6d3e`](./contracts/optimism-10/0x1946cb50db9aa631b60b5b54623eab3bb84d6d3e/) | DefiedgeZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd96f48...fc2cce`](./contracts/ethereum-1/0xd96f48665a1410c0cd669a88898eca36b9fc2cce/) | DegenBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48a89a...cdc4a4`](./contracts/ethereum-1/0x48a89a28cffb2f519e975964ae366e710bcdc4a4/) | DegenBoxConvexWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd0d533...b0dc50`](./contracts/polygon-137/0xd0d5332b37294003f3a915753ea15e4e1bb0dc50/) | DelegatedVEQuerier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x737464...aefd30`](./contracts/optimism-10/0x73746410b0dd4526e1fa00d0854e99ba54aefd30/) | DelegationLogicLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xdbe0ec...69c6fe`](./contracts/polygon-137/0xdbe0ec403e2f206fe3e45408657449082369c6fe/) | DemandMiner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x758888...18ce84`](./contracts/ethereum-1/0x758888dd8cc9c654519413e3da099c3ff618ce84/) | DeploymentHelpers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ac184...c04dc5`](./contracts/ethereum-1/0x1ac1841a47054e070236f1664991e52c30c04dc5/) | Deposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87effe...0faf8b`](./contracts/ethereum-1/0x87effef56c7ff13e2463b5d4dce81be2340faf8b/) | DepositFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62d128...ccd125`](./contracts/ethereum-1/0x62d1286683507939c065c12f2d1e80cca8ccd125/) | DepositFunding | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ca506...081a56`](./contracts/ethereum-1/0x1ca5060bf142c58168aedb974aabb020bc081a56/) | DepositLiquidation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x817c0f...372323`](./contracts/ethereum-1/0x817c0f6332392ad65d7688ed22f59b227e372323/) | DepositRedemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8695ff...ae1c80`](./contracts/ethereum-1/0x8695ff199a1216fc7e2bf97303bf662babae1c80/) | DepositStates | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x392635...ac9b95`](./contracts/ethereum-1/0x392635646bc22fc13c86859d1f02b27974ac9b95/) | DepositSweep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ad83d...212517`](./contracts/ethereum-1/0x2ad83decf0555945094e5d25129c1f324f212517/) | DepositUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x595167...3968d7`](./contracts/arbitrum-42161/0x5951674ec4662a7c680e4b0e41f2e4eeaf3968d7/) | DestSwapperUniV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ff192...a8373a`](./contracts/ethereum-1/0x8ff192e634ef6463be60792a384e5f1219a8373a/) | DEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9992e9...8d3a58`](./contracts/ethereum-1/0x9992e9341e496be5bc8f424dfc1f78a7388d3a58/) | DEXAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ab2b0...e3bd46`](./contracts/arbitrum-42161/0x0ab2b043138352413bb02e67e626a70320e3bd46/) | DisputeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x812ac0...cfa017`](./contracts/ethereum-1/0x812ac0eaeb422efa44eac670aa2246a25ecfa017/) | DistributeYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x53d6ea...9eebbe`](./contracts/optimism-10/0x53d6ea4775e08232a2c88d2f103cb124089eebbe/) | DistributionCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd56e99...469e73`](./contracts/ethereum-1/0xd56e9949d77001fa33ceab758bb93e1ab6469e73/) | DistributionModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b1b08...368d6d`](./contracts/ethereum-1/0x4b1b08313a290adf97d36a6f41f42bb19e368d6d/) | DistributionRewardsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x52b88b...1a8253`](./contracts/optimism-10/0x52b88b300a8dd0808e53203eb499cfca051a8253/) | Distributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad038e...c5d710`](./contracts/ethereum-1/0xad038eb671c44b853887a7e32528fab35dc5d710/) | DolaBorrowingRights | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf45c5e...055a18`](./contracts/ethereum-1/0xf45c5ef54e1401569325e047f2fea7190e055a18/) | DolaFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32eddd...15358f`](./contracts/ethereum-1/0x32eddd879b199503c6fc37df95b8920cd415358f/) | DolaPayroll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa544b7...50e672`](./contracts/ethereum-1/0xa544b70dc6af906862f68eb8e68c27bb7150e672/) | DonationVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc368ed...d28839`](./contracts/ethereum-1/0xc368ed8efc69d8e38ed4b4d726c40f9f9ad28839/) | Donator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x050cd4...92640e`](./contracts/ethereum-1/0x050cd4835b08babfc6ff92187971b3253e92640e/) | DSSLeverage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x035fb9...4b5f60`](./contracts/ethereum-1/0x035fb9efa7ed40a688044af22282fb19b64b5f60/) | DynamicSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50697a...224790`](./contracts/ethereum-1/0x50697a3a8698e36549db3e1e46ef136149224790/) | EasyConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9ca1a...c036fa`](./contracts/ethereum-1/0xe9ca1abe343515312eb6d13178c5a2dce3c036fa/) | ECDSABackportRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82ab5f...c76108`](./contracts/ethereum-1/0x82ab5f02993bf312d9aca03157f26febebc76108/) | ECDSABackportRewardsEscrowBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0125c8...d4ef27`](./contracts/ethereum-1/0x0125c8977a02b2fa3970b1ed9af02f5bedd4ef27/) | EcdsaDkgValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8263ef...46f764`](./contracts/ethereum-1/0x8263efcb8f28246697585c89fed0501cd946f764/) | EcdsaInactivity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5ac5a...ffca88`](./contracts/ethereum-1/0xc5ac5a8892230e0a3e1c473881a2de7353ffca88/) | ECDSARewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b9e48...91bbb3`](./contracts/ethereum-1/0x5b9e48f8818962699fe38f5989b130cee691bbb3/) | ECDSARewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa77ec9...952042`](./contracts/ethereum-1/0xa77ec9c89a0c889bcb05d15df42d49b706952042/) | ECDSARewardsDistributorEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x037a91...5efb84`](./contracts/ethereum-1/0x037a91d627cdbdd5ae20d6912fa15ae29b5efb84/) | ECDSARewardsEscrowBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x47d022...90a65a`](./contracts/polygon-137/0x47d022080d1b1fff0eb0b8acc98ac9f3ac90a65a/) | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42873d...48091b`](./contracts/ethereum-1/0x42873d662fd25b6b5d2a240afa1d39824a48091b/) | ELT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ccea6...559ad4`](./contracts/ethereum-1/0x4ccea6503e8e5525d3de0c60855b6332af559ad4/) | EminenceCurrency | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f69a9...297807`](./contracts/ethereum-1/0x3f69a9a183c62cff7ed5b07a3102a9c36e297807/) | EmptyUUPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57e114...1e6061`](./contracts/ethereum-1/0x57e114b691db790c35207b2e685d4a43181e6061/) | ENA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fab25...d2ee31`](./contracts/ethereum-1/0x3fab259f2392f733c60c19492b5678e5d2d2ee31/) | EpochManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x312966...a8a43c`](./contracts/arbitrum-42161/0x3129662808bec728a27ab6a6b9afd3cbaca8a43c/) | ERC1155GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x865377...dc9ce4`](./contracts/ethereum-1/0x865377367054516e17014ccded1e7d814edc9ce4/) | ERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x690df4...ebc653`](./contracts/polygon-137/0x690df473a6a4604391d150320f33afc1d4ebc653/) | ERC20GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6704ba...df4ade`](./contracts/ethereum-1/0x6704ba24b8640bccee6bf2fd276a6a1b8edf4ade/) | ERC20Impl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x056fd4...b6d5cd`](./contracts/ethereum-1/0x056fd409e1d7a124bd7017459dfea2f387b6d5cd/) | ERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa17254...fcc6f2`](./contracts/ethereum-1/0xa17254482b5d4abd55433ce4ecdff21932fcc6f2/) | ERC20Store | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd806a4...247b2b`](./contracts/arbitrum-42161/0xd806a4a473e44578796898a4c546f575d7247b2b/) | ERC677GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x154547...f96f11`](./contracts/ethereum-1/0x1545473701f011a5c977e48ac43e1404cdf96f11/) | ERC721Gateway_MintBurn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00f7b0...d50d32`](./contracts/polygon-137/0x00f7b061d410bb4afe189e80c8981774a2d50d32/) | ERC721GatewayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10819c...1fb64f`](./contracts/ethereum-1/0x10819c95e76de0d58999832ed1e385176f1fb64f/) | Escrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2d550e...51e280`](./contracts/optimism-10/0x2d550e003fde3e3114b1bbd03a25f2498c51e280/) | EscrowedEXA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x195f6f...aba307`](./contracts/optimism-10/0x195f6f7ca2268e1dec03352786c350eb61aba307/) | EscrowedMultipleMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x566d35...aac9c2`](./contracts/optimism-10/0x566d358f3386abac32cbe750489306c73caac9c2/) | EscrowThales | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x56f979...8758a0`](./contracts/arbitrum-42161/0x56f9799a53fa850d6f7c71f7e9015eb7768758a0/) | EsGMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc3828f...0207ef`](./contracts/arbitrum-42161/0xc3828fa579996090dc7767e051341338e60207ef/) | EsGmxBatchSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa9aeb1...047638`](./contracts/arbitrum-42161/0xa9aeb1c6f14f4244547b9a0946c485da99047638/) | EthereumDIDRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc48ee5...d9764d`](./contracts/ethereum-1/0xc48ee5a0e04f8ddc293c00c5d9ba6ee160d9764d/) | ETHEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe0c96...adfeae`](./contracts/ethereum-1/0xbe0c9650cf8ce5279b990e7a6634c63323adfeae/) | EthRepayAllHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dcdca...d8b277`](./contracts/ethereum-1/0x2dcdca085af2e258654e47204e483127e0d8b277/) | EthVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb25f2...807ad8`](./contracts/ethereum-1/0xdb25f211ab05b1c97d595516f45794528a807ad8/) | EURSToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xed16ce...223aec`](./contracts/arbitrum-42161/0xed16cebd4fa74a0016e1149cc03563db4b223aec/) | EventfulDataEdge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0810a8...d4c076`](./contracts/optimism-10/0x0810a8c5a2365943300523f4f947ae1546d4c076/) | EXA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3427a5...79616e`](./contracts/optimism-10/0x3427a595ed6e05cc2d8115e28bad151cb879616e/) | ExaAccountFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2bbaf5...c26887`](./contracts/optimism-10/0x2bbaf52f13513ce325066d387c1da1f260c26887/) | ExaPlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0fc711...02d470`](./contracts/optimism-10/0x0fc7119947bb95d2e67c699c0dfe8bc22a02d470/) | ExaPreviewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x159f28...499660`](./contracts/optimism-10/0x159f28f598b5c5340d6a902d34eb373d30499660/) | Exchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdcdb42...dd5851`](./contracts/ethereum-1/0xdcdb42c9a256690bd153a7b409751adfc8dd5851/) | ExchangeEfx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2b1d11...ae2597`](./contracts/optimism-10/0x2b1d11f82fc70e2693ab19c4c3da23da75ae2597/) | ExternalRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b8674...697392`](./contracts/ethereum-1/0x4b86747e4d5d664d5bc40bf317e66e1898697392/) | ExtraReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06d538...c2173e`](./contracts/ethereum-1/0x06d538690af257da524f25d0cd52fd85b1c2173e/) | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0084b0...42a262`](./contracts/polygon-137/0x0084b0c29e25d5ccaee5465981837ebef542a262/) | FactoryPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf4c67c...aa1d7b`](./contracts/optimism-10/0xf4c67cdeaab8360370f41514d06e32ccd8aa1d7b/) | FactoryRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a2d0e...c6cc0a`](./contracts/ethereum-1/0x3a2d0e5773dd6a345eda543b14c6ca6b51c6cc0a/) | FairLaunchCapitalVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6257e3...9fef3f`](./contracts/ethereum-1/0x6257e36efc9c7c6057c119ea2af40907159fef3f/) | Faketroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bd3fe...5e08d3`](./contracts/ethereum-1/0x6bd3feef505256b01f0b0bf7b89124b80c5e08d3/) | FantomAnimals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b27de...d983e6`](./contracts/arbitrum-42161/0x1b27de2815b7903b64961e8c6a992e013dd983e6/) | FastPriceEvents | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x068f28...2167c7`](./contracts/arbitrum-42161/0x068f2880c5dc0cb5c1ef913a517f3ad4122167c7/) | FastPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b3454...5b90fd`](./contracts/ethereum-1/0x2b34548b865ad66a2b046cb82e59ee43f75b90fd/) | Fed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x313d1d...a347fb`](./contracts/polygon-137/0x313d1d48430721370ecc57262a7664e375a347fb/) | FeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf3fff...f94789`](./contracts/ethereum-1/0xaf3fff06b75f99352d8c2a3c4bef1339a2f94789/) | FeeRebateToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x868cef...d96b33`](./contracts/ethereum-1/0x868cef33e29bf3037b5d4cf5c408eaef29d96b33/) | FeeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09dcde...70199f`](./contracts/ethereum-1/0x09dcdeed84106f894412228479caffc3dd70199f/) | FeeSplitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x031b41...91fa7f`](./contracts/ethereum-1/0x031b41e504677879370e9dbcf937283a8691fa7f/) | FetchToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x431d5d...f37bdb`](./contracts/polygon-137/0x431d5dff03120afa4bdf332c61a6e1766ef37bdb/) | FiatTokenV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfaa95...5fd4ee`](./contracts/ethereum-1/0xcfaa9540332afa3974bceed79bdd24d86c5fd4ee/) | FinalizeAndBroadcast | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3d6dd...e6f1a7`](./contracts/ethereum-1/0xd3d6ddb266dc9db2b71b095840c3b98e17e6f1a7/) | FixedRateIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c08b5...f2893a`](./contracts/ethereum-1/0x5c08b51ddbe8ba76e07be79975906c39aef2893a/) | fKRW | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf1ddca...efe123`](./contracts/optimism-10/0xf1ddcaca7d17f8030ab2eb54f2d9811365efe123/) | FlashAngle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x06824d...29ab74`](./contracts/optimism-10/0x06824df38d1d77eadeb6bafcb03904e27429ab74/) | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadd84d...480993`](./contracts/ethereum-1/0xadd84d9312ed1961ce80a1ceb17446737f480993/) | FoundationFunder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb24b7b...9d5191`](./contracts/polygon-137/0xb24b7b21839a6bbd017bc3159fc8ad3b959d5191/) | Fountain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ca135...cbe08e`](./contracts/ethereum-1/0x5ca135cb8527d76e932f34b5145575f9d8cbe08e/) | FPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ae84c...469e37`](./contracts/ethereum-1/0x0ae84c1a6e142ed90f8a35a7e7b216cb25469e37/) | FPIControllerPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2544a...901fdb`](./contracts/ethereum-1/0xc2544a32872a91f4a553b404c6950e89de901fdb/) | FPIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51bbef...ba3559`](./contracts/ethereum-1/0x51bbef1c7cc3a1d3bc5e64ce6c3ba6e66fba3559/) | Fraud | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x594618...29a158`](./contracts/ethereum-1/0x594618fb84e6d5ecbe876f4d9c9ed3cb4129a158/) | FrxETHOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41a376...7da186`](./contracts/ethereum-1/0x41a37655a7afb85787bd60a9fa750225567da186/) | FTTOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94c70c...93d063`](./contracts/ethereum-1/0x94c70c36b519e03705ddc26982d438f71993d063/) | FundingScript | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5b8978...f81e5f`](./contracts/optimism-10/0x5b89789fb230d17c4b0ae1461f26828554f81e5f/) | Fundraising | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d7f09...6dc10f`](./contracts/ethereum-1/0x3d7f0933ac403773d219cf0519de8082946dc10f/) | fUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0de54c...f1df1e`](./contracts/ethereum-1/0x0de54cfdfed8005176f8b7a9d5438b45c4f1df1e/) | FXB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | FxChild | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e08f5...8fd11e`](./contracts/ethereum-1/0x1e08f5c21817b5f8f3629471fcc2387e5b8fd11e/) | FxnOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7dd5c...87fc66`](./contracts/ethereum-1/0xc7dd5c30dca04f487c9ede0c5ac580c91587fc66/) | FxStateRootTunnel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x116172...3fcd35`](./contracts/ethereum-1/0x116172b2482c5dc3e6f445c16ac13367ac3fcd35/) | fxToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc7988...f94327`](./contracts/ethereum-1/0xcc798827741e5e83477b601bbc3cc4eb92f94327/) | FxUsdOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc647ab...b7c03c`](./contracts/optimism-10/0xc647ab2cab7d6da6081703382ecf2814d8b7c03c/) | GamesOddsObtainer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c0a34...e46ab3`](./contracts/ethereum-1/0x2c0a348500638aace229d6868c26b4e64fe46ab3/) | GasPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x503670...67a24e`](./contracts/ethereum-1/0x503670ec851c55ec1acfb5230192da921467a24e/) | GatewayRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8391fe...835071`](./contracts/optimism-10/0x8391fe399640e7228a059f8fa104b8a7b4835071/) | GaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x823fd2...61081c`](./contracts/ethereum-1/0x823fd217dcc5ce36ca6bc1489586ecb42b61081c/) | GaugeProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x167747...98d425`](./contracts/ethereum-1/0x167747bf5b3b6bf2f7f7c4cce32c463e9598d425/) | Generalized4626Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4142bb...e18410`](./contracts/ethereum-1/0x4142bb1ceec0dec4f7aaeb3d51d2dc8e6ee18410/) | GenericOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e27a3...b8b5f0`](./contracts/ethereum-1/0x4e27a3e21e747cf875ad5829b6d9cb7700b8b5f0/) | GetOperatorDarknodes | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4be1f1...2faf4a`](./contracts/ethereum-1/0x4be1f1026fb4280f1ab3c35e16a38fb13c2faf4a/) | GHIToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4277f8...1ac258`](./contracts/arbitrum-42161/0x4277f8f2c384827b5273592ff7cebd9f2c1ac258/) | GLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13e0bb...a4ebce`](./contracts/arbitrum-42161/0x13e0bbe893b33b64d4f3f96725dd70531fa4ebce/) | GlpBalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x321f65...e22649`](./contracts/arbitrum-42161/0x321f653eed006ad1c29d174e17d96351bde22649/) | GlpManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x012341...d7c7b8`](./contracts/arbitrum-42161/0x01234181085565ed162a948b6a5e88758cd7c7b8/) | GMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x34b45e...118a81`](./contracts/arbitrum-42161/0x34b45ee7cdccb5652bf54fd9795dd447a4118a81/) | GmxTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28037b...05daeb`](./contracts/ethereum-1/0x28037b93702335e55fe6319e1c144b8a4d05daeb/) | GNS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaf8e96...9d8a47`](./contracts/arbitrum-42161/0xaf8e969e3e23f1732f614e64630498ec809d8a47/) | Governable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7212f...0cb735`](./contracts/ethereum-1/0xc7212fc959bbb606f97036e8ac3da7aabf0cb735/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2489df...d0453c`](./contracts/polygon-137/0x2489df1f40bca6dba1554aafecc237bbc6d0453c/) | GovernanceAddressProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a5ff7...7be76e`](./contracts/ethereum-1/0x8a5ff78bfe0de04f5dc1b57d2e1095be697be76e/) | Governor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x260ac7...4534b1`](./contracts/ethereum-1/0x260ac708a95b10715d8bcd2f335196fd354534b1/) | GovernorAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbeccb6...359bf6`](./contracts/ethereum-1/0xbeccb6bb0aa4ab551966a7e4b97cec74bb359bf6/) | GovernorMills | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02612d...8a3db3`](./contracts/ethereum-1/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/) | GrantStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x47a0d5...7d209c`](./contracts/arbitrum-42161/0x47a0d56ea574419b524285d52ffe7198297d209c/) | GraphCurationToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6bc86e...cca86a`](./contracts/arbitrum-42161/0x6bc86e5d64c6c4882670804ca7ee4919cccca86a/) | GraphPayments | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d9611...559e10`](./contracts/ethereum-1/0x5d96113bac24d0b24f73d4cbb27b65ca7e559e10/) | GraphPreToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadca0d...7b6825`](./contracts/ethereum-1/0xadca0dd4729c8ba3acf3e99f3a9f471ef37b6825/) | GraphProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf55041...1263b9`](./contracts/ethereum-1/0xf55041e37e12cd407ad00ce2910b8269b01263b9/) | GraphProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x65e1a5...9fd302`](./contracts/arbitrum-42161/0x65e1a5e8946e7e87d9774f5288f41c30a99fd302/) | GraphProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x298393...8ca5fd`](./contracts/arbitrum-42161/0x2983936ac20202a6555993448e0d5654ac8ca5fd/) | GraphProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09695a...afa68b`](./contracts/ethereum-1/0x09695a6dff47b0053ef9553fee49d2d833afa68b/) | GraphSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8f69f5...111a9e`](./contracts/arbitrum-42161/0x8f69f5c07477ac46fbc491b1e6d91e2bb0111a9e/) | GraphTallyCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc944e9...da44a7`](./contracts/ethereum-1/0xc944e90c64b2c07662a292be6244bdf05cda44a7/) | GraphToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x628404...095883`](./contracts/ethereum-1/0x6284042d4da0931cbc64c5aab2d6184403095883/) | GraphTokenLockManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32ec7a...7f2ca1`](./contracts/ethereum-1/0x32ec7a59549b9f114c9d7d8b21891d91ae7f2ca1/) | GraphTokenLockSimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe5e63...5a2255`](./contracts/ethereum-1/0xbe5e630383b5baecf0db7b15c50d410edd5a2255/) | GraphTokenLockWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xde2f97...548b94`](./contracts/arbitrum-42161/0xde2f97cf98411b4aeb2b2952556ff9553d548b94/) | GRTTokenSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x941c26...39259d`](./contracts/ethereum-1/0x941c2699ec7e55a50bde030d8e1e70649839259d/) | Guardian | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2d007...dfa2e6`](./contracts/ethereum-1/0xb2d007293a421471586d6bc3fbfeb1990fdfa2e6/) | gVEC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc00a7e...036057`](./contracts/ethereum-1/0xc00a7efa3c59abd91be95accb8cdc9c50e036057/) | gVECOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf0ad20...47d5c2`](./contracts/polygon-137/0xf0ad209e2e969eaaa8c882aac71f02d8a047d5c2/) | GyroECLPPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc72869...26eefd`](./contracts/ethereum-1/0xc728693dcf6b257bf88577d6c92e52028426eefd/) | HBTCStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0316eb...c6d380`](./contracts/ethereum-1/0x0316eb71485b0ab14103307bf65a021042c6d380/) | HBTCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60b920...9dd9ad`](./contracts/ethereum-1/0x60b920ed2e048b10d087ffc63f1adc303e9dd9ad/) | HCTToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe42ef5...cd06a6`](./contracts/ethereum-1/0xe42ef56340bca5072e3c7ba07df835a65ecd06a6/) | HDTToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf61ee...830d6a`](./contracts/ethereum-1/0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a/) | HealthcalculatorzapforcrvUSDcontroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x03afe3...799479`](./contracts/optimism-10/0x03afe3617e5251b976b9d20a3efb68eab7799479/) | HedgeExchanger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7224f2...a1345a`](./contracts/ethereum-1/0x7224f2e96061a1e3f51d152e32ccfab79ca1345a/) | HegicERCPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30a086...e4ae70`](./contracts/ethereum-1/0x30a086f5b7a8a6256b0d0e6c9ca4cd3577e4ae70/) | HegicOptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x061940...082f23`](./contracts/ethereum-1/0x06194062288575f35c0af45d5e7013b65e082f23/) | HegicOptionsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04de5e...7d1f98`](./contracts/polygon-137/0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98/) | HelloWorld | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x658890...a1c266`](./contracts/ethereum-1/0x658890f633b6892c1ba13247502791ad6da1c266/) | Helper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x25e5e8...fca826`](./contracts/base-8453/0x25e5e82f5702a27c3466fe68f14abdbbadfca826/) | Hinkal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x00669a...61ef03`](./contracts/arbitrum-42161/0x00669a4cf01450b64e8a2a20e9b1fcb71e61ef03/) | HorizonStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3396f4...219d64`](./contracts/arbitrum-42161/0x3396f4f9b3c9e9b28126713b32d1d9939a219d64/) | HorizonStakingExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x270b77...695389`](./contracts/ethereum-1/0x270b7748cdf8243bfe68face7230ef0fce695389/) | hToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a683d...13e846`](./contracts/ethereum-1/0x2a683d58afa5ce9f54cc498672a33c4a0e13e846/) | HUSDToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02203f...b7d814`](./contracts/polygon-137/0x02203f2351e7ac6ab5051205172d3f772db7d814/) | Hypervisor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30f254...37f812`](./contracts/ethereum-1/0x30f254104a8a7b7779483eeef5560397a737f812/) | IBAgreement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ae50b...46b3ff`](./contracts/ethereum-1/0x9ae50bd64e45fd87dd05c768ff314b8fe246b3ff/) | IBAgreementV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78705d...f4e025`](./contracts/ethereum-1/0x78705df56477ff301b71b176a2bd3151b9f4e025/) | iCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb10e11...3b0f69`](./contracts/ethereum-1/0xb10e11f3e38dc35e06397689e45fa939eb3b0f69/) | iCollateralVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06a8fe...3ddcc1`](./contracts/ethereum-1/0x06a8fee7a607c5c887f5f0672f7d8849583ddcc1/) | iCollateralVaultProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c5f9d...ca35a0`](./contracts/ethereum-1/0x6c5f9d1d115862ca99253e5738590f6d31ca35a0/) | iDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x260fbb...a867fa`](./contracts/ethereum-1/0x260fbb4855b2a4a719097131016b573f95a867fa/) | iDAIZapSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2df86a...c13448`](./contracts/polygon-137/0x2df86a5f761532d764d8e3861ccdb1e763c13448/) | IDCard_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2d11a4...d3954a`](./contracts/polygon-137/0x2d11a42c7952d645089c8bfeb3a0728a0dd3954a/) | IDCard_V2_Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ac16c...fa4d86`](./contracts/ethereum-1/0x8ac16c08105de55a02e2b7462b1eec6085fa4d86/) | IdentityEvents | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd84855...2d0da1`](./contracts/polygon-137/0xd8485513dd9947aa3287d90fd3804d3df52d0da1/) | IDNFT_v1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cad8a...268eec`](./contracts/ethereum-1/0x9cad8ab10daa9af1a9d2b878541f41b697268eec/) | IEarnAPR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x029fea...44c9bb`](./contracts/ethereum-1/0x029feae8d773a3fe25f1a3e35a526bb54744c9bb/) | IEarnAPRWithPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x318135...50edfb`](./contracts/ethereum-1/0x318135fbd0b40d48fcef431ccdf6c7926450edfb/) | IEarnManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b3680...884bb4`](./contracts/ethereum-1/0x7b3680ad3bc9e84fc06c8a0647b82d2026884bb4/) | IEarnProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75a4d0...cd25eb`](./contracts/ethereum-1/0x75a4d0b18e98674199829ddd2a6477ea25cd25eb/) | IEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d1cb6...56557d`](./contracts/ethereum-1/0x2d1cb6fc2e13215841dc4f7dcd1aaa0fe256557d/) | IJPEGDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43d030...72011f`](./contracts/ethereum-1/0x43d03031fab845065e9cefe89dd122d63f72011f/) | ImplicitSwapfeeContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf57e7e...6e79ff`](./contracts/ethereum-1/0xf57e7e7c23978c3caec3c3548e3d615c346e79ff/) | IMXToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfe1a5...a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | InchSpellSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf96fc9...b01a88`](./contracts/optimism-10/0xf96fc9ff8863c8b2fe73ad95a909dc86efb01a88/) | InchSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xef06f4...c81f15`](./contracts/polygon-137/0xef06f4c43a07310fb17ef040dd78d2cd61c81f15/) | IndirectOFTWithFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41a925...2e4c10`](./contracts/ethereum-1/0x41a9257554c69c2187bafa6977d4953e0f2e4c10/) | InitializeGovernedUpgradeabilityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe28b3b...ceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | InjectiveToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xdfb4f5...5c3043`](./contracts/optimism-10/0xdfb4f5e2099c40e96fa28af83395d587b55c3043/) | InstallmentsPreviewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5cf950...a2fa38`](./contracts/optimism-10/0x5cf950c9d446693ba9fb14300a52c90abda2fa38/) | InstallmentsRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8767a4...a67516`](./contracts/optimism-10/0x8767a49d90f6fd60295083eade854f3a67a67516/) | InsuranceEtsOpUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x85bd0a...063018`](./contracts/optimism-10/0x85bd0a230a539f0043ba112bb51789e665063018/) | InsuranceExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa53e9e...2863d9`](./contracts/ethereum-1/0xa53e9e63793e55c533fe98d0ed178992942863d9/) | insuredVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8813d...457bcf`](./contracts/ethereum-1/0xb8813d297ffff9ffa67b8fe91ac703caaa457bcf/) | insurerVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69a753...708909`](./contracts/ethereum-1/0x69a753b2dd4ab6cb7197308913f3ebb82d708909/) | InterestRateDataResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x005eee...b8d8b6`](./contracts/optimism-10/0x005eeeb489606ad0b73ad2b7f429d1e988b8d8b6/) | InterestRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec271...b0d377`](./contracts/ethereum-1/0x0ec271d3bdb1a723088d1dcef6b7ebf9c1b0d377/) | InterestStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41d5d7...9dfb68`](./contracts/ethereum-1/0x41d5d79431a913c4ae7d69a668ecdfe5ff9dfb68/) | INV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5aa7d1...58f722`](./contracts/optimism-10/0x5aa7d1f42d2bdd7ca7f7fe3a724327573658f722/) | InvariantWatchdog | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1ac24...60d318`](./contracts/ethereum-1/0xe1ac243f14de48eba4c267e82d97ebc7d260d318/) | InverseOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x210ac5...90258f`](./contracts/ethereum-1/0x210ac53b27f16e20a9aa7d16260f84693390258f/) | InvFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x59a644...4feb3a`](./contracts/optimism-10/0x59a644e490e48235adf8ba9b814a4f666c4feb3a/) | IssuerChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14a5ca...104e3e`](./contracts/ethereum-1/0x14a5ca87175cc04b90cd31b2f13fbf88d9104e3e/) | iTrade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe80c0c...8345a3`](./contracts/ethereum-1/0xe80c0cd204d654cebe8dd64a4857cab6be8345a3/) | JPEG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d7849...d99728`](./contracts/ethereum-1/0x4d7849f0ad7f265b458e1df991f58fb683d99728/) | JPEGAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbff844...131a8e`](./contracts/ethereum-1/0xbff8443e25aea1245481995e8d961a77d4131a8e/) | JPEGAirdropClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bb49d...282630`](./contracts/ethereum-1/0x0bb49d6d3c51708cb0c810e169455022f5282630/) | JPEGAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x839795...eba6f4`](./contracts/ethereum-1/0x83979584ec8c6d94d93f838a524049173deba6f4/) | JPEGC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff9233...64d3b7`](./contracts/ethereum-1/0xff9233825542977cd093e9ffb8f0fc526164d3b7/) | JPEGCardsCigStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45c2d9...066f81`](./contracts/ethereum-1/0x45c2d9f2553f4e1794e1b99b8e319ead8a066f81/) | JPEGCStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3415cf...5ac0ac`](./contracts/ethereum-1/0x3415cf1a6459b62a34656e53e4048233775ac0ac/) | JPEGIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26f501...f1ef9c`](./contracts/ethereum-1/0x26f5016ce71881bf6ff7537d4d56b3864df1ef9c/) | JPEGIndexStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eb4c7...305e7a`](./contracts/ethereum-1/0x0eb4c7309a100e95b69e4a39af6bf84cea305e7a/) | JPEGOraclesAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce722f...a89dd6`](./contracts/ethereum-1/0xce722f60f35c37ab295adc4e6ba45bcc7ca89dd6/) | JPGD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05fc48...fdf6cb`](./contracts/ethereum-1/0x05fc48447e0ac445042823dd36e3e4ed2ffdf6cb/) | JPGDStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x556202...7b57e7`](./contracts/ethereum-1/0x5562024784cc914069d67d89a28e3201bf7b57e7/) | JumpRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x014872...d2e1a6`](./contracts/ethereum-1/0x014872728e7d8b1c6781f96ecfbd262ea4d2e1a6/) | JumpRateModelV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3f6fb8...02631e`](./contracts/optimism-10/0x3f6fb832279ac7db0b4f92b79cbb8df03702631e/) | JumpRateModelV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30f358...2f57f1`](./contracts/ethereum-1/0x30f3581ef6469334c8752d9b6ca3fb39c72f57f1/) | Keep3r | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb41772...af955e`](./contracts/ethereum-1/0xb41772890c8b1564c5015a12c0dc6f18b0af955e/) | Keep3rHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb68e7d...02d10d`](./contracts/ethereum-1/0xb68e7deb279eaa11f234dff4931458d2c002d10d/) | Keep3rJob | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | Keep3rV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1530a2...5a5df9`](./contracts/ethereum-1/0x1530a2924805aed2385f8b91849cab7fe95a5df9/) | Keep3rV1Helper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x739689...ab620c`](./contracts/ethereum-1/0x7396899638410094b3690f8bd2b56f07fdab620c/) | Keep3rV1JobRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdaef20...924c93`](./contracts/ethereum-1/0xdaef201ba1ba0354d71848893dd6d56905924c93/) | Keep3rV1Library | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x733538...70282c`](./contracts/ethereum-1/0x73353801921417f465377c8d898c6f4c0270282c/) | Keep3rV1Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a03b4...f5c080`](./contracts/ethereum-1/0x0a03b4f6d5314bb257540dc7702c326f97f5c080/) | Keep3rV1OracleUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x173ed6...132dc9`](./contracts/ethereum-1/0x173ed6531818456f29fc74011a3b1fb4b6132dc9/) | Keep3rV1Volatility | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bf162...c8f6c0`](./contracts/ethereum-1/0x1bf16291d2336ac3320f17cad646b56bd5c8f6c0/) | Keep3rV2Helper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2266be...7880cb`](./contracts/ethereum-1/0x2266be1ee5d345914976fd4ce9f4be65737880cb/) | Keep3rV2OracleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1542ec...ba0f82`](./contracts/ethereum-1/0x1542ec733b1a938be7d30acf49e7f4a6a5ba0f82/) | Keep3rV3OracleUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27321f...89a3d5`](./contracts/ethereum-1/0x27321f84704a599ab740281e285cc4463d89a3d5/) | KeepBonding | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29fa8f...78261c`](./contracts/ethereum-1/0x29fa8f46cbb9562b87773c8f50a7f9f27178261c/) | KeepFactorySelection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf7084...fcf9de`](./contracts/ethereum-1/0xdf708431162ba247ddae362d2c919e0fbafcf9de/) | KeepRandomBeaconOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3975ce...5718e7`](./contracts/ethereum-1/0x3975ce253ff9d586cf08c3898f95064b7a5718e7/) | KeepRandomBeaconOperatorStatistics | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x099597...599eab`](./contracts/ethereum-1/0x09959798b95d00a3183d20fac298e4594e599eab/) | KeepRandomBeaconServiceImplV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06b586...13fd7d`](./contracts/ethereum-1/0x06b5869aadcf3fa9a2733dd93d4240a6d813fd7d/) | KeepTokenGeyserRewardsEscrowBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf00da...016c87`](./contracts/ethereum-1/0xdf00dac2be1250cf62cbfc617ee7bc45c0016c87/) | KeepVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x534b51...6332bb`](./contracts/ethereum-1/0x534b51ba0fd7831394416681ce7cf401986332bb/) | KernelDepositPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x920cf6...99456b`](./contracts/optimism-10/0x920cf626a271321c151d027030d5d08af699456b/) | Kwenta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc4b4a2...3315a6`](./contracts/optimism-10/0xc4b4a2308b14704cb39c019c92e4cbf6b53315a6/) | KyberSwapRewardUsdcDaiLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf8928f...81fc7d`](./contracts/optimism-10/0xf8928f9118f9719d5f1b2aa5e7697bee6381fc7d/) | KyberSwapRewardUsdcUsdtLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c3a81...6bf354`](./contracts/ethereum-1/0x3c3a81e81dc49a522a592e7622a7e711c06bf354/) | L1MantleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b7551...45168d`](./contracts/arbitrum-42161/0x1b75515d958b7d18f07e5239513f1f285545168d/) | L2Curation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5cbdb6...d71667`](./contracts/arbitrum-42161/0x5cbdb6cfb91d435c5899fc05741e7d371fd71667/) | L2GNS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x962306...7e88c7`](./contracts/arbitrum-42161/0x9623063377ad1b27544c965ccd7342f7ea7e88c7/) | L2GraphToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4f74c7...f9d911`](./contracts/arbitrum-42161/0x4f74c728cee713191e500e68a8c8cc32bff9d911/) | L2GraphTokenLockManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x23c9c8...e68028`](./contracts/arbitrum-42161/0x23c9c8575e6ba0349a497b6d0e8f0b9239e68028/) | L2GraphTokenLockTransferTool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6864cd...8b51b0`](./contracts/arbitrum-42161/0x6864cdd6d69dbef02e5e06c5534b20fdaf8b51b0/) | L2GraphTokenLockWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x069fac...5750d3`](./contracts/arbitrum-42161/0x069facd162023626866efda1c079d848575750d3/) | L2Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8ae125...ce7384`](./contracts/optimism-10/0x8ae125e8653821e851f12a49f7765db9a9ce7384/) | L2StandardERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2c2d8a...a90d5f`](./contracts/polygon-137/0x2c2d8a078b33bf7782a16acce2c5ba6653a90d5f/) | L3USD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ea775...c5d0f3`](./contracts/ethereum-1/0x9ea775672e4424c403f048ab08c7f56015c5d0f3/) | LazyHarvest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x941a22...5e7fb7`](./contracts/ethereum-1/0x941a224090dc7890bcbc89adfd045d45e95e7fb7/) | Lens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2af5d2...912ca3`](./contracts/ethereum-1/0x2af5d2ad76741191d15dfe7bf6ac92d4bd912ca3/) | LEO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf17ebb...9e5672`](./contracts/ethereum-1/0xf17ebb3a24dc6d6b56d38adf0df499c1cd9e5672/) | LEOController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5e454b...e1c7e9`](./contracts/optimism-10/0x5e454beff7378781376dcf5cb733fb4259e1c7e9/) | Leverager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb556fa...7f2eac`](./contracts/ethereum-1/0xb556fa4c4752321b3154f08dfbdfcf34847f2eac/) | LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2bca89...855d57`](./contracts/arbitrum-42161/0x2bca89936fd13bacddd91d219f15df07da855d57/) | LibCobbDouglas | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x208f63...c289ee`](./contracts/arbitrum-42161/0x208f638d8804e4ccc874ec39e240feea3dc289ee/) | LibExponential | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x836cdf...35896e`](./contracts/ethereum-1/0x836cdfe63fe2d63f8bdb69b96f6097f36635896e/) | LightRelay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ca2f6...efa3c8`](./contracts/ethereum-1/0x4ca2f6206da1a7cb8155fea68797efdf25efa3c8/) | LightRelayMaintainerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x599609...08bfcd`](./contracts/ethereum-1/0x5996098a8bfa69fdff93e21228d895ba3608bfcd/) | LimitBackendHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73187e...5f2ad6`](./contracts/ethereum-1/0x73187e5b27f2aadd5ffee023d6a9e179365f2ad6/) | LinearPreview | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x58f6a7...1ca85d`](./contracts/ethereum-1/0x58f6a780fe047b1ec4e4f8a4fd418b81361ca85d/) | LiquidationHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x57896e...6660ab`](./contracts/polygon-137/0x57896e135f845301c706f643506629493b6660ab/) | LiquidationManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd82f6d...a3e8ce`](./contracts/ethereum-1/0xd82f6d42356e225bf79b870a05aac79062a3e8ce/) | LiquidationOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59bc9f...3b1963`](./contracts/ethereum-1/0x59bc9f79b3f91a90bfd286c9f8c4c8de143b1963/) | Liquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b71a...a2de99`](./contracts/ethereum-1/0x00b71a425db7c8b65a46cf39c23a188e10a2de99/) | LiquidityGaugeV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x17063a...a00ed7`](./contracts/optimism-10/0x17063ad4e83b0aba4ca0f3fc3a9794e807a00ed7/) | LiquidityGenerator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | LiquidityIncome | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39cd9c...c76d23`](./contracts/ethereum-1/0x39cd9cb33da6b5eb2a22cbe0a07647e2c3c76d23/) | LiquiditySeedingHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9cb911...2dedbc`](./contracts/arbitrum-42161/0x9cb911cbb270cae0d132689ce11c2c52ab2dedbc/) | LizardPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3558b...96ab73`](./contracts/ethereum-1/0xf3558b523235fe9bb78a02ca6f18292f4796ab73/) | LlamalendCrvStakeDaoERC4626Strat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8dfcd3...81ed47`](./contracts/ethereum-1/0x8dfcd34b074517c446a7885c271afd365981ed47/) | LlamalendCrvUsdStakeDaoERC4626Strat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x531bba...42633d`](./contracts/ethereum-1/0x531bba64373a1b8e5a94bb51ba32cce1cb42633d/) | LlamalendWeth2StakeDaoERC4626Strat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5de1bd...6998f1`](./contracts/ethereum-1/0x5de1bdedcdef3a5d6a833b6385ef7bd24e6998f1/) | LlamalendWethStakeDaoERC4626Strat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24529a...8a7ae3`](./contracts/ethereum-1/0x24529ad5bf07c97185632c6b015dad142b8a7ae3/) | LlamaPayFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c2346...dd1dc6`](./contracts/ethereum-1/0x8c2346f74d15b27402c39d26d58daba57bdd1dc6/) | LlamaSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec8e0...dbd93a`](./contracts/ethereum-1/0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a/) | LLAMMA - crvUSD AMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3eb2b8...dfe433`](./contracts/ethereum-1/0x3eb2b8c996c3660dddefc1f4559bab2ebbdfe433/) | LoanRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c84a8...d0de40`](./contracts/ethereum-1/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | Locks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x019cfa...51a273`](./contracts/optimism-10/0x019cfa4d703b9f48643adc38c68b47a98651a273/) | Lockup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56775f...aa41ff`](./contracts/ethereum-1/0x56775f083ac3015b8c869d9e089da251dcaa41ff/) | LpFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47a5f2...9d6f44`](./contracts/ethereum-1/0x47a5f2ffdf66d13ed7e317581f458d09b49d6f44/) | LPRewardsKEEPETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78aa83...482edd`](./contracts/ethereum-1/0x78aa83bd6c9de5de0a2231366900ab060a482edd/) | LPRewardsTBTCSaddle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ad9e8...03f76d`](./contracts/ethereum-1/0x6ad9e8e5236c0e2cf6d755bb7be4eabcbc03f76d/) | LPRewardsTBTCv2Saddle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x224d8f...277f03`](./contracts/optimism-10/0x224d8fd7ab6ad4c6eb4611ce56ef35dec2277f03/) | LPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c3000...3122fc`](./contracts/ethereum-1/0x1c3000b8f475a958b87c73a5cc5780ab763122fc/) | LPStakingTime | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x597457...84985a`](./contracts/arbitrum-42161/0x59745774ed5eff903e615f5a2282cae03484985a/) | LPToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12c391...291fb4`](./contracts/ethereum-1/0x12c391f1bef4663532ffbab2664138f290291fb4/) | LRTConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bc711...a45993`](./contracts/ethereum-1/0x1bc71130a0e39942a7658878169764bbd8a45993/) | LRTConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50fb23...3eb5e7`](./contracts/ethereum-1/0x50fb23fde4d469698821792d4a34863dca3eb5e7/) | LRTDepositPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x144853...d94221`](./contracts/ethereum-1/0x144853f68b948625bbd2d3bc50431547c3d94221/) | LRTOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fc8ee...e5a2a4`](./contracts/ethereum-1/0x1fc8eebd7e1e61cc2cca005ee0f0d08417e5a2a4/) | LRTUnstakingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ecde3...684e19`](./contracts/ethereum-1/0x0ecde3f414d1a245246d121e37191d9a63684e19/) | LRTWithdrawalManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5624b4...8c5fd0`](./contracts/ethereum-1/0x5624b48ec2848bd642230b46405e1f65938c5fd0/) | MagicInternetGold | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | MagicInternetMoneyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ba384...87f163`](./contracts/ethereum-1/0x5ba38450dee95600a7d762c379d4bc956087f163/) | MainApeMatchingStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x535e01...40140f`](./contracts/ethereum-1/0x535e01f948458e0b64f9db2a01da6f32e240140f/) | MaintainerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xcdd958...05cff0`](./contracts/optimism-10/0xcdd9585005095ac7447d1fdbc990c5cfb805cff0/) | ManagedRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3b05d4...2a4c31`](./contracts/optimism-10/0x3b05d4c58de4e96ea093032c6d70c7e4212a4c31/) | MarchMadness | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7cb1b3...ca2789`](./contracts/optimism-10/0x7cb1b38591021309c64f451859d79312d8ca2789/) | Mark2Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x096f2c...39235d`](./contracts/optimism-10/0x096f2c15dbe3a12f812cd3ad921d166da839235d/) | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x29babf...a10258`](./contracts/optimism-10/0x29babff3eba7b517a75109ea8fd6d1eab4a10258/) | MarketETHRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f9433...2e4f50`](./contracts/ethereum-1/0x4f9433e9b5272e0f8f3ee33e5fd718407a2e4f50/) | MarketMathStatic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | MaticWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x060917...e5aa2f`](./contracts/ethereum-1/0x06091717521c2002f2859c75f53987eaf1e5aa2f/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x066de3...8b50d9`](./contracts/ethereum-1/0x066de3369aee792274d55d53fe9c14d06f8b50d9/) | MAYCApeStakingStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc79903...afe4a2`](./contracts/ethereum-1/0xc79903fe6f268f2ac77a85df1c319bbd18afe4a2/) | MeritID | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c8015...7e1f42`](./contracts/ethereum-1/0x0c8015c94f21544aa958a55849a2af1f987e1f42/) | MeritNFTDropFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6b38c5...a71df9`](./contracts/optimism-10/0x6b38c561366a939ea8711a7311c8e5aab0a71df9/) | MerkleAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x00d59b...777a49`](./contracts/optimism-10/0x00d59bc35174c3b250dd92a363495d38c8777a49/) | MerkleClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe81028...bc6b00`](./contracts/ethereum-1/0xe810281d189f19572b5250556369c39f5ebc6b00/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03caec...560e7e`](./contracts/ethereum-1/0x03caec60a734da03f3ee8f8aca8834e8c3560e7e/) | MerkleOrchard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93dfa8...0a9372`](./contracts/ethereum-1/0x93dfa873b15ad496ba8116ce6cfec52ef30a9372/) | MetaKeep3r | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x36bf22...91943f`](./contracts/arbitrum-42161/0x36bf227d6bac96e2ab1ebb5492ecec69c691943f/) | MetaStablePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21a9fd...d59cd3`](./contracts/ethereum-1/0x21a9fd7212f37c35b030e9374510f99128d59cd3/) | MetaStablePreview | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e1d7e...e2b5df`](./contracts/ethereum-1/0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df/) | MezoAllocator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1af817...27d1f5`](./contracts/ethereum-1/0x1af817c36708fd0d057c87a51c92fbb0e527d1f5/) | MezoBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fb422...af6ddf`](./contracts/ethereum-1/0x8fb4223b7751243ae14987d6fc9e71d06aaf6ddf/) | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e9ac0...2a12b8`](./contracts/ethereum-1/0x8e9ac0de3ab634ce0e2f0e397efc5ce8a72a12b8/) | MiniMeTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d0e30...0e6a4f`](./contracts/arbitrum-42161/0x0d0e30d12b54d9ef7300edba23cb34f3730e6a4f/) | MintableBaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x79af5d...47d043`](./contracts/optimism-10/0x79af5dd14e855823fa3e9ecacdf001d99647d043/) | MintableBurnableSyntheticTokenPermit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3460dc...a4102d`](./contracts/optimism-10/0x3460dc71a8863710d1c907b8d9d5dbc053a4102d/) | Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc6b1dc...084247`](./contracts/polygon-137/0xc6b1dc6c9ff85e968527f5c755fc07253a084247/) | MinterAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a5628...ce22b4`](./contracts/ethereum-1/0x1a562822f99d11e8f993f6bcda86277123ce22b4/) | MintGatewayLogicV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05387a...c6b1aa`](./contracts/ethereum-1/0x05387a10bb3ef789b6c2a9ce2d6c21d5a8c6b1aa/) | MintGatewayProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x137730...b04804`](./contracts/ethereum-1/0x13773093cdad89e8e1615f581a37c7eeabb04804/) | MintGatewayUpgrader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52bebd...a7f428`](./contracts/ethereum-1/0x52bebd3d7f37ec4284853fd5861ae71253a7f428/) | MinuteTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6315dc...3056a3`](./contracts/optimism-10/0x6315dc8ffeaf4278f062a3a9137eeee54f3056a3/) | MixedRouteQuoterV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d4f5e...584458`](./contracts/ethereum-1/0x4d4f5e7a1fe57f5ceb38bfce8653effa5e584458/) | MixOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5311cf...cb9999`](./contracts/ethereum-1/0x5311cf987ad2b8087d7d83efc379d6f916cb9999/) | MobixToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x581c05...20b0db`](./contracts/polygon-137/0x581c05c6e4c22fcef7521448bb68d29c7720b0db/) | ModernTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1515bc...0a7a9a`](./contracts/polygon-137/0x1515bcb5489c6323de36a5bcd6b81d13a10a7a9a/) | MonthlyBounty | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x310667...d42123`](./contracts/ethereum-1/0x3106675ede4a64d70131247466fd8704a3d42123/) | MovingFunds | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1440ec...e80815`](./contracts/ethereum-1/0x1440ecdfc61386a64116e58326bc7d6074e80815/) | mSpellSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc2796...13a4c0`](./contracts/ethereum-1/0xfc2796c47063d6fcb98006081778c7b45b13a4c0/) | mSpellSenderManual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94635b...53f41d`](./contracts/ethereum-1/0x94635b2034ccec3293b81d411cd77c36c353f41d/) | mSpellStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb782c6...d2d202`](./contracts/ethereum-1/0xb782c60c9e27dd66b8b63e3694b45d8636d2d202/) | Multicall3p | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6cd24a...07eaf5`](./contracts/optimism-10/0x6cd24ac05103c2c911347a6d3628d64a9f07eaf5/) | MultiCallWithFailure | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32facb...203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | MultiClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2503c0...1c518d`](./contracts/polygon-137/0x2503c0f180bc6a4375e02309a26a9979171c518d/) | MultiDAO_VotePower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ba87b...207f76`](./contracts/ethereum-1/0x1ba87be4c20fa2d4cbd8e4ae9998649226207f76/) | MultiDelegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x113ce4...58a713`](./contracts/polygon-137/0x113ce4b850d94e37077da2e1dc708a317458a713/) | MultiHonor_1155Querier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1ff9b7...42111b`](./contracts/polygon-137/0x1ff9b7dc66bb8cc7819e875b6739409b3a42111b/) | MultiHonor_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1964cf...37f6f5`](./contracts/optimism-10/0x1964cf9d0c5c268dcf5a5d37f13600483237f6f5/) | MultipleMerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e064e...a50d3d`](./contracts/ethereum-1/0x4e064e16be2a23b3284ec5d6e4d11ab253a50d3d/) | MultiPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3547df...6b0043`](./contracts/ethereum-1/0x3547dfca04358540891149559e691b146c6b0043/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | MultiSigWalletWithTimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa47f92...a5a0da`](./contracts/ethereum-1/0xa47f925659799636c73f1fa244affe21f2a5a0da/) | NativeStakingChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x645e75...231f4c`](./contracts/ethereum-1/0x645e758796408efdd65bbbd877e8ebceeb231f4c/) | NCStableCoinInterestRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18b5b6...5d14a7`](./contracts/ethereum-1/0x18b5b6696e6569f437f48b111734d72b225d14a7/) | NCStandardInterestRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e55c5...7ba76d`](./contracts/ethereum-1/0x0e55c54249f25f70d519b7fb1c20e3331e7ba76d/) | NectarController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe85104...864125`](./contracts/ethereum-1/0xe851048c101abbdac26615c44dcec4c051864125/) | NectarTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93a288...de7a28`](./contracts/ethereum-1/0x93a2880f657793a1d839653c8f8cef52f3de7a28/) | NexusMutualCover | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x829f78...61bea9`](./contracts/optimism-10/0x829f7819ef21301f423bbf406f6fc3f22b61bea9/) | NFTDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83d85a...8f38e8`](./contracts/ethereum-1/0x83d85aedd308261d847c3eb8d7146457bd8f38e8/) | NFTHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x887230...bdd1bb`](./contracts/polygon-137/0x887230c6bfeecd0d94c467fb05e852defcbdd1bb/) | NFTRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x005c6a...f9fa16`](./contracts/optimism-10/0x005c6ac3a3e1543e5ff6c8f37641fa313af9fa16/) | NFTSVG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40eda5...94aac1`](./contracts/ethereum-1/0x40eda5fd29f306f72b2ad1d7d8be144f7b94aac1/) | NFTVaultSetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x266a15...c44abc`](./contracts/ethereum-1/0x266a15d35327406c51789a7669465505abc44abc/) | NodeDelegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b6c71...fdd7f3`](./contracts/ethereum-1/0x1b6c71edbdb8174420cf9b368b38a1b52bfdd7f3/) | NodeOperatorRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0b98e0...8a7356`](./contracts/optimism-10/0x0b98e071c552c3a70796589c0cc9d4f9a68a7356/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0452df...02e3c7`](./contracts/optimism-10/0x0452dfdf6e6fa85e53d476434df634b4fd02e3c7/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d5b85...590daf`](./contracts/ethereum-1/0x1d5b85d4099958de09fee8bc252a546b42590daf/) | NoOp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9214a6...f023aa`](./contracts/ethereum-1/0x9214a67186965fd5fe582a64a8646ff058f023aa/) | Normalizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x075108...1d6363`](./contracts/ethereum-1/0x075108f275ed81c9cfc01065e6e50ceea81d6363/) | NttManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63fcd4...465ec0`](./contracts/ethereum-1/0x63fcd49f390c83494d6e086339c452444d465ec0/) | OETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fdfbb...e43dec`](./contracts/ethereum-1/0x2fdfbb2b905484f1445e23a97c97f65fe0e43dec/) | OETHDripper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d017a...a6785c`](./contracts/ethereum-1/0x0d017afa83eace9f10a8ec5b6e13941664a6785c/) | OETHHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ccd26...b61dba`](./contracts/ethereum-1/0x3ccd26e82f7305b12742fbb36708b42f82b61dba/) | OETHOracleRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x392540...8bd7ab`](./contracts/ethereum-1/0x39254033945aa2e4809cc2977e7087bee48bd7ab/) | OETHVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60c91b...940d74`](./contracts/ethereum-1/0x60c91b985ac7117765b859d718576b2ed8940d74/) | OETHVaultAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x109158...1c89f3`](./contracts/ethereum-1/0x1091588cc431275f99dc5df311fd8e1ab81c89f3/) | OETHVaultCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c135f...5b66b0`](./contracts/ethereum-1/0x8c135f50c7317a93cc95bb208a494e5ade5b66b0/) | OETHZapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0e62ca...2837d2`](./contracts/polygon-137/0x0e62cadbaeec69b8b0f2e9d56510f925512837d2/) | OFTWithFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe61110...590a42`](./contracts/ethereum-1/0xe61110663334794aba03c349c621a075dc590a42/) | OgvStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dba7d...605621`](./contracts/ethereum-1/0x5dba7dfcdbfb8812d30fdd99d9441f8b7a605621/) | OKBImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75231f...42a86c`](./contracts/ethereum-1/0x75231f58b43240c9718dd58b4967c5114342a86c/) | OKBImplementationV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e2046...a6a356`](./contracts/ethereum-1/0x9e20461bc2c4c980f62f1b279d71734207a6a356/) | OmniCat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1531b6...a4b154`](./contracts/ethereum-1/0x1531b6e3d51bf80f634957df81a990b92da4b154/) | OnDemandSPV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8714f6...d2a48a`](./contracts/ethereum-1/0x8714f686102f206a233f415d521194ec80d2a48a/) | OneTimeListingManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34024b...41f38c`](./contracts/ethereum-1/0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c/) | OneWayLendingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x217d47...a5bb11`](./contracts/optimism-10/0x217d47011b23bb961eb6d93ca9945b7501a5bb11/) | OpThales | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9c97eb...10a641`](./contracts/optimism-10/0x9c97eb920f88a927ef3b0a89650104744910a641/) | OptimismGlobalPayoutListener | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x33b15a...21d72a`](./contracts/optimism-10/0x33b15a1b4e7bbecfa2e67318d661ece53421d72a/) | OptimismPayoutListener | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48bc6d...76cdd5`](./contracts/ethereum-1/0x48bc6de14fc64418da9d0b5befdb404e3e76cdd5/) | OptionsV1Library | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00fbd1...d86309`](./contracts/ethereum-1/0x00fbd1774093e9240beb559f7a1300d291d86309/) | OptionsV1Reserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabe146...10cce8`](./contracts/ethereum-1/0xabe146cf570fd27ddd985895ce9b138a7110cce8/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa83682...f8f087`](./contracts/ethereum-1/0xa836826fda1332ea06c796c9b7990a9378f8f087/) | OracleAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x022abb...aad735`](./contracts/ethereum-1/0x022abb391ddcc80a17cd0a3873ff88dd06aad735/) | OracleFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02176d...c10ecc`](./contracts/ethereum-1/0x02176d640657740539f70eea98501ebbf1c10ecc/) | OracleLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06c7a3...cc89ff`](./contracts/ethereum-1/0x06c7a36bfe715479c7f583785b7e9303dfcc89ff/) | OracleRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc92ae5...fa9eda`](./contracts/ethereum-1/0xc92ae5e2a955a3440f677c1c60d48baa1cfa9eda/) | OracleV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9465f...167f53`](./contracts/ethereum-1/0xa9465f75eecfa4293abcafc02d68e79bd4167f53/) | OracleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09f77e...8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa27c20...62bc21`](./contracts/arbitrum-42161/0xa27c20a7cf0e1c68c0460706bb674f98f362bc21/) | OrderBookReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7257ac...32c3fb`](./contracts/arbitrum-42161/0x7257ac5d0a0aac04aa7ba2ac0a6eb742e332c3fb/) | OrderExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8207c1...41ae26`](./contracts/ethereum-1/0x8207c1ffc5b6804f6024322ccf34f29c3541ae26/) | OriginToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf6308...1ed0f1`](./contracts/ethereum-1/0xcf63089a8ad2a9d8bd6bb8022f3190eb7e1ed0f1/) | OSMedianizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35fdfa...334c0e`](./contracts/ethereum-1/0x35fdfab459043a335cbbdf8fa28b31a147334c0e/) | OTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ae95d...18f805`](./contracts/ethereum-1/0x1ae95dd4eeae7ed03da79856c2d44ffa3318f805/) | OUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x478409...ec29ed`](./contracts/ethereum-1/0x478409d856cd759cbfaa6639d88b7cdcb8ec29ed/) | OutsourceDepositLogging | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5442ff...a3c671`](./contracts/optimism-10/0x5442ff0573fd54a4f6c02a7a0d8e22bdc1a3c671/) | OvertimeVoucher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3a1806...00ea42`](./contracts/optimism-10/0x3a18062f12939658ac8c020a0443a388db00ea42/) | Ovn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x279a30...1c091e`](./contracts/optimism-10/0x279a30ed284d49d32de901acfc0004b2db1c091e/) | OvnGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x82c470...b018f6`](./contracts/optimism-10/0x82c470166bca446ed2fb90e08ab7941e3eb018f6/) | OvnTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0e2b2e...2a5679`](./contracts/optimism-10/0x0e2b2e48d5d10a5ac71c6d468cd7f92a962a5679/) | OvnTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x448e87...7b2615`](./contracts/optimism-10/0x448e87779345cc2a4b3772dfd0f63200837b2615/) | OvnToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2ba860...99ffc5`](./contracts/optimism-10/0x2ba86032e601e001aeb0069efff824bcf699ffc5/) | OwnedDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3c6ef5...7fb735`](./contracts/arbitrum-42161/0x3c6ef5ed8ad5df0d5e3d05c6e607c60f987fb735/) | Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x25cbdd...b6b746`](./contracts/optimism-10/0x25cbddb98b35ab1ff77413456b31ec81a6b6b746/) | PairFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5c0326...90f17e`](./contracts/polygon-137/0x5c03264f1d2a996ecb12c3d56e9de401d190f17e/) | PAR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x912f88...1e4d4e`](./contracts/optimism-10/0x912f889034ddd593a087c4e59061e549891e4d4e/) | ParlayMarketsAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0a9397...08aacd`](./contracts/optimism-10/0x0a9397378c427e39bde0c53e6626523b7d08aacd/) | ParlayVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x146444...8017b6`](./contracts/optimism-10/0x146444d363028c5495f7d57a4c49e641ce8017b6/) | ParlayVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d594d...da69b4`](./contracts/ethereum-1/0x9d594d1fba500113ede103c071dcf68535da69b4/) | Patch0000 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3f468e...142e9c`](./contracts/optimism-10/0x3f468e35f5c262a6e796bfe3be831bf8b9142e9c/) | PatchedManagedRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8cc053...f6f2a3`](./contracts/optimism-10/0x8cc05394ed714073758e9bef8073a83d79f6f2a3/) | Pauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ffcb0...da9ce6`](./contracts/ethereum-1/0x6ffcb0f00c3ad2575e443152d8861aec1bda9ce6/) | PAXImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86eee0...55310a`](./contracts/ethereum-1/0x86eee0422322710866af89e9cae3f7383d55310a/) | PAXImplementationV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc493e8...da11f7`](./contracts/arbitrum-42161/0xc493e8ebede3d1cc61632736108d943693da11f7/) | PaymentsEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e802c...4e560e`](./contracts/ethereum-1/0x4e802cedf01f9c83d5dba3caf7e7b70deb4e560e/) | Payroll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ef89e...4dccae`](./contracts/ethereum-1/0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae/) | PegKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x226845...6c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/) | PegPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae8bc0...21d33b`](./contracts/ethereum-1/0xae8bc036451af7c8f96fd90642e163392d21d33b/) | PendleCUSDAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc20e5f...38f2db`](./contracts/ethereum-1/0xc20e5f2721a2553fa8135e447f2812495138f2db/) | PendleLimitRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ee16d...6bd155`](./contracts/ethereum-1/0x7ee16d58ab482922523b252634ecc324326bd155/) | PendleSUSDSAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x08947e...3f75d4`](./contracts/optimism-10/0x08947e304064b3f3ef2b99fca7e549c5fc3f75d4/) | PerlinNoise | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e3dec...33fb4c`](./contracts/ethereum-1/0x4e3decbb3645551b8a19f0ea1678079fcb33fb4c/) | PerpetualPoolParty | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x821a27...195c0c`](./contracts/ethereum-1/0x821a278dfff762c76410264303f25bf42e195c0c/) | PETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x964d45...2ec157`](./contracts/ethereum-1/0x964d45256c73df0239a26216cec155d7e12ec157/) | PhasedEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fa3ef...3666c0`](./contracts/ethereum-1/0x8fa3ef45137c3aff337e42f98023c1d7dd3666c0/) | PlainTransferEscrowBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x431e70...1dbc24`](./contracts/polygon-137/0x431e70c7d0a5de55d6b4f7af9391edf35b1dbc24/) | POC_SemiToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60a91e...082e46`](./contracts/ethereum-1/0x60a91e2b7a1568f0848f3d43353c453730082e46/) | PoLidoNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x101816...390a2e`](./contracts/ethereum-1/0x101816545f6bd2b1076434b54383a1e633390a2e/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | PoolBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ca99f...e079c2`](./contracts/ethereum-1/0x9ca99f16ba2ed5627407fd44bd3f9d2810e079c2/) | PoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a2f2e...7d1683`](./contracts/ethereum-1/0x8a2f2e0fd65caee0622ee7ba98b67f73717d1683/) | PoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b459c...ddeafd`](./contracts/ethereum-1/0x0b459cae3f5f91469b910a8811723606b2ddeafd/) | Portal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x039d77...1090bc`](./contracts/optimism-10/0x039d778af09e9b71a39f1ba09609b529131090bc/) | PortfolioManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x63f072...5e9a84`](./contracts/optimism-10/0x63f072928cac9ffd799c6d0f985f9ee3985e9a84/) | PositionalMarketData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x734c6c...38fdc2`](./contracts/optimism-10/0x734c6c0fb8068afc4d795af32b65ba31bb38fdc2/) | PositionalMarketManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x470a69...9564ff`](./contracts/optimism-10/0x470a69afec851c1c4022b4a1b9d3a729389564ff/) | PositionalMarketMastercopy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a02e6...af93b2`](./contracts/arbitrum-42161/0x6a02e6381297826cca630fc5e2d53bdbbbaf93b2/) | PositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05cb7c...8cb78f`](./contracts/arbitrum-42161/0x05cb7c42890e0522264fe5ec6d84e8d7218cb78f/) | PositionRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2a74c7...802f74`](./contracts/arbitrum-42161/0x2a74c7498d42ecee75032ed41416c5fa39802f74/) | PositionRouterReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x264294...e616a4`](./contracts/ethereum-1/0x26429451aab5e4c91277e510f4289ddb8ae616a4/) | PositionToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dea8b...2bdc1b`](./contracts/ethereum-1/0x5dea8bbcc1fca0aaa72872aba72990278d2bdc1b/) | PRBMathCommon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0ad0c...ea91f2`](./contracts/ethereum-1/0xd0ad0cdf6c0a08048d95a140fd0eecbeb7ea91f2/) | PRBMathSD59x18 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbff28c...8599f6`](./contracts/ethereum-1/0xbff28c0b8c3df7b89e71743e835a7be2c98599f6/) | PreJPEG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x135b6e...0793d1`](./contracts/polygon-137/0x135b6e9c211e6974f7cbb11ff96ac6b1550793d1/) | PremiumHolder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x135abf...67a2a2`](./contracts/optimism-10/0x135abf02580ff4f41e6589b0198365d01167a2a2/) | Previewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00dd3f...b9c732`](./contracts/polygon-137/0x00dd3fa34b4d9222a6cba7332bc70d7a8db9c732/) | PriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5fe09b...3a13d3`](./contracts/optimism-10/0x5fe09baaa75fd107a8df8565813f66b3603a13d3/) | PriceFeedPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7b1ffd...d43a8b`](./contracts/arbitrum-42161/0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b/) | PriceFeedTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3abce8...525cf7`](./contracts/ethereum-1/0x3abce8f1db258fbc64827b0926e14a0f90525cf7/) | PriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1653c0...e53ba1`](./contracts/ethereum-1/0x1653c07fa6ce103b43925dddb5e31ca568e53ba1/) | PriceOracleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde19f5...297266`](./contracts/ethereum-1/0xde19f5a7cf029275be9cec538e81aa298e297266/) | PriceOracleProxyIB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x22c7e5...1c0fea`](./contracts/optimism-10/0x22c7e5ce392bc951f63b68a8020b121a8e1c0fea/) | PriceOracleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c2ca9...05029f`](./contracts/ethereum-1/0x7c2ca9d502f2409beceafa68e97a176ff805029f/) | PriceProvidersRepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e94fa...3be471`](./contracts/ethereum-1/0x3e94fa3c1e72f48ecbc1f944f393ae8a323be471/) | PriceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72519f...c5c047`](./contracts/ethereum-1/0x72519fa6cd095c99d5d67e31ddc117409bc5c047/) | PrintLimiter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa869b9...0d49b5`](./contracts/ethereum-1/0xa869b9171c8f912c592abc58005922718d0d49b5/) | PrivilegedCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e70f7...187103`](./contracts/ethereum-1/0x5e70f7acb8ec0231c00220d11c74dc2b23187103/) | PrivilegedCheckpointCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x681797...1c8338`](./contracts/optimism-10/0x6817974ca2c354f2fa40d8349b725b5bf81c8338/) | ProposalManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd67881...bab514`](./contracts/optimism-10/0xd6788102627462d1a679282e726125ccdebab514/) | ProposalReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x547516...bdbadf`](./contracts/ethereum-1/0x54751636e04092ee76f25b2b3c50dcdcfebdbadf/) | ProtocolLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x637278...2447c8`](./contracts/ethereum-1/0x637278bf72127c76d98d9a9be36d2121fb2447c8/) | ProtocolLogicV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xedcf19...08f12a`](./contracts/ethereum-1/0xedcf198bc94ddcabb21dbeb38ad9f9793208f12a/) | ProtocolOwnedDebtCauldron | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d880b...69b47a`](./contracts/ethereum-1/0x4d880bb27b1cd850d4bc331b1654af01bd69b47a/) | ProtocolProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1e5efd...96c012`](./contracts/optimism-10/0x1e5efdf50e47176e062770d5c0eab5a2f196c012/) | ProtoStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e74c9...ea31cb`](./contracts/ethereum-1/0x5e74c9036fb86bd7ecdcb084a0673efc32ea31cb/) | ProxyERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0aa94...e36212`](./contracts/ethereum-1/0xa0aa943666b4309c1989e3a7ebe7dbe11de36212/) | ProxyOFTV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ea220...4b8855`](./contracts/ethereum-1/0x0ea2207e31dc03701b12e4b322df1bbb404b8855/) | ProxyOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7f6f1...e331b1`](./contracts/ethereum-1/0xb7f6f1a7f200f1c897b0066ac6b3d4c3fae331b1/) | PunkLiquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e276d...454666`](./contracts/ethereum-1/0x1e276d4a186792cafe5c1854be78d47ddc454666/) | PxETHOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x054b28...dec947`](./contracts/ethereum-1/0x054b28d847c566a6b991de34afeada8bb8dec947/) | pxETHvETHBond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa3fa99...6997f1`](./contracts/polygon-137/0xa3fa99a148fa48d14ed51d610c367c61876997f1/) | QiStablecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1486aa...11465f`](./contracts/optimism-10/0x1486aaf64e0b45334acfdbef524d49eede11465f/) | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x46dcaf...f21058`](./contracts/arbitrum-42161/0x46dcafbb2c9d479827f69bec9314e13741f21058/) | RamsesStaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | RandomBeacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf23fc1...b0294a`](./contracts/ethereum-1/0xf23fc18ece6afe7fb57ba59979e8600bb4b0294a/) | RandomBeaconChaosnet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0a308...cb1c63`](./contracts/ethereum-1/0xd0a3088ed9fff4357b79cd3896bd38876fcb1c63/) | RandomBeaconGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6d53c8...2c39c4`](./contracts/optimism-10/0x6d53c852fe7e0b60d54c70e454cbbccbce2c39c4/) | RangedMarketMastercopy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x086cc1...49e89d`](./contracts/optimism-10/0x086cc1c04ef1aa4797c18a946c5688bf3949e89d/) | RangedMarketsAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x34ed3d...0c5658`](./contracts/optimism-10/0x34ed3d919ad7f533bfafe9295363d9f37c0c5658/) | RangedPositionMastercopy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1f551a...266869`](./contracts/polygon-137/0x1f551a0cd53af4bdb1d29a7b2a77e78afa266869/) | RatesManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1136b8...bac9fa`](./contracts/arbitrum-42161/0x1136b815765877f4fe626e4e82f462aed5bac9fa/) | Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fcc3b...f907a6`](./contracts/ethereum-1/0x6fcc3bb4948c20a81f652a525f78f80993f907a6/) | RebalancingStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3dcd70...ef6c5c`](./contracts/ethereum-1/0x3dcd70e6a3fb474cfd7567a021864066fdef6c5c/) | RebaseHooks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0c13ca...c590b6`](./contracts/optimism-10/0x0c13ca908cdf6a49cf3d17f2aff419d45fc590b6/) | RebaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd5d1ac...1bd062`](./contracts/ethereum-1/0xd5d1acc9c7ebaf8bbf85c45aee2b8b3f3b1bd062/) | RecapitalizationManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d807e...a25914`](./contracts/ethereum-1/0x7d807e9ce1ef73048fee9a4214e75e894ea25914/) | Redemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x846e82...25a951`](./contracts/optimism-10/0x846e822e9a00669dcc647079d7d625d2cd25a951/) | RedemptionReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0972e6...adb887`](./contracts/ethereum-1/0x0972e6062eac0fe8686d82ea010504066dadb887/) | RedemptionScript | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8aa382...76f5c8`](./contracts/arbitrum-42161/0x8aa382760bcdce8644c33e6c2d52f6304a76f5c8/) | ReferralReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1a59ac...530d57`](./contracts/optimism-10/0x1a59ac5d4bdf35b5255c6d301ad23f6eb1530d57/) | Referrals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2249d0...923392`](./contracts/arbitrum-42161/0x2249d006a8ccdf4c99aa6c8b9502a2aecc923392/) | ReferralStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2fa807...c6da51`](./contracts/optimism-10/0x2fa807e11ecb1ef44d9175df3608f9c0f1c6da51/) | Refunder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d3747...39bb56`](./contracts/ethereum-1/0x0d374775e962c3608b8f0a4b8b10567df739bb56/) | RegistryAccess | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0594cb...4db34c`](./contracts/ethereum-1/0x0594cb5ca47efe1ff25c7b8b43e221683b4db34c/) | RegistryContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x369fce...17f9cc`](./contracts/ethereum-1/0x369fce62b33512b2a883cf217635ee28dd17f9cc/) | ReimbursementPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2be431...f361b0`](./contracts/ethereum-1/0x2be431ee7e74b1cb7cfa16fc90578ef42ef361b0/) | RenBTCCrvOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bab72...45ed2a`](./contracts/ethereum-1/0x3bab7207d4e27b5de4a15d540b7297281b45ed2a/) | RenCrvLevSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41d65c...29df42`](./contracts/ethereum-1/0x41d65ce96342a3d9c3d878856e283e839d29df42/) | RenCrvSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a1fdf...e73af0`](./contracts/ethereum-1/0x1a1fdf27c5e6784d1cebf256a8a5cc0877e73af0/) | RenderToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a2d36...8c1bee`](./contracts/ethereum-1/0x0a2d368e4eecbd515033ba29253909f2978c1bee/) | RenERC20LogicV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee2740...7894a7`](./contracts/ethereum-1/0xee274080b8389ac5add6499df348b653447894a7/) | RenERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3fed6...a01cc3`](./contracts/ethereum-1/0xc3fed6eb39178a541d274e6fc748d48f0ca01cc3/) | RenExAtomicSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ec18b...a77efd`](./contracts/ethereum-1/0x5ec18b477b20af940807b5478db5a64cd4a77efd/) | RenExBalances | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31a0d1...d2e383`](./contracts/ethereum-1/0x31a0d1a199631d244761eeba67e8501296d2e383/) | RenExBrokerVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x908262...2b21e1`](./contracts/ethereum-1/0x908262de0366e42d029b0518d5276762c92b21e1/) | RenExSettlement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7cade4...744ec4`](./contracts/ethereum-1/0x7cade4fbc8761817bb62a080733d1b6cad744ec4/) | RenExTokens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x044906...0ad01c`](./contracts/ethereum-1/0x04490672449654b1d9ad6f0aae14e6e4c60ad01c/) | RenProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e0679...eb40ed`](./contracts/ethereum-1/0x8e0679d0d4691ea345fb8c2aec9bf9c1d3eb40ed/) | RenToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d07e5...634f21`](./contracts/ethereum-1/0x0d07e5d0c6657a59153359d6552c4664b6634f21/) | RepayHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21c482...9fcebd`](./contracts/ethereum-1/0x21c482f153d0317fe85c60be1f7fa079019fcebd/) | RepublicToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c5bf1...1beaed`](./contracts/ethereum-1/0x0c5bf19618a8fcddb132d82bc6c5ea736a1beaed/) | ReserveManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0a16cb...41d305`](./contracts/optimism-10/0x0a16cb36b553ba2bb2339f3b206a965e9841d305/) | RestrictedTeam | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4548a9...ec229d`](./contracts/ethereum-1/0x4548a9300d890f6a7c8a5da563bd2ffac4ec229d/) | RETHPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fcfd0...998884`](./contracts/ethereum-1/0x8fcfd0eec0cca95b5bcebd33a076b29fd8998884/) | RewardClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a6726...4a0496`](./contracts/ethereum-1/0x1a6726a877a8417dfab3308d2ec389bc3f4a0496/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1066a8...e75be2`](./contracts/optimism-10/0x1066a8eb3d90af0ad3f89839b974658577e75be2/) | RewardEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5da3ea...c3f5c2`](./contracts/optimism-10/0x5da3ea9167e159de0d3003c21c86db1334c3f5c2/) | RewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x123706...5a5b8e`](./contracts/arbitrum-42161/0x123706cdd8e60324e610e9a2cc7012d0f45a5b8e/) | RewardMasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8bfb8e...6d40e0`](./contracts/arbitrum-42161/0x8bfb8e82ee4569aee78d03235ff465bd436d40e0/) | RewardReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc73d55...980fba`](./contracts/arbitrum-42161/0xc73d553473dc65ce56db96c58e6a091c20980fba/) | RewardRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x159854...a3ce9b`](./contracts/arbitrum-42161/0x159854e14a862df9e39e1d128b8e5f70b4a3ce9b/) | RewardRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0399cf...a95f7f`](./contracts/optimism-10/0x0399cf66d74106d438d5770dce8c0f7071a95f7f/) | RewardsController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5d5bea...3f784f`](./contracts/optimism-10/0x5d5bea9f0fc13d967511668a60a3369fd53f784f/) | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7381f9...e7eb01`](./contracts/arbitrum-42161/0x7381f99a610f6c438206811183e2d3969ae7eb01/) | RewardsEligibilityOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x225ab8...9c64d0`](./contracts/arbitrum-42161/0x225ab818cd003bb17728768e6a48c160d89c64d0/) | RewardsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7e60d...6a1503`](./contracts/ethereum-1/0xb7e60dab3799e238d01e0f90c4506eef8f6a1503/) | RewardsPuller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0755d3...1e5e93`](./contracts/arbitrum-42161/0x0755d33e45ed2b874c9ebf5b279023c8bd1e5e93/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2355d7...f62b30`](./contracts/ethereum-1/0x2355d701d8d85ed161ab66a0a7e759c463f62b30/) | RiskManagerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x073931...e8fe50`](./contracts/ethereum-1/0x0739311a9725779f109706b48a56763a8ae8fe50/) | RiskOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa6f958...94fc14`](./contracts/arbitrum-42161/0xa6f9581d3a77dbe3df78d3b048756ab0d294fc14/) | RodeoCaller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb34891...a5ed9e`](./contracts/arbitrum-42161/0xb34891fac221f335131d1b6cd8c883d107a5ed9e/) | RodeoMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8731d5...e01e98`](./contracts/ethereum-1/0x8731d54e9d02c286767d56ac03e8037c07e01e98/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x150f94...cc2376`](./contracts/ethereum-1/0x150f94b44927f078737562f0fcf3c95c01cc2376/) | RouterETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c0fa6...c47161`](./contracts/ethereum-1/0x7c0fa6ad8c14afc85706e28b6ed2d9cbacc47161/) | RouterStatic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9084b5...906dce`](./contracts/ethereum-1/0x9084b5a98e3b4b257affd82ae4a1753f87906dce/) | RouterStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x101152...b45fbd`](./contracts/ethereum-1/0x101152a10262a9fa8f4ed8399cd74e2ff9b45fbd/) | RSETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1b0ed6...8cf0e4`](./contracts/optimism-10/0x1b0ed6567a53eac1fe6d859d3fb2be11738cf0e4/) | SafeBoxBuyback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7e2a9a...02b4f2`](./contracts/optimism-10/0x7e2a9aecdb007e060ba8b98f7ed5706c9c02b4f2/) | SafeDecimalMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bdfea...fb3c40`](./contracts/ethereum-1/0x6bdfea3b1fc7d01bfed72e08fd395fc6d0fb3c40/) | SafetyRedundancy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f4a31...25932e`](./contracts/ethereum-1/0x4f4a31c1c11bdd438cf0c7668d6afa2b5825932e/) | SaleHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47ba20...1539c5`](./contracts/ethereum-1/0x47ba20283be4d72d4afb1862994f4203551539c5/) | sAPE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xb23786...e4dc14`](./contracts/optimism-10/0xb2378660daebb9ba6c1ce2a38d3ee1d6a6e4dc14/) | Savings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d2d70...39236f`](./contracts/ethereum-1/0x6d2d702c24fe116e4c859f058551719fb839236f/) | scrvUsdERC4626Strat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x188041...8aeaf8`](./contracts/ethereum-1/0x188041ad83145351ef45f4bb91d08886648aeaf8/) | Secondarymonetarypolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e1f16...b10f9c`](./contracts/ethereum-1/0x4e1f162fd143e4a829341efd6dd451b018b10f9c/) | SecondarymonetarypolicyforWBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cc045...e696de`](./contracts/ethereum-1/0x8cc045ea0cb956a01e802f8e4d09bb8b47e696de/) | SellingRewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a2878...5b40dd`](./contracts/ethereum-1/0x2a28789645776eaa95f6d491ff375781ea5b40dd/) | SemiLog monetary policy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x072884...588f8a`](./contracts/arbitrum-42161/0x072884c745c0a23144753335776c99be22588f8a/) | ServiceRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x119da7...551036`](./contracts/ethereum-1/0x119da7a8500ade0766f758d934808179dc551036/) | SettlementRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2738af...ea6adf`](./contracts/ethereum-1/0x2738afa1280795b1a17acad4749490c96dea6adf/) | SewerPassAirdropClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43ecff...ce11bc`](./contracts/ethereum-1/0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc/) | sfrxETH2crvUSDleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x342209...5d72f6`](./contracts/ethereum-1/0x342209d6ed7b851d366dfe15dec15689d55d72f6/) | sfrxETHERC4626Strat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb27d17...9ac9f8`](./contracts/ethereum-1/0xb27d1729489d04473631f0afaca3c3a7389ac9f8/) | ShareCollateralToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0259e6...7671fa`](./contracts/ethereum-1/0x0259e629ecded874e0e289e047817cf50f7671fa/) | ShareValueHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3c893...a92a12`](./contracts/ethereum-1/0xa3c8931ec0fef9bf05386d154c4cd1e93aa92a12/) | ShibLevSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1085fa...0081ce`](./contracts/ethereum-1/0x1085fa0770a88a132e3b8aae21c84755d70081ce/) | ShibSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x959c61...5bb378`](./contracts/ethereum-1/0x959c6189e6039606a79e209213f85f6e0a5bb378/) | ShibUniV3ChainlinkOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d4713...876cac`](./contracts/ethereum-1/0x1d4713b74e79a3696722aebe05de976979876cac/) | ShifterRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf58eec...d434da`](./contracts/arbitrum-42161/0xf58eec83ba28ddd79390b9e90c4d3ebff1d434da/) | ShortsTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x79b6ee...5c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ShortsTrackerTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10d7cb...7081fc`](./contracts/ethereum-1/0x10d7cb15642d540a4521a7b2840dab01287081fc/) | Signer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43faf6...f7442f`](./contracts/ethereum-1/0x43faf6fe84e01dd186cfeb9ea2f0854a1ef7442f/) | SignerBondsManualSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d919c...737589`](./contracts/ethereum-1/0x4d919cecfd4793c0d47866c8d0a02a0950737589/) | SiloFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f8031...8ab1f8`](./contracts/ethereum-1/0x6f80310ca7f2c654691d1383149fa1a57d8ab1f8/) | SiloGovernanceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0c899...fc3248`](./contracts/ethereum-1/0xc0c89911c20453b1d897355ee7208e8270fc3248/) | SiloGovernanceTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa89163...eeaf61`](./contracts/ethereum-1/0xa89163f7b2d68a8fba6ca36beed32bd4f3eeaf61/) | SiloGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf12c37...8d92ea`](./contracts/ethereum-1/0xf12c3758c1ec393704f0db8537ef7f57368d92ea/) | SiloLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06bed4...2680a4`](./contracts/ethereum-1/0x06bed4637e8cf9e4efc1b227e0c322d7042680a4/) | SiloLiquidationLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb98bc3...37f1af`](./contracts/ethereum-1/0xb98bc3e3b9ea8d86f6ee321737fa23710737f1af/) | SiloModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd998c3...cf309d`](./contracts/ethereum-1/0xd998c35b7900b344bbbe6555cc11576942cf309d/) | SiloRepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2374f...322a0c`](./contracts/ethereum-1/0xb2374f84b3ceeff6492943df613c9bcf45322a0c/) | SiloRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce3d2e...b168a4`](./contracts/ethereum-1/0xce3d2e0331d6776c79f329140d7ace2e94b168a4/) | SiloSnapshotWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0b2dd...486bb0`](./contracts/ethereum-1/0xf0b2dd79324a66d2108c961d680f7616e1486bb0/) | SiloToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc06053...0c010f`](./contracts/ethereum-1/0xc06053fcad0a0df7cc32289a135bbea9030c010f/) | SimpleERC20Escrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3808e0...ffdc0d`](./contracts/ethereum-1/0x3808e0ee2d944e4119410dcdaf0864a96bffdc0d/) | SimpleUserProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82bfdd...bf4b8a`](./contracts/ethereum-1/0x82bfdd53dd95efa2c3e92543f28d46c566bf4b8a/) | SingleSidedAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x585af0...34f18d`](./contracts/optimism-10/0x585af0b397ac42dbef7f18395426bf878634f18d/) | SinkConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x58f62e...cbfca2`](./contracts/optimism-10/0x58f62efb1528d006d22771623c3c3e7953cbfca2/) | SinkDrain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5aee5f...abcdae`](./contracts/optimism-10/0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae/) | SinkManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x45ff00...ce78a4`](./contracts/optimism-10/0x45ff00822e8235b86cb605ac8295c14628ce78a4/) | SinkManagerFacilitator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x82f0b8...6829c1`](./contracts/arbitrum-42161/0x82f0b8b456c1a451378467398982d4834b6829c1/) | Skimmer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x173f5f...9f3b27`](./contracts/ethereum-1/0x173f5f648b18cf1c7f6aac66a35bf462539f3b27/) | SmartWalletChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5268ba...b120a3`](./contracts/ethereum-1/0x5268ba00308c3e6bd1c4aa1e46d65eb1a4b120a3/) | SmartWalletWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ad930...26b147`](./contracts/ethereum-1/0x0ad930970b60d24bd30f612d287f188a7626b147/) | SnapshotHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1db246...2245f0`](./contracts/optimism-10/0x1db2466d9f5e10d7090e7152b68d62703a2245f0/) | Sonne | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5b22bd...e163b0`](./contracts/optimism-10/0x5b22bd2fc485afe2deaf1ac9e2fad316dde163b0/) | SonneTimelockController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e4cba...ecbcf6`](./contracts/ethereum-1/0x4e4cba3779d56386ed43631b4dcd6d8eacecbcf6/) | SortitionPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x152b59...0ce015`](./contracts/ethereum-1/0x152b59937ecb0f1030d81d2206c4cbb3fd0ce015/) | SpellLevSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75e142...69ec10`](./contracts/ethereum-1/0x75e14253de6a5c2af12d5f1a1ea0a2e11e69ec10/) | SpellOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20cb52...de9430`](./contracts/ethereum-1/0x20cb52832f35c61ccdbe5c336e405fe979de9430/) | SpellPower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66436c...19765d`](./contracts/ethereum-1/0x66436c64da9d9a61bcc3f652490d20d7cf19765d/) | SpellSuperSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x663ef4...1aeb38`](./contracts/ethereum-1/0x663ef4455a07243d9029ba0fc48297ae181aeb38/) | SpellSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34a045...76e526`](./contracts/ethereum-1/0x34a045499247b983d16a49a1b72d5b3b2e76e526/) | Splitter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x14c50f...938636`](./contracts/optimism-10/0x14c50f2527ff4c68fac12394883233c701938636/) | SportAMMLiquidityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xaea1be...93952a`](./contracts/optimism-10/0xaea1be15adb75a49aceef392a6d37625d993952a/) | SportAMMLiquidityPoolRoundMastercopy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xef9865...ebff4a`](./contracts/optimism-10/0xef9865a2d2dc2322d8b4e6ac84b13d4121ebff4a/) | SportPositionalMarketData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x46b1ec...18e154`](./contracts/optimism-10/0x46b1ec25e5e7696ecbae9441d3f79d01b118e154/) | SportPositionalMarketManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x08e2c2...f4e5ae`](./contracts/optimism-10/0x08e2c2ba4f48e1dd103c12a38d515ba980f4e5ae/) | SportsAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x060112...aa2344`](./contracts/optimism-10/0x06011212ec56b65133b13c4ad3f11f1d40aa2344/) | SportsAMMUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8beb5...de90c7`](./contracts/ethereum-1/0xf8beb5c479a9b58f581076697bbce83baade90c7/) | sSpellOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8299ba...7d53df`](./contracts/arbitrum-42161/0x8299baba76ae944ffbcea6525aaacb3c1e7d53df/) | StabilizeCaller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xad8b9d...5380a9`](./contracts/arbitrum-42161/0xad8b9d2abea3ec3abdaf793b93c7467b525380a9/) | StabilizeMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ec0d9...795cdd`](./contracts/ethereum-1/0x7ec0d931affba01b77711c2cd07c76b970795cdd/) | Stabilizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0670e2...9eb4cd`](./contracts/ethereum-1/0x0670e207ccc46c18fc38cdb3305c5a0e889eb4cd/) | StableAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06a220...5e3f6d`](./contracts/ethereum-1/0x06a220976adb39af2e2fac1c2ca523a3155e3f6d/) | StableCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0236b7...a8a42e`](./contracts/ethereum-1/0x0236b7a3996d8c3597173aa95fd2a915c7a8a42e/) | StableConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x404f9e...ca0acb`](./contracts/ethereum-1/0x404f9ecabd4a0d4507c81766e01f76fe52ca0acb/) | StableCreditHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15fe17...26f5f9`](./contracts/ethereum-1/0x15fe17da18288d1799643be1bb07fb939626f5f9/) | StableCreditProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fd639...78ed23`](./contracts/ethereum-1/0x4fd63966879300cafafbb35d157dc5229278ed23/) | StablePhantomPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/) | StableYieldCredit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x41279e...171166`](./contracts/optimism-10/0x41279e29586eb20f9a4f65e031af09fced171166/) | StakedDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fd57b...e1018b`](./contracts/ethereum-1/0x7fd57b46ae1a7b14f6940508381877ee03e1018b/) | StakedENA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x33c69e...e682a1`](./contracts/optimism-10/0x33c69e5c0a7a2bad42d178ec11b881acdbe682a1/) | StakedEXA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01af26...ba1c55`](./contracts/arbitrum-42161/0x01af26b74409d10e15b102621edd29c326ba1c55/) | StakedGlp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb63366...aba240`](./contracts/arbitrum-42161/0xb6336626c56d72ea501b6d14d1abd356c8aba240/) | StakedGlpMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x34ada0...a2acd2`](./contracts/polygon-137/0x34ada096ba56b579ee92803cc9c7dd3bb8a2acd2/) | StakedLIF3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2ee50c...6894e3`](./contracts/polygon-137/0x2ee50c34392e7e7a1d17b0a42328a8d1ad6894e3/) | StakedMvlp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa98d14...749032`](./contracts/ethereum-1/0xa98d1483781c08e60d944a63721b93fe40749032/) | StakedPendle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6733f0...0fd2bc`](./contracts/ethereum-1/0x6733f0283711f225a447e759d859a70b0c0fd2bc/) | StakedVectorETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5291d0...5d26a0`](./contracts/ethereum-1/0x5291d0b8b7d0329ef6895cc759b6fd87125d26a0/) | StakedVECVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe547ca...d02fd2`](./contracts/arbitrum-42161/0xe547cadbe081749e5b3dc53cb792dfaea2d02fd2/) | StakeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb59f4...8a0b81`](./contracts/ethereum-1/0xbb59f486135145ad247b82f9cdf52be4a58a0b81/) | StakerRewardsBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2787f8...495a06`](./contracts/arbitrum-42161/0x2787f89355924a8781acf988f12855c6cd495a06/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xab599b...e0995a`](./contracts/optimism-10/0xab599b2697d836e665706dc59566363e2fe0995a/) | StakingData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3be385...ba3571`](./contracts/arbitrum-42161/0x3be385576d7c282070ad91bf94366de9f9ba3571/) | StakingExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x118b76...069bd8`](./contracts/ethereum-1/0x118b7642b91bcf02c565a3c417534e29e4069bd8/) | StakingPoolRewardsEscrowBeneficiary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | StakingPools | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | StakingPortBacker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x280d48...0810bd`](./contracts/ethereum-1/0x280d48e85f712e067a16d6b25e7ffe261c0810bd/) | StakingRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27b465...7151ed`](./contracts/ethereum-1/0x27b4655bd341993c78c8771bdd0caeb3ff7151ed/) | StakingRewardDistributorGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a758a...e3e9a6`](./contracts/ethereum-1/0x0a758a25997167762e187f960dd0539a4ae3e9a6/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x96ad30...a80356`](./contracts/ethereum-1/0x96ad308cb4479fd2558d40a4abf420565fa80356/) | StakingRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b471a...85e150`](./contracts/ethereum-1/0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150/) | StakingRewardsLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0886e6...08d9cd`](./contracts/optimism-10/0x0886e6bea150ed770b2ee3341332339c5c08d9cd/) | StakingThales | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5830e9...6afb49`](./contracts/optimism-10/0x5830e9e30b55cb5fd6102805fea2cf951f6afb49/) | StakingThalesBonusRewardsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13ad51...5efa60`](./contracts/arbitrum-42161/0x13ad51ed4f1b7e9dc168d8a00cb3f4ddd85efa60/) | StandardArbERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a220e...254675`](./contracts/ethereum-1/0x4a220e6096b25eadb88358cb44068a3248254675/) | StandardToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe376e8...726c2e`](./contracts/ethereum-1/0xe376e8e8e3b0793cd61c6f1283ba18548b726c2e/) | Stash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b0867...156deb`](./contracts/ethereum-1/0x1b086779e47509bdc9f49f1ed31eefb1ef156deb/) | StethFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15152e...448303`](./contracts/ethereum-1/0x15152eee59752f18c2de8fbd4bc83ec20c448303/) | StMATIC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23724d...d2b022`](./contracts/ethereum-1/0x23724d764d8b3d26852ba20d3bc2578093d2b022/) | Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1a8bf9...effb76`](./contracts/optimism-10/0x1a8bf92abe1de4bdbf5fb8af223ec5fedceffb76/) | StrategyAave | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5518ed...942725`](./contracts/optimism-10/0x5518ed1dd612742e3369336ecc0fb22d94942725/) | StrategyArrakisDaiUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1b7974...3dce4c`](./contracts/optimism-10/0x1b797450434e0deda4d2c3198eee1d677d3dce4c/) | StrategyArrakisUsdcDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3cc7de...ca5fc9`](./contracts/arbitrum-42161/0x3cc7de561ee9fd960f6633c13e2e575ebbca5fc9/) | StrategyAutoPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x821863...848eb6`](./contracts/optimism-10/0x821863a25743eaa271fa5e70d9e4632650848eb6/) | StrategyBeethovenxSonne | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2b65fb...2fad6d`](./contracts/optimism-10/0x2b65fb73a3fb0e738bbe0726754801bb422fad6d/) | StrategyBeethovenxUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x012416...80ccef`](./contracts/arbitrum-42161/0x012416d44cd8397bd798c155f91295b6b980ccef/) | StrategyBifiMaxiV5Solidly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2be5d9...f9e88b`](./contracts/ethereum-1/0x2be5d998c95de70d9a38b3d78e49751f10f9e88b/) | StrategyControllerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40bd98...549afb`](./contracts/ethereum-1/0x40bd98e3cce4f34c087a73dd3d05558733549afb/) | StrategyCreamYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd643cf...d47ede`](./contracts/ethereum-1/0xd643cf07344428770b84973e049a1c18b5d47ede/) | StrategyDForceDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01b354...11ab5c`](./contracts/ethereum-1/0x01b354a9fb34760455ee9cbe7d71d2ce5c11ab5c/) | StrategyDForceUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x787c77...a64bd8`](./contracts/ethereum-1/0x787c771035bde631391ced5c083db424a4a64bd8/) | StrategyDForceUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa5125b...90579a`](./contracts/arbitrum-42161/0xa5125b183f8e6e0b28455fa1bd4dc4282f90579a/) | StrategyEnnead | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0275bf...5647c5`](./contracts/optimism-10/0x0275bf949922a3a06963c1556cb2e198d15647c5/) | StrategyEts | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc2de28...977694`](./contracts/optimism-10/0xc2de28aeac3d4ca04091468cfe5d6cab88977694/) | StrategyEtsDaiUsdt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x028adf...27e740`](./contracts/optimism-10/0x028adfc6e1a569720dcffc6e36ffc4278627e740/) | StrategyEtsUsdcDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6d110...f8b2dc`](./contracts/ethereum-1/0xe6d1100826c9b2db663edde5b2ff16e0baf8b2dc/) | StrategyFedPartner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x081fc0...854064`](./contracts/optimism-10/0x081fc004df1f88e59840ec04fb0ef1e4b0854064/) | StrategyGammaUsdcDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x216eee...6a638d`](./contracts/arbitrum-42161/0x216eee15d1e3faad34181f66dd0b665f556a638d/) | StrategyGLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbbf258...fc5d56`](./contracts/arbitrum-42161/0xbbf2588fe012888621dbe36dfdec72d117fc5d56/) | StrategyGM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2ca3d8...5a1780`](./contracts/arbitrum-42161/0x2ca3d8569fff9d394063853712aac5ac5a5a1780/) | StrategyGMX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x53b5f9...61f603`](./contracts/arbitrum-42161/0x53b5f983cf086a35fbbee40551e5bc913961f603/) | StrategyGMXUniV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x56154f...5aecb0`](./contracts/arbitrum-42161/0x56154faf5e8c25844208b391fb6d0f14d55aecb0/) | StrategyGNS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x08ba51...ec690b`](./contracts/arbitrum-42161/0x08ba51a3645678182b15a1a177e50ecadaec690b/) | StrategyHop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x50d694...6213af`](./contracts/arbitrum-42161/0x50d6945632e6d89cc9c9d38e1fe5b6250f6213af/) | StrategyHopCamelot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdd456d...a187b5`](./contracts/arbitrum-42161/0xdd456d6fc0e42bf41be76fb0f84f39d93ca187b5/) | StrategyHopCamelotUniV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xebf278...49acbf`](./contracts/arbitrum-42161/0xebf278aacad8ad151e637fbc8acbc5a3a449acbf/) | StrategyHopUniV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x337800...aaf0fd`](./contracts/optimism-10/0x33780001580ebed03362dc07372047523eaaf0fd/) | StrategyKyberSwapUsdcDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x062d8e...3e92d0`](./contracts/optimism-10/0x062d8e9189230601329a0ca09fe8de691a3e92d0/) | StrategyKyberSwapUsdcUsdt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28e5a4...e083a5`](./contracts/ethereum-1/0x28e5a47820313da9c74b8f2295795da6e6e083a5/) | StrategyMKRVaultDAIDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31641a...69156f`](./contracts/ethereum-1/0x31641a4836c172640fa1c02999b09c5d1069156f/) | StrategyMStableSavings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x442510...e0b81c`](./contracts/ethereum-1/0x442510ba285d5390cb5385a91a380d4268e0b81c/) | StrategyMStableSavingsTUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7c02fc...c4e147`](./contracts/arbitrum-42161/0x7c02fc607147a3ec19c7c5bc37b47466e4c4e147/) | StrategyPassiveManagerCamelot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8b7c6d...b94193`](./contracts/arbitrum-42161/0x8b7c6d1e261d243442cc2f72436677ce33b94193/) | StrategyPassiveManagerPancake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfb3ded...9ac440`](./contracts/arbitrum-42161/0xfb3ded02359c6b5c36eea2123663b458569ac440/) | StrategyPassiveManagerRamses | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9520ae...ffe641`](./contracts/optimism-10/0x9520aef41161f09dce78a8e79482b654d4ffe641/) | StrategyPikaUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x03df70...104b9e`](./contracts/optimism-10/0x03df70538334f98a5fb71dd6341d3bc6dd104b9e/) | StrategyPikaV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16c20c...597c7a`](./contracts/ethereum-1/0x16c20cfeda6e9ebfb9e557e76a2dfbe85c597c7a/) | StrategyProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x345db9...8b20cb`](./contracts/optimism-10/0x345db956656fe91cf65a47e33347bd05618b20cb/) | StrategyReaperSonneDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5b4f6f...6de836`](./contracts/optimism-10/0x5b4f6f099d5178209e032644b1184bfe906de836/) | StrategyReaperSonneDaiDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4aa217...220cf4`](./contracts/optimism-10/0x4aa2172b7c6359e0f5050b16e0fc815419220cf4/) | StrategyReaperSonneUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8d2126...528298`](./contracts/optimism-10/0x8d2126e13d4fb57b4dd1e37cb0e74ac270528298/) | StrategyReaperSonneUsdt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x304d04...b1f4ef`](./contracts/optimism-10/0x304d04acf5637d01588e51100c6b6fdee1b1f4ef/) | StrategyRubiconDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3ddd03...93e09d`](./contracts/optimism-10/0x3ddd035b53035e5e72b5e3d36685f4e28893e09d/) | StrategyRubiconUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0fbba9...2802bc`](./contracts/optimism-10/0x0fbba9778386eb874dd937feee98ab9cff2802bc/) | StrategyRubiconUsdt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5cf7f5...185755`](./contracts/arbitrum-42161/0x5cf7f5a29b74572c0a2832ef2220e2e645185755/) | StrategySiloCollateralOnly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2288c4...4ec989`](./contracts/ethereum-1/0x2288c409e67b6ce52180f97a8cddf7abc24ec989/) | StrategySNXSUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2e25b0...705e72`](./contracts/optimism-10/0x2e25b00f6c4b7af929043f9778e540d6e3705e72/) | StrategySonneDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7a3fde...89f9f7`](./contracts/optimism-10/0x7a3fde3aa22740850b1e03caa986976acb89f9f7/) | StrategySonneUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0b2876...09d31d`](./contracts/optimism-10/0x0b287606f1867be9d0435089cb08faa16109d31d/) | StrategySushiswapUsdcUsdt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x22c40e...f4047b`](./contracts/optimism-10/0x22c40e877ae928e90d0fde276973bacee2f4047b/) | StrategySynapseUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd3da26...7b800a`](./contracts/optimism-10/0xd3da26165a1d8a89f02a09d51940e9e8777b800a/) | StrategyTest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2b60ff...f9edcf`](./contracts/optimism-10/0x2b60ffd309929af6be194b1f9428b63980f9edcf/) | StrategyUs3UsdcWethOp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x291120...e5e88c`](./contracts/optimism-10/0x291120ffa233285f82a741a2970faf246fe5e88c/) | StrategyUsdPlusDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35cee4...ba817a`](./contracts/ethereum-1/0x35cee4c61b7619956e0b2015b5411f93cbba817a/) | StrategyVaultTUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25faca...20d8d6`](./contracts/ethereum-1/0x25faca21dd2ad7edb3a027d543e617496820d8d6/) | StrategyVaultUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7f343c...7cb373`](./contracts/optimism-10/0x7f343c16c0c69a714e0ef8d508c28ad82a7cb373/) | StrategyVelodromeUsdcDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb50bf8...5cff27`](./contracts/arbitrum-42161/0xb50bf83794c06382ad92decb6f56e10ec95cff27/) | StrategyVenus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2955ba...d018ec`](./contracts/optimism-10/0x2955ba0fa44202090d840d36b2cae53036d018ec/) | StrategyVesperUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe197e...da0b73`](./contracts/ethereum-1/0xbe197e668d13746bb92e675dea2868ff14da0b73/) | StrategyYffi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x395f93...88797c`](./contracts/ethereum-1/0x395f93350d5102b6139abfc84a7d6ee70488797c/) | StrategyYFIGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2de055...edfa70`](./contracts/ethereum-1/0x2de055fec2b826ed4a7478ceddbeff82c1edfa70/) | StrategyYfii | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3c48a9...1efa44`](./contracts/arbitrum-42161/0x3c48a997ef5badef5c07780342af0f7ed71efa44/) | SubaccountRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10223d...16ad4d`](./contracts/arbitrum-42161/0x10223d466d9acdf50798fbc3ac0c231eb616ad4d/) | SubgraphAvailabilityManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3fbd54...22b23f`](./contracts/arbitrum-42161/0x3fbd54f0cc17b7ae649008deea12ed7d2622b23f/) | SubgraphNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x96cce9...815ebe`](./contracts/arbitrum-42161/0x96cce9b6489744630a058324fb22e7cd02815ebe/) | SubgraphNFTDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x80d1a2...4747cd`](./contracts/arbitrum-42161/0x80d1a23472a4ecfa484c95779d5ce855c24747cd/) | SubgraphService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x482f58...67a750`](./contracts/arbitrum-42161/0x482f58d3513e386036670404b35cb3f2df67a750/) | Subscriptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x495193...447a69`](./contracts/optimism-10/0x495193daebde03e12857f4d3bb8984da2d447a69/) | SugarHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2eb91...41978f`](./contracts/ethereum-1/0xf2eb916605402e5c7e81f7d609d0e2204841978f/) | SupplyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0f307e...0b7e2b`](./contracts/polygon-137/0x0f307e021a7e7d03b6d753b972d349f48d0b7e2b/) | SupplyMiner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3e8b82...cb9c26`](./contracts/optimism-10/0x3e8b82326ff5f2f10da8cea117bd44343ccb9c26/) | SupplySchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf574cb...6efef7`](./contracts/ethereum-1/0xf574cbebbd549273af82b42cd0230de9ea6efef7/) | SusdeMonetaryPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66d5c6...9b3365`](./contracts/ethereum-1/0x66d5c66e7c83e0682d947176534242c9f19b3365/) | sVEC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x91c894...812733`](./contracts/ethereum-1/0x91c894635d8cfd2c501763394fd66dc237812733/) | sVECVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad4bfa...7a1879`](./contracts/ethereum-1/0xad4bfafae75ecd3fed5cfad4e4e9847cd47a1879/) | svETHRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e2875...ec1314`](./contracts/ethereum-1/0x6e28754fe97c306b6adcbc9dd4f6cc5ee7ec1314/) | svETHZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9485db...4a97d9`](./contracts/ethereum-1/0x9485dbda44b279311e3eee374ced60b5364a97d9/) | sVotingEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf47b8b...b33535`](./contracts/optimism-10/0xf47b8b1daf12c3058b757a1446dadfa8e4b33535/) | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd0fcf...d18366`](./contracts/ethereum-1/0xcd0fcf8a31bc78ec07752e9ccd3960e936d18366/) | Swapper1InchV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23f20b...6be18b`](./contracts/ethereum-1/0x23f20b7ea6194b639f75f2295a8a98ccdf6be18b/) | SwapperEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa014a4...97a549`](./contracts/optimism-10/0xa014a485d64efb236423004ab1a99c0aaa97a549/) | SwapperSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b3d9f...40ff26`](./contracts/ethereum-1/0x6b3d9fe074c18a2fa10a8206670ef7f65f40ff26/) | SweeperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7ab07...415334`](./contracts/ethereum-1/0xe7ab07d7eeb29031e7d2ac083bf0d2ef0e415334/) | SwETHPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0485a4...e99b6c`](./contracts/ethereum-1/0x0485a423c0b8ff2f5aa2ec35a32d1c67a2e99b6c/) | Synthetic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaa90d9...38ffdc`](./contracts/ethereum-1/0xaa90d9cc2f41a150489da5fffba2060a2938ffdc/) | SyntheticRebaseDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ed4a4...f8c8be`](./contracts/ethereum-1/0x5ed4a410a612f2fe625a8f3cb4d70f197ff8c8be/) | SynthetixAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0691cf...04c2cf`](./contracts/ethereum-1/0x0691cf9d171d6c9c3876598b14732248b204c2cf/) | SynthetixExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb50057...86823f`](./contracts/ethereum-1/0xb5005751f2ac076a5a612a8be8f3b953dd86823f/) | SYRedeemAndSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcdf702...94bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | T | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x41cccb...486d1f`](./contracts/optimism-10/0x41cccb4935386e0471922d460d9194b7db486d1f/) | TaleOfThalesNFTs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x33f9e9...a0f05a`](./contracts/arbitrum-42161/0x33f9e93266ce0e108fc85dde2f71dab555a0f05a/) | TAPVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63a152...26750d`](./contracts/ethereum-1/0x63a152ea1cd78ac3c7c1fcf1322dc6de1126750d/) | TBTCConstants | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10b66b...37cdf0`](./contracts/ethereum-1/0x10b66bd1e3b5a936b7f8dbc5976004311037cdf0/) | TBTCDepositToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe20a5c...1ab64a`](./contracts/ethereum-1/0xe20a5c79b39bc8c363f0f49adcfa82c2a01ab64a/) | TBTCSystem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52818e...277fd4`](./contracts/ethereum-1/0x52818e501612d3c5b37b5f9b83b024342c277fd4/) | TBTCVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x101dd6...e24a9f`](./contracts/ethereum-1/0x101dd6f1f5e396f6ab87407df637cce814e24a9f/) | TendiesFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e109e...c07aef`](./contracts/ethereum-1/0x6e109e9dd7fa1a58bc3eff667e8e41fc3cc07aef/) | TetherToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x129e14...554c2f`](./contracts/optimism-10/0x129e14f5e79f1423b79d309a2a7ee43121554c2f/) | ThalesAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x092e6b...d58b70`](./contracts/optimism-10/0x092e6b8dfddb4b732c89deb4a700868cc5d58b70/) | ThalesAMMLiquidityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8f8cc3...132018`](./contracts/optimism-10/0x8f8cc357aaa401cb6f7e01d56c59aa8cb2132018/) | ThalesAMMLiquidityPoolRoundMastercopy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x279c0d...341373`](./contracts/optimism-10/0x279c0d239d0c036e74aadf872d604af37e341373/) | ThalesAMMUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0abc94...7a4ee3`](./contracts/optimism-10/0x0abc94987f6b98bfe6fd40f749e445a2857a4ee3/) | ThalesStakingRewardsPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2447ce...9f9985`](./contracts/optimism-10/0x2447ce55d230c01fc430725a8613d852289f9985/) | TherundownConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fc83f...aae530`](./contracts/ethereum-1/0x1fc83f75499b7620d53757f0b01e2ae626aae530/) | ThreeCrvLevSwapperV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13f193...24ddab`](./contracts/ethereum-1/0x13f193d5328d967076c5ed80be9ed5a79224ddab/) | ThreeCrvOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x286ed6...0af7c5`](./contracts/ethereum-1/0x286ed6c7a0797e370ed47c8f0f57ad68060af7c5/) | ThreeCrvSwapperV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36d938...3889bf`](./contracts/ethereum-1/0x36d9386ad4b8636459c365295ddc7e70e33889bf/) | ThreeCryptoLevSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20915f...0605f1`](./contracts/ethereum-1/0x20915f71474c127e5c3cdc41c75cb21d4e0605f1/) | ThreeCryptoOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e1ea2...b5bc85`](./contracts/ethereum-1/0x0e1ea2269d6e22dfeebce7b0a4c6c3d415b5bc85/) | ThreeCryptoSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x641e3b...8e23da`](./contracts/ethereum-1/0x641e3b5b081fb2fb8b43d5a163649312a28e23da/) | ThreePoolStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67023c...dfdd6d`](./contracts/ethereum-1/0x67023c56548ba15ad3542e65493311f19adfdd6d/) | ThreePoolStrategyProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2df934...60da0d`](./contracts/ethereum-1/0x2df93404574dff883e2b35911a684dab1760da0d/) | TimeLoanPairFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09214c...9b15b8`](./contracts/arbitrum-42161/0x09214c0a3594fbcad59a58099b0a63e2b29b15b8/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x343902...5e8227`](./contracts/optimism-10/0x343902fe4d72e24b29f22d787b2e54eeea5e8227/) | TimelockControllerWithCounter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x026d4b...1dfb61`](./contracts/ethereum-1/0x026d4b8d693f6c446782c2c61ee357ec561dfb61/) | TimelockGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cf049...47edbc`](./contracts/ethereum-1/0x1cf0494e03516ce466780d34c1f96269eb47edbc/) | TimeLockNonTransferablePoolUnlocked | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | TimeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f2e21...2b44a2`](./contracts/ethereum-1/0x4f2e21062db87d1023e6e5941c5e8c2de32b44a2/) | TokenBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7f38c...fdc3a5`](./contracts/ethereum-1/0xc7f38c08e1f0b929a2b6af28a567aed839fdc3a5/) | TokenClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35f517...e0bc85`](./contracts/ethereum-1/0x35f517cab9a37bc31091c2f155d965af84e0bc85/) | TokenContinuousDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf48a59...b34bfc`](./contracts/ethereum-1/0xf48a59434609b6e934c2cf091848fa2d28b34bfc/) | TokenConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29c317...0bc92d`](./contracts/ethereum-1/0x29c317dccc79ef77ef04bb7e9a852926050bc92d/) | TokenListingManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fe468...6e5705`](./contracts/ethereum-1/0x2fe468219e40b732ee43dc5c1d6295bd796e5705/) | TokenListingManagerAdvanced | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ef815...75ad59`](./contracts/arbitrum-42161/0x1ef8156b46e6f5a1973bff4975177fd13275ad59/) | TokenManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x334b18...e5783c`](./contracts/ethereum-1/0x334b18e5e81657efa2057f80e19b8e81f0e5783c/) | TokenMapping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7be03b...3d27f6`](./contracts/ethereum-1/0x7be03b36bb6eaaed3223f50c7b6ac215673d27f6/) | TokenMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05f995...582dab`](./contracts/ethereum-1/0x05f9955ac8236a163833c92b492c67632b582dab/) | TokenSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e37df...6ad622`](./contracts/ethereum-1/0x0e37df413f97fc198a84a21bc463c41b516ad622/) | TokensFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x42dc54...4830ea`](./contracts/optimism-10/0x42dc54fb50db556fa6ffba765f1141536d4830ea/) | TokenSideChainMultiBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda534b...681365`](./contracts/ethereum-1/0xda534b567099ca481384133bc121d5843f681365/) | TokenStakingEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fe43a...655f41`](./contracts/ethereum-1/0x2fe43a28ad82a7fc5422ab8e9ea4efdeb1655f41/) | TokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41c9b5...79d91a`](./contracts/ethereum-1/0x41c9b5639e3f2f6c61e9b78b2c6ff3746e79d91a/) | TopUps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x788f0b...3854aa`](./contracts/ethereum-1/0x788f0b81809be6f5e07f277a676c7f392c3854aa/) | TotalEthValueReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfa38b8...e50698`](./contracts/polygon-137/0xfa38b8632153b2d083a94590e577298c0ae50698/) | Transfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x124ab7...cf81df`](./contracts/ethereum-1/0x124ab70402eaf0ba6b18f0b304577c336dcf81df/) | TransferGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68818d...a9a6c1`](./contracts/ethereum-1/0x68818d468c0e1fefdc56824ab4f3f053a8a9a6c1/) | TransferRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab7a49...122086`](./contracts/ethereum-1/0xab7a49b971afdc7ee26255038c82b4006d122086/) | Transmuter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45f81e...ff674b`](./contracts/ethereum-1/0x45f81ef5f2ae78f49851f7a62e4061ff54ff674b/) | TransmuterEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1033dd...68ac6d`](./contracts/optimism-10/0x1033dd8415a282db52f14902e91de6e91868ac6d/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93a62d...a0efde`](./contracts/ethereum-1/0x93a62da5a14c80f265dabc077fcee437b1a0efde/) | TreasuryVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d360...ed8508`](./contracts/ethereum-1/0x01d360c54eb27a6a95ea1f8e309e5c8263ed8508/) | TreasuryVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbdaf49...b1632f`](./contracts/ethereum-1/0xbdaf491a8c45981ccdfe46455f9d62b5c9b1632f/) | TriCryptoUpdator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xbdd6f9...5170ef`](./contracts/optimism-10/0xbdd6f9662e904a9176aafcbdded45d076b5170ef/) | Trig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b0c25...747556`](./contracts/ethereum-1/0x1b0c2586df3daad42ac2fdcaa0f6b91623747556/) | TripleSlopeRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93dc6a...1013db`](./contracts/ethereum-1/0x93dc6a333a99c0ede1cd346ccf079ea8451013db/) | TrustlessOTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x490e37...7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | UChildDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00032e...b5f25b`](./contracts/polygon-137/0x00032e33ac57c73f9d4e3e85a97488214cb5f25b/) | UChildERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x000de6...6ec08c`](./contracts/polygon-137/0x000de668684839f97d4845f32a43e913366ec08c/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2791bc...a84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x007854...0df843`](./contracts/ethereum-1/0x007854fdcc9c6f748b435e63745599fb1a0df843/) | UnderwriterToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61da8b...61d136`](./contracts/ethereum-1/0x61da8b0808cea5281a912cd85421a6d12261d136/) | UniOracleFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7d6969...8d6778`](./contracts/optimism-10/0x7d69692389cda1ed99fd04d3081d7ac9368d6778/) | Unitroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54f454...b34e79`](./contracts/ethereum-1/0x54f454d747e037da288db568d4121117eab34e79/) | UniV2TWAMMFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa007a9...e808de`](./contracts/ethereum-1/0xa007a9716dba05289df85a90d0fd9d39bee808de/) | UniV2TWAMMRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59985d...d9174b`](./contracts/ethereum-1/0x59985d79e1e69f659f4ab97db07a35ce73d9174b/) | UniV3TWAPOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0b3ba5...3f12d1`](./contracts/optimism-10/0x0b3ba5b030b95e5d861448d77db7bee3403f12d1/) | UniversalRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81b08a...862439`](./contracts/ethereum-1/0x81b08a0d57ea284b282b12a574139db0ec862439/) | UnlockedWithdrawalsInitializer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13dfeb...cadd85`](./contracts/ethereum-1/0x13dfeb3cc4f05229c449c30a9ae4141d7fcadd85/) | Unwrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43ffb6...0c2f01`](./contracts/ethereum-1/0x43ffb63f98ba9b687092f53235490650b30c2f01/) | Usd0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aeb5c...49ae32`](./contracts/ethereum-1/0x2aeb5c8776567c4eeebda1450e343b1bef49ae32/) | USD0LpOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0202b5...11d62f`](./contracts/ethereum-1/0x0202b5063b40bab1f0548b83bdb6bfbefb11d62f/) | Usd0PP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x40757a...db2d51`](./contracts/arbitrum-42161/0x40757a2883f82392c49ce86cb0d92d0653db2d51/) | USDG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x02803f...7ed986`](./contracts/optimism-10/0x02803f6fcb3eda19c854b2defb39cbc3817ed986/) | UsdPlusToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0531df...43142e`](./contracts/optimism-10/0x0531dfd07643b549a07f21dd5ba1da1e1c43142e/) | USDR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x39f9f4...b8f8df`](./contracts/optimism-10/0x39f9f458337d801378706748705b0be9adb8f8df/) | USDRMigrationV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f3771...11d864`](./contracts/ethereum-1/0x3f37712726c9e509c5479f13e17cb1033411d864/) | USTLevSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x908fcb...a54536`](./contracts/ethereum-1/0x908fcbf4cc0cb550cdaf668c94bf75321da54536/) | USTMiddleLayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f5126...3268a7`](./contracts/ethereum-1/0x4f51264b07db8b2910e892eeef22460de23268a7/) | USTOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6191a...2f39e2`](./contracts/ethereum-1/0xe6191aa754f9a881e0a73f2028edf324242f39e2/) | USTStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0c29b...63d146`](./contracts/ethereum-1/0xe0c29b1a278d4b5eae5016a7bc9bfee6c663d146/) | USTStrategyV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1067c6...13342c`](./contracts/ethereum-1/0x1067c6dc34c86b5f23f4a9bdbe7a639ad613342c/) | USTSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x015b94...63541f`](./contracts/ethereum-1/0x015b94ab2b0a14a96030573fbcd0f3d3d763541f/) | UZD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x79be52...802984`](./contracts/ethereum-1/0x79be524aeca16d117a0a9f0dfa6aec5e31802984/) | V00_Marketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x265a48...d61edd`](./contracts/ethereum-1/0x265a48bc9bf5d274e8f88190c26d713524d61edd/) | V00_UserRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7db7d8...d6b2f6`](./contracts/ethereum-1/0x7db7d8be39b6bb07115445b5ebaa7b8345d6b2f6/) | Validator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a6c93...5b78eb`](./contracts/ethereum-1/0x0a6c933495a7bb768d95f4667b074dd5b95b78eb/) | ValidatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x650af5...504b76`](./contracts/optimism-10/0x650af55d5877f289837c30b94af91538a7504b76/) | ValueRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x522cb8...a14aa0`](./contracts/ethereum-1/0x522cb8f25896691bdc5f69aabfccd50647a14aa0/) | ValueRouterImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ef055...a6452b`](./contracts/ethereum-1/0x1ef0553feb80e6f133cae3092e38f0b23da6452b/) | VaultAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc0b52...f6d7dc`](./contracts/ethereum-1/0xdc0b52c04cdc0099aefcca8b0675a00cf8f6d7dc/) | VaultAPSStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0660bf...b1369d`](./contracts/ethereum-1/0x0660bf15a89d8e90cba1b3f0ccf493c415b1369d/) | VaultCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe56d2e...afd93a`](./contracts/arbitrum-42161/0xe56d2e4c685e67c866c292b583be732068afd93a/) | VaultErrorController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe082eb...2734fc`](./contracts/ethereum-1/0xe082eb109fad53ea8db9827ce6b8ef74882734fc/) | VaultFed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x97b689...1f227f`](./contracts/optimism-10/0x97b6897aad7aba3861c04c0e6388fc02af1f227f/) | VaultManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x16cd38...43d5aa`](./contracts/optimism-10/0x16cd38b1b54e7abf307cb2697e2d9321e843d5aa/) | VaultManagerLiquidationBoost | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5255e9...c4d3f9`](./contracts/ethereum-1/0x5255e95ce870f6c92bdc533221cfa011dec4d3f9/) | VaultNativeStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1cf457...2b5de3`](./contracts/arbitrum-42161/0x1cf4579904eb2acda0e4081e39ec10d0c32b5de3/) | VaultPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x060cbb...463cc0`](./contracts/arbitrum-42161/0x060cbba8730eff54ee24e08d6a4973f376463cc0/) | VaultReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x03175c...ac6ab0`](./contracts/polygon-137/0x03175c19cb1d30fa6060331a9ec181e04cac6ab0/) | VaultsCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2d49e6...dcb417`](./contracts/polygon-137/0x2d49e60555d0372be23e2b24aeb3e5ea55dcb417/) | VaultsCoreState | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x85304e...902882`](./contracts/polygon-137/0x85304efe0f7b1a67c49086b7dac53e75ca902882/) | VaultsDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57ca31...cb70d8`](./contracts/ethereum-1/0x57ca31224bec6901b353251840ae4d10c3cb70d8/) | VaultsRegistryHelper2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d09fa...83c30b`](./contracts/ethereum-1/0x2d09fac78bbbcee4af6dfae5d3dd425b2883c30b/) | VaultStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25041c...ad8739`](./contracts/ethereum-1/0x25041ccb8352b9ba65883a94685aef07a5ad8739/) | VaultValueChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x443299...35e9ca`](./contracts/ethereum-1/0x443299d9b347ae68c42d4909efa1892caa35e9ca/) | ve_query | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4a9ea0...1782dd`](./contracts/optimism-10/0x4a9ea0dd5649ec4b6745c60d1769e2184c1782dd/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfdc28c...9be9b1`](./contracts/ethereum-1/0xfdc28cd1bfebf3033870c0344b4e0bee639be9b1/) | VECStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bb9b6...5d8447`](./contracts/ethereum-1/0x1bb9b64927e0c5e207c9db4093b3738eef5d8447/) | Vector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3abcf9...13c969`](./contracts/ethereum-1/0x3abcf9dc9e221ac78b31cd1b9d9f5721a513c969/) | VectorBonding | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38d64c...6fb4a0`](./contracts/ethereum-1/0x38d64ce1bdf1a9f24e0ec469c9cade61236fb4a0/) | VectorETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d476b...476bcf`](./contracts/ethereum-1/0x2d476be2269dedaaa99d9c50686a8e1000476bcf/) | VectorETHManagement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dd568...371064`](./contracts/ethereum-1/0x2dd568028682ff2961cc341a4849f1b32f371064/) | VectorTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaa9d91...f88a8c`](./contracts/ethereum-1/0xaa9d911947122cc49cc8e0226e808c1a87f88a8c/) | VectorVest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7abcfd...75f1f8`](./contracts/ethereum-1/0x7abcfda9adb27d2291a189d7153af91d5975f1f8/) | VECVest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc6a9c9...62181a`](./contracts/optimism-10/0xc6a9c939eeb37a49161655f6cc153465de62181a/) | veKwentaRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3c8b65...a11a05`](./contracts/optimism-10/0x3c8b650257cfb5f272f799f5e2b4e65093a11a05/) | Velo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xe3c5e2...93fa51`](./contracts/optimism-10/0xe3c5e29ea198e617ebc707718707beff9393fa51/) | VelodromeLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1f82e1...cbe989`](./contracts/optimism-10/0x1f82e10d58aef03dea2e478029fb0387a1cbe989/) | VeloGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x07f544...36f5ce`](./contracts/optimism-10/0x07f544813e9fb63d57a92f28fbd3ff0f7136f5ce/) | VeloOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cca7e...47680e`](./contracts/ethereum-1/0x1cca7e410ee41739792ea0a24e00349dd247680e/) | VendingMachine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce1f98...026d4b`](./contracts/ethereum-1/0xce1f983c29f7a6c0c0dfa78c4d8fe7bdfe026d4b/) | VendingMachineV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7570a2...6437e6`](./contracts/ethereum-1/0x7570a2350183b4bdf7ca74fad3fc19048e6437e6/) | VendingMachineV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x417a5b...968cca`](./contracts/polygon-137/0x417a5b82068e8b83c67680b649d7a84fbe968cca/) | VEPowerOracleReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x559d12...46c5f1`](./contracts/ethereum-1/0x559d12a014497f558a2020a89cda13983846c5f1/) | VEPowerOracleSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x199070...363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/) | Vester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x57866d...789b60`](./contracts/arbitrum-42161/0x57866d65acbb7ba3269807bf7af4019366789b60/) | VesterCap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xb4bf17...517971`](./contracts/optimism-10/0xb4bf17210844418f9f2d3b90036e11aa40517971/) | VesterCliff | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8e1036...37ad10`](./contracts/optimism-10/0x8e10362334a4549640481d330a0020238b37ad10/) | VesterSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f5981...a7f03c`](./contracts/ethereum-1/0x4f59818105abe05ae793a8caedb39fc2bea7f03c/) | VestingVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa508e8...4107b0`](./contracts/ethereum-1/0xa508e87a4c362bf53c3ebab11ea78f57094107b0/) | vETHOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a70cd...6ecbe8`](./contracts/ethereum-1/0x5a70cd937ba3daec8188e937e243ffa43d6ecbe8/) | VeYfiPositionHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e2abf...15d8b7`](./contracts/ethereum-1/0x7e2abf55ef51ca1029d4c5814a35339a3415d8b7/) | View | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6895c1...1e612a`](./contracts/optimism-10/0x6895c1c37e466dcd5c9c17b3c30dbe0b261e612a/) | vKwentaRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c572b...49d920`](./contracts/ethereum-1/0x1c572bf5306c086b43f6f91f032296a25b49d920/) | VotemarketGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x543e3e...d10ae9`](./contracts/optimism-10/0x543e3e0ef9a0ff2d24b5e412763f637a2ad10ae9/) | VotePreviewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x09236c...b8cf7e`](./contracts/optimism-10/0x09236cff45047dbee6b921e00704bed6d6b8cf7e/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e42ac...fbd58e`](./contracts/ethereum-1/0x0e42acbd23faee03249daff896b78d7e79fbd58e/) | VotingEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x79e902...e7c6be`](./contracts/polygon-137/0x79e902ce449772decaf339aacc133a40cce7c6be/) | VotingMiner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8daa6...1c4744`](./contracts/ethereum-1/0xd8daa686de90bf52225628e238b7b392fa1c4744/) | VotingResultBroadcaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x756e7c...ada8ec`](./contracts/optimism-10/0x756e7c245c69d351fffbfb88ba234aa395ada8ec/) | VotingRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ce6df...027be1`](./contracts/ethereum-1/0x0ce6df2119f649ff6f547bfaf8f4bb7c3b027be1/) | VotiumGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00702b...7f6bdb`](./contracts/ethereum-1/0x00702bbdead24c40647f235f15971db0867f6bdb/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd14a17...df4ee1`](./contracts/optimism-10/0xd14a17332c13df64be70ccc4ebbf0b0c29df4ee1/) | WadRayMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10fb59...43ffe5`](./contracts/ethereum-1/0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5/) | WalletCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30019d...fbdec2`](./contracts/ethereum-1/0x30019d85a86abd3cda1167f4c052690c32fbdec2/) | WalletProposalValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08d7e8...65c832`](./contracts/ethereum-1/0x08d7e8ce124921caafd7670502379ced0065c832/) | WalletRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6aed6c...d47fe8`](./contracts/ethereum-1/0x6aed6cc30d1b2770771052555d257da86ed47fe8/) | WalletRegistryGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc67913...ba47bf`](./contracts/ethereum-1/0xc67913137429985416dbce28d9fa9ec960ba47bf/) | Wallets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2518b...2de4d7`](./contracts/ethereum-1/0xa2518b71ee64e910741f5cf480b19e8e402de4d7/) | WBTC-crvUSDleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a5b5e...5c0da8`](./contracts/ethereum-1/0x6a5b5e025f2febf11646050e28240279215c0da8/) | WbtcLevSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x292a6f...5b3f0a`](./contracts/ethereum-1/0x292a6f6156c9e197aa2d059a3194ea8d235b3f0a/) | WbtcOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd1052...20b6b0`](./contracts/ethereum-1/0xdd1052137472cca4c2f55b93cc9c0f06ec20b6b0/) | WbtcOracleMig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c6a54...19febf`](./contracts/ethereum-1/0x6c6a54a124e7b9859014425b8c0142ee0b19febf/) | WbtcSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8f498c...484ca0`](./contracts/optimism-10/0x8f498c8240e621f8050249d1c2f5f2aaee484ca0/) | WebauthnOwnerPlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x380aab...4d0fad`](./contracts/ethereum-1/0x380aabe019ed2a9c2d632b51eddd30fd804d0fad/) | WeightedPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x205d52...d7e0f5`](./contracts/ethereum-1/0x205d52e9ea8e42659ac5c7f83863b18d27d7e0f5/) | WethLevSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02dcc3...56557a`](./contracts/ethereum-1/0x02dcc3aaa2f0c97fe0abfaf07df3e0c7ae56557a/) | WethOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb81be...245437`](./contracts/ethereum-1/0xfb81be4bde317d32ec6934db87e05cfdc5245437/) | WethSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dfcad...65e55e`](./contracts/ethereum-1/0x4dfcad285ef39fed84e77edf1b7dbc442565e55e/) | WhitelistAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0d200...183f2b`](./contracts/ethereum-1/0xe0d2007f6f2a71b90143d6667257d95643183f2b/) | WhitelistedCauldronV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x369d81...d4da07`](./contracts/ethereum-1/0x369d81cf263abc7ee567d8836a39234141d4da07/) | WhitelistedCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f59cc...b72a8c`](./contracts/ethereum-1/0x4f59cc0e919be7ebbf1c33e6eec8506df4b72a8c/) | WhitelistedNFTSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cc311...79d90a`](./contracts/ethereum-1/0x0cc3114cd2e4adc3ed5691fa28b8cf106579d90a/) | Whitelister | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f0c30...8d1fa9`](./contracts/ethereum-1/0x0f0c30f294dc0ca8c315683fc036179e1d8d1fa9/) | WhitePaperInterestRateModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02489a...1009df`](./contracts/ethereum-1/0x02489ac60f7f581445b7d2dd59bb0a415a1009df/) | WidgetSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x069ee6...fc1cfb`](./contracts/ethereum-1/0x069ee67ccd267c049aa78f787b327315e6fc1cfb/) | Withdrawer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x388782...4eb830`](./contracts/ethereum-1/0x388782b21275f75255f3ee08e23bd3991d4eb830/) | WOETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x795551...3086a8`](./contracts/optimism-10/0x7955519e14fdf498e28831f4cc06af4b8e3086a8/) | WrappedExternalBribeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdeabeb...16e632`](./contracts/ethereum-1/0xdeabeb7dfda1deff8a90fde8a16d7a42d316e632/) | WrappedOusd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xe56145...92bc1a`](./contracts/optimism-10/0xe561451322a5efc51e6f8ffa558c7482c892bc1a/) | WrappedUsdPlusRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0b8f31...6915bb`](./contracts/optimism-10/0x0b8f31480249cc717081928b8af733f45f6915bb/) | WrappedUsdPlusToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x017e71...231981`](./contracts/ethereum-1/0x017e71e96f2ae777c679740d2d8dc15ed4231981/) | WrappedYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cd04b...129fe1`](./contracts/ethereum-1/0x2cd04bb68786834f199ce12074da7b8832129fe1/) | WrapperDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x058e2b...f09ed7`](./contracts/ethereum-1/0x058e2bec45b24cf4a5d9d8c780731ea4f5f09ed7/) | WrapperLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54419b...cef543`](./contracts/ethereum-1/0x54419bc42555b4bed712ade1e7942540e0cef543/) | WrapperLockDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42b9aa...a59cbf`](./contracts/ethereum-1/0x42b9aa7a244b38ef56dff4d2df7e7a7013a59cbf/) | WrapperLockEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x293436...fc74fd`](./contracts/ethereum-1/0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd/) | wstETH-crvUSDleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x344518...a64411`](./contracts/ethereum-1/0x344518934533ec82b49ea533b196dce5cfa64411/) | WToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd7c9f0...c3beac`](./contracts/ethereum-1/0xd7c9f0e536dc865ae858b0c0453fe76d13c3beac/) | Xai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1637e4...dcd61b`](./contracts/ethereum-1/0x1637e4e9941d55703a7a5e7807d6ada3f7dcd61b/) | XINV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07eb8f...74909d`](./contracts/ethereum-1/0x07eb8fd853c847d6e25f29e566d605cff474909d/) | XinvManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1c670...053a19`](./contracts/ethereum-1/0xe1c67007d1074bcacc577dd946661f0cb9053a19/) | XinvVesterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0205ae...e419c5`](./contracts/ethereum-1/0x0205ae93e18aa23d31e3df53899547b986e419c5/) | xVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8f560...c1dc1a`](./contracts/ethereum-1/0xf8f56001db32932f34f18101e6d6f9b4d1c1dc1a/) | XXXXToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x578669...ff8d89`](./contracts/ethereum-1/0x5786696bb5be7fcdb9997e7f89355d9e97ff8d89/) | XYZBroadcaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44ff2a...53b367`](./contracts/ethereum-1/0x44ff2af361e4b6a2892523d513df5245fc53b367/) | yAffiliateFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03dfdb...7d3f6d`](./contracts/ethereum-1/0x03dfdbcd4056e2f92251c7b07423e1a33a7d3f6d/) | yBribe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04bc0a...bca9ae`](./contracts/ethereum-1/0x04bc0ab673d88ae9dbc9da2380cb6b79c4bca9ae/) | yBUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24dd02...e82a5d`](./contracts/ethereum-1/0x24dd028bd027511482e701d08bae002cd6e82a5d/) | yCollateralVaultProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x170411...2a221c`](./contracts/ethereum-1/0x170411a2d872945ee8c59e4ef5c3402ebe2a221c/) | yCRV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0597ea...bc0f2c`](./contracts/ethereum-1/0x0597eaf957d896a5751aa35324bf24e1d9bc0f2c/) | ycUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x631d66...3931a4`](./contracts/ethereum-1/0x631d66f79191c86d7b7a7c0e2afae3ae943931a4/) | ycUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/) | yDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56ab71...a6bd33`](./contracts/ethereum-1/0x56ab71990783442f68fb25e0b466196c7ca6bd33/) | yDAIv2Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x610258...a05f83`](./contracts/ethereum-1/0x61025859c349dfbe6ef0dfca202ef3e84ca05f83/) | yDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2088ba...b73d99`](./contracts/ethereum-1/0x2088ba482f2097eb47896a2ec5f3925637b73d99/) | yDelegatedVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bc529...6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | YFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2792da...aa9440`](./contracts/ethereum-1/0x2792dad98fd6ba3743ca3484dbc2ce436faa9440/) | YieldModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | yInsure | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d2738...98340b`](./contracts/ethereum-1/0x6d2738fa41e83c5b5633f466f9aa11dae098340b/) | yInsureView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36324b...d41380`](./contracts/ethereum-1/0x36324b8168f960a12a8fd01406c9c78143d41380/) | ySUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d5ad9...54203a`](./contracts/ethereum-1/0x1d5ad987b743eb624662fe5c62b8f6015554203a/) | yTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19b642...e9cc09`](./contracts/ethereum-1/0x19b6424c58afcee6d0cb954d4b8d44b9b5e9cc09/) | yTokenRebalance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57faa0...b32052`](./contracts/ethereum-1/0x57faa0dec960ed774674a45d61ecfe738eb32052/) | YTokenStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | yTUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12c068...af3aff`](./contracts/ethereum-1/0x12c0681dca0deb095f2f192c3ab64bf320af3aff/) | yUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/) | yUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3118ee...b9aade`](./contracts/ethereum-1/0x3118eec34240620ffd044dfa3aaa0a0f78b9aade/) | yUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fcda6...367889`](./contracts/ethereum-1/0x0fcda6f268d0c09cdfffe6bceac5233ac2367889/) | yVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bbe0f...a6d1ad`](./contracts/ethereum-1/0x1bbe0f9af0cf852f9ff14637da2f0bc477a6d1ad/) | yVaultCheck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x044dea...f677b5`](./contracts/ethereum-1/0x044deaa1e5a8593adcead599e8d66fb5d3f677b5/) | yVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39abc0...a7c21d`](./contracts/ethereum-1/0x39abc0483046d7ad4957c8ada6e0787824a7c21d/) | YVCrvStETHLevSwapper2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeae436...dd84eb`](./contracts/ethereum-1/0xeae4365f8714b8fdc66ed0f2a3d90338c9dd84eb/) | YVCrvStETHOracle2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6e97d...7202e7`](./contracts/ethereum-1/0xa6e97d76d21ae347b13c343508826496b07202e7/) | YVCrvStETHSwapper2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | yWBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | yWrappedVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e68ee...8f1a73`](./contracts/ethereum-1/0x0e68ee104c768078cb3624396aaf9285c58f1a73/) | zBCH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88c64a...78bb7d`](./contracts/ethereum-1/0x88c64a7d2ecc882d558dd16abc1537515a78bb7d/) | zBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b3b73...407bf9`](./contracts/ethereum-1/0x7b3b7383bc88b645bdefd7624d9c6fb981407bf9/) | ZEC_DAI_Reserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37a486...62ef93`](./contracts/ethereum-1/0x37a4860728e292e5852b215c46dbe7a18862ef93/) | ZECGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52c883...ada49d`](./contracts/ethereum-1/0x52c883b626637ae7c2b93909ad40c24676ada49d/) | ZECGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b59ef...461d5b`](./contracts/ethereum-1/0x2b59ef3eb28c7388c7ec69d43a9b8e585c461d5b/) | ZECShifter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe47f1c...a87b2b`](./contracts/ethereum-1/0xe47f1cd2a37c6fe69e3501ae45eca263c5a87b2b/) | zETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ffcc6...4d14ce`](./contracts/ethereum-1/0x2ffcc661011bec72e1a9524e12060983e74d14ce/) | Zunami | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcab491...2698bd`](./contracts/ethereum-1/0xcab49182aadcd843b037bbf885ad56a3162698bd/) | ZunamiAPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd38c5...3c0ed6`](./contracts/ethereum-1/0xdd38c58c8f8202c9581ff16296ab778e223c0ed6/) | ZunamiDepositEthZap2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2160ad...696382`](./contracts/ethereum-1/0x2160ad71208f966948389efc76a4cc4930696382/) | ZunamiDepositEthZap3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1162c7...f81574`](./contracts/ethereum-1/0x1162c741bda2d0284e88d7c13c1b0bfeb4f81574/) | ZunamiDepositZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b6042...1fcce1`](./contracts/ethereum-1/0x9b6042c50a0af6cc657eb8512b47a919351fcce1/) | ZunamiDepositZap2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa35fc7...77fef4`](./contracts/ethereum-1/0xa35fc7d58c4e79f58e5cab26937fb6ea0277fef4/) | ZunamiDepositZap3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17e392...50a0af`](./contracts/ethereum-1/0x17e39276ae189c286801b91e99bae6885750a0af/) | ZunamiForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0357f8...a03f98`](./contracts/ethereum-1/0x0357f8afcf8bd2b119a4451bf605bef8cca03f98/) | ZunamiGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd18ac6...5b6699`](./contracts/ethereum-1/0xd18ac6f7b78b9576028940c305c0e767455b6699/) | ZunamiLaunchZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9de839...c6eea7`](./contracts/ethereum-1/0x9de83985047ab3582668320a784f6b9736c6eea7/) | ZunamiNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b49d1...b29c82`](./contracts/ethereum-1/0x0b49d1dd3f045c986f7816c2ad56f01d8fb29c82/) | ZunamiNativeAPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c6e1f...828d82`](./contracts/ethereum-1/0x3c6e1ffffc293e93bb383b375ba348b85e828d82/) | ZunamiPoolApsZunBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ab3aa...bd28e2`](./contracts/ethereum-1/0x5ab3aa11a40eb34f1d2733f08596532871bd28e2/) | ZunamiPoolApsZunETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28e487...082889`](./contracts/ethereum-1/0x28e487bbf6b64867c29e61dccbcd17ab64082889/) | ZunamiPoolApsZunUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x179dc3...e99498`](./contracts/ethereum-1/0x179dc3d6b260277643998af7de1a9354fde99498/) | ZunamiPoolControllerApsZunBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0beb2b...16de60`](./contracts/ethereum-1/0x0beb2b070d73a678a27ba044fec11ae9d116de60/) | ZunamiPoolControllerApsZunETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9f559...fccfb5`](./contracts/ethereum-1/0xd9f559280c9d308549e84946c0d668a817fccfb5/) | ZunamiPoolControllerApsZunUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d6c5c...11eeb4`](./contracts/ethereum-1/0x8d6c5c61e815a53b1d24ac94deec62f31911eeb4/) | ZunamiPoolControllerZunBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bd57f...6f9f32`](./contracts/ethereum-1/0x4bd57f97e35e7c3302dc3a8d4d803826856f9f32/) | ZunamiPoolControllerZunETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f858e...dc6f4e`](./contracts/ethereum-1/0x2f858e4d6a96c81e37a130314d6cecb64fdc6f4e/) | ZunamiPoolControllerZunUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fa308...5fc6db`](./contracts/ethereum-1/0x0fa308ae0dde633b6ede22ba719e7e0bc45fc6db/) | ZunamiPoolZunBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2e660...2f2222`](./contracts/ethereum-1/0xc2e660c62f72c2ad35ace6db78a616215e2f2222/) | ZunamiPoolZunETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ecc4a...d30b0a`](./contracts/ethereum-1/0x1ecc4a2ee46e50327adc4ab41fec750075d30b0a/) | ZunamiPoolZunUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9cc8b...dec334`](./contracts/ethereum-1/0xd9cc8b337d9730161b4166edee5beff6c5dec334/) | ZunamiRedistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60278e...dbeb8a`](./contracts/ethereum-1/0x60278e383f1299198f70c6dea453ac6cecdbeb8a/) | ZunamiRedistributorNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20c3a5...eec3a8`](./contracts/ethereum-1/0x20c3a51c480c33d3b4c375990bf7dc821deec3a8/) | ZunamiStableZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x932370...d07197`](./contracts/ethereum-1/0x932370b862599798f3d9a88c59d3d23cc5d07197/) | ZunamiTest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b5204...2f0f36`](./contracts/ethereum-1/0x6b5204b0be36771253cc38e88012e02b752f0f36/) | ZunamiToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeea950...967b3a`](./contracts/ethereum-1/0xeea950a509d822cf65edceed53d161fbaa967b3a/) | ZunDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb17c2...9e5654`](./contracts/ethereum-1/0xcb17c25985e5873ad5d1114b0e03947fc49e5654/) | ZunETHApsVaultStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64298a...64be4b`](./contracts/ethereum-1/0x64298a70c43d865bedb22fd95fc1f81c3f64be4b/) | ZunEthOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f8fc0...86b000`](./contracts/ethereum-1/0x5f8fc0976ffe5457ccf7651d5ff4cfca2e86b000/) | ZunETHVaultStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36bae8...b9e8ea`](./contracts/ethereum-1/0x36bae88cb53264662db66db6ac6c7830dbb9e8ea/) | ZUNStakingRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf859c6...ea0276`](./contracts/ethereum-1/0xf859c621d7ff69df1e283385dbde04135eea0276/) | ZunUSDApsVaultStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7aa84c...8851a0`](./contracts/ethereum-1/0x7aa84c31be1793f2dab8dbe36faa9478af8851a0/) | ZunUSDVaultStrat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x190b01...73f931`](./contracts/ethereum-1/0x190b01c325ab18050f13db7e524503336473f931/) | ZunVestingDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09aa07...f65295`](./contracts/ethereum-1/0x09aa07ae98fde91d66775c13107e9f082ff65295/) | zZEC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1256 |
| upstream | 154 |
| standard_library | 60 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [17428] Hinkal_Zokyo_Feb20th_2024.pdf
- [17429] index.html
- [17430] DL audit link
- [17431] DL audit link
- [17432] Report
- [17433] Security audits
- [17434] Hexens
- [17435] Neodyme

Fork inheritance lineage and inherited audits are included when available.
