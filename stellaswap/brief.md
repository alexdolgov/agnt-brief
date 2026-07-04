# Agentic Audit Brief: StellaSwap

## Project Overview

- Project: StellaSwap (`stellaswap`)
- Website: [https://stellaswap.com](https://stellaswap.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.929Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: moonbeam
- Contract surface: 87 unique implementations (87 raw deployments)
- DeFi Llama TVL: $417,543.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 86 project-authored contract(s) across 1 chain(s); 14 ERC20 tokens, 2 ERC721 NFTs, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 23 common project-authored base contract(s) (proxy, erc1967upgrade, ownableupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 87; live-surface contracts included: 87 (87 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 16/74 (21.6%)
- Deployed-live implementations: 87 of 87 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 17/87
- Verified + Unaudited implementations: 70
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 87
- Raw deployments: 87
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- Active bug bounty: CertiK ([program](https://2598174527-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fk79kvXbQmvjLmP78Scbp%2Fuploads%2Ft3l7dQ9CV3XBe5ByzBWo%2FCertik%20Full%20Audit.pdf))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 17 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 9 | 10.3% | 2022-03 |
| SolidProof | Tier 2 | 5 | 5.7% | 2022-04 |
| ABDK | Tier 2 | 2 | 2.3% | 2022-07 |
| AstraSec | Tier 2 | 1 | 1.1% | 2025-09 |
| Hexens | Tier 2 | 1 | 1.1% | 2022-08 |

## Contract Surface

### ✅ Verified + Audited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraFactory | unknown | moonbeam | n/a | [`0x02c8a6...73fedc`](./contracts/moonbeam-1284/0x02c8a6bbdda6e51f2a721dcb7d259f8f1d73fedc/) | ✅ Audited |
| AlgebraPoolDeployer | unknown | moonbeam | n/a | [`0x01821b...d45c14`](./contracts/moonbeam-1284/0x01821b961b6191efc71a1db38b8644d3d3d45c14/) | ✅ Audited |
| AmplificationUtils | unknown | moonbeam | n/a | [`0x1e6dde...bfbdb4`](./contracts/moonbeam-1284/0x1e6dde8c277b64e9960cf383ef48fe2112bfbdb4/) | ✅ Audited |
| GasSwap | unknown | moonbeam | n/a | [`0x891220...700abb`](./contracts/moonbeam-1284/0x891220b8c2134a29813dc27c113ebf2bfb700abb/) | ✅ Audited |
| Ledger | unknown | moonbeam | n/a | [`0xde5925...a9ce40`](./contracts/moonbeam-1284/0xde5925dc4fb300c886330de31e19826f22a9ce40/) | ✅ Audited |
| LPToken | unknown | moonbeam | n/a | [`0x09af4b...55febb`](./contracts/moonbeam-1284/0x09af4b478aea7aa6dd06b83b67eae74a4f55febb/) | ✅ Audited |
| Multicall | unknown | moonbeam | n/a | [`0x83e3b6...f7f36b`](./contracts/moonbeam-1284/0x83e3b61886770de2f64aacad2724ed4f08f7f36b/) | ✅ Audited |
| Router | unknown | moonbeam | n/a | [`0xb0dfd6...ffa9cc`](./contracts/moonbeam-1284/0xb0dfd6f3fddb219e60fcdc1ea3d04b22f2ffa9cc/) | ✅ Audited |
| Stella | unknown | moonbeam | n/a | [`0x0e3588...4c88d2`](./contracts/moonbeam-1284/0x0e358838ce72d5e61e0018a2ffac4bec5f4c88d2/) | ✅ Audited |
| StellaDistributor | unknown | moonbeam | n/a | [`0x8d22d5...c07325`](./contracts/moonbeam-1284/0x8d22d5a8a9962fb563909d4a8b37429f51c07325/) | ✅ Audited |
| StellaSwapV2Factory | unknown | moonbeam | n/a | [`0x68a384...dacc0e`](./contracts/moonbeam-1284/0x68a384d826d3678f78bb9fb1533c7e9577dacc0e/) | ✅ Audited |
| StellaSwapV2Pair | unknown | moonbeam | n/a | [`0x051fcf...8d8a85`](./contracts/moonbeam-1284/0x051fcf8986b30860a1341e0031e5622bd18d8a85/) | ✅ Audited |
| StellaSwapV2Router02 | unknown | moonbeam | n/a | [`0x70085a...83bb57`](./contracts/moonbeam-1284/0x70085a09d30d6f8c4ecf6ee10120d1847383bb57/) | ✅ Audited |
| StellaVault | unknown | moonbeam | n/a | [`0x54e2d1...e243fe`](./contracts/moonbeam-1284/0x54e2d14df9348b3fba7e372328595b9f3ae243fe/) | ✅ Audited |
| SwapFlashLoan | unknown | moonbeam | n/a | [`0x5c3dc0...3fd8ec`](./contracts/moonbeam-1284/0x5c3dc0ab1bd70c5cdc8d0865e023164d4d3fd8ec/) | ✅ Audited |
| SwapUtils | unknown | moonbeam | n/a | [`0x22bcc4...6f1ded`](./contracts/moonbeam-1284/0x22bcc43ba85dd1cb9630e5c422d8006dc16f1ded/) | ✅ Audited |
| Timelock | unknown | moonbeam | n/a | [`0xc6f73b...6522fb`](./contracts/moonbeam-1284/0xc6f73b028cd3154a5bb87f49aa43aa259a6522fb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (70)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Aggregator | unknown | moonbeam | n/a | [`0x6f6a02...53a66c`](./contracts/moonbeam-1284/0x6f6a028e365ad617c6ab51b96a800f3e6053a66c/) | ⚠️ Unaudited |
| AggregatorV3 | unknown | moonbeam | n/a | [`0x80a04f...ec2336`](./contracts/moonbeam-1284/0x80a04f0e5a43c2d14f66ee7aba86945ce1ec2336/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | moonbeam | n/a | [`0xd4b2b7...1a5279`](./contracts/moonbeam-1284/0xd4b2b7dc9bc1c47852851f4c5dc345eaba1a5279/) | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | unknown | moonbeam | n/a | [`0x24d357...3d6e96`](./contracts/moonbeam-1284/0x24d357c3deda4f412a4d7b5e0db5f8e4a63d6e96/) | ⚠️ Unaudited |
| AlgebraLimitFarming | unknown | moonbeam | n/a | [`0xf722a2...1c3ff5`](./contracts/moonbeam-1284/0xf722a295abd8cfb691c78dd9b6699701491c3ff5/) | ⚠️ Unaudited |
| AnycallExecutor | unknown | moonbeam | n/a | [`0x750bfe...5db638`](./contracts/moonbeam-1284/0x750bfe8490175c2a9a9387b19aa2aae2d75db638/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | moonbeam | n/a | [`0x3405a1...026e45`](./contracts/moonbeam-1284/0x3405a1bd46b85c5c029483fbecf2f3e611026e45/) | ⚠️ Unaudited |
| AnyswapV6ERC20 | unknown | moonbeam | n/a | [`0x3d632d...748377`](./contracts/moonbeam-1284/0x3d632d9e1a60a0880dd45e61f279d919b5748377/) | ⚠️ Unaudited |
| AvaxILO | unknown | moonbeam | n/a | [`0x96bef4...b243e8`](./contracts/moonbeam-1284/0x96bef4719ae7c053113292e6aa7fc36e62b243e8/) | ⚠️ Unaudited |
| Bridge | unknown | moonbeam | n/a | [`0x841ce4...d0738c`](./contracts/moonbeam-1284/0x841ce48f9446c8e281d3f1444cb859b4a6d0738c/) | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | unknown | moonbeam | n/a | [`0x085416...231f62`](./contracts/moonbeam-1284/0x085416975fe14c2a731a97ec38b9bf8135231f62/) | ⚠️ Unaudited |
| ComboOracle | unknown | moonbeam | n/a | [`0x247a32...b5c9e2`](./contracts/moonbeam-1284/0x247a323daa63cc97c2bad61b4d6f1e0120b5c9e2/) | ⚠️ Unaudited |
| ComboOracle_UniV2_UniV3 | unknown | moonbeam | n/a | [`0x6e6d21...eb8723`](./contracts/moonbeam-1284/0x6e6d21b807a8493b40ae9f279cd5252c40eb8723/) | ⚠️ Unaudited |
| ComboOracle_UniV2_UniV3_Zenlink | unknown | moonbeam | n/a | [`0x4a4019...f18161`](./contracts/moonbeam-1284/0x4a40198373de481741bdf629b44dc98f12f18161/) | ⚠️ Unaudited |
| ComplexRewarderPerSecV2 | unknown | moonbeam | n/a | [`0x05ad30...c0c66c`](./contracts/moonbeam-1284/0x05ad30253f0b20be35d84253d6aca8bd7ec0c66c/) | ⚠️ Unaudited |
| Controller | unknown | moonbeam | n/a | [`0x27771a...de9600`](./contracts/moonbeam-1284/0x27771aa5fa0f2c9ab5a1caea804d659e59de9600/) | ⚠️ Unaudited |
| CrossChainBridgeBacker_MNBM_Nomad | unknown | moonbeam | n/a | [`0x58fb43...1e45dd`](./contracts/moonbeam-1284/0x58fb43988ce99da388b1183a36264ea1161e45dd/) | ⚠️ Unaudited |
| CrossChainCanonicalFRAX | unknown | moonbeam | n/a | [`0x322e86...b33bfb`](./contracts/moonbeam-1284/0x322e86852e492a7ee17f28a78c663da38fb33bfb/) | ⚠️ Unaudited |
| CrossChainCanonicalFXS | unknown | moonbeam | n/a | [`0x2cc0a9...8aaa1c`](./contracts/moonbeam-1284/0x2cc0a9d8047a5011defe85328a6f26968c8aaa1c/) | ⚠️ Unaudited |
| CrossChainCanonicalV2 | unknown | moonbeam | n/a | [`0x82bbd1...08be99`](./contracts/moonbeam-1284/0x82bbd1b6f6de2b7bb63d3e1546e6b1553508be99/) | ⚠️ Unaudited |
| CrossChainOracle | unknown | moonbeam | n/a | [`0xd4a2c3...1e06fc`](./contracts/moonbeam-1284/0xd4a2c3abbf2d80e38dbe29f45bde3834a31e06fc/) | ⚠️ Unaudited |
| CrossChainOracleSingleAsset | unknown | moonbeam | n/a | [`0x973771...13cddc`](./contracts/moonbeam-1284/0x973771645a89ddb6a956e3a4d92409bcc013cddc/) | ⚠️ Unaudited |
| CrossChainOracleSingleAssetV2 | unknown | moonbeam | n/a | [`0xb2d736...68ba8f`](./contracts/moonbeam-1284/0xb2d7367643ca6ef2af562a6c3b288adfce68ba8f/) | ⚠️ Unaudited |
| EditableERC20 | unknown | moonbeam | n/a | [`0x3f56e0...3dea0d`](./contracts/moonbeam-1284/0x3f56e0c36d275367b8c502090edf38289b3dea0d/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | moonbeam | n/a | [`0x109936...265025`](./contracts/moonbeam-1284/0x1099367bbd6c9ff9d26de67ae67a03a2e1265025/) | ⚠️ Unaudited |
| FarmingCenter | unknown | moonbeam | n/a | [`0x0d4f8a...90e6e5`](./contracts/moonbeam-1284/0x0d4f8a55a5b2583189468ca3b0a32d972f90e6e5/) | ⚠️ Unaudited |
| GasClaim | unknown | moonbeam | n/a | [`0x979176...1d4b04`](./contracts/moonbeam-1284/0x9791767917ba1cffac79736108622a66fe1d4b04/) | ⚠️ Unaudited |
| IDOLocker | unknown | moonbeam | n/a | [`0x470246...432d6c`](./contracts/moonbeam-1284/0x470246339f546f2de55a0d1ae6e9d6b458432d6c/) | ⚠️ Unaudited |
| IDOSale | unknown | moonbeam | n/a | [`0x31be00...b215ea`](./contracts/moonbeam-1284/0x31be00eba66b0e108ce3462d39920ac8ecb215ea/) | ⚠️ Unaudited |
| IDOSaleV2 | unknown | moonbeam | n/a | [`0x24f193...806836`](./contracts/moonbeam-1284/0x24f193ce3114b9e085928ba10c315a7fd7806836/) | ⚠️ Unaudited |
| LedgerBeacon | unknown | moonbeam | n/a | [`0xb7c3e2...719752`](./contracts/moonbeam-1284/0xb7c3e26785cbf145ed77b86d281817bafb719752/) | ⚠️ Unaudited |
| LedgerFactory | unknown | moonbeam | n/a | [`0xa73209...1f2c68`](./contracts/moonbeam-1284/0xa732097e1c284fc4e64f077dd5360da81e1f2c68/) | ⚠️ Unaudited |
| MerklAirdrop | unknown | moonbeam | n/a | [`0x4c2e05...62d433`](./contracts/moonbeam-1284/0x4c2e056d55009d9f3b38b7f4a036122ec262d433/) | ⚠️ Unaudited |
| MintSwapCanonicalToken | unknown | moonbeam | n/a | [`0x3795c3...b60283`](./contracts/moonbeam-1284/0x3795c36e7d12a8c252a20c5a7b455f7c57b60283/) | ⚠️ Unaudited |
| MockSender | unknown | moonbeam | n/a | [`0xd1ad4e...d09c11`](./contracts/moonbeam-1284/0xd1ad4e6accaedc745293d176cfb367aaf3d09c11/) | ⚠️ Unaudited |
| Multicall2 | unknown | moonbeam | n/a | [`0x647720...897bb2`](./contracts/moonbeam-1284/0x6477204e12a7236b9619385ea453f370ad897bb2/) | ⚠️ Unaudited |
| Nimbus | unknown | moonbeam | n/a | [`0x613a34...7bef38`](./contracts/moonbeam-1284/0x613a34e920badab2636aa8d487cbf082657bef38/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | moonbeam | n/a | [`0x1ff2ad...eda03a`](./contracts/moonbeam-1284/0x1ff2adaa387dd27c22b31086e658108588eda03a/) | ⚠️ Unaudited |
| OffchainHelper | unknown | moonbeam | n/a | [`0xa0f2d9...1c57d2`](./contracts/moonbeam-1284/0xa0f2d90bbdb0c57bc65e07203d9d863fb81c57d2/) | ⚠️ Unaudited |
| Oracle | unknown | moonbeam | n/a | [`0x0fa8cd...f2f079`](./contracts/moonbeam-1284/0x0fa8cde3e0cddf150d79add0f3d63cb6e0f2f079/) | ⚠️ Unaudited |
| OracleMaster | unknown | moonbeam | n/a | [`0x0fbe98...d1af57`](./contracts/moonbeam-1284/0x0fbe981966da95b801d68394dbf0d9ff72d1af57/) | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | moonbeam | n/a | [`0xbb7684...1ad573`](./contracts/moonbeam-1284/0xbb7684cc5408f4dd0921e5c2cadd547b8f1ad573/) | ⚠️ Unaudited |
| Permit2 | unknown | moonbeam | n/a | [`0x780bb4...628f94`](./contracts/moonbeam-1284/0x780bb49350800b37fb40a2598617439d06628f94/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | moonbeam | n/a | [`0x4e6e2d...b7f811`](./contracts/moonbeam-1284/0x4e6e2d3a10df5b1c33e118b173cc24c5f1b7f811/) | ⚠️ Unaudited |
| PulsarFeeShare | unknown | moonbeam | n/a | [`0xccaa28...c062e2`](./contracts/moonbeam-1284/0xccaa28be22d041c1b409933a292cf174efc062e2/) | ⚠️ Unaudited |
| Quoter | unknown | moonbeam | n/a | [`0x47ff28...44c10f`](./contracts/moonbeam-1284/0x47ff289a94c36c80cde7c86756097ed70144c10f/) | ⚠️ Unaudited |
| RewarderBeacon | unknown | moonbeam | n/a | [`0x2d1ffa...bdfc26`](./contracts/moonbeam-1284/0x2d1ffa97d1013cefec277ec15417ba8163bdfc26/) | ⚠️ Unaudited |
| RewarderFactory | unknown | moonbeam | n/a | [`0x9a0b83...0290aa`](./contracts/moonbeam-1284/0x9a0b83dfe94767c1f72386c0df2f1f52480290aa/) | ⚠️ Unaudited |
| RewarderV4 | unknown | moonbeam | n/a | [`0x1c9b96...924ac8`](./contracts/moonbeam-1284/0x1c9b96fdf05284db50a21de11557aa84fb924ac8/) | ⚠️ Unaudited |
| Sentinel | unknown | moonbeam | n/a | [`0x0394c5...48481f`](./contracts/moonbeam-1284/0x0394c51d750e32f252d8a3f3d8670d958948481f/) | ⚠️ Unaudited |
| setNumberContract | unknown | moonbeam | n/a | [`0x70755c...60803f`](./contracts/moonbeam-1284/0x70755c95cad4d6917c51e49d4fbc932efd60803f/) | ⚠️ Unaudited |
| SetText | unknown | moonbeam | n/a | [`0x65bf1e...d1d27e`](./contracts/moonbeam-1284/0x65bf1e4a5af9939549afc7c8e9d2438f5ed1d27e/) | ⚠️ Unaudited |
| StellaDistributorV2 | unknown | moonbeam | n/a | [`0x7115f0...29d725`](./contracts/moonbeam-1284/0x7115f071d46ea6661ca49b92cfca07507b29d725/) | ⚠️ Unaudited |
| StellaILO | unknown | moonbeam | n/a | [`0x096352...9a8ad8`](./contracts/moonbeam-1284/0x096352f7ea415a336b41fc48b33142eff19a8ad8/) | ⚠️ Unaudited |
| StellaLocker | unknown | moonbeam | n/a | [`0x899506...7a0b58`](./contracts/moonbeam-1284/0x8995066b7f1fb3abe3c88040b677d03d607a0b58/) | ⚠️ Unaudited |
| SwapRouter | unknown | moonbeam | n/a | [`0x686967...9376b3`](./contracts/moonbeam-1284/0x686967bb5a0c8a115b70215827e5aa7f5d9376b3/) | ⚠️ Unaudited |
| TimelockController | unknown | moonbeam | n/a | [`0x12c747...b36546`](./contracts/moonbeam-1284/0x12c7472af722c97e34e04c952a6e354d16b36546/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | moonbeam | n/a | [`0x002d34...cd254f`](./contracts/moonbeam-1284/0x002d34d6a1b4a8e665fec43fd5d923f4d7cd254f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | moonbeam | n/a | [`0x0e4cae...8be0cb`](./contracts/moonbeam-1284/0x0e4caef48de8fec07b7dfeae8d73848aaa8be0cb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | moonbeam | n/a | [`0x21b23c...940819`](./contracts/moonbeam-1284/0x21b23cb583056d10d81378ede349086fa1940819/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | moonbeam | n/a | [`0x5927e3...830263`](./contracts/moonbeam-1284/0x5927e31cd0b8213892fb0c44f7c1c94dcb830263/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | moonbeam | n/a | [`0x707f4e...2bc680`](./contracts/moonbeam-1284/0x707f4e56829a6b81b0dcf8af7aa4d89f3b2bc680/) | ⚠️ Unaudited |
| UpgradeBeaconProxy | unknown | moonbeam | n/a | [`0x1dc78a...6d95e0`](./contracts/moonbeam-1284/0x1dc78acda13a8bc4408b207c9e48cdbc096d95e0/) | ⚠️ Unaudited |
| V3Migrator | unknown | moonbeam | n/a | [`0xb4630a...4490ad`](./contracts/moonbeam-1284/0xb4630acbab32254cd42728d2a1851c88604490ad/) | ⚠️ Unaudited |
| WETH9 | unknown | moonbeam | n/a | [`0xacc15d...c6077f`](./contracts/moonbeam-1284/0xacc15dc74880c9944775448304b263d191c6077f/) | ⚠️ Unaudited |
| Withdrawal | unknown | moonbeam | n/a | [`0x83f3fa...b7fb4d`](./contracts/moonbeam-1284/0x83f3fab4ad705eed9beb410a6f189d6516b7fb4d/) | ⚠️ Unaudited |
| XC20 | unknown | moonbeam | n/a | [`0xffffff...899abf`](./contracts/moonbeam-1284/0xffffffff15e1b7e3df971dd813bc394deb899abf/) | ⚠️ Unaudited |
| XStella | unknown | moonbeam | n/a | [`0x06a3b4...b6a080`](./contracts/moonbeam-1284/0x06a3b410b681c82417a906993acefb91bab6a080/) | ⚠️ Unaudited |
| Zap | unknown | moonbeam | n/a | [`0x01834c...d140df`](./contracts/moonbeam-1284/0x01834cf26717f0351d9762cc9cca7dc059d140df/) | ⚠️ Unaudited |
| ZapHelper | unknown | moonbeam | n/a | [`0xe5870c...e130d1`](./contracts/moonbeam-1284/0xe5870c6770d86d1cb91bb782986abf607be130d1/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/stellaswap) | CertiK | Audit | 2022-01 | stale | Direct | contract_name | 1 | medium |
| [SolidProof Audit Report](https://github.com/solidproof/smart-contract-audits/blob/main/SmartContract_Audit_Solidproof_StellaSwap.pdf) | SolidProof | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [<>](https://code4rena.com/audits/2022-09-quickswap-and-stellaswap-contest) | Code4rena | Contest | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [<>](https://github.com/astrasecai/audit-reports/blob/main/AstraSec-AuditReport-StellaSwap-stGLMR.pdf) | AstraSec | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |
| [Certik Full Audit Report](https://2598174527-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fk79kvXbQmvjLmP78Scbp%2Fuploads%2Ft3l7dQ9CV3XBe5ByzBWo%2FCertik%20Full%20Audit.pdf) | CertiK | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [SolidProof Stable AMM Audit Report (also discovered via alternate URL)](https://2598174527-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fk79kvXbQmvjLmP78Scbp%2Fuploads%2FmMbSu0hMsw6p30u3UcEZ%2FSmartContract_Audit_Solidproof_StellaSwap_Stable%20AMM.pdf) | SolidProof | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Certik Full Audit.pdf](https://2469068479-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fk79kvXbQmvjLmP78Scbp%2Fuploads%2FQolsnfHM3bYqao9tSFVo%2FCertik%20Full%20Audit.pdf) | CertiK | Audit | 2022-03 | stale | Direct | contract_name | 9 | high |
| [ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf](https://2469068479-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fk79kvXbQmvjLmP78Scbp%2Fuploads%2F5K9S1GSebC89zJKD1nRZ%2FABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a%20(1).pdf) | ABDK | Audit | 2022-07 | stale | Direct | contract_name | 2 | high |
| [Hexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf](https://2469068479-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fk79kvXbQmvjLmP78Scbp%2Fuploads%2FsmgxZ9HS2yRnWC1MiMps%2FHexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf) | Hexens | Audit | 2022-08 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonbeam | [`0x6f6a02...53a66c`](./contracts/moonbeam-1284/0x6f6a028e365ad617c6ab51b96a800f3e6053a66c/) | Aggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x80a04f...ec2336`](./contracts/moonbeam-1284/0x80a04f0e5a43c2d14f66ee7aba86945ce1ec2336/) | AggregatorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xd4b2b7...1a5279`](./contracts/moonbeam-1284/0xd4b2b7dc9bc1c47852851f4c5dc345eaba1a5279/) | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x24d357...3d6e96`](./contracts/moonbeam-1284/0x24d357c3deda4f412a4d7b5e0db5f8e4a63d6e96/) | AlgebraInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xf722a2...1c3ff5`](./contracts/moonbeam-1284/0xf722a295abd8cfb691c78dd9b6699701491c3ff5/) | AlgebraLimitFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x750bfe...5db638`](./contracts/moonbeam-1284/0x750bfe8490175c2a9a9387b19aa2aae2d75db638/) | AnycallExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x96bef4...b243e8`](./contracts/moonbeam-1284/0x96bef4719ae7c053113292e6aa7fc36e62b243e8/) | AvaxILO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x841ce4...d0738c`](./contracts/moonbeam-1284/0x841ce48f9446c8e281d3f1444cb859b4a6d0738c/) | Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x085416...231f62`](./contracts/moonbeam-1284/0x085416975fe14c2a731a97ec38b9bf8135231f62/) | BurnableMintableCappedERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x247a32...b5c9e2`](./contracts/moonbeam-1284/0x247a323daa63cc97c2bad61b4d6f1e0120b5c9e2/) | ComboOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x6e6d21...eb8723`](./contracts/moonbeam-1284/0x6e6d21b807a8493b40ae9f279cd5252c40eb8723/) | ComboOracle_UniV2_UniV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x4a4019...f18161`](./contracts/moonbeam-1284/0x4a40198373de481741bdf629b44dc98f12f18161/) | ComboOracle_UniV2_UniV3_Zenlink | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x05ad30...c0c66c`](./contracts/moonbeam-1284/0x05ad30253f0b20be35d84253d6aca8bd7ec0c66c/) | ComplexRewarderPerSecV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x27771a...de9600`](./contracts/moonbeam-1284/0x27771aa5fa0f2c9ab5a1caea804d659e59de9600/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x58fb43...1e45dd`](./contracts/moonbeam-1284/0x58fb43988ce99da388b1183a36264ea1161e45dd/) | CrossChainBridgeBacker_MNBM_Nomad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x322e86...b33bfb`](./contracts/moonbeam-1284/0x322e86852e492a7ee17f28a78c663da38fb33bfb/) | CrossChainCanonicalFRAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x2cc0a9...8aaa1c`](./contracts/moonbeam-1284/0x2cc0a9d8047a5011defe85328a6f26968c8aaa1c/) | CrossChainCanonicalFXS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x82bbd1...08be99`](./contracts/moonbeam-1284/0x82bbd1b6f6de2b7bb63d3e1546e6b1553508be99/) | CrossChainCanonicalV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xd4a2c3...1e06fc`](./contracts/moonbeam-1284/0xd4a2c3abbf2d80e38dbe29f45bde3834a31e06fc/) | CrossChainOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x973771...13cddc`](./contracts/moonbeam-1284/0x973771645a89ddb6a956e3a4d92409bcc013cddc/) | CrossChainOracleSingleAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xb2d736...68ba8f`](./contracts/moonbeam-1284/0xb2d7367643ca6ef2af562a6c3b288adfce68ba8f/) | CrossChainOracleSingleAssetV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x3f56e0...3dea0d`](./contracts/moonbeam-1284/0x3f56e0c36d275367b8c502090edf38289b3dea0d/) | EditableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0d4f8a...90e6e5`](./contracts/moonbeam-1284/0x0d4f8a55a5b2583189468ca3b0a32d972f90e6e5/) | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x979176...1d4b04`](./contracts/moonbeam-1284/0x9791767917ba1cffac79736108622a66fe1d4b04/) | GasClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x470246...432d6c`](./contracts/moonbeam-1284/0x470246339f546f2de55a0d1ae6e9d6b458432d6c/) | IDOLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x31be00...b215ea`](./contracts/moonbeam-1284/0x31be00eba66b0e108ce3462d39920ac8ecb215ea/) | IDOSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x24f193...806836`](./contracts/moonbeam-1284/0x24f193ce3114b9e085928ba10c315a7fd7806836/) | IDOSaleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xb7c3e2...719752`](./contracts/moonbeam-1284/0xb7c3e26785cbf145ed77b86d281817bafb719752/) | LedgerBeacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xa73209...1f2c68`](./contracts/moonbeam-1284/0xa732097e1c284fc4e64f077dd5360da81e1f2c68/) | LedgerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x4c2e05...62d433`](./contracts/moonbeam-1284/0x4c2e056d55009d9f3b38b7f4a036122ec262d433/) | MerklAirdrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x3795c3...b60283`](./contracts/moonbeam-1284/0x3795c36e7d12a8c252a20c5a7b455f7c57b60283/) | MintSwapCanonicalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xd1ad4e...d09c11`](./contracts/moonbeam-1284/0xd1ad4e6accaedc745293d176cfb367aaf3d09c11/) | MockSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x613a34...7bef38`](./contracts/moonbeam-1284/0x613a34e920badab2636aa8d487cbf082657bef38/) | Nimbus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x1ff2ad...eda03a`](./contracts/moonbeam-1284/0x1ff2adaa387dd27c22b31086e658108588eda03a/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xa0f2d9...1c57d2`](./contracts/moonbeam-1284/0xa0f2d90bbdb0c57bc65e07203d9d863fb81c57d2/) | OffchainHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0fa8cd...f2f079`](./contracts/moonbeam-1284/0x0fa8cde3e0cddf150d79add0f3d63cb6e0f2f079/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0fbe98...d1af57`](./contracts/moonbeam-1284/0x0fbe981966da95b801d68394dbf0d9ff72d1af57/) | OracleMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xbb7684...1ad573`](./contracts/moonbeam-1284/0xbb7684cc5408f4dd0921e5c2cadd547b8f1ad573/) | PeggedTokenBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xccaa28...c062e2`](./contracts/moonbeam-1284/0xccaa28be22d041c1b409933a292cf174efc062e2/) | PulsarFeeShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x47ff28...44c10f`](./contracts/moonbeam-1284/0x47ff289a94c36c80cde7c86756097ed70144c10f/) | Quoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x2d1ffa...bdfc26`](./contracts/moonbeam-1284/0x2d1ffa97d1013cefec277ec15417ba8163bdfc26/) | RewarderBeacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x9a0b83...0290aa`](./contracts/moonbeam-1284/0x9a0b83dfe94767c1f72386c0df2f1f52480290aa/) | RewarderFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x1c9b96...924ac8`](./contracts/moonbeam-1284/0x1c9b96fdf05284db50a21de11557aa84fb924ac8/) | RewarderV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0394c5...48481f`](./contracts/moonbeam-1284/0x0394c51d750e32f252d8a3f3d8670d958948481f/) | Sentinel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x70755c...60803f`](./contracts/moonbeam-1284/0x70755c95cad4d6917c51e49d4fbc932efd60803f/) | setNumberContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x65bf1e...d1d27e`](./contracts/moonbeam-1284/0x65bf1e4a5af9939549afc7c8e9d2438f5ed1d27e/) | SetText | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x7115f0...29d725`](./contracts/moonbeam-1284/0x7115f071d46ea6661ca49b92cfca07507b29d725/) | StellaDistributorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x096352...9a8ad8`](./contracts/moonbeam-1284/0x096352f7ea415a336b41fc48b33142eff19a8ad8/) | StellaILO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x899506...7a0b58`](./contracts/moonbeam-1284/0x8995066b7f1fb3abe3c88040b677d03d607a0b58/) | StellaLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x686967...9376b3`](./contracts/moonbeam-1284/0x686967bb5a0c8a115b70215827e5aa7f5d9376b3/) | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x1dc78a...6d95e0`](./contracts/moonbeam-1284/0x1dc78acda13a8bc4408b207c9e48cdbc096d95e0/) | UpgradeBeaconProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xb4630a...4490ad`](./contracts/moonbeam-1284/0xb4630acbab32254cd42728d2a1851c88604490ad/) | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xacc15d...c6077f`](./contracts/moonbeam-1284/0xacc15dc74880c9944775448304b263d191c6077f/) | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x83f3fa...b7fb4d`](./contracts/moonbeam-1284/0x83f3fab4ad705eed9beb410a6f189d6516b7fb4d/) | Withdrawal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xffffff...899abf`](./contracts/moonbeam-1284/0xffffffff15e1b7e3df971dd813bc394deb899abf/) | XC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x06a3b4...b6a080`](./contracts/moonbeam-1284/0x06a3b410b681c82417a906993acefb91bab6a080/) | XStella | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x01834c...d140df`](./contracts/moonbeam-1284/0x01834cf26717f0351d9762cc9cca7dc059d140df/) | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xe5870c...e130d1`](./contracts/moonbeam-1284/0xe5870c6770d86d1cb91bb782986abf607be130d1/) | ZapHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 74 |
| upstream | 2 |
| standard_library | 11 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6, medium=1
- Match method counts: extraction_exact=33

Zero-match audit list:

- [18297] SolidProof Audit Report
- [18298] <>

Fork inheritance lineage and inherited audits are included when available.
