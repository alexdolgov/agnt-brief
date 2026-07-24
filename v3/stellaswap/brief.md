# Agentic Audit Brief: StellaSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 8 audit(s)
- Eligible audit results: 10 (8 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: StellaSwap (`stellaswap`)
- Website: [https://stellaswap.com](https://stellaswap.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: moonbeam
- Contract surface: 364 unique implementations (368 raw deployments)
- Coverage basis: 4/16 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $417,543.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for StellaSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across moonbeam. Structural roles: 12 core, 3 supporting, 1 infra. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: core (12), supporting (3), infra (1)
- Contract kinds: contract (16)
- Detected standards: erc165 (3), erc1967proxy (3), multicall (3), erc721 (2), accesscontrol (1), erc20 (1), ownable (1)
- Frameworks: openzeppelin (11), openzeppelin-upgradeable (2), uniswap-v2 (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

2 of 25 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

**AlgebraEternalFarming** (`0xd4b2b7dc9bc1c47852851f4c5dc345eaba1a5279`, chain 1284)
Origin: swapbased (`0x288c0e...20f9fb`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AlgebraLimitFarming** (`0xf722a295abd8cfb691c78dd9b6699701491c3ff5`, chain 1284)
Origin: quickswap (`0x9923f4...d8a1f8`)
Containment: 95.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- farmingCenter()

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3b23f0675ffc45153eca239664ccaefc5e816b9c`, chain 1284)
- UnnamedContract (`0x965a857955d868fd98482e9439b1af297623fb94`, chain 1284)
- UnnamedContract (`0xa2d7009ea7502cd796d174ffaa7e26ece8edeacf`, chain 1284)
- UnnamedContract (`0xabe1655110112d0e45ef91e94f8d757e4ddba59c`, chain 1284)
- UnnamedContract (`0xbc7e02c4178a7df7d3e564323a5c359dc96c4db4`, chain 1284)
- UnnamedContract (`0xcf6fb88ac742ab896595705816079c360c590de5`, chain 1284)
- UnnamedContract (`0xe6d0ed3759709b743707dcfecae39bc180c981fe`, chain 1284)
- UnnamedContract (`0xe8a5c0039226269313c89c093a6c3524c4d39fa4`, chain 1284)
- UnnamedContract (`0xf7d57bf6c27973a42c2464845dab046361a61f7a`, chain 1284)
- AlgebraInterfaceMulticall (`0x24d357c3deda4f412a4d7b5e0db5f8e4a63d6e96`, chain 1284)
- FarmingCenter (`0x0d4f8a55a5b2583189468ca3b0a32d972f90e6e5`, chain 1284)
- Ledger (`0xde5925dc4fb300c886330de31e19826f22a9ce40`, chain 1284)
- LedgerBeacon (`0xb7c3e26785cbf145ed77b86d281817bafb719752`, chain 1284)
- LedgerFactory (`0xa732097e1c284fc4e64f077dd5360da81e1f2c68`, chain 1284)
- NonfungiblePositionManager (`0x1ff2adaa387dd27c22b31086e658108588eda03a`, chain 1284)
- Oracle (`0x0fa8cde3e0cddf150d79add0f3d63cb6e0f2f079`, chain 1284)
- Stella (`0x0e358838ce72d5e61e0018a2ffac4bec5f4c88d2`, chain 1284)
- StellaSwapV2Factory (`0x68a384d826d3678f78bb9fb1533c7e9577dacc0e`, chain 1284)
- StellaSwapV2Router02 (`0x70085a09d30d6f8c4ecf6ee10120d1847383bb57`, chain 1284)
- TransparentUpgradeableProxy (`0x002d34d6a1b4a8e665fec43fd5d923f4d7cd254f`, chain 1284)
- TransparentUpgradeableProxy (`0x21b23cb583056d10d81378ede349086fa1940819`, chain 1284)
- TransparentUpgradeableProxy (`0x5927e31cd0b8213892fb0c44f7c1c94dcb830263`, chain 1284)
- V3Migrator (`0xb4630acbab32254cd42728d2a1851c88604490ad`, chain 1284)

## Contract Surface Quality

- Logic-topography rows: 16; live-surface rows included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 24/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/16 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 24 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 340 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 24 of 364 unique; 340 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/87
- Verified + Unaudited implementations: 83
- Verified by bytecode match: 0
- Unverified implementations: 277
- Unique implementations: 364
- Raw deployments: 368
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- Active bug bounty: CertiK ([program](https://2598174527-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fk79kvXbQmvjLmP78Scbp%2Fuploads%2Ft3l7dQ9CV3XBe5ByzBWo%2FCertik%20Full%20Audit.pdf))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 3 | 3.4% | 2022-03 |
| AstraSec | Tier 2 | 1 | 1.1% | 2025-09 |
| SolidProof | Tier 2 | 1 | 1.1% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Ledger | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257112 | `0xde5925dc4fb300c886330de31e19826f22a9ce40` | ✅ Audited |
| Stella | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257092 | `0x0e358838ce72d5e61e0018a2ffac4bec5f4c88d2` | ✅ Audited |
| StellaSwapV2Factory | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257096 | `0x68a384d826d3678f78bb9fb1533c7e9577dacc0e` | ✅ Audited |
| StellaSwapV2Router02 | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257097 | `0x70085a09d30d6f8c4ecf6ee10120d1847383bb57` | ✅ Audited |

### ⚠️ Verified + Unaudited (83)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6f6a028e365ad617c6ab51b96a800f3e6053a66c` | ⚠️ Unaudited |
| AggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x80a04f0e5a43c2d14f66ee7aba86945ce1ec2336` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257111 | `0xd4b2b7dc9bc1c47852851f4c5dc345eaba1a5279` | ⚠️ Unaudited |
| AlgebraFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x02c8a6bbdda6e51f2a721dcb7d259f8f1d73fedc` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257094 | `0x24d357c3deda4f412a4d7b5e0db5f8e4a63d6e96` | ⚠️ Unaudited |
| AlgebraLimitFarming | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257115 | `0xf722a295abd8cfb691c78dd9b6699701491c3ff5` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x01821b961b6191efc71a1db38b8644d3d3d45c14` | ⚠️ Unaudited |
| AmplificationUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1e6dde8c277b64e9960cf383ef48fe2112bfbdb4` | ⚠️ Unaudited |
| AnycallExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x750bfe8490175c2a9a9387b19aa2aae2d75db638` | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3405a1bd46b85c5c029483fbecf2f3e611026e45` | ⚠️ Unaudited |
| AnyswapV6ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3d632d9e1a60a0880dd45e61f279d919b5748377` | ⚠️ Unaudited |
| AvaxILO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x96bef4719ae7c053113292e6aa7fc36e62b243e8` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x841ce48f9446c8e281d3f1444cb859b4a6d0738c` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x085416975fe14c2a731a97ec38b9bf8135231f62` | ⚠️ Unaudited |
| ComboOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x247a323daa63cc97c2bad61b4d6f1e0120b5c9e2` | ⚠️ Unaudited |
| ComboOracle_UniV2_UniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6e6d21b807a8493b40ae9f279cd5252c40eb8723` | ⚠️ Unaudited |
| ComboOracle_UniV2_UniV3_Zenlink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4a40198373de481741bdf629b44dc98f12f18161` | ⚠️ Unaudited |
| ComplexRewarderPerSecV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x05ad30253f0b20be35d84253d6aca8bd7ec0c66c` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x27771aa5fa0f2c9ab5a1caea804d659e59de9600` | ⚠️ Unaudited |
| CrossChainBridgeBacker_MNBM_Nomad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x58fb43988ce99da388b1183a36264ea1161e45dd` | ⚠️ Unaudited |
| CrossChainCanonicalFRAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x322e86852e492a7ee17f28a78c663da38fb33bfb` | ⚠️ Unaudited |
| CrossChainCanonicalFXS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2cc0a9d8047a5011defe85328a6f26968c8aaa1c` | ⚠️ Unaudited |
| CrossChainCanonicalV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x82bbd1b6f6de2b7bb63d3e1546e6b1553508be99` | ⚠️ Unaudited |
| CrossChainOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd4a2c3abbf2d80e38dbe29f45bde3834a31e06fc` | ⚠️ Unaudited |
| CrossChainOracleSingleAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x973771645a89ddb6a956e3a4d92409bcc013cddc` | ⚠️ Unaudited |
| CrossChainOracleSingleAssetV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb2d7367643ca6ef2af562a6c3b288adfce68ba8f` | ⚠️ Unaudited |
| EditableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3f56e0c36d275367b8c502090edf38289b3dea0d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonbeam | n/a | 2 deployments: moonbeam `0x1099367bbd6c9ff9d26de67ae67a03a2e1265025`; moonbeam `0x9003195492b41003ff03f02bb3faf57b516db19d` | ⚠️ Unaudited |
| FarmingCenter | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-257116 | `0x0d4f8a55a5b2583189468ca3b0a32d972f90e6e5` | ⚠️ Unaudited |
| GasClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9791767917ba1cffac79736108622a66fe1d4b04` | ⚠️ Unaudited |
| GasSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x891220b8c2134a29813dc27c113ebf2bfb700abb` | ⚠️ Unaudited |
| IDOLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x470246339f546f2de55a0d1ae6e9d6b458432d6c` | ⚠️ Unaudited |
| IDOSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x31be00eba66b0e108ce3462d39920ac8ecb215ea` | ⚠️ Unaudited |
| IDOSaleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x24f193ce3114b9e085928ba10c315a7fd7806836` | ⚠️ Unaudited |
| LedgerBeacon | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257105 | `0xb7c3e26785cbf145ed77b86d281817bafb719752` | ⚠️ Unaudited |
| LedgerFactory | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257100 | `0xa732097e1c284fc4e64f077dd5360da81e1f2c68` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x09af4b478aea7aa6dd06b83b67eae74a4f55febb` | ⚠️ Unaudited |
| MerklAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4c2e056d55009d9f3b38b7f4a036122ec262d433` | ⚠️ Unaudited |
| MintSwapCanonicalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3795c36e7d12a8c252a20c5a7b455f7c57b60283` | ⚠️ Unaudited |
| MockSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd1ad4e6accaedc745293d176cfb367aaf3d09c11` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x83e3b61886770de2f64aacad2724ed4f08f7f36b` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6477204e12a7236b9619385ea453f370ad897bb2` | ⚠️ Unaudited |
| Nimbus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x613a34e920badab2636aa8d487cbf082657bef38` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-257117 | `0x1ff2adaa387dd27c22b31086e658108588eda03a` | ⚠️ Unaudited |
| OffchainHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa0f2d90bbdb0c57bc65e07203d9d863fb81c57d2` | ⚠️ Unaudited |
| Oracle | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257093 | `0x0fa8cde3e0cddf150d79add0f3d63cb6e0f2f079` | ⚠️ Unaudited |
| OracleMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0fbe981966da95b801d68394dbf0d9ff72d1af57` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xbb7684cc5408f4dd0921e5c2cadd547b8f1ad573` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x780bb49350800b37fb40a2598617439d06628f94` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4e6e2d3a10df5b1c33e118b173cc24c5f1b7f811` | ⚠️ Unaudited |
| PulsarFeeShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xccaa28be22d041c1b409933a292cf174efc062e2` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x47ff289a94c36c80cde7c86756097ed70144c10f` | ⚠️ Unaudited |
| RewarderBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2d1ffa97d1013cefec277ec15417ba8163bdfc26` | ⚠️ Unaudited |
| RewarderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9a0b83dfe94767c1f72386c0df2f1f52480290aa` | ⚠️ Unaudited |
| RewarderV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1c9b96fdf05284db50a21de11557aa84fb924ac8` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb0dfd6f3fddb219e60fcdc1ea3d04b22f2ffa9cc` | ⚠️ Unaudited |
| Sentinel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0394c51d750e32f252d8a3f3d8670d958948481f` | ⚠️ Unaudited |
| setNumberContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x70755c95cad4d6917c51e49d4fbc932efd60803f` | ⚠️ Unaudited |
| SetText | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x65bf1e4a5af9939549afc7c8e9d2438f5ed1d27e` | ⚠️ Unaudited |
| StellaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8d22d5a8a9962fb563909d4a8b37429f51c07325` | ⚠️ Unaudited |
| StellaDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7115f071d46ea6661ca49b92cfca07507b29d725` | ⚠️ Unaudited |
| StellaILO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x096352f7ea415a336b41fc48b33142eff19a8ad8` | ⚠️ Unaudited |
| StellaLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8995066b7f1fb3abe3c88040b677d03d607a0b58` | ⚠️ Unaudited |
| StellaSwapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x051fcf8986b30860a1341e0031e5622bd18d8a85` | ⚠️ Unaudited |
| StellaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x54e2d14df9348b3fba7e372328595b9f3ae243fe` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5c3dc0ab1bd70c5cdc8d0865e023164d4d3fd8ec` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x686967bb5a0c8a115b70215827e5aa7f5d9376b3` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x22bcc43ba85dd1cb9630e5c422d8006dc16f1ded` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc6f73b028cd3154a5bb87f49aa43aa259a6522fb` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x12c7472af722c97e34e04c952a6e354d16b36546` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-257118 | `0x002d34d6a1b4a8e665fec43fd5d923f4d7cd254f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonbeam | n/a | 2 deployments: moonbeam `0x0e4caef48de8fec07b7dfeae8d73848aaa8be0cb`; moonbeam `0x1d8f925b210dd11acf6c0f3a06016986b5bd34d8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonbeam | n/a | 2 deployments: moonbeam `0x1c4f33ae29d1e05bf6034a6a14d2c41b06bdbc29`; moonbeam `0x707f4e56829a6b81b0dcf8af7aa4d89f3b2bc680` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-257120 | 2 deployments: moonbeam `0x21b23cb583056d10d81378ede349086fa1940819`; moonbeam `0xf7d57bf6c27973a42c2464845dab046361a61f7a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-257119 | `0x5927e31cd0b8213892fb0c44f7c1c94dcb830263` | ⚠️ Unaudited |
| UpgradeBeaconProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonbeam | n/a | `0x1dc78acda13a8bc4408b207c9e48cdbc096d95e0` | ⚠️ Unaudited |
| V3Migrator | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257104 | `0xb4630acbab32254cd42728d2a1851c88604490ad` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xacc15dc74880c9944775448304b263d191c6077f` | ⚠️ Unaudited |
| Withdrawal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x83f3fab4ad705eed9beb410a6f189d6516b7fb4d` | ⚠️ Unaudited |
| XC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff15e1b7e3df971dd813bc394deb899abf` | ⚠️ Unaudited |
| XStella | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x06a3b410b681c82417a906993acefb91bab6a080` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x01834cf26717f0351d9762cc9cca7dc059d140df` | ⚠️ Unaudited |
| ZapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe5870c6770d86d1cb91bb782986abf607be130d1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (277)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0468971b5ccc5dde3a08d4ede3dd12a6cd185b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0517055fc84e002a0e9ab032e61bec72f73e3e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x05f325b352f4247e8979eb11c327498b93229436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x062f434930c95668250ec02733d954674fa042ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x070c0dcb606beb4802c439c9325c0736586ecbc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x087be86ced2802f1052c02bd1d5051bb169ca371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x09c1477f5df1d8e26014dd93983883d0ef77fefa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0ad9af2a23208ff35d0791bee10aaee718e7636f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0c9f5464a01c5f4e77208f3ced08c0d987aea669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0d13ed39e307f66d7e918b908ce63a425c3fbcea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0d407e40232b4ee5bf06172c283884b5636f780f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x124784de594ca57d04d5bd592b08fedb3f28bf5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x168ceb7e49c21e3f37820a34590171214a765f5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1731c447000e40de27473d349d77e8d3dcdfc20d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1759f2d7d3d1341081b3d7c19afc5bda503c8dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x18e75887aa81e113636e18d5a78e3ff93787ec88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1cf679011a29233f8ec6db54bec3724787ed66a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1f36f98ea54f84f43954cc00435437600b86b8cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1f8d7a943014ef74e38ac7927cc20f18f973f24d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1fa0dfe6fd68cae0cb0a769a52c7278becd44f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1fb181c6f11a63f793c76cdf8bffb182adca993f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x20d020e7f28494a32d0f4c3ef545d4c89979f8eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x21390e8446fee5a571cbbb620b95ffef9265192d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x22c4da0daf8ce5a04fd35ad1d0311568900205bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x247b71d57ac80883364599ad5c9d74ea5edc8660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x24a8a4897ba7bd739ac8da4b623bf3c25295bf42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x24ee59fe03cbc71e71bb05f6e66ffd49d6800363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x28999aafc5f65c1d20a4de7f2661ea16f5d5fc73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x298453230c6680a097e3acb895939ab401ec1cb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2a046b54404babd14fa705ba2f82880ac81c352b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2ad0e92461df950e2b1c72e2f7a865c81eaa3ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2ba130297d1966e077c2fb5e4b434e8802925277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2ee0252bb95c7e7c120cfe31cbc4cfe47600c1a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x301846ddd95a5744149d5da8030f49af95c272e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x31d91c99d46bbd8cd274d196203d658f17714948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x337b721d22e5efc15cb87105ebfb4d81162b22ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3500cf2728e99c1383c66814100184e157ca99ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x358cfd94f0c4e630fe8d9ead0909a84cb98a13f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x35dafcc81c3b68fc56840705358c5d12fcf719a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x368a93e147cafddd46ec79f16d1301ca23f836e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3a3aa5cb3fd94902bff4c09eb2f73e4cc1968260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3a7572220afaddc31a72a520642111776d92b2d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257095 | `0x3b23f0675ffc45153eca239664ccaefc5e816b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3bb8972789c6d7f175e188cd9541aec4cfaa3cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3f41abc2cafe5e3cface96268b9ca1d9c71bd2ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x405702ac429758285cdf4bb93771e01006754138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x422b5b7a15fb12c518aa29f9def640b4773427f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x431f4d6ba1e22f35c7bc200f7863c9f164585886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x47b46407c675cf8e20ce6f42e7b94f20169a9437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x47c478fa0ed7337b9bd9a2f4b41aeec3ee18bab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x48e7fd4bea41db607bff74cbb614b5fa75416d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x49fb104759952748d5da294e54441cc1b7ccce5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4b1381b5b959a8ba7f44414c7d758e53d500a8a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4b1fca9b40941847c845cd64580853953b7d80da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4c3efce784fe9b3d2b0c9f265b98aff39d0b7647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4e9d62fae3b9f7a0dc68d47b90f17c76d289da83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4ef05db184248e9b4d59e72ce1b51ec2d5ca78cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x505b0a5458dd12605b84bb2928dd2bc5b44993b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5157d684949f55e2a403f467fab348c9c399121e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x51e3309cdb57118a2ce2ffc991c491109d6e02da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5352500df46be1a20c0c6e4653edf0f990378389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5546e272c67fac10719f1223b1c0212fa3e41a8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x556d9c067e7a0534564d55f394be0064993d2d3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x55f952d22c4445cdbf37b285a5cf994e3ed5671a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x58a0453948f49f818ca7570990a9deaadc6e1416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x58eec8e15ad850cd292073e4c57111442c448d1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x590b3497389c284d8c5991c2eca610135097f482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5a3ba58988e54db3dfa86d9e3e4a7211dc84fac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5aa224966e302424ec13a4f51b80bcfc205984b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5be271a5cbd2ee2d18ba370a753f2757dddd3596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5c034468d848115116eb62890b8a68eb79c22646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5c66688794e369f43baac0da51f4f36c832a4017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5ca27b7751f459586afdc5a1d27d87bdde973d6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5d01e7f36f47bbf6e1229462ef3ef39d02cd79ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5ddb2e40332ba596273207d4fd3077c1043dea47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5e5bf9fe5521d6056220f64c57a0c9e9c8086735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5f19aa8e6f7f536d740c2fa805b2d36f585ae1df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x60cf9db6d0d382469c4c6e890499eae048b65492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x63ba230fb281a44cb778ea67a8cae538459c1d0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6449e6ba4dc72965489c6237303dcf545a24f381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x65b1ac54d45c6c3880ec8b396e381305c6f0ab89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6684dda6561b394410fe0e60e6e010eab437eca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x689b07e430274c4f20e47535194c8baecd1f82b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x68fb893a5fbdf2fe73427df413744491f6b944de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x69f9d134991e141c4244f397514ba05d67861cc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6bd28a3f242f861108a5cd18f4c0028ba6443f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6bdc5fc2367209e156113c74ef0c17c2ff31cde7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6c42b376ff64d754eb784f882968c5494e80d80f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6d389e673235028c1809b543d2986f6cb58dcfcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x70cbd76ed57393e0cd81e796de850080c775d24f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x713f76076283fcd81babe06c76ff51485edf9d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x714e385a9412105326f3f0abf0a639e75e36c496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x715d7721fa7e8616ae9d274704af77857779f6f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x737758f2944e86a48d5667d693d92e656baa8d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x74435454be7bf7383ba4a40812788b576398d628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x769f56fb5d7cb15f1976cf321db738d04d3aa305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x77bae0684221d1c7ddd21986fa168c2d3e36d0a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x79a8de038005b03a10c0428095e397a43214841a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7a20d241a3f533eff68faf6c05d3382103731f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7b17122b941d2173192c7d8d68faabdc88421326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7b1fe9c3cc49ff1cb2a420e21020d1a5adffb8a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7d8c0d3ff5c2c04ba0615497e12901e903a85ef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7da0c0491d259f3aa9b469f92149d46a393a5346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7ee09730d0b5f3f87fae0d6a14163f80d69e0909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7f2c348610c2414bf70dbcebea5dd7474572141a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7fbe3126c03444d43fc403626ec81e3e809e6b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7fec9583412642d7936ca45963d715e37aa3304c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x835718ed87a6513736b41d2f84683d20f3afa609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8434a5bf756acde298161b6555eab2a28d6c16b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x861fdbff8a47c1c64228a7327bac39dce4a10c70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x86b7ad8e350a2d19545fe3e329b0f82301e134ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x87949538a27b83437024e07944b8402db2501a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x896135ff51debe8083a2e03f9d44b1d3c77a0324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8969b33a59242269a6ffb639aa4f98c7979d9d06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x89a8839387aabfed5b9c6ab8cf6a665ed5eda13d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8a2bc12d8ce2b111048439cb4efc47a4ddecd078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8ce6e62f5525a0c4b7c3998cb08694b0d54c9f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8d50e1d013b8c7e6ef99c9da7d48a9d41429365e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8d6e974ce55bdc6f142ad7e7acaa6c91879a65b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8da20cb7751e98de560eb31110df9c718eec28d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8ec7f12d12912acbd3ec08252f6f4155eed8a9df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8ece0d14d619fe26e2c14c4a92c2f9e8634a039e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8f03298143cb3878430950270b5cd3bc651e7088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9200cb047a9c4b34a17ccf86334e3f434f948301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x92b6ef61c8e95b5d26adb02bb1c75164e3b2df4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x931823ad25793d551628efdf0a2ae23e3057c90e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x939c49907a17cb9c6808b988a3ab4f55b5892e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x93fdaf556b0c3354d2a8ed25f579d67bc617f1e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x94cf0d073a1f3e432927d0e0ff0f1b759e6b443b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x94e332f085c07585649d603e2b2c0b362982fe50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x95953409374e1ed252c6d100e7466e346e3dc5b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257098 | `0x965a857955d868fd98482e9439b1af297623fb94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9947b0b3d10f0827717c8f49e06eaca05c1d7e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x997b1c5c29bf98e21cffe96b14d891641f294126` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9b52e1758b9850dde195857af30a22a05335d2cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9ca49066aa0e08ed5bb52b66f894c5c74c42b00e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9d4aa7fbffc3f269cfb837cc5d502fb0b228dd4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9d55504f88b4495bdf0702588a1508974d341272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9de8171bebfa577d6663b594c60841fe096eff97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9fe074a56ffa7f4079c6190be6e8452911b7e349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa0ac9138793c86d778740f356a06d8225bad1d8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa0d5612cf915918e7c476c0277fccd9a12ddd92a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa151a2ffffa17a1797d6b490681808e831442455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa1ffdc79f998e7fa91ba3a6f098b84c9275b0483` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257099 | `0xa2d7009ea7502cd796d174ffaa7e26ece8edeacf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa319c72d4fb896fa533e2b9fb58303a03024e020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa34506d404de2a5ba00d1ee091bdfbac4f60e937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa52123adc0bc5c4c030d1ff4f5dad966366a646c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa5924d9baa4fed0fbd100cb47cbcb61ea5e33219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa67cd90381e4c96382ea42ee1f5d58aab85614ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa6ec79c97e533e7bddb00898e22c6908742e039b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257102 | `0xabe1655110112d0e45ef91e94f8d757e4ddba59c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xae3151b13018f225e71d3d669de49915a6ec66b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb0ab2f275407f36953aab85fad5458352277b80e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb184926ba5b79fca148c9a0e1e6f7fd3fcd18971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb1bc9f56103175193519ae1540a0a4572b1566f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb3e632fbe587b2537e25d26ad174b9d530ac4cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb4dba7fe6fcc613963d64204fcf789e9e376679a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb569949ab3f88d4aec5224dba96c0b6170b95d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb5ac77152862a3abadbec690dd5d7cbfd6b933e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb61f706c2c1befb4f870aef056595d04047a7947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb64dee2d182fed3dd6c273303fb08f11808c9c23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb7b5d3659ad213478bc8bfb94d064d0efdda8f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb7c18df30663da7c749181d5f8690dca4dafbf44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb86271571c90ad4e0c9776228437340b42623402` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257107 | `0xbc7e02c4178a7df7d3e564323a5c359dc96c4db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xbdc29aaa87935206b4894c4b5884b65453affb13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xbebd88782a1145b71df3f4986ef7686154ce01d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc4d1f40e87b835daad27dd05c7039e51b15da6fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc4e9ed6d6a49e4f34019ff1a325db62be6a7ad52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc4ef182e247293b0b5faac0d82e73e52b1d79b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc5268faa5b21dc5cdc5363942b4bab525e9930bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc69b70972a4d289d2be4abb61ef352e0f9f28d16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc72fec980eebdd91b5e48cc07a8cba6088e5156b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc85ddcff71200f9673137e2f93ce504bdbf7db4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc8dd3477acd5b04a06ae30a84e45bd365b746b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc9f47ba87063bb8b83a9cb09d6ea001989aff0c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xcae51da6dceacd84f79df4b88d9f92035d1479e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xcbe77ce6cbc5c2673a32a6883bfa92b235352338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xcbf028c93f449019ef250f4c45c5fa2cb121ac3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xcd04d2340c1dd9b3db2c5c53c8b8baa57b2654be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xcdbb6509c61b5538008bc729c471e6ce5d9ece4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xce20880c15ae224e652824019aeb4e5a817295d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xcee951ad07c68c53d3cb312fa73c3027cda6fedc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257109 | `0xcf6fb88ac742ab896595705816079c360c590de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd04a5a963dd56c76b6d7e9aea04bdf5eb8d5f10b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd0a01ec574d1fc6652edf79cb2f880fd47d34ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd3d151960932901cf4de09ce7c78550fe16f7278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd3f13f860e73363bd2e07e19f7bf74c80636b058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd47179321fbc309e29743f3b585f86e8be8cf51f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd4e470ce0cb31ddc451b5b90b70e244121e69c52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd6b191b8018e19afd00b745921179ca0c1abc247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd72bd8fa5ef9ecc0a7255ebc7f5e96a30d763f93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd79c54363aff4e18b2c2070705cb983fdc3a8142` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd8646b0c8211a0a4ad23cfb8e926958095dee1ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xdb63afd747948a26e4979f0cdd6ad96fb9f3046f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xdd7d26cf8f9de569e6f2f4ce35876de43b01db62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xdd820f9103de0cbfe66c608a9aa55542bae9a3b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xde007d4bb31ae5ae2b326ac322c0152bfac2f054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xdefab97805a41a84357979f694869ecfc3a23a7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xdf8b10f6e55e0ca4fd24d134de246f0dc26322c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xdfa46478f9e5ea86d57387849598dbfb2e964b02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe06e720aaed5f5b817cb3743108ae0a12fe69e9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe257f47b8c9961c05cfc04e4613186a718efabd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe3ae2e57d72dd6c916008da59647cc401331e088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe4846b0b06db7cdb9eb81f7e2f008c962243b877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe60c41de5537418fde05b804df077397dfa84d75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257113 | `0xe6d0ed3759709b743707dcfecae39bc180c981fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe6efdd3db3b6bce2bf3e3012796140c3dd22b05f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe6f152a0d0a2e94774faf729fc3b07763402638c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe76215efea540ea87a2e1a4bf63b1af6942481f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe79be9efebc9690d00160649cb2670c21d090f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe8964ad7b0a4c04c549f361cc738f6d34825ac3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257114 | `0xe8a5c0039226269313c89c093a6c3524c4d39fa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe907f95c46659c6ef24d84cfdb9f8ff9cf57c723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xeb55ba404da3dbae58896456a21ea119bc707b8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xecf91116348af1cffe335e9807f0051332be128d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xed3fa6f13e5ae0ca3fe8b00aff73dbe76e8f9e7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xedfb330f5fa216c9d2039b99c8ce9da85ea91c1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xee42d4861b56b32776e6fe9a2fe122af0e3f4a33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xee7516ad6bc30aacf3cb6bde345b401d5e0603e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xef6e54033276a22f201423a2c30aefee82e57e9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xefa69370d8288d503f515236feb9a6e4f43b8bc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xefed7124c52e357176565e775318567235e38f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf0a2ae65342f143fc09c83e5f19b706abb37414d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf1ba40573bceb2aee985e2410bde9fedd07e9c29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf312ef577156c6db40a8b49fc42bc58290e6480f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf38b050f8e892762a39d512bd0bdae183b939165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf3a5454496e26ac57da879bf3285fa85debf0388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf50225a84382c74cbdea10b0c176f71fc3de0c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf526773f39f242a1a669cb5d88dcb4d61363fb55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf67b98cc08eae113a33410b7e168e4cd79972ed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf6aed11243791bc50417b37154e7a40d9ddd390b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf792aba79ed62d61a337303cb1934464c8c1ccf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf92257013e74e343aeaa4401a7bad2b4cfac657c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xf97dc23f91cd75c31800ac39b4ed0f4e9c10136c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xfa16d5b8bf03677945f0a750c8d2a30001b2fa93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xfb5212ec4d73de9ce6eeaadbc90a2751038016ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xff82e3cca2bda990b531051f76356de3b5bb8dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xfffa340944ff32f50c7935e2b5d22a7c3393b313` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff166f84967f054ae95ab5764c38cf3aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff1b4bb1ac5749f73d866ffc91a3432c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff2e1d1ac9ea1686255befe995b31abc96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff30478fafbe935e466da114e14fb3563d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff31d724194b6a76e1d639c8787e16796b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff345dc44ddae98df024eb494321e73fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff3afcd2cad6174387df17180a0362e592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff43b4560bc0c451a3386e082bff50ac90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff43e0d9b84010b1b67ba501bc81e33c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff44bd9d2ffee20b25d1cf9e78edb6eae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff52c56a9257bb97f4b2b6f7b2d624ecda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff5d5deb44bf7278dee5381beb24cb6573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff5da2d7214d268375cf8fb1715705fdc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff5e90e365edca87fb4c8306df1e91464f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff644a12f6f01b754987d175f5a780a75b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff6807d5082ff2f6f86bde409245e2d953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff6a3977d5b65d1044fd744b14d9cef932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff6af229ae7f0f4e0188157e189a487d59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff6c57e17d210df507c82807149ffd70b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff71815ab6142e0e20c7259126c6b40612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff7bc304425217b49e9598415c514ae81b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff86829afe1521ad2296719df3ace8ded7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff8a9736b44ebf188972725bed67bf694e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff8cda1707baf23834d211b08726b1e499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff8f6267e040d8a0638c576dfba4f0f6d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff9664be0234ea4dc64558f695c4f2a9ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff99dabe1a8de0ea22baa6fd48fde96f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffff9de12e6658c49b4834f9278f6a39f5d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffa608ec1332131289cbd8a97a0bb3d90f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffa893ad19e540e172c10d78d4d479b5cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffa9cfffa9834235fe53f4733f1b8b28d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffabe9934e61db3b11be4251e6e869cf59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffaff6df83d0a1935dda2e5f1f402c0c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffd58f77e6693cfb99ebe273d73c678dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffda2a05fb50e7ae99275f4341aed43379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffdd704e8e824a5eec47de88f5b9e13588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffffffec4908b74688a01374f789b48e9a3eab` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 272
- Live contracts: 0
- Unknown liveness contracts: 272
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=272

Showing first 200 of 272 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0468971b5ccc5dde3a08d4ede3dd12a6cd185b1f` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x0517055fc84e002a0e9ab032e61bec72f73e3e54` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x05f325b352f4247e8979eb11c327498b93229436` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x062f434930c95668250ec02733d954674fa042ee` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x070c0dcb606beb4802c439c9325c0736586ecbc4` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x087be86ced2802f1052c02bd1d5051bb169ca371` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x09c1477f5df1d8e26014dd93983883d0ef77fefa` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x0ad9af2a23208ff35d0791bee10aaee718e7636f` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x0c9f5464a01c5f4e77208f3ced08c0d987aea669` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x0d13ed39e307f66d7e918b908ce63a425c3fbcea` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x0d407e40232b4ee5bf06172c283884b5636f780f` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x124784de594ca57d04d5bd592b08fedb3f28bf5e` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x168ceb7e49c21e3f37820a34590171214a765f5f` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x1731c447000e40de27473d349d77e8d3dcdfc20d` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x1759f2d7d3d1341081b3d7c19afc5bda503c8dc5` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x18e75887aa81e113636e18d5a78e3ff93787ec88` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x1c4f33ae29d1e05bf6034a6a14d2c41b06bdbc29` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x1cf679011a29233f8ec6db54bec3724787ed66a2` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x1d8f925b210dd11acf6c0f3a06016986b5bd34d8` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x1f36f98ea54f84f43954cc00435437600b86b8cc` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x1f8d7a943014ef74e38ac7927cc20f18f973f24d` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x1fa0dfe6fd68cae0cb0a769a52c7278becd44f0a` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x1fb181c6f11a63f793c76cdf8bffb182adca993f` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x20d020e7f28494a32d0f4c3ef545d4c89979f8eb` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x21390e8446fee5a571cbbb620b95ffef9265192d` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x22c4da0daf8ce5a04fd35ad1d0311568900205bc` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x247b71d57ac80883364599ad5c9d74ea5edc8660` | non_address_book | unknown | unknown | unverified | n/a | `0x4c92d916d73d7135582086449e8ac3677d5de153` |
| unverified unclassified | UnnamedContract<br>`0x24a8a4897ba7bd739ac8da4b623bf3c25295bf42` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x24ee59fe03cbc71e71bb05f6e66ffd49d6800363` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x28999aafc5f65c1d20a4de7f2661ea16f5d5fc73` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x298453230c6680a097e3acb895939ab401ec1cb8` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x2a046b54404babd14fa705ba2f82880ac81c352b` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x2ad0e92461df950e2b1c72e2f7a865c81eaa3ce6` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x2ba130297d1966e077c2fb5e4b434e8802925277` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x2ee0252bb95c7e7c120cfe31cbc4cfe47600c1a7` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x301846ddd95a5744149d5da8030f49af95c272e3` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x31d91c99d46bbd8cd274d196203d658f17714948` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x337b721d22e5efc15cb87105ebfb4d81162b22ac` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x3500cf2728e99c1383c66814100184e157ca99ea` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x358cfd94f0c4e630fe8d9ead0909a84cb98a13f5` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x35dafcc81c3b68fc56840705358c5d12fcf719a3` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x368a93e147cafddd46ec79f16d1301ca23f836e7` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x3a3aa5cb3fd94902bff4c09eb2f73e4cc1968260` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x3a7572220afaddc31a72a520642111776d92b2d2` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x3bb8972789c6d7f175e188cd9541aec4cfaa3cc3` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x3f41abc2cafe5e3cface96268b9ca1d9c71bd2ce` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x405702ac429758285cdf4bb93771e01006754138` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x422b5b7a15fb12c518aa29f9def640b4773427f8` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x431f4d6ba1e22f35c7bc200f7863c9f164585886` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x47b46407c675cf8e20ce6f42e7b94f20169a9437` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x47c478fa0ed7337b9bd9a2f4b41aeec3ee18bab9` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x48e7fd4bea41db607bff74cbb614b5fa75416d77` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x49fb104759952748d5da294e54441cc1b7ccce5d` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x4b1381b5b959a8ba7f44414c7d758e53d500a8a9` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x4b1fca9b40941847c845cd64580853953b7d80da` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x4c3efce784fe9b3d2b0c9f265b98aff39d0b7647` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x4e9d62fae3b9f7a0dc68d47b90f17c76d289da83` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x4ef05db184248e9b4d59e72ce1b51ec2d5ca78cf` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x505b0a5458dd12605b84bb2928dd2bc5b44993b9` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x5157d684949f55e2a403f467fab348c9c399121e` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x51e3309cdb57118a2ce2ffc991c491109d6e02da` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x5352500df46be1a20c0c6e4653edf0f990378389` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x5546e272c67fac10719f1223b1c0212fa3e41a8f` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x556d9c067e7a0534564d55f394be0064993d2d3c` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x55f952d22c4445cdbf37b285a5cf994e3ed5671a` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x58a0453948f49f818ca7570990a9deaadc6e1416` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x58eec8e15ad850cd292073e4c57111442c448d1b` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x590b3497389c284d8c5991c2eca610135097f482` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x5a3ba58988e54db3dfa86d9e3e4a7211dc84fac1` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x5aa224966e302424ec13a4f51b80bcfc205984b6` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x5be271a5cbd2ee2d18ba370a753f2757dddd3596` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x5c034468d848115116eb62890b8a68eb79c22646` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x5c66688794e369f43baac0da51f4f36c832a4017` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x5ca27b7751f459586afdc5a1d27d87bdde973d6f` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x5d01e7f36f47bbf6e1229462ef3ef39d02cd79ab` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x5ddb2e40332ba596273207d4fd3077c1043dea47` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x5e5bf9fe5521d6056220f64c57a0c9e9c8086735` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x5f19aa8e6f7f536d740c2fa805b2d36f585ae1df` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x60cf9db6d0d382469c4c6e890499eae048b65492` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x63ba230fb281a44cb778ea67a8cae538459c1d0b` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x6449e6ba4dc72965489c6237303dcf545a24f381` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x65b1ac54d45c6c3880ec8b396e381305c6f0ab89` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x6684dda6561b394410fe0e60e6e010eab437eca9` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x689b07e430274c4f20e47535194c8baecd1f82b0` | non_address_book | unknown | unknown | unverified | n/a | `0x7df5e9e405516c79ff24919b2d4fe7de6310d77a` |
| unverified unclassified | UnnamedContract<br>`0x68fb893a5fbdf2fe73427df413744491f6b944de` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x69f9d134991e141c4244f397514ba05d67861cc0` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x6bd28a3f242f861108a5cd18f4c0028ba6443f5e` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x6bdc5fc2367209e156113c74ef0c17c2ff31cde7` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x6c42b376ff64d754eb784f882968c5494e80d80f` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x6d389e673235028c1809b543d2986f6cb58dcfcb` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x70cbd76ed57393e0cd81e796de850080c775d24f` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x713f76076283fcd81babe06c76ff51485edf9d5e` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x714e385a9412105326f3f0abf0a639e75e36c496` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x715d7721fa7e8616ae9d274704af77857779f6f0` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x737758f2944e86a48d5667d693d92e656baa8d5c` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x74435454be7bf7383ba4a40812788b576398d628` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x769f56fb5d7cb15f1976cf321db738d04d3aa305` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x77bae0684221d1c7ddd21986fa168c2d3e36d0a1` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x79a8de038005b03a10c0428095e397a43214841a` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x7a20d241a3f533eff68faf6c05d3382103731f5e` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x7b17122b941d2173192c7d8d68faabdc88421326` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x7b1fe9c3cc49ff1cb2a420e21020d1a5adffb8a1` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x7d8c0d3ff5c2c04ba0615497e12901e903a85ef4` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x7da0c0491d259f3aa9b469f92149d46a393a5346` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x7ee09730d0b5f3f87fae0d6a14163f80d69e0909` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x7f2c348610c2414bf70dbcebea5dd7474572141a` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x7fbe3126c03444d43fc403626ec81e3e809e6b46` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x7fec9583412642d7936ca45963d715e37aa3304c` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x835718ed87a6513736b41d2f84683d20f3afa609` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x8434a5bf756acde298161b6555eab2a28d6c16b6` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x861fdbff8a47c1c64228a7327bac39dce4a10c70` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x86b7ad8e350a2d19545fe3e329b0f82301e134ff` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x87949538a27b83437024e07944b8402db2501a81` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x896135ff51debe8083a2e03f9d44b1d3c77a0324` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x8969b33a59242269a6ffb639aa4f98c7979d9d06` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x89a8839387aabfed5b9c6ab8cf6a665ed5eda13d` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x8a2bc12d8ce2b111048439cb4efc47a4ddecd078` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x8ce6e62f5525a0c4b7c3998cb08694b0d54c9f5e` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x8d50e1d013b8c7e6ef99c9da7d48a9d41429365e` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x8d6e974ce55bdc6f142ad7e7acaa6c91879a65b8` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x8da20cb7751e98de560eb31110df9c718eec28d3` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x8ec7f12d12912acbd3ec08252f6f4155eed8a9df` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x8ece0d14d619fe26e2c14c4a92c2f9e8634a039e` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x8f03298143cb3878430950270b5cd3bc651e7088` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x9003195492b41003ff03f02bb3faf57b516db19d` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0x9200cb047a9c4b34a17ccf86334e3f434f948301` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x92b6ef61c8e95b5d26adb02bb1c75164e3b2df4c` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x931823ad25793d551628efdf0a2ae23e3057c90e` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x939c49907a17cb9c6808b988a3ab4f55b5892e3f` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x93fdaf556b0c3354d2a8ed25f579d67bc617f1e2` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x94cf0d073a1f3e432927d0e0ff0f1b759e6b443b` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x94e332f085c07585649d603e2b2c0b362982fe50` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x95953409374e1ed252c6d100e7466e346e3dc5b9` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x9947b0b3d10f0827717c8f49e06eaca05c1d7e86` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x997b1c5c29bf98e21cffe96b14d891641f294126` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x9b52e1758b9850dde195857af30a22a05335d2cf` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x9ca49066aa0e08ed5bb52b66f894c5c74c42b00e` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x9d4aa7fbffc3f269cfb837cc5d502fb0b228dd4c` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x9d55504f88b4495bdf0702588a1508974d341272` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x9de8171bebfa577d6663b594c60841fe096eff97` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0x9fe074a56ffa7f4079c6190be6e8452911b7e349` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xa0ac9138793c86d778740f356a06d8225bad1d8b` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0xa0d5612cf915918e7c476c0277fccd9a12ddd92a` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xa151a2ffffa17a1797d6b490681808e831442455` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xa1ffdc79f998e7fa91ba3a6f098b84c9275b0483` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xa319c72d4fb896fa533e2b9fb58303a03024e020` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xa34506d404de2a5ba00d1ee091bdfbac4f60e937` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xa52123adc0bc5c4c030d1ff4f5dad966366a646c` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xa5924d9baa4fed0fbd100cb47cbcb61ea5e33219` | non_address_book | unknown | unknown | unverified | n/a | `0x4c92d916d73d7135582086449e8ac3677d5de153` |
| unverified unclassified | UnnamedContract<br>`0xa67cd90381e4c96382ea42ee1f5d58aab85614ed` | non_address_book | unknown | unknown | unverified | n/a | `0x7df5e9e405516c79ff24919b2d4fe7de6310d77a` |
| unverified unclassified | UnnamedContract<br>`0xa6ec79c97e533e7bddb00898e22c6908742e039b` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xae3151b13018f225e71d3d669de49915a6ec66b2` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xb0ab2f275407f36953aab85fad5458352277b80e` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0xb184926ba5b79fca148c9a0e1e6f7fd3fcd18971` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xb1bc9f56103175193519ae1540a0a4572b1566f6` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xb3e632fbe587b2537e25d26ad174b9d530ac4cd8` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0xb4dba7fe6fcc613963d64204fcf789e9e376679a` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xb569949ab3f88d4aec5224dba96c0b6170b95d4a` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xb5ac77152862a3abadbec690dd5d7cbfd6b933e6` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xb61f706c2c1befb4f870aef056595d04047a7947` | non_address_book | unknown | unknown | unverified | n/a | `0x4c92d916d73d7135582086449e8ac3677d5de153` |
| unverified unclassified | UnnamedContract<br>`0xb64dee2d182fed3dd6c273303fb08f11808c9c23` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xb7b5d3659ad213478bc8bfb94d064d0efdda8f7c` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xb7c18df30663da7c749181d5f8690dca4dafbf44` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xb86271571c90ad4e0c9776228437340b42623402` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xbdc29aaa87935206b4894c4b5884b65453affb13` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xbebd88782a1145b71df3f4986ef7686154ce01d9` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xc4d1f40e87b835daad27dd05c7039e51b15da6fa` | non_address_book | unknown | unknown | unverified | n/a | `0x4c92d916d73d7135582086449e8ac3677d5de153` |
| unverified unclassified | UnnamedContract<br>`0xc4e9ed6d6a49e4f34019ff1a325db62be6a7ad52` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0xc4ef182e247293b0b5faac0d82e73e52b1d79b94` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xc5268faa5b21dc5cdc5363942b4bab525e9930bc` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xc69b70972a4d289d2be4abb61ef352e0f9f28d16` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xc72fec980eebdd91b5e48cc07a8cba6088e5156b` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0xc85ddcff71200f9673137e2f93ce504bdbf7db4e` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xc8dd3477acd5b04a06ae30a84e45bd365b746b03` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xc9f47ba87063bb8b83a9cb09d6ea001989aff0c7` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0xcae51da6dceacd84f79df4b88d9f92035d1479e9` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xcbe77ce6cbc5c2673a32a6883bfa92b235352338` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xcbf028c93f449019ef250f4c45c5fa2cb121ac3f` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0xcd04d2340c1dd9b3db2c5c53c8b8baa57b2654be` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xcdbb6509c61b5538008bc729c471e6ce5d9ece4d` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0xce20880c15ae224e652824019aeb4e5a817295d4` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xcee951ad07c68c53d3cb312fa73c3027cda6fedc` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xd04a5a963dd56c76b6d7e9aea04bdf5eb8d5f10b` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xd0a01ec574d1fc6652edf79cb2f880fd47d34ab1` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xd3d151960932901cf4de09ce7c78550fe16f7278` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xd3f13f860e73363bd2e07e19f7bf74c80636b058` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xd47179321fbc309e29743f3b585f86e8be8cf51f` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xd4e470ce0cb31ddc451b5b90b70e244121e69c52` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xd6b191b8018e19afd00b745921179ca0c1abc247` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xd72bd8fa5ef9ecc0a7255ebc7f5e96a30d763f93` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xd79c54363aff4e18b2c2070705cb983fdc3a8142` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xd8646b0c8211a0a4ad23cfb8e926958095dee1ea` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0xdb63afd747948a26e4979f0cdd6ad96fb9f3046f` | non_address_book | unknown | unknown | unverified | n/a | `0x7df5e9e405516c79ff24919b2d4fe7de6310d77a` |
| unverified unclassified | UnnamedContract<br>`0xdd7d26cf8f9de569e6f2f4ce35876de43b01db62` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xdd820f9103de0cbfe66c608a9aa55542bae9a3b1` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xde007d4bb31ae5ae2b326ac322c0152bfac2f054` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xdefab97805a41a84357979f694869ecfc3a23a7e` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |
| unverified unclassified | UnnamedContract<br>`0xdf8b10f6e55e0ca4fd24d134de246f0dc26322c3` | non_address_book | unknown | unknown | unverified | n/a | `0xb84827195da439cb3e7bdfc61a4c9eeb0126e23d` |
| unverified unclassified | UnnamedContract<br>`0xdfa46478f9e5ea86d57387849598dbfb2e964b02` | non_address_book | unknown | unknown | unverified | n/a | `0xe00eaa2787a8830a485153b7bf508bc781e4a220` |
| unverified unclassified | UnnamedContract<br>`0xe06e720aaed5f5b817cb3743108ae0a12fe69e9b` | non_address_book | unknown | unknown | unverified | n/a | `0x58ce55a4efd27f8fe836a1bcdd2bc7f0a81fa627` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/stellaswap) | CertiK | Audit | 2022-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [SolidProof Audit Report](https://github.com/solidproof/smart-contract-audits/blob/main/SmartContract_Audit_Solidproof_StellaSwap.pdf) | SolidProof | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [<>](https://code4rena.com/audits/2022-09-quickswap-and-stellaswap-contest) | Code4rena | Contest | 2022-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [<>](https://github.com/astrasecai/audit-reports/blob/main/AstraSec-AuditReport-StellaSwap-stGLMR.pdf) | AstraSec | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 2 | medium |
| [Certik Full Audit Report](https://2598174527-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fk79kvXbQmvjLmP78Scbp%2Fuploads%2Ft3l7dQ9CV3XBe5ByzBWo%2FCertik%20Full%20Audit.pdf) | CertiK | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [SolidProof Stable AMM Audit Report (also discovered via alternate URL)](https://2598174527-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fk79kvXbQmvjLmP78Scbp%2Fuploads%2FmMbSu0hMsw6p30u3UcEZ%2FSmartContract_Audit_Solidproof_StellaSwap_Stable%20AMM.pdf) | SolidProof | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [Certik Full Audit.pdf](https://2469068479-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fk79kvXbQmvjLmP78Scbp%2Fuploads%2FQolsnfHM3bYqao9tSFVo%2FCertik%20Full%20Audit.pdf) | CertiK | Audit | 2022-03 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 22 | high |
| [ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf](https://2469068479-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fk79kvXbQmvjLmP78Scbp%2Fuploads%2F5K9S1GSebC89zJKD1nRZ%2FABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a%20(1).pdf) | ABDK | Audit | 2022-07 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 28 | high |
| [Hexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf](https://2469068479-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fk79kvXbQmvjLmP78Scbp%2Fuploads%2FsmgxZ9HS2yRnWC1MiMps%2FHexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf) | Hexens | Audit | 2022-08 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18296] DL audit link — matched: Only one contract file (Stella.sol) is listed in the audit scope. The audit date is the revision date (1/31/2022).
- [18297] SolidProof Audit Report — no match: The report mentions 'the main contract (usual the same name as team appended with .sol)' but does not provide a specific filename. The findings refer to 'MainContract' as the contract under audit.
- [18298] <> — no match: The document is a contest results page for QuickSwap and StellaSwap, but no specific contract names or scope section are provided.
- [18299] <> — matched: No explicit scope section; contracts inferred from vulnerability details and source code references.
- [18301] Certik Full Audit Report — matched: All contracts listed in the Audit Scope table are extracted. The audit date is from the Delivery Date field.
- [18302] SolidProof Stable AMM Audit Report — matched: Extracted contract names from 'Source Units in Scope' section and file listings throughout the report. Audit date from cover page: '20. April, 2022'.
- [18303] Certik Full Audit.pdf — matched: All contracts listed in the Audit Scope table were extracted. The audit date is explicitly stated as 'Delivery Date Mar 16, 2022 UTC'.
- [18305] ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf — matched: All 30 files listed in the scope section of the audit report.
- [18306] Hexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf — matched: Contracts extracted from findings and scope section; date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | Stella | own contract | Stella (selected) `0x0e358838ce72d5e61e0018a2ffac4bec5f4c88d2` — deployed 2022-01-11 22:21:42+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SolidProof Audit Report | MainContract | unmatched — not counted | — | Referenced as 'MainContract' in findings and scope description; likely the main token contract. | no |
| <> | stGLMR | unmatched — not counted | — | mentioned in vulnerability details as stGLMR.sol | no |
| <> | Ledger | own contract | Ledger (selected) `0xde5925dc4fb300c886330de31e19826f22a9ce40` — deployed 2023-10-23 21:37:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| <> | FundManager | unmatched — not counted | — | mentioned in vulnerability details as FundManager | no |
| Certik Full Audit Report | Math | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | SafeMath | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | StellaSwapV2Library | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | TransferHelper | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | UQ112x112 | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | StellaSwapV2ERC20 | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | StellaSwapV2Factory | own contract | StellaSwapV2Factory (selected) `0x68a384d826d3678f78bb9fb1533c7e9577dacc0e` — deployed 2022-01-11 22:29:06+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik Full Audit Report | StellaSwapV2Pair | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | StellaSwapV2Router | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | StellaSwapV2Router02 | own contract | StellaSwapV2Router02 (selected) `0x70085a09d30d6f8c4ecf6ee10120d1847383bb57` — deployed 2022-03-28 03:28:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik Full Audit Report | StellaDistributor | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | Forwarder | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | IForwarder | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | EIP712Base | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | EIP712MetaTransaction | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | GasSwap | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | IStellaRouter | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | IToken | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | MockRouter | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | Multicall | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | Timelock | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | Stella | own contract | Stella (selected) `0x0e358838ce72d5e61e0018a2ffac4bec5f4c88d2` — deployed 2022-01-11 22:21:42+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik Full Audit Report | IStellaERC20 | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | MockERC20 | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | StellaVault | unmatched — not counted | — | listed in scope table | no |
| SolidProof Stable AMM Audit Report | SwapFlashLoanRouter | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | LPToken | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | GenericERC20 | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | SwapUtils | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | Swap | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | AmplificationUtils | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | Router | own contract | StellaSwapV2Router02 (selected) `0x70085a09d30d6f8c4ecf6ee10120d1847383bb57` — deployed 2022-03-28 03:28:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SolidProof Stable AMM Audit Report | Address | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | AddressUpgradeable | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | ContextUpgradeable | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | CounterUpgradeable | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | EIP712Upgradeable | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | SafeERC20 | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | ERC20PermitUpgradeable | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | OwnableUpgradeable | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | IERC20 | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | IERC20PermitUpgradeable | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | IERC20Upgradeable | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | ISwap | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | Clones | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | CountersUpgradeable | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | ECDSAUpgradeable | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | ERC20BurnableUpgradeable | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | ERC20Upgradeable | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | PausableUpgradeable | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | ReentrancyGuardUpgradeable | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | SafeMath | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | SafeMathUpgradeable | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | Initializable | unmatched — not counted | — | listed in scope and tested contract files | no |
| Certik Full Audit.pdf | Math | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | SafeMath | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | StellaSwapV2Library | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | TransferHelper | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | UQ112x112 | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | StellaSwapV2ERC20 | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | StellaSwapV2Factory | own contract | StellaSwapV2Factory (selected) `0x68a384d826d3678f78bb9fb1533c7e9577dacc0e` — deployed 2022-01-11 22:29:06+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik Full Audit.pdf | StellaSwapV2Pair | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | StellaSwapV2Router | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | StellaSwapV2Router02 | own contract | StellaSwapV2Router02 (selected) `0x70085a09d30d6f8c4ecf6ee10120d1847383bb57` — deployed 2022-03-28 03:28:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik Full Audit.pdf | StellaDistributor | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | Forwarder | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | IForwarder | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | EIP712Base | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | EIP712MetaTransaction | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | GasSwap | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | IStellaRouter | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | IToken | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | MockRouter | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | Multicall | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | Timelock | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | Stella | own contract | Stella (selected) `0x0e358838ce72d5e61e0018a2ffac4bec5f4c88d2` — deployed 2022-01-11 22:21:42+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik Full Audit.pdf | IStellaERC20 | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | MockERC20 | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | StellaVault | unmatched — not counted | — | listed in scope table | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | IAlgebraFlashCallback | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | IAlgebraMintCallback | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | IAlgebraSwapCallback | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | IAlgebraPoolActions | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | IAlgebraPoolDerivedState | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | IAlgebraPoolEvents | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | IAlgebraPoolImmutables | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | IAlgebraPoolPermissionedActions | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | IAlgebraPoolState | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | IAlgebraFactory | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | IAlgebraPool | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | IAlgebraPoolDeployer | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | IAlgebraVirtualPool | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | IDataStorageOperator | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | PoolImmutables | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | PoolState | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | AdaptiveFee | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | Constants | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | DataStorage | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | PIFee | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | PriceMovementMath | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | Sqrt | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | TickManager | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | TickTable | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | TokenDeltaMath | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | AlgebraFactory | own contract | 0xabe165… (selected) `0xabe1655110112d0e45ef91e94f8d757e4ddba59c` — deployed 2023-01-03 15:23:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | AlgebraPool | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | AlgebraPoolDeployer | own contract | 0x965a85… (selected) `0x965a857955d868fd98482e9439b1af297623fb94` — deployed 2023-01-03 15:22:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | DataStorageOperator | unmatched — not counted | — | listed in scope | no |
| Hexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf | AdaptiveFee | unmatched — not counted | — | mentioned in finding 4 and 6 | no |
| Hexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf | DataStorage | unmatched — not counted | — | mentioned in finding 2 and 3 | no |
| Hexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf | AlgebraFactory | own contract | 0xabe165… (selected) `0xabe1655110112d0e45ef91e94f8d757e4ddba59c` — deployed 2023-01-03 15:23:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Hexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf | IAlgebraPool | unmatched — not counted | — | mentioned in finding 5 | no |
| Hexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf | PoolAddress | unmatched — not counted | — | mentioned in finding 5 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonbeam | `0xd4b2b7dc9bc1c47852851f4c5dc345eaba1a5279` | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x24d357c3deda4f412a4d7b5e0db5f8e4a63d6e96` | AlgebraInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xf722a295abd8cfb691c78dd9b6699701491c3ff5` | AlgebraLimitFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x0d4f8a55a5b2583189468ca3b0a32d972f90e6e5` | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xb7c3e26785cbf145ed77b86d281817bafb719752` | LedgerBeacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xa732097e1c284fc4e64f077dd5360da81e1f2c68` | LedgerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x1ff2adaa387dd27c22b31086e658108588eda03a` | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x0fa8cde3e0cddf150d79add0f3d63cb6e0f2f079` | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xb4630acbab32254cd42728d2a1851c88604490ad` | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 74 |
| upstream | 2 |
| standard_library | 10 |
| needs_review | 278 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 12 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 107 unmatched
- Matched-own operational status: 12 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, low=1, medium=2
- Match method counts: unique_name=13

Zero-match audit list:

- [18297] SolidProof Audit Report
- [18298] <>

Fork inheritance lineage and inherited audits are included when available.
