# Agentic Audit Brief: Lista DAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 82 (4 matched; 78 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Lista DAO (`lista-dao`)
- Website: [https://lista.org/](https://lista.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 196 unique implementations (196 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,288,434,262.40
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Lista DAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc, ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2ed866...b558d3`, chain 56)
- ListaToken (`0xfceb31...9edc46`, chain 56)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 194 discovered implementations excluded (0 third-party/infra; 43 standard proxy/library)
- Proxy deployments represented within implementation groups: 44
- Deployed-live implementations: 2 of 196 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 196
- Raw deployments: 196
- Audits discovered: 81 (81 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 40 fresh, 23 aging, 18 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 100.0% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ListaToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-388512 | `0xfceb31...9edc46` | ✅ Audited |

### ⚠️ Verified + Unaudited (194)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| API3Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35718b...05617d` | ⚠️ Unaudited |
| AsBnbPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa13542...00704d` | ⚠️ Unaudited |
| AsterRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fbf35...f68705` | ⚠️ Unaudited |
| AsterToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x000ae3...4f556a` | ⚠️ Unaudited |
| AsterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f97a1...87a12b` | ⚠️ Unaudited |
| AtlasOracleAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x095989...1dca8b` | ⚠️ Unaudited |
| AutoRefunder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d1659...f46cea` | ⚠️ Unaudited |
| BatchManagementUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10548a...36e00f` | ⚠️ Unaudited |
| BnbOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd74508...ad2754` | ⚠️ Unaudited |
| BNBProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2def76...afb35d` | ⚠️ Unaudited |
| BoundValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x084bd8...9a33f7` | ⚠️ Unaudited |
| BrokerInterestRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x262dd5...abbd54` | ⚠️ Unaudited |
| BrokerLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cb5b9...27d8a7` | ⚠️ Unaudited |
| CDPLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ce9c8...5123b5` | ⚠️ Unaudited |
| CerosETHRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaff57...2fb0c1` | ⚠️ Unaudited |
| CeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x397a48...39004b` | ⚠️ Unaudited |
| clisBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x061178...80d195` | ⚠️ Unaudited |
| clisETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4f487...77181f` | ⚠️ Unaudited |
| ClisToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2544be...d355a8` | ⚠️ Unaudited |
| CollateralBorrowSnapshotRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57371f...8490f6` | ⚠️ Unaudited |
| CreditBrokerInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20ea8f...c4af93` | ⚠️ Unaudited |
| CreditBrokerInterestRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x315b29...c4c1a4` | ⚠️ Unaudited |
| DynamicDutyCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aeb6c...6571f0` | ⚠️ Unaudited |
| EarnPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x143c8b...164642` | ⚠️ Unaudited |
| EmergencyShutdown | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f6de1...00a5b1` | ⚠️ Unaudited |
| EmergencySwitchHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07e1e0...9cf40d` | ⚠️ Unaudited |
| EmissionVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d52bc...693736` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x01ccc0...cce29f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x05ac03...8a4c9c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x091e6e...15418d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x098a0c...cc9bfb` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19c329...facf2b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1a438f...67ac17` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1afa15...11fad5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1f819b...73f7d9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1f9831...eb52d8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2073dd...9d9f1f` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x2725d7...65aa57` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2959c4...73f11a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2b3e5b...21d0a4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2bb416...7b2462` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x37db1a...95d0bf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x4837fb...58e5fd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x502131...d91aa9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x80e663...b2641e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x86e092...d8945c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x8a016f...e2bb0b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x8ebfa9...df3ec0` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x96146e...8959a2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xaa57f3...72ec0c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xb4678c...3a8498` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xe4153e...74ee76` | ⚠️ Unaudited |
| EthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b4f67...af1e96` | ⚠️ Unaudited |
| ETHProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0218e1...bf77c4` | ⚠️ Unaudited |
| EzEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x209003...f7741b` | ⚠️ Unaudited |
| FixedRateIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10c9cc...f08c82` | ⚠️ Unaudited |
| HelioETHProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa16bb6...8e6ad9` | ⚠️ Unaudited |
| HelioProviderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c9f8c...f37c11` | ⚠️ Unaudited |
| IdleCollateralToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb39d01...763fa3` | ⚠️ Unaudited |
| IdleOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc259ee...ff8733` | ⚠️ Unaudited |
| Interaction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f9da6...0a509e` | ⚠️ Unaudited |
| InterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34f834...dc8141` | ⚠️ Unaudited |
| Jar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x383a35...5b2130` | ⚠️ Unaudited |
| LendingBroker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x039c4a...36bbe9` | ⚠️ Unaudited |
| LendingFeeRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01e88f...35e208` | ⚠️ Unaudited |
| LendingRevenueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe004ef...86fa21` | ⚠️ Unaudited |
| LendingRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e49ef...091959` | ⚠️ Unaudited |
| LendingRewardsDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11691e...82a504` | ⚠️ Unaudited |
| LinearDecrease | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5faa44...20552e` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x534ae7...1973d0` | ⚠️ Unaudited |
| LisAster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4183b7...4314b7` | ⚠️ Unaudited |
| LisAsterDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c11b6...b55444` | ⚠️ Unaudited |
| LisAsterStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d0a2d...e4c3eb` | ⚠️ Unaudited |
| ListaAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x087b98...7d5089` | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f4c12...61d415` | ⚠️ Unaudited |
| ListaOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82f5bc...413f02` | ⚠️ Unaudited |
| ListaRevenueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c56cc...9a7cc4` | ⚠️ Unaudited |
| ListaV3Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x081ce2...53d133` | ⚠️ Unaudited |
| ListaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fee40...36e05c` | ⚠️ Unaudited |
| LisUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5bd9b...c4d7f8` | ⚠️ Unaudited |
| lisUSDPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x989af6...d7c2c0` | ⚠️ Unaudited |
| LpProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12b09b...1424c0` | ⚠️ Unaudited |
| LpUsd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a2381...8802de` | ⚠️ Unaudited |
| MarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12bb76...a128e3` | ⚠️ Unaudited |
| MasterVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x034f0a...929b37` | ⚠️ Unaudited |
| MerkleVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x084bd8...9a33f7` | ⚠️ Unaudited |
| MockResilientOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f1497...ae6a43` | ⚠️ Unaudited |
| Moolah | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0af5cd...6bc34f` | ⚠️ Unaudited |
| MoolahVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e5247...31c610` | ⚠️ Unaudited |
| MoolahVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d1fac...b9fb52` | ⚠️ Unaudited |
| mwBETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3605c7...db95b1` | ⚠️ Unaudited |
| mXRPPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0999ca...3f84bf` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ba7c9...b4ab3f` | ⚠️ Unaudited |
| NonTransferableLpERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x708252...cfb755` | ⚠️ Unaudited |
| NpmImplDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0de3c...ae3a0e` | ⚠️ Unaudited |
| OracleAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00066f...e06fd4` | ⚠️ Unaudited |
| OracleCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47dbca...784a41` | ⚠️ Unaudited |
| PancakeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x811591...1c866b` | ⚠️ Unaudited |
| PancakeSwapV3LpProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x104e7b...d42058` | ⚠️ Unaudited |
| PancakeSwapV3LpStakingHub | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3da4f7...4b5606` | ⚠️ Unaudited |
| PancakeSwapV3LpStakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0998cd...71941d` | ⚠️ Unaudited |
| PausableMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e8ef7...4a5ee0` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ce30a...4fa07b` | ⚠️ Unaudited |
| PublicLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x275156...d4e544` | ⚠️ Unaudited |
| PufETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x303cb4...efc61b` | ⚠️ Unaudited |
| PumpBTCProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabdb46...09f4df` | ⚠️ Unaudited |
| RateCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a8431...05c5de` | ⚠️ Unaudited |
| ResilientOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35c673...af4bbe` | ⚠️ Unaudited |
| RewardHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0050e...9e5742` | ⚠️ Unaudited |
| RWAAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b116d...e350eb` | ⚠️ Unaudited |
| RWAEarnPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x505829...357a33` | ⚠️ Unaudited |
| SafeGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b19bc...11b96e` | ⚠️ Unaudited |
| SlisBnbDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9881cf...7c7e12` | ⚠️ Unaudited |
| SlisBnbOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x114742...80819b` | ⚠️ Unaudited |
| SlisBnbPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x125bce...1dc1a3` | ⚠️ Unaudited |
| SlisBNBProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aefec...820c70` | ⚠️ Unaudited |
| slisBNBx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44f987...64c5aa` | ⚠️ Unaudited |
| SLisLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64dbd2...6480c6` | ⚠️ Unaudited |
| SlisXAUE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e2b8c...69af0a` | ⚠️ Unaudited |
| SmartProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08d0b3...d7b583` | ⚠️ Unaudited |
| SnBnb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf8dc8...01cf81` | ⚠️ Unaudited |
| SnBnbYieldConverterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1101ff...923dc3` | ⚠️ Unaudited |
| SnStakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1144de...beb7dc` | ⚠️ Unaudited |
| SolvBTCBBNOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb35d0f...99055d` | ⚠️ Unaudited |
| SolvBtcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08bcb6...540c5f` | ⚠️ Unaudited |
| StableAsUsdfPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5342f...a60042` | ⚠️ Unaudited |
| StableSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63dc1c...c6378d` | ⚠️ Unaudited |
| StableSwapLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c43dc...87a84c` | ⚠️ Unaudited |
| StableSwapPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x212b83...a3a126` | ⚠️ Unaudited |
| StableSwapPoolInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c3492...e1a767` | ⚠️ Unaudited |
| StableUsdtPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e6492...2e0b56` | ⚠️ Unaudited |
| StakeLisUSDListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82c6fb...8a4491` | ⚠️ Unaudited |
| StakingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0541ee...a1806a` | ⚠️ Unaudited |
| StockOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1be38f...bce3d5` | ⚠️ Unaudited |
| StoneOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b2ff4...59ffb1` | ⚠️ Unaudited |
| StonePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6860a...55c4d8` | ⚠️ Unaudited |
| sUSD1PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54e881...b380b3` | ⚠️ Unaudited |
| sUSDePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b7ccb...fa6d9b` | ⚠️ Unaudited |
| sUSDXLiquidationPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x152624...7c81c0` | ⚠️ Unaudited |
| sUSDXPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7da003...1265e0` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x660c94...750c6e` | ⚠️ Unaudited |
| SyrupUSDTPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x573ca8...c5c308` | ⚠️ Unaudited |
| ThenaERC20LpProvidableListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc998f1...cee150` | ⚠️ Unaudited |
| ThenaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcda44d...2c34b3` | ⚠️ Unaudited |
| TimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07d274...735253` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x01a6fc...eb8281` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x01b39e...b44e23` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x031a6f...7c1461` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x03db75...d63067` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x05570c...7115c3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0ad764...669caa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0aed86...7f4f3b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x117b4a...651063` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x16c39b...0622a5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x1b8b3f...89d308` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x227716...f6c867` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2ea16e...b8fb5a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2eedc4...2d5642` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x316775...95f5dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x31d558...b87aaf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x420a16...dde28b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x53c702...9a2fb1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x81a62b...5a46e8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x9a0530...c3bf5e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x9ba88e...4063cb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xb0b84d...d14a1b` | ⚠️ Unaudited |
| uniBTCPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x150d8f...bbb936` | ⚠️ Unaudited |
| Usd1Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40d695...1b39fa` | ⚠️ Unaudited |
| UsdfOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x070975...8c4aa2` | ⚠️ Unaudited |
| USDTLpListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24e5de...0d0bd9` | ⚠️ Unaudited |
| UsdtOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45575e...c1d92d` | ⚠️ Unaudited |
| USDXLiquidationPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a4c41...626d2d` | ⚠️ Unaudited |
| VaultAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8eba9b...8fc7c2` | ⚠️ Unaudited |
| VaultDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73b1b1...573f6c` | ⚠️ Unaudited |
| VaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15fc4e...727ec2` | ⚠️ Unaudited |
| VeLista | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x765d17...70274e` | ⚠️ Unaudited |
| VeListaDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x006835...4ccfd6` | ⚠️ Unaudited |
| VeListaInterestRebater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40c34a...0818fe` | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x321abb...19caee` | ⚠️ Unaudited |
| VenusAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1d3a2...3cacef` | ⚠️ Unaudited |
| WBETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f3da9...384584` | ⚠️ Unaudited |
| WBETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x070975...8c4aa2` | ⚠️ Unaudited |
| WeEthOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f8075...afeee1` | ⚠️ Unaudited |
| wNLPUSDTPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf86155...de4262` | ⚠️ Unaudited |
| wsrUSDPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfee2c5...76a46f` | ⚠️ Unaudited |
| WstETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07399c...ee04b0` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36b0ae...ce166d` | ⚠️ Unaudited |
| wstUSRNewPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc3360...324104` | ⚠️ Unaudited |
| wstUSRPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5439ec...4722c8` | ⚠️ Unaudited |
| XAUEAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c6a79...270399` | ⚠️ Unaudited |
| XAUTStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33101e...18fa72` | ⚠️ Unaudited |
| xSolvBtcPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x267cbe...a0bc5e` | ⚠️ Unaudited |
| yUSDFixedPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaaff27...6d3365` | ⚠️ Unaudited |
| yUSDPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x687c3e...e24a04` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388511 | `0x2ed866...b558d3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Bailsec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Bailsec_SlisbnbProvider_Final_Report_241127.pdf) | PeckShield | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Bailsec 2025-09](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Bailsec_V3_LP_20Sept_2025.pdf) | OpenZeppelin | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/BlockSec_060824_AMO_DynamicDutyCalculator_v1.0-signed.pdf) | BlockSec | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/BlockSec_OFT_190624.pdf) | PeckShield | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [BlockSec 2025-09](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/BlockSec_V3_LP_04Sept_2025.pdf) | OpenZeppelin | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [CertiK 2025-09](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/CertiK_V3_LP_04Sept_2025.pdf) | CertiK | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 49 | high |
| [Certik_300522.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Certik_300522.pdf) | CertiK | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 32 | high |
| [PeckShield_250522.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/PeckShield_250522.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [PeckShield](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/PeckShield_300424.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [PeckShield](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/PeckShield_OFT_190624.pdf) | PeckShield | Audit | 2024-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [PeckShield](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/PeckShield_slisBNBOracle_180424.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Salus](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Salus_080824_AMO_DynamicDutyCalculator.pdf) | Salus | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [SlowMist_100522.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/SlowMist_100522.pdf) | SlowMist | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [SlowMist_240522.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/SlowMist_240522.pdf) | SlowMist | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Spearbit 2025-09](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/SpearBit_V3_LP_01Sept_2025.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Supremacy](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Supremacy-Audit-Report-ListaDAO_FlashBuy-v0.1.pdf) | Supremacy | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Veridise_270622.pdf](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/Veridise_270622.pdf) | Veridise | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/blocksec_emission_voting_211024.pdf) | PeckShield | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/blocksec_lista_SlisbnbProvider-VotingIncentive_v1.0_signed_241127.pdf) | PeckShield | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/blocksec_lista_flashbuy_v1.0-signed.pdf) | BlockSec | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [BlockSec](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/blocksec_psm_241122.pdf) | PeckShield | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Salus](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/salus_PSM_241122.pdf) | PeckShield | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Salus](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/salus_emission_voting_211024.pdf) | PeckShield | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [salus_lista_emission_v1.0.pdf (also discovered via alternate URL)](https://github.com/lista-dao/lista-dao-contracts/blob/master/audits/salus_lista_emission_v1.0.pdf) | Salus | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Bailsec-CollateralYieldVault-20260618.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-CollateralYieldVault-20260618.pdf) | Bailsec | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Bailsec-Credit-Liquidation-20260303.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-Credit-Liquidation-20260303.pdf) | Bailsec | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Bailsec 2026-01](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-Credit-Loan-Jan2026.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Bailsec-FixedTerm-20260511.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-FixedTerm-20260511.pdf) | Bailsec | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Bailsec-FixedTerm-20260628.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-FixedTerm-20260628.pdf) | Bailsec | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Bailsec 2025-04](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-ListaLending-AuditReport-20250410.pdf) | CertiK | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Bailsec 2025-05](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-ListaLending-Provider-20250522.pdf) | Bailsec | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Bailsec 2026-01](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-ListaLending-SlisBNBMinter-20260105.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Bailsec 2025-11](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-ListaLending-Smart-Collateral-and-Liquidators-20251124.pdf) | Bailsec | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Bailsec 2026-01](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-ListaLending-SmartPorvider-and-SlisBNBMinter-202601229.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Bailsec 2026-03](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-Position-Migrator-20260318.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Bailsec-YieldBuffer-AuditReport-20260611.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec-YieldBuffer-AuditReport-20260611.pdf) | Bailsec | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Bailsec__Fixed_Term_and_rate_Oct2025.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Bailsec__Fixed_Term_and_rate_Oct2025.pdf) | Bailsec | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [BlockSec 2025-04](https://github.com/lista-dao/moolah/blob/master/docs/audits/Blocksec-ListaLending-AuditReport-20250410.pdf) | CertiK | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [BlockSec 2025-05](https://github.com/lista-dao/moolah/blob/master/docs/audits/Blocksec-ListaLending-Provider-20250522.pdf) | BlockSec | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [BlockSec 2025-11](https://github.com/lista-dao/moolah/blob/master/docs/audits/Blocksec-ListaLending-SlisBNBxMinter-AuditReport-20251101.pdf) | BlockSec | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Cantina 2026-03](https://github.com/lista-dao/moolah/blob/master/docs/audits/Cantina-Position-Migrator-20260318.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Cantina 2026-02](https://github.com/lista-dao/moolah/blob/master/docs/audits/Cantina_Credit_loan_04Feb2026.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [Cantina_Fixed_Term_and_rate_12Nov2025.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/Cantina_Fixed_Term_and_rate_12Nov2025.pdf) | Spearbit | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [CertiK-CollateralYieldVault-20260618.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/CertiK-CollateralYieldVault-20260618.pdf) | CertiK | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [CertiK-REP-Lista-Dao-PositionManager-20260410.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/CertiK-REP-Lista-Dao-PositionManager-20260410.pdf) | CertiK | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [HashDit-CollateralYieldVault-20260618.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/HashDit-CollateralYieldVault-20260618.pdf) | HashDit | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [HashDit-Idle-Market-20260526.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/HashDit-Idle-Market-20260526.pdf) | HashDit | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [HashDit-ListaLending-BrokerBatchOps-20260526.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/HashDit-ListaLending-BrokerBatchOps-20260526.pdf) | HashDit | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [HashDit-YieldBuffer-AuditReport-20260611.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/HashDit-YieldBuffer-AuditReport-20260611.pdf) | HashDit | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [OpenZeppelin 2025-10](https://github.com/lista-dao/moolah/blob/master/docs/audits/OpenZeppelin-ListaLending-Smart-Collateral-20251020.pdf) | OpenZeppelin | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Spearbit 2026-03](https://github.com/lista-dao/moolah/blob/master/docs/audits/Spearbit-Credit-Liquidation-20260303.pdf) | Spearbit | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [WarRoom-MoolahVaultManager-Audit-Report-20260608.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/WarRoom-MoolahVaultManager-Audit-Report-20260608.pdf) | WarRoom | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [cantina_PositionManager_20260410.pdf](https://github.com/lista-dao/moolah/blob/master/docs/audits/cantina_PositionManager_20260410.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [CertiK 2025-04](https://github.com/lista-dao/lista-token/blob/master/audits/certik-lp-mint-clisbnb-17apr25.pdf) | CertiK | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [BlockSec 2025-04](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec-lp-mint-clisbnb-03apr25.pdf) | BlockSec | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Lista-Dao_Lista-token_audit_report_2024-07-12.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/Lista-Dao_Lista-token_audit_report_2024-07-12.pdf) | Lista-Dao | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [BlockSec](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec_velista_v2.0-signed.pdf) | BlockSec | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [PeckShield](https://github.com/lista-dao/synclub-contracts/blob/master/audit/PeckShield-Audit-Report-ListaStakeManager-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [BlockSec](https://github.com/lista-dao/synclub-contracts/blob/master/audit/blocksec_listastakeManager_v1.0-signed.pdf) | BlockSec | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Bailsec](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/Bailsec-lisAster-Audit-Report.pdf) | Bailsec | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Sherlock](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/Sherlock-lisAster-Audit-Report.pdf) | Sherlock | Contest | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield](https://github.com/lista-dao/lista-token/blob/master/audits/PeckShield-Audit-Report-ListaAirdrop-v1.0.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [Supremacy](https://github.com/lista-dao/lista-token/blob/master/audits/Supremacy-Audit-Report-ListaDAO_Airdrop-v1.0.pdf) | Sherlock | Contest | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [BlockSec](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec_ListaToken_v1.0-signed.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [Supremacy](https://github.com/lista-dao/lista-token/blob/master/audits/Supremacy-Audit-Report-ListaDAO_token-v1.0.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [PeckShield](https://github.com/lista-dao/lista-token/blob/master/audits/PeckShield-Audit-Report-Restake-v1.0.pdf) | PeckShield | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Salus](https://github.com/lista-dao/lista-token/blob/master/audits/Salus-Audit-Report-Restake-v1.0.pdf) | Salus | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Bailsec](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/Bailsec-RWA-Audit%20Report.pdf) | Bailsec | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [BlockSec](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/BlockSec-RWA-Audit%20Report.pdf) | BlockSec | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Bailsec_lista_dao_SlisbnbProvided-VotingIncentive_final.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/Bailsec_lista_dao_SlisbnbProvided-VotingIncentive_final.pdf) | Bailsec | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [260430-Cantina-Lista-V3-Final-Report.pdf](https://github.com/lista-dao/lista-v3/blob/master/audits/260430-Cantina-Lista-V3-Final-Report.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 54 | high |
| [bailsec_lista_usdtLpdistributor_final_report.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/bailsec_lista_usdtLpdistributor_final_report.pdf) | Bailsec | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [blocksec_lista_SlisbnbProvided-VotingIncentive_v1.0_signed.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec_lista_SlisbnbProvided-VotingIncentive_v1.0_signed.pdf) | BlockSec | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [blocksec_lista_emission_v1.0.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec_lista_emission_v1.0.pdf) | BlockSec | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [blocksec_lista_usdtLpdistributor_v1.0-signed.pdf](https://github.com/lista-dao/lista-token/blob/master/audits/blocksec_lista_usdtLpdistributor_v1.0-signed.pdf) | BlockSec | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Bailsec-slisXAUE-Audit Report.pdf](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/Bailsec-slisXAUE-Audit%20Report.pdf) | Bailsec | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [CertiK-slisXAUE-Audit Report.pdf](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/CertiK-slisXAUE-Audit%20Report.pdf) | CertiK | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [HashDit-AsterRewards-20260615.pdf](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/HashDit-AsterRewards-20260615.pdf) | HashDit | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [hashdit_atlasOracleAdaptor_audit_report_final_22_may_2026.pdf](https://github.com/lista-dao/lista-new-contracts/blob/master/docs/audits/hashdit_atlasOracleAdaptor_audit_report_final_22_may_2026.pdf) | HashDit | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [260430-HashDit-Lista-V3-Final-Report.pdf](https://github.com/lista-dao/lista-v3/blob/master/audits/260430-HashDit-Lista-V3-Final-Report.pdf) | HashDit | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [260515-Bailsec-Lista-V3-Differential-Final-Report.pdf](https://github.com/lista-dao/lista-v3/blob/master/audits/260515-Bailsec-Lista-V3-Differential-Final-Report.pdf) | Bailsec | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 35 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17490] Bailsec — no match: The report explicitly lists VotingIncentive and SlisBNBProvider in the scope section with GitHub URLs. BaseTokenProvider is audited as part of SlisBNBProvider. The audit date is inferred from 'November 2024' on the cover page, using the last day of the month.
- [17491] Bailsec 2025-09 — no match: All contracts explicitly listed in scope sections of the audit report.
- [17492] BlockSec — no match: Scope explicitly lists 5 files: Interaction.sol, DynamicDutyCalculator.sol, IDao.sol, IDynamicDutyCalculator.sol, FixedMath0x.sol. Audit date from cover page: August 06, 2024.
- [17493] BlockSec — no match: Scope section mentions 'ListaOFT' as target. Findings reference ListaOFT.sol, ListaOFTAdapter.sol, and TransferLimiter.sol.
- [17494] BlockSec 2025-09 — no match: Scope section 1.1 explicitly lists 11 contract files. Audit date is September 3, 2025 from the report header.
- [17495] CertiK 2025-09 — no match: Extracted from the appendix listing all files in scope. The audit date is from the cover page: 'CertiK Assessed on Sept 4th, 2025'.
- [17496] Certik_300522.pdf — no match: Extracted 32 contract names from the Audit Scope table and findings sections. Audit date found on cover page and delivery date.
- [17497] PeckShield_250522.pdf — no match: Contracts explicitly named as targets in findings. No file paths provided.
- [17498] PeckShield — no match: Scope explicitly lists API3Oracle.sol, BoundValidator.sol, ResilientOracle.sol, and OracleInterface.sol. Audit date is April 30, 2024 from cover page.
- [17499] PeckShield — matched: The report clearly states the audited contract is ListaToken (ERC20). ListaAirdrop is referenced in a finding as a target, but not explicitly listed in scope; however, it is part of the audit findings.
- [17500] PeckShield — no match: Only one contract, SlisBnbOracle, is in scope. The report explicitly states 'our audit only covers the following contract: contracts/oracle/SlisBnbOracle.sol'.
- [17501] Salus — no match: Three contracts explicitly listed in Appendix 1 - Files in Scope. Audit date from 'Dates Aug 08 2024' in ProjectDashboard.
- [17502] SlowMist_100522.pdf — no match: Contracts extracted from visibility tables and findings. Audit date is the end date of the audit period (2022.04.28 - 2022.05.10).
- [17503] SlowMist_240522.pdf — no match: Audit scope explicitly lists three contracts: CeVault.sol, CerosRouter.sol, HelioProvider.sol. Audit date is the end date of the audit period (2022.05.17 - 2022.05.24).
- [17504] Spearbit 2025-09 — no match: Contracts extracted from findings context and file paths mentioned in the report. No explicit scope table, but contracts are clearly audited targets.
- [17505] Supremacy — no match: Only one contract in scope: FlashBuy.sol. Audit date from cover page.
- [17506] Veridise_270622.pdf — no match: Extracted from audit report dated June 27, 2022. Scope includes Helio DAO, Ceros, and modified MakerDAO contracts.
- [17507] BlockSec — no match: Scope explicitly lists three files: ClisBNBLaunchPoolDistributor.sol, EmissionVoting.sol, ListaVault.sol. Audit date is October 16, 2024 from the report header.
- [17508] BlockSec — no match: Scope explicitly lists SlisBNBProvider and VotingIncentive. BaseTokenProvider is referenced in findings as a parent contract.
- [17509] BlockSec — no match: Only FlashBuy.sol is explicitly listed in scope. Other contracts mentioned (AuctionProxy, DEX) are noted as out of scope.
- [17510] BlockSec — no match: Scope section explicitly lists 5 contracts under contracts/psm/. Audit date is November 22, 2024 from the report header.
- [17511] Salus — no match: All contracts listed in Appendix 1 - Files in Scope. Audit date from 'Dates Nov22 2024' in ProjectDashboard.
- [17512] Salus — no match: Three contracts in scope from Appendix 1. Audit date from 'Dates Oct212024' in ProjectDashboard.
- [17513] salus_lista_emission_v1.0.pdf — no match: Two contracts in scope: Interaction.sol and Jar.sol. Audit date from 'Dates Aug132024' in overview.
- [17514] Bailsec-CollateralYieldVault-20260618.pdf — no match: Audit report for Lista Dao Collateral Yield project. Scope includes CollateralYieldVault, SlisBNBProvider, SlisBNBXMinter, and RewardHarvester contracts. Date inferred from 'June 2026' on cover page.
- [17515] Bailsec-Credit-Liquidation-20260303.pdf — no match: The report explicitly lists MoolahOperateLib, CreditBroker, and Moolah as the contracts in scope. The date is given as 'February ‘2026' which is interpreted as February 2026, last day of month.
- [17516] Bailsec 2026-01 — no match: The report clearly lists five contracts in scope: CreditBroker, CreditBrokerMath, Moolah, CreditBrokerInterestRelayer, and CreditToken. The audit date is inferred from the cover page 'January ‘2026' which is interpreted as January 2026, and since no specific day is given, the last day of the month is used.
- [17517] Bailsec-FixedTerm-20260511.pdf — no match: The report is dated May 2026, so the audit date is set to the last day of that month.
- [17518] Bailsec-FixedTerm-20260628.pdf — no match: The report lists 7 contracts in scope: BrokerMath, BrokerInterestRelayer, LendingBroker, RateCalculator, PositionManager, BrokerLiquidator, and Moolah. The audit date is inferred from 'June ‘2026' in the header, interpreted as June 2026, with the last day of the month used.
- [17519] Bailsec 2025-04 — no match: Extracted 5 contracts from the audit report: Moolah, MoolahVault, Liquidator, VaultAllocator, InterestRateModel. The audit date is March 2025, interpreted as 2025-03-31.
- [17520] Bailsec 2025-05 — no match: Scope table lists four contracts: MoolahVault.sol, SlisBNBProvider.sol, BNBProvider.sol, and Moolah.sol. Audit date is March 2025, interpreted as end of month.
- [17521] Bailsec 2026-01 — no match: The report explicitly describes SlisBNBProvider and SlisBNBxMinter as the contracts in scope. The audit date is given as 'December ‘2025' which is interpreted as December 2025, last day of month.
- [17522] Bailsec 2025-11 — no match: The report covers two parts: Smart Collateral + Liquidators Extension. All contracts are explicitly listed in the scope sections. The date is inferred from 'September '2025' at the top, using the last day of the month.
- [17523] Bailsec 2026-01 — no match: Two contracts in scope: SlisBNBxMinter and SmartProvider. Audit date inferred from 'December ‘2025' as end of month.
- [17524] Bailsec 2026-03 — no match: Extracted 4 contracts from scope sections: PositionMigrator, Interaction, HelioProviderV2, SlisBNBProvider. Audit date inferred from 'March ‘2026' in header.
- [17525] Bailsec-YieldBuffer-AuditReport-20260611.pdf — no match: Four contracts explicitly listed in scope sections: BrokerInterestRelayer, CreditBrokerInterestRelayer, MoolahVault, BrokerInterestLockBuffer. Audit date inferred from 'June 2026' in header.
- [17526] Bailsec__Fixed_Term_and_rate_Oct2025.pdf — no match: Extracted contract names from report sections describing each contract. Date inferred from 'October 2025' in header, using last day of month.
- [17527] BlockSec 2025-04 — no match: Scope defined as src/ folder excluding mocks. Main contracts: Moolah, MoolahVault, VaultAllocator. Liquidator and InterestRateModel mentioned in notes but not in scope table.
- [17528] BlockSec 2025-05 — no match: Scope explicitly lists four files: MoolahVault.sol, Moolah.sol, SlisBNBProvider.sol, BNBProvider.sol. Audit date is May 12, 2025 from the report header.
- [17529] BlockSec 2025-11 — no match: Scope explicitly lists three contracts: SlisBNBProvider.sol, SmartProvider.sol, SlisBNBxMinter.sol. Audit date from cover page: December 1, 2025.
- [17530] Cantina 2026-03 — no match: Scope section explicitly lists four contracts with file paths. Audit date is March 24, 2026 from the cover page.
- [17531] Cantina 2026-02 — no match: Scope section explicitly lists all files under src/ with contract names extracted from file paths.
- [17532] Cantina_Fixed_Term_and_rate_12Nov2025.pdf — no match: Extracted contract names from findings context and file paths. Audit date from cover page.
- [17533] CertiK-CollateralYieldVault-20260618.pdf — no match: Two contracts in scope: CollateralYieldVault and RewardHarvester. Audit date from cover page and timeline.
- [17534] CertiK-REP-Lista-Dao-PositionManager-20260410.pdf — no match: Audit scope explicitly lists LendingBroker.sol and PositionManager.sol. BrokerMath and Moolah are also in scope as they are part of the codebase and referenced in findings.
- [17535] HashDit-CollateralYieldVault-20260618.pdf — no match: Scope table explicitly lists 6 contracts. Audit period ends June 15, 2026.
- [17536] HashDit-Idle-Market-20260526.pdf — no match: Extracted from Smart Contract List table and findings. Audit period end date used as audit date.
- [17537] HashDit-ListaLending-BrokerBatchOps-20260526.pdf — no match: Only one contract in scope: BatchManagementUtils.sol. Audit period ends May 26, 2027.
- [17538] HashDit-YieldBuffer-AuditReport-20260611.pdf — no match: Extracted 6 contracts from the scope table and findings. Audit period ends 11 Jun 2026.
- [17539] OpenZeppelin 2025-10 — no match: All contract names extracted from the Scope section and file paths. Audit date from cover page.
- [17540] Spearbit 2026-03 — no match: Scope section explicitly lists files under src/broker and src/moolah. Contract names extracted from file paths.
- [17541] WarRoom-MoolahVaultManager-Audit-Report-20260608.pdf — no match: Only MoolahVaultManager.sol is explicitly listed in the scope table. Other contracts (MoolahVault, Moolah) are referenced but not in scope.
- [17542] cantina_PositionManager_20260410.pdf — no match: Scope section explicitly lists two contracts: LendingBroker and PositionManager. Audit date is April 10, 2026 from the cover page.
- [17543] CertiK 2025-04 — no match: Extracted 5 contracts from the audit scope table. Audit date from cover page.
- [17544] BlockSec 2025-04 — no match: Scope section explicitly lists 5 contracts with file paths. Audit date is April 3, 2025 from the report header.
- [17545] Lista-Dao_Lista-token_audit_report_2024-07-12.pdf — no match: Scope appendix lists two files: VeLista.sol and VeListaDistributor.sol. Audit date from 'Dates Jul 12 2024' in overview.
- [17546] BlockSec — no match: Scope explicitly lists VeLista.sol and VeListaDistributor.sol as the only files covered.
- [17547] PeckShield — no match: Only one contract, ListaStakeManager, is explicitly in scope. No file paths provided.
- [17548] BlockSec — no match: Only one contract file (ListaStakeManager.sol) is explicitly listed in the scope section.
- [17549] Bailsec — no match: The report explicitly lists five contracts in scope: LisAster, LisAsterStaking, AsterVault, LisAsterRewards, LisAsterDistributor. The audit date is inferred from 'May ‘2026' in the header, using the last day of the month.
- [17550] Sherlock — no match: Scope section lists 5 files under src/lisaster/. Audit date is May 7-May 10, 2026, so end date is May 10.
- [17551] PeckShield — matched: Scope table on page 4 lists 'Lista Airdrop' as target; findings also reference ListaToken. No file paths provided.
- [17552] Supremacy — no match: Two contracts in scope: ListaAirdrop and MerkleVerifier. Audit date from cover page.
- [17553] BlockSec — matched: Only one contract in scope: ListaToken.sol
- [17554] Supremacy — matched: Only one contract in scope: ListaToken.sol
- [17555] PeckShield — no match: Scope explicitly lists 10 contracts on page 4. Audit date is September 26, 2024 from cover page.
- [17556] Salus — no match: All contracts listed in Appendix 1 - Files in Scope. Audit dates: Sep 26 2024 (from ProjectDashboard Dates).
- [17557] Bailsec — no match: Three contracts explicitly in scope: RWAEarnPool, RWAAdapter, OTCManager. Date from cover page: October 2025.
- [17558] BlockSec — no match: Scope explicitly states 'src/rwa/*' directory. Three contracts identified: RWAEarnPool, RWAAdapter, OTCManager. Audit date from cover page.
- [17559] Bailsec_lista_dao_SlisbnbProvided-VotingIncentive_final.pdf — no match: Extracted three contracts from scope: VotingIncentive, BaseTokenProvider (audited in context of SlisBNBProvider), and SlisBNBProvider. Audit date inferred from 'November 2024' on cover page, using last day of month.
- [17560] 260430-Cantina-Lista-V3-Final-Report.pdf — no match: All contracts listed in the Scope section (Section 2.1) of the audit report. The audit date is from the cover page: April 30, 2026.
- [17561] bailsec_lista_usdtLpdistributor_final_report.pdf — no match: The report explicitly lists two contracts in scope: CommonListaDistributor and USDTLpListaDistributor. The audit date is December 2024, interpreted as 2024-12-31.
- [17562] blocksec_lista_SlisbnbProvided-VotingIncentive_v1.0_signed.pdf — no match: Extracted from report title and scope section. SlisBNBProvider and VotingIncentive are explicitly in scope. BaseTokenProvider is referenced in findings as a parent contract.
- [17563] blocksec_lista_emission_v1.0.pdf — no match: Extracted 16 contract names from the audit scope listing in Section 1.1. Audit date found on cover page.
- [17564] blocksec_lista_usdtLpdistributor_v1.0-signed.pdf — no match: Only one contract in scope: USDTLpListaDistributor. Audit date from cover page.
- [17566] Bailsec-slisXAUE-Audit Report.pdf — no match: Extracted three contracts from the audit report: slisXAUE, XAUEAdapter, XAUTStaking. The audit date is June 2026, interpreted as end of month.
- [17567] CertiK-slisXAUE-Audit Report.pdf — no match: Three contracts in scope: SlisXAUE.sol, XAUEAdapter.sol, XAUTStaking.sol. Audit date from cover page: 'CertiK Assessed on Jun 8th, 2026'.
- [17568] HashDit-AsterRewards-20260615.pdf — no match: Scope table lists AsterRewards.sol and IAsterRewards.sol; AsterVault.sol is referenced in findings as a related contract but not explicitly in scope table.
- [17569] hashdit_atlasOracleAdaptor_audit_report_final_22_may_2026.pdf — no match: Only one contract in scope: AtlasOracleAdaptor.sol (misspelled as AltasOracleAdaptor in some places). Audit period ends 22 May 2026.
- [17570] 260430-HashDit-Lista-V3-Final-Report.pdf — no match: Scope table lists 'Core' and 'Periphery' as contract names, but findings reference specific files. Extracted all unique contract names from file paths mentioned in findings.
- [17571] 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf — no match: Extracted all contracts listed as NEW or MODIFIED in the scope section. The audit date is inferred from 'May ‘2026' in the header, using last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Bailsec | VotingIncentive | unmatched — not counted | — | Listed in scope section and detailed in detection overview. | no |
| Bailsec | BaseTokenProvider | unmatched — not counted | — | Mentioned as base contract for SlisBNBProvider and audited in correspondence with SlisBNBProvider. | no |
| Bailsec | SlisBNBProvider | unmatched — not counted | — | Listed in scope section and detailed in detection overview. | no |
| Bailsec 2025-09 | PancakeSwapV3LpProvider | unmatched — not counted | — | Main contract described in scope section | no |
| Bailsec 2025-09 | PancakeSwapV3LpStakingHub | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | PancakeSwapV3LpStakingVault | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | PcsV3LpNumbersHelper | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | PcsV3LpLiquidationHelper | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | LpUsd | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | Interaction | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | AuctionProxy | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | BaseTokenProvider | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | PumpBTCProvider | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | mBTCProvider | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | HelioETHProvider | unmatched — not counted | — | Described in scope section | no |
| Bailsec 2025-09 | HelioProviderV2 | unmatched — not counted | — | Described in scope section | no |
| BlockSec | Interaction | unmatched — not counted | — | listed in scope | no |
| BlockSec | DynamicDutyCalculator | unmatched — not counted | — | listed in scope | no |
| BlockSec | IDao | unmatched — not counted | — | listed in scope | no |
| BlockSec | IDynamicDutyCalculator | unmatched — not counted | — | listed in scope | no |
| BlockSec | FixedMath0x | unmatched — not counted | — | listed in scope | no |
| BlockSec | ListaOFT | unmatched — not counted | — | mentioned in findings and scope | no |
| BlockSec | ListaOFTAdapter | unmatched — not counted | — | mentioned in findings | no |
| BlockSec | TransferLimiter | unmatched — not counted | — | mentioned in findings | no |
| BlockSec 2025-09 | PancakeSwapV3LpProvider | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | PancakeSwapV3LpStakingHub | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | PancakeSwapV3LpStakingVault | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | PcsV3LpLiquidationHelper | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | PcsV3LpNumbersHelper | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | LpUsd | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | BaseTokenProvider | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | PumpBTCProvider | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | mBTCProvider | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | AuctionProxy | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-09 | Interaction | unmatched — not counted | — | listed in scope section 1.1 | no |
| CertiK 2025-09 | Interaction | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | AuctionProxy | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | BaseTokenProvider | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | PancakeSwapV3LpProvider | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | PancakeSwapV3LpStakingVault | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | API3Oracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | AsUsdfOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | BBtcOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | BtcOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | BusdOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | EthOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | EzEthOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | FdUsdOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | PumpBtcOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | PythOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | SlisBnbOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | SolvBTCBBNOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | SolvBtcOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | StoneOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | UsdfOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | UsdtOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | WBETHOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | asBnbOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | mBTCOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | mCAKEOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | mwBETHOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | sUsdxOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | wstETHOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | vow | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | jug | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | join | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | jar | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | dog | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | clip | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | spot | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | vat | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | mBTCProvider | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | PumpBTCProvider | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | PancakeSwapV3LpStakingHub | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | LisUSD | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | LpUsd | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | PcsV3LpLiquidationHelper | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | PcsV3LpNumbersHelper | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | DynamicDutyCalculator | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | BnbOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | HelioOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | ResilientOracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | Usd1Oracle | unmatched — not counted | — | listed in scope appendix | no |
| CertiK 2025-09 | WeEthOracle | unmatched — not counted | — | listed in scope appendix | no |
| Certik_300522.pdf | DssCdpManager | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | usb | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | clip | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | vat | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | CeToken | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | aBNBc | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | flap | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | ICerosRouter | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | mBNB | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | hMath | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | CeVault | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | Queue | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | IVault | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | ICertToken | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | jug | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | IHelioProvider | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | jar | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | join | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | HelioProvider | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | abaci | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | spot | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | pot | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | IDex | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | CerosRouter | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | BnbOracle | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | dog | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | HelioToken | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | vow | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | DAOInteraction | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | IDao | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | flop | unmatched — not counted | — | listed in scope table | no |
| Certik_300522.pdf | HelioRewards | unmatched — not counted | — | listed in scope table | no |
| PeckShield_250522.pdf | HelioRewards | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-003 | no |
| PeckShield_250522.pdf | DAOInteraction | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield_250522.pdf | Jar | unmatched — not counted | — | Target in finding PVE-006 | no |
| PeckShield_250522.pdf | CerosRouter | unmatched — not counted | — | Target in findings PVE-007, PVE-008 | no |
| PeckShield | API3Oracle | unmatched — not counted | — | listed in scope table | no |
| PeckShield | BoundValidator | unmatched — not counted | — | listed in scope table | no |
| PeckShield | ResilientOracle | unmatched — not counted | — | listed in scope table | no |
| PeckShield | OracleInterface | unmatched — not counted | — | listed in scope table | no |
| PeckShield | ListaToken | own contract | ListaToken (selected) `0xfceb31...9edc46` — deployed 2024-03-31 08:35:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield | ListaAirdrop | unmatched — not counted | — | Mentioned in finding PVE-001 as target | no |
| PeckShield | SlisBnbOracle | unmatched — not counted | — | listed in scope table and referenced throughout report | no |
| Salus | Interaction | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | DynamicDutyCalculator | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | FixedMath0x | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| SlowMist_100522.pdf | DAOInteraction | unmatched — not counted | — | listed in scope and findings | no |
| SlowMist_100522.pdf | Clipper | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | Dog | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | DssCdpManager | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | GemJoin | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | UsbJoin | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | Jug | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | mBNB | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | Pot | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | Spotter | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | Usb | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | Vat | unmatched — not counted | — | visibility table in report | no |
| SlowMist_100522.pdf | Vow | unmatched — not counted | — | visibility table in report | no |
| SlowMist_240522.pdf | CeVault | unmatched — not counted | — | listed in scope | no |
| SlowMist_240522.pdf | CerosRouter | unmatched — not counted | — | listed in scope | no |
| SlowMist_240522.pdf | HelioProvider | unmatched — not counted | — | listed in scope | no |
| Spearbit 2025-09 | PancakeSwapV3LpProvider | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit 2025-09 | PancakeSwapV3LpStakingHub | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit 2025-09 | PancakeSwapV3LpStakingVault | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit 2025-09 | PcsV3LpNumbersHelper | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit 2025-09 | PcsV3LpLiquidationHelper | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit 2025-09 | BaseTokenProvider | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit 2025-09 | mBTCProvider | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit 2025-09 | PumpBTCProvider | unmatched — not counted | — | Listed in scope and findings context | no |
| Spearbit 2025-09 | MasterChefV3 | unmatched — not counted | — | Listed in scope and findings context | no |
| Supremacy | FlashBuy | unmatched — not counted | — | listed in scope table | no |
| Veridise_270622.pdf | Interaction | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | HelioRewards | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | AuctionProxy | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | HelioProvider | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | CerosRouter | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | CeVault | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | CeToken | unmatched — not counted | — | mentioned in findings | no |
| Veridise_270622.pdf | usb | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | vat | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | jug | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | dog | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | clip | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | vow | unmatched — not counted | — | listed in scope and findings | no |
| Veridise_270622.pdf | GemJoin | unmatched — not counted | — | mentioned in findings | no |
| Veridise_270622.pdf | ICertToken | unmatched — not counted | — | listed in scope and findings | no |
| BlockSec | ClisBNBLaunchPoolDistributor | unmatched — not counted | — | listed in scope (Listing 1.1) | no |
| BlockSec | EmissionVoting | unmatched — not counted | — | listed in scope (Listing 1.1) | no |
| BlockSec | ListaVault | unmatched — not counted | — | listed in scope (Listing 1.1) | no |
| BlockSec | SlisBNBProvider | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec | VotingIncentive | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec | BaseTokenProvider | unmatched — not counted | — | mentioned in findings (section 2.2.1) | no |
| BlockSec | FlashBuy | unmatched — not counted | — | listed in scope as FlashBuy.sol | no |
| BlockSec | EarnPool | unmatched — not counted | — | listed in scope | no |
| BlockSec | LisUSDPoolSet | unmatched — not counted | — | listed in scope | no |
| BlockSec | PSM | unmatched — not counted | — | listed in scope | no |
| BlockSec | VaultManager | unmatched — not counted | — | listed in scope | no |
| BlockSec | VenusAdapter | unmatched — not counted | — | listed in scope | no |
| Salus | EarnPool | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | LisUSDPoolSet | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | PSM | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | VaultManager | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | VenusAdapter | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | EmissionVoting | unmatched — not counted | — | listed in scope (Appendix 1) | no |
| Salus | ListaVault | unmatched — not counted | — | listed in scope (Appendix 1) | no |
| Salus | ClisBNBLaunchPoolDistributor | unmatched — not counted | — | listed in scope (Appendix 1) | no |
| salus_lista_emission_v1.0.pdf | Interaction | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| salus_lista_emission_v1.0.pdf | Jar | unmatched — not counted | — | listed in Appendix-1 Files in Scope | no |
| salus_lista_emission_v1.0.pdf | BorrowLisUSDListaDistributor | unmatched — not counted | — | listed in scope appendix | no |
| salus_lista_emission_v1.0.pdf | CommonListaDistributor | unmatched — not counted | — | listed in scope appendix | no |
| salus_lista_emission_v1.0.pdf | ERC20LpListaDistributor | unmatched — not counted | — | listed in scope appendix | no |
| salus_lista_emission_v1.0.pdf | ERC721LpListaDistributor | unmatched — not counted | — | listed in scope appendix | no |
| salus_lista_emission_v1.0.pdf | ListaVault | unmatched — not counted | — | listed in scope appendix | no |
| salus_lista_emission_v1.0.pdf | OracleCenter | unmatched — not counted | — | listed in scope appendix | no |
| salus_lista_emission_v1.0.pdf | SlisBnbDistributor | unmatched — not counted | — | listed in scope appendix | no |
| salus_lista_emission_v1.0.pdf | StakeLisUSDListaDistributor | unmatched — not counted | — | listed in scope appendix | no |
| salus_lista_emission_v1.0.pdf | TickMath | unmatched — not counted | — | listed in scope appendix | no |
| Bailsec-CollateralYieldVault-20260618.pdf | CollateralYieldVault | unmatched — not counted | — | listed in scope and described in report | no |
| Bailsec-CollateralYieldVault-20260618.pdf | SlisBNBProvider | unmatched — not counted | — | listed in scope and described in report | no |
| Bailsec-CollateralYieldVault-20260618.pdf | SlisBNBXMinter | unmatched — not counted | — | listed in scope and described in report | no |
| Bailsec-CollateralYieldVault-20260618.pdf | RewardHarvester | unmatched — not counted | — | listed in scope and described in report | no |
| Bailsec-Credit-Liquidation-20260303.pdf | MoolahOperateLib | unmatched — not counted | — | listed in scope as a library | no |
| Bailsec-Credit-Liquidation-20260303.pdf | CreditBroker | unmatched — not counted | — | listed in scope as a contract undergoing differential audit | no |
| Bailsec-Credit-Liquidation-20260303.pdf | Moolah | unmatched — not counted | — | listed in scope as a contract undergoing differential audit | no |
| Bailsec 2026-01 | CreditBroker | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-01 | CreditBrokerMath | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-01 | Moolah | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-01 | CreditBrokerInterestRelayer | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-01 | CreditToken | unmatched — not counted | — | listed in scope | no |
| Bailsec-FixedTerm-20260511.pdf | BrokerMath | unmatched — not counted | — | listed in scope section 'Detection BrokerMath' | no |
| Bailsec-FixedTerm-20260511.pdf | BrokerInterestRelayer | unmatched — not counted | — | listed in scope section 'BrokerInterestRelayer' | no |
| Bailsec-FixedTerm-20260511.pdf | LendingBroker | unmatched — not counted | — | listed in scope section 'LendingBroker' | no |
| Bailsec-FixedTerm-20260511.pdf | RateCalculator | unmatched — not counted | — | listed in scope section 'RateCalculator' | no |
| Bailsec-FixedTerm-20260511.pdf | PositionManager | unmatched — not counted | — | listed in scope section 'PositionManager' | no |
| Bailsec-FixedTerm-20260511.pdf | BrokerLiquidator | unmatched — not counted | — | listed in scope section 'BrokerLiquidator' | no |
| Bailsec-FixedTerm-20260511.pdf | Moolah | unmatched — not counted | — | listed in scope section 'Moolah' | no |
| Bailsec-FixedTerm-20260628.pdf | BrokerMath | unmatched — not counted | — | listed in scope section | no |
| Bailsec-FixedTerm-20260628.pdf | BrokerInterestRelayer | unmatched — not counted | — | listed in scope section | no |
| Bailsec-FixedTerm-20260628.pdf | LendingBroker | unmatched — not counted | — | listed in scope section | no |
| Bailsec-FixedTerm-20260628.pdf | RateCalculator | unmatched — not counted | — | listed in scope section | no |
| Bailsec-FixedTerm-20260628.pdf | PositionManager | unmatched — not counted | — | listed in scope section | no |
| Bailsec-FixedTerm-20260628.pdf | BrokerLiquidator | unmatched — not counted | — | listed in scope section | no |
| Bailsec-FixedTerm-20260628.pdf | Moolah | unmatched — not counted | — | listed in scope section | no |
| Bailsec 2025-04 | Moolah | unmatched — not counted | — | Core contract described in report | no |
| Bailsec 2025-04 | MoolahVault | unmatched — not counted | — | Vault contract described in report | no |
| Bailsec 2025-04 | Liquidator | unmatched — not counted | — | Liquidator contract described in report | no |
| Bailsec 2025-04 | VaultAllocator | unmatched — not counted | — | Allocator contract described in report | no |
| Bailsec 2025-04 | InterestRateModel | unmatched — not counted | — | Interest rate model contract described in report | no |
| Bailsec 2025-05 | Moolah | unmatched — not counted | — | listed in scope table | no |
| Bailsec 2025-05 | MoolahVault | unmatched — not counted | — | listed in scope table | no |
| Bailsec 2025-05 | SlisBNBProvider | unmatched — not counted | — | listed in scope table | no |
| Bailsec 2025-05 | BNBProvider | unmatched — not counted | — | listed in scope table | no |
| Bailsec 2026-01 | SlisBNBProvider | unmatched — not counted | — | Listed in scope as the main contract being audited, with migration to new minter. | no |
| Bailsec 2026-01 | SlisBNBxMinter | unmatched — not counted | — | Listed in scope as the new contract handling accounting and minting. | no |
| Bailsec 2025-11 | SmartProvider | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2025-11 | Moolah | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2025-11 | StableSwapFactory | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2025-11 | StableSwapPool | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2025-11 | StableSwapPoolInfo | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2025-11 | StableSwapLP | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2025-11 | StableSwapLPCollateral | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2025-11 | Liquidator | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2025-11 | PublicLiquidator | unmatched — not counted | — | Listed in scope section and described in detail | no |
| Bailsec 2026-01 | SlisBNBxMinter | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-01 | SmartProvider | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-03 | PositionMigrator | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-03 | Interaction | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-03 | HelioProviderV2 | unmatched — not counted | — | listed in scope | no |
| Bailsec 2026-03 | SlisBNBProvider | unmatched — not counted | — | listed in scope | no |
| Bailsec-YieldBuffer-AuditReport-20260611.pdf | BrokerInterestRelayer | unmatched — not counted | — | Listed in scope section: 'BrokerInterestRelayer' | no |
| Bailsec-YieldBuffer-AuditReport-20260611.pdf | CreditBrokerInterestRelayer | unmatched — not counted | — | Listed in scope section: 'CreditBrokerInterestRelayer' | no |
| Bailsec-YieldBuffer-AuditReport-20260611.pdf | MoolahVault | unmatched — not counted | — | Listed in scope section: 'MoolahVault' | no |
| Bailsec-YieldBuffer-AuditReport-20260611.pdf | BrokerInterestLockBuffer | unmatched — not counted | — | Listed in scope section: 'BrokerInterestLockBuffer' | no |
| Bailsec__Fixed_Term_and_rate_Oct2025.pdf | LendingBroker | unmatched — not counted | — | Main contract handling loans, described in detail in report. | no |
| Bailsec__Fixed_Term_and_rate_Oct2025.pdf | RateCalculator | unmatched — not counted | — | Implements interest accrual for dynamic loans. | no |
| Bailsec__Fixed_Term_and_rate_Oct2025.pdf | BrokerMath | unmatched — not counted | — | Helper functions for LendingBroker, including oracle and accounting. | no |
| Bailsec__Fixed_Term_and_rate_Oct2025.pdf | BrokerInterestRelayer | unmatched — not counted | — | Supplies loan tokens to Moolah vault. | no |
| Bailsec__Fixed_Term_and_rate_Oct2025.pdf | Moolah | unmatched — not counted | — | Underlying lending protocol vault, changes in scope. | no |
| Bailsec__Fixed_Term_and_rate_Oct2025.pdf | PriceLib | unmatched — not counted | — | Fetches prices from oracle or broker. | no |
| BlockSec 2025-04 | Moolah | unmatched — not counted | — | listed in scope and findings | no |
| BlockSec 2025-04 | MoolahVault | unmatched — not counted | — | listed in scope and findings | no |
| BlockSec 2025-04 | VaultAllocator | unmatched — not counted | — | mentioned in findings | no |
| BlockSec 2025-04 | Liquidator | unmatched — not counted | — | mentioned in notes | no |
| BlockSec 2025-04 | InterestRateModel | unmatched — not counted | — | mentioned in notes | no |
| BlockSec 2025-05 | MoolahVault | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-05 | Moolah | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-05 | SlisBNBProvider | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-05 | BNBProvider | unmatched — not counted | — | listed in scope section 1.1 | no |
| BlockSec 2025-11 | SlisBNBProvider | unmatched — not counted | — | listed in scope | no |
| BlockSec 2025-11 | SmartProvider | unmatched — not counted | — | listed in scope | no |
| BlockSec 2025-11 | SlisBNBxMinter | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-03 | Interaction | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-03 | SlisBNBProvider | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-03 | HelioProviderV2 | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-03 | PositionMigrator | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-02 | CreditBroker | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-02 | CreditBrokerInterestRelayer | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-02 | ICreditBroker | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-02 | ICreditBrokerInterestRelayer | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-02 | CreditBrokerMath | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-02 | Moolah | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-02 | CreditToken | unmatched — not counted | — | listed in scope | no |
| Cantina 2026-02 | ICreditToken | unmatched — not counted | — | listed in scope | no |
| Cantina_Fixed_Term_and_rate_12Nov2025.pdf | LendingBroker | unmatched — not counted | — | listed in scope and findings | no |
| Cantina_Fixed_Term_and_rate_12Nov2025.pdf | Moolah | unmatched — not counted | — | listed in scope and findings | no |
| Cantina_Fixed_Term_and_rate_12Nov2025.pdf | RateCalculator | unmatched — not counted | — | listed in scope and findings | no |
| Cantina_Fixed_Term_and_rate_12Nov2025.pdf | BrokerMath | unmatched — not counted | — | listed in scope and findings | no |
| Cantina_Fixed_Term_and_rate_12Nov2025.pdf | PriceLib | unmatched — not counted | — | listed in scope and findings | no |
| Cantina_Fixed_Term_and_rate_12Nov2025.pdf | MoolahVault | unmatched — not counted | — | mentioned in scope and findings | no |
| CertiK-CollateralYieldVault-20260618.pdf | CollateralYieldVault | unmatched — not counted | — | listed in scope table | no |
| CertiK-CollateralYieldVault-20260618.pdf | RewardHarvester | unmatched — not counted | — | listed in scope table | no |
| CertiK-REP-Lista-Dao-PositionManager-20260410.pdf | LendingBroker | unmatched — not counted | — | listed in scope | no |
| CertiK-REP-Lista-Dao-PositionManager-20260410.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| CertiK-REP-Lista-Dao-PositionManager-20260410.pdf | BrokerMath | unmatched — not counted | — | referenced in findings as in-scope library | no |
| CertiK-REP-Lista-Dao-PositionManager-20260410.pdf | Moolah | unmatched — not counted | — | referenced in findings as core contract | no |
| HashDit-CollateralYieldVault-20260618.pdf | CollateralYieldVault | unmatched — not counted | — | listed in scope table | no |
| HashDit-CollateralYieldVault-20260618.pdf | RewardHarvester | unmatched — not counted | — | listed in scope table | no |
| HashDit-CollateralYieldVault-20260618.pdf | deploy_collateral_yield_vault | unmatched — not counted | — | listed in scope table | no |
| HashDit-CollateralYieldVault-20260618.pdf | ICollateralYieldVault | unmatched — not counted | — | listed in scope table | no |
| HashDit-CollateralYieldVault-20260618.pdf | IProvider | unmatched — not counted | — | listed in scope table | no |
| HashDit-CollateralYieldVault-20260618.pdf | IStakeManager | unmatched — not counted | — | listed in scope table | no |
| HashDit-Idle-Market-20260526.pdf | IdleOracle | unmatched — not counted | — | listed in Smart Contract List table | no |
| HashDit-Idle-Market-20260526.pdf | IdleCollateralToken | unmatched — not counted | — | listed in Smart Contract List table | no |
| HashDit-Idle-Market-20260526.pdf | MoolahVault | unmatched — not counted | — | mentioned in findings [I04] and [I05] | no |
| HashDit-Idle-Market-20260526.pdf | Moolah | unmatched — not counted | — | mentioned in finding [I05] | no |
| HashDit-ListaLending-BrokerBatchOps-20260526.pdf | BatchManagementUtils | unmatched — not counted | — | listed in scope table | no |
| HashDit-YieldBuffer-AuditReport-20260611.pdf | BrokerInterestLockBuffer | unmatched — not counted | — | listed in scope table with verdict Medium | no |
| HashDit-YieldBuffer-AuditReport-20260611.pdf | MoolahVault | unmatched — not counted | — | listed in scope table with verdict Low | no |
| HashDit-YieldBuffer-AuditReport-20260611.pdf | BrokerInterestRelayer | unmatched — not counted | — | listed in scope table with verdict Green | no |
| HashDit-YieldBuffer-AuditReport-20260611.pdf | CreditBrokerInterestRelayer | unmatched — not counted | — | listed in scope table with verdict Green | no |
| HashDit-YieldBuffer-AuditReport-20260611.pdf | LendingBroker | unmatched — not counted | — | mentioned in finding M01 as affected contract | no |
| HashDit-YieldBuffer-AuditReport-20260611.pdf | deploy_brokerInterestLockBuffer | unmatched — not counted | — | listed in scope table with verdict Informational | no |
| OpenZeppelin 2025-10 | StableSwapFactory | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin 2025-10 | StableSwapLP | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin 2025-10 | StableSwapLPCollateral | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin 2025-10 | StableSwapPool | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin 2025-10 | StableSwapPoolInfo | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin 2025-10 | Moolah | unmatched — not counted | — | listed in scope | no |
| OpenZeppelin 2025-10 | SmartProvider | unmatched — not counted | — | listed in scope | no |
| Spearbit 2026-03 | CreditBroker | unmatched — not counted | — | listed in scope | no |
| Spearbit 2026-03 | ICreditBroker | unmatched — not counted | — | listed in scope | no |
| Spearbit 2026-03 | Moolah | unmatched — not counted | — | listed in scope | no |
| Spearbit 2026-03 | IMoolah | unmatched — not counted | — | listed in scope | no |
| Spearbit 2026-03 | ErrorsLib | unmatched — not counted | — | listed in scope | no |
| WarRoom-MoolahVaultManager-Audit-Report-20260608.pdf | MoolahVaultManager | unmatched — not counted | — | Listed in scope table and throughout findings | no |
| cantina_PositionManager_20260410.pdf | LendingBroker | unmatched — not counted | — | listed in scope | no |
| cantina_PositionManager_20260410.pdf | PositionManager | unmatched — not counted | — | listed in scope | no |
| CertiK 2025-04 | ERC20LpTokenProvider | unmatched — not counted | — | listed in scope table | no |
| CertiK 2025-04 | ILpToken | unmatched — not counted | — | listed in scope table | no |
| CertiK 2025-04 | IERC20TokenProvider | unmatched — not counted | — | listed in scope table | no |
| CertiK 2025-04 | IThenaErc20LpToken | unmatched — not counted | — | listed in scope table | no |
| CertiK 2025-04 | IStableSwap | unmatched — not counted | — | listed in scope table | no |
| BlockSec 2025-04 | ERC20LpTokenProvider | unmatched — not counted | — | listed in scope | no |
| BlockSec 2025-04 | IERC20TokenProvider | unmatched — not counted | — | listed in scope | no |
| BlockSec 2025-04 | ILpToken | unmatched — not counted | — | listed in scope | no |
| BlockSec 2025-04 | IThenaErc20LpToken | unmatched — not counted | — | listed in scope | no |
| BlockSec 2025-04 | IStableSwap | unmatched — not counted | — | listed in scope | no |
| Lista-Dao_Lista-token_audit_report_2024-07-12.pdf | VeLista | unmatched — not counted | — | listed in scope appendix | no |
| Lista-Dao_Lista-token_audit_report_2024-07-12.pdf | VeListaDistributor | unmatched — not counted | — | listed in scope appendix | no |
| BlockSec | VeLista | unmatched — not counted | — | listed in scope | no |
| BlockSec | VeListaDistributor | unmatched — not counted | — | listed in scope | no |
| PeckShield | ListaStakeManager | unmatched — not counted | — | Listed in scope table and throughout report as the target contract | no |
| BlockSec | ListaStakeManager | unmatched — not counted | — | listed in scope as the only file covered | no |
| Bailsec | LisAster | unmatched — not counted | — | Listed in scope section as 'LisAster' | no |
| Bailsec | LisAsterStaking | unmatched — not counted | — | Listed in scope section as 'LisAsterStaking' | no |
| Bailsec | AsterVault | unmatched — not counted | — | Listed in scope section as 'AsterVault' | no |
| Bailsec | LisAsterRewards | unmatched — not counted | — | Listed in scope section as 'LisAsterRewards' | no |
| Bailsec | LisAsterDistributor | unmatched — not counted | — | Listed in scope section as 'LisAsterDistributor' | no |
| Sherlock | AsterVault | unmatched — not counted | — | listed in scope | no |
| Sherlock | LisAsterDistributor | unmatched — not counted | — | listed in scope | no |
| Sherlock | LisAsterRewards | unmatched — not counted | — | listed in scope | no |
| Sherlock | LisAster | unmatched — not counted | — | listed in scope | no |
| Sherlock | LisAsterStaking | unmatched — not counted | — | listed in scope | no |
| PeckShield | ListaAirdrop | unmatched — not counted | — | Listed in scope table and throughout report as target contract | no |
| PeckShield | ListaToken | own contract | ListaToken (selected) `0xfceb31...9edc46` — deployed 2024-03-31 08:35:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Supremacy | ListaAirdrop | unmatched — not counted | — | listed in scope table | no |
| Supremacy | MerkleVerifier | unmatched — not counted | — | listed in scope table | no |
| BlockSec | ListaToken | own contract | ListaToken (selected) `0xfceb31...9edc46` — deployed 2024-03-31 08:35:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Supremacy | ListaToken | own contract | ListaToken (selected) `0xfceb31...9edc46` — deployed 2024-03-31 08:35:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield | CommonListaDistributor | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | VeListaAutoCompounder | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | VeLista | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | VeListaDistributor | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | ERC20LpListaDistributor | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | ListaVault | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | LpProxy | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | PancakeStaking | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | StakingVault | unmatched — not counted | — | listed in scope on page 4 | no |
| PeckShield | ThenaStaking | unmatched — not counted | — | listed in scope on page 4 | no |
| Salus | VeListaAutoCompounder | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | VeLista | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | VeListaDistributor | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | ERC20LpListaDistributor | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | CommonListaDistributor | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | ListaVault | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | LpProxy | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | PancakeStaking | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | StakingVault | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Salus | ThenaStaking | unmatched — not counted | — | listed in Appendix 1 - Files in Scope | no |
| Bailsec | RWAEarnPool | unmatched — not counted | — | listed in scope | no |
| Bailsec | RWAAdapter | unmatched — not counted | — | listed in scope | no |
| Bailsec | OTCManager | unmatched — not counted | — | listed in scope | no |
| BlockSec | RWAEarnPool | unmatched — not counted | — | Listed in scope directory src/rwa/* | no |
| BlockSec | RWAAdapter | unmatched — not counted | — | Listed in scope directory src/rwa/* | no |
| BlockSec | OTCManager | unmatched — not counted | — | Listed in scope directory src/rwa/* | no |
| Bailsec_lista_dao_SlisbnbProvided-VotingIncentive_final.pdf | VotingIncentive | unmatched — not counted | — | Listed in scope section and detailed in detection overview. | no |
| Bailsec_lista_dao_SlisbnbProvided-VotingIncentive_final.pdf | BaseTokenProvider | unmatched — not counted | — | Mentioned as base contract for SlisBNBProvider and audited in correspondence with SlisBNBProvider. | no |
| Bailsec_lista_dao_SlisbnbProvided-VotingIncentive_final.pdf | SlisBNBProvider | unmatched — not counted | — | Listed in scope section and detailed in detection overview. | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | ListaV3Factory | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | ListaV3Pool | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | ListaV3PoolDeployer | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | NoDelegateCall | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | BitMath | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | FixedPoint128 | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | FixedPoint96 | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | LowGasSafeMath | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | Position | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | SqrtPriceMath | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | SwapMath | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | TickBitmap | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | TickMath | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | UnsafeMath | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | NonfungiblePositionManager | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | NonfungibleTokenPositionDescriptor | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | SwapRouter | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | V3Migrator | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | BlockTimestamp | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | ERC721Permit | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | ERC721PermitUpgradeable | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | LiquidityManagement | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PeripheryImmutableState | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PeripheryPayments | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PeripheryPaymentsWithFee | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PeripheryValidation | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PoolInitializer | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | SelfPermit | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | ListaInterfaceMulticall | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | Quoter | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | QuoterV2 | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | TickLens | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | BytesLib | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | CallbackValidation | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | ChainId | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | HexStrings | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | LiquidityAmounts | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | NFTDescriptor | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | NFTSVG | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | OracleLibrary | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | Path | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PoolAddress | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PoolTicksCounter | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PositionKey | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | PositionValue | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | SqrtPriceMathPartial | unmatched — not counted | — | listed in scope | no |
| 260430-Cantina-Lista-V3-Final-Report.pdf | TokenRatioSortOrder | unmatched — not counted | — | listed in scope | no |
| bailsec_lista_usdtLpdistributor_final_report.pdf | CommonListaDistributor | unmatched — not counted | — | listed in scope | no |
| bailsec_lista_usdtLpdistributor_final_report.pdf | USDTLpListaDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_SlisbnbProvided-VotingIncentive_v1.0_signed.pdf | SlisBNBProvider | unmatched — not counted | — | listed in scope section 1.1 | no |
| blocksec_lista_SlisbnbProvided-VotingIncentive_v1.0_signed.pdf | VotingIncentive | unmatched — not counted | — | listed in scope section 1.1 | no |
| blocksec_lista_SlisbnbProvided-VotingIncentive_v1.0_signed.pdf | BaseTokenProvider | unmatched — not counted | — | mentioned in findings (2.2.1) | no |
| blocksec_lista_emission_v1.0.pdf | TickMath | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | BorrowLisUSDListaDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | CommonListaDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | ERC20LpListaDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | ERC721LpListaDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | ListaVault | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | OracleCenter | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | SlisBnbDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | IDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | INonfungiblePositionManager | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | IVault | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | OracleInterface | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | Interaction | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | Jar | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | IStakeLisUSDListaDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_emission_v1.0.pdf | IBorrowLisUSDListaDistributor | unmatched — not counted | — | listed in scope | no |
| blocksec_lista_usdtLpdistributor_v1.0-signed.pdf | USDTLpListaDistributor | unmatched — not counted | — | Listed in scope section and throughout findings | no |
| Bailsec-slisXAUE-Audit Report.pdf | slisXAUE | unmatched — not counted | — | described as upgradeable ERC20 token representing shares within XAUTStaking | no |
| Bailsec-slisXAUE-Audit Report.pdf | XAUEAdapter | unmatched — not counted | — | described as adapter contract between XAUTStaking and CoboFundToken | no |
| Bailsec-slisXAUE-Audit Report.pdf | XAUTStaking | unmatched — not counted | — | described as simple asynchronous vault for XAUT deposits | no |
| CertiK-slisXAUE-Audit Report.pdf | SlisXAUE | unmatched — not counted | — | listed in scope table | no |
| CertiK-slisXAUE-Audit Report.pdf | XAUEAdapter | unmatched — not counted | — | listed in scope table | no |
| CertiK-slisXAUE-Audit Report.pdf | XAUTStaking | unmatched — not counted | — | listed in scope table | no |
| HashDit-AsterRewards-20260615.pdf | AsterRewards | unmatched — not counted | — | listed in scope table | no |
| HashDit-AsterRewards-20260615.pdf | IAsterRewards | unmatched — not counted | — | listed in scope table | no |
| HashDit-AsterRewards-20260615.pdf | AsterVault | unmatched — not counted | — | mentioned in findings as related contract | no |
| hashdit_atlasOracleAdaptor_audit_report_final_22_may_2026.pdf | AtlasOracleAdaptor | unmatched — not counted | — | listed in scope table and throughout findings | no |
| 260430-HashDit-Lista-V3-Final-Report.pdf | ListaV3Factory | unmatched — not counted | — | Listed in scope table and findings | no |
| 260430-HashDit-Lista-V3-Final-Report.pdf | NonfungiblePositionManager | unmatched — not counted | — | Listed in scope table and findings | no |
| 260430-HashDit-Lista-V3-Final-Report.pdf | ListaV3Pool | unmatched — not counted | — | Findings reference ListaV3Pool.sol | no |
| 260430-HashDit-Lista-V3-Final-Report.pdf | TransferHelper | unmatched — not counted | — | Finding [H01] references TransferHelper.sol | no |
| 260430-HashDit-Lista-V3-Final-Report.pdf | SwapMath | unmatched — not counted | — | Finding [M03] references SwapMath.sol | no |
| 260430-HashDit-Lista-V3-Final-Report.pdf | SqrtPriceMath | unmatched — not counted | — | Finding [I06] references SqrtPriceMath.sol | no |
| 260430-HashDit-Lista-V3-Final-Report.pdf | TickMath | unmatched — not counted | — | Finding [I06] references TickMath.sol | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | ERC721PermitUpgradeable | unmatched — not counted | — | listed as NEW in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | NoDelegateCall | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | UniswapV3Factory | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | UniswapV3Pool | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | UniswapV3PoolDeployer | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | Oracle | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | Position | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | SqrtPriceMath | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | SwapMath | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | Tick | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | TickBitmap | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | NonfungiblePositionManager | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | NonfungibleTokenPositionDescriptor | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | SwapRouter | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | V3Migrator | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | ERC721Permit | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | LiquidityManagement | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | PeripheryPayments | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | PeripheryPaymentsWithFee | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | PoolInitializer | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | SelfPermit | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | Quoter | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | QuoterV2 | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | TickLens | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | UniswapInterfaceMulticall | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | CallbackValidation | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | LiquidityAmounts | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | NFTDescriptor | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | NFTSVG | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | OracleLibrary | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | PoolAddress | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | PoolTicksCounter | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | PositionValue | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | SqrtPriceMathPartial | unmatched — not counted | — | listed as MODIFIED in scope | no |
| 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf | TransferHelper | unmatched — not counted | — | listed as MODIFIED in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 148 |
| upstream | 0 |
| standard_library | 47 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 77
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 517 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=81
- Match method counts: unique_name=4

Zero-match audit list:

- [17490] Bailsec
- [17491] Bailsec 2025-09
- [17492] BlockSec
- [17493] BlockSec
- [17494] BlockSec 2025-09
- [17495] CertiK 2025-09
- [17496] Certik_300522.pdf
- [17497] PeckShield_250522.pdf
- [17498] PeckShield
- [17500] PeckShield
- [17501] Salus
- [17502] SlowMist_100522.pdf
- [17503] SlowMist_240522.pdf
- [17504] Spearbit 2025-09
- [17505] Supremacy
- [17506] Veridise_270622.pdf
- [17507] BlockSec
- [17508] BlockSec
- [17509] BlockSec
- [17510] BlockSec
- [17511] Salus
- [17512] Salus
- [17513] salus_lista_emission_v1.0.pdf
- [17514] Bailsec-CollateralYieldVault-20260618.pdf
- [17515] Bailsec-Credit-Liquidation-20260303.pdf
- [17516] Bailsec 2026-01
- [17517] Bailsec-FixedTerm-20260511.pdf
- [17518] Bailsec-FixedTerm-20260628.pdf
- [17519] Bailsec 2025-04
- [17520] Bailsec 2025-05
- [17521] Bailsec 2026-01
- [17522] Bailsec 2025-11
- [17523] Bailsec 2026-01
- [17524] Bailsec 2026-03
- [17525] Bailsec-YieldBuffer-AuditReport-20260611.pdf
- [17526] Bailsec__Fixed_Term_and_rate_Oct2025.pdf
- [17527] BlockSec 2025-04
- [17528] BlockSec 2025-05
- [17529] BlockSec 2025-11
- [17530] Cantina 2026-03
- [17531] Cantina 2026-02
- [17532] Cantina_Fixed_Term_and_rate_12Nov2025.pdf
- [17533] CertiK-CollateralYieldVault-20260618.pdf
- [17534] CertiK-REP-Lista-Dao-PositionManager-20260410.pdf
- [17535] HashDit-CollateralYieldVault-20260618.pdf
- [17536] HashDit-Idle-Market-20260526.pdf
- [17537] HashDit-ListaLending-BrokerBatchOps-20260526.pdf
- [17538] HashDit-YieldBuffer-AuditReport-20260611.pdf
- [17539] OpenZeppelin 2025-10
- [17540] Spearbit 2026-03
- [17541] WarRoom-MoolahVaultManager-Audit-Report-20260608.pdf
- [17542] cantina_PositionManager_20260410.pdf
- [17543] CertiK 2025-04
- [17544] BlockSec 2025-04
- [17545] Lista-Dao_Lista-token_audit_report_2024-07-12.pdf
- [17546] BlockSec
- [17547] PeckShield
- [17548] BlockSec
- [17549] Bailsec
- [17550] Sherlock
- [17552] Supremacy
- [17555] PeckShield
- [17556] Salus
- [17557] Bailsec
- [17558] BlockSec
- [17559] Bailsec_lista_dao_SlisbnbProvided-VotingIncentive_final.pdf
- [17560] 260430-Cantina-Lista-V3-Final-Report.pdf
- [17561] bailsec_lista_usdtLpdistributor_final_report.pdf
- [17562] blocksec_lista_SlisbnbProvided-VotingIncentive_v1.0_signed.pdf
- [17563] blocksec_lista_emission_v1.0.pdf
- [17564] blocksec_lista_usdtLpdistributor_v1.0-signed.pdf
- [17566] Bailsec-slisXAUE-Audit Report.pdf
- [17567] CertiK-slisXAUE-Audit Report.pdf
- [17568] HashDit-AsterRewards-20260615.pdf
- [17569] hashdit_atlasOracleAdaptor_audit_report_final_22_may_2026.pdf
- [17570] 260430-HashDit-Lista-V3-Final-Report.pdf
- [17571] 260515-Bailsec-Lista-V3-Differential-Final-Report.pdf

Fork inheritance lineage and inherited audits are included when available.
