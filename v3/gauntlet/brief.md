# Agentic Audit Brief: Gauntlet

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 5 (1 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Gauntlet (`gauntlet`)
- Website: [https://www.gauntlet.xyz](https://www.gauntlet.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, optimism
- Contract surface: 185 unique implementations (185 raw deployments)
- Coverage basis: 2/5 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,397,148,324.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Gauntlet. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, base, bsc, ethereum, optimism. Structural roles: 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: erc20 (1), pausable (1)
- Frameworks: solmate (5), openzeppelin (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 39 contracts are derived from known codebases. 39 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x000000...060f49`, chain 1)
- UnnamedContract (`0x000000...f3af44`, chain 1)
- UnnamedContract (`0x02b6bf...50bf67`, chain 1)
- UnnamedContract (`0x219949...939944`, chain 1)
- UnnamedContract (`0x3bd924...40bad0`, chain 1)
- UnnamedContract (`0x74c4a6...a80d11`, chain 1)
- UnnamedContract (`0x811c6f...f2467d`, chain 1)
- UnnamedContract (`0x8f1fdb...e25aeb`, chain 1)
- UnnamedContract (`0x8f3ffa...2ef4a5`, chain 1)
- UnnamedContract (`0xa582d1...50ba41`, chain 1)
- UnnamedContract (`0xa9cdbb...a7a5da`, chain 1)
- UnnamedContract (`0xc97961...3c543c`, chain 1)
- UnnamedContract (`0xd580c2...b65d9c`, chain 1)
- UnnamedContract (`0xeff0ae...2a672b`, chain 1)
- UnnamedContract (`0xf814c5...8e6b78`, chain 1)
- UnnamedContract (`0x000000...d0d1ec`, chain 10)
- UnnamedContract (`0xafdc48...718762`, chain 10)
- UnnamedContract (`0xbe351e...cc96d2`, chain 10)
- UnnamedContract (`0xcc9233...5799ef`, chain 10)
- UnnamedContract (`0xd18830...d2bd4e`, chain 10)
- UnnamedContract (`0xfb6de3...574440`, chain 10)
- UnnamedContract (`0x0cdaef...cfe591`, chain 8453)
- UnnamedContract (`0x1a8e10...9741b9`, chain 8453)
- UnnamedContract (`0x29722c...b90b4f`, chain 8453)
- UnnamedContract (`0x418c3c...c3fb02`, chain 8453)
- UnnamedContract (`0x53cb34...df8213`, chain 8453)
- UnnamedContract (`0x8f1fdb...e25aeb`, chain 8453)
- UnnamedContract (`0xc597de...a73568`, chain 8453)
- UnnamedContract (`0x000000...d0d1ec`, chain 42161)
- UnnamedContract (`0xafdc48...718762`, chain 42161)
- UnnamedContract (`0xbe351e...cc96d2`, chain 42161)
- UnnamedContract (`0xd18830...d2bd4e`, chain 42161)
- UnnamedContract (`0xd61ecf...a33932`, chain 42161)
- UnnamedContract (`0xdd4a42...6821b3`, chain 42161)
- BaseVaultFactory (`0x1a8e10...9741b9`, chain 1)
- MultiDepositorVault (`0x000000...6640d5`, chain 8453)
- MultiDepositorVaultFactory (`0x29722c...b90b4f`, chain 1)
- PriceAndFeeCalculator (`0x69dd4d...44372e`, chain 8453)
- Provisioner (`0x18cf8d...dbda07`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 39/39 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/5 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 39 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 146 discovered implementations excluded (0 third-party/infra; 27 standard proxy/library)
- Proxy deployments represented within implementation groups: 27
- Deployed-live implementations: 39 of 185 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/5
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 185
- Raw deployments: 185
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 40.0% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 2 | 40.0% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MultiDepositorVault | unknown | project_anchor | own_supporting | 0 | base | unit-386777 | `0x000000...6640d5` | ✅ Audited |
| PriceAndFeeCalculator | unknown | project_anchor | own_supporting | 0 | base | unit-386784 | `0x69dd4d...44372e` | ✅ Audited |

### ⚠️ Verified + Unaudited (149)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AeraFlashLoanRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03fde0...972fad` | ⚠️ Unaudited |
| AeraV2ERC721ReceiverFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1395c3...e77b09` | ⚠️ Unaudited |
| AeraVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14c79c...8f5a98` | ⚠️ Unaudited |
| AeraVaultV2ERC721Receiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f3ef8...327b4d` | ⚠️ Unaudited |
| AerodromePortfolioOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3396ec...be9925` | ⚠️ Unaudited |
| ArrakisV2Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x11b646...fd12f2` | ⚠️ Unaudited |
| AsBnbPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa13542...00704d` | ⚠️ Unaudited |
| AsterRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fbf35...f68705` | ⚠️ Unaudited |
| AsterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f97a1...87a12b` | ⚠️ Unaudited |
| AtlasOracleAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x095989...1dca8b` | ⚠️ Unaudited |
| ATokenVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10f6d5...f798b5` | ⚠️ Unaudited |
| AutoRefunder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d1659...f46cea` | ⚠️ Unaudited |
| BaseVaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386751 | `0x1a8e10...9741b9` | ⚠️ Unaudited |
| BatchManagementUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10548a...36e00f` | ⚠️ Unaudited |
| BNBProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2def76...afb35d` | ⚠️ Unaudited |
| BrokerInterestRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x262dd5...abbd54` | ⚠️ Unaudited |
| BrokerLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cb5b9...27d8a7` | ⚠️ Unaudited |
| CDPLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ce9c8...5123b5` | ⚠️ Unaudited |
| CreditBrokerInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20ea8f...c4af93` | ⚠️ Unaudited |
| CreditBrokerInterestRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x315b29...c4c1a4` | ⚠️ Unaudited |
| EmergencyShutdown | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f6de1...00a5b1` | ⚠️ Unaudited |
| EmergencySwitchHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07e1e0...9cf40d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x01ccc0...cce29f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x091e6e...15418d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x098a0c...cc9bfb` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19c329...facf2b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1a438f...67ac17` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1f819b...73f7d9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1f9831...eb52d8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2073dd...9d9f1f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2959c4...73f11a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2b3e5b...21d0a4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2bb416...7b2462` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x4837fb...58e5fd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x502131...d91aa9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x80e663...b2641e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x86e092...d8945c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x8ebfa9...df3ec0` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x96146e...8959a2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xb4678c...3a8498` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xe4153e...74ee76` | ⚠️ Unaudited |
| FeeCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0698ab...aefc27` | ⚠️ Unaudited |
| FixedRateIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10c9cc...f08c82` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc684c6...05faec` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5a4e19...8dd4d0` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x5a4e19...8dd4d0` | ⚠️ Unaudited |
| HelioETHProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa16bb6...8e6ad9` | ⚠️ Unaudited |
| HelioProviderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c9f8c...f37c11` | ⚠️ Unaudited |
| IdleCollateralToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb39d01...763fa3` | ⚠️ Unaudited |
| IdleOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc259ee...ff8733` | ⚠️ Unaudited |
| Interaction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4dcc11...16d3d7` | ⚠️ Unaudited |
| InterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34f834...dc8141` | ⚠️ Unaudited |
| LendingBroker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x039c4a...36bbe9` | ⚠️ Unaudited |
| LendingFeeRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01e88f...35e208` | ⚠️ Unaudited |
| LendingRevenueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe004ef...86fa21` | ⚠️ Unaudited |
| LendingRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e49ef...091959` | ⚠️ Unaudited |
| LendingRewardsDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11691e...82a504` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x534ae7...1973d0` | ⚠️ Unaudited |
| LisAster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4183b7...4314b7` | ⚠️ Unaudited |
| LisAsterDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c11b6...b55444` | ⚠️ Unaudited |
| LisAsterStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d0a2d...e4c3eb` | ⚠️ Unaudited |
| ListaAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x087b98...7d5089` | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x362d27...9446ea` | ⚠️ Unaudited |
| ListaRevenueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95cacf...b14635` | ⚠️ Unaudited |
| ListaStakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bf5c3...9f301c` | ⚠️ Unaudited |
| ListaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29202d...457167` | ⚠️ Unaudited |
| lisUSDPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x989af6...d7c2c0` | ⚠️ Unaudited |
| LpProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12b09b...1424c0` | ⚠️ Unaudited |
| LpUsd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a2381...8802de` | ⚠️ Unaudited |
| MarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12bb76...a128e3` | ⚠️ Unaudited |
| mBTCProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad745b...731521` | ⚠️ Unaudited |
| MerkleVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x084bd8...9a33f7` | ⚠️ Unaudited |
| MockResilientOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f1497...ae6a43` | ⚠️ Unaudited |
| Moolah | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0af5cd...6bc34f` | ⚠️ Unaudited |
| MoolahVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e5247...31c610` | ⚠️ Unaudited |
| MoolahVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d1fac...b9fb52` | ⚠️ Unaudited |
| MultiDepositorVaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386753 | `0x29722c...b90b4f` | ⚠️ Unaudited |
| mXRPPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0999ca...3f84bf` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ba7c9...b4ab3f` | ⚠️ Unaudited |
| OracleAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00066f...e06fd4` | ⚠️ Unaudited |
| PancakeSwapV3LpProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x104e7b...d42058` | ⚠️ Unaudited |
| PancakeSwapV3LpStakingHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3da4f7...4b5606` | ⚠️ Unaudited |
| PancakeSwapV3LpStakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0998cd...71941d` | ⚠️ Unaudited |
| PausableMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e8ef7...4a5ee0` | ⚠️ Unaudited |
| ProductOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c4322...2916b3` | ⚠️ Unaudited |
| Provisioner | unknown | project_anchor | own_supporting | 0 | base | unit-386779 | `0x18cf8d...dbda07` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97458a...a9312f` | ⚠️ Unaudited |
| PublicLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50c542...e42572` | ⚠️ Unaudited |
| PufETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x303cb4...efc61b` | ⚠️ Unaudited |
| PumpBTCProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe701f1...d10b1e` | ⚠️ Unaudited |
| RateCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a8431...05c5de` | ⚠️ Unaudited |
| RewardHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0050e...9e5742` | ⚠️ Unaudited |
| RWAAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b116d...e350eb` | ⚠️ Unaudited |
| RWAEarnPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x505829...357a33` | ⚠️ Unaudited |
| SafeGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59828a...770ef6` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9e33fa...410585` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x9e33fa...410585` | ⚠️ Unaudited |
| SingleDepositorVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x088a54...1843a2` | ⚠️ Unaudited |
| SlisBnbOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x114742...80819b` | ⚠️ Unaudited |
| SlisBnbPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x125bce...1dc1a3` | ⚠️ Unaudited |
| SlisBNBProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aefec...820c70` | ⚠️ Unaudited |
| slisBNBx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44f987...64c5aa` | ⚠️ Unaudited |
| SLisLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb03518...d36da8` | ⚠️ Unaudited |
| SmartProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f48d5...6ea87f` | ⚠️ Unaudited |
| StableAsUsdfPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5342f...a60042` | ⚠️ Unaudited |
| StableSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63dc1c...c6378d` | ⚠️ Unaudited |
| StableSwapLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c43dc...87a84c` | ⚠️ Unaudited |
| StableSwapPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x212b83...a3a126` | ⚠️ Unaudited |
| StableSwapPoolInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x395720...67fd70` | ⚠️ Unaudited |
| StableUsdtPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e6492...2e0b56` | ⚠️ Unaudited |
| StockOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1be38f...bce3d5` | ⚠️ Unaudited |
| StoneOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76d830...a4a8bf` | ⚠️ Unaudited |
| StonePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6860a...55c4d8` | ⚠️ Unaudited |
| sUSD1PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54e881...b380b3` | ⚠️ Unaudited |
| sUSDePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b7ccb...fa6d9b` | ⚠️ Unaudited |
| sUSDXLiquidationPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x152624...7c81c0` | ⚠️ Unaudited |
| sUSDXPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7da003...1265e0` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x660c94...750c6e` | ⚠️ Unaudited |
| SyrupUSDTPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x573ca8...c5c308` | ⚠️ Unaudited |
| TimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2162c6...b05da8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x031a6f...7c1461` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0383d8...af7a0f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x53c702...9a2fb1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x63393e...a96b2b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x68b9a9...f63807` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x8b7d33...40f990` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe03034...64f510` | ⚠️ Unaudited |
| uniBTCPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x150d8f...bbb936` | ⚠️ Unaudited |
| Usd1Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40d695...1b39fa` | ⚠️ Unaudited |
| UsdfOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x070975...8c4aa2` | ⚠️ Unaudited |
| USDXLiquidationPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a4c41...626d2d` | ⚠️ Unaudited |
| VaultAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8eba9b...8fc7c2` | ⚠️ Unaudited |
| VaultDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73b1b1...573f6c` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe08145...97cb94` | ⚠️ Unaudited |
| VeLista | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x765d17...70274e` | ⚠️ Unaudited |
| VeListaInterestRebater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40c34a...0818fe` | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x321abb...19caee` | ⚠️ Unaudited |
| WBETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f3da9...384584` | ⚠️ Unaudited |
| WBETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb3ac5...92f5a6` | ⚠️ Unaudited |
| wNLPUSDTPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf86155...de4262` | ⚠️ Unaudited |
| wsrUSDPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfee2c5...76a46f` | ⚠️ Unaudited |
| WstETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07399c...ee04b0` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x950620...d23fc5` | ⚠️ Unaudited |
| wstUSRNewPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc3360...324104` | ⚠️ Unaudited |
| wstUSRPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5439ec...4722c8` | ⚠️ Unaudited |
| xSolvBTCOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7e6cb...26527c` | ⚠️ Unaudited |
| xSolvBtcPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x267cbe...a0bc5e` | ⚠️ Unaudited |
| yUSDFixedPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaaff27...6d3365` | ⚠️ Unaudited |
| yUSDPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x687c3e...e24a04` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386748 | `0x000000...060f49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386749 | `0x000000...f3af44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386750 | `0x02b6bf...50bf67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386752 | `0x219949...939944` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386754 | `0x3bd924...40bad0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386755 | `0x74c4a6...a80d11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386756 | `0x811c6f...f2467d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386757 | `0x8f1fdb...e25aeb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386758 | `0x8f3ffa...2ef4a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386759 | `0xa582d1...50ba41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386760 | `0xa9cdbb...a7a5da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386761 | `0xc97961...3c543c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386762 | `0xd580c2...b65d9c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386763 | `0xeff0ae...2a672b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386764 | `0xf814c5...8e6b78` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386765 | `0x000000...d0d1ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386766 | `0xafdc48...718762` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386767 | `0xbe351e...cc96d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386768 | `0xcc9233...5799ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386769 | `0xd18830...d2bd4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-386770 | `0xfb6de3...574440` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-386778 | `0x0cdaef...cfe591` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-386780 | `0x1a8e10...9741b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-386781 | `0x29722c...b90b4f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-386782 | `0x418c3c...c3fb02` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-386783 | `0x53cb34...df8213` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-386785 | `0x8f1fdb...e25aeb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-386786 | `0xc597de...a73568` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-386771 | `0x000000...d0d1ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-386772 | `0xafdc48...718762` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-386773 | `0xbe351e...cc96d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-386774 | `0xd18830...d2bd4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-386775 | `0xd61ecf...a33932` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-386776 | `0xdd4a42...6821b3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Access your report here!](https://cdn.prod.website-files.com/648bdc0d4b8ce322f27da0af/68e69619549468027afb3a1a_36cd33a1b52a2f1491318ffa56f72273_USDC-10-8-5MB.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Spearbit-June-2025.pdf](https://drive.google.com/file/d/1YYJI6AIzcJku0VfWqDxyx7Jn7m0nIjtE/view?usp=sharing) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 26 | high |
| [2023-09-22.pdf](https://github.com/aera-finance/aera-contracts-public/blob/main/v2/audits/spearbit/2023-09-22.pdf) | Spearbit | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2024-05-15.pdf](https://github.com/aera-finance/aera-contracts-public/blob/main/v2/audits/openzeppelin/2024-05-15.pdf) | OpenZeppelin | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [cantina.xyz/competitions/ffe90f03-ffd0-449b-a15f-6e7702323d16](https://cantina.xyz/competitions/ffe90f03-ffd0-449b-a15f-6e7702323d16) | Spearbit | Contest | 2025-06 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20416] Access your report here! — no match: The document is a research report about USDC idle capital and yield opportunities, not a smart contract audit report. No contracts in scope were identified.
- [20417] Spearbit-June-2025.pdf — matched: Extracted contract names from findings context and file references. No explicit scope section found; date from report cover page.
- [20418] 2023-09-22.pdf — no match: The report does not have a dedicated scope section, but the contracts AeraVaultV2, AeraVaultAssetRegistry, AeraVaultHooks, and AeraVaultV2Factory are consistently referenced in findings and context, indicating they are the audited contracts. The audit date is from the report cover page: September 22, 2023.
- [20419] 2024-05-15.pdf — no match: All contracts listed in the Scope section of the report.
- [20420] cantina.xyz/competitions/ffe90f03-ffd0-449b-a15f-6e7702323d16 — no match: The provided text is a competition description, not an audit report. It mentions a repository URL and a vault address but does not list specific contracts in scope. No contract names could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Spearbit-June-2025.pdf | BaseSlippageHooks | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | BaseVault | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | CallbackHandler | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | CCTPHooks | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | OracleRegistry | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | Provisioner | ambiguous — not counted | 0xd580c2… (alternative) `0xd580c2...b65d9c` — liveness: live (current_address_book_code)<br>Provisioner (alternative) `0x18cf8d...dbda07` — deployed 2025-06-03 04:05:27+03 — liveness: live (code_present_context)<br>0x219949… (alternative) `0x219949...939944` — liveness: live (current_address_book_code)<br>0xdd4a42… (alternative) `0xdd4a42...6821b3` — liveness: live (current_address_book_code)<br>0xa582d1… (alternative) `0xa582d1...50ba41` — liveness: live (current_address_book_code)<br>0x74c4a6… (alternative) `0x74c4a6...a80d11` — liveness: live (current_address_book_code)<br>0xcc9233… (alternative) `0xcc9233...5799ef` — liveness: live (current_address_book_code)<br>0xa9cdbb… (alternative) `0xa9cdbb...a7a5da` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Spearbit-June-2025.pdf | SingleDepositorVault | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | FeeVault | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | BaseFeeCalculator | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | PriceAndFeeCalculator | own contract | PriceAndFeeCalculator (selected) `0x69dd4d...44372e` — deployed 2025-05-28 21:47:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Spearbit-June-2025.pdf | DelayedFeeCalculator | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | MultiDepositorVault | own contract | MultiDepositorVault (selected) `0x000000...6640d5` — deployed 2025-06-03 04:05:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Spearbit-June-2025.pdf | Auth2Step | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | Auth | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | Whitelist | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | TransferWhitelistHooks | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | TransferBlacklistHooks | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | BasicMerkleRootProvider | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | CalldataReaderLib | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | OracleDataLibrary | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | Forwarder | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | Constants | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | IBaseVault | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | IOracle | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | IMetaAggregationRouterV2 | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | UniswapV3DexHooks | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | KyberSwapHook | unmatched — not counted | — | mentioned in findings context | no |
| Spearbit-June-2025.pdf | ODOSHook | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-22.pdf | AeraVaultV2 | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-22.pdf | AeraVaultAssetRegistry | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-22.pdf | AeraVaultHooks | unmatched — not counted | — | mentioned in findings context | no |
| 2023-09-22.pdf | AeraVaultV2Factory | unmatched — not counted | — | mentioned in findings context | no |
| 2024-05-15.pdf | ILlamaPayRouterOracle | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | IExecutor | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | IAeraV2Oracle | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | ILlamaPayRouterOracleTypes | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | LlamaPayRouterOracle | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | Executor | unmatched — not counted | — | listed in scope | no |
| 2024-05-15.pdf | AbstractAssetOracle | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1a8e10...9741b9` | BaseVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x29722c...b90b4f` | MultiDepositorVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x18cf8d...dbda07` | Provisioner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 119 |
| upstream | 0 |
| standard_library | 32 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 36 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=2
- Match method counts: unique_name=2

Zero-match audit list:

- [20416] Access your report here!
- [20418] 2023-09-22.pdf
- [20419] 2024-05-15.pdf
- [20420] cantina.xyz/competitions/ffe90f03-ffd0-449b-a15f-6e7702323d16

Fork inheritance lineage and inherited audits are included when available.
