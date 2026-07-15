# Agentic Audit Brief: StellaSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 8 audit(s)
- Eligible audit results: 10 (8 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: StellaSwap (`stellaswap`)
- Website: [https://stellaswap.com](https://stellaswap.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
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

**AlgebraEternalFarming** (`0xd4b2b7...1a5279`, chain 1284)
Origin: swapbased (`0x288c0e...20f9fb`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AlgebraLimitFarming** (`0xf722a2...1c3ff5`, chain 1284)
Origin: quickswap (`0x9923f4...d8a1f8`)
Containment: 95.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- farmingCenter()

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3b23f0...816b9c`, chain 1284)
- UnnamedContract (`0x965a85...23fb94`, chain 1284)
- UnnamedContract (`0xa2d700...edeacf`, chain 1284)
- UnnamedContract (`0xabe165...dba59c`, chain 1284)
- UnnamedContract (`0xbc7e02...6c4db4`, chain 1284)
- UnnamedContract (`0xcf6fb8...590de5`, chain 1284)
- UnnamedContract (`0xe6d0ed...c981fe`, chain 1284)
- UnnamedContract (`0xe8a5c0...d39fa4`, chain 1284)
- UnnamedContract (`0xf7d57b...a61f7a`, chain 1284)
- AlgebraInterfaceMulticall (`0x24d357...3d6e96`, chain 1284)
- FarmingCenter (`0x0d4f8a...90e6e5`, chain 1284)
- Ledger (`0xde5925...a9ce40`, chain 1284)
- LedgerBeacon (`0xb7c3e2...719752`, chain 1284)
- LedgerFactory (`0xa73209...1f2c68`, chain 1284)
- NonfungiblePositionManager (`0x1ff2ad...eda03a`, chain 1284)
- Oracle (`0x0fa8cd...f2f079`, chain 1284)
- Stella (`0x0e3588...4c88d2`, chain 1284)
- StellaSwapV2Factory (`0x68a384...dacc0e`, chain 1284)
- StellaSwapV2Router02 (`0x70085a...83bb57`, chain 1284)
- TransparentUpgradeableProxy (`0x002d34...cd254f`, chain 1284)
- TransparentUpgradeableProxy (`0x21b23c...940819`, chain 1284)
- TransparentUpgradeableProxy (`0x5927e3...830263`, chain 1284)
- V3Migrator (`0xb4630a...4490ad`, chain 1284)

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 24/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/16 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 24 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 71 discovered implementations excluded (0 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Deployed-live implementations: 24 of 95 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/16
- Verified + Unaudited implementations: 12
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
| CertiK | Tier 2 | 3 | 18.8% | 2022-03 |
| AstraSec | Tier 2 | 1 | 6.3% | 2025-09 |
| SolidProof | Tier 2 | 1 | 6.3% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Ledger | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257112 | `0xde5925...a9ce40` | ✅ Audited |
| Stella | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257092 | `0x0e3588...4c88d2` | ✅ Audited |
| StellaSwapV2Factory | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257096 | `0x68a384...dacc0e` | ✅ Audited |
| StellaSwapV2Router02 | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257097 | `0x70085a...83bb57` | ✅ Audited |

### ⚠️ Verified + Unaudited (83)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6f6a02...53a66c` | ⚠️ Unaudited |
| AggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x80a04f...ec2336` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257111 | `0xd4b2b7...1a5279` | ⚠️ Unaudited |
| AlgebraFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x02c8a6...73fedc` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257094 | `0x24d357...3d6e96` | ⚠️ Unaudited |
| AlgebraLimitFarming | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257115 | `0xf722a2...1c3ff5` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x01821b...d45c14` | ⚠️ Unaudited |
| AmplificationUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1e6dde...bfbdb4` | ⚠️ Unaudited |
| AnycallExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x750bfe...5db638` | ⚠️ Unaudited |
| AnyswapV5ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3405a1...026e45` | ⚠️ Unaudited |
| AnyswapV6ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3d632d...748377` | ⚠️ Unaudited |
| AvaxILO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x96bef4...b243e8` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x841ce4...d0738c` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x085416...231f62` | ⚠️ Unaudited |
| ComboOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x247a32...b5c9e2` | ⚠️ Unaudited |
| ComboOracle_UniV2_UniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6e6d21...eb8723` | ⚠️ Unaudited |
| ComboOracle_UniV2_UniV3_Zenlink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4a4019...f18161` | ⚠️ Unaudited |
| ComplexRewarderPerSecV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x05ad30...c0c66c` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x27771a...de9600` | ⚠️ Unaudited |
| CrossChainBridgeBacker_MNBM_Nomad | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x58fb43...1e45dd` | ⚠️ Unaudited |
| CrossChainCanonicalFRAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x322e86...b33bfb` | ⚠️ Unaudited |
| CrossChainCanonicalFXS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2cc0a9...8aaa1c` | ⚠️ Unaudited |
| CrossChainCanonicalV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x82bbd1...08be99` | ⚠️ Unaudited |
| CrossChainOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd4a2c3...1e06fc` | ⚠️ Unaudited |
| CrossChainOracleSingleAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x973771...13cddc` | ⚠️ Unaudited |
| CrossChainOracleSingleAssetV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb2d736...68ba8f` | ⚠️ Unaudited |
| EditableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3f56e0...3dea0d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | moonbeam | n/a | `0x109936...265025` | ⚠️ Unaudited |
| FarmingCenter | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-257116 | `0x0d4f8a...90e6e5` | ⚠️ Unaudited |
| GasClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x979176...1d4b04` | ⚠️ Unaudited |
| GasSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x891220...700abb` | ⚠️ Unaudited |
| IDOLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x470246...432d6c` | ⚠️ Unaudited |
| IDOSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x31be00...b215ea` | ⚠️ Unaudited |
| IDOSaleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x24f193...806836` | ⚠️ Unaudited |
| LedgerBeacon | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257105 | `0xb7c3e2...719752` | ⚠️ Unaudited |
| LedgerFactory | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257100 | `0xa73209...1f2c68` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x09af4b...55febb` | ⚠️ Unaudited |
| MerklAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4c2e05...62d433` | ⚠️ Unaudited |
| MintSwapCanonicalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3795c3...b60283` | ⚠️ Unaudited |
| MockSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd1ad4e...d09c11` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x83e3b6...f7f36b` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x647720...897bb2` | ⚠️ Unaudited |
| Nimbus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x613a34...7bef38` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-257117 | `0x1ff2ad...eda03a` | ⚠️ Unaudited |
| OffchainHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa0f2d9...1c57d2` | ⚠️ Unaudited |
| Oracle | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257093 | `0x0fa8cd...f2f079` | ⚠️ Unaudited |
| OracleMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0fbe98...d1af57` | ⚠️ Unaudited |
| PeggedTokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xbb7684...1ad573` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x780bb4...628f94` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x4e6e2d...b7f811` | ⚠️ Unaudited |
| PulsarFeeShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xccaa28...c062e2` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x47ff28...44c10f` | ⚠️ Unaudited |
| RewarderBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2d1ffa...bdfc26` | ⚠️ Unaudited |
| RewarderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x9a0b83...0290aa` | ⚠️ Unaudited |
| RewarderV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1c9b96...924ac8` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb0dfd6...ffa9cc` | ⚠️ Unaudited |
| Sentinel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0394c5...48481f` | ⚠️ Unaudited |
| setNumberContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x70755c...60803f` | ⚠️ Unaudited |
| SetText | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x65bf1e...d1d27e` | ⚠️ Unaudited |
| StellaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8d22d5...c07325` | ⚠️ Unaudited |
| StellaDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7115f0...29d725` | ⚠️ Unaudited |
| StellaILO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x096352...9a8ad8` | ⚠️ Unaudited |
| StellaLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x899506...7a0b58` | ⚠️ Unaudited |
| StellaSwapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x051fcf...8d8a85` | ⚠️ Unaudited |
| StellaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x54e2d1...e243fe` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x5c3dc0...3fd8ec` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x686967...9376b3` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x22bcc4...6f1ded` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xc6f73b...6522fb` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x12c747...b36546` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-257118 | `0x002d34...cd254f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | moonbeam | n/a | `0x0e4cae...8be0cb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-257120 | 2 deployments: moonbeam `0x21b23c...940819`; moonbeam `0xf7d57b...a61f7a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-257119 | `0x5927e3...830263` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | moonbeam | n/a | `0x707f4e...2bc680` | ⚠️ Unaudited |
| UpgradeBeaconProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonbeam | n/a | `0x1dc78a...6d95e0` | ⚠️ Unaudited |
| V3Migrator | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257104 | `0xb4630a...4490ad` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xacc15d...c6077f` | ⚠️ Unaudited |
| Withdrawal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x83f3fa...b7fb4d` | ⚠️ Unaudited |
| XC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xffffff...899abf` | ⚠️ Unaudited |
| XStella | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x06a3b4...b6a080` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x01834c...d140df` | ⚠️ Unaudited |
| ZapHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xe5870c...e130d1` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257095 | `0x3b23f0...816b9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257098 | `0x965a85...23fb94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257099 | `0xa2d700...edeacf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257102 | `0xabe165...dba59c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257107 | `0xbc7e02...6c4db4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257109 | `0xcf6fb8...590de5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257113 | `0xe6d0ed...c981fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-257114 | `0xe8a5c0...d39fa4` | ❓ Unverified |

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
| DL audit link | Stella | own contract | Stella (selected) `0x0e3588...4c88d2` — deployed 2022-01-11 22:21:42+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SolidProof Audit Report | MainContract | unmatched — not counted | — | Referenced as 'MainContract' in findings and scope description; likely the main token contract. | no |
| <> | stGLMR | unmatched — not counted | — | mentioned in vulnerability details as stGLMR.sol | no |
| <> | Ledger | own contract | Ledger (selected) `0xde5925...a9ce40` — deployed 2023-10-23 21:37:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| <> | FundManager | unmatched — not counted | — | mentioned in vulnerability details as FundManager | no |
| Certik Full Audit Report | Math | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | SafeMath | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | StellaSwapV2Library | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | TransferHelper | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | UQ112x112 | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | StellaSwapV2ERC20 | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | StellaSwapV2Factory | own contract | StellaSwapV2Factory (selected) `0x68a384...dacc0e` — deployed 2022-01-11 22:29:06+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik Full Audit Report | StellaSwapV2Pair | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | StellaSwapV2Router | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | StellaSwapV2Router02 | own contract | StellaSwapV2Router02 (selected) `0x70085a...83bb57` — deployed 2022-03-28 03:28:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Certik Full Audit Report | Stella | own contract | Stella (selected) `0x0e3588...4c88d2` — deployed 2022-01-11 22:21:42+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik Full Audit Report | IStellaERC20 | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | MockERC20 | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit Report | StellaVault | unmatched — not counted | — | listed in scope table | no |
| SolidProof Stable AMM Audit Report | SwapFlashLoanRouter | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | LPToken | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | GenericERC20 | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | SwapUtils | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | Swap | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | AmplificationUtils | unmatched — not counted | — | listed in scope and tested contract files | no |
| SolidProof Stable AMM Audit Report | Router | own contract | StellaSwapV2Router02 (selected) `0x70085a...83bb57` — deployed 2022-03-28 03:28:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Certik Full Audit.pdf | StellaSwapV2Factory | own contract | StellaSwapV2Factory (selected) `0x68a384...dacc0e` — deployed 2022-01-11 22:29:06+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Certik Full Audit.pdf | StellaSwapV2Pair | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | StellaSwapV2Router | unmatched — not counted | — | listed in scope table | no |
| Certik Full Audit.pdf | StellaSwapV2Router02 | own contract | StellaSwapV2Router02 (selected) `0x70085a...83bb57` — deployed 2022-03-28 03:28:06+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Certik Full Audit.pdf | Stella | own contract | Stella (selected) `0x0e3588...4c88d2` — deployed 2022-01-11 22:21:42+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | AlgebraFactory | own contract | 0xabe165… (selected) `0xabe165...dba59c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | AlgebraPool | unmatched — not counted | — | listed in scope | no |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | AlgebraPoolDeployer | own contract | 0x965a85… (selected) `0x965a85...23fb94` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_Algebra_Audit-b4a20379efce1d26b7fbe9127582df6a (1).pdf | DataStorageOperator | unmatched — not counted | — | listed in scope | no |
| Hexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf | AdaptiveFee | unmatched — not counted | — | mentioned in finding 4 and 6 | no |
| Hexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf | DataStorage | unmatched — not counted | — | mentioned in finding 2 and 3 | no |
| Hexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf | AlgebraFactory | own contract | 0xabe165… (selected) `0xabe165...dba59c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Hexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf | IAlgebraPool | unmatched — not counted | — | mentioned in finding 5 | no |
| Hexens_Algebra_Audit-0918594cb7666296d9f57295d9274270.pdf | PoolAddress | unmatched — not counted | — | mentioned in finding 5 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonbeam | `0xd4b2b7...1a5279` | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x24d357...3d6e96` | AlgebraInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xf722a2...1c3ff5` | AlgebraLimitFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x0d4f8a...90e6e5` | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xb7c3e2...719752` | LedgerBeacon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xa73209...1f2c68` | LedgerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x1ff2ad...eda03a` | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x0fa8cd...f2f079` | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0xb4630a...4490ad` | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
