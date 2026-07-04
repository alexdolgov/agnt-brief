# Agentic Audit Brief: Abracadabra

⚠️ Lifecycle status: DEAD - TVL dropped 54.6% over 90 days

## Project Overview

- Project: Abracadabra (`abracadabra`)
- Website: [https://abracadabra.money](https://abracadabra.money)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-03T21:05:24.308Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: arbitrum, avalanche, base, blast, bsc, ethereum, fantom, kava, linea, moonriver, optimism, polygon
- Contract surface: 1087 unique implementations (2560 raw deployments)
- DeFi Llama TVL: $4,638,464.02
- On-chain TVL (included contracts): $776,457,863.62
- TVL by chain: Arbitrum $554,026,938.15 | Ethereum $203,036,115.80 | Avalanche $15,212,296.76 | Bsc $2,148,371.15 | Optimism $1,789,911.16 | Blast $223,338.03 | Polygon $20,290.04 | Base $602.52

## Project Description

CDP. Structurally: 343 project-authored contract(s) across 8 chain(s); 7 ERC4626 vaults, 79 ERC20 tokens, 5 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 49 common project-authored base contract(s) (boringownabledata, ownableoperators, basestrategy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 3122; live-surface contracts included: 2557 (514 live, 2043 unknown).
- Excluded by liveness: 565 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/202 (4.5%)
- Deployed-live implementations: 202 of 1087 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 9/602
- Verified + Unaudited implementations: 593
- Verified by bytecode match: 0
- Unverified implementations: 485
- Unique implementations: 1087
- Raw deployments: 2560
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $776,457,863.62
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $776,457,863.62 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 8 | 1.3% | 2024-12 |
| Guardian | Tier 2 | 2 | 0.3% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BlastBox | unknown | blast | n/a | [`0xc8f5eb...1e3748`](./contracts/blast-81457/0xc8f5eb8a632f9600d1c7bc91e97dad5f8b1e3748/) | ✅ Audited |
| BlastCauldronV4 | unknown | blast | n/a | [`0x79e8ca...fe402e`](./contracts/blast-81457/0x79e8cad80e2aa49a246b789584c45aab1cfe402e/) | ✅ Audited |
| BlastOnboardingBoot | unknown | blast | n/a | [`0xa64b73...36ab96`](./contracts/blast-81457/0xa64b73699cc7334810e382a4c09caec53636ab96/) | ✅ Audited |
| CauldronV4 | unknown | ethereum | n/a | 27 deployments: ethereum [`0x00380c...0ac923`](./contracts/ethereum-1/0x00380cb5858664078f2289180cc32f74440ac923/); ethereum `0x207763...3c1588`; ethereum `0x38e7d1...4a41bb`; ethereum `0x43243f...4054a5`; ethereum `0x692887...89b684`; ethereum `0x7259e1...1a6a90`; ethereum `0x7d8df3...b90815`; ethereum `0xa84101...4c3b9d`; ethereum `0xc4113a...517c77`; ethereum `0xe8ed74...5bf341`; moonriver `0x2f1ba2...178f89`; moonriver `0x3477df...3c7e75`; moonriver `0x8d99a1...d0da30`; moonriver `0x9affe9...59fbc4`; moonriver `0xe8de4c...fc916a`; arbitrum `0x303a59...bbc0b9`; arbitrum `0x49de72...c8fa57`; arbitrum `0x569813...0406d5`; arbitrum `0x6b04c5...3dacb6`; arbitrum `0x726413...3701b1`; arbitrum `0x780db9...d0c320`; arbitrum `0xdf46f6...045297`; arbitrum `0xe05811...3a194e`; arbitrum `0xed50bb...4c14de`; arbitrum `0xee22ba...14eb16`; arbitrum `0xef2acb...04e16e`; avalanche `0x17b205...6f5341` | ✅ Audited |
| DegenBox | unknown | bsc | n/a | 15 deployments: ethereum `0xd96f48...fc2cce`; optimism `0x233332...accb9c`; optimism `0xa93c81...ba1723`; optimism `0xb3f5c7...a26753`; bsc [`0x090185...37e5f6`](./contracts/bsc-56/0x090185f2135308bad17527004364ebcc2d37e5f6/); polygon `0x7a3b79...080449`; polygon `0xe56f37...d60b42`; moonriver `0x0d2a51...e59449`; base `0x6e4358...b7f442`; base `0xa3372c...b3b20d`; arbitrum `0x268ab9...c54be4`; arbitrum `0x7c8fef...431d38`; arbitrum `0xfd7234...5745f5`; avalanche `0x1fc83f...aae530`; avalanche `0xd825d0...b0e6a4` | ✅ Audited |
| GmxV2CauldronV4 | unknown | arbitrum | n/a | 15 deployments: arbitrum [`0x017ccd...ed6bdb`](./contracts/arbitrum-42161/0x017ccd8ef10fb8bb3a5a04b2798212132eed6bdb/); arbitrum `0x0c8913...166b9b`; arbitrum `0x1b867b...a67043`; arbitrum `0x2b02bb...1934fa`; arbitrum `0x4809cb...34e5cc`; arbitrum `0x4f9737...e40741`; arbitrum `0x625fe7...74bd61`; arbitrum `0x66805f...996c6a`; arbitrum `0x74322f...410359`; arbitrum `0x7962ac...5404fb`; arbitrum `0x9ff8b4...e94831`; arbitrum `0xa6299c...c6b210`; arbitrum `0xb3d722...47f2f0`; arbitrum `0xd7659d...6d552a`; arbitrum `0xf69553...a2bd5e` | ✅ Audited |
| MultiRewards | unknown | arbitrum | n/a | 6 deployments: ethereum `0xafd3d3...0a96ca`; ethereum `0xafe0bb...2c47db`; arbitrum [`0x280c64...b11f97`](./contracts/arbitrum-42161/0x280c64c4c4869cf2a6762eadd4701360c1b11f97/); arbitrum `0x3886a6...f5f755`; arbitrum `0xc30911...1cd652`; arbitrum `0xdc9bc3...ceee96` | ✅ Audited |
| Router | unknown | linea | n/a | 6 deployments: ethereum `0x7202b7...d5b6fe`; arbitrum `0x63d8e7...e09f01`; arbitrum `0x9f0418...5792c7`; arbitrum `0xabbc5f...2f4064`; arbitrum `0xdb0956...34a9fa`; linea [`0x0d2a51...e59449`](./contracts/linea-59144/0x0d2a5107435cbbbe21db1adb5f1e078e63e59449/) | ✅ Audited |
| Spell | unknown | ethereum | n/a | [`0x090185...37e5f6`](./contracts/ethereum-1/0x090185f2135308bad17527004364ebcc2d37e5f6/) | ✅ Audited |

### ⚠️ Verified + Unaudited (593)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StandardArbERC20 | token | arbitrum | n/a | 2 deployments: arbitrum [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/); arbitrum `0x3e6648...15d2af` | ⚠️ Unaudited |
| MarketToken | token | arbitrum | n/a | 7 deployments: arbitrum [`0x09400d...af03c9`](./contracts/arbitrum-42161/0x09400d9db990d5ed3f35d7be61dfaeb900af03c9/); arbitrum `0x450bb6...2ac541`; arbitrum `0x47c031...170703`; arbitrum `0x70d955...ee6336`; arbitrum `0x7c11f7...6b9a77`; arbitrum `0x7f1fa2...18455c`; arbitrum `0xc25cef...7e5407` | ⚠️ Unaudited |
| FantomToken | token | ethereum | n/a | 3 deployments: ethereum [`0x4e1536...717870`](./contracts/ethereum-1/0x4e15361fd6b4bb609fa63c81a2be19d873717870/); ethereum `0x80d6c1...48c582`; ethereum `0xdcc584...2cd329` | ⚠️ Unaudited |
| cvxCrvToken | token | ethereum | n/a | [`0x62b9c7...810aa7`](./contracts/ethereum-1/0x62b9c7356a2dc64a1969e19c23e4f579f9810aa7/) | ⚠️ Unaudited |
| LUSDToken | token | ethereum | n/a | [`0x5f9880...568ba0`](./contracts/ethereum-1/0x5f98805a4e8be255a32880fdec7f6728c6568ba0/) | ⚠️ Unaudited |
| BaseRewardPool | core_logic | ethereum | n/a | [`0x3fe656...a7587e`](./contracts/ethereum-1/0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e/) | ⚠️ Unaudited |
| LayerZeroToken | token | ethereum | n/a | 2 deployments: ethereum [`0x698588...3271cd`](./contracts/ethereum-1/0x6985884c4392d348587b19cb9eaaf157f13271cd/); arbitrum [`0x698588...3271cd`](./contracts/arbitrum-42161/0x6985884c4392d348587b19cb9eaaf157f13271cd/) | ⚠️ Unaudited |
| LQTYToken | token | ethereum | n/a | [`0x6dea81...88c54d`](./contracts/ethereum-1/0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d/) | ⚠️ Unaudited |
| JoeToken | token | avalanche | n/a | [`0x6e84a6...bc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | ⚠️ Unaudited |
| AlToken | token | ethereum | n/a | [`0xbc6da0...3660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | moonriver | n/a | 5 deployments: bsc `0xfe19f0...f433ba`; polygon `0x49a040...c47242`; moonriver [`0x0cae51...de3adb`](./contracts/moonriver-1285/0x0cae51e1032e8461f4806e26332c030e34de3adb/); arbitrum `0xfea7a6...7d6c2a`; avalanche `0x130966...b8c18d` | ⚠️ Unaudited |
| AlchemixToken | token | ethereum | n/a | [`0xdbdb4d...90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | ⚠️ Unaudited |
| cvxRewardPool | core_logic | ethereum | n/a | [`0xcf50b8...139332`](./contracts/ethereum-1/0xcf50b810e57ac33b91dcf525c6ddd9881b139332/) | ⚠️ Unaudited |
| DepositToken | token | ethereum | n/a | [`0x903c99...3b61fb`](./contracts/ethereum-1/0x903c9974aaa431a765e60bc07af45f0a1b3b61fb/) | ⚠️ Unaudited |
| cvxFpisToken | token | ethereum | n/a | [`0xa28473...427df6`](./contracts/ethereum-1/0xa2847348b58ced0ca58d23c7e9106a49f1427df6/) | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | optimism | n/a | [`0xb153fb...c57901`](./contracts/optimism-10/0xb153fb3d196a8eb25522705560ac152eeec57901/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x38ea45...0bd783`](./contracts/ethereum-1/0x38ea452219524bb87e18de1c24d3bb59510bd783/); ethereum `0xdf0770...32ff56` | ⚠️ Unaudited |
| cvxFxsToken | token | ethereum | n/a | [`0xfeef77...4bdf74`](./contracts/ethereum-1/0xfeef77d3f69374f66429c91d732a244f074bdf74/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | avalanche | n/a | 9 deployments: avalanche [`0x29472d...328db2`](./contracts/avalanche-43114/0x29472d511808ce925f501d25f9ee9effd2328db2/); avalanche `0x3fe38b...a9eb1f`; avalanche `0x585e7b...b96c15`; avalanche `0x8b650e...1e4448`; avalanche `0x929f5c...4633fa`; avalanche `0xbfdbe3...3c76e0`; avalanche `0xc14678...8da696`; avalanche `0xc988c1...a7ca19`; avalanche `0xed6aaf...f637ac` | ⚠️ Unaudited |
| MintableBurnableERC20 | unknown | base | n/a | 6 deployments: base [`0x0b938c...d348dd`](./contracts/base-8453/0x0b938cc6a48e1c3b48a33adcf9a726e776d348dd/); base `0x4a3a6d...eb6a3d`; base `0x6bf837...341d12`; linea `0x4a3a6d...eb6a3d`; linea `0xdd3b80...c9429a`; blast `0x76da31...8374c1` | ⚠️ Unaudited |
| JoeHatToken | token | avalanche | n/a | [`0x82fe03...62077c`](./contracts/avalanche-43114/0x82fe038ea4b50f9c957da326c412ebd73462077c/) | ⚠️ Unaudited |
| StabilityPool | core_logic | ethereum | n/a | [`0x66017d...5a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | ⚠️ Unaudited |
| BorrowerOperations | core_logic | ethereum | n/a | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | ⚠️ Unaudited |
| mSpellStaking | token | arbitrum | n/a | 7 deployments: ethereum `0xbd2fba...5e6797`; arbitrum [`0x1df188...dd9e51`](./contracts/arbitrum-42161/0x1df188958a8674b5177f77667b8d173c3cdd9e51/); arbitrum `0x694808...4b99ff`; arbitrum `0x6cc0cd...8ae668`; avalanche `0xa3c893...a92a12`; avalanche `0xbd8447...f955af`; avalanche `0xc1f186...c3ec70` | ⚠️ Unaudited |
| Booster | unknown | ethereum | n/a | 9 deployments: ethereum [`0x2b8b30...2ffc95`](./contracts/ethereum-1/0x2b8b301b90eb8801f1eefe73285eec117d2ffc95/); ethereum `0x569f5b...79fbca`; ethereum `0x60bd3d...f6738b`; ethereum `0x63e035...ba565a`; ethereum `0x9ca3ec...60ba9a`; ethereum `0xd8bd5c...f28659`; ethereum `0xee3ab4...9d67e8`; ethereum `0xefffec...b047d8`; ethereum `0xf403c1...8aae31` | ⚠️ Unaudited |
| ActivePool | core_logic | ethereum | n/a | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ⚠️ Unaudited |
| CollSurplusPool | core_logic | ethereum | n/a | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | ⚠️ Unaudited |
| AbraOFTUpgradeable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x051ae6...f88b0b`](./contracts/arbitrum-42161/0x051ae6144f4e4c6afd279b202333d3191df88b0b/); arbitrum `0xfc1f2a...f73f83` | ⚠️ Unaudited |
| AbraOFTUpgradeable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x51c07f...033fae`](./contracts/arbitrum-42161/0x51c07fc69950bed5988fc5dc187baa8465033fae/); arbitrum `0x9473b1...6a7cf6` | ⚠️ Unaudited |
| AbraOFTUpgradeable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5db2df...f6226b`](./contracts/arbitrum-42161/0x5db2dfe0fb881f046431c4238636a55310f6226b/); arbitrum `0xa21143...a084a6` | ⚠️ Unaudited |
| Access | unknown | ethereum | n/a | [`0x0a1503...9a682a`](./contracts/ethereum-1/0x0a15035e1ae91d980fad129973b8249a589a682a/) | ⚠️ Unaudited |
| AdvancedWithdrawer | unknown | ethereum | n/a | 5 deployments: ethereum [`0x06676d...a08d92`](./contracts/ethereum-1/0x06676dc8668a7e189eadff6bbc2ce7f62da08d92/); ethereum `0x18dd9f...4b1aa8`; ethereum `0x813c2b...6cfc7a`; ethereum `0xe88f8b...05b43a`; avalanche `0x215061...e8f633` | ⚠️ Unaudited |
| AdventureGold | unknown | ethereum | n/a | [`0x32353a...489a20`](./contracts/ethereum-1/0x32353a6c91143bfd6c7d363b546e62a9a2489a20/) | ⚠️ Unaudited |
| aeWETH | token | arbitrum | n/a | 2 deployments: arbitrum [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/); arbitrum `0x8b194b...fba668` | ⚠️ Unaudited |
| AIP1Point1Target | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4b075f...430184`](./contracts/arbitrum-42161/0x4b075f1d7dce6f480bf87e45df2f2e1b1a430184/); arbitrum `0x9e43f7...7b984c` | ⚠️ Unaudited |
| AIP1Point2Action | unknown | arbitrum | n/a | [`0x627410...5ed516`](./contracts/arbitrum-42161/0x6274106eedd4848371d2c09e0352d67b795ed516/) | ⚠️ Unaudited |
| Airdrop | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0c58c2...3902d9`](./contracts/avalanche-43114/0x0c58c2041da4cfccf5818bbe3b66dbc23b3902d9/); avalanche `0xcebbe6...4e6c2f` | ⚠️ Unaudited |
| Alchemist | unknown | ethereum | n/a | [`0xc21d35...9fe35b`](./contracts/ethereum-1/0xc21d353ff4ee73c572425697f4f5aad2109fe35b/) | ⚠️ Unaudited |
| ALCXLevSwapperV1 | unknown | ethereum | n/a | [`0xf9bae4...cb7527`](./contracts/ethereum-1/0xf9bae4c8c6e933d4d9dcac611715024a1ecb7527/) | ⚠️ Unaudited |
| ALCXOracleV1 | unknown | ethereum | n/a | [`0xe0b858...f5e6bc`](./contracts/ethereum-1/0xe0b858c2698598830256a005e1ad3a2c5ef5e6bc/) | ⚠️ Unaudited |
| ALCXSwapperV1 | unknown | ethereum | n/a | [`0xb63eb8...8c51f8`](./contracts/ethereum-1/0xb63eb840daee054d9971dedfecbe0667a08c51f8/) | ⚠️ Unaudited |
| AltExercisepOLY | unknown | ethereum | n/a | [`0x053449...daa729`](./contracts/ethereum-1/0x053449023313a67b0ea179ae2c4acd65afdaa729/) | ⚠️ Unaudited |
| AnycallExecutor | unknown | avalanche | n/a | 3 deployments: bsc `0xae4ff8...54179e`; polygon `0xd9bfdd...5d2d8c`; avalanche [`0x70d6b3...a72c40`](./contracts/avalanche-43114/0x70d6b3cfaabd6c0eb6b99b80c6540fa754a72c40/) | ⚠️ Unaudited |
| ArbCommunityNFT | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xbd0dd2...2de79a`](./contracts/arbitrum-42161/0xbd0dd2f644fb4eca58e1e73eee2e5e1cc52de79a/); arbitrum `0xca7664...eea019` | ⚠️ Unaudited |
| ArbEthLevSwapper | unknown | arbitrum | n/a | [`0xc9facf...591918`](./contracts/arbitrum-42161/0xc9facfa2fc50c9a30c77a2ad14e2db107d591918/) | ⚠️ Unaudited |
| ArbEthSwapper | unknown | arbitrum | n/a | [`0x4c56db...c07e17`](./contracts/arbitrum-42161/0x4c56dbcc056655b8813539af9c819ae128c07e17/) | ⚠️ Unaudited |
| ArbitratorVault | unknown | ethereum | n/a | [`0x25e124...c21616`](./contracts/ethereum-1/0x25e12482a25cf36ec70fda2a09c1ed077fc21616/) | ⚠️ Unaudited |
| ArbitrumFoundationVestingWallet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x15533b...5d6844`](./contracts/arbitrum-42161/0x15533b77981cda0f85c4f9a485237df4285d6844/); arbitrum `0x28b72d...9d2a14` | ⚠️ Unaudited |
| ArbitrumFoundationVestingWallet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xcfc79f...47513f`](./contracts/arbitrum-42161/0xcfc79fcd07929467a8e1925e06007de5f047513f/); arbitrum `0xe3c6c2...108659` | ⚠️ Unaudited |
| ArbUXRNFT | unknown | arbitrum | n/a | [`0x2fa063...6ff61a`](./contracts/arbitrum-42161/0x2fa063182c6f0f953c99abf46add4d2c9f6ff61a/) | ⚠️ Unaudited |
| AVAXLevSwapperV1 | unknown | avalanche | n/a | [`0x69bfea...58c7b1`](./contracts/avalanche-43114/0x69bfea0307a071c3e6cd217486b16d20bd58c7b1/) | ⚠️ Unaudited |
| AvaxLPOracle | unknown | avalanche | n/a | 4 deployments: avalanche [`0x3e6ef9...67d853`](./contracts/avalanche-43114/0x3e6ef9e97147c266c5bddef03e7dfba7a167d853/); avalanche `0x6e4358...b7f442`; avalanche `0xe2601e...aeb7dd`; avalanche `0xed5d79...756f8e` | ⚠️ Unaudited |
| AVAXOracleV1 | unknown | avalanche | n/a | [`0x082454...6ff63a`](./contracts/avalanche-43114/0x0824545b22dd6dc644c8b66d7923e613816ff63a/) | ⚠️ Unaudited |
| AvaxSwapperV1 | unknown | avalanche | n/a | [`0x2b7275...8f36a8`](./contracts/avalanche-43114/0x2b727505fdf3650028c8de0f5d73337ba78f36a8/) | ⚠️ Unaudited |
| AvaxUsdtLevSwapper | unknown | avalanche | n/a | [`0x8cee5b...25fb62`](./contracts/avalanche-43114/0x8cee5b335f450933b4720b5b84e6125d4225fb62/) | ⚠️ Unaudited |
| AvaxUsdtOracleV1 | unknown | avalanche | n/a | [`0xd43f26...0c0559`](./contracts/avalanche-43114/0xd43f26102b0671dcf8d6357aa2908d6cc80c0559/) | ⚠️ Unaudited |
| AvaxUsdtSwapper | unknown | avalanche | n/a | [`0x9ca03f...ca921d`](./contracts/avalanche-43114/0x9ca03febde38c2c8a2e8f3d74e23a58192ca921d/) | ⚠️ Unaudited |
| BABTAdaptor | unknown | bsc | n/a | 3 deployments: bsc [`0x43f043...4969f9`](./contracts/bsc-56/0x43f04360894aef83d02d7a5cdd91ad64144969f9/); bsc `0x74d2b3...39f91d`; bsc `0x90e3ae...795b82` | ⚠️ Unaudited |
| BackingRefill | unknown | ethereum | n/a | [`0xc448b2...a09d8c`](./contracts/ethereum-1/0xc448b27aea1a825354c3296fcb2af598aea09d8c/) | ⚠️ Unaudited |
| BadBuildersClubSoulbound | unknown | avalanche | n/a | [`0x2d1e2e...ac6a42`](./contracts/avalanche-43114/0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42/) | ⚠️ Unaudited |
| BalanceChecker | unknown | bsc | n/a | [`0x91688f...10b20a`](./contracts/bsc-56/0x91688f449478a47256990e4c609e000b5810b20a/) | ⚠️ Unaudited |
| BatchSender | periphery | arbitrum | n/a | 5 deployments: arbitrum [`0x1070f7...fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/); arbitrum `0x401ab9...06c184`; arbitrum `0x5179d7...3107a6`; arbitrum `0x5384e6...d1941d`; arbitrum `0x8ef877...3d7f98` | ⚠️ Unaudited |
| BatchTransfer | unknown | bsc | n/a | [`0xa9d79d...28db1c`](./contracts/bsc-56/0xa9d79d8741510dd0fb2df7b741c899334b28db1c/) | ⚠️ Unaudited |
| BeaconProxyFactory | unknown | arbitrum | n/a | [`0x863491...a1bda9`](./contracts/arbitrum-42161/0x863491cc6c7275bcc15a386093e92390e2a1bda9/) | ⚠️ Unaudited |
| BeefyMigrator | unknown | arbitrum | n/a | [`0x64920a...72f164`](./contracts/arbitrum-42161/0x64920af66d5772042b0aae8a1ebef75b4372f164/) | ⚠️ Unaudited |
| BeefyTimelockCaller | unknown | arbitrum | n/a | [`0x46a188...f4af2b`](./contracts/arbitrum-42161/0x46a1884484a51b799414c6f02aeed80246f4af2b/) | ⚠️ Unaudited |
| BentoBoxOwner | unknown | ethereum | n/a | [`0x4427a2...a3a09b`](./contracts/ethereum-1/0x4427a2840a3af9a9495fde28cb5c019585a3a09b/) | ⚠️ Unaudited |
| BentoBoxV1 | unknown | ethereum | n/a | [`0xf5bce5...643966`](./contracts/ethereum-1/0xf5bce5077908a1b7370b9ae04adc565ebd643966/) | ⚠️ Unaudited |
| BentoBoxV1 | unknown | arbitrum | n/a | 3 deployments: moonriver `0xb734c2...cc812d`; arbitrum [`0x74c764...46894a`](./contracts/arbitrum-42161/0x74c764d41b77dbbb4fe771dab1939b00b146894a/); avalanche `0xf4f463...d1d18f` | ⚠️ Unaudited |
| BlastMIMSwapFactory | registry | blast | n/a | [`0x7e0536...b84908`](./contracts/blast-81457/0x7e05363e225c1c8096b1cd233b59457104b84908/) | ⚠️ Unaudited |
| BlastMIMSwapRouter | adapter | blast | n/a | [`0x85faaf...57b705`](./contracts/blast-81457/0x85faafc31bc8b16be7039f869cd2006da257b705/) | ⚠️ Unaudited |
| BnbPricePrediction | unknown | bsc | n/a | 6 deployments: bsc [`0x05b4c8...fa9c75`](./contracts/bsc-56/0x05b4c8785f4c8856c47a3c2ebce313343efa9c75/); bsc `0x4e95c4...cd9cd8`; bsc `0x9f72bc...7532d9`; bsc `0xb5a732...0fa7f3`; bsc `0xe6c1f4...d07d05`; bsc `0xf638ed...daae0c` | ⚠️ Unaudited |
| BnbStaking | unknown | bsc | n/a | 25 deployments: bsc [`0x187463...3b4208`](./contracts/bsc-56/0x187463a09569020659f4128c14fb13bce23b4208/); bsc `0x2b287e...d50eed`; bsc `0x2d294b...597e1c`; bsc `0x3dc8e2...220f04`; bsc `0x42363e...171ca4`; bsc `0x4816f9...78a9a3`; bsc `0x555ea7...6dcb5a`; bsc `0x7116f3...6a4c41`; bsc `0x748736...9e4e7f`; bsc `0x74da29...aad284`; bsc `0x7e6403...cc088c`; bsc `0x81d99f...457938`; bsc `0x8b8bf5...acad9e`; bsc `0x8e5c7f...24ecc4`; bsc `0x9a1a37...e62f51`; bsc `0xa7fdb0...e232f6`; bsc `0xb0060e...825c41`; bsc `0xd36461...ec8b4c`; bsc `0xd505df...82e8db`; bsc `0xd6e999...1340fd`; bsc `0xe0cf55...3ef30b`; bsc `0xf022a6...f6790a`; bsc `0xf0d667...b4b3ac`; bsc `0xf1de62...437ef5`; bsc `0xfab00a...43e52b` | ⚠️ Unaudited |
| BonusDistributor | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x03f349...40d356`](./contracts/arbitrum-42161/0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356/); arbitrum `0x31a347...b8efb1`; arbitrum `0x50c62f...1ebaeb`; arbitrum `0x8cce8a...2d48fa` | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | avalanche | n/a | 3 deployments: avalanche [`0x217945...8266e9`](./contracts/avalanche-43114/0x217945d4cb3386420252da73743f1730f38266e9/); avalanche `0x846a4c...bfff23`; avalanche `0xbb28e0...0a7ad0` | ⚠️ Unaudited |
| BoosterOwner | unknown | ethereum | n/a | [`0x3ce640...80f1e6`](./contracts/ethereum-1/0x3ce6408f923326f81a7d7929952947748180f1e6/) | ⚠️ Unaudited |
| BoosterOwnerSecondary | unknown | ethereum | n/a | [`0x256e1b...98b86d`](./contracts/ethereum-1/0x256e1bba846611c37cf89844a02435e6c098b86d/) | ⚠️ Unaudited |
| BoosterPlaceholder | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa2cf21...a86ee5`](./contracts/ethereum-1/0xa2cf21b157b2f203e37b616b619f438b5aa86ee5/); ethereum `0xd364e3...bfc71e` | ⚠️ Unaudited |
| BoosterRewardManager | unknown | ethereum | n/a | [`0x817ff4...e82d24`](./contracts/ethereum-1/0x817ff43b8a18b8ab76485283e42b4bd632e82d24/) | ⚠️ Unaudited |
| BoringHelperV1 | unknown | ethereum | n/a | 6 deployments: ethereum [`0x11ca53...7996e6`](./contracts/ethereum-1/0x11ca5375adafd6205e41131a4409f182677996e6/); arbitrum `0x37b328...e924f8`; avalanche `0x1dd4d8...ab5741`; avalanche `0xce63ec...412c5e`; avalanche `0xdc0730...4a7c62`; avalanche `0xe35e9c...9a386f` | ⚠️ Unaudited |
| Bridge | unknown | arbitrum | n/a | [`0x931dda...576441`](./contracts/arbitrum-42161/0x931dda8e3d4e4b7832e9005812c979008b576441/) | ⚠️ Unaudited |
| BunnyMintingFarm | unknown | bsc | n/a | [`0x7c8b60...637c7a`](./contracts/bsc-56/0x7c8b60d2b859a38c8b9b5b6cb4565485cb637c7a/) | ⚠️ Unaudited |
| Burner | unknown | ethereum | n/a | [`0xba9801...20272d`](./contracts/ethereum-1/0xba9801acfdf3b8852865149d93acffef9120272d/) | ⚠️ Unaudited |
| BuybackMigrator | unknown | arbitrum | n/a | [`0x4f47a1...8379d4`](./contracts/arbitrum-42161/0x4f47a156fa8106aa7bd13e6219c54a78748379d4/) | ⚠️ Unaudited |
| CakeStrategy | unknown | bsc | n/a | [`0x08b918...63ef63`](./contracts/bsc-56/0x08b918dd18e087893bb9d711d9e0bbaa7a63ef63/) | ⚠️ Unaudited |
| CakeStrategyV2 | unknown | bsc | n/a | [`0x617161...a3b3aa`](./contracts/bsc-56/0x6171619b5793099f8c577fe5dfc08cea35a3b3aa/) | ⚠️ Unaudited |
| CakeToken | unknown | bsc | n/a | 9 deployments: bsc [`0x086bef...88807b`](./contracts/bsc-56/0x086bef28ebfb560e787989d025c83bd1e288807b/); bsc `0x0e09fa...81ce82`; bsc `0x46e358...b42cf4`; bsc `0x53d79a...dd0b6d`; bsc `0x6ad8e2...9e088d`; bsc `0x7d813c...20060b`; bsc `0xd36d62...cb4a90`; bsc `0xe17a47...7f978b`; bsc `0xecd9ac...1acbc3` | ⚠️ Unaudited |
| CauldronFeeWithdrawer | operational_periphery | arbitrum | n/a | 6 deployments: bsc `0xabbd4a...ab4cfc`; arbitrum [`0x2c9f65...29b131`](./contracts/arbitrum-42161/0x2c9f65bd1a501cb406584f5532ce57c28829b131/); avalanche `0x4b4c27...108940`; avalanche `0x64422a...1a7fb7`; avalanche `0x727f73...b0c89e`; avalanche `0xa262f3...d20ee7` | ⚠️ Unaudited |
| CauldronLib | unknown | arbitrum | n/a | 9 deployments: ethereum `0x785afa...5faa35`; arbitrum [`0x116899...2aac10`](./contracts/arbitrum-42161/0x11689993dff3f79b27440f4ce74d52bb952aac10/); arbitrum `0x2be431...f361b0`; arbitrum `0x4f5126...3268a7`; arbitrum `0x5d28da...7620b4`; arbitrum `0xc1f186...c3ec70`; arbitrum `0xdbbd96...dce280`; arbitrum `0xef633d...7ed5ee`; arbitrum `0xff498b...baf30b` | ⚠️ Unaudited |
| CauldronLowRiskV1 | unknown | ethereum | n/a | [`0x6cbafe...7c8c8f`](./contracts/ethereum-1/0x6cbafee1fab76ca5b5e144c43b3b50d42b7c8c8f/) | ⚠️ Unaudited |
| CauldronMediumRiskV1 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6ff906...38b91f`](./contracts/ethereum-1/0x6ff9061bb8f97d948942cef376d98b51fa38b91f/); ethereum `0xbb02a8...b090f3`; ethereum `0xffbf48...3d9ae6` | ⚠️ Unaudited |
| CauldronOwner | unknown | moonriver | n/a | 7 deployments: moonriver [`0x16950c...dd44eb`](./contracts/moonriver-1285/0x16950c5978880537117f159a492805c021dd44eb/); moonriver `0x358a42...cf3289`; moonriver `0x633516...6caae4`; moonriver `0x635693...e7d3be`; moonriver `0x8e534c...e6d534`; moonriver `0x9b0f76...ff5fd3`; avalanche `0x793a15...54442d` | ⚠️ Unaudited |
| CauldronRewarder | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x6b44d9...b68793`](./contracts/arbitrum-42161/0x6b44d94ecdfaf0cb00def55212e226603bb68793/); arbitrum `0x6e8093...08d9aa`; arbitrum `0xd487a2...dbd543`; arbitrum `0xe788ab...08ee6c` | ⚠️ Unaudited |
| CauldronV2 | unknown | ethereum | n/a | 6 deployments: ethereum [`0x390db1...d18a41`](./contracts/ethereum-1/0x390db10e65b5ab920c19149c919d970ad9d18a41/); ethereum `0x59e908...2e573f`; ethereum `0x5ec47e...192498`; ethereum `0xbc36fd...14dd63`; ethereum `0xcfc571...e74636`; ethereum `0xf179fe...98ed37` | ⚠️ Unaudited |
| CauldronV2CheckpointV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x35a0dd...a30321`](./contracts/ethereum-1/0x35a0dd182e4bca59d5931eae13d0a2332fa30321/); ethereum `0x4eaed7...e4b3a0` | ⚠️ Unaudited |
| CauldronV2Flat | unknown | ethereum | n/a | 13 deployments: ethereum [`0x003d5a...9eed0f`](./contracts/ethereum-1/0x003d5a75d284824af736df51933be522de9eed0f/); ethereum `0x05500e...6e7c27`; ethereum `0x0bca8e...d401c1`; ethereum `0x252dcf...32eae4`; ethereum `0x6371ef...3b7985`; ethereum `0x63905b...78d300`; ethereum `0x7b7473...c39020`; ethereum `0x920d9b...953f9f`; ethereum `0x9617b6...795341`; ethereum `0x98a84e...b6b99f`; ethereum `0xc1879b...b592ce`; ethereum `0xc319ee...57e7da`; ethereum `0xebfde8...e93f0a` | ⚠️ Unaudited |
| CauldronV2Multichain | unknown | avalanche | n/a | 12 deployments: bsc `0x692cf1...c12c90`; bsc `0xf80494...a93319`; arbitrum `0x99d8a9...1e17f3`; arbitrum `0xc89958...0215e6`; avalanche [`0x0a1e6a...b1cf3d`](./contracts/avalanche-43114/0x0a1e6a80e93e62bd0d3d3bfcf4c362c40fb1cf3d/); avalanche `0x2450bf...e68d07`; avalanche `0x35fa7a...d6bb21`; avalanche `0x3b63f8...ad964b`; avalanche `0x3cfed0...30d2a2`; avalanche `0x56984f...6ba49d`; avalanche `0x95cce6...b54210`; avalanche `0xacc682...9f28e3` | ⚠️ Unaudited |
| CauldronV3 | unknown | avalanche | n/a | 10 deployments: ethereum `0x3e2a2b...eb493e`; ethereum `0x7ce7d9...064757`; ethereum `0x95fdc9...7d0f0f`; ethereum `0xc33d23...927202`; ethereum `0xc6b2b3...09001e`; ethereum `0xd31e19...dc7324`; avalanche [`0x177a24...7de3f7`](./contracts/avalanche-43114/0x177a24b427876f61983cce0dd37608611e7de3f7/); avalanche `0x735007...b1bc25`; avalanche `0xa32d03...6fd918`; avalanche `0xf24f4c...c878cf` | ⚠️ Unaudited |
| CauldronV3_1 | unknown | avalanche | n/a | 3 deployments: avalanche [`0x16ebac...08ea75`](./contracts/avalanche-43114/0x16ebacab63581e69d6f7594c9eb1a05df808ea75/); avalanche `0xced9e3...6b1340`; avalanche `0xd8af15...5f9a40` | ⚠️ Unaudited |
| CauldronV3_2 | unknown | optimism | n/a | 4 deployments: ethereum `0x822796...438df5`; ethereum `0xe19b0d...61a12c`; optimism [`0x68f498...ff2362`](./contracts/optimism-10/0x68f498c230015254aff0e1eb6f85da558dff2362/); optimism `0xb69578...cc5e02` | ⚠️ Unaudited |
| CauldronV4WithRewarder | unknown | arbitrum | n/a | 12 deployments: arbitrum [`0x247d7e...1ad85f`](./contracts/arbitrum-42161/0x247d7e28aa79dffe09b287d191393242411ad85f/); arbitrum `0x565195...a0f194`; arbitrum `0x79533f...bec951`; arbitrum `0x967dbc...ffe9ec`; arbitrum `0x96bac9...a8ca62`; arbitrum `0x98bf3e...0d3ede`; arbitrum `0xa3c893...a92a12`; arbitrum `0xac6c43...13d512`; arbitrum `0xc435cc...25534f`; arbitrum `0xcd959b...500c5c`; arbitrum `0xd404be...4cedec`; arbitrum `0xe45217...5fad2b` | ⚠️ Unaudited |
| CheckForOracleUpdate | unknown | ethereum | n/a | 7 deployments: ethereum [`0x047763...6a883f`](./contracts/ethereum-1/0x0477633b45405a9b1f79745d37e87e495e6a883f/); ethereum `0x0632ad...7e8327`; ethereum `0x4d4b8f...b9f8a5`; ethereum `0x500fab...b00e33`; ethereum `0xc7c92b...99db77`; ethereum `0xdc25b9...68bd34`; ethereum `0xfff13a...c614e9` | ⚠️ Unaudited |
| CheckForReduction | unknown | ethereum | n/a | 3 deployments: ethereum [`0x426e43...0aca86`](./contracts/ethereum-1/0x426e43b82513f17e375681a15ded0c88720aca86/); ethereum `0x487b60...6e67e8`; ethereum `0xe1b0ed...536b52` | ⚠️ Unaudited |
| CheckpointCauldronV4 | unknown | ethereum | n/a | [`0xf36a10...deb23b`](./contracts/ethereum-1/0xf36a106153038c436c470674da0ff1f0dadeb23b/) | ⚠️ Unaudited |
| ChefRewardHook | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0f29b7...7b51ed`](./contracts/ethereum-1/0x0f29b765be2de395cb6b10d9ead46975057b51ed/); ethereum `0x5e2706...a67897`; ethereum `0x93e85b...42b3a2`; ethereum `0x973c2f...43eaea` | ⚠️ Unaudited |
| ChefToken | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4223aa...587c0f`](./contracts/ethereum-1/0x4223aa5bfd783dedcc54585cdc1cfe9ea1587c0f/); ethereum `0x745356...90d8bd`; ethereum `0x83d128...1fb565`; ethereum `0xe79d9a...60f6d0` | ⚠️ Unaudited |
| ClaimVecrvFees | unknown | ethereum | n/a | [`0x494089...f15d0c`](./contracts/ethereum-1/0x4940896e635ea177f1095009be9ee9ef02f15d0c/) | ⚠️ Unaudited |
| ClaimZap | adapter | ethereum | n/a | 6 deployments: ethereum [`0x3f29cb...cf2516`](./contracts/ethereum-1/0x3f29cb4111cbda8081642da1f75b3c12decf2516/); ethereum `0x489097...3e6fa2`; ethereum `0x8cb38a...521889`; ethereum `0x92cf9e...a65070`; ethereum `0xab9f4b...d71f9b`; ethereum `0xdd49a9...5ec82b` | ⚠️ Unaudited |
| Cliff | unknown | avalanche | n/a | 2 deployments: avalanche [`0xaff905...2d4f34`](./contracts/avalanche-43114/0xaff90532e2937ff290009521e7e120ed062d4f34/); avalanche `0xc13b1c...7f6796` | ⚠️ Unaudited |
| CommunityTreasury | unknown | avalanche | n/a | [`0x650f58...a72358`](./contracts/avalanche-43114/0x650f5865541f6d68bddfe977db933c293ea72358/) | ⚠️ Unaudited |
| ConvexStakingWrapperAbra | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4985cc...cc8c20`](./contracts/ethereum-1/0x4985cc58c9004772c225aec9c36cc9a56ecc8c20/); ethereum `0x9447c1...4c5646`; ethereum `0xd92494...e51008` | ⚠️ Unaudited |
| CrvDepositor | unknown | ethereum | n/a | [`0x801459...dc86ae`](./contracts/ethereum-1/0x8014595f2ab54cd7c604b00e9fb932176fdc86ae/) | ⚠️ Unaudited |
| CurveLendMinterFactory | unknown | ethereum | n/a | [`0xd99391...76afff`](./contracts/ethereum-1/0xd99391df68cdb38a89828a6d51f3976e3e76afff/) | ⚠️ Unaudited |
| CurveLendOperator | unknown | ethereum | n/a | [`0xb64e29...9cb8f5`](./contracts/ethereum-1/0xb64e295a69928d3404e576a8ff3c8766559cb8f5/) | ⚠️ Unaudited |
| CustomMasterChefJoeV2Timelock | unknown | avalanche | n/a | [`0xadaf18...e6e398`](./contracts/avalanche-43114/0xadaf18d79f316005542da4ecb1624b59c4e6e398/) | ⚠️ Unaudited |
| CvxCrvRari | unknown | ethereum | n/a | [`0x4fc2a2...56b987`](./contracts/ethereum-1/0x4fc2a279ffddde98cb154f04375e69205156b987/) | ⚠️ Unaudited |
| CvxCrvStakingWrapper | unknown | ethereum | n/a | [`0xaa0c3f...dbe434`](./contracts/ethereum-1/0xaa0c3f5f7dfd688c6e646f66cd2a6b66acdbe434/) | ⚠️ Unaudited |
| CvxCrvUtilities | unknown | ethereum | n/a | [`0xadd2f5...29c673`](./contracts/ethereum-1/0xadd2f542f9ff06405fabf8cae4a74bd0fe29c673/) | ⚠️ Unaudited |
| CvxDistribution | unknown | ethereum | n/a | [`0x449f2f...d1ddc6`](./contracts/ethereum-1/0x449f2fd99174e1785cf2a1c79e665fec3dd1ddc6/) | ⚠️ Unaudited |
| cvxFpisStaking | unknown | ethereum | n/a | [`0xfa87db...6bc483`](./contracts/ethereum-1/0xfa87db3eaa93b7293021e38416650d2e666bc483/) | ⚠️ Unaudited |
| cvxFxsStaking | unknown | ethereum | n/a | [`0x49b4d1...37e31a`](./contracts/ethereum-1/0x49b4d1df40442f0c31b1bbaea3ede7c38e37e31a/) | ⚠️ Unaudited |
| CvxLocker | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5ae0fc...ce56a1`](./contracts/ethereum-1/0x5ae0fca14ed08a3122ffb8d624e063e07bce56a1/); ethereum `0xd18140...94af50` | ⚠️ Unaudited |
| CvxLockerV2 | unknown | ethereum | n/a | [`0x72a193...2db86e`](./contracts/ethereum-1/0x72a19342e8f1838460ebfccef09f6585e32db86e/) | ⚠️ Unaudited |
| CvxMining | unknown | ethereum | n/a | [`0x3c75bf...de5343`](./contracts/ethereum-1/0x3c75bfe6fbfda3a94e7e7e8c2216afc684de5343/) | ⚠️ Unaudited |
| CvxStakingProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4401f1...7943fa`](./contracts/ethereum-1/0x4401f14970a874d27fad5c8a945292cbe97943fa/); ethereum `0xe096cc...44dfc3` | ⚠️ Unaudited |
| CvxStakingProxyV2 | unknown | ethereum | n/a | [`0xb5bbc8...586a4e`](./contracts/ethereum-1/0xb5bbc863bafe5006c68613b89130812a7b586a4e/) | ⚠️ Unaudited |
| DadFab | unknown | ethereum | n/a | 2 deployments: ethereum [`0x01c110...db072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/); ethereum `0xe5df61...2f012f` | ⚠️ Unaudited |
| DaiFab | unknown | ethereum | n/a | [`0xf07674...69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | ⚠️ Unaudited |
| DelegatedVEQuerier | unknown | polygon | n/a | [`0xd0d533...b0dc50`](./contracts/polygon-137/0xd0d5332b37294003f3a915753ea15e4e1bb0dc50/) | ⚠️ Unaudited |
| Distributor | unknown | ethereum | n/a | 3 deployments: ethereum [`0x472cfd...24b85d`](./contracts/ethereum-1/0x472cfd9fa18a332043cfd5b3c46b09a30124b85d/); ethereum `0x73cfe6...d2bb1e`; ethereum `0xc58e92...7d3ce6` | ⚠️ Unaudited |
| DSChief | unknown | ethereum | n/a | [`0x8e2a84...057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | ⚠️ Unaudited |
| DSChiefFab | unknown | ethereum | n/a | [`0x1e7ca0...8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | 6 deployments: ethereum [`0x068083...cc5523`](./contracts/ethereum-1/0x068083069ed92da4c5291dba52d8912abfcc5523/); ethereum `0x2c6739...f95636`; ethereum `0x59adcf...62b6a4`; ethereum `0x97bf1f...b71e0e`; ethereum `0x9aed7a...d6727b`; ethereum `0xc0562b...395e57` | ⚠️ Unaudited |
| DynamicLPStrategy | unknown | avalanche | n/a | [`0x0d2a51...e59449`](./contracts/avalanche-43114/0x0d2a5107435cbbbe21db1adb5f1e078e63e59449/) | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | moonriver | n/a | 22 deployments: bsc `0x79533f...bec951`; bsc `0xd4d19f...bf4c4b`; polygon `0x4d526f...b64f52`; polygon `0x76c936...c02c19`; polygon `0x8e7982...9c20fc`; moonriver [`0x08b918...63ef63`](./contracts/moonriver-1285/0x08b918dd18e087893bb9d711d9e0bbaa7a63ef63/); moonriver `0x458aeb...7b1540`; moonriver `0x52b277...d097e4`; moonriver `0x6e858b...079728`; moonriver `0x97471c...17d954`; moonriver `0xb3f5c7...a26753`; moonriver `0xc7a161...cd8d8c`; moonriver `0xd2221c...f74bf5`; avalanche `0x2fdc60...5e58ce`; avalanche `0x611200...e59f7f`; avalanche `0x7707b4...d6704f`; avalanche `0x7bc6ce...2398fb`; avalanche `0x7c6e8a...4aaeb7`; avalanche `0x9ba780...c3b769`; avalanche `0x9d6cb1...ca89fc`; avalanche `0xcdadbe...9c6cad`; avalanche `0xe5317d...95cbf5` | ⚠️ Unaudited |
| ENAOFT | unknown | arbitrum | n/a | [`0x58538e...9c0133`](./contracts/arbitrum-42161/0x58538e6a46e07434d7e7375bc268d3cb839c0133/) | ⚠️ Unaudited |
| ERC1155GatewayFactory | unknown | arbitrum | n/a | 4 deployments: bsc `0xc3d240...fc94c3`; polygon `0x8ee0e4...3932a8`; arbitrum [`0x312966...a8a43c`](./contracts/arbitrum-42161/0x3129662808bec728a27ab6a6b9afd3cbaca8a43c/); avalanche `0xe0560d...835705` | ⚠️ Unaudited |
| ERC20GatewayFactory | unknown | bsc | n/a | 4 deployments: bsc [`0x31e9c5...fc9c8d`](./contracts/bsc-56/0x31e9c5f7cebaeb2970eaf39bedeb4f31bbfc9c8d/); polygon `0x690df4...ebc653`; arbitrum `0xb01371...f94ab3`; avalanche `0x4643d9...b0df5a` | ⚠️ Unaudited |
| ERC20Mock | unknown | avalanche | n/a | 2 deployments: avalanche [`0x72281a...106587`](./contracts/avalanche-43114/0x72281a435fe5a9945e04ef4d0a32771430106587/); avalanche `0x9e6cab...c05b09` | ⚠️ Unaudited |
| ERC677GatewayFactory | unknown | avalanche | n/a | 4 deployments: bsc `0xb16e4a...11cdda`; polygon `0xdd3983...8ce843`; arbitrum `0xd806a4...247b2b`; avalanche [`0x12e994...1d8f3e`](./contracts/avalanche-43114/0x12e994e89c92b03df6c15fb8340f624aec1d8f3e/) | ⚠️ Unaudited |
| ERC721Gateway_MintBurn | unknown | avalanche | n/a | [`0x17e2e3...49e49e`](./contracts/avalanche-43114/0x17e2e3d4a27e8e0790c85ff2ec13d001e749e49e/) | ⚠️ Unaudited |
| ERC721GatewayFactory | unknown | polygon | n/a | 4 deployments: bsc `0x543b2a...fa259e`; polygon [`0x00f7b0...d50d32`](./contracts/polygon-137/0x00f7b061d410bb4afe189e80c8981774a2d50d32/); arbitrum `0xa87827...3fe353`; avalanche `0x869ec6...0d4964` | ⚠️ Unaudited |
| EsGMX | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x56f979...8758a0`](./contracts/arbitrum-42161/0x56f9799a53fa850d6f7c71f7e9015eb7768758a0/); arbitrum `0x5d1f0c...71d4d4`; arbitrum `0xe1ae4d...3b107f`; arbitrum `0xf42ae1...a426ca` | ⚠️ Unaudited |
| EsGmxBatchSender | unknown | arbitrum | n/a | [`0xc3828f...0207ef`](./contracts/arbitrum-42161/0xc3828fa579996090dc7767e051341338e60207ef/) | ⚠️ Unaudited |
| ExercisepOLY | unknown | ethereum | n/a | [`0x06843e...c50315`](./contracts/ethereum-1/0x06843e4b350a04f6722b792e2cd49f570dc50315/) | ⚠️ Unaudited |
| ExtraRewardStashTokenRescue | unknown | ethereum | n/a | [`0x9dc3de...cfc918`](./contracts/ethereum-1/0x9dc3de2e9d6963bab146dc35dc3925add0cfc918/) | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0dbffb...7d8852`](./contracts/ethereum-1/0x0dbffba31097510d291ad9150b150b3bb07d8852/); ethereum `0x5773f7...1fc234`; ethereum `0xd7abc6...55399c` | ⚠️ Unaudited |
| Factory | unknown | linea | n/a | 3 deployments: ethereum `0xdf46f6...045297`; base `0x9620a2...7c0999`; linea [`0x697778...7d3755`](./contracts/linea-59144/0x697778d9d1f7be0f93f98177a3218859297d3755/) | ⚠️ Unaudited |
| FactoryPortal | unknown | polygon | n/a | 4 deployments: bsc `0xff9c94...d604e3`; polygon [`0x0084b0...42a262`](./contracts/polygon-137/0x0084b0c29e25d5ccaee5465981837ebef542a262/); arbitrum `0x58c1bb...a5b064`; avalanche `0x2ac03b...c3f056` | ⚠️ Unaudited |
| FantomAnimals | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3cb196...bb6dda`](./contracts/avalanche-43114/0x3cb1967b36c318510cc06ab901b428a166bb6dda/); avalanche `0xc6527b...391d07` | ⚠️ Unaudited |
| FastPriceEvents | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x1b27de...d983e6`](./contracts/arbitrum-42161/0x1b27de2815b7903b64961e8c6a992e013dd983e6/); arbitrum `0x37d77f...0cc29f`; arbitrum `0x4530b7...5e1b07`; arbitrum `0x686f6e...0aa8d9`; arbitrum `0x88459b...af8f79`; arbitrum `0xbf3d9b...51db60`; arbitrum `0xe061f2...f42640` | ⚠️ Unaudited |
| FastPriceFeed | unknown | arbitrum | n/a | 17 deployments: arbitrum [`0x068f28...2167c7`](./contracts/arbitrum-42161/0x068f2880c5dc0cb5c1ef913a517f3ad4122167c7/); arbitrum `0x11d628...f43bb7`; arbitrum `0x1a0ad2...fdb774`; arbitrum `0x2ee130...cb807e`; arbitrum `0x2ffbe7...db4c4b`; arbitrum `0x3b8be8...426094`; arbitrum `0x4e9357...bd841e`; arbitrum `0x72927d...fedf95`; arbitrum `0x73fe72...e728df`; arbitrum `0x8960d1...535527`; arbitrum `0xaf47e9...4fef84`; arbitrum `0xb7bd32...6405db`; arbitrum `0xba5555...797e5c`; arbitrum `0xd2a0d4...fefb1c`; arbitrum `0xf5dc6e...f013a3`; arbitrum `0xfaf8c0...2f91d1`; arbitrum `0xfd50a7...55c4a5` | ⚠️ Unaudited |
| FeeBridge | operational_periphery | ethereum | n/a | [`0xd43024...1410e9`](./contracts/ethereum-1/0xd430246142084ec68f7ab090cbd9252a1d1410e9/) | ⚠️ Unaudited |
| FeeDeposit | unknown | ethereum | n/a | [`0xcbec22...7323f7`](./contracts/ethereum-1/0xcbec22233dad5e15ab9c02caa4d914f3c97323f7/) | ⚠️ Unaudited |
| FeeDepositV2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x29dba2...999178`](./contracts/ethereum-1/0x29dba2751b5aa26f7d03657066c0984c66999178/); ethereum `0x7a527d...a0d769`; ethereum `0xf980a8...7306f9` | ⚠️ Unaudited |
| FeeRateModel | unknown | base | n/a | 2 deployments: base [`0x358a42...cf3289`](./contracts/base-8453/0x358a429f2fe8605f895d70480c51950a56cf3289/); linea `0x91701a...9f59bc` | ⚠️ Unaudited |
| FeeRateModelImpl | unknown | linea | n/a | 2 deployments: base `0x9affe9...59fbc4`; linea [`0x418ade...a64470`](./contracts/linea-59144/0x418ade5929fb6a9e3666ab19332e70a0f0a64470/) | ⚠️ Unaudited |
| FeeReceiverCvxFpis | unknown | ethereum | n/a | [`0x3a562a...9e08e0`](./contracts/ethereum-1/0x3a562a8ceb9866bcf39bb5eda32f282d619e08e0/) | ⚠️ Unaudited |
| FeeReceiverCvxFxs | unknown | ethereum | n/a | 2 deployments: ethereum [`0x31c5e6...3f8f24`](./contracts/ethereum-1/0x31c5e6d1891d2af49dec041d41a3a663e03f8f24/); ethereum `0xa1b724...43622a` | ⚠️ Unaudited |
| FeeReceiverPlatform | unknown | ethereum | n/a | [`0xd60d80...ec36cf`](./contracts/ethereum-1/0xd60d80d9c184d4f02ff1711844aaa4e94bec36cf/) | ⚠️ Unaudited |
| FeeReceiverVeFxs | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6f94fe...717624`](./contracts/ethereum-1/0x6f94fe4dadd7a6f4ce67e607bab531a9d1717624/); ethereum `0x871b36...830b56` | ⚠️ Unaudited |
| FeeReceiverVlCvx | unknown | ethereum | n/a | [`0xb9a212...d2c2b8`](./contracts/ethereum-1/0xb9a2120f32420f0da2777ee07beeea92d3d2c2b8/) | ⚠️ Unaudited |
| FeeRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7a299a...2394e3`](./contracts/ethereum-1/0x7a299a6f5bc33c7e3c8ba5bbdebeba8a012394e3/); ethereum `0xc9acb8...b3c46d` | ⚠️ Unaudited |
| FixedPriceOracle | unknown | avalanche | n/a | 2 deployments: ethereum `0x34aa06...32dbfd`; avalanche [`0x116899...2aac10`](./contracts/avalanche-43114/0x11689993dff3f79b27440f4ce74d52bb952aac10/) | ⚠️ Unaudited |
| Foo | unknown | avalanche | n/a | 12 deployments: avalanche [`0x04bc95...792722`](./contracts/avalanche-43114/0x04bc95d6049ff64885d503614521966c91792722/); avalanche `0x238693...e56a46`; avalanche `0x4a9aa1...0d2abc`; avalanche `0x4c67a4...6e8c72`; avalanche `0x8beff7...3a2997`; avalanche `0x8c63cd...bed669`; avalanche `0x8f5e56...d520f6`; avalanche `0x931c3a...0c0e6f`; avalanche `0x9d01d5...09618d`; avalanche `0xd2969a...5affcf`; avalanche `0xe8d3e9...2d3e87`; avalanche `0xed172b...b8b838` | ⚠️ Unaudited |
| FpisDepositor | unknown | ethereum | n/a | [`0x27445d...a7a04b`](./contracts/ethereum-1/0x27445d3f59d6b966072abe20e41a29fbb6a7a04b/) | ⚠️ Unaudited |
| FpisRewardHook | unknown | ethereum | n/a | [`0xb93989...a3238d`](./contracts/ethereum-1/0xb93989b104a3bc2eba16210748cecdf76ea3238d/) | ⚠️ Unaudited |
| FTMMainLevSwapperV1 | unknown | ethereum | n/a | [`0x83a56b...b375f4`](./contracts/ethereum-1/0x83a56ba3cfc236f8923bd27258c6abfc19b375f4/) | ⚠️ Unaudited |
| FTMMainSwapperV1 | unknown | ethereum | n/a | [`0xe1847a...fd09bb`](./contracts/ethereum-1/0xe1847af8f3292ac831066bd288889596a1fd09bb/) | ⚠️ Unaudited |
| FtmOracleV1 | unknown | ethereum | n/a | [`0xed3056...57c378`](./contracts/ethereum-1/0xed3056e0aa92c8ea9732212b254a59e9bc57c378/) | ⚠️ Unaudited |
| FTT | unknown | ethereum | n/a | [`0x50d1c9...55a4c9`](./contracts/ethereum-1/0x50d1c9771902476076ecfc8b2a83ad6b9355a4c9/) | ⚠️ Unaudited |
| FTT3MonthUnlock | unknown | ethereum | n/a | 2 deployments: ethereum [`0x46c68e...e5c83a`](./contracts/ethereum-1/0x46c68e70c5de077c87e79394b639fde780e5c83a/); ethereum `0x600d08...0b7862` | ⚠️ Unaudited |
| FTT3YearUnlock | unknown | ethereum | n/a | [`0xd76901...28bb83`](./contracts/ethereum-1/0xd769010d3813bafaf4addbfe258eafd07828bb83/) | ⚠️ Unaudited |
| FxsDepositor | unknown | ethereum | n/a | [`0x8f55d7...a3181e`](./contracts/ethereum-1/0x8f55d7c21bdff1a51afaa60f3de7590222a3181e/) | ⚠️ Unaudited |
| FXSRewardHook | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1a6980...78f1f7`](./contracts/ethereum-1/0x1a6980170fd45bdebf5902b597c53a2a0678f1f7/); ethereum `0x63ad87...1ba175`; ethereum `0xb32eac...638cbc` | ⚠️ Unaudited |
| GaugeExtraRewardDistributor | unknown | ethereum | n/a | 6 deployments: ethereum [`0x04bb59...510330`](./contracts/ethereum-1/0x04bb59bd617f06eeeee00caeaffc8f3b68510330/); ethereum `0x2365fd...189712`; ethereum `0x318171...ce0ccc`; ethereum `0x395a89...6158cd`; ethereum `0x3f78e6...730852`; ethereum `0x4c586e...cbdc57` | ⚠️ Unaudited |
| GemFab | unknown | ethereum | n/a | 2 deployments: ethereum [`0x431e93...845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/); ethereum `0x552f35...ec30e9` | ⚠️ Unaudited |
| GemPit | unknown | ethereum | n/a | 3 deployments: ethereum [`0x69076e...83c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/); ethereum `0x9dc6c5...4c37e5`; ethereum `0xf5b59c...ad8d55` | ⚠️ Unaudited |
| GizerItems | unknown | ethereum | n/a | [`0x6c0f03...fd4602`](./contracts/ethereum-1/0x6c0f03411ab250f0a080a4420190b821affd4602/) | ⚠️ Unaudited |
| GizerToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x5db2d4...87b59b`](./contracts/ethereum-1/0x5db2d4a2e6d06f9afe906fc33036f77ebe87b59b/); ethereum `0x89afa6...5d9289`; ethereum `0xe638dc...f46d8e` | ⚠️ Unaudited |
| GLP | unknown | arbitrum | n/a | [`0x4277f8...1ac258`](./contracts/arbitrum-42161/0x4277f8f2c384827b5273592ff7cebd9f2c1ac258/) | ⚠️ Unaudited |
| GlpBalance | unknown | arbitrum | n/a | [`0x13e0bb...a4ebce`](./contracts/arbitrum-42161/0x13e0bbe893b33b64d4f3f96725dd70531fa4ebce/) | ⚠️ Unaudited |
| GlpManager | governance | arbitrum | n/a | 3 deployments: arbitrum [`0x321f65...e22649`](./contracts/arbitrum-42161/0x321f653eed006ad1c29d174e17d96351bde22649/); arbitrum `0x3963ff...32ec18`; arbitrum `0x91425a...4f3270` | ⚠️ Unaudited |
| GLPOracle | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x1dde35...c38d28`](./contracts/arbitrum-42161/0x1dde3505fa0dd8ef2253dbbc1aea0b4355c38d28/); arbitrum `0x445918...125582`; arbitrum `0x791aab...91dcc1` | ⚠️ Unaudited |
| GmOracleWithAggregator | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x3e60da...3791ab`](./contracts/arbitrum-42161/0x3e60dafa968d1786b1db76da3ef658c9563791ab/); arbitrum `0xabb326...007a97`; arbitrum `0xba5994...086194`; arbitrum `0xca0d42...3704da` | ⚠️ Unaudited |
| GMX | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x012341...d7c7b8`](./contracts/arbitrum-42161/0x01234181085565ed162a948b6a5e88758cd7c7b8/); arbitrum `0x09cbe2...408b8d`; arbitrum `0x0f0598...9934ba`; arbitrum `0x665ed5...604b7c`; arbitrum `0x9c5c2a...ffe874`; arbitrum `0xfc5a1a...35ad0a` | ⚠️ Unaudited |
| GmxGlpRewardHandler | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3477df...3c7e75`](./contracts/arbitrum-42161/0x3477df28ce70cecf61fffa7a95be4bec3b3c7e75/); arbitrum `0x8d99a1...d0da30` | ⚠️ Unaudited |
| GmxGlpRewardHandler | unknown | arbitrum | n/a | [`0xf4b368...90349e`](./contracts/arbitrum-42161/0xf4b36812d1645dca9d562846e3abf416d590349e/) | ⚠️ Unaudited |
| GmxGlpWrapper | unknown | arbitrum | n/a | [`0xd8cbd5...03993b`](./contracts/arbitrum-42161/0xd8cbd5b22d7d37c978609e4e394ce8b9c003993b/) | ⚠️ Unaudited |
| GmxLens | unknown | avalanche | n/a | 2 deployments: arbitrum `0x714085...a2cd74`; avalanche [`0x1589de...788c69`](./contracts/avalanche-43114/0x1589defc3abb8ac5d0e86c19fb940874ea788c69/) | ⚠️ Unaudited |
| GmxTimelock | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x34b45e...118a81`](./contracts/arbitrum-42161/0x34b45ee7cdccb5652bf54fd9795dd447a4118a81/); arbitrum `0x5a1614...8667a2`; arbitrum `0x68863d...4dea6a`; arbitrum `0x9c453e...6a1729` | ⚠️ Unaudited |
| GmxV2CauldronOrderAgent | unknown | arbitrum | n/a | 22 deployments: arbitrum [`0x0155b6...c83203`](./contracts/arbitrum-42161/0x0155b6fe74f90a3840ebf750ea4237d542c83203/); arbitrum `0x0ad2ce...ca1954`; arbitrum `0x10b37a...ce1615`; arbitrum `0x153ecd...07fc17`; arbitrum `0x1ae691...a1ec69`; arbitrum `0x1b6552...750f36`; arbitrum `0x2d9b2d...04056c`; arbitrum `0x49676b...969757`; arbitrum `0x5389e3...fc674e`; arbitrum `0x59eea3...90677c`; arbitrum `0x5b82fa...50e684`; arbitrum `0x6b101c...6987ff`; arbitrum `0x71f94a...cf15bb`; arbitrum `0x815707...8d60f2`; arbitrum `0x8e2c80...2cd862`; arbitrum `0x8e4a11...50ae4a`; arbitrum `0xa822ae...24aa5e`; arbitrum `0xcfd3c2...22e8b3`; arbitrum `0xecabba...32b076`; arbitrum `0xede9a6...1c21aa`; arbitrum `0xf48959...67124a`; arbitrum `0xf6e2a4...2734a8` | ⚠️ Unaudited |
| GmxV2CauldronRouterOrder | adapter | arbitrum | n/a | 20 deployments: arbitrum [`0x02a97f...59414a`](./contracts/arbitrum-42161/0x02a97f80afc2d507bba371f11fe236994159414a/); arbitrum `0x1ce8ec...418f27`; arbitrum `0x3a5770...d0574e`; arbitrum `0x4b0004...338790`; arbitrum `0x6c1ef1...f6df76`; arbitrum `0x709aa6...00bf7c`; arbitrum `0x73962c...b5ca5f`; arbitrum `0x760c0d...2c5c6f`; arbitrum `0x8764f8...d7682a`; arbitrum `0x8b14ff...28854a`; arbitrum `0x94ea6b...e00fc2`; arbitrum `0x992b72...efabcb`; arbitrum `0x9d9826...7bf712`; arbitrum `0xa6032f...81ed3e`; arbitrum `0xb01a7a...8e2167`; arbitrum `0xb14e4e...5d6989`; arbitrum `0xb621b8...18faac`; arbitrum `0xba95c5...390b43`; arbitrum `0xcde8ed...4c42b7`; arbitrum `0xede6ec...bc4fe5` | ⚠️ Unaudited |
| GMXV2Experiment_OrderAgent | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x6ac116...e0746d`](./contracts/arbitrum-42161/0x6ac1163b6f60ba8d6dc1a7f4ccd122418ce0746d/); arbitrum `0x704df2...9ab431`; arbitrum `0x7ad66f...1fdead` | ⚠️ Unaudited |
| GMXV2Experiment_RouterOrder | adapter | arbitrum | n/a | 3 deployments: arbitrum [`0x3b0eca...08eee5`](./contracts/arbitrum-42161/0x3b0ecac5653107a985be93ab25d8dbb8a608eee5/); arbitrum `0x8d9e68...616e59`; arbitrum `0x9cab9f...359439` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xdf2c27...1e126b`](./contracts/ethereum-1/0xdf2c270f610dc35d8ffda5b453e74db5471e126b/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | [`0xa71a02...b7174c`](./contracts/arbitrum-42161/0xa71a021ef66b03e45e0d85590432dfcfa1b7174c/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | avalanche | n/a | [`0xae4d3a...a543ca`](./contracts/avalanche-43114/0xae4d3a42e46399827bd094b4426e2f79cca543ca/) | ⚠️ Unaudited |
| Governable | unknown | arbitrum | n/a | [`0xaf8e96...9d8a47`](./contracts/arbitrum-42161/0xaf8e969e3e23f1732f614e64630498ec809d8a47/) | ⚠️ Unaudited |
| GovernorAlpha | unknown | avalanche | n/a | [`0xb0ff2b...f43ee1`](./contracts/avalanche-43114/0xb0ff2b1047d9e8d294c2ed798fae3fa817f43ee1/) | ⚠️ Unaudited |
| Harvester | operational_periphery | ethereum | n/a | [`0x6d6bca...86e1e7`](./contracts/ethereum-1/0x6d6bcac2266468a44da9fa482ca54aaed586e1e7/) | ⚠️ Unaudited |
| IDCard_V2 | unknown | bsc | n/a | 2 deployments: bsc [`0x060bad...d76f69`](./contracts/bsc-56/0x060bad68e5d9b0c0dbcef7963925eca257d76f69/); bsc `0x0bf4c7...28e80b` | ⚠️ Unaudited |
| IDCard_V2 | unknown | bsc | n/a | 2 deployments: bsc [`0x3e0558...2bdfdc`](./contracts/bsc-56/0x3e05584358f0fbfc1909ade5acffbab7842bdfdc/); bsc `0x5c3714...5c007c` | ⚠️ Unaudited |
| IDCard_V2 | unknown | bsc | n/a | 2 deployments: bsc [`0x5c33bb...de16b2`](./contracts/bsc-56/0x5c33bbeaef5bb61872b1a089def880d66cde16b2/); bsc `0xd38b5b...32e950` | ⚠️ Unaudited |
| IDCard_V2 | unknown | polygon | n/a | 7 deployments: bsc `0x845d32...9dd2e1`; bsc `0xab9a71...b47b67`; bsc `0xb12378...6690d1`; bsc `0xc17e20...ecfa22`; bsc `0xe295f2...c9f496`; polygon [`0x2df86a...c13448`](./contracts/polygon-137/0x2df86a5f761532d764d8e3861ccdb1e763c13448/); polygon `0x4e0dae...34c574` | ⚠️ Unaudited |
| IDCard_V2 | unknown | polygon | n/a | 2 deployments: polygon [`0x7a0249...9296cc`](./contracts/polygon-137/0x7a02492baa66b0b8266a6d25bbd6d8ba169296cc/); polygon `0xf31789...929452` | ⚠️ Unaudited |
| IDCard_V2_Controller | unknown | bsc | n/a | 4 deployments: bsc [`0x29c0c6...de4e1a`](./contracts/bsc-56/0x29c0c69c028c5be41a487814aa29ff43f5de4e1a/); bsc `0x548a0b...c15dc4`; bsc `0x93c4c7...0abb38`; polygon `0x963fac...6072fc` | ⚠️ Unaudited |
| IDCard_V2_Controller | unknown | bsc | n/a | 2 deployments: bsc [`0x313fdd...4113b8`](./contracts/bsc-56/0x313fdd7368781d5d25b345df07bc65df7b4113b8/); bsc `0xee6430...bdca43` | ⚠️ Unaudited |
| IDCard_V2_Controller | unknown | bsc | n/a | 2 deployments: bsc [`0x81dcd4...889b90`](./contracts/bsc-56/0x81dcd47edad7e30864c7d3f84032368954889b90/); bsc `0xea01dc...1dccf1` | ⚠️ Unaudited |
| IDCard_V2_Controller | unknown | polygon | n/a | 2 deployments: polygon [`0x2d11a4...d3954a`](./contracts/polygon-137/0x2d11a42c7952d645089c8bfeb3a0728a0dd3954a/); polygon `0x5fe673...d7b08c` | ⚠️ Unaudited |
| IDCard_V2_Controller | unknown | polygon | n/a | 2 deployments: polygon [`0x37c246...517eb5`](./contracts/polygon-137/0x37c24675e4a0dfce683c51e1746599f1e2517eb5/); polygon `0xb89a2f...ca2c00` | ⚠️ Unaudited |
| IDNFT_v1 | unknown | polygon | n/a | 2 deployments: polygon [`0xd84855...2d0da1`](./contracts/polygon-137/0xd8485513dd9947aa3287d90fd3804d3df52d0da1/); polygon `0xfa9a1b...b443b8` | ⚠️ Unaudited |
| IFO | unknown | bsc | n/a | 2 deployments: bsc [`0x4eff3a...21d820`](./contracts/bsc-56/0x4eff3a0a82f624b617aab7af92777deec521d820/); bsc `0x80ffcb...7b99cb` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x0366f1...1d5700`](./contracts/bsc-56/0x0366f1a242c37ca73c73834b7fcd4a66af1d5700/); bsc `0x9c2112...7e0a9e` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x04178a...01896a`](./contracts/bsc-56/0x04178a4a68ac0fb53e11f53170f1be2b3701896a/); bsc `0x828c47...310efa` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x0adb5c...237402`](./contracts/bsc-56/0x0adb5c6a882e212b6202d51ba76a992f33237402/); bsc `0x4bd057...a2861d` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 6 deployments: bsc [`0x15a3a6...8141db`](./contracts/bsc-56/0x15a3a647f70ad6d556d55694f6b48c65928141db/); bsc `0x5b548d...b9e82c`; bsc `0x744048...a86e64`; bsc `0x9532e8...87b7b5`; bsc `0x973f50...eea773`; bsc `0xec3f4c...dd0161` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x183e6c...3e3df8`](./contracts/bsc-56/0x183e6c44150627b78d6041c10b884eab543e3df8/); bsc `0xa32509...a4efeb` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x2c6785...49c9a1`](./contracts/bsc-56/0x2c67850ab6d76c36aec82a0a0bcdf0713049c9a1/); bsc `0x570c9e...d20788` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x2d385e...098fce`](./contracts/bsc-56/0x2d385e171a29188f00b098e76dff856e04098fce/); bsc `0x580d5d...bb9a14` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x31f781...871004`](./contracts/bsc-56/0x31f781456b0679bfcf3694195f408e10ec871004/); bsc `0x55344b...84fe6d` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x3fd0d7...1be9ab`](./contracts/bsc-56/0x3fd0d7ee6689bbac605065745105e1585a1be9ab/); bsc `0xc9fbed...2a1d38` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x44081f...8ccc00`](./contracts/bsc-56/0x44081f637776e8e49561127e9992a112008ccc00/); bsc `0x5d028c...63d7dd` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x44a9cc...d99bad`](./contracts/bsc-56/0x44a9cc8463ec00937242b660bf65b10365d99bad/); bsc `0x5d0709...f4151c` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x5ebf71...192697`](./contracts/bsc-56/0x5ebf71bdedb6bc9904920183809e579848192697/); bsc `0xb9e8cf...9c44fa` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x5f402a...3c5be1`](./contracts/bsc-56/0x5f402a3f336d4833a76a72de0104268f6e3c5be1/); bsc `0xf6dd57...0bd443` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x6acc48...bc2585`](./contracts/bsc-56/0x6acc482246d8920ba5530dba24b0e5abdabc2585/); bsc `0x910081...657a06` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x6f82b8...671722`](./contracts/bsc-56/0x6f82b891bab62ae23ad62a7cedb75b24e0671722/); bsc `0x9d3a1c...ef2cfe` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x804583...4d9875`](./contracts/bsc-56/0x80458344d7b5beb363d36de620871725c24d9875/); bsc `0xb922aa...c51f06` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x8ef99b...bb1837`](./contracts/bsc-56/0x8ef99b1bea6866f583e51b52474a6e9a80bb1837/); bsc `0xb1efa4...fa8c82` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x94a24c...a78f02`](./contracts/bsc-56/0x94a24ca3fae6d485639efa72853cf4327ca78f02/); bsc `0xebb16e...f3945a` | ⚠️ Unaudited |
| IFOByProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xba79c4...101663`](./contracts/bsc-56/0xba79c4846a82b3fde3bbf1a90dafe25286101663/); bsc `0xff861a...7200e3` | ⚠️ Unaudited |
| IFOUpgradeProxy | unknown | bsc | n/a | [`0xf0ae9b...2624b0`](./contracts/bsc-56/0xf0ae9b39ef4a2680d67c9fb252816725f22624b0/) | ⚠️ Unaudited |
| InchSpellSwapper | adapter | ethereum | n/a | [`0xdfe1a5...a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | ⚠️ Unaudited |
| Incrementer | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3eddac...50015d`](./contracts/ethereum-1/0x3eddacf2c184a302ff17682a7e48a0e47550015d/); ethereum `0x5ee7ca...1a2a5a`; ethereum `0xed175a...0d2403` | ⚠️ Unaudited |
| IndaHashToken | unknown | ethereum | n/a | [`0xb5c2ea...f78212`](./contracts/ethereum-1/0xb5c2ea13d2bf1968a10722dc45900c8da0f78212/) | ⚠️ Unaudited |
| IndirectOFTV2 | unknown | avalanche | n/a | 21 deployments: bsc `0x70b868...6a7493`; bsc `0xf76da2...ae20fc`; polygon `0x563111...fc537b`; polygon `0x7c8fef...431d38`; polygon `0xa6247e...b3c15e`; moonriver `0x9031c0...b3d8f7`; moonriver `0xa93c81...ba1723`; moonriver `0xae031b...8bbe90`; moonriver `0xb9565f...4f265a`; moonriver `0xbb7211...6409d5`; moonriver `0xee2f02...8f143a`; moonriver `0xfbf7db...33a586`; avalanche [`0x0703ea...bdce5c`](./contracts/avalanche-43114/0x0703ea6f7b359da666d5181e3120e54bc9bdce5c/); avalanche `0x12445a...0c5652`; avalanche `0x225c5e...60f96f`; avalanche `0x384528...d206fd`; avalanche `0x4b8750...57b2db`; avalanche `0x762d06...6e596e`; avalanche `0x9edc38...88fd2b`; avalanche `0xe0e091...f0cc32`; avalanche `0xf8c54f...06650c` | ⚠️ Unaudited |
| InterestRateCalculatorV2 | operational_periphery | ethereum | n/a | [`0x1972b5...bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | ⚠️ Unaudited |
| InvertedLPOracle | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3edf40...bebfe9`](./contracts/avalanche-43114/0x3edf406a2d478158eb56615445eda6a429bebfe9/); avalanche `0xf1f201...8ad227` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | unknown | avalanche | n/a | 36 deployments: avalanche [`0x125cf8...84b4d2`](./contracts/avalanche-43114/0x125cf88b4dc08b45847dec7b8d8e1b543f84b4d2/); avalanche `0x1adbde...330024`; avalanche `0x28adbb...a7a0a3`; avalanche `0x296731...f9bd20`; avalanche `0x2e3a35...7975e2`; avalanche `0x2ed5cd...ff11bd`; avalanche `0x320448...6cccee`; avalanche `0x3ac928...16b974`; avalanche `0x3b34e1...185ecc`; avalanche `0x4a586d...a4d271`; avalanche `0x564780...bbacd0`; avalanche `0x5f2a43...083ae6`; avalanche `0x647da9...92cf2b`; avalanche `0x6b5a37...93a86b`; avalanche `0x6caf40...9d51c5`; avalanche `0x737fdf...fddf34`; avalanche `0x7a17fb...bf3421`; avalanche `0x81516e...23f592`; avalanche `0x838549...aa34cd`; avalanche `0x83c672...c6ea8a`; avalanche `0x8cc49b...d8a98a`; avalanche `0x97e3a6...213612`; avalanche `0x9c1e13...da9e8e`; avalanche `0xb2bb1e...7e5e8b`; avalanche `0xbb95aa...d7b337`; avalanche `0xc17f99...f9a47a`; avalanche `0xcd85fe...7348ad`; avalanche `0xcf62b6...94429b`; avalanche `0xd1bb83...9fbe3f`; avalanche `0xd7c246...8c3ed5`; avalanche `0xea5e11...cbbf51`; avalanche `0xeb41c9...1b1df8`; avalanche `0xebea85...60e62e`; avalanche `0xeed14f...54847c`; avalanche `0xf65a08...503d42`; avalanche `0xf88d8e...50317c` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | avalanche | n/a | [`0xce095a...6a75ea`](./contracts/avalanche-43114/0xce095a9657a02025081e0607c8d8b081c76a75ea/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegator | unknown | avalanche | n/a | [`0x102011...ae0fbf`](./contracts/avalanche-43114/0x102011863cc4f506d1387cd6b22c522602ae0fbf/) | ⚠️ Unaudited |
| JoeBar | unknown | avalanche | n/a | [`0x57319d...fd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | ⚠️ Unaudited |
| JoeDynamicSubLPStrategy | unknown | avalanche | n/a | [`0xaf2fbb...2d0b86`](./contracts/avalanche-43114/0xaf2fbb9cb80edfb7d3f2d170a65ae3bfa42d0b86/) | ⚠️ Unaudited |
| JoeFactory | registry | avalanche | n/a | 2 deployments: avalanche [`0x9ad6c3...0cfa10`](./contracts/avalanche-43114/0x9ad6c38be94206ca50bb0d90783181662f0cfa10/); avalanche `0xe2ecc2...e75eb8` | ⚠️ Unaudited |
| JoeLens | unknown | avalanche | n/a | [`0xfdf50f...8a47cc`](./contracts/avalanche-43114/0xfdf50fea3527fad31fa840b748fd3694ae8a47cc/) | ⚠️ Unaudited |
| JoeMaker | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4247c5...bcdcfe`](./contracts/avalanche-43114/0x4247c5dbac51a135939cc904c34e4913b6bcdcfe/); avalanche `0x861726...b65856` | ⚠️ Unaudited |
| JoeMakerV3 | unknown | avalanche | n/a | [`0xdb5b4c...a475d3`](./contracts/avalanche-43114/0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3/) | ⚠️ Unaudited |
| JoePair | unknown | avalanche | n/a | 3 deployments: avalanche [`0x781655...fd755d`](./contracts/avalanche-43114/0x781655d802670bba3c89aebaaea59d3182fd755d/); avalanche `0xa389f9...e3ddb1`; avalanche `0xed8cbd...7a6256` | ⚠️ Unaudited |
| JoeRoll | unknown | avalanche | n/a | [`0xacff0f...0bcb58`](./contracts/avalanche-43114/0xacff0fbf56baeb9ef677de19aded8f7a950bcb58/) | ⚠️ Unaudited |
| JoeRouter02 | adapter | avalanche | n/a | [`0x60ae61...0933d4`](./contracts/avalanche-43114/0x60ae616a2155ee3d9a68541ba4544862310933d4/) | ⚠️ Unaudited |
| Joetroller | unknown | avalanche | n/a | 2 deployments: avalanche [`0x1ed836...92cfcb`](./contracts/avalanche-43114/0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb/); avalanche `0x8b33e8...3d99b7` | ⚠️ Unaudited |
| Joetroller | unknown | avalanche | n/a | [`0xdc1368...a1edac`](./contracts/avalanche-43114/0xdc13687554205e5b89ac783db14bb5bba4a1edac/) | ⚠️ Unaudited |
| JointVaultManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x599113...dfb9ec`](./contracts/ethereum-1/0x599113b0403e3fa613c318af0bf75826bedfb9ec/); ethereum `0x8fc0d6...8a3b84` | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | avalanche | n/a | 3 deployments: avalanche [`0x267a45...149df5`](./contracts/avalanche-43114/0x267a4576293d55b53c769606e886e1f343149df5/); avalanche `0x81b539...3d9136`; avalanche `0xd915fd...015531` | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | avalanche | n/a | [`0xc22f01...4ec29e`](./contracts/avalanche-43114/0xc22f01ddc8010ee05574028528614634684ec29e/) | ⚠️ Unaudited |
| KashiPairMediumRiskV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x74a81c...e51e65`](./contracts/ethereum-1/0x74a81cb5b6996d9347b864b9a1492a6509e51e65/); arbitrum `0xa010ee...1f5d3e` | ⚠️ Unaudited |
| L2AddressRegistry | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3e84af...d901e8`](./contracts/arbitrum-42161/0x3e84af3743cc4e7f516570b341ced56530d901e8/); arbitrum `0x56c4e9...bda9d3` | ⚠️ Unaudited |
| LevelFinanceStakingLens | unknown | bsc | n/a | 2 deployments: bsc [`0x0bf531...e63d66`](./contracts/bsc-56/0x0bf531afdf4b8d937df2a802eb43aeb608e63d66/); bsc `0x4437db...c52709` | ⚠️ Unaudited |
| LiquidityPoolManagerV2 | unknown | avalanche | n/a | [`0x912b5d...397994`](./contracts/avalanche-43114/0x912b5d41656048ef681efa9d32488a3ffe397994/) | ⚠️ Unaudited |
| LockerAdmin | unknown | ethereum | n/a | [`0x98e28a...0d418c`](./contracts/ethereum-1/0x98e28afb9c11aa979ae754e1ea2e9877cb0d418c/) | ⚠️ Unaudited |
| LockingMultiRewards | unknown | arbitrum | n/a | 11 deployments: arbitrum [`0x13e17f...321b20`](./contracts/arbitrum-42161/0x13e17fd348f242ff71b9e022ce3714b139321b20/); arbitrum `0x20f2b9...39646f`; arbitrum `0x852563...4371ca`; arbitrum `0x8d476a...8c7b2b`; arbitrum `0x8d8bdf...268e90`; arbitrum `0x9512b9...6984e6`; arbitrum `0x98164d...e02d0a`; arbitrum `0x99be6b...669b5d`; arbitrum `0xd30c93...c1ba7b`; arbitrum `0xe06d95...bd73b6`; arbitrum `0xe71896...b609ad` | ⚠️ Unaudited |
| Lottery | unknown | bsc | n/a | 20 deployments: bsc [`0x127551...d13280`](./contracts/bsc-56/0x127551b5cd5d21bd736483cb829b580a4cd13280/); bsc `0x1698e1...d79e09`; bsc `0x1c1b35...efc683`; bsc `0x21511c...25fea6`; bsc `0x2b55e2...65532f`; bsc `0x2f6d75...9bb615`; bsc `0x43fa34...ccd4d8`; bsc `0x52342d...6db990`; bsc `0x5d2117...c6b061`; bsc `0x609491...ef6f61`; bsc `0x87ec62...a6e007`; bsc `0x9526e6...277297`; bsc `0xaae6db...7d5ea2`; bsc `0xb23835...b61bd5`; bsc `0xb37822...cc33da`; bsc `0xc608bd...b357aa`; bsc `0xc7ff35...b688f8`; bsc `0xcb95e1...97ddf8`; bsc `0xe5ef65...f32782`; bsc `0xff0395...801e0a` | ⚠️ Unaudited |
| Lottery | unknown | bsc | n/a | 2 deployments: bsc [`0x4f77f3...0f362a`](./contracts/bsc-56/0x4f77f3f0b6ad0e054ed009d7105450116f0f362a/); bsc `0xf92aa8...c90ef9` | ⚠️ Unaudited |
| Lottery | unknown | bsc | n/a | 2 deployments: bsc [`0x51ae82...1a6971`](./contracts/bsc-56/0x51ae82bdbcf94eaba62d102ab439ec2bad1a6971/); bsc `0xde95ad...1bcec4` | ⚠️ Unaudited |
| LotteryNFT | unknown | bsc | n/a | [`0x1900e0...e4992e`](./contracts/bsc-56/0x1900e0d289ebc5b7b75aff8232464b9f99e4992e/) | ⚠️ Unaudited |
| LotteryRewardProxy | unknown | bsc | n/a | 3 deployments: bsc [`0x6b4dc7...bfc3ba`](./contracts/bsc-56/0x6b4dc78b8303d65476e2fcdde5be262e8abfc3ba/); bsc `0xb31ab5...6f1a15`; bsc `0xfe0f4f...c76862` | ⚠️ Unaudited |
| LPChainlinkOracleV1 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x04a34f...3e31d6`](./contracts/avalanche-43114/0x04a34ff16f31c8d6ea7b2c4489df13caa53e31d6/); avalanche `0x279d54...6800a3` | ⚠️ Unaudited |
| LPResolver | unknown | avalanche | n/a | 2 deployments: avalanche [`0x04df48...092682`](./contracts/avalanche-43114/0x04df48ac59cd1ff079752405db731cc21e092682/); avalanche `0x107cca...d1dea6` | ⚠️ Unaudited |
| LPStrategy | unknown | avalanche | n/a | 6 deployments: avalanche [`0x006d8e...f938c5`](./contracts/avalanche-43114/0x006d8e69365bd93c38f4af1814207a4002f938c5/); avalanche `0x438383...dc953d`; avalanche `0x663ef4...1aeb38`; avalanche `0x87a5bf...0c2e82`; avalanche `0xa6247e...b3c15e`; avalanche `0xad2f28...eb030d` | ⚠️ Unaudited |
| LQTYStaking | unknown | ethereum | n/a | [`0x4f9fbb...fc605d`](./contracts/ethereum-1/0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d/) | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | avalanche | n/a | 18 deployments: optimism `0x48686c...e74339`; bsc `0x41d5a0...c601af`; bsc `0x854a86...cf10a3`; bsc `0xab137b...138ee6`; polygon `0x1ca9f1...4a0ea8`; polygon `0xca0d86...e05533`; polygon `0xf4b368...90349e`; moonriver `0x15f57f...1bc298`; moonriver `0x438383...dc953d`; moonriver `0xef2dbd...4f0195`; base `0x403595...91d262`; arbitrum `0x957a8a...0b7090`; avalanche [`0x0c1108...df2a3c`](./contracts/avalanche-43114/0x0c11084f9bb72e4305088d329a5a1a64a6df2a3c/); avalanche `0x56d924...50e475`; avalanche `0xb3a661...1b130d`; linea `0x403595...91d262`; linea `0x60bbef...25a097`; blast `0xca8a20...91f018` | ⚠️ Unaudited |
| LzOFTV2FeeHandler | unknown | linea | n/a | 3 deployments: base `0x52b277...d097e4`; linea [`0x41b191...26b35a`](./contracts/linea-59144/0x41b191911cf3482b31cfcd65bd3c79e76b26b35a/); linea `0x52b277...d097e4` | ⚠️ Unaudited |
| LzProxyOFTV2 | unknown | ethereum | n/a | [`0x439a5f...f83c10`](./contracts/ethereum-1/0x439a5f0f5e8d149dda9a0ca367d4a8e4d6f83c10/) | ⚠️ Unaudited |
| LzSender | unknown | avalanche | n/a | 3 deployments: avalanche [`0x0fb878...2e9be0`](./contracts/avalanche-43114/0x0fb878e8c5b66321632d4a0f348f982c872e9be0/); avalanche `0x290ba9...aadc1b`; avalanche `0xafae61...d16373` | ⚠️ Unaudited |
| MagicApe | unknown | ethereum | n/a | [`0xf35b31...97feb6`](./contracts/ethereum-1/0xf35b31b941d94b249eaded041db1b05b7097feb6/) | ⚠️ Unaudited |
| MagicGlp | unknown | avalanche | n/a | 2 deployments: avalanche [`0x5efc10...ecc2e0`](./contracts/avalanche-43114/0x5efc10c353fa30c5758037fdf0a233e971ecc2e0/); avalanche `0xde3f63...0c9198` | ⚠️ Unaudited |
| MagicGlpHarvestor | unknown | avalanche | n/a | 3 deployments: avalanche [`0x05b3b9...7335b0`](./contracts/avalanche-43114/0x05b3b96df07b4630373ae7506e51777b547335b0/); avalanche `0x338f3e...88a335`; avalanche `0xdcb9bd...fa0bf1` | ⚠️ Unaudited |
| MagicGlpLevSwapper | unknown | arbitrum | n/a | [`0x1aeddd...48ace2`](./contracts/arbitrum-42161/0x1aeddd45cbf085efdbf8ceee19e439db9f48ace2/) | ⚠️ Unaudited |
| MagicGlpOracle | unknown | avalanche | n/a | [`0x985f9a...a38545`](./contracts/avalanche-43114/0x985f9a5c7faec17484ef60c02a24b8667ba38545/) | ⚠️ Unaudited |
| MagicGlpRewardHandler | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x41b8db...300026`](./contracts/arbitrum-42161/0x41b8dbde2d4127111fbedf31783781ae69300026/); arbitrum `0x856674...f54214` | ⚠️ Unaudited |
| MagicGlpRewardHandler | unknown | avalanche | n/a | 2 deployments: avalanche [`0x52d75b...d449d3`](./contracts/avalanche-43114/0x52d75bb25a806e247b9b849081685f9913d449d3/); avalanche `0xf4f7be...7b8596` | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | ethereum | n/a | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | ⚠️ Unaudited |
| MagicLevel | unknown | bsc | n/a | 9 deployments: bsc [`0x0253db...c14e16`](./contracts/bsc-56/0x0253db0dda6c063fae1e5fb28318e6dbe1c14e16/); bsc `0x23a22b...afd309`; bsc `0x2906ae...cf0fc5`; bsc `0x6e9368...9500ef`; bsc `0x75adc3...9501b7`; bsc `0x87ac70...b8af75`; bsc `0xc094c2...cc1a39`; bsc `0xd825d0...b0e6a4`; bsc `0xd8cbd5...03993b` | ⚠️ Unaudited |
| MagicLevelHarvestor | unknown | bsc | n/a | 5 deployments: bsc [`0x35467b...806eaa`](./contracts/bsc-56/0x35467bbd152a0f4d9166e649728c101fe4806eaa/); bsc `0x418ade...a64470`; bsc `0x630fc1...819d7e`; bsc `0x640605...b76521`; bsc `0xa32d03...6fd918` | ⚠️ Unaudited |
| MagicLevelOracle | unknown | bsc | n/a | 9 deployments: bsc [`0x006d8e...f938c5`](./contracts/bsc-56/0x006d8e69365bd93c38f4af1814207a4002f938c5/); bsc `0x0df56a...38a181`; bsc `0x358a42...cf3289`; bsc `0x789004...f0c952`; bsc `0x7c8fef...431d38`; bsc `0x8e534c...e6d534`; bsc `0xb76403...2cc9d1`; bsc `0xbc7fa5...3d7920`; bsc `0xdea1b4...3e9d70` | ⚠️ Unaudited |
| MagicLevelRewardHandler | unknown | bsc | n/a | 3 deployments: bsc [`0x60bbef...25a097`](./contracts/bsc-56/0x60bbefe16dc584f9af10138da1dfbb4cdf25a097/); bsc `0xaf2fbb...2d0b86`; bsc `0xba7fd9...24a582` | ⚠️ Unaudited |
| MagicLP | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2958db...6fc6bb`](./contracts/arbitrum-42161/0x2958db359d22411cdf9825f8b27f17350a6fc6bb/); arbitrum `0x8d0cd3...1fec73` | ⚠️ Unaudited |
| MagicLP | unknown | arbitrum | n/a | 5 deployments: ethereum `0x6c843d...45023a`; base `0x75097b...686074`; arbitrum [`0x522cba...8f1fad`](./contracts/arbitrum-42161/0x522cbaabb594d538f0813927b18b99f2638f1fad/); arbitrum `0x61ff8a...53253a`; linea `0xa3372c...b3b20d` | ⚠️ Unaudited |
| MagicUSD0pp | unknown | ethereum | n/a | 3 deployments: ethereum [`0x034de9...fe907a`](./contracts/ethereum-1/0x034de98226851e267c401069dcc18c2680fe907a/); ethereum `0x73075f...2c1c99`; ethereum `0xdb36f6...749963` | ⚠️ Unaudited |
| MagicUSD0ppHarvester | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0f9af7...fb108b`](./contracts/ethereum-1/0x0f9af7168cc8819ce3066867509a7f9170fb108b/); ethereum `0x800146...ec0aab` | ⚠️ Unaudited |
| Market | unknown | base | n/a | 3 deployments: base [`0x25c27f...28e022`](./contracts/base-8453/0x25c27fb282c5d974e9b091d45f28ba5de128e022/); base `0x85e8a3...59f490`; base `0xa6247e...b3c15e` | ⚠️ Unaudited |
| MarketFactory | unknown | base | n/a | 3 deployments: base [`0x14d6df...ad213e`](./contracts/base-8453/0x14d6df05ce338f8b32491532e9e0b23838ad213e/); base `0x438383...dc953d`; base `0x978d34...2a006c` | ⚠️ Unaudited |
| MarketLens | periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x870729...3022c2`](./contracts/arbitrum-42161/0x87072985aa1a2647da7dc3fc514fc4fa093022c2/); arbitrum `0xc4ee49...48ad4d` | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | 5 deployments: ethereum `0xc2edad...a888cd`; bsc [`0x4e585c...0e764d`](./contracts/bsc-56/0x4e585c367dafa5db5e182a192e73f4e0900e764d/); bsc `0x73feaa...c9e24e`; bsc `0x91dc89...c3e756`; bsc `0x983734...cbcb14` | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | avalanche | n/a | [`0xd6a4f1...f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x188bed...c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/); avalanche `0x3eb4ec...6e8945` | ⚠️ Unaudited |
| MasterChefLPStrategy | unknown | avalanche | n/a | [`0xe8d682...0e4770`](./contracts/avalanche-43114/0xe8d68266e7cb6a4c7c8e230993fc42634c0e4770/) | ⚠️ Unaudited |
| MathLib | unknown | arbitrum | n/a | [`0x503d14...c13b4c`](./contracts/arbitrum-42161/0x503d141915a740f98da6c12a1156cd4decc13b4c/) | ⚠️ Unaudited |
| Maximillion | unknown | avalanche | n/a | [`0xe5cdda...7ab7e7`](./contracts/avalanche-43114/0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7/) | ⚠️ Unaudited |
| MerkleAirdropFactory | unknown | ethereum | n/a | [`0xa1bc2c...142991`](./contracts/ethereum-1/0xa1bc2cf69d474b39b91665e24e7f2606ed142991/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | avalanche | n/a | [`0xedd1cb...115e34`](./contracts/avalanche-43114/0xedd1cb10d6dde82c805f7fc9988ee3d89c115e34/) | ⚠️ Unaudited |
| Migrator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x818180...d94830`](./contracts/ethereum-1/0x818180acb9d300ffc023be2300addb6879d94830/); ethereum `0x820670...b7f154` | ⚠️ Unaudited |
| MimAvaxLevSwapper | unknown | avalanche | n/a | 2 deployments: avalanche [`0xba7fd9...24a582`](./contracts/avalanche-43114/0xba7fd957ad9b7c0238e6e4413dba69e83224a582/); avalanche `0xfdf2c2...1a58d7` | ⚠️ Unaudited |
| MimAvaxOracleV1 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4437db...c52709`](./contracts/avalanche-43114/0x4437db9538eb74c7418a1668766536b279c52709/); avalanche `0xd96f48...fc2cce` | ⚠️ Unaudited |
| MimAvaxSwapper | unknown | avalanche | n/a | 2 deployments: avalanche [`0xbc00ca...c39614`](./contracts/avalanche-43114/0xbc00ca0d71231c5e23ba90a90d8c5d9039c39614/); avalanche `0xd74773...58135d` | ⚠️ Unaudited |
| MimCauldronDistributor | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x19de60...a558b0`](./contracts/arbitrum-42161/0x19de605cf11908a1bd4e096625d3c24cb4a558b0/); arbitrum `0x642c3b...d3411d`; arbitrum `0x66436c...19765d`; arbitrum `0xb099cc...8ed258`; arbitrum `0xc4e343...7c33ba`; arbitrum `0xe2601e...aeb7dd` | ⚠️ Unaudited |
| MinimalTimeLockFlat | unknown | ethereum | n/a | [`0xfe2b09...1c2f6b`](./contracts/ethereum-1/0xfe2b09980d1f579e13a0ce3f45ab240d5b1c2f6b/) | ⚠️ Unaudited |
| MintableBaseToken | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x0d0e30...0e6a4f`](./contracts/arbitrum-42161/0x0d0e30d12b54d9ef7300edba23cb34f3730e6a4f/); arbitrum `0x14ecde...817f99`; arbitrum `0x171a32...eca746`; arbitrum `0x28863d...6e3818`; arbitrum `0x352471...486921`; arbitrum `0x3ca273...24f3bc`; arbitrum `0x544a6e...dc250a`; arbitrum `0x626010...95a954`; arbitrum `0x9d8f6f...9ed515` | ⚠️ Unaudited |
| MintableBurnableUpgradeableERC20 | unknown | avalanche | n/a | [`0xd1140b...acf528`](./contracts/avalanche-43114/0xd1140b6dcf3f1a125f5cb9d87d1ab3ca46acf528/) | ⚠️ Unaudited |
| MockTreasury | unknown | ethereum | n/a | [`0xdb682f...c8ed20`](./contracts/ethereum-1/0xdb682fc2af3a1791081ac4efb60176c0a0c8ed20/) | ⚠️ Unaudited |
| MomFab | unknown | ethereum | n/a | 2 deployments: ethereum [`0x141a20...3669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/); ethereum `0x4a67d9...bac0fe` | ⚠️ Unaudited |
| MonthlyBounty | unknown | polygon | n/a | 6 deployments: bsc `0x27ed96...e18642`; bsc `0xf275c4...17b6a2`; bsc `0xf36d64...6630e8`; polygon [`0x1515bc...0a7a9a`](./contracts/polygon-137/0x1515bcb5489c6323de36a5bcd6b81d13a10a7a9a/); polygon `0x3198bb...66f65a`; polygon `0xb44690...3ade12` | ⚠️ Unaudited |
| mSpellReporter | unknown | avalanche | n/a | 17 deployments: arbitrum `0x1fc83f...aae530`; arbitrum `0x20cb52...de9430`; arbitrum `0x35f78e...638053`; arbitrum `0x3fc446...a28edd`; arbitrum `0x59b3d5...fecd45`; arbitrum `0x738694...c0423f`; arbitrum `0xef9c97...15d70b`; avalanche [`0x07aa38...c6e9fc`](./contracts/avalanche-43114/0x07aa382caee3f9e6d1791c8ef5f77a9088c6e9fc/); avalanche `0x14d358...81a2dd`; avalanche `0x15a2a9...54cd46`; avalanche `0x32596b...0f5c85`; avalanche `0x476b1e...a85c1f`; avalanche `0x565195...a0f194`; avalanche `0x5d28da...7620b4`; avalanche `0x78a538...17cccf`; avalanche `0xd2b62a...48cf28`; avalanche `0xf8beb5...de90c7` | ⚠️ Unaudited |
| mSpellReporterManual | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x648af2...a27793`](./contracts/arbitrum-42161/0x648af26592c7425447b8eee647f4106b97a27793/); arbitrum `0xf33eb6...1d2d85`; avalanche `0x75e142...69ec10`; avalanche `0x96bac9...a8ca62` | ⚠️ Unaudited |
| MSpellStakingHub | token | arbitrum | n/a | 3 deployments: arbitrum [`0x3b9e7f...f7f764`](./contracts/arbitrum-42161/0x3b9e7f15876c45956ba5f337cb47849375f7f764/); arbitrum `0xa39cee...5ef606`; arbitrum `0xcfbe02...29e73b` | ⚠️ Unaudited |
| MSpellStakingSpoke | token | ethereum | n/a | 3 deployments: ethereum [`0x3886a6...f5f755`](./contracts/ethereum-1/0x3886a691e88f1a51918b915aa1a0dfbc9af5f755/); ethereum `0xb5980e...f65ec5`; ethereum `0xbbb3bc...39900a` | ⚠️ Unaudited |
| Multicall2 | unknown | optimism | n/a | [`0xfbdd19...5d01b8`](./contracts/optimism-10/0xfbdd194376de19a88118e84e279b977f165d01b8/) | ⚠️ Unaudited |
| MultichainVerseExplore | unknown | optimism | n/a | [`0x750bfe...5db638`](./contracts/optimism-10/0x750bfe8490175c2a9a9387b19aa2aae2d75db638/) | ⚠️ Unaudited |
| MultichainVerseExplore | unknown | polygon | n/a | [`0x221050...11a0fd`](./contracts/polygon-137/0x2210502051221a600d3653eccc899eceea11a0fd/) | ⚠️ Unaudited |
| MultichainVerseExplore | unknown | arbitrum | n/a | [`0x90d5f3...f5f095`](./contracts/arbitrum-42161/0x90d5f3aa862f87598011e6ef511e4e8ed2f5f095/) | ⚠️ Unaudited |
| MultiDAO_VotePower | unknown | polygon | n/a | 4 deployments: polygon [`0x2503c0...1c518d`](./contracts/polygon-137/0x2503c0f180bc6a4375e02309a26a9979171c518d/); polygon `0x346d26...b42af1`; polygon `0xa0eda2...73aec8`; polygon `0xb2004d...061483` | ⚠️ Unaudited |
| MultiHonor_1155Querier | unknown | polygon | n/a | 5 deployments: polygon [`0x113ce4...58a713`](./contracts/polygon-137/0x113ce4b850d94e37077da2e1dc708a317458a713/); polygon `0x11bbb4...5fec75`; polygon `0xaf3ccf...5b2520`; polygon `0xb8c042...34eb23`; polygon `0xd60722...598a17` | ⚠️ Unaudited |
| MultiHonor_Multichain | unknown | bsc | n/a | [`0x055008...99967b`](./contracts/bsc-56/0x0550082c40c6a04096b62116f227d110a699967b/) | ⚠️ Unaudited |
| MultiHonor_Multichain | unknown | polygon | n/a | [`0xdd98b7...d5acef`](./contracts/polygon-137/0xdd98b79b36c77ee1f23f37b61e58a61cc3d5acef/) | ⚠️ Unaudited |
| MultiHonor_V1 | unknown | polygon | n/a | 7 deployments: polygon [`0x1ff9b7...42111b`](./contracts/polygon-137/0x1ff9b7dc66bb8cc7819e875b6739409b3a42111b/); polygon `0x5c1f69...e725d3`; polygon `0x5df101...b9186d`; polygon `0x8a4964...7027c3`; polygon `0xb6782f...4a4e70`; polygon `0xb8b282...95e36a`; polygon `0xc28ea7...f6b177` | ⚠️ Unaudited |
| MultiRewardsClaimingHandler | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x15838e...6d7f85`](./contracts/arbitrum-42161/0x15838e7a6322a6f37d2c27628a82b9115e6d7f85/); arbitrum `0x3877ef...43a943`; arbitrum `0x46cc17...d0d32b`; arbitrum `0x766cb0...d677d3`; arbitrum `0xa40bcb...7789bd`; arbitrum `0xc699e7...3110c4` | ⚠️ Unaudited |
| MultiRewardsStaking | unknown | arbitrum | n/a | [`0x6d2070...8988cd`](./contracts/arbitrum-42161/0x6d2070b13929df15b13d96cfc509c574168988cd/) | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | ethereum | n/a | [`0x8392f6...57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | ⚠️ Unaudited |
| NFTFactory | unknown | bsc | n/a | 2 deployments: bsc [`0x2c19b3...7b0879`](./contracts/bsc-56/0x2c19b304afc2cd7ff8606ac212418d55d07b0879/); bsc `0xcc4335...587cc3` | ⚠️ Unaudited |
| NFTRouter | unknown | avalanche | n/a | 4 deployments: bsc `0xf2d0fa...4fbb56`; polygon `0x887230...bdd1bb`; polygon `0xfc5c0e...2a5b49`; avalanche [`0x1fbbc7...692cd8`](./contracts/avalanche-43114/0x1fbbc7dba1ef75ff43f955a5b9ceec3cc1692cd8/) | ⚠️ Unaudited |
| NullValueCalculator | unknown | ethereum | n/a | [`0x0d1c9b...26254f`](./contracts/ethereum-1/0x0d1c9b9bfda66226e4ff3b6bf8f565baeb26254f/) | ⚠️ Unaudited |
| OFTWrapper | unknown | ethereum | n/a | 7 deployments: ethereum [`0x287176...784adc`](./contracts/ethereum-1/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/); optimism [`0x287176...784adc`](./contracts/optimism-10/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/); bsc [`0x287176...784adc`](./contracts/bsc-56/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/); polygon `0xe1261e...6dfd4c`; moonriver [`0x287176...784adc`](./contracts/moonriver-1285/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/); arbitrum [`0x287176...784adc`](./contracts/arbitrum-42161/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/); avalanche [`0x287176...784adc`](./contracts/avalanche-43114/0x287176dfbec7e8cee0f876fc7b52960ee1784adc/) | ⚠️ Unaudited |
| OlympusBondDepository | unknown | ethereum | n/a | 12 deployments: ethereum [`0x28aac7...4cd8f0`](./contracts/ethereum-1/0x28aac73a0c080daa8b7fb728aad43a00584cd8f0/); ethereum `0x48d4ad...c276a7`; ethereum `0x539b6c...4a3776`; ethereum `0x575409...97381c`; ethereum `0x6a01e5...49f219`; ethereum `0x8510c8...ec2514`; ethereum `0x8ba0ab...13b0ce`; ethereum `0x956c43...78c151`; ethereum `0x996668...3a1626`; ethereum `0xc20cff...5a02f7`; ethereum `0xd03056...0ff045`; ethereum `0xd215d1...6cb580` | ⚠️ Unaudited |
| OlympusBondingCalculator | unknown | ethereum | n/a | [`0xcaaa6a...fa571a`](./contracts/ethereum-1/0xcaaa6a2d4b26067a391e7b7d65c16bb2d5fa571a/) | ⚠️ Unaudited |
| OlympusStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x416f96...757b3e`](./contracts/ethereum-1/0x416f96071b8ad875de4d3daa8bcb570da3757b3e/); ethereum `0xfd31c7...36566a` | ⚠️ Unaudited |
| OlympusTreasury | unknown | ethereum | n/a | [`0x31f8cc...c846e8`](./contracts/ethereum-1/0x31f8cc382c9898b273eff4e0b7626a6987c846e8/) | ⚠️ Unaudited |
| onOFTFailure | unknown | ethereum | n/a | [`0x1b1e27...875773`](./contracts/ethereum-1/0x1b1e278af79ecb987052cc66023a9e3117875773/) | ⚠️ Unaudited |
| onOFTSuccess | unknown | ethereum | n/a | [`0x664c61...bf74fa`](./contracts/ethereum-1/0x664c61b11beeab27dfb366d75d2df193e6bf74fa/) | ⚠️ Unaudited |
| OnsenAllocator | unknown | ethereum | n/a | [`0x031650...682ffc`](./contracts/ethereum-1/0x0316508a1b5abf1cae42912dc2c8b9774b682ffc/) | ⚠️ Unaudited |
| OrderBook | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x09f77e...8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/); arbitrum `0x5e2fa0...af75a7`; arbitrum `0x72b44c...ed32e6`; arbitrum `0x898a68...2b0779` | ⚠️ Unaudited |
| OrderBookReader | unknown | arbitrum | n/a | [`0xa27c20...62bc21`](./contracts/arbitrum-42161/0xa27c20a7cf0e1c68c0460706bb674f98f362bc21/) | ⚠️ Unaudited |
| OrderExecutor | unknown | arbitrum | n/a | [`0x7257ac...32c3fb`](./contracts/arbitrum-42161/0x7257ac5d0a0aac04aa7ba2ac0a6eb742e332c3fb/) | ⚠️ Unaudited |
| PancakeFactory | unknown | bsc | n/a | 4 deployments: bsc [`0xacfc87...a88258`](./contracts/bsc-56/0xacfc87ffe18eb69e7d3505ee1684946744a88258/); bsc `0xadbfa3...1d08eb`; bsc `0xbcfccb...952812`; bsc `0xd18436...970637` | ⚠️ Unaudited |
| PancakeOracle | unknown | bsc | n/a | 2 deployments: bsc [`0x4b1b0c...934cef`](./contracts/bsc-56/0x4b1b0c225944808b9017f16e9b10305faa934cef/); bsc `0x6b6354...2193be` | ⚠️ Unaudited |
| PancakeOracle | unknown | bsc | n/a | [`0x9f338d...a4fe71`](./contracts/bsc-56/0x9f338dd6cf0a98b908885367c8d154032aa4fe71/) | ⚠️ Unaudited |
| PancakeRouter | adapter | bsc | n/a | 4 deployments: bsc [`0x05ff2b...608c7f`](./contracts/bsc-56/0x05ff2b0db69458a0750badebc4f9e13add608c7f/); bsc `0x5334de...98cd12`; bsc `0x749fc0...438b02`; bsc `0x90c333...e26bfb` | ⚠️ Unaudited |
| PancakeVoterProxy | unknown | bsc | n/a | [`0x4086d4...00da07`](./contracts/bsc-56/0x4086d46a650517fa756f620507db704d3900da07/) | ⚠️ Unaudited |
| PangolinDynamicSubLPStrategy | unknown | avalanche | n/a | [`0xe05811...3a194e`](./contracts/avalanche-43114/0xe05811aff7a105fe05b7144f4e0dd777a83a194e/) | ⚠️ Unaudited |
| PangolinFactory | unknown | avalanche | n/a | 2 deployments: avalanche [`0xcdeea3...959737`](./contracts/avalanche-43114/0xcdeea31e087f0cf463043d246a45b87f4e959737/); avalanche `0xefa94d...e9fd88` | ⚠️ Unaudited |
| PangolinRouter | unknown | avalanche | n/a | [`0xe54ca8...c89106`](./contracts/avalanche-43114/0xe54ca86531e17ef3616d22ca28b0d458b6c89106/) | ⚠️ Unaudited |
| PeggedOracleV1 | unknown | ethereum | n/a | [`0x6cbfbb...001564`](./contracts/ethereum-1/0x6cbfbb38498df0e1e7a4506593cdb02db9001564/) | ⚠️ Unaudited |
| Png | unknown | avalanche | n/a | [`0x60781c...aca982`](./contracts/avalanche-43114/0x60781c2586d68229fde47564546784ab3faca982/) | ⚠️ Unaudited |
| POC_SemiToken | unknown | polygon | n/a | 2 deployments: polygon [`0x431e70...1dbc24`](./contracts/polygon-137/0x431e70c7d0a5de55d6b4f7af9391edf35b1dbc24/); polygon `0x712052...385df4` | ⚠️ Unaudited |
| PoolBridge | operational_periphery | ethereum | n/a | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | ⚠️ Unaudited |
| PoolHarvestHook | unknown | ethereum | n/a | [`0xe4d89e...729f9a`](./contracts/ethereum-1/0xe4d89e8267d2e8f03f751fa807b3bbdb36729f9a/) | ⚠️ Unaudited |
| PoolManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3b2d30...135a9c`](./contracts/ethereum-1/0x3b2d30734491ad77880d31e8afe2a4d8ac135a9c/); ethereum `0xbe5d4e...2c887d` | ⚠️ Unaudited |
| PoolManagerProxy | unknown | ethereum | n/a | [`0x5f4701...5c5c1b`](./contracts/ethereum-1/0x5f47010f230ce1568bea53a06ebaf528d05c5c1b/) | ⚠️ Unaudited |
| PoolManagerSecondaryProxy | unknown | ethereum | n/a | [`0xd20904...91d1e1`](./contracts/ethereum-1/0xd20904e5916113d11414f083229e9c8c6f91d1e1/) | ⚠️ Unaudited |
| PoolManagerShutdownProxy | unknown | ethereum | n/a | [`0x73b1b1...27889f`](./contracts/ethereum-1/0x73b1b12065d0ae21dff4848d5871ca2a5227889f/) | ⚠️ Unaudited |
| PoolManagerTertiaryProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0ff339...feb3b2`](./contracts/ethereum-1/0x0ff33996d846200d5ada1a58aeb62c1b09feb3b2/); ethereum `0x7ce805...9a0792` | ⚠️ Unaudited |
| PoolManagerV2 | unknown | ethereum | n/a | [`0xae5f31...500183`](./contracts/ethereum-1/0xae5f315a5b5dd4dbacd38862562a51490e500183/) | ⚠️ Unaudited |
| PoolManagerV3 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x8a849f...1b1e83`](./contracts/ethereum-1/0x8a849f4074726179f95ee08c59caa8f6f21b1e83/); ethereum `0xd1f9b3...6a4447`; ethereum `0xe6a0a8...2d8357` | ⚠️ Unaudited |
| PoolManagerV4 | unknown | ethereum | n/a | 5 deployments: ethereum [`0x0e4e9d...c02e11`](./contracts/ethereum-1/0x0e4e9d97440182ea72d988d48eb9b156a0c02e11/); ethereum `0x1d545f...4d274a`; ethereum `0x6d3a38...b423de`; ethereum `0x782bce...a37f95`; ethereum `0xc461e1...5782d5` | ⚠️ Unaudited |
| PoolRegistry | unknown | ethereum | n/a | [`0x41a588...851a69`](./contracts/ethereum-1/0x41a5881c17185383e19df6fa4ec158a6f4851a69/) | ⚠️ Unaudited |
| PoolRewardHook | unknown | ethereum | n/a | [`0x723f9a...cd4a96`](./contracts/ethereum-1/0x723f9aa67fdd9b0e375ef8553eb2afc28ecd4a96/) | ⚠️ Unaudited |
| PoolToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8a2f2e...7d1683`](./contracts/ethereum-1/0x8a2f2e0fd65caee0622ee7ba98b67f73717d1683/); ethereum `0x9122ee...208e35` | ⚠️ Unaudited |
| PoolTypes | unknown | ethereum | n/a | 2 deployments: ethereum [`0x52d85e...a78a9c`](./contracts/ethereum-1/0x52d85e14bf2bfb16ed4a8f3b5a0c8fc0baa78a9c/); ethereum `0x85152a...891246` | ⚠️ Unaudited |
| PoolUtilities | unknown | ethereum | n/a | 3 deployments: ethereum [`0x5fba69...8e5cd1`](./contracts/ethereum-1/0x5fba69a794f395184b5760daf1134028608e5cd1/); ethereum `0x8f8459...85fbca`; ethereum `0xfcb28d...0749cf` | ⚠️ Unaudited |
| PositionManager | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x6a02e6...af93b2`](./contracts/arbitrum-42161/0x6a02e6381297826cca630fc5e2d53bdbbbaf93b2/); arbitrum `0x75e42e...8a4a0c`; arbitrum `0x87a408...b1c831`; arbitrum `0x87f8dd...eec371`; arbitrum `0x956618...bc9a0f`; arbitrum `0x98a006...bf5491`; arbitrum `0xe0c6b0...e3a21b`; arbitrum `0xe11659...36ad4e` | ⚠️ Unaudited |
| PositionRouter | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x05cb7c...8cb78f`](./contracts/arbitrum-42161/0x05cb7c42890e0522264fe5ec6d84e8d7218cb78f/); arbitrum `0x338ff5...d3aead`; arbitrum `0x3d6ba3...223aba`; arbitrum `0x6fa9dc...796336`; arbitrum `0xa0bf65...e0e7e8`; arbitrum `0xb87a43...b09868` | ⚠️ Unaudited |
| PositionRouterReader | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2a74c7...802f74`](./contracts/arbitrum-42161/0x2a74c7498d42ecee75032ed41416c5fa39802f74/); arbitrum `0x346f05...3a409d` | ⚠️ Unaudited |
| PotionPointRedeemer | unknown | arbitrum | n/a | [`0x225859...9e6bbc`](./contracts/arbitrum-42161/0x2258590acdbea77dcc9c974ceb0b22b9329e6bbc/) | ⚠️ Unaudited |
| PrecompileTester | unknown | avalanche | n/a | 12 deployments: avalanche [`0x2cc9be...298109`](./contracts/avalanche-43114/0x2cc9bea92d4b5a066a83aed1699eccc086298109/); avalanche `0x377aa0...39e709`; avalanche `0x3a062d...fcb19c`; avalanche `0x48686c...e74339`; avalanche `0x51d22d...d299d5`; avalanche `0x651c44...c8064e`; avalanche `0x870729...3022c2`; avalanche `0x97cdab...61bbf0`; avalanche `0xa877be...3dc23e`; avalanche `0xb13352...e3a00f`; avalanche `0xb597fb...aea876`; avalanche `0xd93809...3b4674` | ⚠️ Unaudited |
| PremiumHolder | unknown | bsc | n/a | 2 deployments: bsc [`0x38cb4e...741049`](./contracts/bsc-56/0x38cb4ed792c8801f8774477051dbb182d9741049/); bsc `0x491d0d...1758b7` | ⚠️ Unaudited |
| PremiumHolder | unknown | polygon | n/a | 5 deployments: bsc `0x31c459...3730fd`; bsc `0x8ff533...f1d2d8`; bsc `0xbc5003...4b4220`; bsc `0xc48362...14bc12`; polygon [`0x135b6e...0793d1`](./contracts/polygon-137/0x135b6e9c211e6974f7cbb11ff96ac6b1550793d1/) | ⚠️ Unaudited |
| PremiumHolder | unknown | polygon | n/a | 2 deployments: polygon [`0x9a161f...aea96a`](./contracts/polygon-137/0x9a161f660053fe279e5c28d43622c480e8aea96a/); polygon `0xff3352...675c07` | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | arbitrum | n/a | [`0x7b1ffd...d43a8b`](./contracts/arbitrum-42161/0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b/) | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | avalanche | n/a | 4 deployments: avalanche [`0x107b31...b8555a`](./contracts/avalanche-43114/0x107b31d84bf6cec672f3af924471bb6f4fb8555a/); avalanche `0x99f873...ec2bd3`; avalanche `0xd7ae65...10bc2e`; avalanche `0xe34309...114482` | ⚠️ Unaudited |
| PrivateMultiRewardsStaking | unknown | arbitrum | n/a | 14 deployments: arbitrum [`0x18f7cc...d32d31`](./contracts/arbitrum-42161/0x18f7cca3d98ad96cf26dbda1db3fd71e30d32d31/); arbitrum `0x366ac6...e9f18b`; arbitrum `0x3bf887...f56836`; arbitrum `0x5b51f2...17e263`; arbitrum `0x8fac04...111482`; arbitrum `0xa2af3e...e8128e`; arbitrum `0xa5e1a7...d31ba6`; arbitrum `0xa7940d...01c295`; arbitrum `0xaf4fdc...1a74cb`; arbitrum `0xc35553...149718`; arbitrum `0xe5e501...3888ec`; arbitrum `0xe6f823...9017e7`; arbitrum `0xeb0dea...8c5680`; arbitrum `0xf9398c...8c7eea` | ⚠️ Unaudited |
| PrivateRouter | adapter | blast | n/a | 6 deployments: ethereum `0x9b6f6c...d7ad51`; base `0x635693...e7d3be`; arbitrum `0xe046ac...482bed`; linea `0xaf2fbb...2d0b86`; blast [`0x19c08f...7d0fd7`](./contracts/blast-81457/0x19c08f59c4d75407652a6a970078e79d117d0fd7/); blast `0xa98973...0a63ac` | ⚠️ Unaudited |
| PrivilegedCauldronV4 | unknown | ethereum | n/a | 7 deployments: ethereum [`0x406b89...374352`](./contracts/ethereum-1/0x406b89138782851d3a8c04c743b010ceb0374352/); ethereum `0x40d95c...5b87a3`; ethereum `0x6bcd99...45cda2`; ethereum `0x85f60d...25c405`; ethereum `0xc6d3b8...0dc20d`; ethereum `0xce450a...30865b`; ethereum `0xed5106...760e09` | ⚠️ Unaudited |
| PrivilegedCheckpointCauldronV4 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x289424...b134ed`](./contracts/ethereum-1/0x289424add4a1a503870eb475fd8bf1d586b134ed/); ethereum `0x46f54d...9ff82c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | 22 deployments: ethereum `0x1ac267...5757a1`; bsc `0x3b2ebf...49fd9b`; bsc `0x4454b2...cacdf7`; bsc `0x614f4f...29d620`; bsc `0x65ac89...6d58d4`; bsc `0x6de1ba...87bed9`; bsc `0x9f4d0b...bfcf37`; bsc `0xc65d11...b2565f`; bsc `0xde8df7...130a3f`; bsc `0xdec64d...a6a384`; bsc `0xe70b67...b685d5`; bsc `0xf58c65...a52e79`; bsc `0xfef7e2...32e973`; polygon [`0x02a5b3...4a9d9c`](./contracts/polygon-137/0x02a5b3151df6621453b6d976144d3621514a9d9c/); polygon `0xe7e22a...64c75e`; arbitrum `0x5db54b...3dd797`; arbitrum `0x90da0a...46d379`; arbitrum `0xee5ff6...820580`; arbitrum `0xf762bc...4de4cf`; arbitrum `0xff11d8...ed448f`; avalanche `0x1035b0...c3d784`; avalanche `0x419fa2...84268a` | ⚠️ Unaudited |
| ProxyFactory | unknown | ethereum | n/a | [`0x66807b...13fc8f`](./contracts/ethereum-1/0x66807b5598a848602734b82e432dd88dbe13fc8f/) | ⚠️ Unaudited |
| ProxyOracle | unknown | avalanche | n/a | 30 deployments: bsc `0x1409df...171172`; bsc `0x4d526f...b64f52`; bsc `0x75097b...686074`; bsc `0x93503a...2e3409`; bsc `0x978d34...2a006c`; bsc `0xc2758b...e1de26`; bsc `0xdd45c6...85dba5`; bsc `0xfa85b0...572950`; bsc `0xfe0f13...95ca02`; arbitrum `0x0e1ea2...b5bc85`; arbitrum `0x38a67c...4375ed`; arbitrum `0x3e4216...8a5c12`; arbitrum `0x7a377f...a11c71`; arbitrum `0xd136a8...20b98e`; arbitrum `0xd63537...47e5c3`; arbitrum `0xe94c44...4551da`; avalanche [`0x0cc938...20a3e2`](./contracts/avalanche-43114/0x0cc93802f800ccee67914c3072e80d23e920a3e2/); avalanche `0x0e1ea2...b5bc85`; avalanche `0x15f57f...1bc298`; avalanche `0x1e2157...adc7ac`; avalanche `0x2ca12e...ae7531`; avalanche `0x3cc89e...02459d`; avalanche `0x59b3d5...fecd45`; avalanche `0x694808...4b99ff`; avalanche `0x7aaa36...24f0a9`; avalanche `0x7e0f0c...6d3aeb`; avalanche `0xa02de9...d034bb`; avalanche `0xb69c15...9a8276`; avalanche `0xde99f8...1b31c3`; avalanche `0xf8b72e...a2a71d` | ⚠️ Unaudited |
| R256 | unknown | ethereum | n/a | [`0x5b2d94...91c86a`](./contracts/ethereum-1/0x5b2d94bf0f0a4eeb7d00d67524b251ffbb91c86a/) | ⚠️ Unaudited |
| R256Basic | unknown | ethereum | n/a | [`0xcb8a52...3246c3`](./contracts/ethereum-1/0xcb8a520f13ab264a288f7736ddf11f2fcf3246c3/) | ⚠️ Unaudited |
| Reader | unknown | arbitrum | n/a | 16 deployments: arbitrum [`0x1136b8...bac9fa`](./contracts/arbitrum-42161/0x1136b815765877f4fe626e4e82f462aed5bac9fa/); arbitrum `0x1e904f...826058`; arbitrum `0x21fcbd...288a38`; arbitrum `0x22199a...cae489`; arbitrum `0x22e199...215632`; arbitrum `0x25a233...3e4465`; arbitrum `0x2b43c9...c37694`; arbitrum `0x43bef7...c9c8bb`; arbitrum `0x48de3d...abeaa6`; arbitrum `0xa49f3a...b2871a`; arbitrum `0xad469d...c832cb`; arbitrum `0xbd8f00...3c5101`; arbitrum `0xc229c5...f33232`; arbitrum `0xe3b2f6...c82cc1`; arbitrum `0xf09ed5...e601b2`; arbitrum `0xf407d5...770823` | ⚠️ Unaudited |
| Rebalance | unknown | ethereum | n/a | [`0x692b43...8befa3`](./contracts/ethereum-1/0x692b43a5c7f16f4fc9fcaa353a519b98ef8befa3/) | ⚠️ Unaudited |
| Receiver | unknown | bsc | n/a | [`0xc9c33a...a49794`](./contracts/bsc-56/0xc9c33a563e096e5d22b48719dbd3336c92a49794/) | ⚠️ Unaudited |
| RedeemHelper | unknown | ethereum | n/a | [`0xe1e838...0b819e`](./contracts/ethereum-1/0xe1e83825613de12e8f0502da939523558f0b819e/) | ⚠️ Unaudited |
| ReferralReader | unknown | arbitrum | n/a | [`0x8aa382...76f5c8`](./contracts/arbitrum-42161/0x8aa382760bcdce8644c33e6c2d52f6304a76f5c8/) | ⚠️ Unaudited |
| ReferralStorage | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2249d0...923392`](./contracts/arbitrum-42161/0x2249d006a8ccdf4c99aa6c8b9502a2aecc923392/); arbitrum `0xe6fab3...06e99d` | ⚠️ Unaudited |
| RescueToken | unknown | ethereum | n/a | [`0xb15ffb...5aaac9`](./contracts/ethereum-1/0xb15ffb543211b558d40160811e5dcbcd7d5aaac9/) | ⚠️ Unaudited |
| RevertingToken | token | arbitrum | n/a | 2 deployments: arbitrum [`0x1aa92d...a0d3e0`](./contracts/arbitrum-42161/0x1aa92da659e914982975f8f109a05be904a0d3e0/); arbitrum `0xa9ada7...096270` | ⚠️ Unaudited |
| RewardDistributor | unknown | bsc | n/a | 20 deployments: bsc [`0x103f7d...be426e`](./contracts/bsc-56/0x103f7d014f46c6bcb9f86217c36368a08abe426e/); bsc `0x5b3842...92d153`; bsc `0xb20b24...4f5648`; bsc `0xbdd3c3...f6545e`; arbitrum `0x1de098...4f5554`; arbitrum `0x1fdc87...0de955`; arbitrum `0x23208b...94f193`; arbitrum `0x2b35cc...6f13d5`; arbitrum `0x5c04a1...90150d`; arbitrum `0x60519b...203b34`; arbitrum `0x6a05ab...2552ee`; arbitrum `0x986b4e...7f43aa`; arbitrum `0x9c99e6...384b9b`; arbitrum `0xa7f810...6cb229`; arbitrum `0xc64347...dd9efc`; arbitrum `0xdeea5f...dddf02`; avalanche `0x227449...a14885`; avalanche `0x45b2c4...420324`; avalanche `0x7dcdb8...ec03b6`; avalanche `0xe72438...4d3f99` | ⚠️ Unaudited |
| Rewarder | unknown | arbitrum | n/a | [`0x3bab72...45ed2a`](./contracts/arbitrum-42161/0x3bab7207d4e27b5de4a15d540b7297281b45ed2a/) | ⚠️ Unaudited |
| RewardFactory | unknown | ethereum | n/a | [`0xedccb3...08aa8d`](./contracts/ethereum-1/0xedccb35798fae4925718a43cc608ae136208aa8d/) | ⚠️ Unaudited |
| RewardHandler_Factory_SlowRelease | unknown | bsc | n/a | 2 deployments: bsc [`0x18c792...7d752e`](./contracts/bsc-56/0x18c792978ccf5f81a2c1dfb44737fc14597d752e/); bsc `0x1f87d2...e99e3f` | ⚠️ Unaudited |
| RewardManager | unknown | arbitrum | n/a | [`0xb9fcd5...728d65`](./contracts/arbitrum-42161/0xb9fcd526e11aa577591d776baa051dc335728d65/) | ⚠️ Unaudited |
| RewardMasterChef | unknown | arbitrum | n/a | 11 deployments: bsc `0x411f3e...dfad2d`; bsc `0x515762...6ca15e`; bsc `0x5e430f...d5dcf2`; bsc `0x8c7705...162a98`; bsc `0xdb12c7...9f61bb`; bsc `0xf47a64...6c99bd`; bsc `0xfd14d7...387039`; polygon `0xb0a3da...407c49`; arbitrum [`0x123706...5a5b8e`](./contracts/arbitrum-42161/0x123706cdd8e60324e610e9a2cc7012d0f45a5b8e/); arbitrum `0x1e1085...917c3f`; arbitrum `0x4ecf51...570918` | ⚠️ Unaudited |
| RewardPortal | unknown | bsc | n/a | 2 deployments: bsc [`0x03e72e...7b24f3`](./contracts/bsc-56/0x03e72e3f327a731af63a931cc06c84e2627b24f3/); bsc `0x5a46c7...ec548c` | ⚠️ Unaudited |
| RewardPortal | unknown | bsc | n/a | 2 deployments: bsc [`0xba48da...8c1a97`](./contracts/bsc-56/0xba48da3f26c10de8b243e621ffe379ee788c1a97/); bsc `0xc8f67d...cd436a` | ⚠️ Unaudited |
| RewardReader | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x8bfb8e...6d40e0`](./contracts/arbitrum-42161/0x8bfb8e82ee4569aee78d03235ff465bd436d40e0/); arbitrum `0xbbac17...8ef1b9`; arbitrum `0xd6cf28...40fc8f`; arbitrum `0xe05107...2d42ad`; arbitrum `0xe725ad...f12e9a` | ⚠️ Unaudited |
| RewardRouter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc73d55...980fba`](./contracts/arbitrum-42161/0xc73d553473dc65ce56db96c58e6a091c20980fba/); arbitrum `0xea7fcb...3402ea` | ⚠️ Unaudited |
| RewardRouterV2 | adapter | arbitrum | n/a | 4 deployments: arbitrum [`0x159854...a3ce9b`](./contracts/arbitrum-42161/0x159854e14a862df9e39e1d128b8e5f70b4a3ce9b/); arbitrum `0x5e4766...5694a1`; arbitrum `0xa906f3...f8d8f1`; arbitrum `0xb95db5...d271f5` | ⚠️ Unaudited |
| RewardShare | unknown | bsc | n/a | [`0x13ee72...be2a26`](./contracts/bsc-56/0x13ee726d95742d437ebb664bf0d3feff8dbe2a26/) | ⚠️ Unaudited |
| RewardTracker | unknown | arbitrum | n/a | 16 deployments: arbitrum [`0x0755d3...1e5e93`](./contracts/arbitrum-42161/0x0755d33e45ed2b874c9ebf5b279023c8bd1e5e93/); arbitrum `0x0a22fe...be964b`; arbitrum `0x1addd8...4c8903`; arbitrum `0x4292a8...f35e87`; arbitrum `0x4d268a...3fea13`; arbitrum `0x4e971a...5400b6`; arbitrum `0x5707df...134aee`; arbitrum `0x72b0d6...5abe21`; arbitrum `0x735007...4e5816`; arbitrum `0x8087a3...4a26d2`; arbitrum `0x908c4d...c59dd4`; arbitrum `0xa40baa...1c33d7`; arbitrum `0xb14b49...5f2a95`; arbitrum `0xb27b0a...fed453`; arbitrum `0xbb3cd5...7a912e`; arbitrum `0xd2d116...2a728f` | ⚠️ Unaudited |
| RodeoCaller | unknown | arbitrum | n/a | [`0xa6f958...94fc14`](./contracts/arbitrum-42161/0xa6f9581d3a77dbe3df78d3b048756ab0d294fc14/) | ⚠️ Unaudited |
| RodeoMigrator | unknown | arbitrum | n/a | [`0xb34891...a5ed9e`](./contracts/arbitrum-42161/0xb34891fac221f335131d1b6cd8c883d107a5ed9e/) | ⚠️ Unaudited |
| RouterConfig | unknown | bsc | n/a | 18 deployments: bsc [`0x0aa626...3079fa`](./contracts/bsc-56/0x0aa6262af21b85cbe396caf68d59aad8db3079fa/); bsc `0x0f045b...ccfc95`; bsc `0x16aba2...a50b86`; bsc `0x28bc97...660d20`; bsc `0x69d976...a52d6a`; bsc `0x76c11a...b431b1`; bsc `0x7beb05...172978`; bsc `0x9879ab...556b7a`; bsc `0x9aea86...3259bf`; bsc `0x9b76b1...bc4714`; bsc `0xbccff1...718337`; bsc `0xd4844e...dfa57e`; bsc `0xd69b31...20be51`; bsc `0xdccd7b...a14498`; bsc `0xdf40c8...bb7b2f`; bsc `0xe6f658...59956c`; bsc `0xf1c553...536804`; bsc `0xf27ee9...94494f` | ⚠️ Unaudited |
| SafeCallTest | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0d43b5...2f5833`](./contracts/ethereum-1/0x0d43b51835287517404b92d5679443fceb2f5833/); ethereum `0x4621a2...02e87d`; ethereum `0xb6a19f...771636`; ethereum `0xffdb9b...07af22` | ⚠️ Unaudited |
| SetFiveMillionProposalThresholdAction | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x2f8577...dfd713`](./contracts/arbitrum-42161/0x2f8577f68d8306aeb48f9015ac61744bbadfd713/); arbitrum `0x50e0ca...7f366a`; arbitrum `0x57e915...7aa79b`; arbitrum `0x8f8928...685563` | ⚠️ Unaudited |
| ShortsTracker | unknown | arbitrum | n/a | [`0xf58eec...d434da`](./contracts/arbitrum-42161/0xf58eec83ba28ddd79390b9e90c4d3ebff1d434da/) | ⚠️ Unaudited |
| ShortsTrackerTimelock | governance | arbitrum | n/a | [`0x79b6ee...5c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ⚠️ Unaudited |
| SikobaContinuousSale | unknown | ethereum | n/a | [`0x4994e8...fff697`](./contracts/ethereum-1/0x4994e81897a920c0fea235eb8cedeed3c6fff697/) | ⚠️ Unaudited |
| SikobaPresale | unknown | ethereum | n/a | [`0x812ade...5f2d03`](./contracts/ethereum-1/0x812ade7bc90c34e8b2ca92590e525305c85f2d03/) | ⚠️ Unaudited |
| SikobaToken | token | ethereum | n/a | [`0x6b4008...f81765`](./contracts/ethereum-1/0x6b40089e6cba08696d9ae48f38e2b06faff81765/) | ⚠️ Unaudited |
| SimpleERC20 | unknown | ethereum | n/a | [`0x4849d2...01cc5c`](./contracts/ethereum-1/0x4849d2a7fec8572f12f369659cf48a826601cc5c/) | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | avalanche | n/a | 9 deployments: avalanche [`0x05d06a...5a3388`](./contracts/avalanche-43114/0x05d06afb994047acee8c205500ab1aa25c5a3388/); avalanche `0x0babed...ab3689`; avalanche `0x692782...8e8551`; avalanche `0x88e026...5dda60`; avalanche `0x89ecdd...033f00`; avalanche `0x9f509a...5b896c`; avalanche `0xd0c23f...0c2fa1`; avalanche `0xe73477...628cd3`; avalanche `0xeb1f56...6e0b55` | ⚠️ Unaudited |
| SimpleSLPTWAP0OracleV1 | unknown | ethereum | n/a | [`0x66f03b...236065`](./contracts/ethereum-1/0x66f03b0d30838a3fee971928627ea6f59b236065/) | ⚠️ Unaudited |
| SimpleSLPTWAP1OracleV1 | unknown | ethereum | n/a | [`0x0d51b5...89266f`](./contracts/ethereum-1/0x0d51b575591f8f74a2763ade75d3cdcf6789266f/) | ⚠️ Unaudited |
| SimpleWithdrawer | unknown | ethereum | n/a | 3 deployments: ethereum [`0x14f38f...d9b1ee`](./contracts/ethereum-1/0x14f38fc328a12c2b4cf6e0cdd474529bddd9b1ee/); ethereum `0x24a1a1...608b48`; ethereum `0x997ae5...b07d66` | ⚠️ Unaudited |
| Skimmer | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x82f0b8...6829c1`](./contracts/arbitrum-42161/0x82f0b8b456c1a451378467398982d4834b6829c1/); arbitrum `0xce1bff...2f7814` | ⚠️ Unaudited |
| sko_ping | unknown | ethereum | n/a | [`0x5d4c2f...3683fc`](./contracts/ethereum-1/0x5d4c2f88f2e403ec2ae5079726a13873673683fc/) | ⚠️ Unaudited |
| SkoSaleMVP | unknown | ethereum | n/a | [`0xb11d6e...fd176f`](./contracts/ethereum-1/0xb11d6ec05f4e1280a83540511d19cb131afd176f/) | ⚠️ Unaudited |
| SmartChef | unknown | bsc | n/a | 85 deployments: bsc [`0x0124ed...d6dd16`](./contracts/bsc-56/0x0124ed38db9c3a04a4a217172288454cd1d6dd16/); bsc `0x02861b...371379`; bsc `0x02aa76...95315a`; bsc `0x04ae8c...d7013c`; bsc `0x07a0a5...7a81b9`; bsc `0x0a5956...4f09b9`; bsc `0x0c3d68...8e4528`; bsc `0x1714ba...8d9479`; bsc `0x1ad34d...1f2cae`; bsc `0x1c736f...dfca41`; bsc `0x212bb6...2bea05`; bsc `0x21a9a5...4ed23a`; bsc `0x225dbf...07b852`; bsc `0x2368ba...704d35`; bsc `0x27c217...1d2f00`; bsc `0x2b02d4...550efd`; bsc `0x2c0f44...ab1b07`; bsc `0x2dcf4c...5b66cf`; bsc `0x319c7c...88c984`; bsc `0x326d75...3b3124`; bsc `0x37b4c5...43d91c`; bsc `0x3b9b74...08a9bc`; bsc `0x3d7fab...c26b49`; bsc `0x3e4879...77d835`; bsc `0x3e677d...56994e`; bsc `0x423382...bd7d90`; bsc `0x42b49c...c070ac`; bsc `0x4503a1...490f5b`; bsc `0x4a26b0...a6f69a`; bsc `0x5ac840...b294a7`; bsc `0x5dda9c...fc205a`; bsc `0x62ad71...b2105d`; bsc `0x6722e3...de181a`; bsc `0x681174...3d2120`; bsc `0x68c7d1...afd638`; bsc `0x6b5a9b...b84b19`; bsc `0x6efa20...9ba88f`; bsc `0x6f0037...42f472`; bsc `0x6f31b8...846cdb`; bsc `0x73e4e8...3963ce`; bsc `0x75c918...66fe45`; bsc `0x7fa48b...fc99f6`; bsc `0x85f7b5...d4818f`; bsc `0x90f995...b3be97`; bsc `0x92729d...5fc6f3`; bsc `0x92e8ce...214e68`; bsc `0x9aa995...89a448`; bsc `0x9c4eba...fed2fb`; bsc `0x9cb24e...b02b78`; bsc `0x9cb7f2...7037d6`; bsc `0x9e6da2...87f7b2`; bsc `0x9f2365...5c6e79`; bsc `0xa5137e...30964e`; bsc `0xacdfd6...09dbcb`; bsc `0xae3001...87ba1d`; bsc `0xb20197...f3af7c`; bsc `0xb3972b...e29da0`; bsc `0xb69b6e...dae7e3`; bsc `0xb6fd27...cef97d`; bsc `0xb7b03a...bc5668`; bsc `0xbe65d7...aff2c7`; bsc `0xc0920f...7980ed`; bsc `0xc20f73...919ba7`; bsc `0xc3693e...617900`; bsc `0xc4465f...05bd4b`; bsc `0xc4715a...ba8920`; bsc `0xc58954...8c2d1d`; bsc `0xccd0b9...5ac5bd`; bsc `0xce54ba...dd8d9a`; bsc `0xcec267...062693`; bsc `0xd0b738...75f73a`; bsc `0xd18e1a...e05cab`; bsc `0xd1b26e...77f7c8`; bsc `0xd24df3...1bf599`; bsc `0xd32b30...abd2f3`; bsc `0xdc938b...d1565e`; bsc `0xdd88d6...fb441a`; bsc `0xe0565f...795072`; bsc `0xe6fe6b...a79d81`; bsc `0xe7f9a4...934aaf`; bsc `0xebdd37...bea7d0`; bsc `0xedf822...0f6392`; bsc `0xf35d63...7ad892`; bsc `0xf7a313...616fc9`; bsc `0xff0224...772815` | ⚠️ Unaudited |
| SolidlyGaugeVolatileLPStrategy | operational_periphery | optimism | n/a | [`0xa3372c...b3b20d`](./contracts/optimism-10/0xa3372cd2178c52fdcb1f6e4c4e93014b4db3b20d/) | ⚠️ Unaudited |
| SolidlyLpWrapper | unknown | optimism | n/a | [`0x6eb170...297c04`](./contracts/optimism-10/0x6eb1709e0b562097bf1cc48bc6a378446c297c04/) | ⚠️ Unaudited |
| sOlympus | unknown | ethereum | n/a | 2 deployments: ethereum [`0x04f269...52111f`](./contracts/ethereum-1/0x04f2694c8fcee23e8fd0dfea1d4f5bb8c352111f/); ethereum `0xaec116...189376` | ⚠️ Unaudited |
| SousChef | unknown | bsc | n/a | [`0xfaa221...71b4d3`](./contracts/bsc-56/0xfaa221f0a3c36a17dacbecc1f19df4094871b4d3/) | ⚠️ Unaudited |
| SpellPower | unknown | ethereum | n/a | 2 deployments: ethereum [`0x958da0...6741b3`](./contracts/ethereum-1/0x958da0fc423e716554e67dff80921d171e6741b3/); ethereum `0xe1055b...3cdad6` | ⚠️ Unaudited |
| SpellPowerStaking | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x196b73...448ca1`](./contracts/arbitrum-42161/0x196b73a33f10bc839de082ccf799027190448ca1/); arbitrum `0x3b6bbc...8cb34f`; arbitrum `0x609f4c...42fd72`; arbitrum `0x8b8718...68b884`; arbitrum `0x9961bf...f9fc02`; arbitrum `0xa5901a...72397e`; arbitrum `0xe0f829...45abd6`; arbitrum `0xfa9956...9ce385` | ⚠️ Unaudited |
| SpellSwapperV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa806d2...521de8`](./contracts/ethereum-1/0xa806d2e52ad8d0e3cc4a1eff7d88fd651c521de8/); ethereum `0xd9a89a...4bf026` | ⚠️ Unaudited |
| SpellTWAPOracle | unknown | ethereum | n/a | [`0x1ad386...3048cf`](./contracts/ethereum-1/0x1ad386d647c216f3fe5a4fc04f6e4cb83e3048cf/) | ⚠️ Unaudited |
| SSpellSwapperV1 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0c2e70...d2c9fa`](./contracts/ethereum-1/0x0c2e700c8eb3da2f70338c845354a3fe70d2c9fa/); ethereum `0x125238...32ae90`; ethereum `0x4c96a8...a03a68`; ethereum `0xf6c91a...2ccb89` | ⚠️ Unaudited |
| sSpellV1 | unknown | ethereum | n/a | [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | ⚠️ Unaudited |
| StabilizeCaller | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8299ba...7d53df`](./contracts/arbitrum-42161/0x8299baba76ae944ffbcea6525aaacb3c1e7d53df/); arbitrum `0xca69e8...f6067c` | ⚠️ Unaudited |
| StabilizeMigrator | unknown | arbitrum | n/a | [`0xad8b9d...5380a9`](./contracts/arbitrum-42161/0xad8b9d2abea3ec3abdaf793b93c7467b525380a9/) | ⚠️ Unaudited |
| StakedGlp | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x01af26...ba1c55`](./contracts/arbitrum-42161/0x01af26b74409d10e15b102621edd29c326ba1c55/); arbitrum `0x030d51...5593fb`; arbitrum `0x2f546a...3e89ae`; arbitrum `0x443b9e...775d36`; arbitrum `0x5402b5...0cffdf`; arbitrum `0xcf04ab...a65d6e` | ⚠️ Unaudited |
| StakedGlpMigrator | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0xb63366...aba240`](./contracts/arbitrum-42161/0xb6336626c56d72ea501b6d14d1abd356c8aba240/); arbitrum `0xe19ab1...0b382c`; arbitrum `0xe469f6...39256c` | ⚠️ Unaudited |
| StakeManager | unknown | arbitrum | n/a | [`0xe547ca...d02fd2`](./contracts/arbitrum-42161/0xe547cadbe081749e5b3dc53cb792dfaea2d02fd2/) | ⚠️ Unaudited |
| StakingHelper | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa55ce3...790915`](./contracts/ethereum-1/0xa55ce3e25bd4cb6c5375aa393335b708db790915/); ethereum `0xc8c436...7a612d` | ⚠️ Unaudited |
| StakingPools | core_logic | ethereum | n/a | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | ⚠️ Unaudited |
| StakingProxyERC20 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1d0c89...476d80`](./contracts/ethereum-1/0x1d0c890236261c3a2440af03ab10654e60476d80/); ethereum `0x2628b2...a7bbb6`; ethereum `0x86a3fb...c14bef`; ethereum `0xe0a691...befdf4` | ⚠️ Unaudited |
| StakingProxyERC20Joint | unknown | ethereum | n/a | 2 deployments: ethereum [`0x64167f...111181`](./contracts/ethereum-1/0x64167f69a10ab360a8c45b8c7db31d7752111181/); ethereum `0x6452a3...f96ffa` | ⚠️ Unaudited |
| StakingWarmup | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2882a5...07c5f1`](./contracts/ethereum-1/0x2882a5cd82ac49e06620382660f5ed932607c5f1/); ethereum `0xd175a8...0d3345` | ⚠️ Unaudited |
| StashFactory | unknown | ethereum | n/a | 3 deployments: ethereum [`0x73f88b...7bd87c`](./contracts/ethereum-1/0x73f88bfc32f5946b0e0851ca53f277fe177bd87c/); ethereum `0x877288...47de75`; ethereum `0xf40d54...807cae` | ⚠️ Unaudited |
| StashFactoryV2 | unknown | ethereum | n/a | [`0x884da0...9c2be4`](./contracts/ethereum-1/0x884da067b66677e72530df91eabb6e3ce69c2be4/) | ⚠️ Unaudited |
| StashTokenWrapper | unknown | ethereum | n/a | [`0xc19cf0...a13eb7`](./contracts/ethereum-1/0xc19cf0eaa43ee080c3cb8fb7db388091d3a13eb7/) | ⚠️ Unaudited |
| stdeUSD | unknown | ethereum | n/a | [`0x5c5b19...198326`](./contracts/ethereum-1/0x5c5b196abe0d54485975d1ec29617d42d9198326/) | ⚠️ Unaudited |
| SubaccountRouter | unknown | arbitrum | n/a | [`0x3c48a9...1efa44`](./contracts/arbitrum-42161/0x3c48a997ef5badef5c07780342af0f7ed71efa44/) | ⚠️ Unaudited |
| SushiBar | unknown | ethereum | n/a | [`0x879824...ff4272`](./contracts/ethereum-1/0x8798249c2e607446efb7ad49ec89dd1865ff4272/) | ⚠️ Unaudited |
| SwapperTester | unknown | avalanche | n/a | 3 deployments: avalanche [`0x526a17...acdfdd`](./contracts/avalanche-43114/0x526a17c623809792c033c9816ae9a6fa80acdfdd/); avalanche `0x7ad0e5...1eaaa7`; avalanche `0xd8284e...d9e020` | ⚠️ Unaudited |
| SwapperTesterV2 | unknown | avalanche | n/a | [`0x0c963a...b91886`](./contracts/avalanche-43114/0x0c963a595afb4609c5cc6bb0a9dad01925b91886/) | ⚠️ Unaudited |
| SyrupBar | unknown | bsc | n/a | [`0x009cf7...cea9b0`](./contracts/bsc-56/0x009cf7bc57584b7998236eff51b98a168dcea9b0/) | ⚠️ Unaudited |
| TapFab | unknown | ethereum | n/a | 2 deployments: ethereum [`0x521c42...51f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/); ethereum `0xc2baca...98ab50` | ⚠️ Unaudited |
| TestContract | unknown | polygon | n/a | 15 deployments: polygon [`0x0bfc4d...bacffb`](./contracts/polygon-137/0x0bfc4d468c130f27887b4df6a7f9e85dddbacffb/); polygon `0x29be26...454dce`; polygon `0x3a163e...63b7f9`; polygon `0x3aff99...a1384b`; polygon `0x49af41...5ec911`; polygon `0x601c56...e305db`; polygon `0x6c4649...b0b548`; polygon `0x70b868...6a7493`; polygon `0x72015e...52dfcb`; polygon `0x7e0f0c...6d3aeb`; polygon `0x98bf3e...0d3ede`; polygon `0xac6c43...13d512`; polygon `0xb69c15...9a8276`; polygon `0xea0610...cc7d43`; polygon `0xf6939a...adb75c` | ⚠️ Unaudited |
| TestForMelen | unknown | ethereum | n/a | [`0x09f5e0...878679`](./contracts/ethereum-1/0x09f5e032aae0d6b693db30b2a3daccf2fb878679/) | ⚠️ Unaudited |
| TestForMelen2 | unknown | ethereum | n/a | [`0x1bc998...8074cc`](./contracts/ethereum-1/0x1bc998bf2e25ea49b212b9db35491047c28074cc/) | ⚠️ Unaudited |
| Timelock | unknown | arbitrum | n/a | 42 deployments: ethereum `0x9a8541...d47bd1`; bsc `0x4b57a6...20b410`; bsc `0x6f1864...7a7311`; bsc `0x713ee3...ccd068`; bsc `0x7afd7e...4b0c65`; bsc `0x8974b5...6d1492`; bsc `0xa1f482...2e8fe4`; bsc `0xac57c0...00cc70`; bsc `0xdd8531...06ae2c`; arbitrum [`0x09214c...9b15b8`](./contracts/arbitrum-42161/0x09214c0a3594fbcad59a58099b0a63e2b29b15b8/); arbitrum `0x09fec9...240126`; arbitrum `0x181e94...feeaf5`; arbitrum `0x185870...164f8e`; arbitrum `0x1e0fd2...6db0d9`; arbitrum `0x1f3e8e...3f6285`; arbitrum `0x2068fc...2a6bbf`; arbitrum `0x2d7d54...5cda1c`; arbitrum `0x387951...d97715`; arbitrum `0x3a8b93...c6815e`; arbitrum `0x3f3e77...75341e`; arbitrum `0x4339b1...767071`; arbitrum `0x451f39...98684e`; arbitrum `0x460e1a...82bc6e`; arbitrum `0x4a3930...d61a78`; arbitrum `0x4e86e7...d565b3`; arbitrum `0x5cf5e6...615f42`; arbitrum `0x61179a...ee23e2`; arbitrum `0x6a9215...d6798f`; arbitrum `0x7b2f35...bda6e2`; arbitrum `0x8669ff...06b077`; arbitrum `0x97a552...7b93fc`; arbitrum `0x9fd825...fdaa44`; arbitrum `0xa20526...de0b83`; arbitrum `0xaa50bd...b6a597`; arbitrum `0xaf2f95...72ae2a`; arbitrum `0xb01384...37dcc7`; arbitrum `0xbb8614...a7fdb4`; arbitrum `0xd89efb...ae6e0c`; arbitrum `0xe7e740...cf4858`; arbitrum `0xf3cf3d...7b2350`; avalanche `0x81a63b...25dc4a`; avalanche `0xeb5c91...4b1ff8` | ⚠️ Unaudited |
| TimePower | unknown | avalanche | n/a | [`0x184a07...8733cf`](./contracts/avalanche-43114/0x184a07c9cfd6165d6accdc373eb00bc5cd8733cf/) | ⚠️ Unaudited |
| TimeToken | token | ethereum | n/a | [`0x869d1b...ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | ⚠️ Unaudited |
| TokenFactory | unknown | ethereum | n/a | [`0x3c995e...147ab9`](./contracts/ethereum-1/0x3c995e43e6ddd551e226f4c5544c77bfed147ab9/) | ⚠️ Unaudited |
| TokenLocker | token | arbitrum | n/a | 4 deployments: arbitrum [`0x1092b0...acd674`](./contracts/arbitrum-42161/0x1092b0c039f51297ccc9d9c861a2f9a18facd674/); arbitrum `0x18168e...0c8c62`; arbitrum `0x882d37...58419b`; arbitrum `0xf6a75b...b481c3` | ⚠️ Unaudited |
| TokenManager | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x1ef815...75ad59`](./contracts/arbitrum-42161/0x1ef8156b46e6f5a1973bff4975177fd13275ad59/); arbitrum `0x3b3d62...1437d7`; arbitrum `0x4e29d2...6c9e4e`; arbitrum `0x500ee9...bcbab2`; arbitrum `0x50f223...a357fb`; arbitrum `0x7b78ce...9062f5`; arbitrum `0xd65928...61f3e6`; arbitrum `0xd83d2f...2b2de2`; arbitrum `0xdddc54...5ea96a` | ⚠️ Unaudited |
| TokenMintERC20Token | token | ethereum | n/a | [`0x95ad61...64c4ce`](./contracts/ethereum-1/0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce/) | ⚠️ Unaudited |
| TokenOracle | unknown | avalanche | n/a | 2 deployments: avalanche [`0x588d40...991d17`](./contracts/avalanche-43114/0x588d402c868add9053f8f0098c2dc3443c991d17/); avalanche `0x9cd243...b3d664` | ⚠️ Unaudited |
| TokenPriceConfig | unknown | bsc | n/a | [`0x7f9778...7c3b64`](./contracts/bsc-56/0x7f97784d4856e92aa2cd9654be03bf74ad7c3b64/) | ⚠️ Unaudited |
| TokenVesting | unknown | avalanche | n/a | 126 deployments: avalanche [`0x0147c0...0ef296`](./contracts/avalanche-43114/0x0147c0212ca4aba29d26dffd3c800893080ef296/); avalanche `0x01b269...2145e3`; avalanche `0x02d632...cab641`; avalanche `0x0473f2...2465a9`; avalanche `0x0584e6...2fd302`; avalanche `0x072c47...6f97f6`; avalanche `0x076917...72cd75`; avalanche `0x089ec7...c22dcc`; avalanche `0x0a3b77...972c0e`; avalanche `0x0a64e8...3b0d7b`; avalanche `0x0cc47a...66a557`; avalanche `0x0f9e96...06e27b`; avalanche `0x0fb72b...faf162`; avalanche `0x0fefca...fb54b0`; avalanche `0x10f672...cb5029`; avalanche `0x123780...dfb337`; avalanche `0x132492...ce10d3`; avalanche `0x14d458...664301`; avalanche `0x14f28f...36e08a`; avalanche `0x156539...0feae4`; avalanche `0x16f419...8ed79e`; avalanche `0x1771ba...dba954`; avalanche `0x1a7727...4c30a9`; avalanche `0x1b2d91...9b440c`; avalanche `0x1fcfde...5501ad`; avalanche `0x23eb41...18f628`; avalanche `0x25dd4a...29d7cc`; avalanche `0x2a834d...086401`; avalanche `0x2aa5ee...75d2da`; avalanche `0x2cd215...1de38b`; avalanche `0x2d92ee...e048eb`; avalanche `0x31ba32...d859ce`; avalanche `0x357211...f67b1c`; avalanche `0x386fbf...122329`; avalanche `0x3c3246...0354ec`; avalanche `0x3c9211...d7b5d9`; avalanche `0x3cb560...eaad04`; avalanche `0x3ccfc1...2f8e24`; avalanche `0x3dca53...a60a63`; avalanche `0x3e6125...01acd1`; avalanche `0x3e9263...ff864d`; avalanche `0x43feff...682414`; avalanche `0x444d68...6890fe`; avalanche `0x45acb6...587d87`; avalanche `0x4d0b73...377313`; avalanche `0x4e931f...112538`; avalanche `0x52d69a...5ea435`; avalanche `0x5410c2...e4c118`; avalanche `0x5caaf1...006e22`; avalanche `0x5d57f6...899c7c`; avalanche `0x5da155...5405ca`; avalanche `0x5f0902...865095`; avalanche `0x5fe9ad...5ec7ec`; avalanche `0x61ecdb...ff90e2`; avalanche `0x627237...7e9f80`; avalanche `0x650967...76f430`; avalanche `0x66b145...f3142d`; avalanche `0x66fa31...7efb63`; avalanche `0x670968...198eec`; avalanche `0x68b28f...264bff`; avalanche `0x6af7e2...eec3a5`; avalanche `0x6baa88...3a4db8`; avalanche `0x6d3431...368edb`; avalanche `0x6ee70b...031ec7`; avalanche `0x703473...b96460`; avalanche `0x70466e...ad27cc`; avalanche `0x70a5e4...be307b`; avalanche `0x70f7d4...5ac7da`; avalanche `0x73cd07...6e9ca0`; avalanche `0x763dc8...e64864`; avalanche `0x76eaa1...f63008`; avalanche `0x770b6e...b264f3`; avalanche `0x7a609a...dc490e`; avalanche `0x7d0a30...311326`; avalanche `0x7e4d8a...31c1d4`; avalanche `0x7e9499...22063f`; avalanche `0x7ef4e0...b975e0`; avalanche `0x7fa453...bcb6fe`; avalanche `0x810998...cbf66d`; avalanche `0x815cbe...a2c9ee`; avalanche `0x81a003...98237e`; avalanche `0x8637eb...08636d`; avalanche `0x868848...43cc3b`; avalanche `0x872f15...f8030f`; avalanche `0x895a53...1c02e7`; avalanche `0x8b58a5...662afc`; avalanche `0x90bbc3...1f6fce`; avalanche `0x927be1...50848b`; avalanche `0x948cf2...566e8f`; avalanche `0x952d82...56d57e`; avalanche `0x96a6b2...c20718`; avalanche `0x971156...997c50`; avalanche `0x99727c...f4e01e`; avalanche `0x9b711b...f3bc5c`; avalanche `0x9c5b9e...0e135d`; avalanche `0x9eb54a...793200`; avalanche `0x9f8c00...b7c983`; avalanche `0x9fcb6b...63fa1c`; avalanche `0xa526c8...419d97`; avalanche `0xafb2aa...c7fe8b`; avalanche `0xb2d98a...191cf1`; avalanche `0xb31a19...0dfec0`; avalanche `0xb3d05b...b8a30e`; avalanche `0xb7b46f...693e26`; avalanche `0xb864ba...3d274e`; avalanche `0xc3e997...2b3429`; avalanche `0xc6001b...669249`; avalanche `0xc698d4...74673c`; avalanche `0xcbaf30...c15965`; avalanche `0xcdac33...30fbeb`; avalanche `0xd60366...fa5360`; avalanche `0xdc0d42...a187a7`; avalanche `0xddf06d...a4fd9d`; avalanche `0xde8cb3...79d652`; avalanche `0xdf1339...ef8fe7`; avalanche `0xdf781b...242aa4`; avalanche `0xe5ba4d...cd298b`; avalanche `0xea347e...d6d0c3`; avalanche `0xec8184...dd7d1a`; avalanche `0xf19c35...ecb452`; avalanche `0xf2eb59...734279`; avalanche `0xfa4329...6abf9b`; avalanche `0xfa4ceb...0a1846`; avalanche `0xfb0586...1a3fe9`; avalanche `0xfc22e8...d56a25`; avalanche `0xfc2f38...747bbb` | ⚠️ Unaudited |
| TopFab | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0eda20...733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/); ethereum `0x9dda49...380c49` | ⚠️ Unaudited |
| TopUpGelatoSender | unknown | ethereum | n/a | [`0xddfa06...d7485b`](./contracts/ethereum-1/0xddfa065f372abedf5dfae9020210f06f7cd7485b/) | ⚠️ Unaudited |
| Transmuter | unknown | ethereum | n/a | [`0xab7a49...122086`](./contracts/ethereum-1/0xab7a49b971afdc7ee26255038c82b4006d122086/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x06661a...486a2e`](./contracts/bsc-56/0x06661a6a4ea0f347b5e02e74017533270f486a2e/); bsc `0x83151a...3d1b81` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x7bd870...6579ea`](./contracts/bsc-56/0x7bd870ffde7e5ad4b2f9837c96ca62d2e86579ea/); bsc `0xbdd021...947810` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x7eae7a...c7ca0f`](./contracts/bsc-56/0x7eae7aad55ec66ff3c5a4fec21820c14e4c7ca0f/); bsc `0xba09e5...0daf83` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1313bb...b51d9f`](./contracts/arbitrum-42161/0x1313bbf677e8fda5284f714f9c743a55a8b51d9f/); arbitrum `0x952a6d...300e58` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x29f86a...3f7ca5`](./contracts/arbitrum-42161/0x29f86a78551fac44217a8763a45540027c3f7ca5/); avalanche `0x2f4391...bb5140`; avalanche `0x592f70...419f37` | ⚠️ Unaudited |
| TreasuryFunds | unknown | ethereum | n/a | 2 deployments: ethereum [`0x138938...541bb7`](./contracts/ethereum-1/0x1389388d01708118b497f59521f6943be2541bb7/); ethereum `0x9402eb...f248d1` | ⚠️ Unaudited |
| TreasuryLend | operational_periphery | ethereum | n/a | [`0x04dd97...bd207f`](./contracts/ethereum-1/0x04dd97255ddee29c941d85f5b5cde6ace8bd207f/) | ⚠️ Unaudited |
| TreasuryManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x858847...750361`](./contracts/ethereum-1/0x858847c21b075e45727fcb0b544bd843cd750361/); ethereum `0xeb8121...6de6b3` | ⚠️ Unaudited |
| TreasuryManagerFrax | unknown | ethereum | n/a | [`0x9d464b...055f80`](./contracts/ethereum-1/0x9d464b601f74c8d3d42379921106b907f1055f80/) | ⚠️ Unaudited |
| TreasuryRegistry | unknown | ethereum | n/a | [`0xcab2bb...ac4507`](./contracts/ethereum-1/0xcab2bb34eeaa177bd8d36e46114b45528aac4507/) | ⚠️ Unaudited |
| TreasurySwap | unknown | ethereum | n/a | 3 deployments: ethereum [`0x00711e...75d21d`](./contracts/ethereum-1/0x00711e5c8fcd631ba9c6165d99e641face75d21d/); ethereum `0x43a7be...be80e0`; ethereum `0xa25b17...e74316` | ⚠️ Unaudited |
| TreasuryVester | unknown | avalanche | n/a | [`0x6747ac...12acee`](./contracts/avalanche-43114/0x6747ac215daffee03a42f49febb6ab448e12acee/) | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | avalanche | n/a | 3 deployments: avalanche [`0x3c5486...f73682`](./contracts/avalanche-43114/0x3c5486b85faae29b071f2a616a59ca7bf8f73682/); avalanche `0x82ea6f...08038e`; avalanche `0xe6ffd9...f3ba6e` | ⚠️ Unaudited |
| TroveManager | governance | ethereum | n/a | [`0xa39739...cf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | ⚠️ Unaudited |
| TubFab | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb3b670...d1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/); ethereum `0xec4d29...d28356` | ⚠️ Unaudited |
| UmbrellaAggregator | unknown | linea | n/a | 3 deployments: linea [`0x15f57f...1bc298`](./contracts/linea-59144/0x15f57fbcb7a443ac6022e051a46cae19491bc298/); linea `0x23a22b...afd309`; linea `0xe47018...c202ef` | ⚠️ Unaudited |
| Unipool | core_logic | ethereum | n/a | [`0xd37a77...bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | avalanche | n/a | [`0xcbb424...f62339`](./contracts/avalanche-43114/0xcbb424fd93cdec0ef330d8a8c985e8b147f62339/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | arbitrum | n/a | [`0xded882...626341`](./contracts/arbitrum-42161/0xded8823234e28f18a824abe4f64fa7863b626341/) | ⚠️ Unaudited |
| UpgradeProxy | unknown | bsc | n/a | [`0x8d8f5a...58faa6`](./contracts/bsc-56/0x8d8f5a44d92d3cff40806548d204ffe90e58faa6/) | ⚠️ Unaudited |
| UsdcAvaxLevSwapper | unknown | avalanche | n/a | 3 deployments: avalanche [`0x2af303...94b357`](./contracts/avalanche-43114/0x2af303aa6dbcc94f16a6bbc732b6575f2294b357/); avalanche `0x38a67c...4375ed`; avalanche `0xc845c5...e9d2ba` | ⚠️ Unaudited |
| UsdcAvaxLPOracle | unknown | avalanche | n/a | 2 deployments: avalanche [`0x648af2...a27793`](./contracts/avalanche-43114/0x648af26592c7425447b8eee647f4106b97a27793/); avalanche `0xef9c97...15d70b` | ⚠️ Unaudited |
| UsdcAvaxOracleV1 | unknown | avalanche | n/a | 3 deployments: avalanche [`0x08b918...63ef63`](./contracts/avalanche-43114/0x08b918dd18e087893bb9d711d9e0bbaa7a63ef63/); avalanche `0x471ee7...f6fceb`; avalanche `0xb9565f...4f265a` | ⚠️ Unaudited |
| UsdcAvaxSwapper | unknown | avalanche | n/a | 3 deployments: avalanche [`0x20cb52...de9430`](./contracts/avalanche-43114/0x20cb52832f35c61ccdbe5c336e405fe979de9430/); avalanche `0x4ec000...bef901`; avalanche `0x6eb170...297c04` | ⚠️ Unaudited |
| UsdceAvaxLevSwapperV2 | unknown | avalanche | n/a | [`0x7d7656...fabcd8`](./contracts/avalanche-43114/0x7d76568d84de8a0f34bbf315f53d7772c1fabcd8/) | ⚠️ Unaudited |
| UsdceAvaxSwapperV2 | unknown | avalanche | n/a | [`0x6da650...4c98ae`](./contracts/avalanche-43114/0x6da65013d5814da632f1a94f3501abc8e54c98ae/) | ⚠️ Unaudited |
| UsdceAvaxSwapperV3 | unknown | avalanche | n/a | [`0x0b76af...804750`](./contracts/avalanche-43114/0x0b76afc2e52f84e04ee3fb1961277783fb804750/) | ⚠️ Unaudited |
| USDG | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x40757a...db2d51`](./contracts/arbitrum-42161/0x40757a2883f82392c49ce86cb0d92d0653db2d51/); arbitrum `0x45096e...678141` | ⚠️ Unaudited |
| Utilities | unknown | ethereum | n/a | [`0xf37c41...64b503`](./contracts/ethereum-1/0xf37c41ef2281893b5971769370d6cdd35864b503/) | ⚠️ Unaudited |
| ValueRouter | unknown | optimism | n/a | [`0x650af5...504b76`](./contracts/optimism-10/0x650af55d5877f289837c30b94af91538a7504b76/) | ⚠️ Unaudited |
| ValueRouter | unknown | arbitrum | n/a | [`0x7fc567...faf801`](./contracts/arbitrum-42161/0x7fc5670b2041d34414b0b2178fc660b1e1faf801/) | ⚠️ Unaudited |
| ValueRouterImpl | unknown | optimism | n/a | [`0x546d10...01c386`](./contracts/optimism-10/0x546d10c1378febef063b72ae4865496ad801c386/) | ⚠️ Unaudited |
| Vault | core_logic | arbitrum | n/a | [`0x489ee0...097c4a`](./contracts/arbitrum-42161/0x489ee077994b6658eafa855c308275ead8097c4a/) | ⚠️ Unaudited |
| VaultEarnedView | unknown | ethereum | n/a | 6 deployments: ethereum [`0x382cd6...b3d925`](./contracts/ethereum-1/0x382cd669d473a35202c9c3c74168518e0ab3d925/); ethereum `0x8261aa...5b4aca`; ethereum `0x9ce7c6...d9b308`; ethereum `0xb4d321...cd2b84`; ethereum `0xe05bf6...666683`; ethereum `0xe11505...d07370` | ⚠️ Unaudited |
| VaultErrorController | unknown | arbitrum | n/a | [`0xe56d2e...afd93a`](./contracts/arbitrum-42161/0xe56d2e4c685e67c866c292b583be732068afd93a/) | ⚠️ Unaudited |
| VaultPriceFeed | unknown | arbitrum | n/a | 16 deployments: arbitrum [`0x1cf457...2b5de3`](./contracts/arbitrum-42161/0x1cf4579904eb2acda0e4081e39ec10d0c32b5de3/); arbitrum `0x1f975a...97b4c0`; arbitrum `0x2d6801...96a002`; arbitrum `0x30333c...e89e54`; arbitrum `0x31e9ed...601078`; arbitrum `0x380e7c...662901`; arbitrum `0x3c69b1...ed392a`; arbitrum `0x678de0...177c90`; arbitrum `0x776d20...4bb505`; arbitrum `0x9162c1...d04782`; arbitrum `0xa18bb1...b6e363`; arbitrum `0xc7e3ea...ae38b3`; arbitrum `0xce0b06...6bb1b9`; arbitrum `0xeff37c...aecba8`; arbitrum `0xf13494...8d62d6`; arbitrum `0xfe661c...9c387a` | ⚠️ Unaudited |
| VaultReader | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x060cbb...463cc0`](./contracts/arbitrum-42161/0x060cbba8730eff54ee24e08d6a4973f376463cc0/); arbitrum `0x2a735d...ee6694`; arbitrum `0x518010...2c8087`; arbitrum `0x5a3a68...fd7a61`; arbitrum `0xfebb9f...43f24a` | ⚠️ Unaudited |
| ve_query | unknown | bsc | n/a | [`0x4d2e8b...230345`](./contracts/bsc-56/0x4d2e8b5fa1bb62c2e9bba2b2b23902bf06230345/) | ⚠️ Unaudited |
| VeJoeStaking | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4b4e08...7fbc17`](./contracts/avalanche-43114/0x4b4e0888091fb1de74a7e7404b2dc4eb897fbc17/); avalanche `0xdefdbe...e4e933` | ⚠️ Unaudited |
| VEPowerOracleReceiver | unknown | polygon | n/a | 9 deployments: polygon [`0x417a5b...968cca`](./contracts/polygon-137/0x417a5b82068e8b83c67680b649d7a84fbe968cca/); polygon `0x6720e7...4b979d`; polygon `0x70523d...1a8a4b`; polygon `0x7956e7...840d28`; polygon `0x907776...035c06`; polygon `0xa85d8c...8e98f9`; polygon `0xaff9d0...cae726`; polygon `0xb51b00...638094`; polygon `0xf5828e...1a0314` | ⚠️ Unaudited |
| VEPowerOracleSender | unknown | bsc | n/a | 5 deployments: bsc [`0x26a3fc...4090b6`](./contracts/bsc-56/0x26a3fc82f50fcaaf9a47faf4eaaa11054c4090b6/); bsc `0x4eacb8...2923f2`; bsc `0x65ec74...cd6edc`; bsc `0x7c8d29...48f17f`; bsc `0xe4266a...88c39d` | ⚠️ Unaudited |
| VEShareNFT | unknown | bsc | n/a | [`0x55f8d8...fceefd`](./contracts/bsc-56/0x55f8d898760240e6eff3c2cc23974ae8c8fceefd/) | ⚠️ Unaudited |
| VestedEscrow | unknown | ethereum | n/a | [`0xe98984...e28fcc`](./contracts/ethereum-1/0xe98984ad858075813ada4261af47e68a64e28fcc/) | ⚠️ Unaudited |
| Vester | operational_periphery | arbitrum | n/a | 6 deployments: arbitrum [`0x199070...363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/); arbitrum `0x218861...0e4bd4`; arbitrum `0x7c100c...df49b2`; arbitrum `0x886078...999c49`; arbitrum `0xa75287...72042e`; arbitrum `0xaac9fa...d509e2` | ⚠️ Unaudited |
| VesterCap | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x57866d...789b60`](./contracts/arbitrum-42161/0x57866d65acbb7ba3269807bf7af4019366789b60/); arbitrum `0x6c507b...f62696` | ⚠️ Unaudited |
| vlCvxExtraRewardDistribution | unknown | ethereum | n/a | 4 deployments: ethereum [`0x8ed4bb...1e0602`](./contracts/ethereum-1/0x8ed4bbf39e3080b35da84a13a0d1a2fdce1e0602/); ethereum `0x9b622f...fab702`; ethereum `0xdecc7d...79360d`; ethereum `0xe68677...89f572` | ⚠️ Unaudited |
| VoteDelegateExtension | unknown | ethereum | n/a | [`0x5349ff...67fb07`](./contracts/ethereum-1/0x5349ffba494ac3c888ffa16fd438f44b8c67fb07/) | ⚠️ Unaudited |
| VoterProxyOwner | unknown | ethereum | n/a | [`0x2b8355...48816e`](./contracts/ethereum-1/0x2b83552729067d1c32a2a31024776bd83c48816e/) | ⚠️ Unaudited |
| VotingBalance | unknown | ethereum | n/a | [`0x4c4d57...857ce9`](./contracts/ethereum-1/0x4c4d57f69f3081694e721dcd1a42536062857ce9/) | ⚠️ Unaudited |
| VotingBalanceMax | unknown | ethereum | n/a | [`0x59ccba...179bf2`](./contracts/ethereum-1/0x59ccbaabbfcac52e007a706242c5b81a48179bf2/) | ⚠️ Unaudited |
| VotingBalanceV2Gauges | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1cc2cf...72b988`](./contracts/ethereum-1/0x1cc2cfed7e40bab890ca532ad0dbb413e072b988/); ethereum `0x817686...16f917` | ⚠️ Unaudited |
| VotingEligibility | unknown | ethereum | n/a | [`0xbce1cb...bbfb0f`](./contracts/ethereum-1/0xbce1cbf6816d158e5f5d9713bcca805e37bbfb0f/) | ⚠️ Unaudited |
| VoxFab | unknown | ethereum | n/a | 2 deployments: ethereum [`0x414b1d...2499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/); ethereum `0x68fd08...6ea216` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 26 deployments: ethereum [`0x1635b5...5846c3`](./contracts/ethereum-1/0x1635b506a88fbf428465ad65d00e8d6b6e5846c3/); ethereum `0x27b7b1...6f07d7`; ethereum `0x2f50d5...5846bb`; ethereum `0x47c8ef...04e112`; ethereum `0x575ccd...318e2c`; ethereum `0x5f18c7...b973a9`; ethereum `0x5f3b5d...94e2a2`; ethereum `0x5faf6a...e52d8e`; ethereum `0x64e3c2...ac041d`; ethereum `0x6c3f90...e6e490`; ethereum `0x705350...55410f`; ethereum `0x7ca5b0...1d7575`; ethereum `0x7da96a...8d87a7`; ethereum `0x807819...b6abf3`; ethereum `0xa258c4...4d168c`; ethereum `0xa90996...857849`; ethereum `0xa9fe46...2f5b28`; ethereum `0xaba04e...9d7621`; ethereum `0xae0ec8...ff4f95`; ethereum `0xb1f2cd...202cac`; ethereum `0xbc89cd...ca8f53`; ethereum `0xd061d6...c2fce0`; ethereum `0xd533a9...34cd52`; ethereum `0xda8164...970c95`; ethereum `0xdcd90c...0b4325`; ethereum `0xe14d13...097db1` | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | n/a | 2 deployments: avalanche [`0x7fc6d4...1d51d4`](./contracts/avalanche-43114/0x7fc6d48e6e8e8b9505c171325539c651bf1d51d4/); avalanche `0xb31f66...fd66c7` | ⚠️ Unaudited |
| WBNB | unknown | bsc | n/a | [`0xbb4cdb...bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WETH | unknown | ethereum | n/a | 3 deployments: ethereum [`0x353f89...c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/); ethereum `0x5503e7...a2808e`; ethereum `0xaec71b...3bc33d` | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WETHRebasing | token | blast | n/a | [`0x430000...000004`](./contracts/blast-81457/0x4300000000000000000000000000000000000004/) | ⚠️ Unaudited |
| WhitelistedCauldronV3 | unknown | avalanche | n/a | 4 deployments: ethereum `0x53375a...60a9a6`; avalanche [`0x3e3728...773c1d`](./contracts/avalanche-43114/0x3e3728ffdc79961a03613a8b011bb39001773c1d/); avalanche `0xe8681a...c18726`; avalanche `0xe9c057...2d04ff` | ⚠️ Unaudited |
| WhitelistedCauldronV4 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1062eb...495b72`](./contracts/ethereum-1/0x1062eb452f8c7a94276437ec1f4aaca9b1495b72/); ethereum `0xf75edb...614e46` | ⚠️ Unaudited |
| WhitelistedCheckpointCauldronV4 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x333e28...a3b5e8`](./contracts/ethereum-1/0x333e28e557dc026518e25d1d426c4407a0a3b5e8/); ethereum `0x42bb6d...de3e92` | ⚠️ Unaudited |
| wMEMO | unknown | avalanche | n/a | [`0x0da672...e5bb3b`](./contracts/avalanche-43114/0x0da67235dd5787d67955420c84ca1cecd4e5bb3b/) | ⚠️ Unaudited |
| wMEMOLevSwapper | unknown | avalanche | n/a | 3 deployments: avalanche [`0x2be431...f361b0`](./contracts/avalanche-43114/0x2be431ee7e74b1cb7cfa16fc90578ef42ef361b0/); avalanche `0x3fc446...a28edd`; avalanche `0x738694...c0423f` | ⚠️ Unaudited |
| wMemoOracle | unknown | avalanche | n/a | 6 deployments: avalanche [`0x26fa3f...a106a9`](./contracts/avalanche-43114/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/); avalanche `0x41d65c...29df42`; avalanche `0x4c56db...c07e17`; avalanche `0x99d8a9...1e17f3`; avalanche `0xb099cc...8ed258`; avalanche `0xc9facf...591918` | ⚠️ Unaudited |
| wMEMOSwapper | unknown | avalanche | n/a | 5 deployments: avalanche [`0x13f193...24ddab`](./contracts/avalanche-43114/0x13f193d5328d967076c5ed80be9ed5a79224ddab/); avalanche `0x1df188...dd9e51`; avalanche `0x3bab72...45ed2a`; avalanche `0x469a99...c0b3d3`; avalanche `0xe788ab...08ee6c` | ⚠️ Unaudited |
| wOHM | unknown | ethereum | n/a | [`0xca7654...8e3e65`](./contracts/ethereum-1/0xca76543cf381ebbb277be79574059e32108e3e65/) | ⚠️ Unaudited |
| wOHMLevSwapperV1 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x229104...e25366`](./contracts/ethereum-1/0x229104587b6ef8762f0a5ce394bf02f78ee25366/); ethereum `0x985486...920922`; ethereum `0xa10cbe...c5f6c0`; ethereum `0xd1ea64...48234c` | ⚠️ Unaudited |
| wOHMOracleV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x147855...b25b88`](./contracts/ethereum-1/0x1478551ff3ee214409db6d0d0182ace2d6b25b88/); ethereum `0xa17e42...7d7aa1` | ⚠️ Unaudited |
| wOHMSwapperV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x657fd0...e074e0`](./contracts/ethereum-1/0x657fd000944f1f09dca0f1cd6cf485fd81e074e0/); ethereum `0xc2bbe0...b90523` | ⚠️ Unaudited |
| wOHMTWAPOracleV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x261e76...b1a6cb`](./contracts/ethereum-1/0x261e769d52165379834080ec4c80070f6eb1a6cb/); ethereum `0x5ec244...c58c11` | ⚠️ Unaudited |
| WrappedKRT | unknown | ethereum | n/a | [`0xcaaff7...65bff1`](./contracts/ethereum-1/0xcaaff72a8cbbfc5cf343ba4e26f65a257065bff1/) | ⚠️ Unaudited |
| WrappedLuna | unknown | ethereum | n/a | [`0xd28777...c91ea9`](./contracts/ethereum-1/0xd2877702675e6ceb975b4a1dff9fb7baf4c91ea9/) | ⚠️ Unaudited |
| WrappedmAAPL | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc199e7...df0d42`](./contracts/ethereum-1/0xc199e74f633af6c2f5978a6e4598aaf47edf0d42/); ethereum `0xd36932...d15a84` | ⚠️ Unaudited |
| WrappedmAMZN | unknown | ethereum | n/a | [`0x0cae9e...b9caa7`](./contracts/ethereum-1/0x0cae9e4d663793c2a2a0b211c1cf4bbca2b9caa7/) | ⚠️ Unaudited |
| WrappedmBABA | unknown | ethereum | n/a | [`0x56aa29...c0af72`](./contracts/ethereum-1/0x56aa298a19c93c6801fdde870fa63ef75cc0af72/) | ⚠️ Unaudited |
| WrappedmGOOGL | unknown | ethereum | n/a | [`0x59a921...653442`](./contracts/ethereum-1/0x59a921db27dd6d4d974745b7ffc5c33932653442/) | ⚠️ Unaudited |
| WrappedmIAU | unknown | ethereum | n/a | [`0x1d3504...91f373`](./contracts/ethereum-1/0x1d350417d9787e000cc1b95d70e9536dcd91f373/) | ⚠️ Unaudited |
| WrappedMIR | unknown | ethereum | n/a | [`0x09a3ec...f2e608`](./contracts/ethereum-1/0x09a3ecafa817268f77be1283176b946c4ff2e608/) | ⚠️ Unaudited |
| WrappedmMSFT | unknown | ethereum | n/a | [`0x41bbed...852bd7`](./contracts/ethereum-1/0x41bbedd7286daab5910a1f15d12cbda839852bd7/) | ⚠️ Unaudited |
| WrappedmNFLX | unknown | ethereum | n/a | [`0xc8d674...0f9dcd`](./contracts/ethereum-1/0xc8d674114bac90148d11d3c1d33c61835a0f9dcd/) | ⚠️ Unaudited |
| WrappedMNT | unknown | ethereum | n/a | [`0x156b36...4bde45`](./contracts/ethereum-1/0x156b36ec68fdbf84a925230ba96cb1ca4c4bde45/) | ⚠️ Unaudited |
| WrappedmQQQ | unknown | ethereum | n/a | [`0x13b02c...f57d15`](./contracts/ethereum-1/0x13b02c8de71680e71f0820c996e4be43c2f57d15/) | ⚠️ Unaudited |
| WrappedmSLV | unknown | ethereum | n/a | [`0x9d1555...166676`](./contracts/ethereum-1/0x9d1555d8cb3c846bb4f7d5b1b1080872c3166676/) | ⚠️ Unaudited |
| WrappedmTSLA | unknown | ethereum | n/a | [`0x21ca39...66fd63`](./contracts/ethereum-1/0x21ca39943e91d704678f5d00b6616650f066fd63/) | ⚠️ Unaudited |
| WrappedmTWTR | unknown | ethereum | n/a | [`0xedb041...78cca9`](./contracts/ethereum-1/0xedb0414627e6f1e3f082de65cd4f9c693d78cca9/) | ⚠️ Unaudited |
| WrappedmUSO | unknown | ethereum | n/a | 2 deployments: ethereum [`0x31c631...356991`](./contracts/ethereum-1/0x31c63146a635eb7465e5853020b39713ac356991/); ethereum `0x4fd69d...50f214` | ⚠️ Unaudited |
| WrappedmVIXY | unknown | ethereum | n/a | [`0xf72fcd...33fc86`](./contracts/ethereum-1/0xf72fcd9dcf0190923fadd44811e240ef4533fc86/) | ⚠️ Unaudited |
| WrappedSDT | unknown | ethereum | n/a | [`0x676ad1...f39ee5`](./contracts/ethereum-1/0x676ad1b33ae6423c6618c1aecf53baa29cf39ee5/) | ⚠️ Unaudited |
| WrappedUST | unknown | ethereum | n/a | [`0xa47c8b...661acd`](./contracts/ethereum-1/0xa47c8bf37f92abed4a126bda807a7b7498661acd/) | ⚠️ Unaudited |
| WrapperFactory | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6a5a26...8212bc`](./contracts/ethereum-1/0x6a5a26e5b91cc9eb1d84da16a8360bc1df8212bc/); ethereum `0x8952bf...1c5808`; ethereum `0xe5ca8c...9d9942` | ⚠️ Unaudited |
| wsOHM | unknown | ethereum | n/a | 2 deployments: ethereum [`0x583043...d57d4f`](./contracts/ethereum-1/0x583043074788bec7c5b2bcb555bb926483d57d4f/); ethereum `0xfb53b3...24e3e8` | ⚠️ Unaudited |
| XJoeLevSwapper | unknown | avalanche | n/a | [`0xc022ab...32b888`](./contracts/avalanche-43114/0xc022abba577e991edd6515e28f779ed4d732b888/) | ⚠️ Unaudited |
| xJoeOracle | unknown | avalanche | n/a | 2 deployments: avalanche [`0xf33eb6...1d2d85`](./contracts/avalanche-43114/0xf33eb640773827afbbb886fa2d60b071d51d2d85/); avalanche `0xf675bb...3b3d87` | ⚠️ Unaudited |
| XJOEStrategy | unknown | avalanche | n/a | [`0x244baf...92285b`](./contracts/avalanche-43114/0x244bafbae9c47c795d3ab76ee77c5ba62e92285b/) | ⚠️ Unaudited |
| XJoeSwapper | unknown | avalanche | n/a | [`0x303a59...bbc0b9`](./contracts/avalanche-43114/0x303a59a1020807b6fd78d3bb0e3c8b6a26bbc0b9/) | ⚠️ Unaudited |
| XrpSwapAsset | unknown | avalanche | n/a | [`0xfb288d...4269aa`](./contracts/avalanche-43114/0xfb288d60d3b66f9c3e231a9a39ed3f158a4269aa/) | ⚠️ Unaudited |
| YVCrvStETHLevSwapperV1 | unknown | ethereum | n/a | [`0x2764ea...18ca72`](./contracts/ethereum-1/0x2764eae8481b1f463124c817feb310042618ca72/) | ⚠️ Unaudited |
| YVCrvStETHOracleV1 | unknown | ethereum | n/a | [`0x942d5f...addc26`](./contracts/ethereum-1/0x942d5f657d5b48f82db530ad530e200e1caddc26/) | ⚠️ Unaudited |
| YVCrvStETHOracleV2 | unknown | ethereum | n/a | [`0xaeef65...59d50a`](./contracts/ethereum-1/0xaeef657a06e6d9255b2895c9cef556da5359d50a/) | ⚠️ Unaudited |
| YVCrvStETHSwapperV1 | unknown | ethereum | n/a | [`0xf314ad...29b795`](./contracts/ethereum-1/0xf314ad60c32f80671d00e3de35e44a130829b795/) | ⚠️ Unaudited |
| YVIBLevSwapperV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x33058d...0dc93a`](./contracts/ethereum-1/0x33058da8c688251d98e7df7368a1a793390dc93a/); ethereum `0xc09faa...9f4436` | ⚠️ Unaudited |
| YVIBSwapperV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1945dc...363180`](./contracts/ethereum-1/0x1945dc833570a040e28b6e02aac913726e363180/); ethereum `0xaead42...ec732d` | ⚠️ Unaudited |
| YVIronBankOracleV1 | unknown | ethereum | n/a | [`0x5e89e5...97e981`](./contracts/ethereum-1/0x5e89e5430cc8e234ea8bfd907a367340c297e981/) | ⚠️ Unaudited |
| YVUSDCLeverageSwapper | unknown | ethereum | n/a | [`0x40f64f...32f01b`](./contracts/ethereum-1/0x40f64ff796ea941f2383ce579eee147a8732f01b/) | ⚠️ Unaudited |
| YVUSDCSwapperFlat | unknown | ethereum | n/a | 2 deployments: ethereum [`0x04a34f...3e31d6`](./contracts/ethereum-1/0x04a34ff16f31c8d6ea7b2c4489df13caa53e31d6/); ethereum `0xca7847...7e52d2` | ⚠️ Unaudited |
| YVUSDTLevSwapper | unknown | ethereum | n/a | [`0x197de2...593cf6`](./contracts/ethereum-1/0x197de282d7b5cefffd8f8b0196c30e8401593cf6/) | ⚠️ Unaudited |
| YVUSDTSwapperFlat | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1d7c1c...d319d3`](./contracts/ethereum-1/0x1d7c1c99045c1c776607f8c1ec9ddd27a2d319d3/); ethereum `0x41b982...9e549a` | ⚠️ Unaudited |
| YVWETHLevSwapper | unknown | ethereum | n/a | 4 deployments: ethereum [`0x726ee3...f04655`](./contracts/ethereum-1/0x726ee39e9c7d00498109ebf4d05c28a47bf04655/); ethereum `0x96ffaa...749cdb`; ethereum `0x9702b5...ed9d4d`; ethereum `0xbc8010...92b5ff` | ⚠️ Unaudited |
| YVWETHSwapperFlat | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e5659...498a5e`](./contracts/ethereum-1/0x4e5659446a8c42e36bea73261285e569d1498a5e/); ethereum `0xec919d...a63fce` | ⚠️ Unaudited |
| YVYFILevSwapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x02e07b...31625a`](./contracts/ethereum-1/0x02e07b6f27e5ec37ca6e9f846b6d48704031625a/); ethereum `0x69704c...bf0d01` | ⚠️ Unaudited |
| YVYFISwapperFlat | unknown | ethereum | n/a | [`0x27f2be...3c7bc2`](./contracts/ethereum-1/0x27f2bec8890fbc7920b88ddba0bf0e7fac3c7bc2/) | ⚠️ Unaudited |
| Zap | unknown | avalanche | n/a | [`0x2c7b8e...d02027`](./contracts/avalanche-43114/0x2c7b8e971c704371772edaf16e0db381a8d02027/) | ⚠️ Unaudited |
| ZeroXGLPWrapperLevSwapper | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x3f16df...22d71b`](./contracts/arbitrum-42161/0x3f16dfcfd23c1aa4472c80b2d2688e5c8222d71b/); arbitrum `0x983ca3...962037`; arbitrum `0xacb2e2...a4be05` | ⚠️ Unaudited |
| ZeroXGLPWrapperSwapper | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0b7bc6...7e26b3`](./contracts/arbitrum-42161/0x0b7bc6fced57e979d5cf48980c6b64f9857e26b3/); arbitrum `0x668931...20b8fe`; arbitrum `0x7f5402...4cfe11` | ⚠️ Unaudited |
| Zorro01Token | unknown | ethereum | n/a | [`0xdd716b...2eb744`](./contracts/ethereum-1/0xdd716b424423bbc88362ce73ef976d37322eb744/) | ⚠️ Unaudited |
| Zorro02Token | unknown | ethereum | n/a | [`0xdba3c9...d8ddd8`](./contracts/ethereum-1/0xdba3c9f9a427d2bdb7e260353dce57a94cd8ddd8/) | ⚠️ Unaudited |
| ZZZToken | unknown | ethereum | n/a | [`0x9bca93...42f4a2`](./contracts/ethereum-1/0x9bca936670fbf15165312faa3c2eec997e42f4a2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (485)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0cbd55...390940` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d126c...c00c60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d64d8...50fbd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x102560...5df38b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x127f3c...a9199b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x156ff0...120474` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15f73a...6f5605` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x183739...a98908` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a938e...1cb854` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ff103...26f4da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20826b...363058` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20bdda...9a55b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x230557...37b15e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c6f75...35b507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ff889...b8854d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31d687...cda740` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31edd3...112560` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x335926...f90c3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33a344...0a7efa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x362b56...9dfce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x384c53...293036` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x398e2a...0aac3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ad977...98f8a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bd1ee...3ca5af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x402fa0...2584b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x411ea3...9e93b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x450bb6...2ac541` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46695c...003ee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x471208...0a8732` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c209a...223d28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c3c27...f3964b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c9ad5...1c9acd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x518543...d0342a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56de9e...fa51a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x577060...48fa7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58b49e...72e1a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4997...5c76c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4ba4...789c09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x625fe7...74bd61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68d9b8...1dc806` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b04c5...3dacb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76d8a5...b14646` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x780db9...d0c320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c11f7...6b9a77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cf03c...55ea3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d3701...6b4877` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84f162...cbf197` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x897c79...ebc249` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89f800...389aa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b00a8...af293b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cbd1d...aeed7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92ab2e...1e0c79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92bfd0...fb3e9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9427e7...df3587` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9843e5...bd50ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98bc79...4cf142` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d01d5...09618d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e978e...73fdd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f4ef8...57df75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f6de3...1f2423` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fcb31...35be6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ff8b4...e94831` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa71a6c...905627` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa72062...df4677` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa766e8...bfd086` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb13352...e3a00f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc61d91...f4a581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc692b1...5530da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc77841...0cd5ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc79486...05af78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc882b9...2b0d9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbc21c...efe931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccf7e3...f4805d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3f3c5...8a8a89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd59619...a730f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6eaa2...a68e1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe81930...a59891` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed27b3...566e38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef0594...5e8173` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf50db8...785f99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf570ad...147b36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf68393...8fbf14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf85903...287c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf88cbc...c08ff4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfce0b2...13f71f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff0eb5...489010` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x12ea78...9f3e98` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2b95bf...b79676` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x38091a...0a584a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3eb5fc...fe7e93` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x60bbef...25a097` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x789004...f0c952` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8176c5...b59982` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x84ec15...28bce0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x86e761...bd385b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8cbc6f...d61ddc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x93503a...2e3409` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa384bc...0f4e0b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xab4186...4a626b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb0da6e...b5ed2b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb2c3a9...ba48f4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcceaed...8df8a9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd076f5...75dc49` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd825d0...b0e6a4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd96ddb...fffb4b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdd3b80...c9429a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xebf1f9...c92861` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xef2dbd...4f0195` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf675bb...3b3d87` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01ff59...b66d91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x02bc4c...8330f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x040bec...e0e92b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0708ab...0d10ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07ebfa...54ccf1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08f7d6...a6ed0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x094616...cbf501` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0cbed4...1fe277` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13f423...e93488` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19459c...c11c96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c2db0...fc15ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1cdee2...9f1f69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ce9d5...c79b77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f277b...07f170` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f716d...994d08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26a451...50e49d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b2710...3464da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2bc844...d86945` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c7e45...3eee5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x318cca...c7606d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31a260...abdf63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x340e08...99830b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x359895...3a037a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x394473...33e28e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ced93...76df8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d7efb...e12f3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e8ed2...887b1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53098a...968a2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a80eb...91bddf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ccfb1...aee73e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x635684...941fd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x644165...47a47d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x648f09...c36b3e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66d839...fca8b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x685d9a...d4300e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69b4aa...baf807` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c01e6...e1c810` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70035e...cc6d6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77b69b...87ca41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b9255...f96a05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7dbd30...5af56f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ea445...ce252b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ecd5a...515df3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82d495...c060ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86de2b...67bdb3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89dabc...0bf5c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b7d34...2bf52c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cacd0...cf6ae1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97c640...ab4571` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97ffb1...8cbdd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9827b2...fc1f53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b1529...12eedc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b20be...b63e07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c432f...2440aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e006a...fb0ae8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f45c5...e49402` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3add6...e4afa5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3b94c...74cf61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa924fb...7226b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa96b5a...17ebca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaec0f9...d88e17` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0763b...d67bf6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0dfe3...cc48e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbbb2aa...6974fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe18d6...c45255` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc057ba...4185b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4a777...ae6d19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb2b70...8a7a0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcbdc08...ea236c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc3456...b0f1b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd23ed8...debb7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd73294...be23f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9e4e4...032327` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb85e9...2b863f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xddbe9f...e22e07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1ddc3...bfa4aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe30c6c...fbf616` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe33c3e...9ebc75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5b438...25670d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe61ebc...284bd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8ed59...b1906f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea68ba...ddd114` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xead33e...61b520` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf013a8...7c4a21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf58a5a...7a0c61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa718f...ed8105` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc5c0e...2a5b49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xffcc2b...b81cec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0288d6...3615e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x08b918...63ef63` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0991bb...e13753` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0b4e75...c3b6cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0d0141...cd17c0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0df56a...38a181` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0e5b65...65c296` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x22bf44...2057a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x240a8d...ff7f0b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x25a528...28cc19` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x26eaf3...75cd40` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x32f120...146422` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x36d947...320734` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x374783...9728bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3a87eb...1db1fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3cde2c...86e8a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d913d...2b4934` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d9f1d...b1e33c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x434aed...c43e11` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4fe2cf...6b9d87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x546d10...01c386` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6b1a19...9fba89` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6ed71b...ef0920` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x711214...9c3a23` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x733df3...d9667f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b7caf...c5f45d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x818ec0...d6dc0b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x82197d...60e34d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x84a9bd...db8f63` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x89c881...b77b71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a0f53...e1b515` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a214d...ab94e7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8bb9ca...afbe72` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8ce955...b5f5bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x95bf7e...fcd605` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97bdbc...753e85` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9877dc...47dca8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9aea86...3259bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9b40e4...7a2c21` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9fe28d...b9ce48` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xabda03...0e1a5b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xad996a...5a4302` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb12c13...091358` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb3f5c7...a26753` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb44a9b...9c663c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xba40c1...a38e7e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbe77ef...e4e156` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc7a161...cd8d8c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc90060...cc6bf8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc931f6...d4ab50` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce3b88...e428be` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdd03db...4f7524` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe2304a...f0bfb2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3f5a9...a0ad7d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe68019...fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xed3d03...ac2e73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xefbe7b...678c76` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf711f9...fccffc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf90e9c...4babc5` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x090185...37e5f6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 34 deployments: fantom `0x0dec85...cefaf0`; fantom `0x21be37...1a4c83`; fantom `0x287176...784adc`; fantom `0x4fdffa...6d7bc1`; fantom `0x64c655...2af8c4`; fantom `0x6f86e6...456efc`; fantom `0x7208d9...c0a45d`; fantom `0x74a0bc...20a616`; fantom `0x82f0b8...6829c1`; fantom `0x8e45af...eaed34`; fantom `0xa3fc1b...59917e`; fantom `0xa48d95...de7598`; fantom `0xb32b31...ea0488`; fantom `0xc5c015...783191`; fantom `0xd4357d...89d11b`; fantom `0xed745b...884e12`; fantom `0xef7a0b...03298a`; fantom `0xf08e4c...abd7c7`; fantom `0xf5bce5...643966`; fantom `0xf68b78...dd567f`; kava `0x1b77fd...73315b`; kava `0x287176...784adc`; kava `0x30d525...ce7c16`; kava `0x3a2761...77c367`; kava `0x3cff6f...66e6a8`; kava `0x471ee7...f6fceb`; kava `0x526a17...acdfdd`; kava `0x630fc1...819d7e`; kava `0x729d88...936e30`; kava `0x7ad0e5...1eaaa7`; kava `0x895731...18651d`; kava `0xaad094...80a41a`; kava `0xc7a161...cd8d8c`; kava `0xd6b8bd...5dc591` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1d7ca6...ef22c1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x218c3c...61a4c0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2c78f1...3aa07e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x340fe1...7b717a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc1be9a...4602c4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd67de0...850454` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe0ce60...2a1109` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x090185...37e5f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xacdd6e...a7a97b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7a161...cd8d8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x092a85...18d3fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0bfcd5...5745eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x131238...2bb152` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x14fb47...cc344b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x173e60...c42eeb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x193d7e...e2dae8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b8911...c56ec6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x205d52...d7e0f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x234ae7...9d3be1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x24a760...d3116c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2706aa...6d1ef1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2791af...8182b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x292a6f...5b3f0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29c0dd...f9b6b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2babb1...6d3b66` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d4b38...e7c045` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2efee1...544abd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3053ad...fc5a54` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34e197...75da14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x350fa8...dffc4c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x35e62f...f2baa5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3816a8...d37f50` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43f986...53608f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x469a99...c0b3d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4a9cb5...c7c7d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d66f7...c3cd57` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4fdad7...846f2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x546d10...01c386` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x585a94...2fbe23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5abce3...a4f949` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f719c...b6abe8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5fc174...bc51f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x607451...670f8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67b789...a63d5d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ff060...687f73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7260fd...849576` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x74b4db...c220e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x765277...b39c61` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x790c86...222aa3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b01ac...583453` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7e174e...56b1e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x818ec0...d6dc0b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x860d84...7dc7ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x866486...0499ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x89d45c...1d6e2b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x943807...bbfb60` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x94635b...53f41d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9645da...0424b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x988349...afc6f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9ab2de...5e8595` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d4f0d...c43f14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa43f45...3b37a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xab8e08...63a3b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaeb522...818ded` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2dfd4...dbc536` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb345e5...3b4408` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8e5ae...7d224b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba1acf...c1a0eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbaee34...3784b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbe7d59...0922ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf2991...ccb0fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbfa496...cd3b12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc0253c...273894` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc0c54b...4f0ba3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc25ad0...95abbe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6f72f...c44b03` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc9fdb5...1206a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcceba9...29fe15` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd2a8f5...4dad8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3923c...e082fc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd5fcb4...6f8273` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8284e...d9e020` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdbe514...a400ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde3590...859663` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf0096...c0a4ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe3d7a0...594a21` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe3f5a9...a0ad7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe42bcd...e06f90` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe56979...e2a5ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7a344...e92c94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe931cd...ad56f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebca5e...4c8d49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecb6d4...3839ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed6623...df3106` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xedcade...02d54a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee1f83...50024d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3674f...e457f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf461bf...8c6aed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf776b6...3b3bc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb81be...245437` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfddcbb...865a67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xff1489...6ddd17` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04eb48...bdbc1c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x051911...219476` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x05300c...4d6df6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x07dfe5...25a922` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0b94d3...de5864` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cb6ea...80790c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e0e2c...556a57` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e1ec3...18ad6e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0efbfe...45742e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0fb541...27912e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x11cb89...406797` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x160bb4...c9b38f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x16c553...a1ecc0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18ce97...5d8b83` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x195759...1298a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1a6708...8f0849` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1af353...2d232c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1c4b41...62c452` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x24d89c...bfd852` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x250a0a...a109b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2518a3...95610d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2bcccb...7ca327` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2c78f1...3aa07e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2f1ba2...178f89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x33fa3d...eb35c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3a0fa8...cef572` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3bcda0...54f1c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41d5a0...c601af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x44771c...5cd65f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4792c1...13d84e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x47d99d...044f0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x491a25...0dad5c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x49b4a0...de6759` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4acc99...ae7f2c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x54fe8e...c86fb0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x563111...fc537b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x587b32...1f41c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b4dfd...fef862` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5bbfa5...13fe20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5cfca5...4c6b9c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5e1e12...a424ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x614d7f...2d2eda` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x623877...c2f037` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x639a64...c62c5c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x64c655...2af8c4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65e66a...84d97a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65f17e...5d0ac7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x66a809...ff0a11` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6b516b...5adbc9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6c6f89...ee6459` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e3bf2...aee3e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x71fe4e...1dd265` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x735abe...e97b0f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x76a3d9...ebf528` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x778204...6b8b2b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x77b995...6403e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7aca03...0a9e53` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7d9d90...e87740` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7e9985...e9e7ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8165aa...aec225` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x844878...9ad6e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x859ae8...02b834` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x867c10...8a3067` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x884d2e...9d0861` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x89c90e...69d4fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8e7982...9c20fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91aa62...2e8bc8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x931b5d...5989ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x936679...c1354d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x959c61...5bb378` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9732d3...8ad7c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x97b99b...6e633c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x997fba...2bb073` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa1246c...5f83fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa2008a...a840d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa47a05...cf0ca9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa49fac...a38f53` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4e65d...7c55fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa60ef5...28b9d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa66876...dad569` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa71a7c...2959fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaeee31...aaf61c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb06b46...16bce3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb12c13...091358` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb44a9b...9c663c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb5a917...27f800` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6f012...fb3c4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbaf1a2...8cb510` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbb09ac...9bfec4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbb83b6...72d204` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbbc4a8...2cf2d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc05fb...ac21e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc7fa5...3d7920` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbf7023...d0aa78` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc1be9a...4602c4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc35660...2350bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc63085...9158e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc7d35c...395be5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc880ac...dbe04c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc931f6...d4ab50` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcb2804...7088bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcb9d0b...c493e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd12cf5...1e3075` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd19dac...9c9c04` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd4f3a6...9912ef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd7c295...df8990` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdad1d7...881ac3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdc3b37...8a1e1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdcd29f...fd5ff5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe59bb0...04d0d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe68019...fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe8a191...529707` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef2dbd...4f0195` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf47b8c...d61dc6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf940bd...73f71c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf975aa...68ecbd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfa85b0...572950` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfa9343...f8a40f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfbdd19...5d01b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfdebd1...b8bb26` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x233332...accb9c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x471ee7...f6fceb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x617161...a3b3aa` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb9565f...4f265a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc7a161...cd8d8c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [11-14-2023_Abracadabra_GMXV2.pdf](https://github.com/GuardianAudits/Audits/blob/main/AbracadabraMoney/11-14-2023_Abracadabra_GMXV2.pdf) | Guardian | Audit | 2023-11 | stale | Direct | contract_name | 2 | n/a |
| [2024-02-06_Abracadabra_LockingMultiRewards.pdf](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/2024-02-06_Abracadabra_LockingMultiRewards.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [2024-03-21_MIMSwap.pdf](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/2024-03-21_MIMSwap.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 5 | n/a |
| [2024-12-16_Abracadabra_BoundSpell_Report.pdf](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/2024-12-16_Abracadabra_BoundSpell_Report.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | 1 | n/a |
| [MagicGlpReview.md](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/MagicGlpReview.md) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4e1536...717870`](./contracts/ethereum-1/0x4e15361fd6b4bb609fa63c81a2be19d873717870/) | FantomToken | token | $66,475,926.81 | Verified native implementation with $66,475,926.81 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fe656...a7587e`](./contracts/ethereum-1/0x3fe65692bfcd0e6cf84cb1e7d24108e434a7587e/) | BaseRewardPool | core_logic | $26,353,067.28 | Verified native implementation with $26,353,067.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x903c99...3b61fb`](./contracts/ethereum-1/0x903c9974aaa431a765e60bc07af45f0a1b3b61fb/) | DepositToken | token | $5,050,417.06 | Verified native implementation with $5,050,417.06 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38ea45...0bd783`](./contracts/ethereum-1/0x38ea452219524bb87e18de1c24d3bb59510bd783/) | Pool | core_logic | $1,460,001.24 | Verified native implementation with $1,460,001.24 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | BorrowerOperations | core_logic | $4,002.72 | Verified native implementation with $4,002.72 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1df188...dd9e51`](./contracts/arbitrum-42161/0x1df188958a8674b5177f77667b8d173c3cdd9e51/) | mSpellStaking | token | $2,409.67 | Verified native implementation with $2,409.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ActivePool | core_logic | $0.02 | Verified native implementation with $0.02 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | CollSurplusPool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1070f7...fe17e8`](./contracts/arbitrum-42161/0x1070f775e8eb466154bba8fa0076c4adc7fe17e8/) | BatchSender | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5bce5...643966`](./contracts/ethereum-1/0xf5bce5077908a1b7370b9ae04adc565ebd643966/) | BentoBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x74c764...46894a`](./contracts/arbitrum-42161/0x74c764d41b77dbbb4fe771dab1939b00b146894a/) | BentoBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2c9f65...29b131`](./contracts/arbitrum-42161/0x2c9f65bd1a501cb406584f5532ce57c28829b131/) | CauldronFeeWithdrawer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6cbafe...7c8c8f`](./contracts/ethereum-1/0x6cbafee1fab76ca5b5e144c43b3b50d42b7c8c8f/) | CauldronLowRiskV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ff906...38b91f`](./contracts/ethereum-1/0x6ff9061bb8f97d948942cef376d98b51fa38b91f/) | CauldronMediumRiskV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x390db1...d18a41`](./contracts/ethereum-1/0x390db10e65b5ab920c19149c919d970ad9d18a41/) | CauldronV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35a0dd...a30321`](./contracts/ethereum-1/0x35a0dd182e4bca59d5931eae13d0a2332fa30321/) | CauldronV2CheckpointV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x003d5a...9eed0f`](./contracts/ethereum-1/0x003d5a75d284824af736df51933be522de9eed0f/) | CauldronV2Flat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x68f498...ff2362`](./contracts/optimism-10/0x68f498c230015254aff0e1eb6f85da558dff2362/) | CauldronV3_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x247d7e...1ad85f`](./contracts/arbitrum-42161/0x247d7e28aa79dffe09b287d191393242411ad85f/) | CauldronV4WithRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf36a10...deb23b`](./contracts/ethereum-1/0xf36a106153038c436c470674da0ff1f0dadeb23b/) | CheckpointCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f29cb...cf2516`](./contracts/ethereum-1/0x3f29cb4111cbda8081642da1f75b3c12decf2516/) | ClaimZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x801459...dc86ae`](./contracts/ethereum-1/0x8014595f2ab54cd7c604b00e9fb932176fdc86ae/) | CrvDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x58538e...9c0133`](./contracts/arbitrum-42161/0x58538e6a46e07434d7e7375bc268d3cb839c0133/) | ENAOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd43024...1410e9`](./contracts/ethereum-1/0xd430246142084ec68f7ab090cbd9252a1d1410e9/) | FeeBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4277f8...1ac258`](./contracts/arbitrum-42161/0x4277f8f2c384827b5273592ff7cebd9f2c1ac258/) | GLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3477df...3c7e75`](./contracts/arbitrum-42161/0x3477df28ce70cecf61fffa7a95be4bec3b3c7e75/) | GmxGlpRewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0155b6...c83203`](./contracts/arbitrum-42161/0x0155b6fe74f90a3840ebf750ea4237d542c83203/) | GmxV2CauldronOrderAgent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02a97f...59414a`](./contracts/arbitrum-42161/0x02a97f80afc2d507bba371f11fe236994159414a/) | GmxV2CauldronRouterOrder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6ac116...e0746d`](./contracts/arbitrum-42161/0x6ac1163b6f60ba8d6dc1a7f4ccd122418ce0746d/) | GMXV2Experiment_OrderAgent | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3b0eca...08eee5`](./contracts/arbitrum-42161/0x3b0ecac5653107a985be93ab25d8dbb8a608eee5/) | GMXV2Experiment_RouterOrder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d6bca...86e1e7`](./contracts/ethereum-1/0x6d6bcac2266468a44da9fa482ca54aaed586e1e7/) | Harvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfe1a5...a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | InchSpellSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1972b5...bc14f7`](./contracts/ethereum-1/0x1972b5d65a690de0bc36278ac93d47fd98bc14f7/) | InterestRateCalculatorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x13e17f...321b20`](./contracts/arbitrum-42161/0x13e17fd348f242ff71b9e022ce3714b139321b20/) | LockingMultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf35b31...97feb6`](./contracts/ethereum-1/0xf35b31b941d94b249eaded041db1b05b7097feb6/) | MagicApe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x41b8db...300026`](./contracts/arbitrum-42161/0x41b8dbde2d4127111fbedf31783781ae69300026/) | MagicGlpRewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | MagicInternetMoneyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3b9e7f...f7f764`](./contracts/arbitrum-42161/0x3b9e7f15876c45956ba5f337cb47849375f7f764/) | MSpellStakingHub | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3886a6...f5f755`](./contracts/ethereum-1/0x3886a691e88f1a51918b915aa1a0dfbc9af5f755/) | MSpellStakingSpoke | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15838e...6d7f85`](./contracts/arbitrum-42161/0x15838e7a6322a6f37d2c27628a82b9115e6d7f85/) | MultiRewardsClaimingHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6d2070...8988cd`](./contracts/arbitrum-42161/0x6d2070b13929df15b13d96cfc509c574168988cd/) | MultiRewardsStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09f77e...8a2acb`](./contracts/arbitrum-42161/0x09f77e8a13de9a35a7231028187e9fd5db8a2acb/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe66db0...1cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | PoolBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7b1ffd...d43a8b`](./contracts/arbitrum-42161/0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b/) | PriceFeedTimelock | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x18f7cc...d32d31`](./contracts/arbitrum-42161/0x18f7cca3d98ad96cf26dbda1db3fd71e30d32d31/) | PrivateMultiRewardsStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x406b89...374352`](./contracts/ethereum-1/0x406b89138782851d3a8c04c743b010ceb0374352/) | PrivilegedCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x289424...b134ed`](./contracts/ethereum-1/0x289424add4a1a503870eb475fd8bf1d586b134ed/) | PrivilegedCheckpointCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1aa92d...a0d3e0`](./contracts/arbitrum-42161/0x1aa92da659e914982975f8f109a05be904a0d3e0/) | RevertingToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x79b6ee...5c6c2a`](./contracts/arbitrum-42161/0x79b6ee65fc1466b5fd95e20650df740c085c6c2a/) | ShortsTrackerTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xa3372c...b3b20d`](./contracts/optimism-10/0xa3372cd2178c52fdcb1f6e4c4e93014b4db3b20d/) | SolidlyGaugeVolatileLPStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6eb170...297c04`](./contracts/optimism-10/0x6eb1709e0b562097bf1cc48bc6a378446c297c04/) | SolidlyLpWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x196b73...448ca1`](./contracts/arbitrum-42161/0x196b73a33f10bc839de082ccf799027190448ca1/) | SpellPowerStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab8e74...d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | StakingPools | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bc998...8074cc`](./contracts/ethereum-1/0x1bc998bf2e25ea49b212b9db35491047c28074cc/) | TestForMelen2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1092b0...acd674`](./contracts/arbitrum-42161/0x1092b0c039f51297ccc9d9c861a2f9a18facd674/) | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95ad61...64c4ce`](./contracts/ethereum-1/0x95ad61b0a150d79219dcf64e1e6cc01f0b64c4ce/) | TokenMintERC20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04dd97...bd207f`](./contracts/ethereum-1/0x04dd97255ddee29c941d85f5b5cde6ace8bd207f/) | TreasuryLend | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf37c41...64b503`](./contracts/ethereum-1/0xf37c41ef2281893b5971769370d6cdd35864b503/) | Utilities | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x489ee0...097c4a`](./contracts/arbitrum-42161/0x489ee077994b6658eafa855c308275ead8097c4a/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x199070...363004`](./contracts/arbitrum-42161/0x199070ddfd1cfb69173aa2f7e20906f26b363004/) | Vester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1062eb...495b72`](./contracts/ethereum-1/0x1062eb452f8c7a94276437ec1f4aaca9b1495b72/) | WhitelistedCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x333e28...a3b5e8`](./contracts/ethereum-1/0x333e28e557dc026518e25d1d426c4407a0a3b5e8/) | WhitelistedCheckpointCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd28777...c91ea9`](./contracts/ethereum-1/0xd2877702675e6ceb975b4a1dff9fb7baf4c91ea9/) | WrappedLuna | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56aa29...c0af72`](./contracts/ethereum-1/0x56aa298a19c93c6801fdde870fa63ef75cc0af72/) | WrappedmBABA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59a921...653442`](./contracts/ethereum-1/0x59a921db27dd6d4d974745b7ffc5c33932653442/) | WrappedmGOOGL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d3504...91f373`](./contracts/ethereum-1/0x1d350417d9787e000cc1b95d70e9536dcd91f373/) | WrappedmIAU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41bbed...852bd7`](./contracts/ethereum-1/0x41bbedd7286daab5910a1f15d12cbda839852bd7/) | WrappedmMSFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8d674...0f9dcd`](./contracts/ethereum-1/0xc8d674114bac90148d11d3c1d33c61835a0f9dcd/) | WrappedmNFLX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13b02c...f57d15`](./contracts/ethereum-1/0x13b02c8de71680e71f0820c996e4be43c2f57d15/) | WrappedmQQQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21ca39...66fd63`](./contracts/ethereum-1/0x21ca39943e91d704678f5d00b6616650f066fd63/) | WrappedmTSLA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xedb041...78cca9`](./contracts/ethereum-1/0xedb0414627e6f1e3f082de65cd4f9c693d78cca9/) | WrappedmTWTR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31c631...356991`](./contracts/ethereum-1/0x31c63146a635eb7465e5853020b39713ac356991/) | WrappedmUSO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf72fcd...33fc86`](./contracts/ethereum-1/0xf72fcd9dcf0190923fadd44811e240ef4533fc86/) | WrappedmVIXY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 106 |
| upstream | 30 |
| standard_library | 10 |
| needs_review | 941 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=10

Zero-match audit list:

- [9649] 2024-02-06_Abracadabra_LockingMultiRewards.pdf

Fork inheritance lineage and inherited audits are included when available.
