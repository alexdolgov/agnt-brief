# Agentic Audit Brief: Pac Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Pac Finance (`pac-finance`)
- Website: [https://pac.finance/](https://pac.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
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

- AaveOracle-Blast (`0xaf77325317f109ee21459afeede51b16c231e6b1`, chain 81457)
- ACLManager-Blast (`0xfe1d7b882b4e7a91ed76b2a47aea0085d4543e21`, chain 81457)
- API3_Oracle_Wrapper (`0x17f968ac6ac8c650d889c1179774bb98dbbd4b81`, chain 81457)
- AToken-Blast (`0x43e3f62e4367bd255c1b327c913bdb87151364f5`, chain 81457)
- BorrowLogic (`0xe39cb2145ab2297ff3839b9335cffc0d9412bea1`, chain 81457)
- BridgeLogic (`0xcad2ae773d335543f5b784647e43d6a727f6e219`, chain 81457)
- CLFixedPriceSynchronicityPriceAdapter (`0xf04383eca1d1e2ed99f18ef5cfe21d56fe74b036`, chain 81457)
- ConfiguratorLogic (`0x24ffb708488de1fd18bda6387849dfa31ccaa811`, chain 81457)
- DefaultReserveInterestRateStrategy (`0x35c39e8c2a6200c6cb489c8d82fc4ce443d05d23`, chain 81457)
- DefaultReserveInterestRateStrategy-a46fa316-f818-4e22-92de-34f38485903e (`0xaf2f923350180c2985442b16f0eb7baeb3de797f`, chain 81457)
- DefaultReserveInterestRateStrategy-f7853456-39ee-49c5-9b2e-3b10d415ab4b (`0x2dcf30479e1e3673ed1770c0a81c187efc46ed03`, chain 81457)
- DelegationAwareAToken-Blast (`0x16ae70e8c0f12c2488b456f67908c1b976a78c98`, chain 81457)
- DTXVaultOracle (`0x9e2e2024f3dcf7377257fc7f2de05d39c807186c`, chain 81457)
- EmissionManager (`0x4dfe485c2422e5d63bb924468db0c1663fe09abc`, chain 81457)
- EModeLogic (`0xdba990cebd2d390c1401123777c3344426f81b8c`, chain 81457)
- ERC20OracleWrapper (`0x1a8476f94f5d1351a3be93b2a2437f750f9343d9`, chain 81457)
- ExchangeRateAssetPriceAdapter (`0x6996d76d47123d0b7e8ebbc48f6cd728fe4341d7`, chain 81457)
- EZETH_ORACLE (`0x167395b40dc7da75d4996bb44a448d01eca973ca`, chain 81457)
- ezETH-AToken-Blast (`0x01bfae5e4fdfcfb514b65b8ed4f515327bbe994d`, chain 81457)
- ezETH-StableDebtToken-Blast (`0x6373cf837a1ebb950c8c3e689cc674502aa6c4f6`, chain 81457)
- ezETH-VariableDebtToken-Blast (`0x60faaa431db080aa16e7699fea6ebbc563714e06`, chain 81457)
- FlashLoanLogic (`0xbc1c5af087895d319621a7a3d8ed953acf40298c`, chain 81457)
- fwUSDB-AToken-Blast (`0xeebde4c9249e290dd463e22df1d3f2aba711a576`, chain 81457)
- fwUSDB-StableDebtToken-Blast (`0x9a0df522d8a05529c0da92ce2faa6ae6e0f777e8`, chain 81457)
- fwUSDB-VariableDebtToken-Blast (`0x0919d45b90b9342a7ea2599e1f3b6e2439848cf9`, chain 81457)
- fwWETH-AToken-Blast (`0x2b8476064d5a6ee4821c6dbbc4f0221b1dc9cbed`, chain 81457)
- fwWETH-StableDebtToken-Blast (`0x7d87e39682f425596f18a432b93e7a389954d21b`, chain 81457)
- fwWETH-VariableDebtToken-Blast (`0xbcdeae2cf126d474e7362f2b8953787ba5dc0c46`, chain 81457)
- GasRefund (`0x90db38717ea743fa577722931748f1ad6150b4b4`, chain 81457)
- GasRefundImpl (`0xae2d37ef7c37a7bdaa4e2b4ca134184283bb119b`, chain 81457)
- GasRefundProxy (`0xbcd03b012a8457824ecbba36e559401db7b35ef0`, chain 81457)
- IncentivesProxy (`0x13c836bd2dec4ae49e7f865baafe02b402013795`, chain 81457)
- IncentivesV2-Implementation (`0xd2c8e412ff81575302f0c938b9c22721d6935874`, chain 81457)
- LiquidationLogic (`0x74df6b3e623df0565889d57b5bb32424c7610850`, chain 81457)
- NativeYieldDistributeImpl (`0x53d6e51e2db2a99a07e50327b5246d233398148a`, chain 81457)
- NativeYieldDistributeProxy-USDB (`0xad49ee1956704f1ec97ce7a9850a3608bf0becc3`, chain 81457)
- NativeYieldDistributeProxy-WETH (`0x5ebe2de08276048a601646eb8fb911e0b47c4396`, chain 81457)
- oEther-AToken-Blast (`0x68915399201380f392019555947491e5b3edfa0e`, chain 81457)
- oEther-StableDebtToken-Blast (`0x39ae45b7c68a860ef1439889a878900df3f2df37`, chain 81457)
- oEther-VariableDebtToken-Blast (`0xa42d362e5b40acd0acf622185b658828bc58c34e`, chain 81457)
- oUSDB-AToken-Blast (`0xce7c5a6a86206b68a746615c1f6b473edb6470b3`, chain 81457)
- oUSDB-StableDebtToken-Blast (`0xb080bacb643eb0ff28d3130bdf08491b2128d547`, chain 81457)
- oUSDB-VariableDebtToken-Blast (`0xd6bc56e862dad1b07db267884a8f2974789d1538`, chain 81457)
- PacPoolWrapper (`0xfde98ab7a6602ad55462297d952ce25b58743140`, chain 81457)
- Pool-Implementation (`0x7b22186adc34e20640aae55629947b47a835051f`, chain 81457)
- Pool-Proxy-Blast (`0xd2499b3c8611e36ca89a70fda2a72c49ee19eaa8`, chain 81457)
- PoolAddressesProvider-Blast (`0x688b5fd3c3e3724b4de08c4bcb3a755f9b579c9a`, chain 81457)
- PoolAddressesProviderRegistry (`0xdb3ceaa3ff702242b9aaae63e4ba673ef7a2517d`, chain 81457)
- PoolConfigurator-Implementation (`0xa370d5115dcf556bcc647b0a2d8841cc8e13000f`, chain 81457)
- PoolConfigurator-Proxy-Blast (`0xcc24504b36a022d8def8e65f3cd3f4899e79fcfc`, chain 81457)
- PoolDataProvider-Blast (`0x742316f430002d067dc273469236d0f3670be446`, chain 81457)
- PoolLogic (`0xb61e04b5a87097b964991a600399b4e59c8101aa`, chain 81457)
- ReservesSetupHelper (`0x6e6cb56ebb9c9a585f9a45db3432c9026afbd9da`, chain 81457)
- ReserveStrategy-rateStrategyStableOne (`0x039f7f53eb87d135263850df51c12e00eb4ead1f`, chain 81457)
- ReserveStrategy-rateStrategyStableTwo (`0x3c0286f97f9a93bdbe599ec9b357f62450fecd79`, chain 81457)
- ReserveStrategy-rateStrategyVolatileOne (`0xd6702113f2f22a490516fde071fe531d6b23faa0`, chain 81457)
- RingLPWETHUSDB-AToken-Blast (`0xc57b31204b1dfd80ad4d58f2d571aa05fd98dfd9`, chain 81457)
- RingLPWETHUSDB-StableDebtToken-Blast (`0x43a70dc02a7ee2eebd05ca026c4738853da31b06`, chain 81457)
- RingLPWETHUSDB-VariableDebtToken-Blast (`0x05bc646e0a77f2dc00cd0bbe3e99638d46c7f0b0`, chain 81457)
- slpETH-AToken-Blast (`0x5cc3094909fa8edf7a18351c8b5a2b9d1467df01`, chain 81457)
- slpETH-StableDebtToken-Blast (`0x210b623b1c73e408415828de21335184e9a20fd0`, chain 81457)
- slpETH-VariableDebtToken-Blast (`0xd4b4f875b1b5a71eafcbe17109bb01ec5c283834`, chain 81457)
- slpUSDB-AToken-Blast (`0xfaf2effa654aca37f45d1dbe1b88f3fb0dd1e41f`, chain 81457)
- slpUSDB-StableDebtToken-Blast (`0x27f509458db141cdb9354412dd95e84b3ec6f1dd`, chain 81457)
- slpUSDB-VariableDebtToken-Blast (`0x75afbb2f98bc962cebb3991f035c800b69a723be`, chain 81457)
- StableDebtToken-Blast (`0x36584b8b2d3937e4066e6f7777f6cebc1fb5a692`, chain 81457)
- SupplyLogic (`0x5e2e43441a74bfc0e16170363c93263b1ec3de54`, chain 81457)
- ThrusterLPWETHUSDB-AToken-Blast (`0xf60eb659169a49d4cb21381bdbbeb13abb6df527`, chain 81457)
- ThrusterLPWETHUSDB-StableDebtToken-Blast (`0x4b5cb99709a10bcd06ff9483cabc94cda6e6a012`, chain 81457)
- ThrusterLPWETHUSDB-VariableDebtToken-Blast (`0xb131623530d1e262c45504089be63b6644ae9374`, chain 81457)
- UiIncentiveDataProviderV3 (`0x83f5623fd835f6cd0d24d8d6d64ab60c2b028820`, chain 81457)
- UiPoolDataProviderV3 (`0x1205529dc4fe0844039099cf7125aef38b7c058f`, chain 81457)
- UniswapV2OracleWrapper (`0x7742e656ae3879238a0c5b6c6196ba791dfac57f`, chain 81457)
- UniswapV2OracleWrapper-09335d13-7810-4925-a94a-a446df0070cd (`0x741d8b79eeee07a3452e151341f5458469a95430`, chain 81457)
- USDB-AToken-Blast (`0xc7206216f28c23b2da6537d296e789cfb81b31ef`, chain 81457)
- USDB-StableDebtToken-Blast (`0x3fdda42f3be9b827ecd17786b4bdcb4466f7f15f`, chain 81457)
- USDB-VariableDebtToken-Blast (`0x325261d7bd4bda7baf38d08217793e94b19c8fc7`, chain 81457)
- VariableDebtToken-Blast (`0x33975292672b1205b5d589074c1b3217520d5fc8`, chain 81457)
- WalletBalanceProvider (`0xce3c0026d3c7aa5ec2e8488efb95688b9543fe4e`, chain 81457)
- WBTC-AToken-Blast (`0x427d0e5493a1ec15d8f9777b7e2c33b9e4c50e57`, chain 81457)
- WBTC-StableDebtToken-Blast (`0xb935c8864944ff221a9bd84dc4b65838bf2eb5c7`, chain 81457)
- WBTC-VariableDebtToken-Blast (`0xcc316e6ad7a65bb882b37104ba2f002230454654`, chain 81457)
- WETH-AToken-Blast (`0x63749b03bdb4e86e5aaf7e5a723bf993dbf0c1c5`, chain 81457)
- WETH-StableDebtToken-Blast (`0xdc1c1257637d5e9de85f66d14030809a4db16456`, chain 81457)
- WETH-VariableDebtToken-Blast (`0x7cb8a894b163848bccee03fd71b098693ee7a77d`, chain 81457)
- WrappedTokenGatewayV3 (`0x9abc8648c0527e2d7035a4ae9e00cb4809f8e627`, chain 81457)
- YieldGasController (`0x038baf0cdfed8adbc83eb7e5adee2263dd3e246d`, chain 81457)

## Contract Surface Quality

- Logic-topography rows: 38; live-surface rows included: 38 (38 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 87/178 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/38 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 87 own, 91 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 87 of 178 unique; 91 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 140
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
| AaveOracle-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390862 | `0xaf77325317f109ee21459afeede51b16c231e6b1` | ⚠️ Unaudited |
| ACLManager-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390893 | `0xfe1d7b882b4e7a91ed76b2a47aea0085d4543e21` | ⚠️ Unaudited |
| API3_Oracle_Wrapper | unknown | project_anchor | own_supporting | 0 | blast | unit-390813 | `0x17f968ac6ac8c650d889c1179774bb98dbbd4b81` | ⚠️ Unaudited |
| AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390829 | `0x43e3f62e4367bd255c1b327c913bdb87151364f5` | ⚠️ Unaudited |
| BorrowLogic | unknown | project_anchor | own_supporting | 0 | blast | unit-390886 | `0xe39cb2145ab2297ff3839b9335cffc0d9412bea1` | ⚠️ Unaudited |
| BridgeLogic | unknown | project_anchor | own_supporting | 0 | blast | unit-390872 | `0xcad2ae773d335543f5b784647e43d6a727f6e219` | ⚠️ Unaudited |
| CLFixedPriceSynchronicityPriceAdapter | unknown | project_anchor | own_supporting | 0 | blast | unit-390889 | `0xf04383eca1d1e2ed99f18ef5cfe21d56fe74b036` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | project_anchor | own_supporting | 0 | blast | unit-390816 | `0x24ffb708488de1fd18bda6387849dfa31ccaa811` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | project_anchor | own_supporting | 0 | blast | unit-390822 | `0x35c39e8c2a6200c6cb489c8d82fc4ce443d05d23` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy-f7853456-39ee-49c5-9b2e-3b10d415ab4b | unknown | project_anchor | own_supporting | 0 | blast | unit-390819 | `0x2dcf30479e1e3673ed1770c0a81c187efc46ed03` | ⚠️ Unaudited |
| DTXVaultOracle | unknown | project_anchor | own_supporting | 0 | blast | unit-390856 | `0x9e2e2024f3dcf7377257fc7f2de05d39c807186c` | ⚠️ Unaudited |
| EmissionManager | unknown | project_anchor | own_supporting | 0 | blast | unit-390831 | `0x4dfe485c2422e5d63bb924468db0c1663fe09abc` | ⚠️ Unaudited |
| EModeLogic | unknown | project_anchor | own_supporting | 0 | blast | unit-390883 | `0xdba990cebd2d390c1401123777c3344426f81b8c` | ⚠️ Unaudited |
| ERC20OracleWrapper | unknown | project_anchor | own_supporting | 0 | blast | unit-390814 | `0x1a8476f94f5d1351a3be93b2a2437f750f9343d9` | ⚠️ Unaudited |
| ExchangeRateAssetPriceAdapter | unknown | project_anchor | own_supporting | 0 | blast | unit-390841 | `0x6996d76d47123d0b7e8ebbc48f6cd728fe4341d7` | ⚠️ Unaudited |
| EZETH_ORACLE | unknown | project_anchor | own_supporting | 0 | blast | unit-390811 | `0x167395b40dc7da75d4996bb44a448d01eca973ca` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | project_anchor | own_supporting | 0 | blast | unit-390867 | `0xbc1c5af087895d319621a7a3d8ed953acf40298c` | ⚠️ Unaudited |
| GasRefundImpl | unknown | project_anchor | own_supporting | 0 | blast | unit-390860 | `0xae2d37ef7c37a7bdaa4e2b4ca134184283bb119b` | ⚠️ Unaudited |
| GasRefundProxy | unknown | project_anchor | own_supporting | 0 | blast | unit-390868 | `0xbcd03b012a8457824ecbba36e559401db7b35ef0` | ⚠️ Unaudited |
| LiquidationLogic | unknown | project_anchor | own_supporting | 0 | blast | unit-390845 | `0x74df6b3e623df0565889d57b5bb32424c7610850` | ⚠️ Unaudited |
| NativeYieldDistributeImpl | unknown | project_anchor | own_supporting | 0 | blast | unit-390832 | `0x53d6e51e2db2a99a07e50327b5246d233398148a` | ⚠️ Unaudited |
| NativeYieldDistributeProxy-USDB | unknown | project_anchor | own_supporting | 0 | blast | unit-390859 | `0xad49ee1956704f1ec97ce7a9850a3608bf0becc3` | ⚠️ Unaudited |
| NativeYieldDistributeProxy-WETH | unknown | project_anchor | own_supporting | 0 | blast | unit-390835 | `0x5ebe2de08276048a601646eb8fb911e0b47c4396` | ⚠️ Unaudited |
| PacPoolWrapper | unknown | project_anchor | own_supporting | 0 | blast | unit-390892 | `0xfde98ab7a6602ad55462297d952ce25b58743140` | ⚠️ Unaudited |
| Pool-Implementation | unknown | project_anchor | own_supporting | 0 | blast | unit-390849 | `0x7b22186adc34e20640aae55629947b47a835051f` | ⚠️ Unaudited |
| PoolAddressesProvider-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390839 | `0x688b5fd3c3e3724b4de08c4bcb3a755f9b579c9a` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | project_anchor | own_supporting | 0 | blast | unit-390882 | `0xdb3ceaa3ff702242b9aaae63e4ba673ef7a2517d` | ⚠️ Unaudited |
| PoolConfigurator-Implementation | unknown | project_anchor | own_supporting | 0 | blast | unit-390857 | `0xa370d5115dcf556bcc647b0a2d8841cc8e13000f` | ⚠️ Unaudited |
| PoolDataProvider-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390844 | `0x742316f430002d067dc273469236d0f3670be446` | ⚠️ Unaudited |
| PoolLogic | unknown | project_anchor | own_supporting | 0 | blast | unit-390865 | `0xb61e04b5a87097b964991a600399b4e59c8101aa` | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | project_anchor | own_supporting | 0 | blast | unit-390842 | `0x6e6cb56ebb9c9a585f9a45db3432c9026afbd9da` | ⚠️ Unaudited |
| SupplyLogic | unknown | project_anchor | own_supporting | 0 | blast | unit-390834 | `0x5e2e43441a74bfc0e16170363c93263b1ec3de54` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | project_anchor | own_supporting | 0 | blast | unit-390809 | `0x1205529dc4fe0844039099cf7125aef38b7c058f` | ⚠️ Unaudited |
| UniswapV2OracleWrapper | unknown | project_anchor | own_supporting | 0 | blast | unit-390847 | `0x7742e656ae3879238a0c5b6c6196ba791dfac57f` | ⚠️ Unaudited |
| UniswapV2OracleWrapper-09335d13-7810-4925-a94a-a446df0070cd | unknown | project_anchor | own_supporting | 0 | blast | unit-390843 | `0x741d8b79eeee07a3452e151341f5458469a95430` | ⚠️ Unaudited |
| VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390821 | `0x33975292672b1205b5d589074c1b3217520d5fc8` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | project_anchor | own_supporting | 0 | blast | unit-390875 | `0xce3c0026d3c7aa5ec2e8488efb95688b9543fe4e` | ⚠️ Unaudited |
| YieldGasController | unknown | project_anchor | own_supporting | 0 | blast | unit-390805 | `0x038baf0cdfed8adbc83eb7e5adee2263dd3e246d` | ⚠️ Unaudited |

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
| DefaultReserveInterestRateStrategy-a46fa316-f818-4e22-92de-34f38485903e | unknown | project_anchor | own_supporting | 0 | blast | unit-390861 | `0xaf2f923350180c2985442b16f0eb7baeb3de797f` | ❓ Unverified |
| DelegationAwareAToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390812 | `0x16ae70e8c0f12c2488b456f67908c1b976a78c98` | ❓ Unverified |
| ezETH-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390804 | `0x01bfae5e4fdfcfb514b65b8ed4f515327bbe994d` | ❓ Unverified |
| ezETH-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390837 | `0x6373cf837a1ebb950c8c3e689cc674502aa6c4f6` | ❓ Unverified |
| ezETH-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390836 | `0x60faaa431db080aa16e7699fea6ebbc563714e06` | ❓ Unverified |
| fwUSDB-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390888 | `0xeebde4c9249e290dd463e22df1d3f2aba711a576` | ❓ Unverified |
| fwUSDB-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390854 | `0x9a0df522d8a05529c0da92ce2faa6ae6e0f777e8` | ❓ Unverified |
| fwUSDB-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390808 | `0x0919d45b90b9342a7ea2599e1f3b6e2439848cf9` | ❓ Unverified |
| fwWETH-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390818 | `0x2b8476064d5a6ee4821c6dbbc4f0221b1dc9cbed` | ❓ Unverified |
| fwWETH-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390851 | `0x7d87e39682f425596f18a432b93e7a389954d21b` | ❓ Unverified |
| fwWETH-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390869 | `0xbcdeae2cf126d474e7362f2b8953787ba5dc0c46` | ❓ Unverified |
| GasRefund | unknown | project_anchor | own_supporting | 0 | blast | unit-390853 | `0x90db38717ea743fa577722931748f1ad6150b4b4` | ❓ Unverified |
| IncentivesProxy | unknown | project_anchor | own_supporting | 0 | blast | unit-390810 | `0x13c836bd2dec4ae49e7f865baafe02b402013795` | ❓ Unverified |
| IncentivesV2-Implementation | unknown | project_anchor | own_supporting | 0 | blast | unit-390878 | `0xd2c8e412ff81575302f0c938b9c22721d6935874` | ❓ Unverified |
| oEther-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390840 | `0x68915399201380f392019555947491e5b3edfa0e` | ❓ Unverified |
| oEther-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390824 | `0x39ae45b7c68a860ef1439889a878900df3f2df37` | ❓ Unverified |
| oEther-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390858 | `0xa42d362e5b40acd0acf622185b658828bc58c34e` | ❓ Unverified |
| oUSDB-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390876 | `0xce7c5a6a86206b68a746615c1f6b473edb6470b3` | ❓ Unverified |
| oUSDB-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390863 | `0xb080bacb643eb0ff28d3130bdf08491b2128d547` | ❓ Unverified |
| oUSDB-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390881 | `0xd6bc56e862dad1b07db267884a8f2974789d1538` | ❓ Unverified |
| Pool-Proxy-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390877 | `0xd2499b3c8611e36ca89a70fda2a72c49ee19eaa8` | ❓ Unverified |
| PoolConfigurator-Proxy-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390873 | `0xcc24504b36a022d8def8e65f3cd3f4899e79fcfc` | ❓ Unverified |
| ReserveStrategy-rateStrategyStableOne | unknown | project_anchor | own_supporting | 0 | blast | unit-390806 | `0x039f7f53eb87d135263850df51c12e00eb4ead1f` | ❓ Unverified |
| ReserveStrategy-rateStrategyStableTwo | unknown | project_anchor | own_supporting | 0 | blast | unit-390825 | `0x3c0286f97f9a93bdbe599ec9b357f62450fecd79` | ❓ Unverified |
| ReserveStrategy-rateStrategyVolatileOne | unknown | project_anchor | own_supporting | 0 | blast | unit-390880 | `0xd6702113f2f22a490516fde071fe531d6b23faa0` | ❓ Unverified |
| RingLPWETHUSDB-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390870 | `0xc57b31204b1dfd80ad4d58f2d571aa05fd98dfd9` | ❓ Unverified |
| RingLPWETHUSDB-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390828 | `0x43a70dc02a7ee2eebd05ca026c4738853da31b06` | ❓ Unverified |
| RingLPWETHUSDB-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390807 | `0x05bc646e0a77f2dc00cd0bbe3e99638d46c7f0b0` | ❓ Unverified |
| slpETH-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390833 | `0x5cc3094909fa8edf7a18351c8b5a2b9d1467df01` | ❓ Unverified |
| slpETH-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390815 | `0x210b623b1c73e408415828de21335184e9a20fd0` | ❓ Unverified |
| slpETH-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390879 | `0xd4b4f875b1b5a71eafcbe17109bb01ec5c283834` | ❓ Unverified |
| slpUSDB-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390891 | `0xfaf2effa654aca37f45d1dbe1b88f3fb0dd1e41f` | ❓ Unverified |
| slpUSDB-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390817 | `0x27f509458db141cdb9354412dd95e84b3ec6f1dd` | ❓ Unverified |
| slpUSDB-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390846 | `0x75afbb2f98bc962cebb3991f035c800b69a723be` | ❓ Unverified |
| StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390823 | `0x36584b8b2d3937e4066e6f7777f6cebc1fb5a692` | ❓ Unverified |
| ThrusterLPWETHUSDB-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390890 | `0xf60eb659169a49d4cb21381bdbbeb13abb6df527` | ❓ Unverified |
| ThrusterLPWETHUSDB-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390830 | `0x4b5cb99709a10bcd06ff9483cabc94cda6e6a012` | ❓ Unverified |
| ThrusterLPWETHUSDB-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390864 | `0xb131623530d1e262c45504089be63b6644ae9374` | ❓ Unverified |
| UiIncentiveDataProviderV3 | unknown | project_anchor | own_supporting | 0 | blast | unit-390852 | `0x83f5623fd835f6cd0d24d8d6d64ab60c2b028820` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-390848 | `0x7892f345720eec34a1f1f2a1ce6a2307b161762f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-390885 | `0xded349124ff1d68c59085d67e8e6b3d303f0ccdf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-390887 | `0xe71bba1805a334086b5bad426d7ab15331e479a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390716 | `0x00b90a6805324a11e24efa8a9021abf64e31ffc6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390717 | `0x03b5e24d95a3cd6c73c7af545f5ae8069f84e911` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390718 | `0x0b7a6c2884d4cd78363bfd7c3e08aed66c67bd78` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390719 | `0x0e697fe7f631c0f671d9ee6954a26b1331853d96` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390720 | `0x0fa6a199bd383e246709813a8bf9485b85092875` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390721 | `0x123d19bd0356c93eb97fe8bb38eea3fc88391891` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390722 | `0x12c13749e0fbb745fee8f213e06359d143c439ba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390723 | `0x1724650de88d92ea1d3e0002aac5a3143c82f7b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390724 | `0x192511731508685215a15f2711a8e7d1da4a0fc1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390725 | `0x1ad6941ee065e04e135333e975a49846bcea81a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390726 | `0x20c2f51be6d3f6e6a2aef6e4890726bcdcfc9752` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390727 | `0x2ae349c9d6dec5abdbfef11610475ef404c45565` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390728 | `0x3307f79eb23fef7145f17ad948b697249cc79332` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390729 | `0x3795d531869dbbc46c2b2e361aee6f8d1fdbf9c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390730 | `0x3a0b3ef576552330a81a53562e1c6e21add6e56c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390731 | `0x3db22277d2cd56ddf612b286a8461860a4cf2c55` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390732 | `0x3df9c3e7105b2bedd0b7b75c9ecf5c9041313186` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390733 | `0x3e1132230ee5df053e39a39d2633b8fb1a5208c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390734 | `0x3ffd20564c38e838746134315e8cdf0cf54a0e82` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390735 | `0x40064a6fd720c857c6e2971a1d91d6a9c91b8f63` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390736 | `0x427743f563e3fd675241152fdd4ce5306c3d3d05` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390737 | `0x468527f2f56e99563b608034a48f2e1be304976e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390738 | `0x490f1e9b0eec1f0e7da55765521635c7cba7b1d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390739 | `0x49526c857b5d48de7513614d61e5be15a8f26297` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390740 | `0x497af7ca726d60d47dbf4d094266b77033dea5ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390741 | `0x4f20506f849f7bd2e791037a9438521c1fef5357` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390742 | `0x519a3dda2228eb93a82c01c8ca48fabd301ad152` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390743 | `0x53eb701775363deeb096da00651df4febb121492` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390744 | `0x57ff29b4afa649721d71a4079b0b7101f6837daf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390745 | `0x5bf610cbd0be571de95dfa1bda8c0fa67dcdb0f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390746 | `0x5cc583fb362dcfa2d45cc9b7c56310e65e96bbf7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390747 | `0x5cd64d1471118b1d77fa92cf3460d659b08b4df6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390748 | `0x5d52c32ab79f1eb749324f64cf08a94d224e1c7f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390749 | `0x624dd4ea3a18cc676b36a5bf90aeaabc8377255c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390750 | `0x6373c4d84e1221b9aa9e9975687448b9b5b5a692` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390751 | `0x65475cac04cfbb7ae09d88f71da581ae3763ab61` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390752 | `0x6c8666df61e4cd5d81b0087a5043a87bd097e4eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390753 | `0x6e8db4157ead55c3ee03776dbe22e5b9d97b61cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390754 | `0x6fa71bff0ec45bdf8c4ebd7e096c3fa03886df6a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390755 | `0x72905fdbc16c06d0664f935bdf109b3c69954c29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390756 | `0x753d4ee2e003170aeb9b51f23be4ed2b626aaf1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390757 | `0x7ea715f0aa2b03b5c4c19fb40c5fd982916c2e49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390758 | `0x81687b19572ca297b54e461d3ba5c84c06db9144` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390759 | `0x84478b001fb945bfdcfa8a8040a2b522620007fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390760 | `0x86bc60123be72e3a4a1611484febd2c5818b2a1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390761 | `0x878e427d1a6949f2e014720e3752ecf041edc442` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390762 | `0x8841a6ff5d581a03540095cd7e1f3492c548de70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390763 | `0x89a22b7eb853734f94cf8e0a109d6308e786995c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390764 | `0x8a3de08bfa0e5f298550889f6801dd910526cafd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390765 | `0x8a5a363e068d689295789fe39b21175b33964f14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390766 | `0x8b18a48a7519cb2057dc4f7e75d7e8e21e7ca1a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390767 | `0x8cd6d277b6d53761adcc2900e1ebb2ce1b05ece9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390768 | `0x8f70c139ae3cb24c41f8b87484acf6106a4727e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390769 | `0x92995126e538cde7893efc49c53d7979ae7ae311` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390770 | `0x947a487ae67150d23782669a1480c21864380c58` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390771 | `0x9546e4a3c00aed27befa1ef2fc5cbefe7877e47c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390772 | `0x9567a7e2d42e6a23173bd00f55115232bfaf5259` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390773 | `0x958eb88ce404a3e34817e811393d6405acb9c818` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390774 | `0x96ba52c1eb7d2e056405799f2784046726b67216` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390775 | `0x987e1a0745df80780d41d42065f815f5f96a2af1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390776 | `0x9cb8adf1f1123d8d6988da64543e86908d92bab8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390777 | `0x9d21f6a93c381fe7a4cc4ca47720c42defeb4e89` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390778 | `0x9f694acc81d5b1c5d7b588dc94a38a83561d6875` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390779 | `0xa0efb88f9866ca123565730102bdf68a733e6437` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390780 | `0xa2fffbf7b7a45f51ce942cdbef1454e9dd793873` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390781 | `0xa97f7208f8df1a828cac1debf93ea45d3acd1384` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390782 | `0xac5028c6588440a0b96c1ae375e4dd73929c666a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390783 | `0xae7b76c55a523e098650a435adf80c0ab514e3e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390784 | `0xb1d65372e4c1f7b13dec74d41c80a2c27a0710cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390785 | `0xb2f4a7facfda72d20951a206a44dbcac6a2b2fbd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390786 | `0xb55416fbc70142b9b76f0d3d65eb190493c13f15` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390787 | `0xb58dbd296b1b3ff18437d4ccc3653ba4560c8c60` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390788 | `0xbedde2f73a613ec532a51d8d7f26e26a7e31562d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390789 | `0xbf0b72a3d394a51af630763bce9cb788f95aa244` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390790 | `0xbfbd67100371ba6644eb0d950255fa3a89aa013e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390791 | `0xce2952fd1339c7da179e263f4bb49d968ce33e76` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390792 | `0xcf1c54aed39e7773e23418c252d9d1ab11c49a62` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390793 | `0xcf56d5d2b6a2890c722e6d165859faaa2634201f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390794 | `0xd7a2cdf410c5942629965f600f2e7d032193658f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390795 | `0xe100cf28873c9215d561c2b36daf642002ec284a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390796 | `0xe2df064b0dca2fce3e152bd96274cbcff6ccefde` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390797 | `0xe9c8644e72ae9f8188990c5c025e4bac6bf7260b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390798 | `0xed6baa6b1e2c93811a419012f04d84b2a5084fb9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390799 | `0xee57c29f9fb42ca5788c6946c8b64431fcc8d9ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390800 | `0xeeda5bacd654552a526266e96e554a5688e80eb2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390801 | `0xf69d86db695f2f15d5566eedacbeea88392fe1e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390802 | `0xf6bf5b1f3d4e0470bd91b37afdce3139a4b5a590` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | blast-sepolia | unit-390803 | `0xfd04f0bdbdb5c27c75170eaac3649052778db1e6` | ❓ Unverified |
| USDB-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390871 | `0xc7206216f28c23b2da6537d296e789cfb81b31ef` | ❓ Unverified |
| USDB-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390826 | `0x3fdda42f3be9b827ecd17786b4bdcb4466f7f15f` | ❓ Unverified |
| USDB-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390820 | `0x325261d7bd4bda7baf38d08217793e94b19c8fc7` | ❓ Unverified |
| WBTC-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390827 | `0x427d0e5493a1ec15d8f9777b7e2c33b9e4c50e57` | ❓ Unverified |
| WBTC-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390866 | `0xb935c8864944ff221a9bd84dc4b65838bf2eb5c7` | ❓ Unverified |
| WBTC-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390874 | `0xcc316e6ad7a65bb882b37104ba2f002230454654` | ❓ Unverified |
| WETH-AToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390838 | `0x63749b03bdb4e86e5aaf7e5a723bf993dbf0c1c5` | ❓ Unverified |
| WETH-StableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390884 | `0xdc1c1257637d5e9de85f66d14030809a4db16456` | ❓ Unverified |
| WETH-VariableDebtToken-Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-390850 | `0x7cb8a894b163848bccee03fd71b098693ee7a77d` | ❓ Unverified |
| WrappedTokenGatewayV3 | unknown | project_anchor | own_supporting | 0 | blast | unit-390855 | `0x9abc8648c0527e2d7035a4ae9e00cb4809f8e627` | ❓ Unverified |

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
