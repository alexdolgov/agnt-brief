# Agentic Audit Brief: Moola Market

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Moola Market (`moola-market`)
- Website: [https://moola.market](https://moola.market)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: celo
- Contract surface: 59 unique implementations (98 raw deployments)
- Coverage basis: 6/15 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,139,898.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Moola Market. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across celo. Structural roles: 6 core, 6 unclassified, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: core (6), unclassified (6), supporting (3)
- Contract kinds: contract (13), unclassified (2)
- Detected standards: erc20 (3), ownable (3)
- Frameworks: openzeppelin (8), foundry (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x313bc86d3d6e86ba164b2b451cb0d9cfa7943e5c`, chain 42220)
- UnnamedContract (`0x801443470c119f2eac65f13886d9e293cdece2df`, chain 42220)
- UnnamedContract (`0x866fb3a7fb11d0defe3d0828417b5b948d36bac7`, chain 42220)
- UnnamedContract (`0x923182024d0fa5dee59e3c3db5e2eed23728d3c3`, chain 42220)
- UnnamedContract (`0xd7f77169d5e6a32c5044052f9a49eb94697b25ed`, chain 42220)
- ATokensAndRatesHelper (`0x22060a5e21921d1cfbebd301ff40f91f2d4c26f1`, chain 42220)
- LendingPoolAddressesProviderRegistry (`0xf03982910d17d11670dc3734dd73292cc4ab7491`, chain 42220)
- LendingPoolCollateralManager (`0xe99ef38aeb4359ea36190c7d2c16802c2edf399e`, chain 42220)
- LendingRateOracle (`0xaa6e0f0b63287eac5ddbeefd1f133fc7f554ee9b`, chain 42220)
- MooToken (`0x17700282592d6917f6a73d0bf8accf4d578c131e`, chain 42220)
- ReserveLogic (`0x8e6779f2ac23f196ef9a6b446e557a6f81fd4f51`, chain 42220)
- StableAndVariableTokensHelper (`0xec98172bcf583f2a40e7414cd9252404550fda87`, chain 42220)
- StableDebtToken (`0xacdb7b3e2b0a038f1f4ef04736728e0065b689da`, chain 42220)
- ValidationLogic (`0x2b9d164fd084a022a5fdfa19403944434e13151a`, chain 42220)
- VariableDebtToken (`0x0301cf8f1fcd9255bd32fb7e0fe5b3494f445c2c`, chain 42220)

## Contract Surface Quality

- Logic-topography rows: 15; live-surface rows included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/15 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 20 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 39 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 20 of 59 unique; 39 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/40
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 59
- Raw deployments: 98
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 26.7% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 15.0% | 2021-02 |
| OpenZeppelin | Tier 1 | 4 | 10.0% | 2020-01 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AToken | unknown | project_anchor | own_supporting | 0 | celo | unit-247950 | `0x55bfced2451b2154e06604d4269c9349f31141e6` | ✅ Audited |
| DefaultReserveInterestRateStrategy | unknown | project_anchor | own_supporting | 0 | celo | unit-247964 | `0xb3072f5f0d5e8b9036aec29f37bab70e86ea0018` | ✅ Audited |
| LendingPoolAddressesProvider | unknown | project_anchor | own_supporting | 0 | celo | unit-247966 | `0xd1088091a174d33412a968fa34cb67131188b332` | ✅ Audited |
| LendingPoolConfigurator | unknown | project_anchor | own_supporting | 0 | celo | unit-247948 | `0x2cca742585b39e0538f7cc01ab8ffa005f1b1f1c` | ✅ Audited |
| LendingRateOracle | unknown | project_anchor | own_supporting | 0 | celo | unit-247959 | `0xaa6e0f0b63287eac5ddbeefd1f133fc7f554ee9b` | ✅ Audited |
| WalletBalanceProvider | unknown | project_anchor | own_supporting | 0 | celo | unit-247957 | `0x931cbb9ad04d9e624597fbfef659567ad662cb49` | ✅ Audited |

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaCELOAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa19a98f07a3f48a2a40bc4dd262fdb8e9d09209f` | ⚠️ Unaudited |
| AaMooAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0xa7307f1a971f64dca8301a160f358bb97ec93700`; celo `0xc6a6de05a8ced6a6047a432a4bd7d2715d1d681c` | ⚠️ Unaudited |
| AccumulatingMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5b41b0c78659636c6664f08f7ccb620cea3f1206` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf44e15badbc9a2c5d71a569d6dfb584a8cc97a2a` | ⚠️ Unaudited |
| ATokensAndRatesHelper | unknown | project_anchor | own_supporting | 0 | celo | unit-247946 | `0x22060a5e21921d1cfbebd301ff40f91f2d4c26f1` | ⚠️ Unaudited |
| ATokenV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa2726942a99ca8ce9f212c97d8f1bd6378f501f0` | ⚠️ Unaudited |
| ATokenWithTransferForMoolaFix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc8c5765bd5690e6df761a13db0e133d158b3c64d` | ⚠️ Unaudited |
| DisabledStableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0x188ad2444dcb81b9548337e77f9e5dcbe57a065d`; celo `0x27028e8621e6512595ba6479b76f4b7a5cb4cb21` | ⚠️ Unaudited |
| FixedPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 6 deployments: celo `0x042b7d495650ff2c99e095e1e3deb7f8bce5b08d`; celo `0x321429d18c75c166d7ad5e684877c31eb489bd50`; celo `0x59f9c39c42056051ddd8485550e31e246b1092d8`; celo `0x81d952807e5657cbdc19ec05e5c713e1d0a293a7`; celo `0xca41e179e86fd164589b40953159628779c2804e`; celo `0xebfaaadc315842137ff9ed168ab70a4c595317e9` | ⚠️ Unaudited |
| GenericLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4d0f083077db8be0ab37aa18dbbe577f5034033a` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x29b4923d64b3196afd81d5f91185d693330cdb7a`; celo `0x97256c89a0f1bc88cbf66fd780eca5f396ae92fc`; celo `0xb9f812003ae906d381945e6010614c114ecf1a59`; celo `0xbecd348aa5cc976be8e82ca6f13bc3b53197711f` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4e77286aec541bf5c43183556413c5f6b8e1f2d9` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | unknown | project_anchor | own_supporting | 0 | celo | unit-247974 | `0xf03982910d17d11670dc3734dd73292cc4ab7491` | ⚠️ Unaudited |
| LendingPoolCollateralManager | unknown | project_anchor | own_supporting | 0 | celo | unit-247970 | `0xe99ef38aeb4359ea36190c7d2c16802c2edf399e` | ⚠️ Unaudited |
| LendingPoolCollateralManagerWithReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa2db2e70a795b566f129ae7dff242a4ad1393b32` | ⚠️ Unaudited |
| LeverageBorrowAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x39349d7f974e56b5ed7133c1c1d98e5a2a2a02c4` | ⚠️ Unaudited |
| LPImplementationInitializerProd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xef651d5f7492205499ef6b32b8c9230eda42b4f7` | ⚠️ Unaudited |
| MOOAirdrop2205 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6aef087821393bf3d4b15b5048f4377cf71a8dfb` | ⚠️ Unaudited |
| MooCompensationDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: celo `0x387ab8fcca2cbca3c24a739fb412cfbc2f5a321e`; celo `0x9dab4c93a676beb77623e5f15579ad9edbdcc053`; celo `0xd3d3fdeb54ff189e74a9cd06b2c38e8e601be05b`; celo `0xda7c353d3c1946c8469c5ec0d231af028c623194` | ⚠️ Unaudited |
| MoolaFix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4ddfd392ba63c2fd294ee20d483388dfa774cca5` | ⚠️ Unaudited |
| MoolaRewardsDistributionOwnedWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x67ee1012a52568fd50d2e168023dc2852825e174` | ⚠️ Unaudited |
| MoolaStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 12 deployments: celo `0x1df0a9c8313a005793501bac2150dfb895d10fad`; celo `0x2ca16986bea18d562d26354b4ff4c504f14fb01c`; celo `0x31ccb9dc068058672d96e92baf96b1607855822e`; celo `0x64d996b71a5867886814bc9d45d2822bde027122`; celo `0x92e515887fa9a494c870d3fc1f90bc0214215539`; celo `0xb6a5059a228a16fa2827e28e52cec96bbc63d639`; celo `0xba7dcc70c68e11633d7dacbafa493af61d0c5b1d`; celo `0xc99cda8ffd6fb7bc31d56932713a447cd48a6bff`; celo `0xca54a6cc4e9c7d1eeea044d3e7bd7fe145b59bef`; celo `0xe76525610652ffc3af751ab0dcc3448b345051f6`; celo `0xe8b286649713447d8d5fbebc28c731830d19b6c9`; celo `0xf554690b1a996893c4debadc57b759350dc10b29` | ⚠️ Unaudited |
| MooToken | token | project_anchor | own_supporting | 0 | celo | unit-247945 | `0x17700282592d6917f6a73d0bf8accf4d578c131e` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0xb11f4e2165ffed2870d028f2f4ca032f5bfdfe89`; celo `0xe138cea37ce9c3fe08ad2a5f7a6039d2e8a884cc` | ⚠️ Unaudited |
| PriceFeed2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 9 deployments: celo `0x025e7f3c07f5b8f10ed355158204ba0cb4f7ad76`; celo `0x061aa8856ac4b0717e6bb586615ba26ce89083be`; celo `0x30e0b834215635ae03c0f616b6b3661cd5b65e91`; celo `0x47a6c30dfef12c6827bc1965be7cb0216216a51f`; celo `0xae02e55b022e50611d2ed5f5ec9de2da33210bd6`; celo `0xb3242f763ac96f056d34a067e4c2793527868106`; celo `0xc14a11df501ae2b1ac9a307b3a9302ae7ad92769`; celo `0xcaca925aa5519b445d308fbb8a302af4c3f687ca`; celo `0xea47729fe3d606c058530d061c7f5d68e490dff6` | ⚠️ Unaudited |
| PriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0x3c9bfc6e6ec5e6caee0f44a91976993fafd2142e`; celo `0x7bf9dbecb37bf634769cc0a93faab2df157128c4` | ⚠️ Unaudited |
| ReserveLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: celo `0x883185b84c35ef9cf89fca2627e4d7de1d6d9f45`; celo `0xa3a84e905359d037ac1241f4ff13bba5754be935` | ⚠️ Unaudited |
| ReserveLogic | unknown | project_anchor | own_supporting | 0 | celo | unit-247954 | `0x8e6779f2ac23f196ef9a6b446e557a6f81fd4f51` | ⚠️ Unaudited |
| ReserveLogicNoInterest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe788cbf8d93c182ca1d9bdfca1746fe384897728` | ⚠️ Unaudited |
| Sourcify | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 5 deployments: celo `0x18d229700e9163724d8f93a51125859d116c6366`; celo `0x1e5a4d734a716d8082fb008e9b7f34be6e261e59`; celo `0x76a9dd9cfb307848e46d139b2a7493b0bf2efd6e`; celo `0x7a9bd55df9aa495b60b69ddea3f5a5917fc3ebf3`; celo `0xc33734affc680353851306b0c310e6ba7cd28e12` | ⚠️ Unaudited |
| StableAndVariableTokensHelper | unknown | project_anchor | own_supporting | 0 | celo | unit-247972 | `0xec98172bcf583f2a40e7414cd9252404550fda87` | ⚠️ Unaudited |
| StableDebtToken | unknown | project_anchor | own_supporting | 0 | celo | unit-247961 | `0xacdb7b3e2b0a038f1f4ef04736728e0065b689da` | ⚠️ Unaudited |
| ValidationLogic | unknown | project_anchor | own_supporting | 0 | celo | unit-247947 | `0x2b9d164fd084a022a5fdfa19403944434e13151a` | ⚠️ Unaudited |
| VariableDebtToken | unknown | project_anchor | own_supporting | 0 | celo | unit-247944 | `0x0301cf8f1fcd9255bd32fb7e0fe5b3494f445c2c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1b00fd5693d065518630ea22efafc59e5596b09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2eba86df50a8c5e78897ace75ff24bf1b8291a2c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-247949 | `0x313bc86d3d6e86ba164b2b451cb0d9cfa7943e5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3abdfb1b91b25c58f80ef6df88d6d6043ea2e104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3c06fb2f5ab65b0e35f91073d88afe2b017d04b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3dc0fcd3aa6ca66a434086180e2604b9a9cfe781` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5e160ad1fd536e613d49787d25e2d6d06a00e72a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x71b7eccab9b239a33ba428b096a8c33011a5353c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7e7d2f9ef635ec83df06838ea4dc8053055a9f29` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-247952 | `0x801443470c119f2eac65f13886d9e293cdece2df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-247953 | `0x866fb3a7fb11d0defe3d0828417b5b948d36bac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8b47a13c675f936493ebaf6a7422e8539ca18933` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-247955 | `0x923182024d0fa5dee59e3c3db5e2eed23728d3c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa4659c76ee0567242ce09f906bab7c83e92c0e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb65b6a6a6f78e4daabf259c756567ae346699687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc794105e26ae955829be2f10d76eb13630d0b454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd425865dba7c7a9cb618f7b9c077bf0c2f3df89d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-247968 | `0xd7f77169d5e6a32c5044052f9a49eb94697b25ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe50b13fecdbee8937580b5628050340c6212ed5a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view](https://drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view) | unknown | Audit | 2021-02 | stale | Direct | contract_name | matched | 6 | 0 | 0 | 69 | high |
| [ToB_aave_protocol_final_report.pdf](https://github.com/moolamarket/moola/blob/main/aave-protocol/docs/ToB_aave_protocol_final_report.pdf) | OpenZeppelin | Audit | 2019-09 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 10 | high |
| [www.openzeppelin.com/news/aave-protocol-audit](https://www.openzeppelin.com/news/aave-protocol-audit) | OpenZeppelin | Audit | 2020-01 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3163] drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view — matched: All Solidity files listed in the Directory Structure section are considered in scope. The audit date is the report delivery date: February 21st, 2021.
- [11822] ToB_aave_protocol_final_report.pdf — matched: Extracted contracts from scope description, findings targets, and code quality recommendations. Audit date from cover page and changelog.
- [11823] www.openzeppelin.com/news/aave-protocol-audit — matched: All Solidity contracts in the aave-tech/dlp/contracts/contracts folder were in scope. The report lists many contracts by name. Audit date is January 15, 2020 from the title.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | AddressStorage | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | LendingPoolAddressesProvider | own contract | LendingPoolAddressesProvider (selected) `0xd1088091a174d33412a968fa34cb67131188b332` — deployed 2021-09-23 02:41:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | LendingPoolParametersProvider | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | UintStorage | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | FeeProvider | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | TokenDistributor | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | FlashLoanReceiverBase | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | IFlashLoanReceiver | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | IChainlinkAggregator | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | IFeeProvider | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | IKyberNetworkProxyInterface | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | ILendingPoolAddressesProvider | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | ILendingRateOracle | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | IPriceOracle | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | IPriceOracleGetter | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | IReserveInterestRateStrategy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | DefaultReserveInterestRateStrategy | own contract | DefaultReserveInterestRateStrategy (selected) `0xb3072f5f0d5e8b9036aec29f37bab70e86ea0018` — deployed 2021-09-23 02:47:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | LendingPool | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | LendingPoolConfigurator | own contract | LendingPoolConfigurator (selected) `0x2cca742585b39e0538f7cc01ab8ffa005f1b1f1c` — deployed 2021-09-23 02:43:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | LendingPoolCore | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | LendingPoolDataProvider | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | LendingPoolLiquidationManager | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | OptimizedReserveInterestRateStrategy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | CoreLibrary | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | EthAddressLib | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | WadRayMath | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | AdminUpgradeabilityProxy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | BaseAdminUpgradeabilityProxy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | BaseUpgradeabilityProxy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | Initializable | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | InitializableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | InitializableUpgradeabilityProxy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | Proxy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | UpgradeabilityProxy | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | VersionedInitializable | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | CeloProxyPriceProvider | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | ChainlinkProxyPriceProvider | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | IERC20DetailedBytes | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | WalletBalanceProvider | own contract | WalletBalanceProvider (selected) `0x931cbb9ad04d9e624597fbfef659567ad662cb49` — deployed 2021-09-23 02:49:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockFlashLoanReceiver | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorBAT | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorBase | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorDAI | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorKNC | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorLEND | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorLINK | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorMANA | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorMKR | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorREP | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorSUSD | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorTUSD | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorUSDC | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorUSDT | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorWBTC | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockAggregatorZRX | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | GenericOracleI | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | LendingRateOracle | own contract | LendingRateOracle (selected) `0xaa6e0f0b63287eac5ddbeefd1f133fc7f554ee9b` — deployed 2021-09-23 02:44:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | PriceOracle | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MintableERC20 | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockBAT | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockDAI | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockKNC | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockLEND | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockLINK | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockMANA | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockMKR | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockREP | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockSUSD | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockTUSD | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockUSDC | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockUSDT | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockWBTC | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockZRX | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | MockLendingPoolCore | unmatched — not counted | — | listed in directory structure | no |
| drive.google.com/file/d/1qd1h0dujnp4Xxrl68ZTIMzbt4aXzMWY7/view | AToken | own contract | AToken (selected) `0x55bfced2451b2154e06604d4269c9349f31141e6` — deployed 2021-09-23 02:47:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB_aave_protocol_final_report.pdf | LendingPoolCore | unmatched — not counted | — | listed in scope and findings | no |
| ToB_aave_protocol_final_report.pdf | LendingPoolAddressesProvider | own contract | LendingPoolAddressesProvider (selected) `0xd1088091a174d33412a968fa34cb67131188b332` — deployed 2021-09-23 02:41:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB_aave_protocol_final_report.pdf | NetworkMetadataProvider | unmatched — not counted | — | listed in scope and findings | no |
| ToB_aave_protocol_final_report.pdf | FeeProvider | unmatched — not counted | — | listed in scope and findings | no |
| ToB_aave_protocol_final_report.pdf | LendingPool | unmatched — not counted | — | listed in scope and findings | no |
| ToB_aave_protocol_final_report.pdf | DefaultReserveInterestRateStrategy | own contract | DefaultReserveInterestRateStrategy (selected) `0xb3072f5f0d5e8b9036aec29f37bab70e86ea0018` — deployed 2021-09-23 02:47:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB_aave_protocol_final_report.pdf | AToken | own contract | AToken (selected) `0x55bfced2451b2154e06604d4269c9349f31141e6` — deployed 2021-09-23 02:47:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ToB_aave_protocol_final_report.pdf | CoreLibrary | unmatched — not counted | — | mentioned in findings and code quality | no |
| ToB_aave_protocol_final_report.pdf | AddressStorage | unmatched — not counted | — | mentioned in finding 3 | no |
| ToB_aave_protocol_final_report.pdf | UintStorage | unmatched — not counted | — | mentioned in finding 3 | no |
| ToB_aave_protocol_final_report.pdf | IReserveInterestRateStrategy | unmatched — not counted | — | mentioned in finding 10 | no |
| ToB_aave_protocol_final_report.pdf | ILendingRateOracle | unmatched — not counted | — | mentioned in finding 10 | no |
| ToB_aave_protocol_final_report.pdf | INetworkMetadataProvider | unmatched — not counted | — | mentioned in code quality | no |
| www.openzeppelin.com/news/aave-protocol-audit | LendingPool | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | LendingPoolCore | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | LendingPoolAddressesProvider | own contract | LendingPoolAddressesProvider (selected) `0xd1088091a174d33412a968fa34cb67131188b332` — deployed 2021-09-23 02:41:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/aave-protocol-audit | LendingPoolConfigurator | own contract | LendingPoolConfigurator (selected) `0x2cca742585b39e0538f7cc01ab8ffa005f1b1f1c` — deployed 2021-09-23 02:43:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/aave-protocol-audit | LendingPoolLiquidationManager | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | LendingPoolDataProvider | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | LendingPoolParametersProvider | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | FeeProvider | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | NetworkMetadataProvider | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | DefaultReserveInterestRateStrategy | own contract | DefaultReserveInterestRateStrategy (selected) `0xb3072f5f0d5e8b9036aec29f37bab70e86ea0018` — deployed 2021-09-23 02:47:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/aave-protocol-audit | AToken | own contract | AToken (selected) `0x55bfced2451b2154e06604d4269c9349f31141e6` — deployed 2021-09-23 02:47:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/aave-protocol-audit | FlashLoanReceiverBase | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | CoreLibrary | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | WadRayMath | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | IFlashLoanReceiver | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | ILendingRateOracle | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/aave-protocol-audit | IPriceOracle | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | `0x22060a5e21921d1cfbebd301ff40f91f2d4c26f1` | ATokensAndRatesHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xf03982910d17d11670dc3734dd73292cc4ab7491` | LendingPoolAddressesProviderRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xe99ef38aeb4359ea36190c7d2c16802c2edf399e` | LendingPoolCollateralManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x17700282592d6917f6a73d0bf8accf4d578c131e` | MooToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x8e6779f2ac23f196ef9a6b446e557a6f81fd4f51` | ReserveLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xec98172bcf583f2a40e7414cd9252404550fda87` | StableAndVariableTokensHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xacdb7b3e2b0a038f1f4ef04736728e0065b689da` | StableDebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x2b9d164fd084a022a5fdfa19403944434e13151a` | ValidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x0301cf8f1fcd9255bd32fb7e0fe5b3494f445c2c` | VariableDebtToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 92 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=13

Fork inheritance lineage and inherited audits are included when available.
