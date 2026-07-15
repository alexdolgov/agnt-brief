# Agentic Audit Brief: Frax Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 4 audit(s)
- Eligible audit results: 20 (4 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Frax Finance (`frax-finance`)
- Website: [https://frax.com/](https://frax.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, aurora, avalanche, base, berachain, blast, bsc, ethereum, fantom, fraxtal, hyperliquid, ink, linea, mode, moonbeam, optimism, plasma, polygon, polygon-zkevm, scroll, sei, sonic, unichain, zksync-era
- Contract surface: 494 unique implementations (500 raw deployments)
- Coverage basis: 3/7 confirmed own live verified implementations (42.9%); conservative 42.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $283,527,119.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Frax Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across arbitrum, aurora, avalanche, base, berachain, blast, bsc, ethereum, fraxtal, hyperliquid, ink, linea, mode, optimism, plasma, polygon, polygon-zkevm, scroll, sei, sonic, unichain, zksync-era. Structural roles: 4 core, 2 unclassified, 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (4), unclassified (2), infra (1)
- Contract kinds: contract (5), abstract (2)
- Detected standards: erc20 (4), accesscontrol (2), erc1967proxy (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 1

## Fork Analysis

1 of 99 contracts are derived from known codebases. 98 contracts have no detected origin.

### Forked Contracts

**FRAXStablecoin** (`0x853d95...75b99e`, chain 1)
Origin: alchemix (`0x853d95...75b99e`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0132f1...582d43`, chain 1)
- UnnamedContract (`0x04acaf...88977f`, chain 1)
- UnnamedContract (`0x111dda...550de1`, chain 1)
- UnnamedContract (`0x11fe3b...1376cc`, chain 1)
- UnnamedContract (`0x126bcc...d542ed`, chain 1)
- UnnamedContract (`0x13fe62...81abca`, chain 1)
- UnnamedContract (`0x19d7df...592934`, chain 1)
- UnnamedContract (`0x3077c8...bbc1f5`, chain 1)
- UnnamedContract (`0x31d982...468640`, chain 1)
- UnnamedContract (`0x34a9f2...25f8b2`, chain 1)
- UnnamedContract (`0x34c0bd...58bde2`, chain 1)
- UnnamedContract (`0x36cb65...ca6f6d`, chain 1)
- UnnamedContract (`0x3ad4dc...bd648e`, chain 1)
- UnnamedContract (`0x452420...2c543c`, chain 1)
- UnnamedContract (`0x4f95c5...3bd87c`, chain 1)
- UnnamedContract (`0x5e8422...8caa1f`, chain 1)
- UnnamedContract (`0x66cc91...e171e4`, chain 1)
- UnnamedContract (`0x694c24...f1bf81`, chain 1)
- UnnamedContract (`0x6ca233...f77f95`, chain 1)
- UnnamedContract (`0x6ca98f...ce7876`, chain 1)
- UnnamedContract (`0x7a07d6...856c7a`, chain 1)
- UnnamedContract (`0x88f747...bcfbb4`, chain 1)
- UnnamedContract (`0x8c5d64...b4dabe`, chain 1)
- UnnamedContract (`0x938d99...441699`, chain 1)
- UnnamedContract (`0x941be1...fd3ee7`, chain 1)
- UnnamedContract (`0x983af8...32d263`, chain 1)
- UnnamedContract (`0x99b558...87bfa8`, chain 1)
- UnnamedContract (`0xa3d62f...d63696`, chain 1)
- UnnamedContract (`0xa663b0...c41c32`, chain 1)
- UnnamedContract (`0xa9b5fb...8d0ec5`, chain 1)
- UnnamedContract (`0xac3e01...bbe38f`, chain 1)
- UnnamedContract (`0xc71bf5...ec802d`, chain 1)
- UnnamedContract (`0xcf62f9...c9c5b6`, chain 1)
- UnnamedContract (`0xe827ab...6e4e9c`, chain 1)
- UnnamedContract (`0xfe2ea8...1a0a29`, chain 1)
- UnnamedContract (`0xff92d3...4cf519`, chain 1)
- UnnamedContract (`0x31d982...468640`, chain 10)
- UnnamedContract (`0x7a07d6...856c7a`, chain 10)
- UnnamedContract (`0x80eede...d600df`, chain 10)
- UnnamedContract (`0x452420...2c543c`, chain 56)
- UnnamedContract (`0x80eede...d600df`, chain 56)
- UnnamedContract (`0xdee455...b0d852`, chain 56)
- UnnamedContract (`0x80eede...d600df`, chain 130)
- UnnamedContract (`0x983af8...32d263`, chain 130)
- UnnamedContract (`0xc71bf5...ec802d`, chain 130)
- UnnamedContract (`0x5658e8...6673c4`, chain 137)
- UnnamedContract (`0x80eede...d600df`, chain 137)
- UnnamedContract (`0xf74d38...fbb30c`, chain 137)
- UnnamedContract (`0x3a5cda...db2f23`, chain 146)
- UnnamedContract (`0x80eede...d600df`, chain 146)
- UnnamedContract (`0xf6115b...efad0b`, chain 146)
- UnnamedContract (`0xfc0000...000001`, chain 252)
- UnnamedContract (`0xa05e9f...8c400b`, chain 324)
- UnnamedContract (`0xc5e4a0...69ddfb`, chain 324)
- UnnamedContract (`0xea77c5...63170d`, chain 324)
- UnnamedContract (`0x80eede...d600df`, chain 999)
- UnnamedContract (`0x8ebb34...7c41a2`, chain 999)
- UnnamedContract (`0xb85a8f...56a5dc`, chain 999)
- UnnamedContract (`0x80eede...d600df`, chain 1101)
- UnnamedContract (`0x80eede...d600df`, chain 1329)
- UnnamedContract (`0x3ec384...7fde45`, chain 8453)
- UnnamedContract (`0x73382e...fce5de`, chain 8453)
- UnnamedContract (`0xe5020a...6fb0b6`, chain 8453)
- UnnamedContract (`0x8ebb34...7c41a2`, chain 9745)
- UnnamedContract (`0xb85a8f...56a5dc`, chain 9745)
- UnnamedContract (`0x486cb4...3cf262`, chain 34443)
- UnnamedContract (`0x736057...fbfdf9`, chain 34443)
- UnnamedContract (`0x80eede...d600df`, chain 34443)
- UnnamedContract (`0x29f5db...83c70a`, chain 42161)
- UnnamedContract (`0x80eede...d600df`, chain 42161)
- UnnamedContract (`0xa46a26...5a0d6d`, chain 42161)
- UnnamedContract (`0x452420...2c543c`, chain 43114)
- UnnamedContract (`0x7a07d6...856c7a`, chain 43114)
- UnnamedContract (`0x80eede...d600df`, chain 43114)
- UnnamedContract (`0x452420...2c543c`, chain 57073)
- UnnamedContract (`0x7a07d6...856c7a`, chain 57073)
- UnnamedContract (`0x80eede...d600df`, chain 57073)
- UnnamedContract (`0x6ca98f...ce7876`, chain 59144)
- UnnamedContract (`0xa71f22...02e7fb`, chain 59144)
- UnnamedContract (`0xc73467...8673d8`, chain 59144)
- UnnamedContract (`0x80eede...d600df`, chain 80094)
- UnnamedContract (`0x983af8...32d263`, chain 80094)
- UnnamedContract (`0xc71bf5...ec802d`, chain 80094)
- UnnamedContract (`0x80eede...d600df`, chain 81457)
- UnnamedContract (`0x85b171...3180b3`, chain 81457)
- UnnamedContract (`0xe93cb3...28e58e`, chain 81457)
- UnnamedContract (`0x397f93...cdce82`, chain 534352)
- UnnamedContract (`0x91ddb0...65f558`, chain 534352)
- UnnamedContract (`0xf6f45c...86124e`, chain 534352)
- UnnamedContract (`0x53e36c...a52344`, chain 1313161554)
- UnnamedContract (`0x80eede...d600df`, chain 1313161554)
- UnnamedContract (`0x8ebb34...7c41a2`, chain 1313161554)
- FPI (`0x5ca135...cbe08e`, chain 1)
- FPIS (`0xc2544a...901fdb`, chain 1)
- FRAXShares (`0x3432b6...c964d0`, chain 1)
- TransparentUpgradeableProxy (`0x5fbaa3...504f33`, chain 1)
- TransparentUpgradeableProxy (`0x860cc7...ef7857`, chain 1)
- TransparentUpgradeableProxy (`0xcacd6f...586e29`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 99/165 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/7 (42.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 99 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 395 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 30
- Confirmed-live implementations: 99 of 494 unique; 395 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/402
- Verified + Unaudited implementations: 399
- Verified by bytecode match: 0
- Unverified implementations: 92
- Unique implementations: 494
- Raw deployments: 500
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 5 aging, 11 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 28.6% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 2 | 0.5% | 2024-03 |
| Zellic | Tier 2 | 1 | 0.2% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FRAXShares | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240774 | `0x3432b6...c964d0` | ✅ Audited |
| FRAXStablecoin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240811 | `0x853d95...75b99e` | ✅ Audited |
| FrxUSD | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240921 | `0xcacd6f...586e29` | ✅ Audited |

### ⚠️ Verified + Unaudited (399)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveEcosystemReserveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x25f222...286491` | ⚠️ Unaudited |
| AaveGenesisExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x797ae6...686b53` | ⚠️ Unaudited |
| AaveGenesisProposalPayload | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36ec8f...a62e94` | ⚠️ Unaudited |
| AaveIncentivesVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x238fcb...d6f76d` | ⚠️ Unaudited |
| AavePropositionPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72bbcf...746631` | ⚠️ Unaudited |
| AaveProtoGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda8ad4...168a9d` | ⚠️ Unaudited |
| AaveToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9c0435...74c8ba` | ⚠️ Unaudited |
| AaveTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7fc665...2ddae9` | ⚠️ Unaudited |
| AaveVoteStrategyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5e83c...e3a391` | ⚠️ Unaudited |
| AggMonetaryPolicy - monetary policy based on aggregated prices for crvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0901b5...48e62b` | ⚠️ Unaudited |
| AggregatorStablePrice - aggregator of stablecoin prices for crvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18672b...0e4e62` | ⚠️ Unaudited |
| Alchemist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc21d35...9fe35b` | ⚠️ Unaudited |
| AlchemixToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbdb4d...90c8df` | ⚠️ Unaudited |
| AllowList | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x42d75c...de8149` | ⚠️ Unaudited |
| AlToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6da0...3660e9` | ⚠️ Unaudited |
| AmplificationUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3661d0...9b490b` | ⚠️ Unaudited |
| ArbitratorVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e124...c21616` | ⚠️ Unaudited |
| ArbitrumBridger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1f426...04f1ad` | ⚠️ Unaudited |
| ArbitrumDualOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5985fb...575667` | ⚠️ Unaudited |
| AssetVotingWeightProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac493...5574aa` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbcca60...96263c` | ⚠️ Unaudited |
| BAMMFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x199281...7db0ba` | ⚠️ Unaudited |
| BAMMUIHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb16f68...a0885a` | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfac7be...b31e04` | ⚠️ Unaudited |
| BaseRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe656...a7587e` | ⚠️ Unaudited |
| BendToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02863c...1e9153` | ⚠️ Unaudited |
| BendUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf0dfc1...f159a0` | ⚠️ Unaudited |
| BlockMiner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0dc49...4fcaeb` | ⚠️ Unaudited |
| BokkyPooBahsDateTimeContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90503d...624736` | ⚠️ Unaudited |
| Booster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b8b30...2ffc95` | ⚠️ Unaudited |
| BoosterOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ce640...80f1e6` | ⚠️ Unaudited |
| BoosterOwnerSecondary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x256e1b...98b86d` | ⚠️ Unaudited |
| BoosterPlaceholder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2cf21...a86ee5` | ⚠️ Unaudited |
| BoosterRewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817ff4...e82d24` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5bd85...fd4706` | ⚠️ Unaudited |
| BundleUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1a7b8...719f5d` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba9801...20272d` | ⚠️ Unaudited |
| ChainlinkSourcesRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e194d...e0ed11` | ⚠️ Unaudited |
| ChefRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f29b7...7b51ed` | ⚠️ Unaudited |
| ChefToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4223aa...587c0f` | ⚠️ Unaudited |
| ClaimVecrvFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x494089...f15d0c` | ⚠️ Unaudited |
| ClaimZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f29cb...cf2516` | ⚠️ Unaudited |
| ComboOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4462df...34490c` | ⚠️ Unaudited |
| ComboOracle_KyberSwapElastic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734fd1...ca4a73` | ⚠️ Unaudited |
| ComboOracle_KyberSwapElasticV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x603d9b...e05209` | ⚠️ Unaudited |
| ComboOracle_UniV2_UniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x09044d...3b199a` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x063907...4a5ca5` | ⚠️ Unaudited |
| ConvexAMO_V1_Recoverer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x49ee75...66bd71` | ⚠️ Unaudited |
| ConvexRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e01aa...77b362` | ⚠️ Unaudited |
| ConvexStakingWrapperAbra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0334c...924ef8` | ⚠️ Unaudited |
| ConvexStakingWrapperFrax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dd9f3...231beb` | ⚠️ Unaudited |
| ConvexStakingWrapperFraxLend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa82beb...b786a4` | ⚠️ Unaudited |
| CPITrackerOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04baf3...ad8808` | ⚠️ Unaudited |
| CrossChainBridgeBacker_OPTI_Celer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f35dc...084ed0` | ⚠️ Unaudited |
| CrossChainCanonicalFRAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2e3d87...53f475` | ⚠️ Unaudited |
| CrossChainCanonicalFXS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x67ccea...2205be` | ⚠️ Unaudited |
| CrossChainCanonicalV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x484c2d...36578c` | ⚠️ Unaudited |
| CrossChainOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x31aa22...b86509` | ⚠️ Unaudited |
| CrossChainOracleSingleAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x35c696...ea66de` | ⚠️ Unaudited |
| CrvDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x801459...dc86ae` | ⚠️ Unaudited |
| crvUSD Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c6e1...41f4d4` | ⚠️ Unaudited |
| crvUSD ControllerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9332f...0738bc` | ⚠️ Unaudited |
| crvUSD deleverage zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc706...f81d74` | ⚠️ Unaudited |
| crvUSD Stablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf939e0...ac1b4e` | ⚠️ Unaudited |
| CryptoFromPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b38ce...db7a25` | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e762...3ba2f8` | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9ae9...c91aab` | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002688...1b09be` | ⚠️ Unaudited |
| CryptoFromPoolWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d89d8...e1d5ca` | ⚠️ Unaudited |
| CryptoWithStablePriceETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966cbd...32ca06` | ⚠️ Unaudited |
| CryptoWithStablePriceSfrxeth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d788...113c29` | ⚠️ Unaudited |
| CryptoWithStablePriceTBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef434...fc4217` | ⚠️ Unaudited |
| CryptoWithStablePriceWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07374b...3e46fa` | ⚠️ Unaudited |
| CryptoWithStablePriceWsteth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f5f6...51b304` | ⚠️ Unaudited |
| CurveAMO_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7e983e...de8769` | ⚠️ Unaudited |
| CurveAMO_V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x72170c...105da2` | ⚠️ Unaudited |
| CurveLendMinterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd99391...76afff` | ⚠️ Unaudited |
| CurveLendOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb64e29...9cb8f5` | ⚠️ Unaudited |
| CvxCrvRari | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fc2a2...56b987` | ⚠️ Unaudited |
| CvxCrvStakingWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0c3f...dbe434` | ⚠️ Unaudited |
| cvxCrvToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62b9c7...810aa7` | ⚠️ Unaudited |
| CvxCrvUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd2f5...29c673` | ⚠️ Unaudited |
| CvxDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449f2f...d1ddc6` | ⚠️ Unaudited |
| cvxFpisStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa87db...6bc483` | ⚠️ Unaudited |
| cvxFpisToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa28473...427df6` | ⚠️ Unaudited |
| cvxFxsStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49b4d1...37e31a` | ⚠️ Unaudited |
| cvxFxsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeef77...4bdf74` | ⚠️ Unaudited |
| CvxLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ae0fc...ce56a1` | ⚠️ Unaudited |
| CvxLockerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a193...2db86e` | ⚠️ Unaudited |
| CvxMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c75bf...de5343` | ⚠️ Unaudited |
| cvxRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf50b8...139332` | ⚠️ Unaudited |
| CvxStakingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4401f1...7943fa` | ⚠️ Unaudited |
| CvxStakingProxyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5bbc8...586a4e` | ⚠️ Unaudited |
| ENSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc18360...7f9d72` | ⚠️ Unaudited |
| ERC20RevocableComplianceStandard | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x10fe70...fb53fa` | ⚠️ Unaudited |
| ERC20RevocableStandard | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2e5f7d...2b3a32` | ⚠️ Unaudited |
| ERC721SoulboundToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2a33ae...f616bc` | ⚠️ Unaudited |
| ETHRegistrarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb22c1c...e6ad16` | ⚠️ Unaudited |
| EthRegistrarSubdomainRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc32659...27231d` | ⚠️ Unaudited |
| ExponentialPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x01480a...e0f358` | ⚠️ Unaudited |
| ExtraRewardStashTokenRescue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc3de...cfc918` | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dbffb...7d8852` | ⚠️ Unaudited |
| EzEthEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6fd11e...d36681` | ⚠️ Unaudited |
| EzEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1174b7...e16041` | ⚠️ Unaudited |
| FeeBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd43024...1410e9` | ⚠️ Unaudited |
| FeeDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbec22...7323f7` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29dba2...999178` | ⚠️ Unaudited |
| FeeReceiverCvxFpis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a562a...9e08e0` | ⚠️ Unaudited |
| FeeReceiverCvxFxs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31c5e6...3f8f24` | ⚠️ Unaudited |
| FeeReceiverPlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd60d80...ec36cf` | ⚠️ Unaudited |
| FeeReceiverVeFxs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f94fe...717624` | ⚠️ Unaudited |
| FeeReceiverVlCvx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9a212...d2c2b8` | ⚠️ Unaudited |
| FeeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a299a...2394e3` | ⚠️ Unaudited |
| FPI | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240797 | `0x5ca135...cbe08e` | ⚠️ Unaudited |
| FPIControllerPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae84c...469e37` | ⚠️ Unaudited |
| FPIOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25d3d3...65520f` | ⚠️ Unaudited |
| FpiOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xcacc09...90c60d` | ⚠️ Unaudited |
| FPIS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240832 | `0xc2544a...901fdb` | ⚠️ Unaudited |
| FpisDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27445d...a7a04b` | ⚠️ Unaudited |
| FPISLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: fraxtal `0x36b406...b09840`; fraxtal `0xb4fdd7...02da35`; fraxtal `0xbbb3a1...126850`; fraxtal `0xe91488...e61c01` | ⚠️ Unaudited |
| FPISLockerUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 3 deployments: fraxtal `0x858afb...027aea`; fraxtal `0x8a3399...2da974`; fraxtal `0xf82385...732414` | ⚠️ Unaudited |
| FpisRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb93989...a3238d` | ⚠️ Unaudited |
| FraxAMOMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36a0b6...8deb8c` | ⚠️ Unaudited |
| FraxEtherRedemptionQueue | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fa025...f21a6d` | ⚠️ Unaudited |
| FraxFarm_UniV3_veFXS_FRAX_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80fac1...fc8dfd` | ⚠️ Unaudited |
| FraxFarm_UniV3_veFXS_FRAX_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c21dd...022660` | ⚠️ Unaudited |
| FraxFarmRageQuitter_Gelato_FRAX_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe402a3...78231a` | ⚠️ Unaudited |
| FraxFarmRageQuitter_StakeDAO_FraxPut | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cb3da...e0f63b` | ⚠️ Unaudited |
| FraxFarmRageQuitter_Temple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e048...0a1e10` | ⚠️ Unaudited |
| Fraxferry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04ba20...d0a0cc` | ⚠️ Unaudited |
| FraxGaugeFXSRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x278dc7...9fcd34` | ⚠️ Unaudited |
| FraxGovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77314a...1a4037` | ⚠️ Unaudited |
| FraxGovernorOmega | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x246975...03a962` | ⚠️ Unaudited |
| FraxGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x959903...6dad41` | ⚠️ Unaudited |
| FraxlendAMOV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8e4e6e...f6935a` | ⚠️ Unaudited |
| FraxlendAMOV3Frax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x58c433...6cb611` | ⚠️ Unaudited |
| FraxLendingAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x950718...8825ef` | ⚠️ Unaudited |
| FraxlendPairDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17378a...ef8b91` | ⚠️ Unaudited |
| FraxlendPairHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05bb1c...afe999` | ⚠️ Unaudited |
| FraxlendPairRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bd2ff...ad316d` | ⚠️ Unaudited |
| FraxlendWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e300f...c8b5ab` | ⚠️ Unaudited |
| FraxLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa25a70...22d99e` | ⚠️ Unaudited |
| FraxMiddlemanGauge_FRAX_mUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e14f6...4a6aec` | ⚠️ Unaudited |
| FraxMiddlemanGaugeFerryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54bd5c...24ee5c` | ⚠️ Unaudited |
| FraxMiddlemanGaugeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0884c9...b72c6c` | ⚠️ Unaudited |
| FraxMiddlemanGaugeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x007c87...2e3be1` | ⚠️ Unaudited |
| FRAXOracleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a6ddd...829a80` | ⚠️ Unaudited |
| FraxPoolInvestorForV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe09394...2689a4` | ⚠️ Unaudited |
| FraxPoolLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa11b9c...feb6a4` | ⚠️ Unaudited |
| FraxPoolV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fe065...560729` | ⚠️ Unaudited |
| FraxswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ec79...fe0f6f` | ⚠️ Unaudited |
| FraxswapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0ae84c...469e37` | ⚠️ Unaudited |
| FraxswapRouterMultihop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e9ac...7dc4f0` | ⚠️ Unaudited |
| FraxtalERC4626TransportOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0d7888...3d2aaf` | ⚠️ Unaudited |
| FraxtalFpiTrackerTransportOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0f50be...3cbb02` | ⚠️ Unaudited |
| FraxtalTransportOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa072b8...cff896` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Convex_frxETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x689219...0cfa44` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxlend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73e1e6...9fc17e` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_FPIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f2e53...8df2e0` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_FXS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06b7c6...b6e046` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_IQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x356780...1f9c27` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_OHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2b19c...28eee8` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_pitchFXS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24c66b...07cf55` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_SDL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8875a3...a30cf8` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_SYN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8e497...32d04b` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Fraxswap_FRAX_ZZ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38950d...31f462` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_FraxswapV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x788e44...6bad5b` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_KyberSwapElastic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7ea2c...9b78e9` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_KyberSwapElasticV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf99b...25c975` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Other | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e64e3...12e55d` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Other_Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x169e5f...03e470` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Other_Oracled | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ccc46...67e962` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Temple_FRAX_TEMPLE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x016563...a15856` | ⚠️ Unaudited |
| FraxUnifiedFarm_ERC20_Vesper_Orbit_FRAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x698137...df48d6` | ⚠️ Unaudited |
| FraxUnifiedFarm_KyberSwapElastic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59f91a...24f505` | ⚠️ Unaudited |
| FraxUnifiedFarm_PosRebase_aFRAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02577b...57d65c` | ⚠️ Unaudited |
| FraxUniV3Farm_Stable_FRAX_agEUR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8caed...4f69e8` | ⚠️ Unaudited |
| FraxUniV3Farm_Stable_FRAX_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf22471...3ff53e` | ⚠️ Unaudited |
| FraxVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59cfcd...66800b` | ⚠️ Unaudited |
| frxETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0304a3...f0c00e` | ⚠️ Unaudited |
| FrxEthDualOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4b0ca6...91a527` | ⚠️ Unaudited |
| frxETHMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dd1b4...b3b532` | ⚠️ Unaudited |
| FrxUSDCustodianWithOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240923 | `0x5fbaa3...504f33` | ⚠️ Unaudited |
| FrxUSDCustodianWithReceiver | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240922 | `0x860cc7...ef7857` | ⚠️ Unaudited |
| FXB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0de54c...f1df1e` | ⚠️ Unaudited |
| FXS1559_AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c6a04...1f51ee` | ⚠️ Unaudited |
| FXS1559_AMO_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc80c48...717c24` | ⚠️ Unaudited |
| FXS1559_AMO_V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7301bb...cedae5` | ⚠️ Unaudited |
| FxsDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f55d7...a3181e` | ⚠️ Unaudited |
| FxsDualOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb99c9d...01c6d2` | ⚠️ Unaudited |
| FXSOracleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee0f15...ab3480` | ⚠️ Unaudited |
| FXSRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a6980...78f1f7` | ⚠️ Unaudited |
| GaugeExtraRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bb59...510330` | ⚠️ Unaudited |
| GaugeHelperContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8020e4...ce9861` | ⚠️ Unaudited |
| Gel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15b7c0...6cea05` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x830630...c1a81c` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae054...35847c` | ⚠️ Unaudited |
| gOHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab870...20a52f` | ⚠️ Unaudited |
| GovernanceParamsProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3b2c2...443a06` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x604cb5...aab46b` | ⚠️ Unaudited |
| Harvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6bca...86e1e7` | ⚠️ Unaudited |
| Health calculator zap for crvUSD controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ee...830d6a` | ⚠️ Unaudited |
| HODLCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb45d7b...2b672c` | ⚠️ Unaudited |
| HOPGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed8bdb...853d48` | ⚠️ Unaudited |
| HOPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5102f...81a3cc` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b42cd...dc4430` | ⚠️ Unaudited |
| InterestRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x710a2b...cbae02` | ⚠️ Unaudited |
| InterestRateCalculatorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1972b5...bc14f7` | ⚠️ Unaudited |
| InvestorAMO_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2b4d25...da01b4` | ⚠️ Unaudited |
| InvestorAMO_V2_upgrade | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1e5acc...bbf64d` | ⚠️ Unaudited |
| JointVaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599113...dfb9ec` | ⚠️ Unaudited |
| LendToAaveMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x317625...291de4` | ⚠️ Unaudited |
| LendVoteStrategyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0671ca...b3ffdf` | ⚠️ Unaudited |
| Leverage zap for crvUSD controller (sfrxETH market) | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb556fa...7f2eac` | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b71a...a2de99` | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec8e0...dbd93a` | ⚠️ Unaudited |
| LockerAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e28a...0d418c` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59f5a3...26710c` | ⚠️ Unaudited |
| ManualTokenTrackerAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be588...683f5a` | ⚠️ Unaudited |
| MasterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5ad17...68c045` | ⚠️ Unaudited |
| MathUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0409e...96de1c` | ⚠️ Unaudited |
| MerkleAirdropFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1bc2c...142991` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b5d29...a5bc27` | ⚠️ Unaudited |
| MerkleProofPriceSource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x190ef4...6d5ee5` | ⚠️ Unaudited |
| MerkleProofPriceSourceEzEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa87174...03abc5` | ⚠️ Unaudited |
| MerkleProofPriceSourceFpiOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8fc742...8e9c37` | ⚠️ Unaudited |
| MerkleProofPriceSourceRsEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5bac02...0c8dac` | ⚠️ Unaudited |
| MerkleProofPriceSourceSdai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x816cf9...36974e` | ⚠️ Unaudited |
| MerkleProofPriceSourceSfrax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe25d8a...3b9bdb` | ⚠️ Unaudited |
| MerkleProofPriceSourceSfrxEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa560e0...27ce32` | ⚠️ Unaudited |
| MerkleProofPriceSourceSUSDe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc2b984...8955e9` | ⚠️ Unaudited |
| MerkleProofPriceSourceWstEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xef583c...dce8a2` | ⚠️ Unaudited |
| MetaSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dcb69...e30bab` | ⚠️ Unaudited |
| MetaSwapDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04d8ad...c9dba1` | ⚠️ Unaudited |
| MetaSwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0c8bae...9fd314` | ⚠️ Unaudited |
| MicroVeFXSStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aac16...0a3ca2` | ⚠️ Unaudited |
| MigrationHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cce10...9083fc` | ⚠️ Unaudited |
| MiniChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x691ef7...d58534` | ⚠️ Unaudited |
| MSIGHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x977ead...7a8cbb` | ⚠️ Unaudited |
| Multicall_Oz | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00160b...8b8478` | ⚠️ Unaudited |
| MultiClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32facb...203a5f` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafd3d3...0a96ca` | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8392f6...57e225` | ⚠️ Unaudited |
| NoopRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d9a9...802e5f` | ⚠️ Unaudited |
| OHM_AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5699d2...c4db96` | ⚠️ Unaudited |
| OlympusAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c21f8...b38b7a` | ⚠️ Unaudited |
| OlympusTokenMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x184f3f...e784b3` | ⚠️ Unaudited |
| OneWayLendingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34024b...41f38c` | ⚠️ Unaudited |
| OptimismBridger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccfd60...310152` | ⚠️ Unaudited |
| OwnedRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa86ba3...db69cf` | ⚠️ Unaudited |
| OwnedResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30200e...723b2b` | ⚠️ Unaudited |
| PAXImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ffcb0...da9ce6` | ⚠️ Unaudited |
| PAXImplementationV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86eee0...55310a` | ⚠️ Unaudited |
| Peg Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef89e...4dccae` | ⚠️ Unaudited |
| PegPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226845...6c5445` | ⚠️ Unaudited |
| PermissionlessDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f43fb...22078f` | ⚠️ Unaudited |
| PermissionlessMetaSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb0867...864570` | ⚠️ Unaudited |
| PermissionlessMetaSwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45b48c...180d88` | ⚠️ Unaudited |
| PermissionlessSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b58d...83c765` | ⚠️ Unaudited |
| PermissionlessSwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10170a...33b972` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa37fe0...ca243b` | ⚠️ Unaudited |
| PerpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc3966...233447` | ⚠️ Unaudited |
| Pool_USDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1864ca...da1c0d` | ⚠️ Unaudited |
| Pool_USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d3fcd...d54968` | ⚠️ Unaudited |
| PoolBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe66db0...1cdcb8` | ⚠️ Unaudited |
| PoolHarvestHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4d89e...729f9a` | ⚠️ Unaudited |
| PoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b2d30...135a9c` | ⚠️ Unaudited |
| PoolManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f4701...5c5c1b` | ⚠️ Unaudited |
| PoolManagerSecondaryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd20904...91d1e1` | ⚠️ Unaudited |
| PoolManagerShutdownProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73b1b1...27889f` | ⚠️ Unaudited |
| PoolManagerTertiaryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ff339...feb3b2` | ⚠️ Unaudited |
| PoolManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae5f31...500183` | ⚠️ Unaudited |
| PoolManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a849f...1b1e83` | ⚠️ Unaudited |
| PoolManagerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4e9d...c02e11` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a588...851a69` | ⚠️ Unaudited |
| PoolRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x723f9a...cd4a96` | ⚠️ Unaudited |
| PoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a2f2e...7d1683` | ⚠️ Unaudited |
| PoolTypes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d85e...a78a9c` | ⚠️ Unaudited |
| PoolUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fba69...8e5cd1` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aa663...51736e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069c24...76f577` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66807b...13fc8f` | ⚠️ Unaudited |
| PublicResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226159...ed68b8` | ⚠️ Unaudited |
| PunkGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bbb6f...835ba0` | ⚠️ Unaudited |
| RariFuseLendingAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x843df6...ddb0a2` | ⚠️ Unaudited |
| Registrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x328328...6bdf51` | ⚠️ Unaudited |
| RegistrarMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6109dd...75c662` | ⚠️ Unaudited |
| RescueToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb15ffb...5aaac9` | ⚠️ Unaudited |
| RetroactiveVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dca27...198a03` | ⚠️ Unaudited |
| RewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedccb3...08aa8d` | ⚠️ Unaudited |
| RewardForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x811b69...5dffac` | ⚠️ Unaudited |
| Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x285088...e5284a` | ⚠️ Unaudited |
| SDL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1dc50...4f6871` | ⚠️ Unaudited |
| Secondary monetary policy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188041...8aeaf8` | ⚠️ Unaudited |
| Secondary monetary policy for WBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f16...b10f9c` | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a2878...5b40dd` | ⚠️ Unaudited |
| SfraxPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x35146c...68c3f7` | ⚠️ Unaudited |
| sfrxETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17845e...f2656e` | ⚠️ Unaudited |
| sfrxETH2 crvUSD leverage zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ecff...ce11bc` | ⚠️ Unaudited |
| SfrxEthDualOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa36a19...f7e7f2` | ⚠️ Unaudited |
| SfrxEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27942a...9ac97b` | ⚠️ Unaudited |
| SfrxEthSfraxInverseOracleAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1010e2...77fa2c` | ⚠️ Unaudited |
| SfrxUsd2OracleImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | fraxtal | n/a | 2 deployments: fraxtal `0x1b680f...d3f1ff`; fraxtal `0xf75063...07fc60` | ⚠️ Unaudited |
| ShibbolethTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d915c...97904c` | ⚠️ Unaudited |
| ShortNameAuctionController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x699c7f...919d17` | ⚠️ Unaudited |
| SimpleRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x595cce...318eb5` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1085e8...4b5853` | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c13b...0d9f9f` | ⚠️ Unaudited |
| StablePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9d374...ae233a` | ⚠️ Unaudited |
| Stake_FXS_WETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29367...1892b6` | ⚠️ Unaudited |
| StakedAave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x481484...0d03a1` | ⚠️ Unaudited |
| StakedAaveV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4da27a...e870f5` | ⚠️ Unaudited |
| StakeDAO_AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x375278...efe465` | ⚠️ Unaudited |
| StakeUIHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06abcc...76ae68` | ⚠️ Unaudited |
| StakingPools | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab8e74...d7deca` | ⚠️ Unaudited |
| StakingProxyConvex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32a284...7ecb44` | ⚠️ Unaudited |
| StakingProxyERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d0c89...476d80` | ⚠️ Unaudited |
| StakingProxyERC20Joint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64167f...111181` | ⚠️ Unaudited |
| StakingRewardsDual_FRAX3CRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb88107...6d4df0` | ⚠️ Unaudited |
| StakingRewardsDualV2_FRAX3CRV_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfb6ef...4d137e` | ⚠️ Unaudited |
| StakingRewardsDualV3_FRAX_IQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35fc5f...e14e6d` | ⚠️ Unaudited |
| StakingRewardsDualV4_FRAX_OHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc77a4...2335ff` | ⚠️ Unaudited |
| StakingRewardsMultiGauge_Gelato_FRAX_DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdfc49...0e2f6f` | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb81b8...a96da2` | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO_FRAX_Put | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a5354...05bb56` | ⚠️ Unaudited |
| StashFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73f88b...7bd87c` | ⚠️ Unaudited |
| StashFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x884da0...9c2be4` | ⚠️ Unaudited |
| StashTokenWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc19cf0...a13eb7` | ⚠️ Unaudited |
| StateRootOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x28fb35...acb383` | ⚠️ Unaudited |
| SubdomainMigrationRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9a4ee...63e3d2` | ⚠️ Unaudited |
| SubdomainRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b0746...b0dbd1` | ⚠️ Unaudited |
| SuperstateTokenV5_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x14d60e...74020c` | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf574cb...6efef7` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc370...45bc5a` | ⚠️ Unaudited |
| SwapCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef8af8...a59033` | ⚠️ Unaudited |
| SwapDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29fd31...31ffce` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13cc34...fa2bdc` | ⚠️ Unaudited |
| SwapMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cdef6...16ad57` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x149bbb...2833a6` | ⚠️ Unaudited |
| SynapseERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f2d71...fd9f29` | ⚠️ Unaudited |
| SynthSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf815e...5d24d3` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8412eb...4e39ca` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x72d7b8...362588` | ⚠️ Unaudited |
| TimeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x869d1b...ae8917` | ⚠️ Unaudited |
| TokemakAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e710b...64f733` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c995e...147ab9` | ⚠️ Unaudited |
| TokenLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x180573...cb2235` | ⚠️ Unaudited |
| TokenTrackerAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e077b...11a612` | ⚠️ Unaudited |
| TokenTrackerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37336a...4d09ee` | ⚠️ Unaudited |
| Transmuter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab7a49...122086` | ⚠️ Unaudited |
| TreasuryFunds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x138938...541bb7` | ⚠️ Unaudited |
| TreasuryLend | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dd97...bd207f` | ⚠️ Unaudited |
| TreasuryManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x858847...750361` | ⚠️ Unaudited |
| TreasuryManagerFrax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d464b...055f80` | ⚠️ Unaudited |
| TreasuryRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcab2bb...ac4507` | ⚠️ Unaudited |
| TreasurySwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00711e...75d21d` | ⚠️ Unaudited |
| TWAMM_AMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11fc7d...fa425b` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97c4ad...0d2d4d` | ⚠️ Unaudited |
| UniV2TWAMMFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54f454...b34e79` | ⚠️ Unaudited |
| UniV2TWAMMRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa007a9...e808de` | ⚠️ Unaudited |
| UniV3LiquidityAMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x381430...f8f4e6` | ⚠️ Unaudited |
| UniV3LiquidityAMO_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e8943...847440` | ⚠️ Unaudited |
| UniV3TWAPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59985d...d9174b` | ⚠️ Unaudited |
| USCC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41feb4...f6852b` | ⚠️ Unaudited |
| USCCv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ce236...dea2e1` | ⚠️ Unaudited |
| USD0LpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeb5c...49ae32` | ⚠️ Unaudited |
| USDP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8e870d...8289e1` | ⚠️ Unaudited |
| USTB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3986a1...51a1af` | ⚠️ Unaudited |
| USTBv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ee70...8794da` | ⚠️ Unaudited |
| Utilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37c41...64b503` | ⚠️ Unaudited |
| VariableInterestRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18500c...31f261` | ⚠️ Unaudited |
| VariableInterestRate50bp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff7846...66a98c` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x596f8e...1c2a1f` | ⚠️ Unaudited |
| VaultEarnedView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x382cd6...b3d925` | ⚠️ Unaudited |
| veFPISYieldDistributorV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5814cb...79fec9` | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6d31c...b802f6` | ⚠️ Unaudited |
| veFXSYieldDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a0a7...1d50f0` | ⚠️ Unaudited |
| veFXSYieldDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62c4cf...0ebd45` | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aaa9a...b1c296` | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6764e...1fa872` | ⚠️ Unaudited |
| VeSDLRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7b10d...2078ae` | ⚠️ Unaudited |
| VestedEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe98984...e28fcc` | ⚠️ Unaudited |
| VestedFXS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x54bd5c...24ee5c` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8504e...1dc30b` | ⚠️ Unaudited |
| vlCvxExtraRewardDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ed4bb...1e0602` | ⚠️ Unaudited |
| VoteDelegateExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5349ff...67fb07` | ⚠️ Unaudited |
| VoterProxyOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b8355...48816e` | ⚠️ Unaudited |
| VotingBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4d57...857ce9` | ⚠️ Unaudited |
| VotingBalanceMax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59ccba...179bf2` | ⚠️ Unaudited |
| VotingBalanceV2Gauges | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cc2cf...72b988` | ⚠️ Unaudited |
| VotingEligibility | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbce1cb...bbfb0f` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0145fd...5b97a9` | ⚠️ Unaudited |
| WBTC-crvUSD leverage zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2518b...2de4d7` | ⚠️ Unaudited |
| WETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1302a7...971527` | ⚠️ Unaudited |
| WhitelistComplianceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x285d32...360a06` | ⚠️ Unaudited |
| WrapperFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a5a26...8212bc` | ⚠️ Unaudited |
| wstETH-crvUSD leverage zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293436...fc74fd` | ⚠️ Unaudited |
| ZigZagToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc91a71...bf55ad` | ⚠️ Unaudited |
| ZKasinoToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc91c88...cfc976` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (92)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240759 | `0x0132f1...582d43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240761 | `0x04acaf...88977f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240763 | `0x111dda...550de1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240764 | `0x11fe3b...1376cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240765 | `0x126bcc...d542ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240766 | `0x13fe62...81abca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240768 | `0x19d7df...592934` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240772 | `0x3077c8...bbc1f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240773 | `0x31d982...468640` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240775 | `0x34a9f2...25f8b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240776 | `0x34c0bd...58bde2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240777 | `0x36cb65...ca6f6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240781 | `0x3ad4dc...bd648e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240790 | `0x452420...2c543c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240793 | `0x4f95c5...3bd87c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240799 | `0x5e8422...8caa1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240800 | `0x66cc91...e171e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240801 | `0x694c24...f1bf81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240803 | `0x6ca233...f77f95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240804 | `0x6ca98f...ce7876` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240809 | `0x7a07d6...856c7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240813 | `0x88f747...bcfbb4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240814 | `0x8c5d64...b4dabe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240819 | `0x938d99...441699` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240820 | `0x941be1...fd3ee7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240821 | `0x983af8...32d263` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240822 | `0x99b558...87bfa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240825 | `0xa3d62f...d63696` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240827 | `0xa663b0...c41c32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240829 | `0xa9b5fb...8d0ec5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240830 | `0xac3e01...bbe38f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240835 | `0xc71bf5...ec802d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240837 | `0xcf62f9...c9c5b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240844 | `0xe827ab...6e4e9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240862 | `0xfe2ea8...1a0a29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240864 | `0xff92d3...4cf519` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-240865 | `0x31d982...468640` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-240866 | `0x7a07d6...856c7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-240867 | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240898 | `0x452420...2c543c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240899 | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240900 | `0xdee455...b0d852` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-240869 | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-240870 | `0x983af8...32d263` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-240871 | `0xc71bf5...ec802d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240876 | `0x5658e8...6673c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240877 | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240878 | `0xf74d38...fbb30c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240879 | `0x3a5cda...db2f23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240880 | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-240881 | `0xf6115b...efad0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-240882 | `0xfc0000...000001` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-240883 | `0xa05e9f...8c400b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-240884 | `0xc5e4a0...69ddfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-240885 | `0xea77c5...63170d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-240918 | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-240919 | `0x8ebb34...7c41a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-240920 | `0xb85a8f...56a5dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-240868 | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-240875 | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240913 | `0x3ec384...7fde45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240914 | `0x73382e...fce5de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-240915 | `0xe5020a...6fb0b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-240916 | `0x8ebb34...7c41a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-240917 | `0xb85a8f...56a5dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-240886 | `0x486cb4...3cf262` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-240887 | `0x736057...fbfdf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-240888 | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240889 | `0x29f5db...83c70a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240890 | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240891 | `0xa46a26...5a0d6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240892 | `0x452420...2c543c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240893 | `0x7a07d6...856c7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240894 | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-240901 | `0x452420...2c543c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-240902 | `0x7a07d6...856c7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-240903 | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-240904 | `0x6ca98f...ce7876` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-240905 | `0xa71f22...02e7fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-240906 | `0xc73467...8673d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-240907 | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-240908 | `0x983af8...32d263` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-240909 | `0xc71bf5...ec802d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-240910 | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-240911 | `0x85b171...3180b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-240912 | `0xe93cb3...28e58e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-240895 | `0x397f93...cdce82` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-240896 | `0x91ddb0...65f558` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-240897 | `0xf6f45c...86124e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-240872 | `0x53e36c...a52344` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-240873 | `0x80eede...d600df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | aurora | unit-240874 | `0x8ebb34...7c41a2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/fraxfinance) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [June 2021 - Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/FraxFinance.pdf) | Trail of Bits | Audit | 2021-06 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 20 | high |
| [Dec 2021 - Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/FraxQ42021.pdf) | Trail of Bits | Audit | 2021-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 28 | high |
| [August 2022 - Fraxswap & FPI Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/FraxQ22022.pdf) | Trail of Bits | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [September 2022 - frxETH - Code4rena](https://code4rena.com/reports/2022-09-frax) | Code4rena | Contest | 2022-09 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [November 2022 - Fraxlend & Fraxferry - Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/2022-10-fraxfinance-fraxlend-fraxferry-securityreview.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [July 2023 - FrxGov - Trail of Bits](https://github.com/trailofbits/publications/blob/master/reviews/2023-05-fraxgov-securityreview.pdf) | Trail of Bits | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/FXB%2C%20sFRAX%2C%20frxETH%20Redemption%20Queue%2C%20Frax%20Oracles%20-%20Trail%20of%20Bits%20-%20Oct%202023.pdf) | Trail of Bits | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxchain%20(Fraxtal)%20-%20Trail%20of%20Bits%20-%20Jan%202024.pdf) | Trail of Bits | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [March 2024 - frxETH V2 - Frax Security Cartel](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/frxETH%20V2%20Audit%20Report%20-%20Frax%20Security%20Cartel%20-%20March%202024.pdf) | Trail of Bits | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%20Audit%20-%20April%202024%20-%20Frax%20Security%20Cartel.pdf) | Frax Security Cartel | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/FPISLocker%20%2B%20FraxtalERC4626MintRedeemer%20(Fraxtal%20sFRAX)%20-%20May%202024%20-%20Frax%20Security%20Cartel.pdf) | Code4rena | Contest | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Curve%20AMO%20Audit%20Report%20-%20Frax%20Security%20Cartel%20-%20May%202024.pdf) | Code4rena | Contest | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Frax-Certora (Bamm) report - Final.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Frax-Certora%20(Bamm)%20report%20-%20%20Final.pdf) | Certora | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [March 2025 - Fraxtal North Star - Frax Security Cartel](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Fraxtal%20North%20Star%20Audit%20Report.pdf) | Frax Security Cartel | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf) | ChainSecurity | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Frax - Zellic Audit Report.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Frax%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 17 | high |
| [Frax0 Mesh - Zellic Audit Report.pdf](https://github.com/FraxFinance/frax-solidity/blob/master/src/audits/Frax0%20Mesh%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [- [Audits]()](https://docs.frax.finance/other/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [- [审计]()](https://docs.frax.finance/zh/qi-ta/shen-ji.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17227] DL audit link — no match: The provided text is a CertiK Skynet project insight page, not an audit report. It contains no scope section, contract names, or audit date. The only contract addresses listed are for the FRAX token and a centralization scan, but these are not explicitly stated as being in scope of an audit.
- [17228] June 2021 - Trail of Bits — matched: Extracted contract names from Coverage section and findings targets. Audit date from cover page and changelog.
- [17229] Dec 2021 - Trail of Bits — matched: Extracted contract names from Project Targets section and findings. Audit date from final report delivery date.
- [17230] August 2022 - Fraxswap & FPI Trail of Bits — no match: Extracted contracts from Project Targets and Detailed Findings sections. Audit date from cover page.
- [17231] September 2022 - frxETH - Code4rena — matched: Scope section explicitly lists 6 smart contracts. Audit date from report header.
- [17232] November 2022 - Fraxlend & Fraxferry - Trail of Bits — no match: Extracted from Project Targets and Project Coverage sections. Audit date from final report delivery date.
- [17233] July 2023 - FrxGov - Trail of Bits — no match: Extracted contracts from Project Targets and Project Coverage sections. veFXS.vy is referenced but explicitly stated as not in scope. FraxGovernorBravo is mentioned in finding TOB-FRAXGOV-8 as a target.
- [17234] Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits — no match: Extracted 13 contracts from scope sections and coverage details. Audit date from cover page and delivery date.
- [17235] Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf — no match: Extracted contracts from Project Targets, Project Coverage, and mutation testing sections. Audit date from cover page and delivery date.
- [17236] March 2024 - frxETH V2 - Frax Security Cartel — no match: Scope section 2.1 lists directories and files. Contract names extracted from file paths and findings.
- [17237] April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel — no match: Extracted contracts from scope directories and findings. Audit date from cover page.
- [17238] FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf — no match: Extracted 5 contracts from the scope section (Section 2.1) and the report date from the cover page.
- [17239] May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel — no match: Extracted contracts from the scope section (contracts/curve-amo/ directory) and findings. Audit date from cover page.
- [17240] Frax-Certora (Bamm) report - Final.pdf — no match: Extracted 7 contracts from scope table and 2 from formal verification modules.
- [17241] March 2025 - Fraxtal North Star - Frax Security Cartel — no match: All contracts listed in the scope section of the audit report.
- [17242] ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf — no match: Extracted 10 contracts from scope tables in section 2.1. Audit date from cover page.
- [17243] Frax - Zellic Audit Report.pdf — matched: All contracts listed in the scope table (section 2.3) were extracted. The audit date is July 7, 2025, as stated on the cover page and in the executive summary.
- [17244] Frax0 Mesh - Zellic Audit Report.pdf — no match: Extracted 17 contract names from scope tables and file paths. Audit date found on cover page and header/footer as September 24, 2025.
- [17245] - [Audits]() — no match: The document is an index of audit reports with links, not an actual audit report. No contracts in scope are listed.
- [17246] - [审计]() — no match: The document is an index of audit reports with dates and links, but does not list specific contracts in scope for any audit.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| June 2021 - Trail of Bits | FRAXStablecoin | own contract | FRAXStablecoin (selected) `0x853d95...75b99e` — deployed 2020-12-16 20:42:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| June 2021 - Trail of Bits | FRAXShares | own contract | FRAXShares (selected) `0x3432b6...c964d0` — deployed 2020-12-16 20:42:40+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| June 2021 - Trail of Bits | veFXS | unmatched — not counted | — | Coverage section: 'veFXS. This voting escrow contract...' | no |
| June 2021 - Trail of Bits | Pool_USDC | unmatched — not counted | — | Coverage section: 'Pool_USDC and the FraxPool. Pool_USDC, which inherits from the FraxPool...' | no |
| June 2021 - Trail of Bits | FraxPool | unmatched — not counted | — | Coverage section: 'Pool_USDC and the FraxPool...' | no |
| June 2021 - Trail of Bits | CurveAMO_V3 | unmatched — not counted | — | Coverage section: 'CurveAMO_V3 implementation...' | no |
| June 2021 - Trail of Bits | InvestorAMO_V2 | unmatched — not counted | — | Coverage section: 'We also achieved partial coverage of the InvestorAMO_V2.' | no |
| June 2021 - Trail of Bits | FXS | unmatched — not counted | — | Finding TOB-FRAX-002 target: 'Frax.sol, FraxPool.sol, FXS.sol' | no |
| June 2021 - Trail of Bits | Frax | own contract | FRAXShares (selected) `0x3432b6...c964d0` — deployed 2020-12-16 20:42:40+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| June 2021 - Trail of Bits | ERC20Custom | unmatched — not counted | — | Finding TOB-FRAX-007 description mentions ERC20Custom token contract | no |
| June 2021 - Trail of Bits | AdminUpgradeableProxy | unmatched — not counted | — | Finding TOB-FRAX-011 target: 'import.sol' and description mentions AdminUpgradeableProxy | no |
| June 2021 - Trail of Bits | ERC1967Proxy | unmatched — not counted | — | Finding TOB-FRAX-011 description mentions ERC1967Proxy | no |
| June 2021 - Trail of Bits | Proxy | unmatched — not counted | — | Finding TOB-FRAX-011 description mentions Proxy contract | no |
| June 2021 - Trail of Bits | ERC1967Upgrade | unmatched — not counted | — | Finding TOB-FRAX-011 description mentions ERC1967Upgrade | no |
| June 2021 - Trail of Bits | Address | unmatched — not counted | — | Finding TOB-FRAX-020 target: 'FRAXStablecoin/Address.sol' | no |
| June 2021 - Trail of Bits | ERC20 | unmatched — not counted | — | Finding TOB-FRAX-015 mentions ERC20 as a copied dependency | no |
| June 2021 - Trail of Bits | Babylonian | unmatched — not counted | — | Finding TOB-FRAX-015 mentions Babylonian as a copied dependency | no |
| June 2021 - Trail of Bits | Governance | unmatched — not counted | — | Finding TOB-FRAX-015 mentions Governance as a copied dependency | no |
| June 2021 - Trail of Bits | UniswapV2Library | unmatched — not counted | — | Appendix C mentions UniswapV2Library.sol | no |
| June 2021 - Trail of Bits | IMetaImplementationUSD | unmatched — not counted | — | Appendix C mentions Curve/IMetaImplementationUSD.sol | no |
| June 2021 - Trail of Bits | IStableSwap3Pool | unmatched — not counted | — | Appendix C mentions Curve/IStableSwap3Pool.sol | no |
| June 2021 - Trail of Bits | FXS1559_AMO | unmatched — not counted | — | Appendix C mentions FXS1559_AMO.sol | no |
| June 2021 - Trail of Bits | TransferHelper | unmatched — not counted | — | Fix log mentions TransferHelper.safeTransfer and TransferHelper.safeTransferFrom | no |
| Dec 2021 - Trail of Bits | FraxPoolV3 | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | veFXS | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | CrossChainCanonical | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | CCFrax1to1AMM | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | FraxUnifiedFarmTemplate | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | StakingRewards | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | FraxGaugeFXSRewardsDistributor | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | FraxUniV3Farm_Stable | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | StakingRewardsMultiGauge | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | Convex_AMO_V2 | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | FraxAMOMinter | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | BasicCvxHolder | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | veFXSYieldDistributorV4 | unmatched — not counted | — | listed in Project Targets | no |
| Dec 2021 - Trail of Bits | OHM_AMO | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | Frax | own contract | FRAXShares (selected) `0x3432b6...c964d0` — deployed 2020-12-16 20:42:40+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Dec 2021 - Trail of Bits | ComboOracle | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | FRAXOracleWrapper | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | FXSOracleWrapper | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | FXS1559_AMO_V3 | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | UniV3LiquidityAMO_V2_old | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | UniV3LiquidityAMO_V2 | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | UniV3LiquidityAMO | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | MIM_Convex_AMO | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | FraxUniV3Farm_Volatile | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | SushiSwapLiquidityAMO_ARBI | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | TWAMM | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | FraxCrossChainFarmSushi | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | ConvexAMO | unmatched — not counted | — | mentioned in findings | no |
| Dec 2021 - Trail of Bits | ManualTokenTrackerAMO | unmatched — not counted | — | mentioned in findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits | UniV2TWAMMPair | unmatched — not counted | — | listed in scope and findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits | LongTermOrders | unmatched — not counted | — | listed in findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits | ExecVirtualOrders | unmatched — not counted | — | listed in findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits | FPIControllerPool | unmatched — not counted | — | listed in scope and findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits | CPITrackerOracle | unmatched — not counted | — | listed in scope and findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits | FraxLendPairDeployer | unmatched — not counted | — | listed in findings | no |
| August 2022 - Fraxswap & FPI Trail of Bits | FraxLendCore | unmatched — not counted | — | listed in findings | no |
| September 2022 - frxETH - Code4rena | ERC20PermitPermissionedMint | unmatched — not counted | — | listed in scope | no |
| September 2022 - frxETH - Code4rena | frxETH | own contract | 0x5e8422… (selected) `0x5e8422...8caa1f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| September 2022 - frxETH - Code4rena | sfrxETH | own contract | 0xac3e01… (selected) `0xac3e01...bbe38f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| September 2022 - frxETH - Code4rena | frxETHMinter | unmatched — not counted | — | listed in scope | no |
| September 2022 - frxETH - Code4rena | OperatorRegistry | unmatched — not counted | — | listed in scope | no |
| September 2022 - frxETH - Code4rena | xERC4626 | unmatched — not counted | — | listed in scope | no |
| November 2022 - Fraxlend & Fraxferry - Trail of Bits | FraxlendPair | unmatched — not counted | — | listed in Project Coverage section | no |
| November 2022 - Fraxlend & Fraxferry - Trail of Bits | FraxlendPairDeployer | unmatched — not counted | — | listed in Project Coverage section | no |
| November 2022 - Fraxlend & Fraxferry - Trail of Bits | FraxlendWhitelist | unmatched — not counted | — | listed in Project Coverage section | no |
| November 2022 - Fraxlend & Fraxferry - Trail of Bits | Fraxferry | unmatched — not counted | — | listed in Project Coverage section and findings | no |
| July 2023 - FrxGov - Trail of Bits | FraxGovernorAlpha | unmatched — not counted | — | listed in Project Coverage section | no |
| July 2023 - FrxGov - Trail of Bits | FraxGovernorOmega | unmatched — not counted | — | listed in Project Coverage section | no |
| July 2023 - FrxGov - Trail of Bits | VeFxsVotingDelegation | unmatched — not counted | — | listed in Project Coverage section | no |
| July 2023 - FrxGov - Trail of Bits | Governor | unmatched — not counted | — | target in findings TOB-FRAXGOV-3 and TOB-FRAXGOV-5 | no |
| July 2023 - FrxGov - Trail of Bits | GovernorCountingFractional | unmatched — not counted | — | mentioned in Code Quality Findings appendix | no |
| July 2023 - FrxGov - Trail of Bits | FraxGovernorBravo | unmatched — not counted | — | target in finding TOB-FRAXGOV-8 | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | FXB | unmatched — not counted | — | listed in scope and detailed findings | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | SlippageAuction | unmatched — not counted | — | listed in scope and detailed findings | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | LinearRewardsERC4626 | unmatched — not counted | — | listed in scope | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | SavingsFrax | unmatched — not counted | — | listed in scope | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | FraxEtherRedemptionQueue | unmatched — not counted | — | listed in scope and detailed findings | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | FrxEthEthDualOracle | unmatched — not counted | — | listed in scope and detailed findings | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | FrxEthFraxOracle | unmatched — not counted | — | listed in scope | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | SfrxEthEthDualOracle | unmatched — not counted | — | listed in scope and detailed findings | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | SfrxEthFraxOracle | unmatched — not counted | — | listed in scope | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | ArbitrumBlockHashRelay | unmatched — not counted | — | listed in scope | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | ArbitrumBlockHashProvider | unmatched — not counted | — | listed in scope | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | MerkleProofPriceSource | unmatched — not counted | — | listed in scope | no |
| Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits | StateRootOracle | unmatched — not counted | — | listed in scope | no |
| Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf | FraxchainPortal | unmatched — not counted | — | listed in Project Targets and Project Coverage sections | no |
| Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf | VoteEscrowedFXS | unmatched — not counted | — | listed in Project Targets and Project Coverage sections | no |
| Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf | YieldBoosterBridge | unmatched — not counted | — | listed in Project Coverage and mutation testing tables | no |
| Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf | SnapshotDistributor | unmatched — not counted | — | listed in Project Coverage and mutation testing tables | no |
| Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf | ERC4626PriceOracle | unmatched — not counted | — | listed in mutation testing table | no |
| Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf | wfrxETH | unmatched — not counted | — | listed in mutation testing table | no |
| Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf | ERC20PermitPermissionedOptiMintable | unmatched — not counted | — | listed in mutation testing table | no |
| Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf | Deploy | unmatched — not counted | — | listed in Project Targets | no |
| March 2024 - frxETH V2 - Frax Security Cartel | BeaconOracle | unmatched — not counted | — | listed in scope section 2.1 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | EtherRouter | unmatched — not counted | — | listed in scope section 2.1 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | FraxEtherMinter | unmatched — not counted | — | listed in scope section 2.1 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | FraxEtherRedemptionQueue | unmatched — not counted | — | listed in scope section 2.1 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | InterestRateCalculator | unmatched — not counted | — | mentioned in finding 3.3.3 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | LendingPool | unmatched — not counted | — | listed in scope section 2.1 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | LendingPoolCore | unmatched — not counted | — | mentioned in finding 3.4.6 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | OperatorRole | unmatched — not counted | — | listed in scope section 2.1 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | Timelock2Step | unmatched — not counted | — | listed in scope section 2.1 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | ValidatorPool | unmatched — not counted | — | listed in scope section 2.1 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | VariableInterestRate | unmatched — not counted | — | mentioned in finding 3.3.4 | no |
| March 2024 - frxETH V2 - Frax Security Cartel | VaultAccountingLibrary | unmatched — not counted | — | listed in scope section 2.1 | no |
| April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel | FraxchainPortal | unmatched — not counted | — | listed in scope under Fraxtal component | no |
| April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel | VestedFXS | unmatched — not counted | — | listed in scope under VestedFXS component | no |
| April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel | ERC20PermitPermissionedOptiMintable | unmatched — not counted | — | mentioned in findings as audited contract | no |
| April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel | BalanceChecker | unmatched — not counted | — | mentioned in findings as audited contract | no |
| April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel | DelegationRegistry | unmatched — not counted | — | mentioned in findings as audited contract | no |
| April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel | CrossDomainMessenger | unmatched — not counted | — | mentioned in findings as audited contract | no |
| April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel | L2StandardBridge | unmatched — not counted | — | mentioned in findings as audited contract | no |
| April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel | L2ToL1MessagePasser | unmatched — not counted | — | mentioned in findings as audited contract | no |
| FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf | FPISLocker | unmatched — not counted | — | listed in scope | no |
| FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf | FPISLockerUtils | unmatched — not counted | — | listed in scope | no |
| FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf | IlFPISEvents | unmatched — not counted | — | listed in scope | no |
| FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf | IlFPISStructs | unmatched — not counted | — | listed in scope | no |
| FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf | FraxtalERC4626MintRedeemer | unmatched — not counted | — | listed in scope | no |
| May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel | CurveLsdAmo | unmatched — not counted | — | Scope section: 'specifically in the contracts/curve-amo/ directory' and findings reference CurveLsdAmo extensively. | no |
| May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel | CurveLsdAmoHelper | unmatched — not counted | — | Scope section: 'specifically in the contracts/curve-amo/ directory' and findings reference CurveLsdAmoHelper. | no |
| May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel | EtherRouter | unmatched — not counted | — | Scope section: 'specifically in the contracts/curve-amo/ directory' and findings reference EtherRouter. | no |
| May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel | LendingPool | unmatched — not counted | — | Scope section: 'specifically in the contracts/curve-amo/ directory' and findings reference LendingPool. | no |
| May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel | LendingPoolCore | unmatched — not counted | — | Scope section: 'specifically in the contracts/curve-amo/ directory' and findings reference LendingPoolCore. | no |
| May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel | FraxEtherRedemptionQueueV2 | unmatched — not counted | — | Scope section: 'specifically in the contracts/curve-amo/ directory' and findings reference FraxEtherRedemptionQueueV2. | no |
| Frax-Certora (Bamm) report - Final.pdf | BAMM | unmatched — not counted | — | listed in scope | no |
| Frax-Certora (Bamm) report - Final.pdf | BAMMERC20 | unmatched — not counted | — | listed in scope | no |
| Frax-Certora (Bamm) report - Final.pdf | BAMMHelper | unmatched — not counted | — | listed in scope | no |
| Frax-Certora (Bamm) report - Final.pdf | BAMMUIHelper | unmatched — not counted | — | listed in scope | no |
| Frax-Certora (Bamm) report - Final.pdf | FraxswapOracle | unmatched — not counted | — | listed in scope | no |
| Frax-Certora (Bamm) report - Final.pdf | VariableInterestRate | unmatched — not counted | — | listed in scope | no |
| Frax-Certora (Bamm) report - Final.pdf | BAMMFactory | unmatched — not counted | — | listed in scope | no |
| Frax-Certora (Bamm) report - Final.pdf | FixedPoint | unmatched — not counted | — | Formal Verification section | no |
| Frax-Certora (Bamm) report - Final.pdf | BitMath | unmatched — not counted | — | Formal Verification section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | OptimismPortalCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | SystemConfigCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | L1StandardBridgeCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | L1CrossDomainMessengerCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | L1BlockCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | L2CrossDomainMessengerCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | L2StandardBridgeCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | L2ToL1MessagePasserCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | BaseFeeVaultCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | FeeVaultCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | L1FeeVaultCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | SequencerFeeVaultCGT | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | ERC20ExPPOMWrapped | unmatched — not counted | — | listed in scope section | no |
| March 2025 - Fraxtal North Star - Frax Security Cartel | ERC20ExWrappedPPOM | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | FXB_LFRAX | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | FraxBeacon | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | FraxBeaconProxy | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | FraxUpgradeableProxy | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | FXB | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | FXBFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | StakedFrxUSD2 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | LinearRewardsQuasiErc4626 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | FraxtalERC4626MintRedeemer | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf | SfrxUsd2OracleImplementation | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | FraxNetDepositFactory | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | FraxNetDeposit | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | FraxProxy | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | FraxNetDepositV2 | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | Constants | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | FraxBeacon | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | RWARedemptionCoordinator | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | FrxUSD | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xcacd6f...586e29` — deployed 2025-01-03 13:28:47+03 — liveness: live (current_address_book_code)<br>FRAXStablecoin (alternative) `0x853d95...75b99e` — deployed 2020-12-16 20:42:00+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-01-03 was 185d from audit; next candidate 1664d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Frax - Zellic Audit Report.pdf | frxUsd_fraxtal | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | FrxUSDCustodian | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | IRemoteHop | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | ITokenMessenger | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | IFrxUSDCustodian | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | IProxy | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | IRWAUSDCRedeemer | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | IRWAIssuer | unmatched — not counted | — | listed in scope table | no |
| Frax - Zellic Audit Report.pdf | IMessageTransmitter | unmatched — not counted | — | listed in scope table | no |
| Frax0 Mesh - Zellic Audit Report.pdf | FrxUSD2 | unmatched — not counted | — | listed in scope table for dev-fraxchain-contracts | no |
| Frax0 Mesh - Zellic Audit Report.pdf | StakedFrxUSD2 | unmatched — not counted | — | listed in scope table for dev-fraxchain-contracts | no |
| Frax0 Mesh - Zellic Audit Report.pdf | FrxUSD3 | unmatched — not counted | — | listed in scope table for dev-staked-frax-erc4626 | no |
| Frax0 Mesh - Zellic Audit Report.pdf | StakedFrxUSD3 | unmatched — not counted | — | listed in scope table for dev-staked-frax-erc4626 | no |
| Frax0 Mesh - Zellic Audit Report.pdf | FraxtalMinter | unmatched — not counted | — | listed in scope table for fraxnet-dev | no |
| Frax0 Mesh - Zellic Audit Report.pdf | RemoteCustodianUsdc | unmatched — not counted | — | listed in scope table for fraxnet-dev | no |
| Frax0 Mesh - Zellic Audit Report.pdf | RemoteCustodianWithOracle | unmatched — not counted | — | listed in scope table for fraxnet-dev | no |
| Frax0 Mesh - Zellic Audit Report.pdf | RemoteCustodian | unmatched — not counted | — | listed in scope table for fraxnet-dev | no |
| Frax0 Mesh - Zellic Audit Report.pdf | CustodianBase | unmatched — not counted | — | listed in scope table for fraxnet-dev | no |
| Frax0 Mesh - Zellic Audit Report.pdf | FraxOFTMintableAdapterUpgradeable | unmatched — not counted | — | listed in scope table for frax-oft-upgradeable | no |
| Frax0 Mesh - Zellic Audit Report.pdf | FraxOFTUpgradeable | unmatched — not counted | — | listed in scope table for frax-oft-upgradeable | no |
| Frax0 Mesh - Zellic Audit Report.pdf | FrxUSDOFTUpgradeable | unmatched — not counted | — | listed in scope table for frax-oft-upgradeable | no |
| Frax0 Mesh - Zellic Audit Report.pdf | SFrxUSDOFTUpgradeable | unmatched — not counted | — | listed in scope table for frax-oft-upgradeable | no |
| Frax0 Mesh - Zellic Audit Report.pdf | WFRAXTokenOFTUpgradeable | unmatched — not counted | — | listed in scope table for frax-oft-upgradeable | no |
| Frax0 Mesh - Zellic Audit Report.pdf | UpgradeV110Destinations | unmatched — not counted | — | listed in scope table for frax-oft-upgradeable | no |
| Frax0 Mesh - Zellic Audit Report.pdf | UpgradeAdapterEthereum | unmatched — not counted | — | listed in scope table for frax-oft-upgradeable | no |
| Frax0 Mesh - Zellic Audit Report.pdf | UpgradeAdapterFraxtal | unmatched — not counted | — | listed in scope table for frax-oft-upgradeable | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x5ca135...cbe08e` | FPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc2544a...901fdb` | FPIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5fbaa3...504f33` | FrxUSDCustodianWithOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x860cc7...ef7857` | FrxUSDCustodianWithReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 375 |
| upstream | 20 |
| standard_library | 7 |
| needs_review | 92 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 188 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=17, low=3
- Match method counts: temporal_name=1, unique_name=5

Zero-match audit list:

- [17227] DL audit link
- [17230] August 2022 - Fraxswap & FPI Trail of Bits
- [17232] November 2022 - Fraxlend & Fraxferry - Trail of Bits
- [17233] July 2023 - FrxGov - Trail of Bits
- [17234] Oct 2023 - FXB, sFRAX, frxETH Redemption Queue, Frax Oracles - Trail of Bits
- [17235] Fraxchain (Fraxtal) - Trail of Bits - Jan 2024.pdf
- [17236] March 2024 - frxETH V2 - Frax Security Cartel
- [17237] April 2024 - Fraxtal, VestedFXS, and Flox - Frax Security Cartel
- [17238] FPISLocker + FraxtalERC4626MintRedeemer (Fraxtal sFRAX) - May 2024 - Frax Security Cartel.pdf
- [17239] May 2024 - Curve AMO for frxETH V2 - Frax Security Cartel
- [17240] Frax-Certora (Bamm) report - Final.pdf
- [17241] March 2025 - Fraxtal North Star - Frax Security Cartel
- [17242] ChainSecurity_Frax_FXB_sfrxUSD_Upgrade_Audit.pdf
- [17244] Frax0 Mesh - Zellic Audit Report.pdf
- [17245] - [Audits]()
- [17246] - [审计]()

Fork inheritance lineage and inherited audits are included when available.
