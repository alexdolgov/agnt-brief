# Agentic Audit Brief: Pac Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Pac Finance (`pac-finance`)
- Website: [https://pac.finance/](https://pac.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast, blast-sepolia
- Contract surface: 178 unique implementations (178 raw deployments)
- Coverage basis: 0/38 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $20,153,355.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Pac Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 38 contract row(s) across blast, blast-sepolia. Structural roles: 38 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 38
- Structural roles: unclassified (38)
- Contract kinds: contract (30), abstract (8)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 87 contracts are derived from known codebases. 87 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AaveOracle-Blast (`0xaf7732...31e6b1`, chain 81457)
- ACLManager-Blast (`0xfe1d7b...543e21`, chain 81457)
- API3_Oracle_Wrapper (`0x17f968...bd4b81`, chain 81457)
- AToken-Blast (`0x43e3f6...1364f5`, chain 81457)
- BorrowLogic (`0xe39cb2...12bea1`, chain 81457)
- BridgeLogic (`0xcad2ae...f6e219`, chain 81457)
- CLFixedPriceSynchronicityPriceAdapter (`0xf04383...74b036`, chain 81457)
- ConfiguratorLogic (`0x24ffb7...caa811`, chain 81457)
- DefaultReserveInterestRateStrategy (`0x35c39e...d05d23`, chain 81457)
- DefaultReserveInterestRateStrategy-a46fa316-f818-4e22-92de-34f38485903e (`0xaf2f92...de797f`, chain 81457)
- DefaultReserveInterestRateStrategy-f7853456-39ee-49c5-9b2e-3b10d415ab4b (`0x2dcf30...46ed03`, chain 81457)
- DelegationAwareAToken-Blast (`0x16ae70...a78c98`, chain 81457)
- DTXVaultOracle (`0x9e2e20...07186c`, chain 81457)
- EmissionManager (`0x4dfe48...e09abc`, chain 81457)
- EModeLogic (`0xdba990...f81b8c`, chain 81457)
- ERC20OracleWrapper (`0x1a8476...9343d9`, chain 81457)
- ExchangeRateAssetPriceAdapter (`0x6996d7...4341d7`, chain 81457)
- EZETH_ORACLE (`0x167395...a973ca`, chain 81457)
- ezETH-AToken-Blast (`0x01bfae...be994d`, chain 81457)
- ezETH-StableDebtToken-Blast (`0x6373cf...a6c4f6`, chain 81457)
- ezETH-VariableDebtToken-Blast (`0x60faaa...714e06`, chain 81457)
- FlashLoanLogic (`0xbc1c5a...40298c`, chain 81457)
- fwUSDB-AToken-Blast (`0xeebde4...11a576`, chain 81457)
- fwUSDB-StableDebtToken-Blast (`0x9a0df5...f777e8`, chain 81457)
- fwUSDB-VariableDebtToken-Blast (`0x0919d4...848cf9`, chain 81457)
- fwWETH-AToken-Blast (`0x2b8476...c9cbed`, chain 81457)
- fwWETH-StableDebtToken-Blast (`0x7d87e3...54d21b`, chain 81457)
- fwWETH-VariableDebtToken-Blast (`0xbcdeae...dc0c46`, chain 81457)
- GasRefund (`0x90db38...50b4b4`, chain 81457)
- GasRefundImpl (`0xae2d37...bb119b`, chain 81457)
- GasRefundProxy (`0xbcd03b...b35ef0`, chain 81457)
- IncentivesProxy (`0x13c836...013795`, chain 81457)
- IncentivesV2-Implementation (`0xd2c8e4...935874`, chain 81457)
- LiquidationLogic (`0x74df6b...610850`, chain 81457)
- NativeYieldDistributeImpl (`0x53d6e5...98148a`, chain 81457)
- NativeYieldDistributeProxy-USDB (`0xad49ee...0becc3`, chain 81457)
- NativeYieldDistributeProxy-WETH (`0x5ebe2d...7c4396`, chain 81457)
- oEther-AToken-Blast (`0x689153...edfa0e`, chain 81457)
- oEther-StableDebtToken-Blast (`0x39ae45...f2df37`, chain 81457)
- oEther-VariableDebtToken-Blast (`0xa42d36...58c34e`, chain 81457)
- oUSDB-AToken-Blast (`0xce7c5a...6470b3`, chain 81457)
- oUSDB-StableDebtToken-Blast (`0xb080ba...28d547`, chain 81457)
- oUSDB-VariableDebtToken-Blast (`0xd6bc56...9d1538`, chain 81457)
- PacPoolWrapper (`0xfde98a...743140`, chain 81457)
- Pool-Implementation (`0x7b2218...35051f`, chain 81457)
- Pool-Proxy-Blast (`0xd2499b...19eaa8`, chain 81457)
- PoolAddressesProvider-Blast (`0x688b5f...579c9a`, chain 81457)
- PoolAddressesProviderRegistry (`0xdb3cea...a2517d`, chain 81457)
- PoolConfigurator-Implementation (`0xa370d5...13000f`, chain 81457)
- PoolConfigurator-Proxy-Blast (`0xcc2450...79fcfc`, chain 81457)
- PoolDataProvider-Blast (`0x742316...0be446`, chain 81457)
- PoolLogic (`0xb61e04...8101aa`, chain 81457)
- ReservesSetupHelper (`0x6e6cb5...fbd9da`, chain 81457)
- ReserveStrategy-rateStrategyStableOne (`0x039f7f...4ead1f`, chain 81457)
- ReserveStrategy-rateStrategyStableTwo (`0x3c0286...fecd79`, chain 81457)
- ReserveStrategy-rateStrategyVolatileOne (`0xd67021...23faa0`, chain 81457)
- RingLPWETHUSDB-AToken-Blast (`0xc57b31...98dfd9`, chain 81457)
- RingLPWETHUSDB-StableDebtToken-Blast (`0x43a70d...a31b06`, chain 81457)
- RingLPWETHUSDB-VariableDebtToken-Blast (`0x05bc64...c7f0b0`, chain 81457)
- slpETH-AToken-Blast (`0x5cc309...67df01`, chain 81457)
- slpETH-StableDebtToken-Blast (`0x210b62...a20fd0`, chain 81457)
- slpETH-VariableDebtToken-Blast (`0xd4b4f8...283834`, chain 81457)
- slpUSDB-AToken-Blast (`0xfaf2ef...d1e41f`, chain 81457)
- slpUSDB-StableDebtToken-Blast (`0x27f509...c6f1dd`, chain 81457)
- slpUSDB-VariableDebtToken-Blast (`0x75afbb...a723be`, chain 81457)
- StableDebtToken-Blast (`0x36584b...b5a692`, chain 81457)
- SupplyLogic (`0x5e2e43...c3de54`, chain 81457)
- ThrusterLPWETHUSDB-AToken-Blast (`0xf60eb6...6df527`, chain 81457)
- ThrusterLPWETHUSDB-StableDebtToken-Blast (`0x4b5cb9...e6a012`, chain 81457)
- ThrusterLPWETHUSDB-VariableDebtToken-Blast (`0xb13162...ae9374`, chain 81457)
- UiIncentiveDataProviderV3 (`0x83f562...028820`, chain 81457)
- UiPoolDataProviderV3 (`0x120552...7c058f`, chain 81457)
- UniswapV2OracleWrapper (`0x7742e6...fac57f`, chain 81457)
- UniswapV2OracleWrapper-09335d13-7810-4925-a94a-a446df0070cd (`0x741d8b...a95430`, chain 81457)
- USDB-AToken-Blast (`0xc72062...1b31ef`, chain 81457)
- USDB-StableDebtToken-Blast (`0x3fdda4...f7f15f`, chain 81457)
- USDB-VariableDebtToken-Blast (`0x325261...9c8fc7`, chain 81457)
- VariableDebtToken-Blast (`0x339752...0d5fc8`, chain 81457)
- WalletBalanceProvider (`0xce3c00...43fe4e`, chain 81457)
- WBTC-AToken-Blast (`0x427d0e...c50e57`, chain 81457)
- WBTC-StableDebtToken-Blast (`0xb935c8...2eb5c7`, chain 81457)
- WBTC-VariableDebtToken-Blast (`0xcc316e...454654`, chain 81457)
- WETH-AToken-Blast (`0x63749b...f0c1c5`, chain 81457)
- WETH-StableDebtToken-Blast (`0xdc1c12...b16456`, chain 81457)
- WETH-VariableDebtToken-Blast (`0x7cb8a8...e7a77d`, chain 81457)
- WrappedTokenGatewayV3 (`0x9abc86...f8e627`, chain 81457)
- YieldGasController (`0x038baf...3e246d`, chain 81457)

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 38 (38 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 87/178 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/38 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 87 own, 91 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 87 of 178 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 49
- Unique implementations: 178
- Raw deployments: 178
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveOracle-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390862 | `0xaf7732...31e6b1` | ⚠️ Unaudited |
| ACLManager-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390893 | `0xfe1d7b...543e21` | ⚠️ Unaudited |
| API3_Oracle_Wrapper | unknown | project_anchor | own_supporting | 0 | blast | unit-390813 | `0x17f968...bd4b81` | ⚠️ Unaudited |
| AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390829 | `0x43e3f6...1364f5` | ⚠️ Unaudited |
| BorrowLogic | unknown | project_anchor | own_supporting | 0 | blast | unit-390886 | `0xe39cb2...12bea1` | ⚠️ Unaudited |
| BridgeLogic | unknown | project_anchor | own_supporting | 0 | blast | unit-390872 | `0xcad2ae...f6e219` | ⚠️ Unaudited |
| CLFixedPriceSynchronicityPriceAdapter | unknown | project_anchor | own_supporting | 0 | blast | unit-390889 | `0xf04383...74b036` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | project_anchor | own_supporting | 0 | blast | unit-390816 | `0x24ffb7...caa811` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | project_anchor | own_supporting | 0 | blast | unit-390822 | `0x35c39e...d05d23` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy-f7853456-39ee-49c5-9b2e-3b10d415ab4b | unknown | project_anchor | own_supporting | 0 | blast | unit-390819 | `0x2dcf30...46ed03` | ⚠️ Unaudited |
| DTXVaultOracle | unknown | project_anchor | own_supporting | 0 | blast | unit-390856 | `0x9e2e20...07186c` | ⚠️ Unaudited |
| EmissionManager | unknown | project_anchor | own_supporting | 0 | blast | unit-390831 | `0x4dfe48...e09abc` | ⚠️ Unaudited |
| EModeLogic | unknown | project_anchor | own_supporting | 0 | blast | unit-390883 | `0xdba990...f81b8c` | ⚠️ Unaudited |
| ERC20OracleWrapper | unknown | project_anchor | own_supporting | 0 | blast | unit-390814 | `0x1a8476...9343d9` | ⚠️ Unaudited |
| ExchangeRateAssetPriceAdapter | unknown | project_anchor | own_supporting | 0 | blast | unit-390841 | `0x6996d7...4341d7` | ⚠️ Unaudited |
| EZETH_ORACLE | unknown | project_anchor | own_supporting | 0 | blast | unit-390811 | `0x167395...a973ca` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | project_anchor | own_supporting | 0 | blast | unit-390867 | `0xbc1c5a...40298c` | ⚠️ Unaudited |
| GasRefundImpl | unknown | project_anchor | own_supporting | 0 | blast | unit-390860 | `0xae2d37...bb119b` | ⚠️ Unaudited |
| GasRefundProxy | unknown | project_anchor | own_supporting | 0 | blast | unit-390868 | `0xbcd03b...b35ef0` | ⚠️ Unaudited |
| LiquidationLogic | unknown | project_anchor | own_supporting | 0 | blast | unit-390845 | `0x74df6b...610850` | ⚠️ Unaudited |
| NativeYieldDistributeImpl | unknown | project_anchor | own_supporting | 0 | blast | unit-390832 | `0x53d6e5...98148a` | ⚠️ Unaudited |
| NativeYieldDistributeProxy-USDB | unknown | project_anchor | own_supporting | 0 | blast | unit-390859 | `0xad49ee...0becc3` | ⚠️ Unaudited |
| NativeYieldDistributeProxy-WETH | unknown | project_anchor | own_supporting | 0 | blast | unit-390835 | `0x5ebe2d...7c4396` | ⚠️ Unaudited |
| PacPoolWrapper | unknown | project_anchor | own_supporting | 0 | blast | unit-390892 | `0xfde98a...743140` | ⚠️ Unaudited |
| Pool-Implementation | unknown | project_anchor | own_supporting | 0 | blast | unit-390849 | `0x7b2218...35051f` | ⚠️ Unaudited |
| PoolAddressesProvider-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390839 | `0x688b5f...579c9a` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | project_anchor | own_supporting | 0 | blast | unit-390882 | `0xdb3cea...a2517d` | ⚠️ Unaudited |
| PoolConfigurator-Implementation | unknown | project_anchor | own_supporting | 0 | blast | unit-390857 | `0xa370d5...13000f` | ⚠️ Unaudited |
| PoolDataProvider-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390844 | `0x742316...0be446` | ⚠️ Unaudited |
| PoolLogic | unknown | project_anchor | own_supporting | 0 | blast | unit-390865 | `0xb61e04...8101aa` | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | project_anchor | own_supporting | 0 | blast | unit-390842 | `0x6e6cb5...fbd9da` | ⚠️ Unaudited |
| SupplyLogic | unknown | project_anchor | own_supporting | 0 | blast | unit-390834 | `0x5e2e43...c3de54` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | project_anchor | own_supporting | 0 | blast | unit-390809 | `0x120552...7c058f` | ⚠️ Unaudited |
| UniswapV2OracleWrapper | unknown | project_anchor | own_supporting | 0 | blast | unit-390847 | `0x7742e6...fac57f` | ⚠️ Unaudited |
| UniswapV2OracleWrapper-09335d13-7810-4925-a94a-a446df0070cd | unknown | project_anchor | own_supporting | 0 | blast | unit-390843 | `0x741d8b...a95430` | ⚠️ Unaudited |
| VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390821 | `0x339752...0d5fc8` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | project_anchor | own_supporting | 0 | blast | unit-390875 | `0xce3c00...43fe4e` | ⚠️ Unaudited |
| YieldGasController | unknown | project_anchor | own_supporting | 0 | blast | unit-390805 | `0x038baf...3e246d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (140)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DefaultReserveInterestRateStrategy-a46fa316-f818-4e22-92de-34f38485903e | unknown | project_anchor | own_supporting | 0 | blast | unit-390861 | `0xaf2f92...de797f` | ❓ Unverified |
| DelegationAwareAToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390812 | `0x16ae70...a78c98` | ❓ Unverified |
| ezETH-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390804 | `0x01bfae...be994d` | ❓ Unverified |
| ezETH-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390837 | `0x6373cf...a6c4f6` | ❓ Unverified |
| ezETH-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390836 | `0x60faaa...714e06` | ❓ Unverified |
| fwUSDB-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390888 | `0xeebde4...11a576` | ❓ Unverified |
| fwUSDB-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390854 | `0x9a0df5...f777e8` | ❓ Unverified |
| fwUSDB-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390808 | `0x0919d4...848cf9` | ❓ Unverified |
| fwWETH-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390818 | `0x2b8476...c9cbed` | ❓ Unverified |
| fwWETH-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390851 | `0x7d87e3...54d21b` | ❓ Unverified |
| fwWETH-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390869 | `0xbcdeae...dc0c46` | ❓ Unverified |
| GasRefund | unknown | project_anchor | own_supporting | 0 | blast | unit-390853 | `0x90db38...50b4b4` | ❓ Unverified |
| IncentivesProxy | unknown | project_anchor | own_supporting | 0 | blast | unit-390810 | `0x13c836...013795` | ❓ Unverified |
| IncentivesV2-Implementation | unknown | project_anchor | own_supporting | 0 | blast | unit-390878 | `0xd2c8e4...935874` | ❓ Unverified |
| oEther-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390840 | `0x689153...edfa0e` | ❓ Unverified |
| oEther-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390824 | `0x39ae45...f2df37` | ❓ Unverified |
| oEther-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390858 | `0xa42d36...58c34e` | ❓ Unverified |
| oUSDB-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390876 | `0xce7c5a...6470b3` | ❓ Unverified |
| oUSDB-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390863 | `0xb080ba...28d547` | ❓ Unverified |
| oUSDB-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390881 | `0xd6bc56...9d1538` | ❓ Unverified |
| Pool-Proxy-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390877 | `0xd2499b...19eaa8` | ❓ Unverified |
| PoolConfigurator-Proxy-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390873 | `0xcc2450...79fcfc` | ❓ Unverified |
| ReserveStrategy-rateStrategyStableOne | unknown | project_anchor | own_supporting | 0 | blast | unit-390806 | `0x039f7f...4ead1f` | ❓ Unverified |
| ReserveStrategy-rateStrategyStableTwo | unknown | project_anchor | own_supporting | 0 | blast | unit-390825 | `0x3c0286...fecd79` | ❓ Unverified |
| ReserveStrategy-rateStrategyVolatileOne | unknown | project_anchor | own_supporting | 0 | blast | unit-390880 | `0xd67021...23faa0` | ❓ Unverified |
| RingLPWETHUSDB-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390870 | `0xc57b31...98dfd9` | ❓ Unverified |
| RingLPWETHUSDB-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390828 | `0x43a70d...a31b06` | ❓ Unverified |
| RingLPWETHUSDB-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390807 | `0x05bc64...c7f0b0` | ❓ Unverified |
| slpETH-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390833 | `0x5cc309...67df01` | ❓ Unverified |
| slpETH-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390815 | `0x210b62...a20fd0` | ❓ Unverified |
| slpETH-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390879 | `0xd4b4f8...283834` | ❓ Unverified |
| slpUSDB-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390891 | `0xfaf2ef...d1e41f` | ❓ Unverified |
| slpUSDB-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390817 | `0x27f509...c6f1dd` | ❓ Unverified |
| slpUSDB-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390846 | `0x75afbb...a723be` | ❓ Unverified |
| StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390823 | `0x36584b...b5a692` | ❓ Unverified |
| ThrusterLPWETHUSDB-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390890 | `0xf60eb6...6df527` | ❓ Unverified |
| ThrusterLPWETHUSDB-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390830 | `0x4b5cb9...e6a012` | ❓ Unverified |
| ThrusterLPWETHUSDB-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390864 | `0xb13162...ae9374` | ❓ Unverified |
| UiIncentiveDataProviderV3 | unknown | project_anchor | own_supporting | 0 | blast | unit-390852 | `0x83f562...028820` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-390848 | `0x7892f3...61762f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-390885 | `0xded349...f0ccdf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-390887 | `0xe71bba...e479a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390716 | `0x00b90a...31ffc6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390717 | `0x03b5e2...84e911` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390718 | `0x0b7a6c...67bd78` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390719 | `0x0e697f...853d96` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390720 | `0x0fa6a1...092875` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390721 | `0x123d19...391891` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390722 | `0x12c137...c439ba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390723 | `0x172465...82f7b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390724 | `0x192511...4a0fc1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390725 | `0x1ad694...ea81a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390726 | `0x20c2f5...fc9752` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390727 | `0x2ae349...c45565` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390728 | `0x3307f7...c79332` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390729 | `0x3795d5...dbf9c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390730 | `0x3a0b3e...d6e56c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390731 | `0x3db222...cf2c55` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390732 | `0x3df9c3...313186` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390733 | `0x3e1132...5208c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390734 | `0x3ffd20...4a0e82` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390735 | `0x40064a...1b8f63` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390736 | `0x427743...3d3d05` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390737 | `0x468527...04976e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390738 | `0x490f1e...a7b1d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390739 | `0x49526c...f26297` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390740 | `0x497af7...dea5ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390741 | `0x4f2050...ef5357` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390742 | `0x519a3d...1ad152` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390743 | `0x53eb70...121492` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390744 | `0x57ff29...837daf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390745 | `0x5bf610...cdb0f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390746 | `0x5cc583...96bbf7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390747 | `0x5cd64d...8b4df6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390748 | `0x5d52c3...4e1c7f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390749 | `0x624dd4...77255c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390750 | `0x6373c4...b5a692` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390751 | `0x65475c...63ab61` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390752 | `0x6c8666...97e4eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390753 | `0x6e8db4...7b61cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390754 | `0x6fa71b...86df6a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390755 | `0x72905f...954c29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390756 | `0x753d4e...6aaf1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390757 | `0x7ea715...6c2e49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390758 | `0x81687b...db9144` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390759 | `0x84478b...0007fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390760 | `0x86bc60...8b2a1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390761 | `0x878e42...edc442` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390762 | `0x8841a6...48de70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390763 | `0x89a22b...86995c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390764 | `0x8a3de0...26cafd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390765 | `0x8a5a36...964f14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390766 | `0x8b18a4...7ca1a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390767 | `0x8cd6d2...05ece9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390768 | `0x8f70c1...4727e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390769 | `0x929951...7ae311` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390770 | `0x947a48...380c58` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390771 | `0x9546e4...77e47c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390772 | `0x9567a7...af5259` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390773 | `0x958eb8...b9c818` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390774 | `0x96ba52...b67216` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390775 | `0x987e1a...6a2af1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390776 | `0x9cb8ad...92bab8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390777 | `0x9d21f6...eb4e89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390778 | `0x9f694a...1d6875` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390779 | `0xa0efb8...3e6437` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390780 | `0xa2fffb...793873` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390781 | `0xa97f72...cd1384` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390782 | `0xac5028...9c666a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390783 | `0xae7b76...14e3e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390784 | `0xb1d653...0710cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390785 | `0xb2f4a7...2b2fbd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390786 | `0xb55416...c13f15` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390787 | `0xb58dbd...0c8c60` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390788 | `0xbedde2...31562d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390789 | `0xbf0b72...5aa244` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390790 | `0xbfbd67...aa013e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390791 | `0xce2952...e33e76` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390792 | `0xcf1c54...c49a62` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390793 | `0xcf56d5...34201f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390794 | `0xd7a2cd...93658f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390795 | `0xe100cf...ec284a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390796 | `0xe2df06...ccefde` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390797 | `0xe9c864...f7260b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390798 | `0xed6baa...084fb9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390799 | `0xee57c2...c8d9ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390800 | `0xeeda5b...e80eb2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390801 | `0xf69d86...2fe1e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390802 | `0xf6bf5b...b5a590` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390803 | `0xfd04f0...8db1e6` | ❓ Unverified |
| USDB-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390871 | `0xc72062...1b31ef` | ❓ Unverified |
| USDB-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390826 | `0x3fdda4...f7f15f` | ❓ Unverified |
| USDB-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390820 | `0x325261...9c8fc7` | ❓ Unverified |
| WBTC-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390827 | `0x427d0e...c50e57` | ❓ Unverified |
| WBTC-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390866 | `0xb935c8...2eb5c7` | ❓ Unverified |
| WBTC-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390874 | `0xcc316e...454654` | ❓ Unverified |
| WETH-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390838 | `0x63749b...f0c1c5` | ❓ Unverified |
| WETH-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390884 | `0xdc1c12...b16456` | ❓ Unverified |
| WETH-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390850 | `0x7cb8a8...e7a77d` | ❓ Unverified |
| WrappedTokenGatewayV3 | unknown | project_anchor | own_supporting | 0 | blast | unit-390855 | `0x9abc86...f8e627` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 178 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
