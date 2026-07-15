# Agentic Audit Brief: CIAN Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: CIAN Protocol (`cian-protocol`)
- Website: [https://yieldlayer.cian.app/vaults/0xB13aa2d0345b0439b064f26B82D8dCf3f508775d?chainId=1&utm_source=TPFDZE](https://yieldlayer.cian.app/vaults/0xB13aa2d0345b0439b064f26B82D8dCf3f508775d?chainId=1&utm_source=TPFDZE)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, mantle, polygon
- Contract surface: 119 unique implementations (120 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $265,571,154.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for CIAN Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, mantle, polygon. Structural roles: 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: infra (1)
- Contract kinds: abstract (1)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x8cb042...1a0f6e`, chain 1)
- UnnamedContract (`0xd896bf...009481`, chain 42161)
- UnnamedContract (`0xef3fd1...822aca`, chain 43114)
- GHOAvalanche (`0xa02b10...d671d2`, chain 43114)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 116 discovered implementations excluded (1 third-party/infra; 12 standard proxy/library)
- Proxy deployments represented within implementation groups: 18
- Deployed-live implementations: 3 of 119 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 119
- Raw deployments: 120
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (117)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdapterManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x907883...14e60e` | ⚠️ Unaudited |
| AdminModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x183d90...d67223` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x056c41...5ffbae` | ⚠️ Unaudited |
| AStETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1982b2...f82428` | ⚠️ Unaudited |
| ATokenInstance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x513c7e...918fff` | ⚠️ Unaudited |
| Automation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x056c41...5ffbae` | ⚠️ Unaudited |
| AvalonMintable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x322899...4027f1` | ⚠️ Unaudited |
| AvalonTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99c0fb...cd2e8e` | ⚠️ Unaudited |
| BankerJoeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x123d4f...6e77de` | ⚠️ Unaudited |
| BenqiAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61a4d3...111529` | ⚠️ Unaudited |
| BenqiAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85a7e1...55441c` | ⚠️ Unaudited |
| BeraPseudoBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a95f2...60d500` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x30b622...88bee7` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x004bae...4d5b57` | ⚠️ Unaudited |
| CianOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x149777...76d705` | ⚠️ Unaudited |
| CianOFTWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x237978...0f48ec` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x179c3c...69d7ae` | ⚠️ Unaudited |
| ConnectV2BenqiAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff5a7a...c35ca8` | ⚠️ Unaudited |
| ConnectV2QiAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xac33e9...a58527` | ⚠️ Unaudited |
| ControllerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x601954...ee5374` | ⚠️ Unaudited |
| ControllerLibSub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17f453...ce22ae` | ⚠️ Unaudited |
| ControllerLink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4792e1...625446` | ⚠️ Unaudited |
| CryptoCabz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76bf9a...ed5c30` | ⚠️ Unaudited |
| ERC2612Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x045969...9538df` | ⚠️ Unaudited |
| EulerWithdrawAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2b94c...91945d` | ⚠️ Unaudited |
| FBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55e225...4f9fc1` | ⚠️ Unaudited |
| FBTCWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1354e3...b7e682` | ⚠️ Unaudited |
| FeeBoxAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc05f77...11caa4` | ⚠️ Unaudited |
| FeeBoxETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b20d5...4fa7b4` | ⚠️ Unaudited |
| FeeBoxMATIC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c8126...0df776` | ⚠️ Unaudited |
| FeeBoxSAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa246db...fa39ae` | ⚠️ Unaudited |
| FeeBoxStETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x294fe9...4e8313` | ⚠️ Unaudited |
| FlashloanHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e055d...5574df` | ⚠️ Unaudited |
| GHOAvalanche | unknown | project_anchor | own_supporting | 1 | avalanche | unit-231858 | 2 deployments: avalanche `0xa02b10...d671d2`; avalanche `0xef3fd1...822aca` | ⚠️ Unaudited |
| GHOEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83291c...4e281f` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xf63b34...e33ecf` | ⚠️ Unaudited |
| InstaBenqiMappingAvalanche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe19fba...c58ba6` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x363637...721f3b` | ⚠️ Unaudited |
| LendingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0ad94...7792c7` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x039bf3...66d97d` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10338e...b05348` | ⚠️ Unaudited |
| OneInchAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x054ab5...c42515` | ⚠️ Unaudited |
| OneInchV5Adapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x594656...72ebaf` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa23075...738361` | ⚠️ Unaudited |
| ParaswapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x294fe9...4e8313` | ⚠️ Unaudited |
| ParaSwapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f00dc...eb2a64` | ⚠️ Unaudited |
| PglStakingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe59988...906cb2` | ⚠️ Unaudited |
| PglStakingContractProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4074da...eb9e4a` | ⚠️ Unaudited |
| PoolCeffu | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x53c8bf...97f7e3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1792f7...c86009` | ⚠️ Unaudited |
| Qi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x872943...76c0f5` | ⚠️ Unaudited |
| QiAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c0401...47ef1c` | ⚠️ Unaudited |
| QiAvaxHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc2de4...c804d5` | ⚠️ Unaudited |
| QiErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x334ad8...9a7909` | ⚠️ Unaudited |
| QiErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c9f01...0ddd30` | ⚠️ Unaudited |
| QiTokenSaleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23de20...9d6bea` | ⚠️ Unaudited |
| QiTokenSaleDistributorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1f5ae...6bb618` | ⚠️ Unaudited |
| QuickSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6c5766...ac12d3` | ⚠️ Unaudited |
| ReadModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e9378...1222d1` | ⚠️ Unaudited |
| ReceiverOnMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cc3eb...4a55ac` | ⚠️ Unaudited |
| RedeemOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09826f...6fe392` | ⚠️ Unaudited |
| SAVAXAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b2ba8...718dcf` | ⚠️ Unaudited |
| StaderAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e231b...1ddfa0` | ⚠️ Unaudited |
| StaderAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x406e1e...242de7` | ⚠️ Unaudited |
| StaderSixAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2ae6b...1e1ebe` | ⚠️ Unaudited |
| StrategyAvalon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf42b8e...d5cf00` | ⚠️ Unaudited |
| StrategyBedrock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x302d70...23a755` | ⚠️ Unaudited |
| StrategyBedrock18DEC2025 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24a4fb...6d9425` | ⚠️ Unaudited |
| StrategyBedrock22MAY2025 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09511b...8cab3e` | ⚠️ Unaudited |
| StrategyBedrock27MAR2025 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31c3c3...7c20a5` | ⚠️ Unaudited |
| StrategyCrossStub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe457e5...13234f` | ⚠️ Unaudited |
| StrategyDefault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0415d1...f923a2` | ⚠️ Unaudited |
| StrategyDummyImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28c24f...506157` | ⚠️ Unaudited |
| StrategyETHConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ad20...c9758c` | ⚠️ Unaudited |
| StrategyEuler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x869620...f683d0` | ⚠️ Unaudited |
| StrategyGHO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dff2c...b2bb60` | ⚠️ Unaudited |
| StrategyHyperliquidSTETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x142193...d2cf1e` | ⚠️ Unaudited |
| StrategyLista | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25440d...ba1e2f` | ⚠️ Unaudited |
| StrategyListaEgo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42d14e...59fe0f` | ⚠️ Unaudited |
| StrategyMellowSteakhouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0415a2...44d67f` | ⚠️ Unaudited |
| StrategyMoolah | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19af8a...d309ca` | ⚠️ Unaudited |
| StrategyPump | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a53f9...44b0a8` | ⚠️ Unaudited |
| StrategyPumpBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf12e22...26b491` | ⚠️ Unaudited |
| StrategySatLayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb38bf7...d2eb56` | ⚠️ Unaudited |
| StrategySolv | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41076d...4b840d` | ⚠️ Unaudited |
| StrategyZero | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x19af8a...d309ca` | ⚠️ Unaudited |
| TestBridgeWithHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c5bb8...fa7b20` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cbee8...b4c54f` | ⚠️ Unaudited |
| TokenApprovalVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb9cf...076a9a` | ⚠️ Unaudited |
| TraderJoeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd9cb7d...8c4d93` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0186b0...d149c5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x237eff...24912f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x250d72...5ef8f0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2563b7...19c800` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3d09c8...9af680` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4509c4...f203a4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x7a116f...99edc4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x873ec2...ddc238` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x8bb3dc...d266f7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9ffe77...74b464` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x054ab5...c42515` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00032e...b5f25b` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x009aed...643974` | ⚠️ Unaudited |
| USDS2USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe13b6c...db26e3` | ⚠️ Unaudited |
| USDS2USDC2DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f119f...e60eee` | ⚠️ Unaudited |
| UserModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc170b0...8d8183` | ⚠️ Unaudited |
| VariableDebtTokenInstance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x4a1c3a...deb8b8` | ⚠️ Unaudited |
| VaultStETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40c684...2a7b30` | ⚠️ Unaudited |
| VaultStETHWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22cdae...2a3d0b` | ⚠️ Unaudited |
| VaultYieldETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03a16e...5fa108` | ⚠️ Unaudited |
| VaultYieldFBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x520081...000af4` | ⚠️ Unaudited |
| VaultYieldRSETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2410e7...edf4bf` | ⚠️ Unaudited |
| WalletFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15cbff...836d2a` | ⚠️ Unaudited |
| WavaxGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x144f69...0f779b` | ⚠️ Unaudited |
| WethGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x441a28...5ca651` | ⚠️ Unaudited |
| WmaticGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdcb3d9...5be940` | ⚠️ Unaudited |
| YlstETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0695ea...ea3862` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231856 | `0x8cb042...1a0f6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-231857 | `0xd896bf...009481` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ackee-blockchain-cian-yield-layer-report.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2FV02w5MYbK0RQhopzxvF8%2Fackee-blockchain-cian-yield-layer-report.pdf) | Ackee Blockchain | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [PeckShield-Audit-Report-CIAN-v1.0.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2FLzvJmGX3yAqssnN0qkti%2FPeckShield-Audit-Report-CIAN-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Omniscia_Audit_Report_CIAN.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2FNtBm4xZQWc0M3QiltaN3%2FOmniscia_Audit_Report_CIAN.pdf) | Omniscia | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [20221025_Paladin_Cian_Final_Report.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2FL4K76IA6F2jMQfREhctf%2F20221025_Paladin_Cian_Final_Report.pdf) | Paladin | Audit | 2022-10 | stale | Direct | address | no match | 0 | 0 | 0 | 22 | high |
| [20220924_Paladin_CianEthereum_Final_Report.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2FQAkwlCeGM0boOyAa7TxT%2F20220924_Paladin_CianEthereum_Final_Report.pdf) | Paladin | Audit | 2022-09 | stale | Direct | address | no match | 0 | 0 | 0 | 23 | high |
| [20230103_Paladin_CianPolygon_Final_Report.pdf](https://1717361315-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FO9IZAEayToLEPbAGTwkL%2Fuploads%2F1a1Xt6yG315wDckxuCCx%2F20230103_Paladin_CianPolygon_Final_Report.pdf) | Paladin | Audit | 2023-01 | stale | Direct | address | no match | 0 | 0 | 0 | 22 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16887] ackee-blockchain-cian-yield-layer-report.pdf — no match: Scope includes all contracts except strategies. Audit date from cover page and appendix A.
- [16888] PeckShield-Audit-Report-CIAN-v1.0.pdf — no match: Extracted contract names from findings targets and mentions. No explicit scope section found; contracts are identified as targets of findings or mentioned in the report.
- [16889] Omniscia_Audit_Report_CIAN.pdf — no match: Extracted 13 contract names from the 'Contracts Assessed' and 'Files in Scope' tables. Audit date from 'May 9th 2023' in the header.
- [16890] 20221025_Paladin_Cian_Final_Report.pdf — no match: All contracts listed in the 'Contracts Assessed' table on page 7 are in scope. The audit date is from the cover page: '25 October 2022'.
- [16891] 20220924_Paladin_CianEthereum_Final_Report.pdf — no match: Extracted 23 contract names from the 'Contracts Assessed' table on page 8. The audit date is from the cover page: '24 September 2022'.
- [16892] 20230103_Paladin_CianPolygon_Final_Report.pdf — no match: All contracts listed in the 'Contracts Assessed' table on page 8 are included. AdapterBase, VerifierBasic, AutomationCallable, and TimelockCallable are listed as dependencies but are still in scope as they are audited. BalancerERC3156 is listed as 'BalancerERC3156 (V2)' in the table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ackee-blockchain-cian-yield-layer-report.pdf | RedeemOperator | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | Pool | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | PoolArb | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | PoolOp | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | VaultYieldBasic | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | LzBridgeArb | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | LzBridgeOp | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | LayerZeroBridgeHelper | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | BridgeHelper | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | OneInchCallerV6 | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | AaveV3FlashLeverageHelper | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | IStrategy | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | StrategyFactory | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | Vault | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | UnbackedMintAuthority | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | Timelock | unmatched — not counted | — | listed in scope and findings | no |
| ackee-blockchain-cian-yield-layer-report.pdf | LzSend | unmatched — not counted | — | listed in scope and findings | no |
| PeckShield-Audit-Report-CIAN-v1.0.pdf | ControllerLink | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-CIAN-v1.0.pdf | Timelock | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-CIAN-v1.0.pdf | ERC2612Verifier | unmatched — not counted | — | Target in findings PVE-003 and PVE-004 | no |
| PeckShield-Audit-Report-CIAN-v1.0.pdf | ControllerLib | unmatched — not counted | — | Mentioned in findings PVE-006 and PVE-007 | no |
| PeckShield-Audit-Report-CIAN-v1.0.pdf | TraderJoeAdapter | unmatched — not counted | — | Mentioned in finding PVE-006 | no |
| PeckShield-Audit-Report-CIAN-v1.0.pdf | AdapterManager | unmatched — not counted | — | Mentioned in finding PVE-007 | no |
| PeckShield-Audit-Report-CIAN-v1.0.pdf | CallProxyLib | unmatched — not counted | — | Mentioned in finding PVE-007 | no |
| Omniscia_Audit_Report_CIAN.pdf | BasicLogic | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | FlashloanHelper | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | LendingLogic | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | StrategyProxy | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | StrategyDummyImplementation | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | VaultStETH | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | VaultStETHWrapper | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | basic | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | events | unmatched — not counted | — | listed in scope table (multiple events.sol files) | no |
| Omniscia_Audit_Report_CIAN.pdf | flashloaner | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | main | unmatched — not counted | — | listed in scope table (multiple main.sol files) | no |
| Omniscia_Audit_Report_CIAN.pdf | proxy | unmatched — not counted | — | listed in scope table | no |
| Omniscia_Audit_Report_CIAN.pdf | variables | unmatched — not counted | — | listed in scope table | no |
| 20221025_Paladin_Cian_Final_Report.pdf | ProxyWallet | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.2 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | ControllerLib | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.3 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | WalletFactory | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.4 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | CallProxy | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.5 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | CallProxyLib | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.5 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | ERC2612Verifier | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.6 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | ControllerLink | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.7 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | Record | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.8 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | ProxyCallable | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.9 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | AdapterManager | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.10 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | AdapterBase | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.11 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | WavaxGateway | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.12 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | SAVAXAdapter | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.13 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | TraderJoeAdapter | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.14 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | FeeBoxAVAX | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.15 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | FeeBoxSAVAX | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.15 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | FeeBoxToken | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.15 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | VerifierBasic | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.16 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | BankerJoeAdapter | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.17 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | BenqiAdapter | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.17 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | JoeERC3156 | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.18 | no |
| 20221025_Paladin_Cian_Final_Report.pdf | Timelock | unmatched — not counted | — | Listed in 'Contracts Assessed' table and section 2.19 | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | AdapterBase | unmatched — not counted | — | listed in scope table as Dependency | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | OneInchAdapter | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | WethGateway | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | AaveAdapter | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | CurvesteCRVAdapter | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | FeeBoxETH | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | FeeBoxStETH | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | VerifierBasic | unmatched — not counted | — | listed in scope table as Dependency | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | LidoAdapter | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | ParaswapAdapter | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | AdapterManager | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | AccountManager | unmatched — not counted | — | listed in scope table | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | Automation | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | AutomationCallable | unmatched — not counted | — | listed in scope table as Dependency | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | ControllerLib | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | ControllerLibSub | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | ControllerLink | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | BalancerERC3156 | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | ERC2612Verifier | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | TokenApprovalVerifier | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | Timelock | unmatched — not counted | — | listed in scope table with address | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | TimelockCallable | unmatched — not counted | — | listed in scope table as Dependency | no |
| 20220924_Paladin_CianEthereum_Final_Report.pdf | AddressArrayLib | unmatched — not counted | — | listed in scope table as Dependency | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | AdapterBase | unmatched — not counted | — | listed in scope table and findings section | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | OneInchAdapter | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | AaveV3Adapter | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | BalancerV2Adapter | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | FeeBoxMATIC | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | VerifierBasic | unmatched — not counted | — | listed in scope table and findings section | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | QuickSwapAdapter | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | StaderAdapter | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | WmaticGateway | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | AdapterManager | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | AccountManager | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | Automation | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | AutomationCallable | unmatched — not counted | — | listed in scope table and findings section | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | ControllerLib | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | ControllerLibSub | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | ControllerLink | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | BalancerERC3156 | unmatched — not counted | — | listed in scope table as BalancerERC3156 (V2) | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | ERC2612Verifier | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | TokenApprovalVerifier | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | StaderAirdrop | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | Timelock | unmatched — not counted | — | listed in scope table | no |
| 20230103_Paladin_CianPolygon_Final_Report.pdf | TimelockCallable | unmatched — not counted | — | listed in scope table and findings section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0xa02b10...d671d2` | GHOAvalanche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 104 |
| upstream | 0 |
| standard_library | 13 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 104 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: n/a

Zero-match audit list:

- [16887] ackee-blockchain-cian-yield-layer-report.pdf
- [16888] PeckShield-Audit-Report-CIAN-v1.0.pdf
- [16889] Omniscia_Audit_Report_CIAN.pdf
- [16890] 20221025_Paladin_Cian_Final_Report.pdf
- [16891] 20220924_Paladin_CianEthereum_Final_Report.pdf
- [16892] 20230103_Paladin_CianPolygon_Final_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
