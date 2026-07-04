# Agentic Audit Brief: Mellow Protocol

## Project Overview

- Project: Mellow Protocol (`mellow-protocol`)
- Website: [https://mellow.finance](https://mellow.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:22.907Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: base, bsc, ethereum, fraxtal, manta, mantle, optimism, polygon
- Contract surface: 424 unique implementations (428 raw deployments)
- DeFi Llama TVL: $200,876,073.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 415 project-authored contract(s) across 8 chain(s); 7 ERC4626 vaults, 39 ERC20 tokens, 3 ERC721 NFTs, 14 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 84 common project-authored base contract(s) (contextupgradeable, erc165upgradeable, reentrancyguardupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 428; live-surface contracts included: 428 (426 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 106/422 (25.1%)
- Deployed-live implementations: 422 of 424 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 106/424
- Verified + Unaudited implementations: 318
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 424
- Raw deployments: 428
- Audits discovered: 21 (21 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 21
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 8 fresh, 8 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 106 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 21.1% (ChainSecurity, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 62 | 14.6% | 2025-02 |
| Nethermind | Tier 2 | 36 | 8.5% | 2026-03 |
| Sherlock | Tier 1 | 34 | 8.0% | 2025-07 |
| StateMind | Tier 2 | 21 | 5.0% | 2025-01 |
| Pessimistic | Tier 2 | 12 | 2.8% | 2022-12 |
| BlockSec | Tier 2 | 9 | 2.1% | 2022-08 |
| Decurity | Tier 2 | 7 | 1.7% | 2025-03 |
| N/A | Tier 2 | 2 | 0.5% | 2025-11 |
| yAudit | Tier 2 | 2 | 0.5% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (106)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveVault | unknown | polygon | n/a | [`0x3af5e4...8d23ae`](./contracts/polygon-137/0x3af5e4e2e9fae6d994aeeb98fa795dcfc88d23ae/) | ✅ Audited |
| AaveVaultGovernance | unknown | ethereum | n/a | [`0x75e858...181bb0`](./contracts/ethereum-1/0x75e858cf4edaed91cabad4ab50043b18bf181bb0/) | ✅ Audited |
| AllowAllValidator | unknown | polygon | n/a | [`0x02a563...511bc9`](./contracts/polygon-137/0x02a563a480fa4c1b8852866b66f71e62b7511bc9/) | ✅ Audited |
| AuraVault | unknown | ethereum | n/a | [`0x548f00...bc9f0b`](./contracts/ethereum-1/0x548f0034e8646d72c8ff7b46f604788929bc9f0b/) | ✅ Audited |
| AuraVaultGovernance | unknown | ethereum | n/a | [`0x2b81d6...8dba01`](./contracts/ethereum-1/0x2b81d60dc40f6ca230be5abf5641d4c2e38dba01/) | ✅ Audited |
| BasicRedeemHook | unknown | mantle | n/a | [`0x000000...dc5912`](./contracts/mantle-5000/0x00000000176dd23550c3845746b2036e90dc5912/) | ✅ Audited |
| BasicShareManager | unknown | mantle | n/a | [`0x000000...c8725d`](./contracts/mantle-5000/0x00000000e5f0cdda56447b2a29e2847a52c8725d/) | ✅ Audited |
| BitmaskVerifier | unknown | mantle | n/a | [`0x000000...6de339`](./contracts/mantle-5000/0x0000000009e9368ad21fc19dce1cfcf9af6de339/) | ✅ Audited |
| BurnableTokenizedShareManager | unknown | ethereum | n/a | [`0x000000...33d7b6`](./contracts/ethereum-1/0x000000000c79d2b5cd58ae545afc83030233d7b6/) | ✅ Audited |
| ChainlinkOracle | unknown | polygon | n/a | [`0x45ce8c...411130`](./contracts/polygon-137/0x45ce8c3ddd839f09ab15641176f6b26cbc411130/) | ✅ Audited |
| Claimer | unknown | ethereum | n/a | [`0x25024a...fb5802`](./contracts/ethereum-1/0x25024a3017b8da7161d8c5dccf768f8678fb5802/) | ✅ Audited |
| CollectorV2 | unknown | ethereum | n/a | [`0x331348...8a2f18`](./contracts/ethereum-1/0x33134822bb77a4f4d51f01b34debb2a6068a2f18/) | ✅ Audited |
| CollectorV4 | unknown | ethereum | n/a | [`0x3db672...905c10`](./contracts/ethereum-1/0x3db672b06be25c0deef550b82812744938905c10/) | ✅ Audited |
| Consensus | unknown | mantle | n/a | [`0x000000...dfd6aa`](./contracts/mantle-5000/0x000000007e6b679b9196a1609e5bc2405edfd6aa/) | ✅ Audited |
| ConstantAggregatorV3 | unknown | ethereum | n/a | [`0x3c1418...de3d09`](./contracts/ethereum-1/0x3c1418499aa69a08dfbced4243bba7eb90de3d09/) | ✅ Audited |
| ContractRegistry | unknown | polygon | n/a | [`0x07648b...d274c7`](./contracts/polygon-137/0x07648b9667d7be0929e53c7b9a624e0ae0d274c7/) | ✅ Audited |
| CoreVaultsCollector | unknown | ethereum | n/a | [`0x551233...f6bec6`](./contracts/ethereum-1/0x551233202dcc8761123c0489c3d59ef602f6bec6/) | ✅ Audited |
| CowswapValidator | unknown | ethereum | n/a | [`0xd2f34d...f45903`](./contracts/ethereum-1/0xd2f34dda5be5f88fd4efd16d45a92e80a7f45903/) | ✅ Audited |
| CurveValidator | unknown | ethereum | n/a | [`0xbbfa3f...66eff4`](./contracts/ethereum-1/0xbbfa3f43bed0a379d2ef7d1f5d16dd3a9366eff4/) | ✅ Audited |
| DataCollector | unknown | ethereum | n/a | [`0x9135be...796216`](./contracts/ethereum-1/0x9135bee71ddc97f39b832e39df9b26d539796216/) | ✅ Audited |
| DefaultBondModule | unknown | ethereum | n/a | [`0x204043...1a3096`](./contracts/ethereum-1/0x204043f4bda61f719ad232b4196e1bc4131a3096/) | ✅ Audited |
| DefaultBondStrategy | unknown | ethereum | n/a | [`0x378f3a...b2cb62`](./contracts/ethereum-1/0x378f3ad5f48524bb2cd9a0f88b6aa525bab2cb62/) | ✅ Audited |
| DefaultBondTvlModule | unknown | ethereum | n/a | [`0x48f758...b3c03b`](./contracts/ethereum-1/0x48f758bd51555765ebed4fd01c85554bd0b3c03b/) | ✅ Audited |
| DefaultProxyImplementation | unknown | ethereum | n/a | [`0x538459...694828`](./contracts/ethereum-1/0x538459eea06a06018c70bf9794e1c7b298694828/) | ✅ Audited |
| DepositWrapper | unknown | ethereum | n/a | [`0x231002...b9ff64`](./contracts/ethereum-1/0x231002439e1bd5b610c3d98321ea760002b9ff64/) | ✅ Audited |
| DistributionOracle | unknown | ethereum | n/a | [`0xacaace...aa6bc3`](./contracts/ethereum-1/0xacaace9fa99cb55340034b720038bb9532aa6bc3/) | ✅ Audited |
| DummyReporter | unknown | ethereum | n/a | [`0x5475ae...e469ba`](./contracts/ethereum-1/0x5475ae8be6f0e68db9245eaacf3a85e021e469ba/) | ✅ Audited |
| DummyReporterTheoriq | unknown | ethereum | n/a | [`0x9ce9e5...c3b290`](./contracts/ethereum-1/0x9ce9e5502fe1ae53a714f4a47c36fdc28bc3b290/) | ✅ Audited |
| DVV | unknown | ethereum | n/a | [`0x5e362e...85430b`](./contracts/ethereum-1/0x5e362eb2c0706bd1d134689ec75176018385430b/) | ✅ Audited |
| EigenLayerVerifier | unknown | ethereum | n/a | [`0x000000...e89b81`](./contracts/ethereum-1/0x00000003f82051a8b2f020b79e94c3dc94e89b81/) | ✅ Audited |
| ERC20RootVault | unknown | polygon | n/a | [`0x00ac9d...15ec07`](./contracts/polygon-137/0x00ac9da14c236e1f086feccef2e468768c15ec07/) | ✅ Audited |
| ERC20RootVaultGovernance | unknown | polygon | n/a | [`0x052485...4e73f8`](./contracts/polygon-137/0x052485d2b2e9ecf2cf21ecbdf1733e023f4e73f8/) | ✅ Audited |
| ERC20TvlModule | unknown | ethereum | n/a | [`0xca60f4...7bd638`](./contracts/ethereum-1/0xca60f449867c9101ec80f8c611eab39afe7bd638/) | ✅ Audited |
| ERC20Validator | unknown | polygon | n/a | [`0x02b771...f55d63`](./contracts/polygon-137/0x02b771d9df4f3d7b558d13623d93e1f917f55d63/) | ✅ Audited |
| ERC20Vault | unknown | polygon | n/a | [`0x02a7f0...e68447`](./contracts/polygon-137/0x02a7f089c9f104d134f215197c61552120e68447/) | ✅ Audited |
| ERC20VaultGovernance | unknown | polygon | n/a | [`0x05164e...e930a4`](./contracts/polygon-137/0x05164ec2c3074a4e8ea20513fbe98790ffe930a4/) | ✅ Audited |
| ERC20Verifier | unknown | mantle | n/a | [`0x000000...224a08`](./contracts/mantle-5000/0x00000000acd80376e999af8c424e5e33bd224a08/) | ✅ Audited |
| ExporterDataCollector | unknown | ethereum | n/a | [`0x3ad64e...197917`](./contracts/ethereum-1/0x3ad64e6a4f6ef8c32a5abdeea8b027d6ce197917/) | ✅ Audited |
| Factory | unknown | mantle | n/a | [`0x000000...c4467f`](./contracts/mantle-5000/0x0000000072bafceaff1ad0237ea58f06cfc4467f/) | ✅ Audited |
| FeeManager | unknown | mantle | n/a | [`0x000000...238648`](./contracts/mantle-5000/0x00000000c18039e1f415fe07c33a316232238648/) | ✅ Audited |
| GearboxDepositHelper | unknown | ethereum | n/a | [`0x9d711c...e4712a`](./contracts/ethereum-1/0x9d711c0259b2a8fea90439559eca50fccee4712a/) | ✅ Audited |
| GearboxHelper | unknown | ethereum | n/a | [`0x11ab30...a32c41`](./contracts/ethereum-1/0x11ab305016d90611cf35e1a976f9cd56d6a32c41/) | ✅ Audited |
| GearboxOperator | unknown | ethereum | n/a | [`0x07cb25...fbe26c`](./contracts/ethereum-1/0x07cb254b6a848440be3e18a63fb13d5ca5fbe26c/) | ✅ Audited |
| GearboxRootVault | unknown | ethereum | n/a | [`0x8f2260...bfd16e`](./contracts/ethereum-1/0x8f22602d6db68b576784a560b42eff9b32bfd16e/) | ✅ Audited |
| GearboxVault | unknown | ethereum | n/a | [`0x1802cd...d31ed1`](./contracts/ethereum-1/0x1802cd8a33156709dddf0730b02b868223d31ed1/) | ✅ Audited |
| GearboxVaultGovernance | unknown | ethereum | n/a | [`0x131101...9ca7e9`](./contracts/ethereum-1/0x131101d3175156efb21d9af753b18c24079ca7e9/) | ✅ Audited |
| GearValidator | unknown | ethereum | n/a | [`0xf7d0b2...aa74a5`](./contracts/ethereum-1/0xf7d0b2cb3021174d8f9faef3fa3831af3daa74a5/) | ✅ Audited |
| HStrategy | unknown | polygon | n/a | [`0x158b75...7030a8`](./contracts/polygon-137/0x158b75d163ae46de8c36fb9068df8908417030a8/) | ✅ Audited |
| HStrategyHelper | unknown | ethereum | n/a | [`0xadf65e...b4e88e`](./contracts/ethereum-1/0xadf65e524ecbc6dc3077047a977349f65ab4e88e/) | ✅ Audited |
| Initializer | unknown | ethereum | n/a | [`0x39c62c...f2060c`](./contracts/ethereum-1/0x39c62c6308bed7b0832cafc2bea0c0edc7f2060c/) | ✅ Audited |
| KyberVault | unknown | ethereum | n/a | [`0x90e2bc...35c2dc`](./contracts/ethereum-1/0x90e2bc3ddbcd0432c8c98c552d33fdddea35c2dc/) | ✅ Audited |
| KyberVaultGovernance | unknown | ethereum | n/a | [`0x681e36...e24c08`](./contracts/ethereum-1/0x681e368136046565caa1fd9b18172868fbe24c08/) | ✅ Audited |
| LidoDepositHook | unknown | ethereum | n/a | [`0x000000...b7317c`](./contracts/ethereum-1/0x000000065d1a7bd71f52886910aabe6555b7317c/) | ✅ Audited |
| LStrategy | unknown | ethereum | n/a | [`0x0c1fa7...6c055d`](./contracts/ethereum-1/0x0c1fa7b32b67c66583254d08e839adfce06c055d/) | ✅ Audited |
| ManagedRatiosOracle | unknown | ethereum | n/a | [`0x1437dc...5681e2`](./contracts/ethereum-1/0x1437dcca4e1442f20285fb7c11805e7a965681e2/) | ✅ Audited |
| ManagedValidator | unknown | ethereum | n/a | [`0x5fd0a7...86c872`](./contracts/ethereum-1/0x5fd0a7184f91510deecd7722d297439da386c872/) | ✅ Audited |
| MellowOFT | unknown | ethereum | n/a | [`0x05e979...957c84`](./contracts/ethereum-1/0x05e979fdceb5a82f963468a3f1e4c7ccf6957c84/) | ✅ Audited |
| MellowOFTAdapter | unknown | fraxtal | n/a | [`0x24e6d6...a2bbba`](./contracts/fraxtal-252/0x24e6d68a553ba3146e10cdb06e9db996cea2bbba/) | ✅ Audited |
| MellowOracle | unknown | polygon | n/a | [`0x0667d0...d73447`](./contracts/polygon-137/0x0667d042cb57091a30e2ea38b194f09036d73447/) | ✅ Audited |
| MellowVault | unknown | polygon | n/a | [`0x0104bb...f82911`](./contracts/polygon-137/0x0104bbf0d2eb4b6ffa6deffceafce1096af82911/) | ✅ Audited |
| MellowVaultCompat | unknown | ethereum | n/a | 5 deployments: ethereum [`0x3a828c...45b4c7`](./contracts/ethereum-1/0x3a828c183b3f382d030136c824844ea30145b4c7/); ethereum `0x64047d...3f877f`; ethereum `0x7f43fd...9ce444`; ethereum `0x82f510...9e0b26`; ethereum `0xc65433...c47bd8` | ✅ Audited |
| MellowVaultGovernance | unknown | polygon | n/a | [`0x02c4da...4d926f`](./contracts/polygon-137/0x02c4daa3810f5bd94e84c20ee3d78d3de64d926f/) | ✅ Audited |
| Migrator | unknown | ethereum | n/a | [`0x643ed3...82beab`](./contracts/ethereum-1/0x643ed3c06e19a96eabcbc32c2f665db16282beab/) | ✅ Audited |
| MStrategy | unknown | polygon | n/a | [`0x0f2641...ca41f8`](./contracts/polygon-137/0x0f2641e0c03b5dda5fbb979b4869147220ca41f8/) | ✅ Audited |
| Oracle | unknown | mantle | n/a | [`0x000000...83f062`](./contracts/mantle-5000/0x000000009ade4dae1f868775a3f087945983f062/) | ✅ Audited |
| OracleFactory | unknown | ethereum | n/a | [`0x686f66...5e351f`](./contracts/ethereum-1/0x686f660274b448f9905e329adf336b5dfd5e351f/) | ✅ Audited |
| OracleHelper | unknown | ethereum | n/a | [`0x000000...b55e35`](./contracts/ethereum-1/0x000000005f543c38d5ea6d0bf10a50974eb55e35/) | ✅ Audited |
| OracleSubmitter | unknown | ethereum | n/a | [`0x000000...81907a`](./contracts/ethereum-1/0x00000000df0088bd598df1e4ae57943dc481907a/) | ✅ Audited |
| PancakeSwapMerklVault | unknown | ethereum | n/a | [`0x2dd38e...7b7517`](./contracts/ethereum-1/0x2dd38ec5e5a55a9eb5d932f0f0af5416277b7517/) | ✅ Audited |
| PancakeSwapMerklVaultGovernance | unknown | ethereum | n/a | [`0x459d21...95fb33`](./contracts/ethereum-1/0x459d212ed6821d2a90d64a44673f239e5995fb33/) | ✅ Audited |
| PancakeSwapVault | unknown | ethereum | n/a | [`0x5ef878...90f4e0`](./contracts/ethereum-1/0x5ef878787af783f8aca01d394b2288714590f4e0/) | ✅ Audited |
| PancakeSwapVaultGovernance | unknown | ethereum | n/a | [`0x0810b6...9b8cb6`](./contracts/ethereum-1/0x0810b657477d1577d7f7070481a4ef67569b8cb6/) | ✅ Audited |
| ProtocolGovernance | unknown | polygon | n/a | [`0x00d915...428d05`](./contracts/polygon-137/0x00d91571c99a218bbcb5daad4c1d9dd6ed428d05/) | ✅ Audited |
| RatiosStrategy | unknown | ethereum | n/a | [`0x3aa61e...f54ad6`](./contracts/ethereum-1/0x3aa61e6196fb3eb1170e578ad924898624f54ad6/) | ✅ Audited |
| RebalanceWrapper | unknown | ethereum | n/a | [`0xfe9d76...debdf3`](./contracts/ethereum-1/0xfe9d760c7368548a75804578b9893f018bdebdf3/) | ✅ Audited |
| RedeemQueue | unknown | ethereum | n/a | [`0x000000...1903c1`](./contracts/ethereum-1/0x000000000c139266ba06170ed1deaca6d11903c1/) | ✅ Audited |
| RedirectingDepositHook | unknown | mantle | n/a | [`0x000000...ef1180`](./contracts/mantle-5000/0x0000000024abbd08686abb2987831dea88ef1180/) | ✅ Audited |
| rstETHPlusTestCollector | unknown | ethereum | n/a | [`0x4e8194...f22a0d`](./contracts/ethereum-1/0x4e81941f09454f7d3bfe493bc88cdec642f22a0d/) | ✅ Audited |
| SignatureDepositQueue | unknown | mantle | n/a | [`0x000000...024727`](./contracts/mantle-5000/0x000000000af33501e5bdaf9b481ad2712a024727/) | ✅ Audited |
| SignatureRedeemQueue | unknown | mantle | n/a | [`0x000000...6f4138`](./contracts/mantle-5000/0x000000008d14ef3658805765107d9f12776f4138/) | ✅ Audited |
| SourceCore | unknown | fraxtal | n/a | [`0x013d1e...269afb`](./contracts/fraxtal-252/0x013d1e716eeda3f86756ff22438308ed1d269afb/) | ✅ Audited |
| StakingModule | unknown | ethereum | n/a | [`0x048408...07705f`](./contracts/ethereum-1/0x048408944dc91720fda3a3059540227bd707705f/) | ✅ Audited |
| Subvault | unknown | mantle | n/a | [`0x000000...ad5920`](./contracts/mantle-5000/0x00000000ca30010b8417f791250ae221fdad5920/) | ✅ Audited |
| SwapModule | unknown | base | n/a | [`0x000000...b583d6`](./contracts/base-8453/0x0000000022b540fe06d7a9c32d81163971b583d6/) | ✅ Audited |
| SymbioticVerifier | unknown | ethereum | n/a | [`0x000000...da394b`](./contracts/ethereum-1/0x00000000cbc6f5d4348496ffa22cf014b9da394b/) | ✅ Audited |
| SyncDepositQueue | unknown | ethereum | n/a | [`0x000000...7a3bde`](./contracts/ethereum-1/0x000000000b98f77a017b5d3468400c5c597a3bde/) | ✅ Audited |
| TargetHelper | unknown | ethereum | n/a | [`0x4bc3c5...75c961`](./contracts/ethereum-1/0x4bc3c56a526ec108ea6ffa28f18f5161b675c961/) | ✅ Audited |
| TokenizedShareManager | unknown | mantle | n/a | [`0x000000...91d1df`](./contracts/mantle-5000/0x00000000861e8b90b81f35c18ca14858cc91d1df/) | ✅ Audited |
| UniV2Oracle | unknown | polygon | n/a | [`0x02a74d...c5645f`](./contracts/polygon-137/0x02a74dcd6ba8eade6308df6bd71a3095b1c5645f/) | ✅ Audited |
| UniV2Validator | unknown | polygon | n/a | [`0x006d45...097708`](./contracts/polygon-137/0x006d458392c459c16adae4cb53ac8b9199097708/) | ✅ Audited |
| UniV3Helper | unknown | ethereum | n/a | [`0x021cf3...af34f0`](./contracts/ethereum-1/0x021cf3e1bfc6f277bf6683157c8951b385af34f0/) | ✅ Audited |
| UniV3Oracle | unknown | ethereum | n/a | [`0x1a4071...74cfcf`](./contracts/ethereum-1/0x1a407175437514694e561d7208a343d78374cfcf/) | ✅ Audited |
| UniV3Validator | unknown | polygon | n/a | [`0x0347ed...717d73`](./contracts/polygon-137/0x0347ed7f979bf1b48f57d32b8f056ce881717d73/) | ✅ Audited |
| UniV3Vault | unknown | polygon | n/a | [`0x047876...f85a78`](./contracts/polygon-137/0x047876989e579a5a2e209dc1a853c8c08af85a78/) | ✅ Audited |
| UniV3VaultConfigurable | unknown | ethereum | n/a | [`0x2c172b...3970e2`](./contracts/ethereum-1/0x2c172b6fdec5ca1e2fd30ad35b785ffac03970e2/) | ✅ Audited |
| UniV3VaultConfigurableGovernance | unknown | ethereum | n/a | [`0x17af7e...903a89`](./contracts/ethereum-1/0x17af7e1a3737c0197cb4761a1807db01c8903a89/) | ✅ Audited |
| Vault | unknown | mantle | n/a | [`0x000000...b29801`](./contracts/mantle-5000/0x0000000070f44289ec5ea3e5972f058f75b29801/) | ✅ Audited |
| VaultRegistry | unknown | polygon | n/a | [`0x0a477a...778cf6`](./contracts/polygon-137/0x0a477a21b18cf4afa6a939a6fe762db8b7778cf6/) | ✅ Audited |
| Verifier | unknown | mantle | n/a | [`0x000000...2ede3c`](./contracts/mantle-5000/0x000000007e86a96e279662108cc19ba4c32ede3c/) | ✅ Audited |
| WhiteList | unknown | ethereum | n/a | [`0x4a9f66...86577d`](./contracts/ethereum-1/0x4a9f66d5566551e968cbc67558c765760286577d/) | ✅ Audited |
| WhitelistedEthWrapper | unknown | ethereum | n/a | [`0xfd4a49...56504e`](./contracts/ethereum-1/0xfd4a4922d1afe70000ce0ec6806454e78256504e/) | ✅ Audited |
| WithdrawalHelper | unknown | ethereum | n/a | [`0x937092...3c7286`](./contracts/ethereum-1/0x9370924c999dceef8a69b74d567edca2fc3c7286/) | ✅ Audited |
| WithdrawalQueue | unknown | fraxtal | n/a | [`0x88d282...58bb2b`](./contracts/fraxtal-252/0x88d282791d7d738cdf998a21310881e8b458bb2b/) | ✅ Audited |
| WStethRatiosAggregatorV3 | unknown | ethereum | n/a | [`0x773ae8...dc709c`](./contracts/ethereum-1/0x773ae8ca45d5701131ca84c58821a39ddadc709c/) | ✅ Audited |
| YearnVault | unknown | ethereum | n/a | [`0x9c95ec...c646ce`](./contracts/ethereum-1/0x9c95ec6f009987f6ac79ecdd47f166769fc646ce/) | ✅ Audited |
| YearnVaultGovernance | unknown | polygon | n/a | [`0x2bc5f6...43c127`](./contracts/polygon-137/0x2bc5f6c850938d83526110a14d9fc97a6843c127/) | ✅ Audited |

### ⚠️ Verified + Unaudited (318)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3TreasuryConnector | unknown | ethereum | n/a | [`0x91eda2...03c8ca`](./contracts/ethereum-1/0x91eda28735ce089a8b5133476263c3fb8303c8ca/) | ⚠️ Unaudited |
| AcreMultiAssetVault | unknown | ethereum | n/a | [`0x4a6e0d...afd18d`](./contracts/ethereum-1/0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d/) | ⚠️ Unaudited |
| AddressesWhitelist | unknown | ethereum | n/a | [`0x2d0049...6b0f77`](./contracts/ethereum-1/0x2d00499079d7145163a213ab1443056cce6b0f77/) | ⚠️ Unaudited |
| AddressRegistry | unknown | optimism | n/a | [`0xab684a...29aeb3`](./contracts/optimism-10/0xab684ac3e0844713989dae272729a9fac029aeb3/) | ⚠️ Unaudited |
| AggregatorV3wstEth | unknown | ethereum | n/a | [`0x3eb81a...392939`](./contracts/ethereum-1/0x3eb81a6763b0576033c4c2197b04b42cbe392939/) | ⚠️ Unaudited |
| AssetPool | unknown | ethereum | n/a | [`0x21b86f...d28d5d`](./contracts/ethereum-1/0x21b86fdc93f23fd52022a283828df8e808d28d5d/) | ⚠️ Unaudited |
| Auction | unknown | ethereum | n/a | [`0xabe008...e33fe1`](./contracts/ethereum-1/0xabe0080ea5f7a58b90398b1c87093cc225e33fe1/) | ⚠️ Unaudited |
| AuctionBidder | unknown | ethereum | n/a | [`0x773a4c...37b3c4`](./contracts/ethereum-1/0x773a4cacbca8e3704f8f7842531eab83e437b3c4/) | ⚠️ Unaudited |
| AuraOracle | unknown | ethereum | n/a | [`0x6f8211...e6f8ca`](./contracts/ethereum-1/0x6f8211b50c26fc11aa955064b611e42227e6f8ca/) | ⚠️ Unaudited |
| BalancerVaultStrategy | unknown | ethereum | n/a | [`0xe55351...fe4ae3`](./contracts/ethereum-1/0xe553512f15e0d5550636384c59e3104cf8fe4ae3/) | ⚠️ Unaudited |
| Bank | unknown | ethereum | n/a | [`0x65fbae...9d9fc6`](./contracts/ethereum-1/0x65fbae61ad2c8836ffbfb502a0da41b0789d9fc6/) | ⚠️ Unaudited |
| BasePulseStrategy | unknown | ethereum | n/a | [`0x0c896d...892f14`](./contracts/ethereum-1/0x0c896de0ed46517c8206b82ff7d7824d30892f14/) | ⚠️ Unaudited |
| BasePulseStrategyHelper | unknown | ethereum | n/a | [`0x7c59aa...ae2cb5`](./contracts/ethereum-1/0x7c59aae0ee2eeedec34d235feaf91a45ccae2cb5/) | ⚠️ Unaudited |
| BasePulseStrategyUpgradable | unknown | ethereum | n/a | [`0x94ab17...fe046f`](./contracts/ethereum-1/0x94ab171819be4a9bb349a34c8f47087d4ffe046f/) | ⚠️ Unaudited |
| BatchCall | unknown | polygon | n/a | [`0x0347db...9e5e1f`](./contracts/polygon-137/0x0347dbe55cbc7dbda46f96e018d7ba20219e5e1f/) | ⚠️ Unaudited |
| BatchedPhasedEscrow | unknown | ethereum | n/a | [`0x1b8e50...f831ca`](./contracts/ethereum-1/0x1b8e50ec9fbf844c3671bc178df8eadfcff831ca/) | ⚠️ Unaudited |
| BeaconAuthorization | unknown | ethereum | n/a | [`0x632c2d...6e83e8`](./contracts/ethereum-1/0x632c2d58ad870fbd4569da0a4e82ddf4b56e83e8/) | ⚠️ Unaudited |
| BeaconBackportRewards | unknown | ethereum | n/a | [`0x8fec9c...ffbfff`](./contracts/ethereum-1/0x8fec9cf78087064f1f32269f68f94ae343ffbfff/) | ⚠️ Unaudited |
| BeaconBackportRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x24c0fb...f07647`](./contracts/ethereum-1/0x24c0fbd3ff8e742080c60881f8527ca3baf07647/) | ⚠️ Unaudited |
| BeaconDkg | unknown | ethereum | n/a | [`0x024a69...2abd84`](./contracts/ethereum-1/0x024a697788918007592572f7cd020df2bc2abd84/) | ⚠️ Unaudited |
| BeaconDkgValidator | unknown | ethereum | n/a | [`0x4edc83...653f94`](./contracts/ethereum-1/0x4edc83c5c5b0c41a594371485554b95280653f94/) | ⚠️ Unaudited |
| BeaconInactivity | unknown | ethereum | n/a | [`0x67a26f...941ec0`](./contracts/ethereum-1/0x67a26f2ebdb2448605936fe9a5f496cda7941ec0/) | ⚠️ Unaudited |
| BeaconRewards | unknown | ethereum | n/a | [`0xbf5180...f5f491`](./contracts/ethereum-1/0xbf51807acb3394b8550f0554fb9098856ef5f491/) | ⚠️ Unaudited |
| BeaconRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x9b15fe...e68ff0`](./contracts/ethereum-1/0x9b15fef1bfa4aff9b51f7b3b2df4d197cde68ff0/) | ⚠️ Unaudited |
| BimaBurner | unknown | ethereum | n/a | [`0xf0de02...8c92c1`](./contracts/ethereum-1/0xf0de02a2d05a82222cbb98df3eea10cafc8c92c1/) | ⚠️ Unaudited |
| BimaCore | unknown | ethereum | n/a | [`0x227e93...2380ab`](./contracts/ethereum-1/0x227e9323d692578ca3df92b87d06625df22380ab/) | ⚠️ Unaudited |
| BimaPSM | unknown | ethereum | n/a | [`0x42ad68...523d67`](./contracts/ethereum-1/0x42ad6834a6599a0b7a7812f01f8092b580523d67/) | ⚠️ Unaudited |
| BimaToken | unknown | ethereum | n/a | [`0x49ce2e...faef15`](./contracts/ethereum-1/0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15/) | ⚠️ Unaudited |
| BimaVault | unknown | ethereum | n/a | [`0xc4bbfb...126799`](./contracts/ethereum-1/0xc4bbfb26a2285b3d5e7406f383a676e78b126799/) | ⚠️ Unaudited |
| BimaWrappedCollateralFactory | unknown | ethereum | n/a | [`0x76de9b...129dbf`](./contracts/ethereum-1/0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf/) | ⚠️ Unaudited |
| BitcoinDepositor | unknown | ethereum | n/a | [`0x04b94f...0f4d32`](./contracts/ethereum-1/0x04b94f55780682478c8d8329368aaafd320f4d32/) | ⚠️ Unaudited |
| BitcoinRedeemer | unknown | ethereum | n/a | [`0x1f2766...4839a5`](./contracts/ethereum-1/0x1f2766373e74f268d5dbde32a395eb1c924839a5/) | ⚠️ Unaudited |
| BLS | unknown | ethereum | n/a | [`0x655205...e020cd`](./contracts/ethereum-1/0x6552059b6efc6aa4ae3ea45f28ed4d92ace020cd/) | ⚠️ Unaudited |
| BondedECDSAKeep | unknown | ethereum | n/a | [`0xa9e838...22c105`](./contracts/ethereum-1/0xa9e838fcb9295fa44d89d06ed59811ae1a22c105/) | ⚠️ Unaudited |
| BondedECDSAKeepFactory | unknown | ethereum | n/a | [`0x6a7cd8...35c5d7`](./contracts/ethereum-1/0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7/) | ⚠️ Unaudited |
| BondedSortitionPoolFactory | unknown | ethereum | n/a | [`0x0c46f4...2ede4f`](./contracts/ethereum-1/0x0c46f496c410465975a427e34a976fc15a2ede4f/) | ⚠️ Unaudited |
| BorrowerOperations | unknown | ethereum | n/a | [`0x87fed3...cdfaec`](./contracts/ethereum-1/0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec/) | ⚠️ Unaudited |
| brBTC | unknown | ethereum | n/a | [`0x2ec37d...8f6646`](./contracts/ethereum-1/0x2ec37d45fcae65d9787ecf71dc85a444968f6646/) | ⚠️ Unaudited |
| Bridge | unknown | ethereum | n/a | [`0x265054...2e2ec5`](./contracts/ethereum-1/0x265054f72bad343fdee3e018269cbb899e2e2ec5/) | ⚠️ Unaudited |
| BridgeFeeManager | unknown | ethereum | n/a | [`0x0e628a...aa5913`](./contracts/ethereum-1/0x0e628a1c34c92f0aa85af998814ce4f03caa5913/) | ⚠️ Unaudited |
| BridgeGovernance | unknown | ethereum | n/a | [`0xa94dd6...0778ee`](./contracts/ethereum-1/0xa94dd662e2a247493facceab9f2459aaf90778ee/) | ⚠️ Unaudited |
| BridgeGovernanceParameters | unknown | ethereum | n/a | [`0xce4b16...0d3443`](./contracts/ethereum-1/0xce4b16b81a28d785feeb7b1d56a9b97d450d3443/) | ⚠️ Unaudited |
| BridgeLogic | unknown | ethereum | n/a | [`0xb83248...b8f957`](./contracts/ethereum-1/0xb8324885ffe77b2a69f9db4d7917ad2ad1b8f957/) | ⚠️ Unaudited |
| brVault | unknown | ethereum | n/a | [`0x1419b4...0e3386`](./contracts/ethereum-1/0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386/) | ⚠️ Unaudited |
| BurnerRouter | unknown | ethereum | n/a | [`0x00ba6e...33651d`](./contracts/ethereum-1/0x00ba6e1fc08d71784d31051257e79720e633651d/) | ⚠️ Unaudited |
| CCIPPeer | unknown | ethereum | n/a | [`0x17ea3d...908ee1`](./contracts/ethereum-1/0x17ea3dcd055a72b137e6f09cd5f2a1c187908ee1/) | ⚠️ Unaudited |
| CelerMinterReceiver | unknown | ethereum | n/a | [`0x7c3f1f...465c95`](./contracts/ethereum-1/0x7c3f1fe22959b4f6ac2bf2474b3bdf9969465c95/) | ⚠️ Unaudited |
| CLPool | unknown | base | n/a | [`0x2ae9df...784c82`](./contracts/base-8453/0x2ae9df02539887d4ebce0230168a302d34784c82/) | ⚠️ Unaudited |
| Collector | unknown | ethereum | n/a | [`0x240fbe...bfe312`](./contracts/ethereum-1/0x240fbe0790d5b25366bf88ee14ae8dde72bfe312/) | ⚠️ Unaudited |
| Compounder | unknown | base | n/a | [`0x69fed6...05e7b4`](./contracts/base-8453/0x69fed68943c0f371dce9702f7874af2a7d05e7b4/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0xca0641...febeb7`](./contracts/ethereum-1/0xca06411bd7a7296d7dbdd0050dfc846e95febeb7/) | ⚠️ Unaudited |
| Core | unknown | optimism | n/a | [`0x30ce7b...70e090`](./contracts/optimism-10/0x30ce7bb58dd3ea6fbe32645f644462479170e090/) | ⚠️ Unaudited |
| CoveragePool | unknown | ethereum | n/a | [`0x7d7b62...6d811a`](./contracts/ethereum-1/0x7d7b622c07f216d99efc3efb9cf71872f46d811a/) | ⚠️ Unaudited |
| CoveragePoolBeneficiary | unknown | ethereum | n/a | [`0x22428b...2ee39b`](./contracts/ethereum-1/0x22428b09efc87709ab49a77da6f9ce4ffa2ee39b/) | ⚠️ Unaudited |
| CreateStrategyHelper | unknown | optimism | n/a | [`0x5b1b1a...db4029`](./contracts/optimism-10/0x5b1b1aac71bdca9ed1dcb2aa357f678584db4029/) | ⚠️ Unaudited |
| DadFab | unknown | ethereum | n/a | [`0x01c110...db072d`](./contracts/ethereum-1/0x01c1103d765f62a0d909499d7b615c382cdb072d/) | ⚠️ Unaudited |
| DaiFab | unknown | ethereum | n/a | [`0xf07674...69ebbb`](./contracts/ethereum-1/0xf07674f6ac6632e253c291b694f9c2e2ed69ebbb/) | ⚠️ Unaudited |
| DebtToken | unknown | ethereum | n/a | [`0x6bede1...fdb68c`](./contracts/ethereum-1/0x6bede1c6009a78c222d9bdb7974bb67847fdb68c/) | ⚠️ Unaudited |
| DefaultCollateralFactory | unknown | ethereum | n/a | [`0x3f95a7...df16d9`](./contracts/ethereum-1/0x3f95a719260ce6ec9622bc549c9adcff9edf16d9/) | ⚠️ Unaudited |
| DefaultStakerRewards | unknown | ethereum | n/a | [`0x460e5e...6b9c09`](./contracts/ethereum-1/0x460e5ee46b55795f5a7db7ec82aecf25086b9c09/) | ⚠️ Unaudited |
| DelayRedeemRouter | unknown | ethereum | n/a | [`0x720081...eb859d`](./contracts/ethereum-1/0x720081e3ee2b1542e341afc793de20b08beb859d/) | ⚠️ Unaudited |
| Deposit | unknown | ethereum | n/a | [`0x1ac184...c04dc5`](./contracts/ethereum-1/0x1ac1841a47054e070236f1664991e52c30c04dc5/) | ⚠️ Unaudited |
| DepositFactory | unknown | ethereum | n/a | [`0x87effe...0faf8b`](./contracts/ethereum-1/0x87effef56c7ff13e2463b5d4dce81be2340faf8b/) | ⚠️ Unaudited |
| DepositFunding | unknown | ethereum | n/a | [`0x62d128...ccd125`](./contracts/ethereum-1/0x62d1286683507939c065c12f2d1e80cca8ccd125/) | ⚠️ Unaudited |
| DepositHelper | unknown | optimism | n/a | [`0x5240b3...72b09c`](./contracts/optimism-10/0x5240b32ba23d088369d75d420f675e6beb72b09c/) | ⚠️ Unaudited |
| DepositLiquidation | unknown | ethereum | n/a | [`0x1ca506...081a56`](./contracts/ethereum-1/0x1ca5060bf142c58168aedb974aabb020bc081a56/) | ⚠️ Unaudited |
| DepositRedemption | unknown | ethereum | n/a | [`0x817c0f...372323`](./contracts/ethereum-1/0x817c0f6332392ad65d7688ed22f59b227e372323/) | ⚠️ Unaudited |
| DepositStates | unknown | ethereum | n/a | [`0x8695ff...ae1c80`](./contracts/ethereum-1/0x8695ff199a1216fc7e2bf97303bf662babae1c80/) | ⚠️ Unaudited |
| DepositSweep | unknown | ethereum | n/a | [`0x392635...ac9b95`](./contracts/ethereum-1/0x392635646bc22fc13c86859d1f02b27974ac9b95/) | ⚠️ Unaudited |
| DepositUtils | unknown | ethereum | n/a | [`0x2ad83d...212517`](./contracts/ethereum-1/0x2ad83decf0555945094e5d25129c1f324f212517/) | ⚠️ Unaudited |
| DineroTreasuryConnector | unknown | ethereum | n/a | [`0x75ec06...493c70`](./contracts/ethereum-1/0x75ec066efb238cf211baa73b28db539541493c70/) | ⚠️ Unaudited |
| directBTC | unknown | ethereum | n/a | [`0x11964b...09954b`](./contracts/ethereum-1/0x11964b366f794ae56717e8efa05d31ab2a09954b/) | ⚠️ Unaudited |
| DirectBTCMinter | unknown | ethereum | n/a | [`0x704a2f...9481ee`](./contracts/ethereum-1/0x704a2f4de8628e180fffa0e89203468dcc9481ee/) | ⚠️ Unaudited |
| DirectStaking | unknown | ethereum | n/a | [`0x07a5d3...0eef57`](./contracts/ethereum-1/0x07a5d37823c5c7963042fab79ed4747ab60eef57/) | ⚠️ Unaudited |
| DLCBTC | unknown | ethereum | n/a | [`0x25be3e...76994c`](./contracts/ethereum-1/0x25be3edd820a8fce6b8e211f40c5b82ba176994c/) | ⚠️ Unaudited |
| DLCManager | unknown | ethereum | n/a | [`0x24b042...ca4a76`](./contracts/ethereum-1/0x24b0420c82f1333596ad7bf9d892f2ff70ca4a76/) | ⚠️ Unaudited |
| DonationVault | unknown | ethereum | n/a | [`0xa544b7...50e672`](./contracts/ethereum-1/0xa544b70dc6af906862f68eb8e68c27bb7150e672/) | ⚠️ Unaudited |
| DSChief | unknown | ethereum | n/a | [`0x8e2a84...057152`](./contracts/ethereum-1/0x8e2a84d6ade1e7fffee039a35ef5f19f13057152/) | ⚠️ Unaudited |
| DSChiefFab | unknown | ethereum | n/a | [`0x1e7ca0...8f1483`](./contracts/ethereum-1/0x1e7ca05e174a523709e556080e227f734a8f1483/) | ⚠️ Unaudited |
| DSToken | unknown | ethereum | n/a | [`0x068083...cc5523`](./contracts/ethereum-1/0x068083069ed92da4c5291dba52d8912abfcc5523/) | ⚠️ Unaudited |
| ECDSABackportRewards | unknown | ethereum | n/a | [`0xe9ca1a...c036fa`](./contracts/ethereum-1/0xe9ca1abe343515312eb6d13178c5a2dce3c036fa/) | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x82ab5f...c76108`](./contracts/ethereum-1/0x82ab5f02993bf312d9aca03157f26febebc76108/) | ⚠️ Unaudited |
| EcdsaDkgValidator | unknown | ethereum | n/a | [`0x0125c8...d4ef27`](./contracts/ethereum-1/0x0125c8977a02b2fa3970b1ed9af02f5bedd4ef27/) | ⚠️ Unaudited |
| EcdsaInactivity | unknown | ethereum | n/a | [`0x8263ef...46f764`](./contracts/ethereum-1/0x8263efcb8f28246697585c89fed0501cd946f764/) | ⚠️ Unaudited |
| ECDSARewards | unknown | ethereum | n/a | [`0xc5ac5a...ffca88`](./contracts/ethereum-1/0xc5ac5a8892230e0a3e1c473881a2de7353ffca88/) | ⚠️ Unaudited |
| ECDSARewardsDistributor | unknown | ethereum | n/a | [`0x5b9e48...91bbb3`](./contracts/ethereum-1/0x5b9e48f8818962699fe38f5989b130cee691bbb3/) | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | unknown | ethereum | n/a | [`0xa77ec9...952042`](./contracts/ethereum-1/0xa77ec9c89a0c889bcb05d15df42d49b706952042/) | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x037a91...5efb84`](./contracts/ethereum-1/0x037a91d627cdbdd5ae20d6912fa15ae29b5efb84/) | ⚠️ Unaudited |
| EigenLayerWstETHAdapter | unknown | ethereum | n/a | [`0xb91f89...d563d6`](./contracts/ethereum-1/0xb91f8965e57041b3f7a1a274661bb62c34d563d6/) | ⚠️ Unaudited |
| ENA | unknown | ethereum | n/a | [`0x57e114...1e6061`](./contracts/ethereum-1/0x57e114b691db790c35207b2e685d4a43181e6061/) | ⚠️ Unaudited |
| ENAOracle | unknown | ethereum | n/a | [`0x2a327e...86b683`](./contracts/ethereum-1/0x2a327e7afc4a352433a7124791e1f04a6886b683/) | ⚠️ Unaudited |
| ERC20RootVaultHelper | unknown | polygon | n/a | [`0x14034a...fe0e30`](./contracts/polygon-137/0x14034a6f284f2ede2b625d4737ea0e1db8fe0e30/) | ⚠️ Unaudited |
| ExternalRequestsCoordinator | unknown | ethereum | n/a | [`0x36c9b5...76c043`](./contracts/ethereum-1/0x36c9b5e8f039381d1da79b94a206af8bc076c043/) | ⚠️ Unaudited |
| ExternalRequestsManager | unknown | ethereum | n/a | [`0x10f4d4...dfc872`](./contracts/ethereum-1/0x10f4d4ead6bcd4de7849898403d88528e3dfc872/) | ⚠️ Unaudited |
| ExternalRequestsManagerBetaV1 | unknown | ethereum | n/a | [`0x052b1c...0fda1b`](./contracts/ethereum-1/0x052b1cacbdea7b4d711c6f428a20618ef60fda1b/) | ⚠️ Unaudited |
| FarmWrapper | unknown | ethereum | n/a | [`0x0fd566...c79655`](./contracts/ethereum-1/0x0fd566cda6d6a3ae1760e1eebd22ee400cc79655/) | ⚠️ Unaudited |
| FBTCProxy | unknown | ethereum | n/a | [`0xa3a30f...85b1ae`](./contracts/ethereum-1/0xa3a30f627dbc02aff3c0a736a065443a0e85b1ae/) | ⚠️ Unaudited |
| FeeRebateToken | unknown | ethereum | n/a | [`0xaf3fff...f94789`](./contracts/ethereum-1/0xaf3fff06b75f99352d8c2a3c4bef1339a2f94789/) | ⚠️ Unaudited |
| FEOracle | unknown | ethereum | n/a | [`0x5250ae...232453`](./contracts/ethereum-1/0x5250ae8a29a19df1a591cb1295ea9bf2b0232453/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FlashLoanArbitrage | unknown | polygon | n/a | [`0x8ffc3a...f0d87b`](./contracts/polygon-137/0x8ffc3a54ab700f94b111904853893f4b24f0d87b/) | ⚠️ Unaudited |
| Fraud | unknown | ethereum | n/a | [`0x51bbef...ba3559`](./contracts/ethereum-1/0x51bbef1c7cc3a1d3bc5e64ce6c3ba6e66fba3559/) | ⚠️ Unaudited |
| FundingScript | unknown | ethereum | n/a | [`0x94c70c...93d063`](./contracts/ethereum-1/0x94c70c36b519e03705ddc26982d438f71993d063/) | ⚠️ Unaudited |
| GasPool | unknown | ethereum | n/a | [`0xcbf153...ae8b89`](./contracts/ethereum-1/0xcbf15324c5838aefe6731077c55adc85bdae8b89/) | ⚠️ Unaudited |
| GasPriceOracle | unknown | ethereum | n/a | [`0x2c0a34...e46ab3`](./contracts/ethereum-1/0x2c0a348500638aace229d6868c26b4e64fe46ab3/) | ⚠️ Unaudited |
| GemFab | unknown | ethereum | n/a | [`0x431e93...845692`](./contracts/ethereum-1/0x431e935209d79706b5866eb42137a3491d845692/) | ⚠️ Unaudited |
| GemPit | unknown | ethereum | n/a | [`0x69076e...83c275`](./contracts/ethereum-1/0x69076e44a9c70a67d5b79d95795aba299083c275/) | ⚠️ Unaudited |
| GGVOracle | unknown | ethereum | n/a | [`0xceed1b...834ea4`](./contracts/ethereum-1/0xceed1b69e3418308c240c7575fe65b9723834ea4/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x002910...e6695e`](./contracts/ethereum-1/0x002910769444bd0d715cc4c6f2a90d92c5e6695e/) | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | ethereum | n/a | [`0x2e9391...06be54`](./contracts/ethereum-1/0x2e93913a796a6c6b2bb76f41690e78a2e206be54/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | manta | n/a | [`0x175427...5d586e`](./contracts/manta-169/0x175427a2bda468293ec2f5bee81060c1bd5d586e/) | ⚠️ Unaudited |
| GovernanceTester | unknown | ethereum | n/a | [`0x87f1e7...f57eae`](./contracts/ethereum-1/0x87f1e73367f406a6546b34ed3781db6e86f57eae/) | ⚠️ Unaudited |
| GrantStaking | unknown | ethereum | n/a | [`0x02612d...8a3db3`](./contracts/ethereum-1/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/) | ⚠️ Unaudited |
| Hypernative | unknown | ethereum | n/a | [`0x1e856c...31c52d`](./contracts/ethereum-1/0x1e856c929555bfc85f5031d44fac6a21af31c52d/) | ⚠️ Unaudited |
| IBTC | unknown | ethereum | n/a | [`0x20157d...7b5ad2`](./contracts/ethereum-1/0x20157dbabb84e3bbfe68c349d0d44e48ae7b5ad2/) | ⚠️ Unaudited |
| IncentiveVoting | unknown | ethereum | n/a | [`0x558741...ddb7a8`](./contracts/ethereum-1/0x5587416ef31da806948e6975c377844f5eddb7a8/) | ⚠️ Unaudited |
| InchDepositWrapper | unknown | ethereum | n/a | [`0xd64dee...d4cd44`](./contracts/ethereum-1/0xd64deeebcb6c108abcb42a3c6ca60c6770d4cd44/) | ⚠️ Unaudited |
| InstantFarm | unknown | ethereum | n/a | [`0x705112...5f0533`](./contracts/ethereum-1/0x7051126223a559e3500bd0843924d971f55f0533/) | ⚠️ Unaudited |
| IsSafeWallet | unknown | ethereum | n/a | [`0xde14e0...c257a8`](./contracts/ethereum-1/0xde14e027e18806e312cb02423a098cd001c257a8/) | ⚠️ Unaudited |
| KeepBonding | unknown | ethereum | n/a | [`0x27321f...89a3d5`](./contracts/ethereum-1/0x27321f84704a599ab740281e285cc4463d89a3d5/) | ⚠️ Unaudited |
| KeepFactorySelection | unknown | ethereum | n/a | [`0x29fa8f...78261c`](./contracts/ethereum-1/0x29fa8f46cbb9562b87773c8f50a7f9f27178261c/) | ⚠️ Unaudited |
| KeepRandomBeaconOperator | unknown | ethereum | n/a | [`0xdf7084...fcf9de`](./contracts/ethereum-1/0xdf708431162ba247ddae362d2c919e0fbafcf9de/) | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | unknown | ethereum | n/a | [`0x3975ce...5718e7`](./contracts/ethereum-1/0x3975ce253ff9d586cf08c3898f95064b7a5718e7/) | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | unknown | ethereum | n/a | [`0x099597...599eab`](./contracts/ethereum-1/0x09959798b95d00a3183d20fac298e4594e599eab/) | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x06b586...13fd7d`](./contracts/ethereum-1/0x06b5869aadcf3fa9a2733dd93d4240a6d813fd7d/) | ⚠️ Unaudited |
| KeepVault | unknown | ethereum | n/a | [`0xdf00da...016c87`](./contracts/ethereum-1/0xdf00dac2be1250cf62cbfc617ee7bc45c0016c87/) | ⚠️ Unaudited |
| KyberHelper | unknown | ethereum | n/a | [`0x4b0f7f...f0b86c`](./contracts/ethereum-1/0x4b0f7fc3ddc5e95a810898075d792247d9f0b86c/) | ⚠️ Unaudited |
| LidoTreasuryConnector | unknown | ethereum | n/a | [`0xb63a5e...b048a7`](./contracts/ethereum-1/0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7/) | ⚠️ Unaudited |
| LightRelay | unknown | ethereum | n/a | [`0x836cdf...35896e`](./contracts/ethereum-1/0x836cdfe63fe2d63f8bdb69b96f6097f36635896e/) | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | ethereum | n/a | [`0x4ca2f6...efa3c8`](./contracts/ethereum-1/0x4ca2f6206da1a7cb8155fea68797efdf25efa3c8/) | ⚠️ Unaudited |
| LiquidationManager | unknown | ethereum | n/a | [`0x2d3b9e...6b73ba`](./contracts/ethereum-1/0x2d3b9e988470d14a81b9965e4e5229aae06b73ba/) | ⚠️ Unaudited |
| Locks | unknown | ethereum | n/a | [`0x6c84a8...d0de40`](./contracts/ethereum-1/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| LPOptimiserStrategy | unknown | ethereum | n/a | [`0x91ad66...369891`](./contracts/ethereum-1/0x91ad66461bcee31339a36a83cbca18f0e4369891/) | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | ethereum | n/a | [`0x47a5f2...9d6f44`](./contracts/ethereum-1/0x47a5f2ffdf66d13ed7e317581f458d09b49d6f44/) | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | ethereum | n/a | [`0x78aa83...482edd`](./contracts/ethereum-1/0x78aa83bd6c9de5de0a2231366900ab060a482edd/) | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | ethereum | n/a | [`0x6ad9e8...03f76d`](./contracts/ethereum-1/0x6ad9e8e5236c0e2cf6d755bb7be4eabcbc03f76d/) | ⚠️ Unaudited |
| LpWrapper | unknown | base | n/a | [`0x09636b...a6ad43`](./contracts/base-8453/0x09636bd5dc37b364e430f4d9c60e0c214aa6ad43/) | ⚠️ Unaudited |
| LStrategyHelper | unknown | ethereum | n/a | [`0x17d3a5...0ef651`](./contracts/ethereum-1/0x17d3a50b1ba002b02a1daaf948637299d40ef651/) | ⚠️ Unaudited |
| LUSDOracle | unknown | ethereum | n/a | [`0x2f15b8...a41535`](./contracts/ethereum-1/0x2f15b86cb4cfa39a9cd407616078fbf903a41535/) | ⚠️ Unaudited |
| MaintainerProxy | unknown | ethereum | n/a | [`0x535e01...40140f`](./contracts/ethereum-1/0x535e01f948458e0b64f9db2a01da6f32e240140f/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0xe05de6...cc6df2`](./contracts/ethereum-1/0xe05de631122d95ef347f6fca85d1bb149fcc6df2/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| MellowAccountV1 | unknown | mantle | n/a | [`0x000000...664482`](./contracts/mantle-5000/0x00000000860913f37fab81ce8ce4e5bd1f664482/) | ⚠️ Unaudited |
| MellowStakingPool | unknown | ethereum | n/a | [`0x5377e3...9cc461`](./contracts/ethereum-1/0x5377e320fc58a639780ac6741b7de461609cc461/) | ⚠️ Unaudited |
| MellowSymbioticVault | unknown | ethereum | n/a | [`0x08f39b...152547`](./contracts/ethereum-1/0x08f39b3d75712148dacdb2669c3eacc7f1152547/) | ⚠️ Unaudited |
| Members | unknown | ethereum | n/a | [`0x3e8640...107ac5`](./contracts/ethereum-1/0x3e8640574aa764763291ed733672d3a105107ac5/) | ⚠️ Unaudited |
| MezoAllocator | unknown | ethereum | n/a | [`0x3e1d7e...e2b5df`](./contracts/ethereum-1/0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df/) | ⚠️ Unaudited |
| MezoBridge | unknown | ethereum | n/a | [`0x1af817...27d1f5`](./contracts/ethereum-1/0x1af817c36708fd0d057c87a51c92fbb0e527d1f5/) | ⚠️ Unaudited |
| MomFab | unknown | ethereum | n/a | [`0x141a20...3669ea`](./contracts/ethereum-1/0x141a206ece672e3198086c5d21f7858ad03669ea/) | ⚠️ Unaudited |
| MovingFunds | unknown | ethereum | n/a | [`0x310667...d42123`](./contracts/ethereum-1/0x3106675ede4a64d70131247466fd8704a3d42123/) | ⚠️ Unaudited |
| MPondLogic | unknown | ethereum | n/a | [`0x0b1f6a...2c617c`](./contracts/ethereum-1/0x0b1f6acab2bfb0b72d61c7be8455f0d5f72c617c/) | ⚠️ Unaudited |
| msUSDOracle | unknown | ethereum | n/a | [`0xcca553...b37472`](./contracts/ethereum-1/0xcca5532b0aff8c3875c889c08fd458615fb37472/) | ⚠️ Unaudited |
| Multicall | unknown | ethereum | n/a | [`0xba610d...8df947`](./contracts/ethereum-1/0xba610d8c8c93580c19fb8800fc406227de8df947/) | ⚠️ Unaudited |
| MultiCollateralHintHelpers | unknown | ethereum | n/a | [`0x6a6298...3dd490`](./contracts/ethereum-1/0x6a62989d451c4f359a30bfcece51da8a313dd490/) | ⚠️ Unaudited |
| MultiTroveGetter | unknown | ethereum | n/a | [`0x42186e...0dcf6b`](./contracts/ethereum-1/0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b/) | ⚠️ Unaudited |
| MultiVault | unknown | ethereum | n/a | [`0x00464c...95f462`](./contracts/ethereum-1/0x00464cc86244aceceb827e66719998c40f95f462/) | ⚠️ Unaudited |
| MUSDOracle | unknown | ethereum | n/a | [`0xcb844a...fdb541`](./contracts/ethereum-1/0xcb844a4de9bfc50dc988cb3231083b804dfdb541/) | ⚠️ Unaudited |
| NetworkMiddleware | unknown | ethereum | n/a | [`0x8f8625...a60b83`](./contracts/ethereum-1/0x8f8625c2a9bc9770bcfe06aae1fcdd479fa60b83/) | ⚠️ Unaudited |
| NetworkRestakeDelegator | unknown | ethereum | n/a | [`0x02129f...a3b27c`](./contracts/ethereum-1/0x02129f8639374ee5cf154b2f8427c6d9d2a3b27c/) | ⚠️ Unaudited |
| NoOp | unknown | ethereum | n/a | [`0x1d5b85...590daf`](./contracts/ethereum-1/0x1d5b85d4099958de09fee8bc252a546b42590daf/) | ⚠️ Unaudited |
| NttManager | unknown | ethereum | n/a | [`0x075108...1d6363`](./contracts/ethereum-1/0x075108f275ed81c9cfc01065e6e50ceea81d6363/) | ⚠️ Unaudited |
| OHMOracle | unknown | ethereum | n/a | [`0x87e92a...141447`](./contracts/ethereum-1/0x87e92a98f590d243d291afae822bc0523e141447/) | ⚠️ Unaudited |
| OlympusConcentratedStrategy | unknown | ethereum | n/a | [`0x8e7900...326dfe`](./contracts/ethereum-1/0x8e7900eb386fabc74f7b166ffda693cb03326dfe/) | ⚠️ Unaudited |
| OlympusStrategy | unknown | ethereum | n/a | [`0x5ec09d...078cf7`](./contracts/ethereum-1/0x5ec09dc83080a17de87ae0bd22097f360e078cf7/) | ⚠️ Unaudited |
| OmniCollector | unknown | ethereum | n/a | [`0x1d8c57...89b4de`](./contracts/ethereum-1/0x1d8c5795d87d3a227dd8c28d89f0dfae7489b4de/) | ⚠️ Unaudited |
| OnDemandSPV | unknown | ethereum | n/a | [`0x1531b6...a4b154`](./contracts/ethereum-1/0x1531b6e3d51bf80f634957df81a990b92da4b154/) | ⚠️ Unaudited |
| OneSidedDepositWrapper | unknown | ethereum | n/a | [`0xc2ef05...2cac6b`](./contracts/ethereum-1/0xc2ef057b5d99e8cc70073f4be29f6c49c92cac6b/) | ⚠️ Unaudited |
| OperatorSpecificDelegator | unknown | ethereum | n/a | [`0x250798...5cc5c2`](./contracts/ethereum-1/0x250798d35c07ac093cfaadd11f259ae5cd5cc5c2/) | ⚠️ Unaudited |
| OptStrategyBotV1 | unknown | ethereum | n/a | [`0x2890b9...213cb4`](./contracts/ethereum-1/0x2890b95cd001bd47b3338390e39ee3e5dc213cb4/) | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | ethereum | n/a | [`0x478409...ec29ed`](./contracts/ethereum-1/0x478409d856cd759cbfaa6639d88b7cdcb8ec29ed/) | ⚠️ Unaudited |
| PancakeFeesCollector | unknown | ethereum | n/a | [`0xb6bf0b...4527e2`](./contracts/ethereum-1/0xb6bf0bc493eb0f5856eec35fa8b1944f1b4527e2/) | ⚠️ Unaudited |
| PancakeSwapHelper | unknown | ethereum | n/a | [`0x31cbfa...d4efd9`](./contracts/ethereum-1/0x31cbfa956a75b6df87f8387e62ea5f9dc7d4efd9/) | ⚠️ Unaudited |
| PancakeSwapMerklHelper | unknown | ethereum | n/a | [`0x1c07b3...3cf04e`](./contracts/ethereum-1/0x1c07b3a4e59b75b11fff1d0cf54e635b043cf04e/) | ⚠️ Unaudited |
| PancakeSwapMerklPulseStrategyV2 | unknown | ethereum | n/a | [`0x215795...ffe2d0`](./contracts/ethereum-1/0x215795f035096320ad1b5e85c80365138bffe2d0/) | ⚠️ Unaudited |
| PancakeSwapPulseStrategyV2 | unknown | ethereum | n/a | [`0x11669e...9b8df7`](./contracts/ethereum-1/0x11669e470affed8f93830636ab49ba6fe09b8df7/) | ⚠️ Unaudited |
| PancakeSwapPulseV2Helper | unknown | ethereum | n/a | [`0x8bc600...2b5ca8`](./contracts/ethereum-1/0x8bc60087ca542511de2f6865e4257775cf2b5ca8/) | ⚠️ Unaudited |
| Payment | unknown | ethereum | n/a | [`0x552b0c...42fa05`](./contracts/ethereum-1/0x552b0c6688fcae5cf0164f27fd129b882a42fa05/) | ⚠️ Unaudited |
| PhasedEscrow | unknown | ethereum | n/a | [`0x964d45...2ec157`](./contracts/ethereum-1/0x964d45256c73df0239a26216cec155d7e12ec157/) | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | unknown | ethereum | n/a | [`0x8fa3ef...3666c0`](./contracts/ethereum-1/0x8fa3ef45137c3aff337e42f98023c1d7dd3666c0/) | ⚠️ Unaudited |
| PodOwner | unknown | ethereum | n/a | [`0x0ac774...e76f52`](./contracts/ethereum-1/0x0ac774014e2306dbddac4af7cb0f80087de76f52/) | ⚠️ Unaudited |
| Portal | unknown | ethereum | n/a | [`0x0b459c...ddeafd`](./contracts/ethereum-1/0x0b459cae3f5f91469b910a8811723606b2ddeafd/) | ⚠️ Unaudited |
| PriceFeed | unknown | ethereum | n/a | [`0x4b248f...9cbff2`](./contracts/ethereum-1/0x4b248f3646755f5b71a66bae8c55c568809cbff2/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x037517...ecba5e`](./contracts/ethereum-1/0x0375178c4d752b3ae35d806c6bb60d07faecba5e/) | ⚠️ Unaudited |
| Puller | unknown | ethereum | n/a | [`0x72d9ed...c74a95`](./contracts/ethereum-1/0x72d9edbc6ef3574a3ddd3c9965688fc659c74a95/) | ⚠️ Unaudited |
| PulseStrategy | unknown | ethereum | n/a | [`0x2683b3...a868ed`](./contracts/ethereum-1/0x2683b341a25455619f5ff8511c14b3e760a868ed/) | ⚠️ Unaudited |
| PulseStrategyModule | unknown | base | n/a | [`0x734eff...bf9684`](./contracts/base-8453/0x734effcb7981b00046a9fcb00d6abd477bbf9684/) | ⚠️ Unaudited |
| PulseStrategyV2 | unknown | ethereum | n/a | [`0x5050b4...7e9611`](./contracts/ethereum-1/0x5050b4262d95d473c782d5bbbb574a50aa7e9611/) | ⚠️ Unaudited |
| PulseStrategyV2Helper | unknown | ethereum | n/a | [`0x072974...cd5aea`](./contracts/ethereum-1/0x0729742d219276ed4c1b004d700291a06acd5aea/) | ⚠️ Unaudited |
| PulseVeloBotLazy | unknown | optimism | n/a | [`0x4b7c2c...beffef`](./contracts/optimism-10/0x4b7c2cd551052e2d4516987936d738339dbeffef/) | ⚠️ Unaudited |
| RandomBeacon | unknown | ethereum | n/a | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | ⚠️ Unaudited |
| RandomBeaconChaosnet | unknown | ethereum | n/a | [`0xf23fc1...b0294a`](./contracts/ethereum-1/0xf23fc18ece6afe7fb57ba59979e8600bb4b0294a/) | ⚠️ Unaudited |
| RandomBeaconGovernance | unknown | ethereum | n/a | [`0xd0a308...cb1c63`](./contracts/ethereum-1/0xd0a3088ed9fff4357b79cd3896bd38876fcb1c63/) | ⚠️ Unaudited |
| Redeem | unknown | ethereum | n/a | [`0x6882ae...57497d`](./contracts/ethereum-1/0x6882ae88956f676a15efe3e9f920aabaaa57497d/) | ⚠️ Unaudited |
| Redemption | unknown | ethereum | n/a | [`0x7d807e...a25914`](./contracts/ethereum-1/0x7d807e9ce1ef73048fee9a4214e75e894ea25914/) | ⚠️ Unaudited |
| RedemptionScript | unknown | ethereum | n/a | [`0x0972e6...adb887`](./contracts/ethereum-1/0x0972e6062eac0fe8686d82ea010504066dadb887/) | ⚠️ Unaudited |
| RedemptionWatchtower | unknown | ethereum | n/a | [`0xb8df0a...38e6d3`](./contracts/ethereum-1/0xb8df0a949ac45ff8f401553a1dcb742feb38e6d3/) | ⚠️ Unaudited |
| ReimbursementPool | unknown | ethereum | n/a | [`0x369fce...17f9cc`](./contracts/ethereum-1/0x369fce62b33512b2a883cf217635ee28dd17f9cc/) | ⚠️ Unaudited |
| Reservoir | unknown | ethereum | n/a | [`0xf911f2...22bbc3`](./contracts/ethereum-1/0xf911f2f5b5e4b12bb2d5cbdcec717d3c6222bbc3/) | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | ethereum | n/a | [`0xbf1762...1649df`](./contracts/ethereum-1/0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df/) | ⚠️ Unaudited |
| Restaking | unknown | ethereum | n/a | [`0x04f744...b7b5c0`](./contracts/ethereum-1/0x04f744f99ea5c588a8a31906d5b5c91cabb7b5c0/) | ⚠️ Unaudited |
| RETHOracle | unknown | ethereum | n/a | [`0xc839b7...069bad`](./contracts/ethereum-1/0xc839b7c8fca7f7211b11b878ca2466250f069bad/) | ⚠️ Unaudited |
| RewardDistributor | unknown | ethereum | n/a | [`0x32a07b...f39f7a`](./contracts/ethereum-1/0x32a07be243ac4ea140b6fef69e3aa44d59f39f7a/) | ⚠️ Unaudited |
| RewardPool | unknown | ethereum | n/a | [`0x29b06c...50a415`](./contracts/ethereum-1/0x29b06ce31449a9f89719137a705cff395450a415/) | ⚠️ Unaudited |
| RiskManagerV1 | unknown | ethereum | n/a | [`0x2355d7...f62b30`](./contracts/ethereum-1/0x2355d701d8d85ed161ab66a0a7e759c463f62b30/) | ⚠️ Unaudited |
| RlpPriceAggregatorV3Interface | unknown | ethereum | n/a | [`0x4e35e7...474ecb`](./contracts/ethereum-1/0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb/) | ⚠️ Unaudited |
| RlpPriceStorage | unknown | ethereum | n/a | [`0x03f75a...fff85c`](./contracts/ethereum-1/0x03f75a4dce6a2aa260d98d10c2c606e5bcfff85c/) | ⚠️ Unaudited |
| RlpUpOnlyPriceStorage | unknown | ethereum | n/a | [`0x093285...ab0dc6`](./contracts/ethereum-1/0x093285c34515c01a55e15a25812bcf87e7ab0dc6/) | ⚠️ Unaudited |
| RockXETH | unknown | ethereum | n/a | [`0x3376eb...61514a`](./contracts/ethereum-1/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/) | ⚠️ Unaudited |
| RockXRedeem | unknown | ethereum | n/a | [`0x3774af...4ba818`](./contracts/ethereum-1/0x3774af7bb6e792963167588ae85b5ab8664ba818/) | ⚠️ Unaudited |
| RockXRestaking | unknown | ethereum | n/a | [`0x351eea...69a098`](./contracts/ethereum-1/0x351eea2c8de2f7f1fb4cf08aa9423cec4269a098/) | ⚠️ Unaudited |
| RockXStaking | unknown | ethereum | n/a | [`0x02e3e2...af25ea`](./contracts/ethereum-1/0x02e3e2c644601b18ad67a6f09155fe5581af25ea/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x0cf4a2...eeb9f4`](./contracts/ethereum-1/0x0cf4a2db7734aabffd15b34fbe8a760b4eeeb9f4/) | ⚠️ Unaudited |
| SafeL2 | unknown | bsc | n/a | [`0x3f31b8...bb6235`](./contracts/bsc-56/0x3f31b8ca3fd126abe13931cb6bd9d53d9fbb6235/) | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | n/a | [`0x0cf4a2...eeb9f4`](./contracts/bsc-56/0x0cf4a2db7734aabffd15b34fbe8a760b4eeeb9f4/) | ⚠️ Unaudited |
| ShitcoinOracle | unknown | ethereum | n/a | [`0x41d0d8...fbefb7`](./contracts/ethereum-1/0x41d0d82c3499912fc2428ee27f861dec7efbefb7/) | ⚠️ Unaudited |
| Sigma | unknown | ethereum | n/a | [`0x18d0d9...d021b5`](./contracts/ethereum-1/0x18d0d914913ac720a6421cc809f3f44697d021b5/) | ⚠️ Unaudited |
| SignerBondsManualSwap | unknown | ethereum | n/a | [`0x43faf6...f7442f`](./contracts/ethereum-1/0x43faf6fe84e01dd186cfeb9ea2f0854a1ef7442f/) | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | ethereum | n/a | [`0x142198...69de32`](./contracts/ethereum-1/0x14219845c6b7984aa5ec0a39754dcc327169de32/) | ⚠️ Unaudited |
| SimpleToken | unknown | ethereum | n/a | [`0x35533f...16868b`](./contracts/ethereum-1/0x35533f54740f1f1aa4179e57ba37039dfa16868b/) | ⚠️ Unaudited |
| SingleVaultStrategy | unknown | ethereum | n/a | [`0x09c60d...7e43ab`](./contracts/ethereum-1/0x09c60d0d393924007dafe560fe279d13397e43ab/) | ⚠️ Unaudited |
| SortedTroves | unknown | ethereum | n/a | [`0x870a10...c56b4a`](./contracts/ethereum-1/0x870a108234dee42a9fa01c36368e5e4ea3c56b4a/) | ⚠️ Unaudited |
| SortitionPool | unknown | ethereum | n/a | [`0x4e4cba...ecbcf6`](./contracts/ethereum-1/0x4e4cba3779d56386ed43631b4dcd6d8eacecbcf6/) | ⚠️ Unaudited |
| SourceHelper | unknown | manta | n/a | [`0x474dd6...53ba69`](./contracts/manta-169/0x474dd66474b82dcb770865471964463f7153ba69/) | ⚠️ Unaudited |
| StabilityPool | unknown | ethereum | n/a | [`0x5f2283...82d627`](./contracts/ethereum-1/0x5f2283c7c8967c5fb3a959e63ea89865b882d627/) | ⚠️ Unaudited |
| StakedENA | unknown | ethereum | n/a | [`0x7fd57b...e1018b`](./contracts/ethereum-1/0x7fd57b46ae1a7b14f6940508381877ee03e1018b/) | ⚠️ Unaudited |
| StakedTokenDistributor | unknown | ethereum | n/a | [`0x53c5b7...08031e`](./contracts/ethereum-1/0x53c5b703465234f97c5a7b17b602c6224a08031e/) | ⚠️ Unaudited |
| StakedUsbd | unknown | ethereum | n/a | [`0x15ba04...1d1eef`](./contracts/ethereum-1/0x15ba049b9481e8c30531f736b58609b8aa1d1eef/) | ⚠️ Unaudited |
| StakedUsbdOftAdapter | unknown | ethereum | n/a | [`0x450bd4...e0b42f`](./contracts/ethereum-1/0x450bd4e955ee33ff42bf9dff84dbbb301ce0b42f/) | ⚠️ Unaudited |
| StakedUSDeV2 | unknown | ethereum | n/a | [`0x9d39a5...7a3497`](./contracts/ethereum-1/0x9d39a5de30e57443bff2a8307a4256c8797a3497/) | ⚠️ Unaudited |
| StakerRewardsBeneficiary | unknown | ethereum | n/a | [`0xbb59f4...8a0b81`](./contracts/ethereum-1/0xbb59f486135145ad247b82f9cdf52be4a58a0b81/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0x4befa2...269e9d`](./contracts/ethereum-1/0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d/) | ⚠️ Unaudited |
| StakingDepositWrapper | unknown | ethereum | n/a | [`0x9b8058...6b9730`](./contracts/ethereum-1/0x9b8058fa941835d5f287680d2f569935356b9730/) | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | unknown | ethereum | n/a | [`0x118b76...069bd8`](./contracts/ethereum-1/0x118b7642b91bcf02c565a3c417534e29e4069bd8/) | ⚠️ Unaudited |
| StakingPortBacker | unknown | ethereum | n/a | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| StakingRewards | unknown | base | n/a | [`0x0a6450...848914`](./contracts/base-8453/0x0a64501684dd1df7e8c06456dbd324f971848914/) | ⚠️ Unaudited |
| stBTC | unknown | ethereum | n/a | [`0xdf217e...854017`](./contracts/ethereum-1/0xdf217efd8f3ecb5e837aedf203c28c1f06854017/) | ⚠️ Unaudited |
| strETHOracle | unknown | ethereum | n/a | [`0x030326...0499e5`](./contracts/ethereum-1/0x030326da079bb84451351effbe7f897fab0499e5/) | ⚠️ Unaudited |
| StUSR | unknown | ethereum | n/a | [`0x0da21d...cabf61`](./contracts/ethereum-1/0x0da21d330f3f75d730a1b5f1535ca75061cabf61/) | ⚠️ Unaudited |
| sUSDeOracle | unknown | ethereum | n/a | [`0xc766f2...98b8ea`](./contracts/ethereum-1/0xc766f2f2a6044727926090ef781be2efa098b8ea/) | ⚠️ Unaudited |
| Symbiosis | unknown | ethereum | n/a | [`0xd38bb4...c76dd9`](./contracts/ethereum-1/0xd38bb40815d2b0c2d2c866e0c72c5728ffc76dd9/) | ⚠️ Unaudited |
| SymbiosisTokenVesting | unknown | ethereum | n/a | [`0x6ef7dd...7231bf`](./contracts/ethereum-1/0x6ef7dd4d7782c27a4c509585db60695d8c7231bf/) | ⚠️ Unaudited |
| SymbioticWithdrawalQueue | unknown | ethereum | n/a | [`0x0c3e33...75e08a`](./contracts/ethereum-1/0x0c3e33e133e715aec43b74bd5bf8732b0775e08a/) | ⚠️ Unaudited |
| SyrupUSDCOracle | unknown | ethereum | n/a | [`0xd8e292...623ad0`](./contracts/ethereum-1/0xd8e29252b1f65a6ef5a9f389c2d0b20716623ad0/) | ⚠️ Unaudited |
| T | unknown | ethereum | n/a | [`0xcdf702...94bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | ⚠️ Unaudited |
| TapFab | unknown | ethereum | n/a | [`0x521c42...51f14f`](./contracts/ethereum-1/0x521c420c2a2b461034becbb41d4888b68951f14f/) | ⚠️ Unaudited |
| TargetCore | unknown | ethereum | n/a | [`0x48e69c...cce1c7`](./contracts/ethereum-1/0x48e69cb6c6f05e194589be37408c5717e7cce1c7/) | ⚠️ Unaudited |
| TBTC | unknown | ethereum | n/a | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | ⚠️ Unaudited |
| TBTCConstants | unknown | ethereum | n/a | [`0x63a152...26750d`](./contracts/ethereum-1/0x63a152ea1cd78ac3c7c1fcf1322dc6de1126750d/) | ⚠️ Unaudited |
| TBTCDepositToken | unknown | ethereum | n/a | [`0x10b66b...37cdf0`](./contracts/ethereum-1/0x10b66bd1e3b5a936b7f8dbc5976004311037cdf0/) | ⚠️ Unaudited |
| tBTCOracle | unknown | ethereum | n/a | [`0xf8ac6d...62c812`](./contracts/ethereum-1/0xf8ac6dcecaa570680abcd9ce833051ecda62c812/) | ⚠️ Unaudited |
| TBTCSystem | unknown | ethereum | n/a | [`0xe20a5c...1ab64a`](./contracts/ethereum-1/0xe20a5c79b39bc8c363f0f49adcfa82c2a01ab64a/) | ⚠️ Unaudited |
| TBTCVault | unknown | ethereum | n/a | [`0x52818e...277fd4`](./contracts/ethereum-1/0x52818e501612d3c5b37b5f9b83b024342c277fd4/) | ⚠️ Unaudited |
| TheCounter | unknown | ethereum | n/a | [`0xa27a69...e55861`](./contracts/ethereum-1/0xa27a69ae180e202fde5d38189a3f24fe24e55861/) | ⚠️ Unaudited |
| TicksFeesReader | unknown | ethereum | n/a | [`0x622535...e4ddac`](./contracts/ethereum-1/0x622535dfe61d603d88c220c17998d60629e4ddac/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x290d95...f6ebee`](./contracts/ethereum-1/0x290d9544669c9c7a64f6899a0a3b28d563f6ebee/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x01327c...3c1408`](./contracts/ethereum-1/0x01327cae0ced4443fbe7681fd3923dd1c43c1408/) | ⚠️ Unaudited |
| TokenLocker | unknown | ethereum | n/a | [`0x09a028...f75bf7`](./contracts/ethereum-1/0x09a028587705b49fa162671d2507567cfef75bf7/) | ⚠️ Unaudited |
| TokenLogic | unknown | ethereum | n/a | [`0x57b946...58d26c`](./contracts/ethereum-1/0x57b946008913b82e4df85f501cbaed910e58d26c/) | ⚠️ Unaudited |
| TokenStakingEscrow | unknown | ethereum | n/a | [`0xda534b...681365`](./contracts/ethereum-1/0xda534b567099ca481384133bc121d5843f681365/) | ⚠️ Unaudited |
| TokenVesting | unknown | ethereum | n/a | [`0x3086ac...c76827`](./contracts/ethereum-1/0x3086ac03b0347bee2ce3fd9079452db13fc76827/) | ⚠️ Unaudited |
| TopFab | unknown | ethereum | n/a | [`0x0eda20...733ed4`](./contracts/ethereum-1/0x0eda20f7499aae7bdadc4e52fd72e49663733ed4/) | ⚠️ Unaudited |
| TopUps | unknown | ethereum | n/a | [`0x41c9b5...79d91a`](./contracts/ethereum-1/0x41c9b5639e3f2f6c61e9b78b2c6ff3746e79d91a/) | ⚠️ Unaudited |
| TransferProxy | unknown | ethereum | n/a | [`0xf0ab75...bc342b`](./contracts/ethereum-1/0xf0ab759d3a1a4956e8c3c52c71ccb50f20bc342b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x5f73c0...57e76c`](./contracts/ethereum-1/0x5f73c0260adc537856914b9b3da64ee87257e76c/) | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | [`0xacb702...d62b8e`](./contracts/ethereum-1/0xacb7027f271b03b502d65feba617a0d817d62b8e/) | ⚠️ Unaudited |
| TreasuryIntermediateEscrow | unknown | ethereum | n/a | [`0x84b883...acfed6`](./contracts/ethereum-1/0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6/) | ⚠️ Unaudited |
| TroveManager | unknown | ethereum | n/a | [`0x8ed4f2...657938`](./contracts/ethereum-1/0x8ed4f24f71ffbfba5109be1ed13c83b7cc657938/) | ⚠️ Unaudited |
| TroveManagerGetters | unknown | ethereum | n/a | [`0x6e26de...d7b1b1`](./contracts/ethereum-1/0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1/) | ⚠️ Unaudited |
| TubFab | unknown | ethereum | n/a | [`0xb3b670...d1b987`](./contracts/ethereum-1/0xb3b67099121e1fbde6276b2802048d1a7dd1b987/) | ⚠️ Unaudited |
| UnderwriterToken | unknown | ethereum | n/a | [`0x007854...0df843`](./contracts/ethereum-1/0x007854fdcc9c6f748b435e63745599fb1a0df843/) | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | n/a | [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | ⚠️ Unaudited |
| uniBTCRate | unknown | ethereum | n/a | [`0xe54291...abc716`](./contracts/ethereum-1/0xe542919e4b281f10b437f947c8ba224ddfabc716/) | ⚠️ Unaudited |
| UniV3MEVProtection | unknown | ethereum | n/a | [`0xe6d431...1e4f24`](./contracts/ethereum-1/0xe6d431838be4f1a2f0cb15b2a26f12cd3e1e4f24/) | ⚠️ Unaudited |
| UniV3PoolOracle | unknown | ethereum | n/a | [`0xb00b70...430663`](./contracts/ethereum-1/0xb00b7023d92cbacf0201aaa6d4bf5b5203430663/) | ⚠️ Unaudited |
| UniV3VaultGovernance | unknown | polygon | n/a | [`0x09f873...1e6ada`](./contracts/polygon-137/0x09f87378b46778e6b491bcae05510ab7c41e6ada/) | ⚠️ Unaudited |
| USDe | unknown | ethereum | n/a | [`0x4c9edd...1e68b3`](./contracts/ethereum-1/0x4c9edd5852cd905f086c759e8383e09bff1e68b3/) | ⚠️ Unaudited |
| UsrExternalRequestsManager | unknown | ethereum | n/a | [`0xac85ef...a95f2e`](./contracts/ethereum-1/0xac85ef29192487e0a109b7f9e40c267a9ea95f2e/) | ⚠️ Unaudited |
| USRPriceAggregatorV3Interface | unknown | ethereum | n/a | [`0x8a9341...c46f64`](./contracts/ethereum-1/0x8a93414f88f597922a9829df5f7c94b81bc46f64/) | ⚠️ Unaudited |
| UsrPriceStorage | unknown | ethereum | n/a | [`0x7f4518...9c261c`](./contracts/ethereum-1/0x7f45180d6ffd0435d8dd695fd01320e6999c261c/) | ⚠️ Unaudited |
| UsrRedemptionExtension | unknown | ethereum | n/a | [`0x60a7b7...897c37`](./contracts/ethereum-1/0x60a7b7915980ed34fde6e239618fadcf67897c37/) | ⚠️ Unaudited |
| VaultCollector | unknown | ethereum | n/a | [`0xd801ce...b531ab`](./contracts/ethereum-1/0xd801ce49d1028004918f36abbcfc67892eb531ab/) | ⚠️ Unaudited |
| VaultRateOracle | unknown | ethereum | n/a | [`0x20edb9...34d020`](./contracts/ethereum-1/0x20edb9299ae83d9f22be16279a4a2b422f34d020/) | ⚠️ Unaudited |
| VaultTokenized | unknown | ethereum | n/a | [`0x8327b8...968e40`](./contracts/ethereum-1/0x8327b8bd2561d28f914931ad57370d62c7968e40/) | ⚠️ Unaudited |
| VaultWithoutNative | unknown | ethereum | n/a | [`0x047d41...10d6da`](./contracts/ethereum-1/0x047d41f2544b7f63a8e991af2068a363d210d6da/) | ⚠️ Unaudited |
| VeloAmmModule | unknown | optimism | n/a | [`0x324084...b6bfb5`](./contracts/optimism-10/0x3240847946e112db9c7d3bbb4fc3cdc38cb6bfb5/) | ⚠️ Unaudited |
| VeloDeployFactory | unknown | base | n/a | [`0x5b1b1a...db4029`](./contracts/base-8453/0x5b1b1aac71bdca9ed1dcb2aa357f678584db4029/) | ⚠️ Unaudited |
| VeloDeployFactoryHelper | unknown | optimism | n/a | [`0x65ab2e...0defff`](./contracts/optimism-10/0x65ab2e4c52f424336dbe42f153a91458b70defff/) | ⚠️ Unaudited |
| VeloDepositWithdrawModule | unknown | base | n/a | [`0x28c75f...d70043`](./contracts/base-8453/0x28c75f34c18937c492545be8fe278ede4dd70043/) | ⚠️ Unaudited |
| VeloOracle | unknown | optimism | n/a | [`0x0e53a7...9c9426`](./contracts/optimism-10/0x0e53a7e266c5970d510581961f5a917bc19c9426/) | ⚠️ Unaudited |
| VeloSugarHelper | unknown | optimism | n/a | [`0x1d5fe7...4c6dae`](./contracts/optimism-10/0x1d5fe76f2e8d4d8625f14c0013990837ed4c6dae/) | ⚠️ Unaudited |
| VendingMachine | unknown | ethereum | n/a | [`0x1cca7e...47680e`](./contracts/ethereum-1/0x1cca7e410ee41739792ea0a24e00349dd247680e/) | ⚠️ Unaudited |
| VendingMachineV2 | unknown | ethereum | n/a | [`0xce1f98...026d4b`](./contracts/ethereum-1/0xce1f983c29f7a6c0c0dfa78c4d8fe7bdfe026d4b/) | ⚠️ Unaudited |
| VendingMachineV3 | unknown | ethereum | n/a | [`0x7570a2...6437e6`](./contracts/ethereum-1/0x7570a2350183b4bdf7ca74fad3fc19048e6437e6/) | ⚠️ Unaudited |
| VetoSlasher | unknown | ethereum | n/a | [`0x04a216...303d5b`](./contracts/ethereum-1/0x04a216411317a334c234c6abdd589bb94d303d5b/) | ⚠️ Unaudited |
| VoltzVault | unknown | ethereum | n/a | [`0xec4b7e...ea82ba`](./contracts/ethereum-1/0xec4b7e68ed580d2e94479609567f6f5c07ea82ba/) | ⚠️ Unaudited |
| VoltzVaultGovernance | unknown | ethereum | n/a | [`0x4270eb...0dea27`](./contracts/ethereum-1/0x4270eb53c020b8dcc0315c5264bf90810e0dea27/) | ⚠️ Unaudited |
| VoltzVaultHelper | unknown | ethereum | n/a | [`0x361b36...45f4b6`](./contracts/ethereum-1/0x361b361061ab3ae5ddc75cc06c2ef05f2645f4b6/) | ⚠️ Unaudited |
| VoxFab | unknown | ethereum | n/a | [`0x414b1d...2499bf`](./contracts/ethereum-1/0x414b1da0bb6e948dc0559d14ebde9fa9572499bf/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x326483...0e86c6`](./contracts/ethereum-1/0x3264834ada73a8b0b132ee52fd5a367cf60e86c6/) | ⚠️ Unaudited |
| WalletCoordinator | unknown | ethereum | n/a | [`0x10fb59...43ffe5`](./contracts/ethereum-1/0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5/) | ⚠️ Unaudited |
| WalletProposalValidator | unknown | ethereum | n/a | [`0x30019d...fbdec2`](./contracts/ethereum-1/0x30019d85a86abd3cda1167f4c052690c32fbdec2/) | ⚠️ Unaudited |
| WalletRegistry | unknown | ethereum | n/a | [`0x08d7e8...65c832`](./contracts/ethereum-1/0x08d7e8ce124921caafd7670502379ced0065c832/) | ⚠️ Unaudited |
| WalletRegistryGovernance | unknown | ethereum | n/a | [`0x6aed6c...d47fe8`](./contracts/ethereum-1/0x6aed6cc30d1b2770771052555d257da86ed47fe8/) | ⚠️ Unaudited |
| Wallets | unknown | ethereum | n/a | [`0xc67913...ba47bf`](./contracts/ethereum-1/0xc67913137429985416dbce28d9fa9ec960ba47bf/) | ⚠️ Unaudited |
| WBTC | unknown | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| wBTCOracle | unknown | ethereum | n/a | [`0x1f6647...2a6658`](./contracts/ethereum-1/0x1f66477e683e1007e58f52e2ee1718d8da2a6658/) | ⚠️ Unaudited |
| WETH | unknown | ethereum | n/a | [`0x353f89...c4bf52`](./contracts/ethereum-1/0x353f8931ce1c52f643121be129985aab09c4bf52/) | ⚠️ Unaudited |
| WETH9 | unknown | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x147379...f2d786`](./contracts/ethereum-1/0x147379a0174780570d07d70a14fb244ee5f2d786/) | ⚠️ Unaudited |
| WrappedIBTC | unknown | ethereum | n/a | [`0x0c6f29...8d2da1`](./contracts/ethereum-1/0x0c6f294f441661503c237c2317712a0ecd8d2da1/) | ⚠️ Unaudited |
| WstETH | unknown | ethereum | n/a | [`0x7f39c5...5e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| WStethOracle | unknown | ethereum | n/a | [`0x5eed88...fdef96`](./contracts/ethereum-1/0x5eed882e4529e34b4aae833df19d99f514fdef96/) | ⚠️ Unaudited |
| WstUSR | unknown | ethereum | n/a | [`0x1202f5...c75055`](./contracts/ethereum-1/0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055/) | ⚠️ Unaudited |

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
| [blocksec_mellow_vaults_v1.3-signed.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202208_BlockSec_vaults_v1/blocksec_mellow_vaults_v1.3-signed.pdf) | BlockSec | Audit | 2022-08 | stale | Direct | contract_name | 9 | high |
| [ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202208_Chainsecurity_vaults_v1/ChainSecurity_Mellow_Finance_Mellow_Vaults_audit.pdf) | ChainSecurity | Audit | 2022-08 | stale | Direct | contract_name | 42 | high |
| [Mellow Protocol HStrategy Security Analysis.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202211_Pessimistic_HStrategy/Mellow%20Protocol%20HStrategy%20Security%20Analysis.pdf) | Pessimistic | Audit | 2022-11 | stale | Direct | contract_name | 5 | high |
| [Mellow protocol Gearbox integration Security Analysis by Pessimistic.pdf](https://github.com/mellow-finance/mellow-audits/blob/main/202212_Pessimistic_Gearbox/Mellow%20protocol%20Gearbox%20integration%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2022-12 | stale | Direct | contract_name | 7 | high |
| [StateMind Mellow LRT report with deployment.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FkF9WEmdIYGcCPdAPltyL%2FStateMind%20Mellow%20LRT%20report%20with%20deployment.pdf) | StateMind | Audit | 2024-05 | stale | Direct | contract_name | 15 | high |
| [Sherlock Mellow Modular LRTs Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FT65xUuoxB4TbuaSjSyst%2FSherlock%20Mellow%20Modular%20LRTs%20Audit%20Report.pdf) | Sherlock | Contest | 2024-08 | aging | Direct | contract_name | 5 | high |
| [Mellow Finance Simple-LRT and DVV Vault Security Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2Fz1vRTE4p2jsyru2NDTW5%2FMellow%20Finance%20Simple-LRT%20and%20DVV%20Vault%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-06 | aging | Direct | contract_name | 6 | high |
| [ChainSecurity_MellowFinance_MellowLRT_Audit.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FVOe4RlDJHDolkm4fiVZM%2FChainSecurity_MellowFinance_MellowLRT_Audit.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | 17 | high |
| [Statemind Mellow Multi Vault Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F0QLb9sa0V8su4O0MaCLK%2FStatemind%20Mellow%20Multi%20Vault%20Audit%20Report.pdf) | Statemind | Audit | 2025-01 | aging | Direct | contract_name | 6 | high |
| [ChainSecurity Mellow Multivault Audit.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FUabZ3jdmQWi13qIivg13%2FChainSecurity%20Mellow%20Multivault%20Audit.pdf) | ChainSecurity | Audit | 2025-02 | aging | Direct | contract_name | 7 | high |
| [Nethermind Mellow Interop Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FDyGtu1VK0bKYsUxQI0ES%2FNethermind%20Mellow%20Interop%20Audit%20Report.pdf) | Nethermind | Audit | 2025-03 | aging | Direct | contract_name | 7 | high |
| [Decurity Mellow Interop Audit Report.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FFHTkyHS9rabfh8AMkJU3%2FDecurity%20Mellow%20Interop%20Audit%20Report.pdf) | Decurity | Audit | 2025-03 | aging | Direct | contract_name | 7 | high |
| [Sherlock_Mellow-Core-Vaults_20250728.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FLBYikKe3UYNWMV8Kte52%2FSherlock_Mellow-Core-Vaults_20250728.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | 30 | high |
| [Nethermind_Mellow-Core-Vaults_20250903.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FNs4351hVFYzadiFii2az%2FNethermind_Mellow-Core-Vaults_20250903.pdf) | Nethermind | Audit | 2025-09 | fresh | Direct | contract_name | 30 | high |
| [NM_0758_Mellow-1.pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F2GBCylSChOvXlBDteguf%2FNM_0758_Mellow-1.pdf) | Nethermind | Audit | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [NM0735-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FEKdTZHaxv3h0qKauW9TU%2FNM0735-FINAL_MELLOW%20(1).pdf) | Nethermind | Audit | 2025-11 | fresh | Direct | contract_name | 1 | high |
| [NM0758-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FqiqkyRtS5hyeGOGEkUlO%2FNM0758-FINAL_Mellow%20(1).pdf) | Nethermind | Audit | 2025-12 | fresh | Direct | contract_name | 1 | high |
| [NM0798-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2F3pkyCLIShMV1QdiygMDh%2FNM0798-FINAL_MELLOW%20(1).pdf) | Nethermind | Audit | 2026-01 | fresh | Direct | contract_name | 1 | high |
| [NM0812-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FiJpqr8BmY5Fdjfd1fw5n%2FNM0812-FINAL_Mellow%20(1).pdf) | Nethermind | Audit | 2026-01 | fresh | Direct | contract_name | 1 | high |
| [NM0703-FINAL_MELLOW (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FM2HU6Mm6042D009NBVaa%2FNM0703-FINAL_MELLOW%20(1).pdf) | N/A | Audit | 2025-11 | fresh | Direct | contract_name | 1 | high |
| [NM0682-FINAL_Mellow (1).pdf](https://1022099409-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-Mk3LEacyGwD8y6mb9-2%2Fuploads%2FuoD71STRiDu2ON8SHpvK%2FNM0682-FINAL_Mellow%20(1).pdf) | N/A | Audit | 2025-10 | fresh | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 424 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=21
- Match method counts: extraction_exact=200

Fork inheritance lineage and inherited audits are included when available.
