# Agentic Audit Brief: Metronome

## Project Overview

- Project: Metronome (`metronome`)
- Website: [https://www.metronome.io/](https://www.metronome.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:25.832Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: base, ethereum, optimism
- Contract surface: 130 unique implementations (130 raw deployments)
- DeFi Llama TVL: $19,045,296.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Synthetics. Structurally: 128 project-authored contract(s) across 3 chain(s); 8 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 15 common project-authored base contract(s) (reentrancyguardtransient, pauseable, governable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 130; live-surface contracts included: 130 (130 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/130 (2.3%)
- Deployed-live implementations: 130 of 130 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/130
- Verified + Unaudited implementations: 127
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 130
- Raw deployments: 130
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 2.3% | 2018-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proposals | unknown | ethereum | n/a | [`0x760a0a...6269e4`](./contracts/ethereum-1/0x760a0a933f9597fbc3b4db86ef92d61c956269e4/) | ✅ Audited |
| TokenPorter | unknown | ethereum | n/a | [`0xc0cef6...6173b3`](./contracts/ethereum-1/0xc0cef6cf59e56a9427cef967f8dfb7bde06173b3/) | ✅ Audited |
| Validator | unknown | ethereum | n/a | [`0xe804eb...4eb1c1`](./contracts/ethereum-1/0xe804ebeff801a63de6e746c24ceb41a9864eb1c1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (127)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Agent | unknown | ethereum | n/a | [`0x46e6ad...21553a`](./contracts/ethereum-1/0x46e6ade9b7b59e151c5bcc877c9b90d50021553a/) | ⚠️ Unaudited |
| AgentUpgrader | unknown | ethereum | n/a | [`0x804739...c3953a`](./contracts/ethereum-1/0x804739d527b550260f633462dedab13399c3953a/) | ⚠️ Unaudited |
| AlphaHomora | unknown | ethereum | n/a | [`0x54ce99...9babcc`](./contracts/ethereum-1/0x54ce999d8709db87b211d3dd9a78dcdc2f9babcc/) | ⚠️ Unaudited |
| AlusdTokenMainnetOracle | unknown | ethereum | n/a | [`0x6ea1c7...ff5377`](./contracts/ethereum-1/0x6ea1c75c219eeebb10ec57737cf0a7df1eff5377/) | ⚠️ Unaudited |
| AMO | unknown | optimism | n/a | [`0x2f248e...df9543`](./contracts/optimism-10/0x2f248e80901ae9e5b2109524546d68d425df9543/) | ⚠️ Unaudited |
| AmoUpgrader | unknown | base | n/a | [`0x1ac222...9269d8`](./contracts/base-8453/0x1ac222833b85c3ed1ccbc8a7d45f38021d9269d8/) | ⚠️ Unaudited |
| ApyTieredFeePolicy | unknown | ethereum | n/a | [`0xcb6daf...01ee0d`](./contracts/ethereum-1/0xcb6dafb36b40c9c7371108f66a5184ff3b01ee0d/) | ⚠️ Unaudited |
| ATokenOracle | unknown | ethereum | n/a | [`0x307874...074fcf`](./contracts/ethereum-1/0x3078742bacdfecbe6f8d9e77f1aaa1000c074fcf/) | ⚠️ Unaudited |
| BTCPeggedTokenOracle | unknown | ethereum | n/a | [`0x54525f...4946b4`](./contracts/ethereum-1/0x54525f751b71e1ea58a558649f0057451e4946b4/) | ⚠️ Unaudited |
| CrossChainDispatcher | unknown | optimism | n/a | [`0x1a9e6d...7fd6d8`](./contracts/optimism-10/0x1a9e6d0303ec473bcfac0720b4427045317fd6d8/) | ⚠️ Unaudited |
| CrossChainDispatcherUpgrader | unknown | optimism | n/a | [`0x69e35c...68a935`](./contracts/optimism-10/0x69e35c5c52a7b009b27d1da1e547dacea068a935/) | ⚠️ Unaudited |
| CrossChainDispatcherUpgraderV2 | unknown | optimism | n/a | [`0xce774a...4b19d8`](./contracts/optimism-10/0xce774a71fb63dd92c32d41b2b7ef7e83894b19d8/) | ⚠️ Unaudited |
| Crv4PoolStrategySUSDPool | unknown | ethereum | n/a | [`0x5708e0...40d9e0`](./contracts/ethereum-1/0x5708e07300e5d6ea9fb6e0dc0c6b6a22f640d9e0/) | ⚠️ Unaudited |
| CTokenOracle | unknown | ethereum | n/a | [`0x7c3085...57a87e`](./contracts/ethereum-1/0x7c3085721aa6f36081ee5e00583da5526d57a87e/) | ⚠️ Unaudited |
| DebtToken | unknown | ethereum | n/a | [`0x1e6039...fd9b27`](./contracts/ethereum-1/0x1e6039574bbf6b1f65650bc50b2bca8911fd9b27/) | ⚠️ Unaudited |
| DebtTokenUpgrader | unknown | base | n/a | [`0x1a8ea5...245771`](./contracts/base-8453/0x1a8ea5ab935285dc96cb853e8dd7d21eeb245771/) | ⚠️ Unaudited |
| DepositToken | unknown | ethereum | n/a | [`0x04c3af...10521a`](./contracts/ethereum-1/0x04c3af72fa9f45d37228be8801bc5d2a4410521a/) | ⚠️ Unaudited |
| DepositTokenUpgrader | unknown | optimism | n/a | [`0x084a7d...db9a19`](./contracts/optimism-10/0x084a7d7eb284dd74b1e29940a3745c8b59db9a19/) | ⚠️ Unaudited |
| EarnVesperStrategy | unknown | ethereum | n/a | [`0x6d94ce...5d66a5`](./contracts/ethereum-1/0x6d94ce384cf6b51f93f8c702b039333fc95d66a5/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x023dcf...ec35fb`](./contracts/ethereum-1/0x023dcf516c349b615120ee731add909645ec35fb/) | ⚠️ Unaudited |
| ERC4626Adapter | unknown | ethereum | n/a | [`0x32cbc6...b5ff59`](./contracts/ethereum-1/0x32cbc628325eb5a3000d3182c72539c77eb5ff59/) | ⚠️ Unaudited |
| ERC4626TokenOracle | unknown | ethereum | n/a | [`0x288170...c60c97`](./contracts/ethereum-1/0x28817036451a4de34ac3df935a6762a2a1c60c97/) | ⚠️ Unaudited |
| ESMET | unknown | ethereum | n/a | [`0x01fc4c...7e2698`](./contracts/ethereum-1/0x01fc4c09a67ce412faa316d03505d67aa27e2698/) | ⚠️ Unaudited |
| ESMET721 | unknown | ethereum | n/a | [`0x89c4ae...d4c21a`](./contracts/ethereum-1/0x89c4aedcd10df1b19cf2d4b540af3fcad5d4c21a/) | ⚠️ Unaudited |
| ESMET721Upgrader | unknown | ethereum | n/a | [`0xb699b7...8c4aeb`](./contracts/ethereum-1/0xb699b72aefbee7fe6e77e290e60be6f7668c4aeb/) | ⚠️ Unaudited |
| ESMETUpgrader | unknown | ethereum | n/a | [`0xd23b6f...4bff2b`](./contracts/ethereum-1/0xd23b6f36c959e272270ba8179f8bea18474bff2b/) | ⚠️ Unaudited |
| ESVSP | unknown | ethereum | n/a | [`0x02fc85...58623b`](./contracts/ethereum-1/0x02fc8523510be4c6085d8d820ecced3f2a58623b/) | ⚠️ Unaudited |
| ESVSP721 | unknown | ethereum | n/a | [`0x676c0a...014363`](./contracts/ethereum-1/0x676c0a314284ace713c74add192a0b30f4014363/) | ⚠️ Unaudited |
| ESVSP721Upgrader | unknown | ethereum | n/a | [`0x0e8c5c...2cbd4e`](./contracts/ethereum-1/0x0e8c5c81053581341ba45ea149982ebf862cbd4e/) | ⚠️ Unaudited |
| ESVSPUpgrader | unknown | ethereum | n/a | [`0x54ae48...47a307`](./contracts/ethereum-1/0x54ae4816bbe3c667aac5d9bd2f4ffb1ad947a307/) | ⚠️ Unaudited |
| Euler | unknown | ethereum | n/a | [`0x67be85...cc1165`](./contracts/ethereum-1/0x67be8549cc27f0e10dd5925191354f7aefcc1165/) | ⚠️ Unaudited |
| EulerVesperXy | unknown | ethereum | n/a | [`0x2b5de5...94b609`](./contracts/ethereum-1/0x2b5de50a1db84dd2dc66146cd513d2688394b609/) | ⚠️ Unaudited |
| FeeProvider | unknown | ethereum | n/a | [`0x25ee6e...671f36`](./contracts/ethereum-1/0x25ee6ea9353e0ffa3155655f3df9140684671f36/) | ⚠️ Unaudited |
| FeeProviderUpgrader | unknown | optimism | n/a | [`0x340972...18cf52`](./contracts/optimism-10/0x340972195f008deec31c70700a45d6e28818cf52/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x993946...23c10f`](./contracts/ethereum-1/0x993946155060d4324b8fd6cb6a4d69024c23c10f/) | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | ethereum | n/a | [`0x1015bd...390a5c`](./contracts/ethereum-1/0x1015bd1ff0af19d8ce63380b636907f2c4390a5c/) | ⚠️ Unaudited |
| HemiBTCRateProvider | unknown | ethereum | n/a | [`0x7d992c...6fc9e6`](./contracts/ethereum-1/0x7d992cf60870237c74eef68def2ba1f1906fc9e6/) | ⚠️ Unaudited |
| IbBtcTokenOracle | unknown | ethereum | n/a | [`0x3a360a...756346`](./contracts/ethereum-1/0x3a360a00f781ec5130a8e1e406d7ee144f756346/) | ⚠️ Unaudited |
| InfiniFiAdapter | unknown | ethereum | n/a | [`0xf974d7...f2fb41`](./contracts/ethereum-1/0xf974d7435e86db32d8a6d021934712ea51f2fb41/) | ⚠️ Unaudited |
| InifniFiAdapter | unknown | ethereum | n/a | [`0xa24b17...fe8416`](./contracts/ethereum-1/0xa24b17e30e88d8ea582a2c41d0d8c9208efe8416/) | ⚠️ Unaudited |
| L2StandardERC20 | unknown | optimism | n/a | [`0x9a2e53...5d7836`](./contracts/optimism-10/0x9a2e53158e12bc09270af10c16a466cb2b5d7836/) | ⚠️ Unaudited |
| MainAndFallbackOracle | unknown | ethereum | n/a | [`0xe0af15...3d3017`](./contracts/ethereum-1/0xe0af15b4689cf81a9f1bfc6857d842f2813d3017/) | ⚠️ Unaudited |
| MakerVesper | unknown | ethereum | n/a | [`0xd08cfe...a7c078`](./contracts/ethereum-1/0xd08cfe37f44f2f9afda5f8788cb856c63ea7c078/) | ⚠️ Unaudited |
| MakerVesperStETH | unknown | ethereum | n/a | [`0xc2dda4...8698e1`](./contracts/ethereum-1/0xc2dda4d6ca0e2728bdc7b0a738d4664bf58698e1/) | ⚠️ Unaudited |
| MasterOracle | unknown | ethereum | n/a | [`0x80704a...4f46e2`](./contracts/ethereum-1/0x80704acdf97723963263c78f861f091ad04f46e2/) | ⚠️ Unaudited |
| MetAirdrop | unknown | ethereum | n/a | [`0x265714...842309`](./contracts/ethereum-1/0x265714b10b9309a8a7a505dbfa6cb6c39b842309/) | ⚠️ Unaudited |
| Metronome2 | unknown | ethereum | n/a | [`0x2ebd53...db89aa`](./contracts/ethereum-1/0x2ebd53d035150f328bd754d6dc66b99b0edb89aa/) | ⚠️ Unaudited |
| MetronomeGovernor | unknown | ethereum | n/a | [`0x4cfddc...3a34e9`](./contracts/ethereum-1/0x4cfddc60c932a2ea811ac63fb41efce95b3a34e9/) | ⚠️ Unaudited |
| MetronomeVotingPower | unknown | ethereum | n/a | [`0xfdcbf4...947de6`](./contracts/ethereum-1/0xfdcbf444e601319ebbbf9b5731ece81908947de6/) | ⚠️ Unaudited |
| MetronomeVotingPowerV2 | unknown | ethereum | n/a | [`0x119b9c...e5fb5f`](./contracts/ethereum-1/0x119b9ce7b2087153d02c8aa8f7dc914bb7e5fb5f/) | ⚠️ Unaudited |
| MiniArmyKnife | unknown | ethereum | n/a | [`0x583e49...48201a`](./contracts/ethereum-1/0x583e4938f95e75906b1b69514c9bf7ebc648201a/) | ⚠️ Unaudited |
| MockOracle | unknown | ethereum | n/a | [`0x4ff749...b5e984`](./contracts/ethereum-1/0x4ff7495004c01f6550ff753b0b726bfae2b5e984/) | ⚠️ Unaudited |
| MockVSP | unknown | ethereum | n/a | [`0x5cda65...5e3f97`](./contracts/ethereum-1/0x5cda6590162a095fd7c55b1482574dd8635e3f97/) | ⚠️ Unaudited |
| MStableTokenOracle | unknown | ethereum | n/a | [`0xffd74e...2dfd09`](./contracts/ethereum-1/0xffd74ecf5b4eec6eac2624764933fb5f2e2dfd09/) | ⚠️ Unaudited |
| MultiSend | unknown | ethereum | n/a | [`0x521dea...d4a5fb`](./contracts/ethereum-1/0x521dea8f06732e748598f2a65fc7d98849d4a5fb/) | ⚠️ Unaudited |
| NativeTokenGateway | unknown | ethereum | n/a | [`0x186df6...743aa6`](./contracts/ethereum-1/0x186df63e79a7089dbb325567f587ebb5a3743aa6/) | ⚠️ Unaudited |
| OFT | unknown | ethereum | n/a | [`0x06ea69...ad9f00`](./contracts/ethereum-1/0x06ea695b91700071b161a434fed42d1dcbad9f00/) | ⚠️ Unaudited |
| OFTAdapter | unknown | ethereum | n/a | [`0x010f0b...340e94`](./contracts/ethereum-1/0x010f0bd6576949e6ac6eea11ed8c535388340e94/) | ⚠️ Unaudited |
| Operator | unknown | ethereum | n/a | [`0xc06d63...bad360`](./contracts/ethereum-1/0xc06d6347915f6b5e9dbb53fe17b988b99dbad360/) | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | base | n/a | [`0x93dc5c...e435a5`](./contracts/base-8453/0x93dc5cb35627a759848c7a7f0079ea7b49e435a5/) | ⚠️ Unaudited |
| PerformanceFeePolicy | unknown | ethereum | n/a | [`0x073a51...c74c4a`](./contracts/ethereum-1/0x073a51b50f49a82345ef8c3ae1bb1cfc0bc74c4a/) | ⚠️ Unaudited |
| PingPong | unknown | ethereum | n/a | [`0x439780...2badaa`](./contracts/ethereum-1/0x43978097ce538cb9aa09d4a6532f2b68b62badaa/) | ⚠️ Unaudited |
| Pool | unknown | ethereum | n/a | [`0x029078...ed9b25`](./contracts/ethereum-1/0x029078cc02f74a77051bfde8757e3b828aed9b25/) | ⚠️ Unaudited |
| PoolAccountant | unknown | ethereum | n/a | [`0x0fae21...ff6e56`](./contracts/ethereum-1/0x0fae214b4e023e0fd5005f1be17e03a5eeff6e56/) | ⚠️ Unaudited |
| PoolAccountantUpgrader | unknown | base | n/a | [`0x31e41a...260e72`](./contracts/base-8453/0x31e41aa5eab8317187879c2f1a0e07de36260e72/) | ⚠️ Unaudited |
| PoolRegistry | unknown | ethereum | n/a | [`0x01491b...45ae65`](./contracts/ethereum-1/0x01491b3598a90c080b9429f9a86764fa6845ae65/) | ⚠️ Unaudited |
| PoolRegistryUpgrader | unknown | optimism | n/a | [`0x39f7fc...28af3d`](./contracts/optimism-10/0x39f7fc2ff177057bbb5b680a443e4118cc28af3d/) | ⚠️ Unaudited |
| PoolRegistryUpgraderV2 | unknown | optimism | n/a | [`0x997f6d...b92ffc`](./contracts/optimism-10/0x997f6dae65bb2de3824fd7425a82f93361b92ffc/) | ⚠️ Unaudited |
| PoolRewards | unknown | ethereum | n/a | [`0x10c72f...761919`](./contracts/ethereum-1/0x10c72fdedd8eb17916c362c33c0c453928761919/) | ⚠️ Unaudited |
| PoolRewardsUpgrader | unknown | ethereum | n/a | [`0x655845...e03d23`](./contracts/ethereum-1/0x655845ac2db0c1955815bdc33f0270bc37e03d23/) | ⚠️ Unaudited |
| PoolUpgrader | unknown | ethereum | n/a | [`0xcbf7f3...08b77b`](./contracts/ethereum-1/0xcbf7f35627073fa12d3d7ba17c5b2d1ff808b77b/) | ⚠️ Unaudited |
| PoolUpgraderV2 | unknown | ethereum | n/a | [`0x53bdb9...85fbf6`](./contracts/ethereum-1/0x53bdb9dd566e48ba35d8c2a1ecbc08274685fbf6/) | ⚠️ Unaudited |
| PoolUpgraderV3 | unknown | optimism | n/a | [`0x4ca141...0440c2`](./contracts/optimism-10/0x4ca1413ed3069c1a6aaac1152c3d205e9b0440c2/) | ⚠️ Unaudited |
| PositionRegistry | unknown | ethereum | n/a | [`0x1c8225...ef7435`](./contracts/ethereum-1/0x1c82257e30a73e268ec578f419f35dbce1ef7435/) | ⚠️ Unaudited |
| PriceProvidersAggregator | unknown | ethereum | n/a | [`0x32a21e...169a23`](./contracts/ethereum-1/0x32a21ec8ee93971d4b4093c0895fd841c7169a23/) | ⚠️ Unaudited |
| ProtocolTieredFeePolicy | unknown | ethereum | n/a | [`0x59633b...f76f40`](./contracts/ethereum-1/0x59633b825d4aa12cb0907616746d76dd88f76f40/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x262b12...853bdd`](./contracts/ethereum-1/0x262b12c5701ddf1edac2870ad6338d23d5853bdd/) | ⚠️ Unaudited |
| ProxyOFT | unknown | optimism | n/a | [`0x0ecc84...faa542`](./contracts/optimism-10/0x0ecc84da119bd5539dc489d4009106534cfaa542/) | ⚠️ Unaudited |
| ProxyOFTUpgrader | unknown | base | n/a | [`0x305b30...0da8c4`](./contracts/base-8453/0x305b30dc978e931642d243852b4aa5d31a0da8c4/) | ⚠️ Unaudited |
| ProxyOFTUpgraderV2 | unknown | optimism | n/a | [`0x0f6fd0...b8e866`](./contracts/optimism-10/0x0f6fd010da1e4184b129f00f2dc5b96c16b8e866/) | ⚠️ Unaudited |
| PullOracle | unknown | ethereum | n/a | [`0x1f278b...3dd351`](./contracts/ethereum-1/0x1f278b7eff04add48ff81ae1a01cbc178b3dd351/) | ⚠️ Unaudited |
| PythMainnetPriceProvider | unknown | ethereum | n/a | [`0x7c2d5b...14e85c`](./contracts/ethereum-1/0x7c2d5b1e7d7be588389bdb94138cc37dc014e85c/) | ⚠️ Unaudited |
| QuoterUpgrader | unknown | base | n/a | [`0xa3c6d5...57ef69`](./contracts/base-8453/0xa3c6d5e857943346b7f6dee3f3053df55357ef69/) | ⚠️ Unaudited |
| RariFuse8Eth | unknown | ethereum | n/a | [`0x82f53c...c3458a`](./contracts/ethereum-1/0x82f53ce55c412b7614beaca41ae7607405c3458a/) | ⚠️ Unaudited |
| RedstoneMainnetPriceProvider | unknown | ethereum | n/a | [`0x2e597e...eeac6e`](./contracts/ethereum-1/0x2e597e6c827a8527413c19065ec0725e03eeac6e/) | ⚠️ Unaudited |
| Rewards | unknown | ethereum | n/a | [`0x0d6d94...e43b97`](./contracts/ethereum-1/0x0d6d94f53c2ecb24f3c632745a535a947ee43b97/) | ⚠️ Unaudited |
| RewardsDistributor | unknown | ethereum | n/a | [`0x025347...7bcad7`](./contracts/ethereum-1/0x025347f4cc7865068de5a139951411084e7bcad7/) | ⚠️ Unaudited |
| RewardsDistributorUpgrader | unknown | ethereum | n/a | [`0x3e117b...a9443f`](./contracts/ethereum-1/0x3e117b75bd4bad788abed416ff11360190a9443f/) | ⚠️ Unaudited |
| RewardsUpgrader | unknown | ethereum | n/a | [`0x2bdba0...7553f2`](./contracts/ethereum-1/0x2bdba054af6b11c85428cd817d55355b487553f2/) | ⚠️ Unaudited |
| RoutedSwapper | unknown | ethereum | n/a | [`0x2f8b10...dd1745`](./contracts/ethereum-1/0x2f8b104748a0ad707ae610d0ce97686cb4dd1745/) | ⚠️ Unaudited |
| SiUsdTokenOracle | unknown | ethereum | n/a | [`0x37d8c0...74d931`](./contracts/ethereum-1/0x37d8c0afeef48aa9d925475cf6c73e4d8c74d931/) | ⚠️ Unaudited |
| SmartFarmingManager | unknown | base | n/a | [`0x0d29f7...f5819a`](./contracts/base-8453/0x0d29f7cd7ec338528f4330c5a7ff6d92acf5819a/) | ⚠️ Unaudited |
| SmartFarmingManagerUpgrader | unknown | base | n/a | [`0x720501...1efb70`](./contracts/base-8453/0x720501250d7937ac3b6b308e24466c03a61efb70/) | ⚠️ Unaudited |
| SonneVesperXy | unknown | optimism | n/a | [`0x4fd493...1a181b`](./contracts/optimism-10/0x4fd49322ccc93078baf8011b70abc58ffe1a181b/) | ⚠️ Unaudited |
| StableCoinProvider | unknown | ethereum | n/a | [`0x091f06...486cda`](./contracts/ethereum-1/0x091f06081ac7083a27a966d466e04cafec486cda/) | ⚠️ Unaudited |
| Swapper | unknown | ethereum | n/a | [`0x229f19...cd56a5`](./contracts/ethereum-1/0x229f19942612a8dbdec3643cb23f88685ccd56a5/) | ⚠️ Unaudited |
| SwapperUpgrader | unknown | ethereum | n/a | [`0xbde032...d2b2d6`](./contracts/ethereum-1/0xbde032fdf114b4005e5320881b96246347d2b2d6/) | ⚠️ Unaudited |
| SynthAdapter | unknown | ethereum | n/a | [`0x4a7317...8d5794`](./contracts/ethereum-1/0x4a731710215fd4b437ad0d181650cba3ba8d5794/) | ⚠️ Unaudited |
| SyntheticToken | unknown | ethereum | n/a | [`0x105ba4...27debf`](./contracts/ethereum-1/0x105ba4f5fa3f2a7b71582f97b77036089a27debf/) | ⚠️ Unaudited |
| SyntheticTokenUpgrader | unknown | optimism | n/a | [`0x76d20a...bf3256`](./contracts/optimism-10/0x76d20a609a9dc010b9e6d479c360458b19bf3256/) | ⚠️ Unaudited |
| SyntheticTokenUpgraderV2 | unknown | optimism | n/a | [`0xc44f15...ce8cc3`](./contracts/optimism-10/0xc44f15dde7b39da0e687a86b3201b4c8e8ce8cc3/) | ⚠️ Unaudited |
| SynthUsdTokenOracle | unknown | ethereum | n/a | [`0x00518d...311cd5`](./contracts/ethereum-1/0x00518d6e7a7589e4de60899966e4ea6d5b311cd5/) | ⚠️ Unaudited |
| TBYOracle | unknown | ethereum | n/a | [`0x21ce81...f9b4a3`](./contracts/ethereum-1/0x21ce811b3ee51344bf9c2d3595dae56960f9b4a3/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x051e40...5ea7b9`](./contracts/ethereum-1/0x051e40d0d7639cfb611b37e6dde25999685ea7b9/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x4c5108...fb7775`](./contracts/ethereum-1/0x4c510878b907d6ddf69e6057ad2f865f60fb7775/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x2f4f85...d73e3d`](./contracts/base-8453/0x2f4f85be85245c91779c3e36cbddf87b4ed73e3d/) | ⚠️ Unaudited |
| Treasury | unknown | optimism | n/a | [`0x12e484...81c723`](./contracts/optimism-10/0x12e4844258f76c07c6e4437d6c9ba3df7d81c723/) | ⚠️ Unaudited |
| TreasuryUpgrader | unknown | base | n/a | [`0x0efbfe...e120fc`](./contracts/base-8453/0x0efbfe4979da0cb457a6a80db6f3da6861e120fc/) | ⚠️ Unaudited |
| UniswapV2LikePriceProvider | unknown | ethereum | n/a | [`0x790e5f...e36acb`](./contracts/ethereum-1/0x790e5f103ab69122fc5d9a3d5216fad11fe36acb/) | ⚠️ Unaudited |
| USDPeggedTokenOracle | unknown | ethereum | n/a | [`0x278957...3bafb1`](./contracts/ethereum-1/0x278957e88bdba45442acc49e07ac143d893bafb1/) | ⚠️ Unaudited |
| VesperAdapter | unknown | ethereum | n/a | [`0x639c9e...cf9531`](./contracts/ethereum-1/0x639c9e4563a0ca81a1fee7d6b48128daf2cf9531/) | ⚠️ Unaudited |
| VesperBridgeStrategy | unknown | ethereum | n/a | [`0x1cbb7b...c2b9b5`](./contracts/ethereum-1/0x1cbb7b6190bb2721e2b658e315692bd98cc2b9b5/) | ⚠️ Unaudited |
| VesperEarn | unknown | ethereum | n/a | [`0xfd3783...41f661`](./contracts/ethereum-1/0xfd3783586abde50e7b03c171bd1062354641f661/) | ⚠️ Unaudited |
| VesperEarnDrip | unknown | ethereum | n/a | [`0x285a45...9f6dbb`](./contracts/ethereum-1/0x285a45c29a738dbc5bc092daed3efa5c579f6dbb/) | ⚠️ Unaudited |
| VesperEarnSaddleLp | unknown | ethereum | n/a | [`0x15911b...703f8a`](./contracts/ethereum-1/0x15911b4b6fbdb83967919e2e2cd6259d7e703f8a/) | ⚠️ Unaudited |
| VesperIronBankXYStrategy | unknown | ethereum | n/a | [`0x79d198...63828a`](./contracts/ethereum-1/0x79d198221d0bb53a1f03491ae902eb0dac63828a/) | ⚠️ Unaudited |
| VesperVotingPowerV2 | unknown | ethereum | n/a | [`0xd74432...4d5b30`](./contracts/ethereum-1/0xd744320abd3bd4445dc3c90c889391bd454d5b30/) | ⚠️ Unaudited |
| VesperVotingPowerV3 | unknown | ethereum | n/a | [`0x707c24...412075`](./contracts/ethereum-1/0x707c243b59fedf29730cd3d1025fbeeea0412075/) | ⚠️ Unaudited |
| VETH | unknown | ethereum | n/a | [`0x951397...3cca8c`](./contracts/ethereum-1/0x951397286e4b78ae5827502ed494d7902d3cca8c/) | ⚠️ Unaudited |
| VetroArbitrage | unknown | ethereum | n/a | [`0x359902...982914`](./contracts/ethereum-1/0x359902b1e60574e56248ecdc57c1df1f20982914/) | ⚠️ Unaudited |
| VPool | unknown | ethereum | n/a | [`0x4dbe3f...30aa7b`](./contracts/ethereum-1/0x4dbe3f01abe271d3e65432c74851625a8c30aa7b/) | ⚠️ Unaudited |
| VPoolTokenOracle | unknown | ethereum | n/a | [`0xc6a57e...16cd2e`](./contracts/ethereum-1/0xc6a57ed64e1b703a7250a04f0a90f5e0a116cd2e/) | ⚠️ Unaudited |
| VPoolUpgrader | unknown | ethereum | n/a | [`0x582ebf...9e0446`](./contracts/ethereum-1/0x582ebf6d677d54d54bd26980d076047fcb9e0446/) | ⚠️ Unaudited |
| VspMainnetOracle | unknown | ethereum | n/a | [`0x4ff907...c0f538`](./contracts/ethereum-1/0x4ff907f877e92ef39cdfba6d0db73e9e2ac0f538/) | ⚠️ Unaudited |
| VspMinter | unknown | ethereum | n/a | [`0xcf10c3...303e1e`](./contracts/ethereum-1/0xcf10c379ddf728b8c9c55eb7ba2d8a0795303e1e/) | ⚠️ Unaudited |
| VUSDArbitrage | unknown | ethereum | n/a | [`0x1c17cc...ff310a`](./contracts/ethereum-1/0x1c17cc10ddc5b352f7c6c5dda33b07769bff310a/) | ⚠️ Unaudited |
| WETHAdapter | unknown | ethereum | n/a | [`0x4eb9ab...9fb88c`](./contracts/ethereum-1/0x4eb9ab57844d7f36ecef07568e30e13a6d9fb88c/) | ⚠️ Unaudited |

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
| [Metronome Contracts Audit _ Revision.pdf](https://github.com/autonomoussoftware/metronome-audits/blob/master/Metronome%20Contracts%20Audit%20_%20Revision.pdf) | unknown | Audit | 2018-06 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 130 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Fork inheritance lineage and inherited audits are included when available.
