# Agentic Audit Brief: BTCD

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: BTCD (`btcd`)
- Website: [https://btcd.fi/](https://btcd.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 86 unique implementations (86 raw deployments)
- Coverage basis: 2/3 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,133,883.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for BTCD. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, ethereum. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: erc20 (2), erc20permit (2), ownable (2), accesscontrol (1), erc165 (1), erc4626 (1), multicall (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xcad51a95ad91fe0912df7b5f5150f622a7fadafd`, chain 1)
- UnnamedContract (`0xd22fff18b5e25ef1f07f8e194b89966652d44f5b`, chain 1)
- UnnamedContract (`0xf8f226da66244f89e70c5b5d1a5c5b0d505eb1d8`, chain 1)
- BTCD (`0xc6694e05b750015f54ac646544a4a9d33cbe4086`, chain 1)
- BTCDStaking (`0x3bc801419479865b24b4d32fab0bf64638abbd5f`, chain 1)
- VaultMinting (`0x700ac5f087468a253920818e662f08ad7d991af5`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/3 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 80 discovered implementations shown in the inventory but excluded from coverage (9 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 6 of 86 unique; 80 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/83
- Verified + Unaudited implementations: 81
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 86
- Raw deployments: 86
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 1 | 1.2% | 2025-10 |
| Omniscia | Tier 2 | 1 | 1.2% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BTCD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381510 | `0xc6694e05b750015f54ac646544a4a9d33cbe4086` | ✅ Audited |
| BTCDStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381508 | `0x3bc801419479865b24b4d32fab0bf64638abbd5f` | ✅ Audited |

### ⚠️ Verified + Unaudited (81)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveCarryTradePositionManager | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7457af3cbc75e30042bf1b7da69cabc5d5563e4b` | ⚠️ Unaudited |
| Agent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46e6ade9b7b59e151c5bcc877c9b90d50021553a` | ⚠️ Unaudited |
| AgentUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x804739d527b550260f633462dedab13399c3953a` | ⚠️ Unaudited |
| AlusdTokenMainnetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc7e22e8c8fa860ff6cd7a90c34e466ee0bd950c` | ⚠️ Unaudited |
| AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4681a847863f1d1a584c298ae5a7ac4343704e8f` | ⚠️ Unaudited |
| ApyTieredFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb6dafb36b40c9c7371108f66a5184ff3b01ee0d` | ⚠️ Unaudited |
| ATokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3078742bacdfecbe6f8d9e77f1aaa1000c074fcf` | ⚠️ Unaudited |
| BridgeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x716fad40899277e5914bf7fc5f2563caf1afc099` | ⚠️ Unaudited |
| BTCDMinting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x270e9eef1ad5118f117547e6f809cbdc7a56b45f` | ⚠️ Unaudited |
| BTCPeggedTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2a466df120fb847520763461d99c22ea5ba8cc8` | ⚠️ Unaudited |
| CrossChainDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50361afaafd269c1e9b74866a14579bbc512a41c` | ⚠️ Unaudited |
| CurveStableSwapNG | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3cef1afc0e8324b57293a6e7ce663781bbefbb79` | ⚠️ Unaudited |
| CurveSUsdsPositionManager | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x81ae2ce1a7af582e1f186c0d88415fd752eae814` | ⚠️ Unaudited |
| CurveTriPoolPositionManager | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x7c82b4a667bf5dd6a58dbfdb34ac3a4e0d2c6543` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf63dc91f68e0adf5692acf17cb632dc17417bb` | ⚠️ Unaudited |
| DepositToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f57db31ae6d62f75297c0f542e1567e0d41650a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x023dcf516c349b615120ee731add909645ec35fb` | ⚠️ Unaudited |
| ERC4626Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32cbc628325eb5a3000d3182c72539c77eb5ff59` | ⚠️ Unaudited |
| ERC4626TokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28817036451a4de34ac3df935a6762a2a1c60c97` | ⚠️ Unaudited |
| FeeProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6a4db8d44769c0420742a750fc8a5c4ec077585` | ⚠️ Unaudited |
| FISC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68b8b995cfd068805158c1eaefa7bbfa7503a27c` | ⚠️ Unaudited |
| FISCStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bcafa98867bb972a9a2ae53bb228c96e3f71187` | ⚠️ Unaudited |
| FluidLitePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdd0224cc556af301e06d46bbe27b5298d25a0f9` | ⚠️ Unaudited |
| FluidLiteVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x273da948aca9261043fbdb2a857bc255ecc29012` | ⚠️ Unaudited |
| GmPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf307925e44bbac289c1ef6221a8ae36b839f4d0` | ⚠️ Unaudited |
| HemiBTCRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d992cf60870237c74eef68def2ba1f1906fc9e6` | ⚠️ Unaudited |
| IbBtcTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656f1f3a4df83a10afb2bd2ecad8ef4a96c9e4d0` | ⚠️ Unaudited |
| InfiniFiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf974d7435e86db32d8a6d021934712ea51f2fb41` | ⚠️ Unaudited |
| InifniFiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa24b17e30e88d8ea582a2c41d0d8c9208efe8416` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c` | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4316d27ec627e03bd4d176e570cd0018e6a0456` | ⚠️ Unaudited |
| LitePSMSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e91c9ff0c495e1e50b470aedecc9b9da1238183` | ⚠️ Unaudited |
| MainAndFallbackOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0af15b4689cf81a9f1bfc6857d842f2813d3017` | ⚠️ Unaudited |
| MaplePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80ac24aa929eaf5013f6436cda2a7ba190f5cc0b` | ⚠️ Unaudited |
| MasterOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb2d0baae78f1dc2a8504b471f3cea257b2c3766` | ⚠️ Unaudited |
| MetAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x265714b10b9309a8a7a505dbfa6cb6c39b842309` | ⚠️ Unaudited |
| MintingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09d575eaaf399c0f81b6ea2be4990512cbd1a79f` | ⚠️ Unaudited |
| Morpho | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb` | ⚠️ Unaudited |
| MorphoBlueSupplyPositionManager | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x24313a5db051e08e8064582f8a5e2f5c52968319` | ⚠️ Unaudited |
| MStableTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffd74ecf5b4eec6eac2624764933fb5f2e2dfd09` | ⚠️ Unaudited |
| Multicall | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x18f1fac179feb0ee44f339a616fefb979a6961be` | ⚠️ Unaudited |
| NativeTokenGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x186df63e79a7089dbb325567f587ebb5a3743aa6` | ⚠️ Unaudited |
| OFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06ea695b91700071b161a434fed42d1dcbad9f00` | ⚠️ Unaudited |
| OFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010f0bd6576949e6ac6eea11ed8c535388340e94` | ⚠️ Unaudited |
| Operator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc06d6347915f6b5e9dbb53fe17b988b99dbad360` | ⚠️ Unaudited |
| PerformanceFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x073a51b50f49a82345ef8c3ae1bb1cfc0bc74c4a` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb2a9e5425a84a93ee1f6a8f98aa3edabafaa27` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01491b3598a90c080b9429f9a86764fa6845ae65` | ⚠️ Unaudited |
| PositionRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c82257e30a73e268ec578f419f35dbce1ef7435` | ⚠️ Unaudited |
| PriceProvidersAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a21ec8ee93971d4b4093c0895fd841c7169a23` | ⚠️ Unaudited |
| ProtocolTieredFeePolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59633b825d4aa12cb0907616746d76dd88f76f40` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x262b12c5701ddf1edac2870ad6338d23d5853bdd` | ⚠️ Unaudited |
| ProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cacd2d64edccd5df47824a0b85a1dacca4b7102` | ⚠️ Unaudited |
| PullOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f278b7eff04add48ff81ae1a01cbc178b3dd351` | ⚠️ Unaudited |
| PythMainnetPriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c2d5b1e7d7be588389bdb94138cc37dc014e85c` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f6c71f41232a1aeae2623c4ac7b111c38406834` | ⚠️ Unaudited |
| RedstoneMainnetPriceProvider | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x2e597e6c827a8527413c19065ec0725e03eeac6e` | ⚠️ Unaudited |
| RewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70845de4d1cc8fa169c42574e329a298ebcf44d8` | ⚠️ Unaudited |
| RoutedSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f156189a3cd28dfc8fb7bbbace58f98f09c0bb3` | ⚠️ Unaudited |
| SBTCDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x332ebf042a7b7d87a8a2628186f8a5b12d8a6d94` | ⚠️ Unaudited |
| SBTCDPegUsdcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ed5777431184d2fe33dd993a776960a2fd408b7` | ⚠️ Unaudited |
| SiUsdTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37d8c0afeef48aa9d925475cf6c73e4d8c74d931` | ⚠️ Unaudited |
| SmartFarmingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b70e663ba015c59556b6186822d90159d5f7c16` | ⚠️ Unaudited |
| StableCoinProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55744ebb196d0e4ddea70204142eaf517ef005a` | ⚠️ Unaudited |
| SUsdsPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x344e78a1b267c19dfd6d53838e8815ac54e2cf58` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a02ae403d6ae970748b889bb4e36fd89ae7e5eb` | ⚠️ Unaudited |
| SwapperUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbde032fdf114b4005e5320881b96246347d2b2d6` | ⚠️ Unaudited |
| SyntheticToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8a7ceccecbeded9f5350f4ca8faf55ab92f3390` | ⚠️ Unaudited |
| SyrupSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde128f649634e7b3e4b6c372836d38f435da9ba3` | ⚠️ Unaudited |
| TBYOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ce811b3ee51344bf9c2d3595dae56960f9b4a3` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1425188a9c286ad3cce85eef40d93ad1259bea5d` | ⚠️ Unaudited |
| VariableDebtTokenInstance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x40aabef1aa8f0eec637e0e7d92fbffb2f26a8b7b` | ⚠️ Unaudited |
| VaultMinting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381509 | `0x700ac5f087468a253920818e662f08ad7d991af5` | ⚠️ Unaudited |
| VesperVotingPowerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd744320abd3bd4445dc3c90c889391bd454d5b30` | ⚠️ Unaudited |
| VesperVotingPowerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x707c243b59fedf29730cd3d1025fbeeea0412075` | ⚠️ Unaudited |
| VetroArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x359902b1e60574e56248ecdc57c1df1f20982914` | ⚠️ Unaudited |
| VspMainnetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff907f877e92ef39cdfba6d0db73e9e2ac0f538` | ⚠️ Unaudited |
| VUSDArbitrage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c17cc10ddc5b352f7c6c5dda33b07769bff310a` | ⚠️ Unaudited |
| YieldBasisStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x174a18b8fdf9ae3ff5e841b69ca9a57d2ebfca59` | ⚠️ Unaudited |
| YieldDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75e6304d62385fd3590cb9c5ad5d7a729ae91dc7` | ⚠️ Unaudited |
| ZeroBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x244f683d988781545788ef97292cccdba8c88871` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381511 | `0xcad51a95ad91fe0912df7b5f5150f622a7fadafd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381512 | `0xd22fff18b5e25ef1f07f8e194b89966652d44f5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381513 | `0xf8f226da66244f89e70c5b5d1a5c5b0d505eb1d8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Nethermind-BTCD-Audit-1.pdf](https://1304119658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FnIdk11PalG0VB24i5MDQ%2Fuploads%2FSam1sOy7RoQXOzxl8WHQ%2FNethermind-BTCD-Audit-1.pdf) | Nethermind | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [Nethermind-BTCD-Audit-2.pdf](https://1304119658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FnIdk11PalG0VB24i5MDQ%2Fuploads%2FrWme4izaqYP4p8HHl0pE%2FNethermind-BTCD-Audit-2.pdf) | Nethermind | Audit | 2025-10 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 7 | high |
| [Omniscia BTCD Labs Audit.pdf](https://1304119658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FnIdk11PalG0VB24i5MDQ%2Fuploads%2FdaWV0PfiMzX77qe12Fu8%2FOmniscia%20BTCD%20Labs%20Audit.pdf) | Omniscia | Audit | 2025-12 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16847] Nethermind-BTCD-Audit-1.pdf — matched: All contracts and interfaces listed in the Audited Files table (Section 2) are in scope. Audit date is from the cover page and executive summary.
- [16848] Nethermind-BTCD-Audit-2.pdf — matched: All contracts listed in the 'Audited Files' table (Section 2) are in scope. The final report date is October 06, 2025.
- [16849] Omniscia BTCD Labs Audit.pdf — matched: Scope section not explicitly listed; contracts inferred from audit overview. Date from revision table: December 17th 2025.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Nethermind-BTCD-Audit-1.pdf | BTCD | own contract | BTCD (selected) `0xc6694e05b750015f54ac646544a4a9d33cbe4086` — deployed 2025-10-29 21:28:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind-BTCD-Audit-1.pdf | BTCDMinting | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-1.pdf | SingleAdminAccessControl | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-1.pdf | IBTCD | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-1.pdf | IBTCDMinting | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-1.pdf | IBTCDDefinitions | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-1.pdf | IBTCDMintingEvents | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-1.pdf | ISingleAdminAccessControl | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-2.pdf | BTCD | own contract | BTCD (selected) `0xc6694e05b750015f54ac646544a4a9d33cbe4086` — deployed 2025-10-29 21:28:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind-BTCD-Audit-2.pdf | BTCDMinting | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-2.pdf | SingleAdminAccessControl | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-2.pdf | FISC | own contract | 0xcad51a… (selected) `0xcad51a95ad91fe0912df7b5f5150f622a7fadafd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Nethermind-BTCD-Audit-2.pdf | IBTCDMinting | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-2.pdf | ISingleAdminAccessControl | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-2.pdf | IBTCD | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-2.pdf | IBTCDMintingEvents | unmatched — not counted | — | listed in Audited Files table | no |
| Nethermind-BTCD-Audit-2.pdf | IBTCDDefinitions | unmatched — not counted | — | listed in Audited Files table | no |
| Omniscia BTCD Labs Audit.pdf | BTCDStaking | own contract | BTCDStaking (selected) `0x3bc801419479865b24b4d32fab0bf64638abbd5f` — deployed 2025-12-19 20:24:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Omniscia BTCD Labs Audit.pdf | FISCStaking | unmatched — not counted | — | mentioned as core contract in audit overview | no |
| Omniscia BTCD Labs Audit.pdf | BTCDYieldDistributor | unmatched — not counted | — | mentioned as core contract in audit overview | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x700ac5f087468a253920818e662f08ad7d991af5` | VaultMinting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 7 |
| standard_library | 4 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 16 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: unique_name=4

Fork inheritance lineage and inherited audits are included when available.
