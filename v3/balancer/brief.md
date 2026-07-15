# Agentic Audit Brief: Balancer

## Export Authority

- Production state: **published scope**
- Raw selected rows: 45 across 22 audit(s)
- Eligible audit results: 43 (22 matched; 21 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Balancer (`balancer`)
- Website: [https://balancer.fi](https://balancer.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, ethereum, fraxtal, gnosis, mode, optimism, plasma, polygon, polygon-zkevm
- Contract surface: 259 unique implementations (260 raw deployments)
- Coverage basis: 17/61 confirmed own live verified implementations (27.9%); conservative 27.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $176,902,882.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Balancer. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 61 contract row(s) across arbitrum, avalanche, base, ethereum, fraxtal, gnosis, optimism, polygon, polygon-zkevm. Structural roles: 58 core, 2 unclassified, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 61
- Structural roles: core (58), unclassified (2), supporting (1)
- Contract kinds: contract (59), unclassified (2)
- Detected standards: erc20 (8), erc20permit (8), erc165 (7), chainlinkaggregator (4), ownable (4), ownable2step (3), multicall (1)
- Frameworks: openzeppelin (55), chainlink (5), permit2 (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

6 of 146 contracts are derived from known codebases. 140 contracts have no detected origin.

### Forked Contracts

**BalancerMinter** (`0x239e55...638a2b`, chain 1)
Origin: stake-dao (`0x0c5538...325d4f`)
Containment: 82.4% - 14 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- getBalancerTokenAdmin()
- getGaugeController()

Removals (removed from original):
- addGaugeFactory(ILiquidityGaugeFactory)
- isValidGaugeFactory(ILiquidityGaugeFactory)
- removeGaugeFactory(ILiquidityGaugeFactory)

**FixedPriceLBPoolFactory** (`0xeb1aa9...be8758`, chain 1)
Origin: aura (`0xd9e91f...e6479e`)
Containment: 100.0% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Gyro2CLPPool** (`0x4ffecd...f5fa80`, chain 1)
Origin: balancer (`0x0a8afe...85dd5d`)
Containment: 71.4% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- getGyro2CLPPoolDynamicData()
- getGyro2CLPPoolImmutableData()

Removals (removed from original):
- getAmplificationParameter()
- getAmplificationState()
- getStablePoolDynamicData()
- getStablePoolImmutableData()
- startAmplificationParameterUpdate(uint256,uint256)
- stopAmplificationParameterUpdate()

**GyroECLPPoolFactory** (`0x04d584...6b69d1`, chain 1)
Origin: balancer (`0x187a05...baa6ac`)
Containment: 88.2% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- create(string,string,TokenConfig[],IGyroECLPPool.EclpParams,IGyroECLPPool.DerivedEclpParams,PoolRoleAccounts,uint256,address,bool,bool,bytes32)

Removals (removed from original):
- create(string,string,TokenConfig[],uint256,PoolRoleAccounts,uint256,bool,bytes32)
- getStableSurgeHook()

**LBPoolFactory** (`0x02916d...bddcaf`, chain 1)
Origin: aura (`0xd9e91f...e6479e`)
Containment: 85.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- create(string,string,LBPParams,uint256,bytes32,address)
- createWithMigration(string,string,LBPParams,uint256,bytes32,address,uint256,uint256,uint256,uint256)

Removals (removed from original):
- create(LBPCommonParams,uint256,uint256,bytes32,address)
- getMaxBptLockDuration()
- getMinReserveTokenMigrationWeight()

**StableSurgePoolFactory** (`0x187a05...baa6ac`, chain 1)
Origin: balancer (`0x02916d...bddcaf`)
Containment: 78.9% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- create(string,string,TokenConfig[],uint256,PoolRoleAccounts,uint256,bool,bytes32)
- getStableSurgeHook()

Removals (removed from original):
- create(string,string,LBPParams,uint256,bytes32,address)
- createWithMigration(string,string,LBPParams,uint256,bytes32,address,uint256,uint256,uint256,uint256)
- getMigrationRouter()
- getTrustedRouter()

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0f08ee...347b7c`, chain 1)
- UnnamedContract (`0x1cd776...b1d608`, chain 1)
- UnnamedContract (`0x22625e...86b017`, chain 1)
- UnnamedContract (`0x2a18b3...6605e8`, chain 1)
- UnnamedContract (`0x2bbcbb...dfda6e`, chain 1)
- UnnamedContract (`0x301ede...47154b`, chain 1)
- UnnamedContract (`0x332694...f81d99`, chain 1)
- UnnamedContract (`0x355bd3...53ad95`, chain 1)
- UnnamedContract (`0x35ffb7...539864`, chain 1)
- UnnamedContract (`0x3b8ca5...b25bd0`, chain 1)
- UnnamedContract (`0x3ccd78...3ab7ff`, chain 1)
- UnnamedContract (`0x3f1706...38dc10`, chain 1)
- UnnamedContract (`0x4b4b45...2d85c6`, chain 1)
- UnnamedContract (`0x4efcd8...0f3228`, chain 1)
- UnnamedContract (`0x4eff2d...ff4cb5`, chain 1)
- UnnamedContract (`0x5939ab...841fab`, chain 1)
- UnnamedContract (`0x5c6fb4...bd9fdd`, chain 1)
- UnnamedContract (`0x5d06d6...9859bc`, chain 1)
- UnnamedContract (`0x5dbad7...2113cd`, chain 1)
- UnnamedContract (`0x5efbb1...1e91a4`, chain 1)
- UnnamedContract (`0x664286...95069a`, chain 1)
- UnnamedContract (`0x67f8df...6ecb0b`, chain 1)
- UnnamedContract (`0x6a5127...582b39`, chain 1)
- UnnamedContract (`0x715c77...370bdc`, chain 1)
- UnnamedContract (`0x74a1b9...8d2086`, chain 1)
- UnnamedContract (`0x765ce1...faa93c`, chain 1)
- UnnamedContract (`0x774cb6...17eb94`, chain 1)
- UnnamedContract (`0x816e90...eeb308`, chain 1)
- UnnamedContract (`0x83bf39...f56129`, chain 1)
- UnnamedContract (`0x83e443...668cb8`, chain 1)
- UnnamedContract (`0x866d4b...940a36`, chain 1)
- UnnamedContract (`0x8902f9...dcecc6`, chain 1)
- UnnamedContract (`0x89ef89...d2891c`, chain 1)
- UnnamedContract (`0x8d75fa...5dc5cc`, chain 1)
- UnnamedContract (`0x8df979...fb5387`, chain 1)
- UnnamedContract (`0x8f42ad...9add75`, chain 1)
- UnnamedContract (`0x90bd26...c93694`, chain 1)
- UnnamedContract (`0x90e065...827f2a`, chain 1)
- UnnamedContract (`0x9179c0...0e7b45`, chain 1)
- UnnamedContract (`0x94f68b...72d227`, chain 1)
- UnnamedContract (`0x95bc5c...46dcbf`, chain 1)
- UnnamedContract (`0x96484f...f13b6d`, chain 1)
- UnnamedContract (`0x995831...059157`, chain 1)
- UnnamedContract (`0xa1d079...05322c`, chain 1)
- UnnamedContract (`0xa1e9e7...7f11bf`, chain 1)
- UnnamedContract (`0xa331d8...3f3ae6`, chain 1)
- UnnamedContract (`0xa3d11a...bfb744`, chain 1)
- UnnamedContract (`0xa731c2...d07cc8`, chain 1)
- UnnamedContract (`0xa98bce...2f8f13`, chain 1)
- UnnamedContract (`0xac27df...fbd281`, chain 1)
- UnnamedContract (`0xad9013...89a633`, chain 1)
- UnnamedContract (`0xae563e...758ea2`, chain 1)
- UnnamedContract (`0xb2007b...d7f007`, chain 1)
- UnnamedContract (`0xb21a27...815c8a`, chain 1)
- UnnamedContract (`0xb496ff...3f6790`, chain 1)
- UnnamedContract (`0xb96524...ba40e9`, chain 1)
- UnnamedContract (`0xb9d01c...20ab14`, chain 1)
- UnnamedContract (`0xba3af3...61e033`, chain 1)
- UnnamedContract (`0xbdbadc...7d6ff1`, chain 1)
- UnnamedContract (`0xc00ff7...e5426d`, chain 1)
- UnnamedContract (`0xc05ff9...583b79`, chain 1)
- UnnamedContract (`0xc12846...3d3abd`, chain 1)
- UnnamedContract (`0xc128a9...093f25`, chain 1)
- UnnamedContract (`0xc57b4b...37bf2f`, chain 1)
- UnnamedContract (`0xca734a...12a97f`, chain 1)
- UnnamedContract (`0xcb3fe6...01c9e7`, chain 1)
- UnnamedContract (`0xcc8d54...2e7cda`, chain 1)
- UnnamedContract (`0xd22eec...85d484`, chain 1)
- UnnamedContract (`0xd53f5d...102d83`, chain 1)
- UnnamedContract (`0xd5584b...dcce68`, chain 1)
- UnnamedContract (`0xdaa273...9b16d2`, chain 1)
- UnnamedContract (`0xdada7b...c92d49`, chain 1)
- UnnamedContract (`0xdbb8ad...0d4fb0`, chain 1)
- UnnamedContract (`0xdeba7d...ec0ece`, chain 1)
- UnnamedContract (`0xe0f34c...6509af`, chain 1)
- UnnamedContract (`0xe42c2e...2f1197`, chain 1)
- UnnamedContract (`0xe5f960...31c548`, chain 1)
- UnnamedContract (`0xe912c7...50eb5f`, chain 1)
- UnnamedContract (`0xe9b0a3...f966d0`, chain 1)
- UnnamedContract (`0xed5ba5...075fe2`, chain 1)
- UnnamedContract (`0xf1665e...cc5b65`, chain 1)
- UnnamedContract (`0xf5decd...43a9ea`, chain 1)
- UnnamedContract (`0xfa80c1...dccba5`, chain 1)
- UnnamedContract (`0xfc2986...a95832`, chain 1)
- UnnamedContract (`0xfeb1a2...ebdd52`, chain 1)
- AggregatorRouter (`0x309abc...138657`, chain 1)
- ArbitrumRootGauge (`0x633794...ee9ffc`, chain 1)
- ArbitrumRootGaugeFactory (`0x1c9932...5e50e7`, chain 1)
- AuthorizerWithAdaptorValidation (`0x6048a8...2391e7`, chain 1)
- AvalancheRootGauge (`0x3eae4a...a72a13`, chain 1)
- AvalancheRootGaugeFactory (`0x10f3e7...eab5ac`, chain 1)
- BalancerTokenAdmin (`0xf302f9...77414f`, chain 1)
- BALTokenHolderFactory (`0xb848f5...4f2158`, chain 1)
- BaseRootGauge (`0x9a4d64...bfe6cb`, chain 1)
- BaseRootGaugeFactory (`0x8e3b64...f31e4d`, chain 1)
- BatchRouter (`0x136f1e...1778d1`, chain 1)
- Boost Delegation V2.1 (`0x2cf8e1...736c59`, chain 1)
- ConstantPriceFeed (`0x99364f...c52c58`, chain 1)
- EclpLPOracle (`0xed9031...9928a2`, chain 1)
- FixedPriceLBPool (`0x179c68...cec5d3`, chain 1)
- GaugeAdder (`0x2ffb7b...98f26a`, chain 1)
- GaugeAdderMigrationCoordinator (`0x1b57f6...2daea7`, chain 1)
- GaugeWorkingBalanceHelper (`0xdab258...6ba57c`, chain 1)
- GnosisRootGauge (`0x05277c...fd4518`, chain 1)
- GyroECLPPool (`0xc27d49...03cc4c`, chain 1)
- L2GaugeCheckpointer (`0x343688...2e9ccc`, chain 1)
- LBPool (`0x095460...121b8c`, chain 1)
- LiquidityGaugeFactory (`0x4e7bbd...5412ec`, chain 1)
- MevCaptureHook (`0x1bca39...716b1c`, chain 1)
- OmniVotingEscrow (`0xe241c6...ea05ad`, chain 1)
- OptimismRootGauge (`0xbc230b...dfadde`, chain 1)
- OptimismRootGaugeFactory (`0x3083a1...73c5c8`, chain 1)
- OptimisticRootGauge (`0x37302b...cc6498`, chain 1)
- OptimisticRootGaugeFactory (`0x18cc3c...94f71b`, chain 1)
- PolygonRootGauge (`0xe53d8f...44495e`, chain 1)
- PolygonRootGaugeFactory (`0x4c4287...b64e34`, chain 1)
- PolygonZkEVMRootGauge (`0x45bf48...088602`, chain 1)
- PolygonZkEVMRootGaugeFactory (`0x9bf951...3447de`, chain 1)
- ProtocolFeeController (`0x212f88...7c2879`, chain 1)
- ProtocolFeeHelper (`0x5a962c...711a74`, chain 1)
- ReClammPool (`0x000ab3...fe62a6`, chain 1)
- SingleRecipientGauge (`0x5d3d2d...8c4480`, chain 1)
- SingleRecipientGaugeFactory (`0x4fb471...66c968`, chain 1)
- StableLPOracle (`0x4dcc26...0aa8dc`, chain 1)
- StablePool (`0x0a8afe...85dd5d`, chain 1)
- StakelessGaugeCheckpointer (`0x0c8f71...5dbb98`, chain 1)
- TimelockAuthorizer (`0x9e3cd0...12ae05`, chain 1)
- TribeBALMinterCoordinator (`0x34ac9f...0cc69b`, chain 1)
- VaultAdmin (`0x0e8b07...28c9a9`, chain 1)
- VaultExtension (`0xba1333...319ba9`, chain 1)
- veBALGaugeFixCoordinator (`0xee47ef...26ddf3`, chain 1)
- veBALL2GaugeSetupCoordinator (`0xd13afc...ef37ca`, chain 1)
- VotingEscrowDelegationProxy (`0x6f5a2e...1eb8a0`, chain 1)
- Vyper_contract (`0x2e9606...8a2647`, chain 1)
- WeightedLPOracle (`0x099179...e7e8ec`, chain 1)
- WeightedLPOracleFactory (`0x05503b...982d2b`, chain 1)
- WeightedPool (`0x527d0e...fb3568`, chain 1)
- WeightedPool2TokensFactory (`0xa5bf2d...c74ee0`, chain 1)
- WeightedPoolFactory (`0x201efd...2a86cc`, chain 1)
- WrappedBalancerPoolToken (`0x27ad56...c3121c`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 61; live-surface rows included: 61 (61 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 145/145 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 17/61 (27.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 145 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 114 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 145 of 259 unique; 114 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 17/151
- Verified + Unaudited implementations: 134
- Verified by bytecode match: 0
- Unverified implementations: 108
- Unique implementations: 259
- Raw deployments: 260
- Audits discovered: 32 (32 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 17
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/balancer/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 4 fresh, 9 aging, 13 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 17 match-unverified
- Tier 1 coverage: 27.9% (Certora, OpenZeppelin, Spearbit, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Certora | Tier 1 | 15 | 9.9% | 2026-01 |
| Trail of Bits | Tier 1 | 7 | 4.6% | 2024-12 |
| Spearbit | Tier 1 | 5 | 3.3% | 2024-12 |
| OpenZeppelin | Tier 1 | 2 | 1.3% | 2021-10 |
| ABDK | Tier 2 | 1 | 0.7% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BatchRouter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-380276 | `0x136f1e...1778d1` | ✅ Audited |
| EclpLPOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380267 | `0xed9031...9928a2` | ✅ Audited |
| Gyro2CLPPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380181 | `0x4ffecd...f5fa80` | ✅ Audited |
| GyroECLPPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380244 | `0xc27d49...03cc4c` | ✅ Audited |
| GyroECLPPoolFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380135 | `0x04d584...6b69d1` | ✅ Audited |
| LBPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380138 | `0x095460...121b8c` | ✅ Audited |
| LBPoolFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380134 | `0x02916d...bddcaf` | ✅ Audited |
| ProtocolFeeController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380152 | `0x212f88...7c2879` | ✅ Audited |
| StableLPOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380176 | `0x4dcc26...0aa8dc` | ✅ Audited |
| StablePool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380140 | `0x0a8afe...85dd5d` | ✅ Audited |
| StableSurgePoolFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380145 | `0x187a05...baa6ac` | ✅ Audited |
| TimelockAuthorizer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380220 | `0x9e3cd0...12ae05` | ✅ Audited |
| VaultAdmin | unknown | project_anchor | own_supporting | 1 | ethereum | unit-380277 | 2 deployments: ethereum `0x0e8b07...28c9a9`; ethereum `0x35ffb7...539864` | ✅ Audited |
| VaultExtension | unknown | project_anchor | own_supporting | 1 | ethereum | unit-380275 | `0xba1333...319ba9` | ✅ Audited |
| WeightedLPOracleFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380137 | `0x05503b...982d2b` | ✅ Audited |
| WeightedPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380182 | `0x527d0e...fb3568` | ✅ Audited |
| WeightedPoolFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380151 | `0x201efd...2a86cc` | ✅ Audited |

### ⚠️ Verified + Unaudited (134)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggregatorBatchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x136f1e...1778d1` | ⚠️ Unaudited |
| AggregatorRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380163 | `0x309abc...138657` | ⚠️ Unaudited |
| ArbitrumRootGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380191 | `0x633794...ee9ffc` | ⚠️ Unaudited |
| ArbitrumRootGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380149 | `0x1c9932...5e50e7` | ⚠️ Unaudited |
| Authorizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9da189...7e017c` | ⚠️ Unaudited |
| AuthorizerAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f3e0c...57c54e` | ⚠️ Unaudited |
| AuthorizerAdaptorEntrypoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36cac2...b5a17c` | ⚠️ Unaudited |
| AuthorizerWithAdaptorValidation | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380190 | `0x6048a8...2391e7` | ⚠️ Unaudited |
| AvalancheRootGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380171 | `0x3eae4a...a72a13` | ⚠️ Unaudited |
| AvalancheRootGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380143 | `0x10f3e7...eab5ac` | ⚠️ Unaudited |
| BalancerContractRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86e67e...e7bc2b` | ⚠️ Unaudited |
| BalancerContractRegistryInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91f178...3192c7` | ⚠️ Unaudited |
| BalancerFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1780e8...d943ab` | ⚠️ Unaudited |
| BalancerGaugeRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a1d08...45586a` | ⚠️ Unaudited |
| BalancerGovernanceToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba1000...424e3d` | ⚠️ Unaudited |
| BalancerHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5addcc...87864e` | ⚠️ Unaudited |
| BalancerMinter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380154 | `0x239e55...638a2b` | ⚠️ Unaudited |
| BalancerPoolDataQueries | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf24917...b9fd39` | ⚠️ Unaudited |
| BalancerQueries | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe39b5e...f549d5` | ⚠️ Unaudited |
| BalancerTokenAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380270 | `0xf302f9...77414f` | ⚠️ Unaudited |
| BALTokenHolderFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380234 | `0xb848f5...4f2158` | ⚠️ Unaudited |
| BaseRootGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380218 | `0x9a4d64...bfe6cb` | ⚠️ Unaudited |
| BaseRootGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380208 | `0x8e3b64...f31e4d` | ⚠️ Unaudited |
| BatchCheckpointer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf24917...b9fd39` | ⚠️ Unaudited |
| BatchRelayerLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1554ee...21aaf2` | ⚠️ Unaudited |
| BCoWFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03362f...e4588e` | ⚠️ Unaudited |
| BCoWHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05545c...0d120b` | ⚠️ Unaudited |
| BFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad0447...59b667` | ⚠️ Unaudited |
| Boost Delegation V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe39b5e...f549d5` | ⚠️ Unaudited |
| Boost Delegation V2.1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380158 | `0x2cf8e1...736c59` | ⚠️ Unaudited |
| BridgeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c2fe...14d0d4` | ⚠️ Unaudited |
| BufferRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22625e...86b017` | ⚠️ Unaudited |
| Child Liquidity Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4132f7...e6e6c8` | ⚠️ Unaudited |
| ChildChainGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf23b4d...264843` | ⚠️ Unaudited |
| ChildChainGaugeRewardHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0dabe...9eb66f` | ⚠️ Unaudited |
| ChildChainGaugeTokenAdder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfd976...d66e3c` | ⚠️ Unaudited |
| ChildChainLiquidityGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb08e16...6cbfd2` | ⚠️ Unaudited |
| CircuitBreakerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4967b3...b50527` | ⚠️ Unaudited |
| ClaimSignatureRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07b1a0...babc55` | ⚠️ Unaudited |
| ComposableStablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c9932...5e50e7` | ⚠️ Unaudited |
| CompositeLiquidityRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c8f71...5dbb98` | ⚠️ Unaudited |
| ConstantPriceFeed | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380216 | `0x99364f...c52c58` | ⚠️ Unaudited |
| CowSwapFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e800d...92b106` | ⚠️ Unaudited |
| DirectRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x00abf7...25db37` | ⚠️ Unaudited |
| DistributionScheduler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b676...5ae066` | ⚠️ Unaudited |
| DoubleEntrypointFixRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e5698...9db97c` | ⚠️ Unaudited |
| EclpLPOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1780e8...d943ab` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xe99516...cb8dbb` | ⚠️ Unaudited |
| ERC4626CowSwapFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b1120...e63911` | ⚠️ Unaudited |
| ERC4626RateProviderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x138d9e...dd9850` | ⚠️ Unaudited |
| ExternalWeightedMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db89f...59cf75` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x267439...5a61c9` | ⚠️ Unaudited |
| FixedPriceLBPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380144 | `0x179c68...cec5d3` | ⚠️ Unaudited |
| FixedPriceLBPoolFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380265 | `0xeb1aa9...be8758` | ⚠️ Unaudited |
| GaugeAdder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380160 | `0x2ffb7b...98f26a` | ⚠️ Unaudited |
| GaugeAdderMigrationCoordinator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380147 | `0x1b57f6...2daea7` | ⚠️ Unaudited |
| GaugeControllerQuerier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5698...9db97c` | ⚠️ Unaudited |
| GaugeWorkingBalanceHelper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380254 | `0xdab258...6ba57c` | ⚠️ Unaudited |
| GnosisRootGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380136 | `0x05277c...fd4518` | ⚠️ Unaudited |
| GnosisRootGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1de9d6...a11452` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x312600...70d431` | ⚠️ Unaudited |
| L2BalancerPseudoMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85a80a...853062` | ⚠️ Unaudited |
| L2GaugeCheckpointer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380165 | `0x343688...2e9ccc` | ⚠️ Unaudited |
| LBPMigrationRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b8168...dd2ab0` | ⚠️ Unaudited |
| LiquidityBootstrappingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x751a0b...1c87de` | ⚠️ Unaudited |
| LiquidityGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380177 | `0x4e7bbd...5412ec` | ⚠️ Unaudited |
| ManagedPoolAddRemoveTokenLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3be0e5...a194f2` | ⚠️ Unaudited |
| ManagedPoolAmmLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3061b0...e4d4c1` | ⚠️ Unaudited |
| ManagedPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e06f5...eb91f6` | ⚠️ Unaudited |
| ManualRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x470c90...893d77` | ⚠️ Unaudited |
| MerkleOrchard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x751a0b...1c87de` | ⚠️ Unaudited |
| MevCaptureHook | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380148 | `0x1bca39...716b1c` | ⚠️ Unaudited |
| MockStaticAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16ba92...35c1dc` | ⚠️ Unaudited |
| MockVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81cfae...eeb310` | ⚠️ Unaudited |
| NoProtocolFeeLiquidityBootstrappingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f3e0c...57c54e` | ⚠️ Unaudited |
| OmniVotingEscrow | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380259 | `0xe241c6...ea05ad` | ⚠️ Unaudited |
| OmniVotingEscrowAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x681714...ff4bc0` | ⚠️ Unaudited |
| OptimismRootGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380238 | `0xbc230b...dfadde` | ⚠️ Unaudited |
| OptimismRootGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380162 | `0x3083a1...73c5c8` | ⚠️ Unaudited |
| OptimisticRootGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380168 | `0x37302b...cc6498` | ⚠️ Unaudited |
| OptimisticRootGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380146 | `0x18cc3c...94f71b` | ⚠️ Unaudited |
| PolygonRootGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380261 | `0xe53d8f...44495e` | ⚠️ Unaudited |
| PolygonRootGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380175 | `0x4c4287...b64e34` | ⚠️ Unaudited |
| PolygonZkEVMRootGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380173 | `0x45bf48...088602` | ⚠️ Unaudited |
| PolygonZkEVMRootGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380219 | `0x9bf951...3447de` | ⚠️ Unaudited |
| PoolPauseHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x30ff09...308d7e` | ⚠️ Unaudited |
| PoolRecoveryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b300c...c133db` | ⚠️ Unaudited |
| PoolSwapFeeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x254f3a...5f83b0` | ⚠️ Unaudited |
| ProtocolFeeControllerMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75635f...d2888d` | ⚠️ Unaudited |
| ProtocolFeeHelper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380184 | `0x5a962c...711a74` | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ef4c5...bd23c5` | ⚠️ Unaudited |
| ProtocolFeeSweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b42ec...81c1e9` | ⚠️ Unaudited |
| ProtocolFeesWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ef4c5...bd23c5` | ⚠️ Unaudited |
| ProtocolIdRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ccac...a1bb68` | ⚠️ Unaudited |
| PullTokenWrapperAllow | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x16814b...fd5620` | ⚠️ Unaudited |
| RateProviderCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x216039...de2727` | ⚠️ Unaudited |
| ReClammPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380133 | `0x000ab3...fe62a6` | ⚠️ Unaudited |
| ReClammPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1cd776...b1d608` | ⚠️ Unaudited |
| ReClammPoolHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04e66e...24f2b6` | ⚠️ Unaudited |
| RecoveryModeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x782710...a7d809` | ⚠️ Unaudited |
| RefundLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x243347...ed53fd` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4bdcc2...0eada7` | ⚠️ Unaudited |
| SavingsUSDSRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x84394f...690267` | ⚠️ Unaudited |
| SingleRecipientGauge | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380187 | `0x5d3d2d...8c4480` | ⚠️ Unaudited |
| SingleRecipientGaugeFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380180 | `0x4fb471...66c968` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x786929...1c826c` | ⚠️ Unaudited |
| SmartWalletCheckerCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26575a...5624ea` | ⚠️ Unaudited |
| SNXRecoveryCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a1ba...d0cb31` | ⚠️ Unaudited |
| StableLPOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x254f3a...5f83b0` | ⚠️ Unaudited |
| StablePhantomPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08e16...6cbfd2` | ⚠️ Unaudited |
| StablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16b50f...7ae5db` | ⚠️ Unaudited |
| StableSurgeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86705e...83d122` | ⚠️ Unaudited |
| StakelessGaugeCheckpointer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380141 | `0x0c8f71...5dbb98` | ⚠️ Unaudited |
| TestBalancerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x397bc4...69a1c7` | ⚠️ Unaudited |
| TimelockAuthorizerMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657dee...f05e8d` | ⚠️ Unaudited |
| TimelockAuthorizerTransitionMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76578e...cda3a6` | ⚠️ Unaudited |
| TkMrsR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0a32...382018` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x71e9fc...95e3b9` | ⚠️ Unaudited |
| TribeBALMinterCoordinator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380166 | `0x34ac9f...0cc69b` | ⚠️ Unaudited |
| UnbalancedAddViaSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6623d1...6b6981` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba1222...6bf2c8` | ⚠️ Unaudited |
| VaultExplorer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f08ee...347b7c` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9805dc...764102` | ⚠️ Unaudited |
| veBALDeploymentCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb1516...7076c3` | ⚠️ Unaudited |
| veBALGaugeFixCoordinator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380268 | `0xee47ef...26ddf3` | ⚠️ Unaudited |
| veBALL2GaugeSetupCoordinator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380249 | `0xd13afc...ef37ca` | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380195 | `0x6f5a2e...1eb8a0` | ⚠️ Unaudited |
| VotingEscrowRemapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b5da7...399e2e` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380159 | `0x2e9606...8a2647` | ⚠️ Unaudited |
| WeightedLPOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380139 | `0x099179...e7e8ec` | ⚠️ Unaudited |
| WeightedPool2TokensFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380225 | `0xa5bf2d...c74ee0` | ⚠️ Unaudited |
| WrappedBalancerPoolToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380155 | `0x27ad56...c3121c` | ⚠️ Unaudited |
| WrappedBalancerPoolTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x201efd...2a86cc` | ⚠️ Unaudited |
| WstETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d07d...fee768` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (108)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380142 | `0x0f08ee...347b7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380150 | `0x1cd776...b1d608` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380153 | `0x22625e...86b017` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380156 | `0x2a18b3...6605e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380157 | `0x2bbcbb...dfda6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380161 | `0x301ede...47154b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380164 | `0x332694...f81d99` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380167 | `0x355bd3...53ad95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380169 | `0x3b8ca5...b25bd0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380170 | `0x3ccd78...3ab7ff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380172 | `0x3f1706...38dc10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380174 | `0x4b4b45...2d85c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380178 | `0x4efcd8...0f3228` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380179 | `0x4eff2d...ff4cb5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380183 | `0x5939ab...841fab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380185 | `0x5c6fb4...bd9fdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380186 | `0x5d06d6...9859bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380188 | `0x5dbad7...2113cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380189 | `0x5efbb1...1e91a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380192 | `0x664286...95069a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380193 | `0x67f8df...6ecb0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380194 | `0x6a5127...582b39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380196 | `0x715c77...370bdc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380197 | `0x74a1b9...8d2086` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380198 | `0x765ce1...faa93c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380199 | `0x774cb6...17eb94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380200 | `0x816e90...eeb308` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380201 | `0x83bf39...f56129` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380202 | `0x83e443...668cb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380203 | `0x866d4b...940a36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380204 | `0x8902f9...dcecc6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380205 | `0x89ef89...d2891c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380206 | `0x8d75fa...5dc5cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380207 | `0x8df979...fb5387` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380209 | `0x8f42ad...9add75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380210 | `0x90bd26...c93694` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380211 | `0x90e065...827f2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380212 | `0x9179c0...0e7b45` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380213 | `0x94f68b...72d227` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380214 | `0x95bc5c...46dcbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380215 | `0x96484f...f13b6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380217 | `0x995831...059157` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380221 | `0xa1d079...05322c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380222 | `0xa1e9e7...7f11bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380223 | `0xa331d8...3f3ae6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380224 | `0xa3d11a...bfb744` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380226 | `0xa731c2...d07cc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380227 | `0xa98bce...2f8f13` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380228 | `0xac27df...fbd281` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380229 | `0xad9013...89a633` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380230 | `0xae563e...758ea2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380231 | `0xb2007b...d7f007` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380232 | `0xb21a27...815c8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380233 | `0xb496ff...3f6790` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380235 | `0xb96524...ba40e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380236 | `0xb9d01c...20ab14` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380237 | `0xba3af3...61e033` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380239 | `0xbdbadc...7d6ff1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380240 | `0xc00ff7...e5426d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380241 | `0xc05ff9...583b79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380242 | `0xc12846...3d3abd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380243 | `0xc128a9...093f25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380245 | `0xc57b4b...37bf2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380246 | `0xca734a...12a97f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380247 | `0xcb3fe6...01c9e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380248 | `0xcc8d54...2e7cda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380250 | `0xd22eec...85d484` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380251 | `0xd53f5d...102d83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380252 | `0xd5584b...dcce68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380253 | `0xdaa273...9b16d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380255 | `0xdada7b...c92d49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380256 | `0xdbb8ad...0d4fb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380257 | `0xdeba7d...ec0ece` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380258 | `0xe0f34c...6509af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380260 | `0xe42c2e...2f1197` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380262 | `0xe5f960...31c548` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380263 | `0xe912c7...50eb5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380264 | `0xe9b0a3...f966d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380266 | `0xed5ba5...075fe2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380269 | `0xf1665e...cc5b65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380271 | `0xf5decd...43a9ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380272 | `0xfa80c1...dccba5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380273 | `0xfc2986...a95832` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380274 | `0xfeb1a2...ebdd52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3083a1...73c5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x866d4b...940a36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbc230b...dfadde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xca734a...12a97f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x05277c...fd4518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2a18b3...6605e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x45bf48...088602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c4287...b64e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9bf951...3447de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa98bce...2f8f13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe53d8f...44495e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfeb1a2...ebdd52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x18cc3c...94f71b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x37302b...cc6498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-zkevm | n/a | `0x45bf48...088602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-zkevm | n/a | `0x9bf951...3447de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e3b64...f31e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9a4d64...bfe6cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x633794...ee9ffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x715c77...370bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad9013...89a633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10f3e7...eab5ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3eae4a...a72a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc57b4b...37bf2f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [test-report.md (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/test-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2022-05-27.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/abdk/2022-05-27.pdf) | ABDK | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 14 | high |
| [2021-04-22.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/certora/2021-04-22.pdf) | Certora | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2022-09-23.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/certora/2022-09-23.pdf) | Certora | Audit | 2022-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [2023-05-08.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/certora/2023-05-08.pdf) | Certora | Audit | 2023-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [2021-03-15.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/openzeppelin/2021-03-15.pdf) | OpenZeppelin | Audit | 2021-03 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 20 | high |
| [2021-10-09.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/openzeppelin/2021-10-09.pdf) | OpenZeppelin | Audit | 2021-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [2021-10-08.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2021-10-08.pdf) | Trail of Bits | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2022-05-27.pdf](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2022-05-27.pdf) | Trail of Bits | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2022-09-02.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2022-09-02.pdf) | Trail of Bits | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [2022-10-25.pdf (also discovered via alternate URL)](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/trail-of-bits/2022-10-25.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [WONTFIX.md](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/WONTFIX.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024-12-17.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/cantina/2024-12-17.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | matched | 3 | 2 | 0 | 5 | medium |
| [2024-12-31.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/cantina/2024-12-31.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [2024-09-04.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2024-09-04.pdf) | Certora | Audit | 2024-09 | aging | Direct | contract_name | matched | 3 | 2 | 0 | 15 | high |
| [2024-12-24.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2024-12-24.pdf) | Certora | Audit | 2024-12 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 5 | high |
| [2025-01-30.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-01-30.pdf) | Certora | Audit | 2025-01 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [2025-02-07.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-02-07.pdf) | Certora | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-02-17.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-02-17.pdf) | Certora | Audit | 2025-02 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [2025-08-19.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-08-19.pdf) | Certora | Audit | 2025-08 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 4 | high |
| [2025-09-08.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-09-08.pdf) | Certora | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-09-10.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2025-09-10.pdf) | Certora | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [2026-01-26.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/certora/2026-01-26.pdf) | Certora | Audit | 2026-01 | fresh | Direct | contract_name | matched | 5 | 1 | 0 | 12 | high |
| [2024-10-04.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/spearbit/2024-10-04.pdf) | Spearbit | Audit | 2024-10 | aging | Direct | contract_name | matched | 4 | 2 | 0 | 10 | high |
| [2024-12-11.pdf](https://github.com/balancer/balancer-v3-monorepo/blob/main/audits/trail-of-bits/2024-12-11.pdf) | Trail of Bits | Audit | 2024-12 | aging | Direct | contract_name | matched | 4 | 3 | 0 | 9 | high |
| [2022-05-27.pdf](https://github.com/balancer-labs/balancer-core-v2/blob/master/audits/abdk/2022-05-27.pdf) | ABDK | Audit | 2022-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 14 | high |
| [2021-04-02.pdf (also discovered via alternate URL)](https://github.com/balancer-labs/balancer-core-v2/blob/master/audits/trail-of-bits/2021-04-02.pdf) | Trail of Bits | Audit | 2021-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 24 | high |
| [2022-05-27.pdf](https://github.com/balancer-labs/balancer-core-v2/blob/master/audits/trail-of-bits/2022-05-27.pdf) | Trail of Bits | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/balancer/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [Security](https://docs-v2.balancer.fi/reference/contracts/security.html) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [README.md](https://github.com/balancer/balancer-v2-monorepo/blob/master/audits/README.md) | unknown | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Risks](https://docs-v2.balancer.fi/reference/vote-escrow-launchpad/8_Risks.html) | Certora | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16793] test-report.md — no match: The provided text is a test output log, not an audit report. It contains no scope section, no audit date, and no explicit listing of contracts in scope. The contract names mentioned are only in test descriptions, not as audited targets.
- [16794] 2022-05-27.pdf — matched: 15 files explicitly listed in scope section of the audit report.
- [16795] 2021-04-22.pdf — no match: Only the Vault contract is explicitly stated as in scope. Other contracts (e.g., ProtocolFeesCollector, PoolRegistry, BalancerPoolToken, InternalBalance, Fees, VaultAuthorization, Authorizer) are mentioned but not listed as in scope.
- [16796] 2022-09-23.pdf — matched: Scope explicitly lists ComposableStablePool.sol, StablePool.sol, WordCodec.sol. Audit date inferred from 'June - September 2022' using end of September.
- [16797] 2023-05-08.pdf — matched: Scope explicitly lists two contracts: TimelockAuthorizer.sol and TimelockAuthorizerManagement.sol. No date found in the report text.
- [16798] 2021-03-15.pdf — matched: Audit report for Balancer protocol. Scope section states 'smart contracts in the contracts directory' at commit 1cb36eb56a6b7dbd70bfa3dc16b53357b43b9d5a. Date from header 'March 2021'.
- [16799] 2021-10-09.pdf — matched: Three contracts explicitly listed in scope section.
- [16801] 2021-10-08.pdf — no match: Extracted from the report title page and executive summary. The report covers LinearPool and StablePhantomPool contracts, with additional contracts mentioned in findings.
- [16802] 2022-05-27.pdf — no match: The report explicitly lists the two contracts in the Project Targets and Project Coverage sections. The audit date is from the cover page: 'June 23, 2022'.
- [16803] 2022-09-02.pdf — no match: Extracted contracts from scope section, project targets, and project coverage. Audit date from cover page.
- [16804] 2022-10-25.pdf — no match: Extracted contract names from Project Coverage section (pages 8-9) and Project Targets section (page 7). Audit date from cover page and final delivery date.
- [16805] WONTFIX.md — no match: The provided text is a 'Known issues' section from an audit report, not the full report. It does not contain a scope section or list of audited contracts.
- [16807] 2024-12-17.pdf — matched: No explicit scope section found; contract names extracted from findings and file references. Date from cover page.
- [16808] 2024-12-31.pdf — no match: No explicit scope section; contracts inferred from finding contexts. Audit date from cover page.
- [16809] 2024-09-04.pdf — matched: All contracts in the balancer-v3-monorepo are in scope. Extracted contract names from file paths and findings. Audit date from project summary: work from August 6 to September 19, 2024.
- [16810] 2024-12-24.pdf — matched: All contracts listed in scope section of the report.
- [16811] 2025-01-30.pdf — matched: Three contracts in scope from Balancer V3 Stablepool Surge hook audit.
- [16812] 2025-02-07.pdf — no match: Only one contract in scope: MevTaxHook. Audit date is the end date of the engagement (7 Feb 2025).
- [16813] 2025-02-17.pdf — matched: Scope section explicitly lists four contracts in scope. Audit date is end date of engagement (17 February 2025).
- [16814] 2025-08-19.pdf — matched: Scope section explicitly lists 6 contracts. Audit date range 11 Aug to 19 Aug 2025, end date used.
- [16815] 2025-09-08.pdf — no match: Only one contract in scope: CompositeLiquidityRouter. Audit date is the end date of the engagement (September 4 to September 8, 2025).
- [16816] 2025-09-10.pdf — matched: Only one contract in scope: EclpLPOracle. Audit date inferred from work period September 9-10, 2025.
- [16817] 2026-01-26.pdf — matched: Audit report covers Balancer V3 contracts from balancer-v3-monorepo. Scope includes Vault, VaultAdmin, VaultCommon, VaultStorage, WeightedPool, WeightedMath, StablePool, StableMath, Gyro2CLPPool, Gyro2CLPMath, GyroECLPPool, GyroECLPMath, Router, CowPool, SurgePool, LBP, SeedlessLBP. Audit date is end of January 2026 (month and year only).
- [16818] 2024-10-04.pdf — matched: Extracted contract names from findings context and file paths. Audit date from report cover page.
- [16819] 2024-12-11.pdf — matched: Extracted contract names from Project Targets section and detailed findings. Audit date from cover page.
- [16821] 2022-05-27.pdf — matched: All 15 files listed in the scope section of the audit report.
- [16827] 2021-04-02.pdf — matched: Extracted from the executive summary and coverage sections. The audit date is April 5, 2021, as stated on the cover page.
- [16829] 2022-05-27.pdf — no match: The report explicitly lists the two contracts in scope in the Project Coverage section. The audit date is the final report delivery date (June 23, 2022).
- [16832] Active Bug Bounty Program — no match: The document is a bug bounty program description, not an audit report. It mentions Balancer V3 and V2 smart contracts but does not list specific contract names or file paths. No audit date is provided.
- [16833] Security — no match: Extracted contract names from the audit scope table. No single audit date found; multiple dates per audit.
- [16834] README.md — no match: Extracted contract names from the scope table in the audit report index. No single audit date as this is an index of multiple audits.
- [16835] Risks — no match: The provided text is a documentation page about risks and deployment addresses for Balancer contracts, not an audit report. No audit scope, contract names, or audit date were found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2022-05-27.pdf | IBasicAuthorizer | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | TimelockAuthorizer | own contract | TimelockAuthorizer (selected) `0x9e3cd0...12ae05` — deployed 2022-11-30 22:59:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-05-27.pdf | TimelockAuthorizerMigrator | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | TimelockExecutor | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | BalancerErrors | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IAuthentication | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | InputHelpers | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | ISignaturesValidator | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | ITemporarilyPausable | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IAuthorizer | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IFlashLoanRecipient | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IProtocolFeesCollector | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | Address | unmatched — not counted | — | listed in scope | no |
| 2021-04-22.pdf | Vault | unmatched — not counted | — | The scope of our verification was the Vault contract. | no |
| 2022-09-23.pdf | ComposableStablePool | unmatched — not counted | — | listed in scope | no |
| 2022-09-23.pdf | StablePool | own contract | StablePool (selected) `0x0a8afe...85dd5d` — deployed 2025-04-04 22:17:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-09-23.pdf | WordCodec | unmatched — not counted | — | listed in scope | no |
| 2023-05-08.pdf | TimelockAuthorizer | own contract | TimelockAuthorizer (selected) `0x9e3cd0...12ae05` — deployed 2022-11-30 22:59:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-08.pdf | TimelockAuthorizerManagement | unmatched — not counted | — | listed in scope | no |
| 2021-03-15.pdf | Vault | unmatched — not counted | — | mentioned in scope and throughout report | no |
| 2021-03-15.pdf | Authorizer | unmatched — not counted | — | mentioned in scope and findings | no |
| 2021-03-15.pdf | Authorization | unmatched — not counted | — | finding L04 | no |
| 2021-03-15.pdf | StableMath | unmatched — not counted | — | finding H01 | no |
| 2021-03-15.pdf | PoolRegistry | unmatched — not counted | — | finding M01 | no |
| 2021-03-15.pdf | BalancerPoolToken | unmatched — not counted | — | finding L02 | no |
| 2021-03-15.pdf | FlashLoanProvider | unmatched — not counted | — | note N01 | no |
| 2021-03-15.pdf | StablePool | own contract | StablePool (selected) `0x0a8afe...85dd5d` — deployed 2025-04-04 22:17:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2021-03-15.pdf | BaseGeneralPool | unmatched — not counted | — | note N05 | no |
| 2021-03-15.pdf | BasePool | unmatched — not counted | — | note N05 | no |
| 2021-03-15.pdf | WeightedMath | unmatched — not counted | — | note N06 | no |
| 2021-03-15.pdf | WeightedPool | own contract | WeightedPool (selected) `0x527d0e...fb3568` — deployed 2024-12-05 17:37:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2021-03-15.pdf | Math | unmatched — not counted | — | note N06 | no |
| 2021-03-15.pdf | IVault | unmatched — not counted | — | note N07 | no |
| 2021-03-15.pdf | Swaps | unmatched — not counted | — | note N07 | no |
| 2021-03-15.pdf | BalanceAllocation | unmatched — not counted | — | note N07 | no |
| 2021-03-15.pdf | EnumerableMap | unmatched — not counted | — | note N07 | no |
| 2021-03-15.pdf | FixedPoint | unmatched — not counted | — | note N07 | no |
| 2021-03-15.pdf | BasePoolFactory | unmatched — not counted | — | note N08 | no |
| 2021-03-15.pdf | Address | unmatched — not counted | — | note N08 (import) | no |
| 2021-03-15.pdf | EnumerableSet | unmatched — not counted | — | note N08 (import) | no |
| 2021-03-15.pdf | IBasePool | unmatched — not counted | — | note N08 (import) | no |
| 2021-10-09.pdf | MultiRewards | unmatched — not counted | — | listed in scope | no |
| 2021-10-09.pdf | StablePool | own contract | StablePool (selected) `0x0a8afe...85dd5d` — deployed 2025-04-04 22:17:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2021-10-09.pdf | StableMath | unmatched — not counted | — | listed in scope | no |
| 2021-10-08.pdf | LinearPool | unmatched — not counted | — | Listed in scope and findings targets | no |
| 2021-10-08.pdf | StablePhantomPool | unmatched — not counted | — | Listed in scope and findings targets | no |
| 2021-10-08.pdf | LinearMath | unmatched — not counted | — | Listed in findings targets | no |
| 2021-10-08.pdf | BasePool | unmatched — not counted | — | Mentioned as inherited contract in findings | no |
| 2021-10-08.pdf | BasePoolAuthorization | unmatched — not counted | — | Listed in finding target | no |
| 2021-10-08.pdf | PriceRateCache | unmatched — not counted | — | Mentioned in code quality recommendations | no |
| 2022-05-27.pdf | BalancerRelayer | unmatched — not counted | — | Project Coverage section: 'pkg/standalone-utils/contracts/relayer/ contains the multicall proxy, composed of the BalancerRelayer and BaseRelayerLibrary contracts.' | no |
| 2022-05-27.pdf | BaseRelayerLibrary | unmatched — not counted | — | Project Coverage section: 'pkg/standalone-utils/contracts/relayer/ contains the multicall proxy, composed of the BalancerRelayer and BaseRelayerLibrary contracts.' | no |
| 2022-09-02.pdf | ComposableStablePool | unmatched — not counted | — | listed in scope and detailed findings | no |
| 2022-09-02.pdf | StablePoolAmplification | unmatched — not counted | — | listed in project coverage and detailed findings | no |
| 2022-09-02.pdf | ComposableStablePoolRates | unmatched — not counted | — | listed in project coverage and detailed findings | no |
| 2022-09-02.pdf | ComposableStablePoolProtocolFees | unmatched — not counted | — | listed in project coverage and detailed findings | no |
| 2022-09-02.pdf | ComposableStablePoolStorage | unmatched — not counted | — | listed in project coverage and detailed findings | no |
| 2022-09-02.pdf | ComposableStablePoolFactory | unmatched — not counted | — | listed in project coverage | no |
| 2022-09-02.pdf | BasePool | unmatched — not counted | — | listed in detailed findings and project coverage | no |
| 2022-09-02.pdf | BaseGeneralPool | unmatched — not counted | — | listed in project coverage | no |
| 2022-09-02.pdf | ProtocolFeeCache | unmatched — not counted | — | listed in detailed findings | no |
| 2022-09-02.pdf | BasePoolAuthorization | unmatched — not counted | — | listed in appendix C | no |
| 2022-09-02.pdf | RecoveryMode | unmatched — not counted | — | listed in appendix C | no |
| 2022-10-25.pdf | ManagedPool | unmatched — not counted | — | Project Coverage section: 'ManagedPool. This contract implements a weighted token pool with preminted BPT.' | no |
| 2022-10-25.pdf | ManagedPoolSettings | unmatched — not counted | — | Project Coverage section: 'ManagedPoolSettings. This contract, inherited by the ManagedPool, stores the constants...' | no |
| 2022-10-25.pdf | ManagedPoolAumStorageLib | unmatched — not counted | — | Project Coverage section: 'ManagedPoolAumStorageLib. This contract saves the assets under management (AUM) fee percentage...' | no |
| 2022-10-25.pdf | ManagedPoolStorageLib | unmatched — not counted | — | Project Coverage section: 'ManagedPoolStorageLib. This contract controls variables related to weight change parameters...' | no |
| 2022-10-25.pdf | ManagedPoolTokenStorageLib | unmatched — not counted | — | Project Coverage section: 'ManagedPoolTokenStorageLib. This contract implements getters and setters for variables related to token weights...' | no |
| 2022-10-25.pdf | CircuitBreakerLib | unmatched — not counted | — | Project Coverage section: 'CircuitBreakerLib and CircuitBreakerStorageLib. These contracts implement minimum and maximum bounds on BPT prices...' | no |
| 2022-10-25.pdf | CircuitBreakerStorageLib | unmatched — not counted | — | Project Coverage section: 'CircuitBreakerLib and CircuitBreakerStorageLib. These contracts implement minimum and maximum bounds on BPT prices...' | no |
| 2022-10-25.pdf | WeightedJoinsLib | unmatched — not counted | — | Project Coverage section: 'WeightedJoinsLib and WeightedExitsLib. These two contracts wrap WeightedMath helper functions...' | no |
| 2022-10-25.pdf | WeightedExitsLib | unmatched — not counted | — | Project Coverage section: 'WeightedJoinsLib and WeightedExitsLib. These two contracts wrap WeightedMath helper functions...' | no |
| 2024-12-17.pdf | CompositeLiquidityRouter | unmatched — not counted | — | Listed in scope and findings | no |
| 2024-12-17.pdf | Vault | unmatched — not counted | — | Listed in scope and findings | no |
| 2024-12-17.pdf | VaultAdmin | own proxy deployment | VaultAdmin (proxy) (selected) `0x0e8b07...28c9a9` — deployed 2024-12-05 01:27:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-17.pdf | RouterCommon | unmatched — not counted | — | Listed in scope and findings | no |
| 2024-12-17.pdf | BatchRouter | own proxy deployment | BatchRouter (proxy) (selected) `0x136f1e...1778d1` — deployed 2024-12-06 02:15:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-17.pdf | ProtocolFeeController | own contract | ProtocolFeeController (selected) `0x212f88...7c2879` — deployed 2025-03-08 20:55:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-17.pdf | StableMath | unmatched — not counted | — | Listed in scope and findings | no |
| 2024-12-17.pdf | Router | unmatched — not counted | — | Listed in scope and findings | no |
| 2024-12-31.pdf | BasePoolFactory | unmatched — not counted | — | mentioned in finding context | no |
| 2024-12-31.pdf | VaultAuxiliary | unmatched — not counted | — | mentioned in finding context | no |
| 2024-12-31.pdf | BalancerPoolToken | unmatched — not counted | — | mentioned in finding context | no |
| 2024-09-04.pdf | Vault | unmatched — not counted | — | listed in scope and findings | no |
| 2024-09-04.pdf | VaultAdmin | own proxy deployment | VaultAdmin (proxy) (selected) `0x0e8b07...28c9a9` — deployed 2024-12-05 01:27:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-09-04.pdf | VaultExtension | own proxy deployment | VaultExtension (proxy) (selected) `0xba1333...319ba9` — deployed 2024-12-05 01:27:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-09-04.pdf | VaultExplorer | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | RouterCommon | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | Router | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | BasePoolMath | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | WeightedMath | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | FixedPoint | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | VaultCommon | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | VaultStorage | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | PoolConfigLib | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | HooksConfigLib | unmatched — not counted | — | mentioned in findings | no |
| 2024-09-04.pdf | PoolDataLib | unmatched — not counted | — | mentioned in formal verification assumptions | no |
| 2024-09-04.pdf | BalancerPoolToken | unmatched — not counted | — | mentioned in formal verification | no |
| 2024-09-04.pdf | ERC20MultiToken | unmatched — not counted | — | mentioned in formal verification | no |
| 2024-09-04.pdf | ProtocolFeeController | own contract | ProtocolFeeController (selected) `0x212f88...7c2879` — deployed 2025-03-08 20:55:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-09-04.pdf | PoolMock | unmatched — not counted | — | mentioned in formal verification assumptions | no |
| 2024-12-24.pdf | Gyro2CLPPool | own contract | Gyro2CLPPool (selected) `0x4ffecd...f5fa80` — deployed 2025-04-03 17:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-24.pdf | Gyro2CLPPoolFactory | unmatched — not counted | — | listed in scope | no |
| 2024-12-24.pdf | GyroECLPPool | own contract | GyroECLPPool (selected) `0xc27d49...03cc4c` — deployed 2026-01-30 22:31:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-24.pdf | GyroECLPPoolFactory | own contract | GyroECLPPoolFactory (selected) `0x04d584...6b69d1` — deployed 2026-01-30 22:29:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-24.pdf | Gyro2CLPMath | unmatched — not counted | — | listed in scope | no |
| 2024-12-24.pdf | GyroECLPMath | unmatched — not counted | — | listed in scope | no |
| 2024-12-24.pdf | GyroPoolMath | unmatched — not counted | — | listed in scope | no |
| 2024-12-24.pdf | SignedFixedPoint | unmatched — not counted | — | listed in scope | no |
| 2025-01-30.pdf | StableSurgeHook | unmatched — not counted | — | listed in scope | no |
| 2025-01-30.pdf | StableSurgePoolFactory | own contract | StableSurgePoolFactory (selected) `0x187a05...baa6ac` — deployed 2026-01-17 00:28:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-30.pdf | StableSurgeMedianMath | unmatched — not counted | — | listed in scope | no |
| 2025-02-07.pdf | MevTaxHook | unmatched — not counted | — | listed in scope | no |
| 2025-02-17.pdf | LBPool | own contract | LBPool (selected) `0x095460...121b8c` — deployed 2025-12-19 23:49:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-02-17.pdf | LBPoolFactory | own contract | LBPoolFactory (selected) `0x02916d...bddcaf` — deployed 2025-07-08 04:11:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-02-17.pdf | LBPoolLib | unmatched — not counted | — | listed in scope | no |
| 2025-02-17.pdf | GradualValueChange | unmatched — not counted | — | listed in scope | no |
| 2025-08-19.pdf | LPOracleBase | unmatched — not counted | — | listed in scope | no |
| 2025-08-19.pdf | LPOracleFactoryBase | unmatched — not counted | — | listed in scope | no |
| 2025-08-19.pdf | StableLPOracle | own contract | StableLPOracle (selected) `0x4dcc26...0aa8dc` — deployed 2026-02-26 17:42:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-08-19.pdf | StableLPOracleFactory | unmatched — not counted | — | listed in scope | no |
| 2025-08-19.pdf | WeightedLPOracleBase | unmatched — not counted | — | listed in scope | no |
| 2025-08-19.pdf | WeightedLPOracleFactory | own contract | WeightedLPOracleFactory (selected) `0x05503b...982d2b` — deployed 2025-08-20 20:43:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-08.pdf | CompositeLiquidityRouter | unmatched — not counted | — | listed in scope | no |
| 2025-09-10.pdf | EclpLPOracle | own contract | EclpLPOracle (selected) `0xed9031...9928a2` — deployed 2026-02-26 17:50:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-26.pdf | Vault | unmatched — not counted | — | listed in scope and test suite review | no |
| 2026-01-26.pdf | VaultAdmin | own proxy deployment | VaultAdmin (proxy) (selected) `0x0e8b07...28c9a9` — deployed 2024-12-05 01:27:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-26.pdf | VaultCommon | unmatched — not counted | — | listed in scope and test suite review | no |
| 2026-01-26.pdf | VaultStorage | unmatched — not counted | — | listed in scope and test suite review | no |
| 2026-01-26.pdf | WeightedPool | own contract | WeightedPool (selected) `0x527d0e...fb3568` — deployed 2024-12-05 17:37:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-26.pdf | WeightedMath | unmatched — not counted | — | listed in scope and test suite review | no |
| 2026-01-26.pdf | StablePool | own contract | StablePool (selected) `0x0a8afe...85dd5d` — deployed 2025-04-04 22:17:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-26.pdf | StableMath | unmatched — not counted | — | listed in scope and test suite review | no |
| 2026-01-26.pdf | Gyro2CLPPool | own contract | Gyro2CLPPool (selected) `0x4ffecd...f5fa80` — deployed 2025-04-03 17:25:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-26.pdf | Gyro2CLPMath | unmatched — not counted | — | listed in scope and test suite review | no |
| 2026-01-26.pdf | GyroECLPPool | own contract | GyroECLPPool (selected) `0xc27d49...03cc4c` — deployed 2026-01-30 22:31:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-26.pdf | GyroECLPMath | unmatched — not counted | — | listed in scope and test suite review | no |
| 2026-01-26.pdf | Router | unmatched — not counted | — | mentioned as in scope in threat model | no |
| 2026-01-26.pdf | CowPool | unmatched — not counted | — | described as other pool type in scope | no |
| 2026-01-26.pdf | SurgePool | unmatched — not counted | — | described as other pool type in scope | no |
| 2026-01-26.pdf | LBP | unmatched — not counted | — | described as other pool type in scope | no |
| 2026-01-26.pdf | SeedlessLBP | unmatched — not counted | — | described as other pool type in scope | no |
| 2024-10-04.pdf | Vault | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | VaultCommon | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | Router | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | RouterCommon | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | BatchRouter | own proxy deployment | BatchRouter (proxy) (selected) `0x136f1e...1778d1` — deployed 2024-12-06 02:15:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-04.pdf | IBatchRouter | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | ProtocolFeeController | own contract | ProtocolFeeController (selected) `0x212f88...7c2879` — deployed 2025-03-08 20:55:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-04.pdf | IProtocolFeeController | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | BasePoolFactory | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | VaultExtension | own proxy deployment | VaultExtension (proxy) (selected) `0xba1333...319ba9` — deployed 2024-12-05 01:27:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-10-04.pdf | IRouterCommon | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | StableMath | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | PoolDataLib | unmatched — not counted | — | mentioned in findings context | no |
| 2024-10-04.pdf | StablePool | own contract | StablePool (selected) `0x0a8afe...85dd5d` — deployed 2025-04-04 22:17:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-11.pdf | Vault | unmatched — not counted | — | listed in scope and detailed findings | no |
| 2024-12-11.pdf | VaultExtension | own proxy deployment | VaultExtension (proxy) (selected) `0xba1333...319ba9` — deployed 2024-12-05 01:27:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-11.pdf | VaultAdmin | own proxy deployment | VaultAdmin (proxy) (selected) `0x0e8b07...28c9a9` — deployed 2024-12-05 01:27:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-11.pdf | ProtocolFeeCollector | unmatched — not counted | — | mentioned in project coverage | no |
| 2024-12-11.pdf | BalancerPoolToken | unmatched — not counted | — | mentioned in project coverage and finding TOB-BALV3-19 | no |
| 2024-12-11.pdf | BasePoolMath | unmatched — not counted | — | mentioned in project coverage | no |
| 2024-12-11.pdf | StableMath | unmatched — not counted | — | mentioned in project coverage | no |
| 2024-12-11.pdf | WeightedMath | unmatched — not counted | — | mentioned in project coverage | no |
| 2024-12-11.pdf | Router | unmatched — not counted | — | mentioned in project coverage and finding TOB-BALV3-20 | no |
| 2024-12-11.pdf | BatchRouter | own proxy deployment | BatchRouter (proxy) (selected) `0x136f1e...1778d1` — deployed 2024-12-06 02:15:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12-11.pdf | RouterCommon | unmatched — not counted | — | mentioned in findings TOB-BALV3-17 and TOB-BALV3-18 | no |
| 2024-12-11.pdf | PoolDataLib | unmatched — not counted | — | mentioned in finding TOB-BALV3-7 | no |
| 2024-12-11.pdf | ProtocolFeeController | own contract | ProtocolFeeController (selected) `0x212f88...7c2879` — deployed 2025-03-08 20:55:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-05-27.pdf | IBasicAuthorizer | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | TimelockAuthorizer | own contract | TimelockAuthorizer (selected) `0x9e3cd0...12ae05` — deployed 2022-11-30 22:59:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-05-27.pdf | TimelockAuthorizerMigrator | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | TimelockExecutor | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | BalancerErrors | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IAuthentication | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | InputHelpers | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | ISignaturesValidator | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | ITemporarilyPausable | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IAuthorizer | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IFlashLoanRecipient | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IProtocolFeesCollector | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| 2022-05-27.pdf | Address | unmatched — not counted | — | listed in scope | no |
| 2021-04-02.pdf | Authorizer | unmatched — not counted | — | mentioned in coverage and findings | no |
| 2021-04-02.pdf | EmergencyPeriod | unmatched — not counted | — | mentioned in coverage and findings | no |
| 2021-04-02.pdf | AssetTransferHandler | unmatched — not counted | — | mentioned in coverage | no |
| 2021-04-02.pdf | FlashLoanProvider | unmatched — not counted | — | mentioned in coverage | no |
| 2021-04-02.pdf | InternalBalance | unmatched — not counted | — | mentioned in coverage and findings | no |
| 2021-04-02.pdf | PoolRegistry | unmatched — not counted | — | mentioned in coverage and findings | no |
| 2021-04-02.pdf | ProtocolFeesCollector | unmatched — not counted | — | mentioned in coverage and findings | no |
| 2021-04-02.pdf | Fees | unmatched — not counted | — | mentioned in coverage | no |
| 2021-04-02.pdf | Swaps | unmatched — not counted | — | mentioned in coverage | no |
| 2021-04-02.pdf | VaultAuthorization | unmatched — not counted | — | mentioned in coverage and findings | no |
| 2021-04-02.pdf | Vault | unmatched — not counted | — | mentioned in coverage and findings | no |
| 2021-04-02.pdf | BasePool | unmatched — not counted | — | mentioned in coverage and findings | no |
| 2021-04-02.pdf | BasePoolFactory | unmatched — not counted | — | mentioned in findings | no |
| 2021-04-02.pdf | StablePool | own contract | StablePool (selected) `0x0a8afe...85dd5d` — deployed 2025-04-04 22:17:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2021-04-02.pdf | WeightedPool | own contract | WeightedPool (selected) `0x527d0e...fb3568` — deployed 2024-12-05 17:37:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2021-04-02.pdf | StableMath | unmatched — not counted | — | mentioned in findings | no |
| 2021-04-02.pdf | WeightedMath | unmatched — not counted | — | mentioned in findings | no |
| 2021-04-02.pdf | BalancerPoolToken | unmatched — not counted | — | mentioned in findings | no |
| 2021-04-02.pdf | StablePoolUserDataHelpers | unmatched — not counted | — | mentioned in code quality recommendations | no |
| 2021-04-02.pdf | WeightedPoolUserDataHelpers | unmatched — not counted | — | mentioned in code quality recommendations | no |
| 2021-04-02.pdf | BalancerHelpers | unmatched — not counted | — | mentioned in coverage | no |
| 2021-04-02.pdf | EnumerableMap | unmatched — not counted | — | mentioned in coverage | no |
| 2021-04-02.pdf | LogExpMath | unmatched — not counted | — | mentioned in coverage | no |
| 2021-04-02.pdf | FixedPoint | unmatched — not counted | — | mentioned in findings | no |
| 2021-04-02.pdf | Authentication | unmatched — not counted | — | mentioned in coverage | no |
| 2021-04-02.pdf | StablePoolFactory | unmatched — not counted | — | mentioned in findings | no |
| 2021-04-02.pdf | WeightedPoolFactory | own contract | WeightedPoolFactory (selected) `0x201efd...2a86cc` — deployed 2024-12-05 17:37:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-05-27.pdf | BalancerRelayer | unmatched — not counted | — | Project Coverage section: 'pkg/standalone-utils/contracts/relayer/ contains the multicall proxy, composed of the BalancerRelayer and BaseRelayerLibrary contracts.' | no |
| 2022-05-27.pdf | BaseRelayerLibrary | unmatched — not counted | — | Project Coverage section: 'pkg/standalone-utils/contracts/relayer/ contains the multicall proxy, composed of the BalancerRelayer and BaseRelayerLibrary contracts.' | no |
| Security | Vault | unmatched — not counted | — | listed in scope table | no |
| Security | Weighted Pool | unmatched — not counted | — | listed in scope table | no |
| Security | Stable Pool | unmatched — not counted | — | listed in scope table | no |
| Security | MultiRewards | unmatched — not counted | — | listed in scope table | no |
| Security | Linear Pool | unmatched — not counted | — | listed in scope table | no |
| Security | Stable Phantom Pool | unmatched — not counted | — | listed in scope table | no |
| Security | Timelock Authorizer | unmatched — not counted | — | listed in scope table | no |
| Security | Batch Relayer | unmatched — not counted | — | listed in scope table | no |
| Security | Composable Stable Pool | unmatched — not counted | — | listed in scope table | no |
| Security | Managed Pool | unmatched — not counted | — | listed in scope table | no |
| README.md | Vault | unmatched — not counted | — | listed in scope table | no |
| README.md | Weighted Pool | unmatched — not counted | — | listed in scope table | no |
| README.md | Stable Pool | unmatched — not counted | — | listed in scope table | no |
| README.md | MultiRewards | unmatched — not counted | — | listed in scope table | no |
| README.md | Linear Pool | unmatched — not counted | — | listed in scope table | no |
| README.md | Stable Phantom Pool | unmatched — not counted | — | listed in scope table | no |
| README.md | Timelock Authorizer | unmatched — not counted | — | listed in scope table | no |
| README.md | Batch Relayer | unmatched — not counted | — | listed in scope table | no |
| README.md | Composable Stable Pool | unmatched — not counted | — | listed in scope table | no |
| README.md | Managed Pool | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x309abc...138657` | AggregatorRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x633794...ee9ffc` | ArbitrumRootGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1c9932...5e50e7` | ArbitrumRootGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6048a8...2391e7` | AuthorizerWithAdaptorValidation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3eae4a...a72a13` | AvalancheRootGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x10f3e7...eab5ac` | AvalancheRootGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x239e55...638a2b` | BalancerMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf302f9...77414f` | BalancerTokenAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb848f5...4f2158` | BALTokenHolderFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9a4d64...bfe6cb` | BaseRootGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8e3b64...f31e4d` | BaseRootGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2cf8e1...736c59` | Boost Delegation V2.1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x99364f...c52c58` | ConstantPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x179c68...cec5d3` | FixedPriceLBPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb1aa9...be8758` | FixedPriceLBPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2ffb7b...98f26a` | GaugeAdder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1b57f6...2daea7` | GaugeAdderMigrationCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdab258...6ba57c` | GaugeWorkingBalanceHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05277c...fd4518` | GnosisRootGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x343688...2e9ccc` | L2GaugeCheckpointer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4e7bbd...5412ec` | LiquidityGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1bca39...716b1c` | MevCaptureHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe241c6...ea05ad` | OmniVotingEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbc230b...dfadde` | OptimismRootGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3083a1...73c5c8` | OptimismRootGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x37302b...cc6498` | OptimisticRootGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x18cc3c...94f71b` | OptimisticRootGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe53d8f...44495e` | PolygonRootGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4c4287...b64e34` | PolygonRootGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x45bf48...088602` | PolygonZkEVMRootGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9bf951...3447de` | PolygonZkEVMRootGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5a962c...711a74` | ProtocolFeeHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x000ab3...fe62a6` | ReClammPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5d3d2d...8c4480` | SingleRecipientGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4fb471...66c968` | SingleRecipientGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c8f71...5dbb98` | StakelessGaugeCheckpointer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x34ac9f...0cc69b` | TribeBALMinterCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xee47ef...26ddf3` | veBALGaugeFixCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd13afc...ef37ca` | veBALL2GaugeSetupCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6f5a2e...1eb8a0` | VotingEscrowDelegationProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2e9606...8a2647` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x099179...e7e8ec` | WeightedLPOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa5bf2d...c74ee0` | WeightedPool2TokensFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x27ad56...c3121c` | WrappedBalancerPoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 149 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 108 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Address-book scope dispositions: 38 own (10 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 197 unmatched
- Matched-own operational status: 38 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=26, low=4, medium=2
- Match method counts: unique_name=45

Zero-match audit list:

- [16793] test-report.md
- [16795] 2021-04-22.pdf
- [16801] 2021-10-08.pdf
- [16802] 2022-05-27.pdf
- [16803] 2022-09-02.pdf
- [16804] 2022-10-25.pdf
- [16805] WONTFIX.md
- [16808] 2024-12-31.pdf
- [16812] 2025-02-07.pdf
- [16815] 2025-09-08.pdf
- [16829] 2022-05-27.pdf
- [16833] Security
- [16834] README.md
- [16835] Risks

Fork inheritance lineage and inherited audits are included when available.
