# Agentic Audit Brief: Metronome

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Metronome (`metronome`)
- Website: [https://www.metronome.io/](https://www.metronome.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, optimism
- Contract surface: 201 unique implementations (201 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $19,045,296.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Metronome. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across base, ethereum, optimism. Structural roles: 4 core, 3 supporting. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (4), supporting (3)
- Contract kinds: contract (7)
- Detected standards: erc20 (3), erc165 (2), erc1967proxy (1), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (2), solmate (1), uniswap (1), uniswap-v2 (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 78 contracts are derived from known codebases. 78 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x11ead8...80048a`, chain 1)
- UnnamedContract (`0x1887e7...745321`, chain 1)
- UnnamedContract (`0x1a9551...3d89e3`, chain 1)
- UnnamedContract (`0x1f9732...ccc93e`, chain 1)
- UnnamedContract (`0x24f2d1...bcf4ad`, chain 1)
- UnnamedContract (`0x3364f5...f17f46`, chain 1)
- UnnamedContract (`0x3691ef...f5fb0a`, chain 1)
- UnnamedContract (`0x45ac59...c8925a`, chain 1)
- UnnamedContract (`0x480e31...db0174`, chain 1)
- UnnamedContract (`0x564baa...7aad32`, chain 1)
- UnnamedContract (`0x5c5741...37955f`, chain 1)
- UnnamedContract (`0x608249...d484ef`, chain 1)
- UnnamedContract (`0x63ec45...ef63ac`, chain 1)
- UnnamedContract (`0x64351f...085160`, chain 1)
- UnnamedContract (`0x691af9...2774ec`, chain 1)
- UnnamedContract (`0x6b53c1...bc5e5e`, chain 1)
- UnnamedContract (`0x7f9e66...bb4683`, chain 1)
- UnnamedContract (`0x8b4f8a...e231c7`, chain 1)
- UnnamedContract (`0x8bd81c...fe7302`, chain 1)
- UnnamedContract (`0x9e5bdf...e5e379`, chain 1)
- UnnamedContract (`0x9f6a09...678ae3`, chain 1)
- UnnamedContract (`0xa77b14...c1efc3`, chain 1)
- UnnamedContract (`0xab5eb1...b9befa`, chain 1)
- UnnamedContract (`0xb93f48...b5f7cb`, chain 1)
- UnnamedContract (`0xbcfa95...28a6ab`, chain 1)
- UnnamedContract (`0xd4e202...53afad`, chain 1)
- UnnamedContract (`0xdaec88...266258`, chain 1)
- UnnamedContract (`0xe0e7ac...3aedf1`, chain 1)
- UnnamedContract (`0xe3944b...f427db`, chain 1)
- UnnamedContract (`0xec37f5...3df6af`, chain 1)
- UnnamedContract (`0xf37982...aa27ea`, chain 1)
- UnnamedContract (`0xf43de8...937d7c`, chain 1)
- UnnamedContract (`0x1610e3...a0c5a5`, chain 10)
- UnnamedContract (`0x1e6039...fd9b27`, chain 10)
- UnnamedContract (`0x25ee6e...671f36`, chain 10)
- UnnamedContract (`0x293aac...8ece9e`, chain 10)
- UnnamedContract (`0x33bca1...404721`, chain 10)
- UnnamedContract (`0x4c6bf8...7c34f6`, chain 10)
- UnnamedContract (`0x4e7179...82de64`, chain 10)
- UnnamedContract (`0x564baa...7aad32`, chain 10)
- UnnamedContract (`0x5a9624...b4ba54`, chain 10)
- UnnamedContract (`0x5c18f4...85c28e`, chain 10)
- UnnamedContract (`0x623167...5ffabf`, chain 10)
- UnnamedContract (`0x639415...f959c0`, chain 10)
- UnnamedContract (`0x696ee5...6351a0`, chain 10)
- UnnamedContract (`0x77256d...07a41c`, chain 10)
- UnnamedContract (`0x8d8af8...f7f9d3`, chain 10)
- UnnamedContract (`0x95dcff...7eecdd`, chain 10)
- UnnamedContract (`0x9dabae...492ca0`, chain 10)
- UnnamedContract (`0xabf27b...75b5f6`, chain 10)
- UnnamedContract (`0xb55ced...94095a`, chain 10)
- UnnamedContract (`0xc2c433...55fd5f`, chain 10)
- UnnamedContract (`0xcea698...198b52`, chain 10)
- UnnamedContract (`0xd2e323...149c28`, chain 10)
- UnnamedContract (`0xe7c65e...72a6a1`, chain 10)
- UnnamedContract (`0xebe91f...47a71e`, chain 10)
- UnnamedContract (`0xff1195...e1620b`, chain 10)
- UnnamedContract (`0x2af13b...899217`, chain 8453)
- UnnamedContract (`0x2f12df...ff986c`, chain 8453)
- UnnamedContract (`0x30eac0...fc200e`, chain 8453)
- UnnamedContract (`0x3a04bf...4ce950`, chain 8453)
- UnnamedContract (`0x4372a2...d2fd82`, chain 8453)
- UnnamedContract (`0x526728...cbae9d`, chain 8453)
- UnnamedContract (`0x6f622b...42aa98`, chain 8453)
- UnnamedContract (`0x7ba6f0...e98c98`, chain 8453)
- UnnamedContract (`0x7bcc1d...11cfde`, chain 8453)
- UnnamedContract (`0x8b581d...9bf51e`, chain 8453)
- UnnamedContract (`0xaedf96...22320e`, chain 8453)
- UnnamedContract (`0xc61413...d7f54e`, chain 8453)
- UnnamedContract (`0xc7f2f7...453476`, chain 8453)
- UnnamedContract (`0xe1525a...8b0cc6`, chain 8453)
- GnosisSafe (`0x993946...23c10f`, chain 1)
- L2StandardERC20 (`0x9a2e53...5d7836`, chain 10)
- Metronome2 (`0x2ebd53...db89aa`, chain 1)
- MStableTokenOracle (`0xffd74e...2dfd09`, chain 1)
- OptimismMintableERC20 (`0x93dc5c...e435a5`, chain 8453)
- TransparentUpgradeableProxy (`0x2f4f85...d73e3d`, chain 8453)
- UniswapV2LikePriceProvider (`0x790e5f...e36acb`, chain 1)

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 78/89 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 78 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 123 discovered implementations excluded (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Deployed-live implementations: 78 of 201 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 71
- Unique implementations: 201
- Raw deployments: 201
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (130)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Agent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46e6ad...21553a` | ⚠️ Unaudited |
| AgentUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x804739...c3953a` | ⚠️ Unaudited |
| AlphaHomora | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54ce99...9babcc` | ⚠️ Unaudited |
| AlusdTokenMainnetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ea1c7...ff5377` | ⚠️ Unaudited |
| AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x2f248e...df9543` | ⚠️ Unaudited |
| AmoUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1ac222...9269d8` | ⚠️ Unaudited |
| ApyTieredFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb6daf...01ee0d` | ⚠️ Unaudited |
| ATokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307874...074fcf` | ⚠️ Unaudited |
| BTCPeggedTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54525f...4946b4` | ⚠️ Unaudited |
| CrossChainDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a9e6d...7fd6d8` | ⚠️ Unaudited |
| CrossChainDispatcherUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x69e35c...68a935` | ⚠️ Unaudited |
| CrossChainDispatcherUpgraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xce774a...4b19d8` | ⚠️ Unaudited |
| Crv4PoolStrategySUSDPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5708e0...40d9e0` | ⚠️ Unaudited |
| CTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c3085...57a87e` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e6039...fd9b27` | ⚠️ Unaudited |
| DebtTokenUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a8ea5...245771` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04c3af...10521a` | ⚠️ Unaudited |
| DepositTokenUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x084a7d...db9a19` | ⚠️ Unaudited |
| EarnVesperStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d94ce...5d66a5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x023dcf...ec35fb` | ⚠️ Unaudited |
| ERC4626Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32cbc6...b5ff59` | ⚠️ Unaudited |
| ERC4626TokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x288170...c60c97` | ⚠️ Unaudited |
| ESMET | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01fc4c...7e2698` | ⚠️ Unaudited |
| ESMET721 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x89c4ae...d4c21a` | ⚠️ Unaudited |
| ESMET721Upgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb699b7...8c4aeb` | ⚠️ Unaudited |
| ESMETUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd23b6f...4bff2b` | ⚠️ Unaudited |
| ESVSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02fc85...58623b` | ⚠️ Unaudited |
| ESVSP721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676c0a...014363` | ⚠️ Unaudited |
| ESVSP721Upgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e8c5c...2cbd4e` | ⚠️ Unaudited |
| ESVSPUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54ae48...47a307` | ⚠️ Unaudited |
| Euler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67be85...cc1165` | ⚠️ Unaudited |
| EulerVesperXy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b5de5...94b609` | ⚠️ Unaudited |
| FeeProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25ee6e...671f36` | ⚠️ Unaudited |
| FeeProviderUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x340972...18cf52` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-247419 | `0x993946...23c10f` | ⚠️ Unaudited |
| GovernorBravoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1015bd...390a5c` | ⚠️ Unaudited |
| HemiBTCRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d992c...6fc9e6` | ⚠️ Unaudited |
| IbBtcTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a360a...756346` | ⚠️ Unaudited |
| InfiniFiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf974d7...f2fb41` | ⚠️ Unaudited |
| InifniFiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa24b17...fe8416` | ⚠️ Unaudited |
| L2StandardERC20 | unknown | project_anchor | own_supporting | 0 | optimism | unit-247371 | `0x9a2e53...5d7836` | ⚠️ Unaudited |
| MainAndFallbackOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0af15...3d3017` | ⚠️ Unaudited |
| MakerVesper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd08cfe...a7c078` | ⚠️ Unaudited |
| MakerVesperStETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2dda4...8698e1` | ⚠️ Unaudited |
| MasterOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80704a...4f46e2` | ⚠️ Unaudited |
| MetAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x265714...842309` | ⚠️ Unaudited |
| Metronome2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247265 | `0x2ebd53...db89aa` | ⚠️ Unaudited |
| MetronomeGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cfddc...3a34e9` | ⚠️ Unaudited |
| MetronomeVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdcbf4...947de6` | ⚠️ Unaudited |
| MetronomeVotingPowerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119b9c...e5fb5f` | ⚠️ Unaudited |
| MiniArmyKnife | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x583e49...48201a` | ⚠️ Unaudited |
| MockOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff749...b5e984` | ⚠️ Unaudited |
| MockVSP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cda65...5e3f97` | ⚠️ Unaudited |
| MStableTokenOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247338 | `0xffd74e...2dfd09` | ⚠️ Unaudited |
| MultiSend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521dea...d4a5fb` | ⚠️ Unaudited |
| NativeTokenGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x186df6...743aa6` | ⚠️ Unaudited |
| OFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06ea69...ad9f00` | ⚠️ Unaudited |
| OFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010f0b...340e94` | ⚠️ Unaudited |
| Operator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc06d63...bad360` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | project_anchor | own_supporting | 0 | base | unit-247408 | `0x93dc5c...e435a5` | ⚠️ Unaudited |
| PerformanceFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x073a51...c74c4a` | ⚠️ Unaudited |
| PingPong | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x439780...2badaa` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x029078...ed9b25` | ⚠️ Unaudited |
| PoolAccountant | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0fae21...ff6e56` | ⚠️ Unaudited |
| PoolAccountantUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31e41a...260e72` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01491b...45ae65` | ⚠️ Unaudited |
| PoolRegistryUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x39f7fc...28af3d` | ⚠️ Unaudited |
| PoolRegistryUpgraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x997f6d...b92ffc` | ⚠️ Unaudited |
| PoolRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x10c72f...761919` | ⚠️ Unaudited |
| PoolRewardsUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x655845...e03d23` | ⚠️ Unaudited |
| PoolUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf7f3...08b77b` | ⚠️ Unaudited |
| PoolUpgraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53bdb9...85fbf6` | ⚠️ Unaudited |
| PoolUpgraderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4ca141...0440c2` | ⚠️ Unaudited |
| PositionRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c8225...ef7435` | ⚠️ Unaudited |
| PriceProvidersAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a21e...169a23` | ⚠️ Unaudited |
| Proposals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x760a0a...6269e4` | ⚠️ Unaudited |
| ProtocolTieredFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59633b...f76f40` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x262b12...853bdd` | ⚠️ Unaudited |
| ProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0ecc84...faa542` | ⚠️ Unaudited |
| ProxyOFTUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x305b30...0da8c4` | ⚠️ Unaudited |
| ProxyOFTUpgraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0f6fd0...b8e866` | ⚠️ Unaudited |
| PullOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f278b...3dd351` | ⚠️ Unaudited |
| PythMainnetPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c2d5b...14e85c` | ⚠️ Unaudited |
| QuoterUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa3c6d5...57ef69` | ⚠️ Unaudited |
| RariFuse8Eth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82f53c...c3458a` | ⚠️ Unaudited |
| RedstoneMainnetPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e597e...eeac6e` | ⚠️ Unaudited |
| Rewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0d6d94...e43b97` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x025347...7bcad7` | ⚠️ Unaudited |
| RewardsDistributorUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e117b...a9443f` | ⚠️ Unaudited |
| RewardsUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bdba0...7553f2` | ⚠️ Unaudited |
| RoutedSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f8b10...dd1745` | ⚠️ Unaudited |
| SiUsdTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37d8c0...74d931` | ⚠️ Unaudited |
| SmartFarmingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d29f7...f5819a` | ⚠️ Unaudited |
| SmartFarmingManagerUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x720501...1efb70` | ⚠️ Unaudited |
| SonneVesperXy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4fd493...1a181b` | ⚠️ Unaudited |
| StableCoinProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091f06...486cda` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x229f19...cd56a5` | ⚠️ Unaudited |
| SwapperUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbde032...d2b2d6` | ⚠️ Unaudited |
| SynthAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a7317...8d5794` | ⚠️ Unaudited |
| SyntheticToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x105ba4...27debf` | ⚠️ Unaudited |
| SyntheticTokenUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x76d20a...bf3256` | ⚠️ Unaudited |
| SyntheticTokenUpgraderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc44f15...ce8cc3` | ⚠️ Unaudited |
| SynthUsdTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00518d...311cd5` | ⚠️ Unaudited |
| TBYOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ce81...f9b4a3` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x051e40...5ea7b9` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c5108...fb7775` | ⚠️ Unaudited |
| TokenPorter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0cef6...6173b3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-247421 | `0x2f4f85...d73e3d` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x12e484...81c723` | ⚠️ Unaudited |
| TreasuryUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0efbfe...e120fc` | ⚠️ Unaudited |
| UniswapV2LikePriceProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247294 | `0x790e5f...e36acb` | ⚠️ Unaudited |
| USDPeggedTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x278957...3bafb1` | ⚠️ Unaudited |
| Validator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe804eb...4eb1c1` | ⚠️ Unaudited |
| VesperAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x639c9e...cf9531` | ⚠️ Unaudited |
| VesperBridgeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cbb7b...c2b9b5` | ⚠️ Unaudited |
| VesperEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd3783...41f661` | ⚠️ Unaudited |
| VesperEarnDrip | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x285a45...9f6dbb` | ⚠️ Unaudited |
| VesperEarnSaddleLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15911b...703f8a` | ⚠️ Unaudited |
| VesperIronBankXYStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d198...63828a` | ⚠️ Unaudited |
| VesperVotingPowerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd74432...4d5b30` | ⚠️ Unaudited |
| VesperVotingPowerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x707c24...412075` | ⚠️ Unaudited |
| VETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x951397...3cca8c` | ⚠️ Unaudited |
| VetroArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x359902...982914` | ⚠️ Unaudited |
| VPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4dbe3f...30aa7b` | ⚠️ Unaudited |
| VPoolTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6a57e...16cd2e` | ⚠️ Unaudited |
| VPoolUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x582ebf...9e0446` | ⚠️ Unaudited |
| VspMainnetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff907...c0f538` | ⚠️ Unaudited |
| VspMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf10c3...303e1e` | ⚠️ Unaudited |
| VUSDArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c17cc...ff310a` | ⚠️ Unaudited |
| WETHAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eb9ab...9fb88c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (71)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247251 | `0x11ead8...80048a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247255 | `0x1887e7...745321` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247257 | `0x1a9551...3d89e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247260 | `0x1f9732...ccc93e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247261 | `0x24f2d1...bcf4ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247267 | `0x3364f5...f17f46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247269 | `0x3691ef...f5fb0a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247271 | `0x45ac59...c8925a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247273 | `0x480e31...db0174` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247274 | `0x564baa...7aad32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247282 | `0x5c5741...37955f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247284 | `0x608249...d484ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247286 | `0x63ec45...ef63ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247288 | `0x64351f...085160` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247290 | `0x691af9...2774ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247292 | `0x6b53c1...bc5e5e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247296 | `0x7f9e66...bb4683` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247298 | `0x8b4f8a...e231c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247300 | `0x8bd81c...fe7302` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247304 | `0x9e5bdf...e5e379` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247306 | `0x9f6a09...678ae3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247308 | `0xa77b14...c1efc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247310 | `0xab5eb1...b9befa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247314 | `0xb93f48...b5f7cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247316 | `0xbcfa95...28a6ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247320 | `0xd4e202...53afad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247322 | `0xdaec88...266258` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247328 | `0xe0e7ac...3aedf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247331 | `0xe3944b...f427db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247333 | `0xec37f5...3df6af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247335 | `0xf37982...aa27ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247336 | `0xf43de8...937d7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247340 | `0x1610e3...a0c5a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247343 | `0x1e6039...fd9b27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247345 | `0x25ee6e...671f36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247347 | `0x293aac...8ece9e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247349 | `0x33bca1...404721` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247351 | `0x4c6bf8...7c34f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247353 | `0x4e7179...82de64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247354 | `0x564baa...7aad32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247356 | `0x5a9624...b4ba54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247358 | `0x5c18f4...85c28e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247360 | `0x623167...5ffabf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247361 | `0x639415...f959c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247363 | `0x696ee5...6351a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247365 | `0x77256d...07a41c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247367 | `0x8d8af8...f7f9d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247369 | `0x95dcff...7eecdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247372 | `0x9dabae...492ca0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247374 | `0xabf27b...75b5f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247377 | `0xb55ced...94095a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247379 | `0xc2c433...55fd5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247380 | `0xcea698...198b52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247382 | `0xd2e323...149c28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247384 | `0xe7c65e...72a6a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247386 | `0xebe91f...47a71e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-247388 | `0xff1195...e1620b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247390 | `0x2af13b...899217` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247391 | `0x2f12df...ff986c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247393 | `0x30eac0...fc200e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247395 | `0x3a04bf...4ce950` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247397 | `0x4372a2...d2fd82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247400 | `0x526728...cbae9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247402 | `0x6f622b...42aa98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247403 | `0x7ba6f0...e98c98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247405 | `0x7bcc1d...11cfde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247407 | `0x8b581d...9bf51e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247410 | `0xaedf96...22320e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247412 | `0xc61413...d7f54e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247415 | `0xc7f2f7...453476` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-247417 | `0xe1525a...8b0cc6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Metronome Contracts Audit _ Revision.pdf](https://github.com/autonomoussoftware/metronome-audits/blob/master/Metronome%20Contracts%20Audit%20_%20Revision.pdf) | unknown | Audit | 2018-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17647] Metronome Contracts Audit _ Revision.pdf — no match: Audit report for Metronome project. Scope includes token, auctions, and autonomous converter contracts. All contracts are in monolithic.sol.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Metronome Contracts Audit _ Revision.pdf | MetronomeToken | unmatched — not counted | — | mentioned as project name and in scope | no |
| Metronome Contracts Audit _ Revision.pdf | Auctions | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | AutonomousConverter | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | Pricer | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | Formula | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | Token | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | MTNToken | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | SmartToken | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | Mintable | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | Owned | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | TokenLocker | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | Proceeds | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | FixedMath | unmatched — not counted | — | listed in scope | no |
| Metronome Contracts Audit _ Revision.pdf | ChainLedger | unmatched — not counted | — | mentioned in audit revision | no |
| Metronome Contracts Audit _ Revision.pdf | TokenPorter | unmatched — not counted | — | mentioned in audit revision | no |
| Metronome Contracts Audit _ Revision.pdf | ITokenPorter | unmatched — not counted | — | mentioned in notes | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x9a2e53...5d7836` | L2StandardERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2ebd53...db89aa` | Metronome2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xffd74e...2dfd09` | MStableTokenOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x93dc5c...e435a5` | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 122 |
| upstream | 2 |
| standard_library | 6 |
| needs_review | 71 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 17 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [17647] Metronome Contracts Audit _ Revision.pdf

Fork inheritance lineage and inherited audits are included when available.
