# Agentic Audit Brief: StellaSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 8 audit(s)
- Eligible audit results: 10 (8 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: StellaSwap (`stellaswap`)
- Website: [https://stellaswap.com](https://stellaswap.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: moonbeam
- Contract surface: 95 unique implementations (96 raw deployments)
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
Origin: swapbased (`0x288c0ea15b95d37891b2ffcde1d6ebc32620f9fb`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AlgebraLimitFarming** (`0xf722a295abd8cfb691c78dd9b6699701491c3ff5`, chain 1284)
Origin: quickswap (`0x9923f42a02a82da63ee0dbbc5f8e311e3dd8a1f8`)
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
- Outside the address book: 71 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 24 of 95 unique; 71 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/87
- Verified + Unaudited implementations: 83
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 95
- Raw deployments: 96
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
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | moonbeam | n/a | `0x1099367bbd6c9ff9d26de67ae67a03a2e1265025` | ⚠️ Unaudited |
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
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | moonbeam | n/a | `0x0e4caef48de8fec07b7dfeae8d73848aaa8be0cb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-257120 | 2 deployments: moonbeam `0x21b23cb583056d10d81378ede349086fa1940819`; moonbeam `0xf7d57bf6c27973a42c2464845dab046361a61f7a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-257119 | `0x5927e31cd0b8213892fb0c44f7c1c94dcb830263` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | moonbeam | n/a | `0x707f4e56829a6b81b0dcf8af7aa4d89f3b2bc680` | ⚠️ Unaudited |
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

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257095 | `0x3b23f0675ffc45153eca239664ccaefc5e816b9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257098 | `0x965a857955d868fd98482e9439b1af297623fb94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257099 | `0xa2d7009ea7502cd796d174ffaa7e26ece8edeacf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257102 | `0xabe1655110112d0e45ef91e94f8d757e4ddba59c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257107 | `0xbc7e02c4178a7df7d3e564323a5c359dc96c4db4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257109 | `0xcf6fb88ac742ab896595705816079c360c590de5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257113 | `0xe6d0ed3759709b743707dcfecae39bc180c981fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257114 | `0xe8a5c0039226269313c89c093a6c3524c4d39fa4` | ❓ Unverified |

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
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | AlgebraFactory | own contract | 0xabe165… (selected) `0xabe1655110112d0e45ef91e94f8d757e4ddba59c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | AlgebraPool | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | AlgebraPoolDeployer | own contract | 0x965a85… (selected) `0x965a857955d868fd98482e9439b1af297623fb94` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | DataStorageOperator | unmatched — not counted | — | listed in scope | no |
| Hexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf | AdaptiveFee | unmatched — not counted | — | mentioned in finding 4 and 6 | no |
| Hexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf | DataStorage | unmatched — not counted | — | mentioned in finding 2 and 3 | no |
| Hexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf | AlgebraFactory | own contract | 0xabe165… (selected) `0xabe1655110112d0e45ef91e94f8d757e4ddba59c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| standard_library | 11 |
| needs_review | 8 |

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
