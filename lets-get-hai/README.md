# Agentic Audit Brief: Lets Get HAI

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Lets Get HAI (`lets-get-hai`)
- Website: [https://www.letsgethai.com](https://www.letsgethai.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: optimism
- Contract surface: 93 unique implementations (106 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $969,423.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Lets Get HAI. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across optimism. Structural roles: 6 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (6), unclassified (1)
- Contract kinds: contract (7)
- Detected standards: erc20 (5), erc20permit (5), ownable (1), pausable (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- GovernanceToken (`0x4200000000000000000000000000000000000042`, chain 10)
- WETH9 (`0x4200000000000000000000000000000000000006`, chain 10)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (2 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 86 discovered implementations shown in the inventory but excluded from coverage (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 2 of 93 unique; 91 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/54
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 39
- Unique implementations: 93
- Raw deployments: 106
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 2 fresh, 1 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountingEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa4900795ebffadc12790f05f7c4ac42cd765bd10` | ⚠️ Unaudited |
| AccountingJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc256c3aa404ab74ce050bcf8a05256b6a1729ef0` | ⚠️ Unaudited |
| BasicActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd36b1bd5445374ceb7fe4148a719584234da7bb0` | ⚠️ Unaudited |
| BeefyVeloVaultRelayerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x02fe16beec67c31e242a87832f7b92d557fdaabf`; optimism `0x6cbfa178142829bb84cd2567f64737c43edf67fd` | ⚠️ Unaudited |
| CoinJoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x30ce72230a47a0967b7e52a1bae0178dbd7c6ea3` | ⚠️ Unaudited |
| CollateralAuctionHouseFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x81c5c2da8c1a74c6077b03ad69ca04b74b94b427` | ⚠️ Unaudited |
| CollateralBidActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbfac170711dfe2043f47b34f118e9fcda8fc694d` | ⚠️ Unaudited |
| CollateralJoinFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfe7987b1ee45a8d592b15e8e924d50bfc8536143` | ⚠️ Unaudited |
| DebtAuctionHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7cde0d7296725afb80ea091eca8d06a377f617b3` | ⚠️ Unaudited |
| DebtBidActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfc55b886a2619bd8645549f7cb672872479f8117` | ⚠️ Unaudited |
| DelayedOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x41a600e03eaa8d208b9230a219e0c4594897b3bb` | ⚠️ Unaudited |
| DenominatedOracleFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc3a0035bcd3fcbb84a4874b19f7170bfe167fd35` | ⚠️ Unaudited |
| GlobalSettlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x75880aca7230462a630ad65ad5444cb1e1864218` | ⚠️ Unaudited |
| GlobalSettlementActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa0a78899cd5c093f563ef22e86b68bbc44845fa1` | ⚠️ Unaudited |
| GovernanceToken | token | project_anchor | own_supporting | 0 | optimism | unit-266873 | `0x4200000000000000000000000000000000000042` | ⚠️ Unaudited |
| HaiDelegatee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2c6c638b93ba5a11dbd419305f14749fc8aa2b63` | ⚠️ Unaudited |
| HaiGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe807f3282f3391d237ba8b9becb0d8ea3ba23777` | ⚠️ Unaudited |
| HaiProxyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbafbcdbfbb1569722253ed4d491d2fb3b5e03a27` | ⚠️ Unaudited |
| HaiSafeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0ff82d8322f6fa9c28ec46ef0a5c343e95106c3` | ⚠️ Unaudited |
| HardcodedOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8c212bcae328669c8b045d467cb78b88e0be0d39` | ⚠️ Unaudited |
| HypERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xbdf4a4cc124d9a83a5774574fcbe45dc5d1f1152`; optimism `0xfdf059e1c104a7ca3191b916e6f513c160aba0b1` | ⚠️ Unaudited |
| LiquidationEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8be588895be9b75f9a9daee185e0c2ad89891b56` | ⚠️ Unaudited |
| LiquidationJob | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ef15750b5672cd6217e4e184cead440cb1b3638` | ⚠️ Unaudited |
| OracleJob | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf4f18205d8d46638489865e42c0a71a3d4f9fc22` | ⚠️ Unaudited |
| OracleRelayer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6270403b908505f02da05be5c1956abb59fdb3a6` | ⚠️ Unaudited |
| PessimisticVeloSingleOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x2d442a71e7dc14068168a7e0680abcc043e26585`; optimism `0x557c249ee1b982397ae0fcf3da94665fb2a19e6c`; optimism `0x898e7451615d1139ef963c4f42de8d21c5d1c91a`; optimism `0x8cb1264aaaed03c086d43d2bcf9e355faa9d7bcb`; optimism `0xdfeb54652fd19c02c74e1827e049c812f2ff5448` | ⚠️ Unaudited |
| PIDController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6f9aec3c0df4df7a0da66453a38b8c767972f609` | ⚠️ Unaudited |
| PIDRateSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1f76f20c9d9075dc160d0e47cd214df0b7434d2f` | ⚠️ Unaudited |
| Pool | core_logic | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-266875 | `0xbded651c03e2bc332aa49c1ffca391eaa3ea6b86` | ⚠️ Unaudited |
| Pool | core_logic | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-266876 | `0xf4638dc488f9c826dc40250515592e678e447238` | ⚠️ Unaudited |
| PostSettlementSurplusAuctionHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1fa281ea8d0e9db78beaa1f5b1a452058f956d66` | ⚠️ Unaudited |
| PostSettlementSurplusBidActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x48c3416097529944946d08486f10185f18463640` | ⚠️ Unaudited |
| ProtocolToken | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-266877 | `0xf467c7d5a4a9c4687ffc7986ac6ad5a4c81e1404` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a3cbf11da1b799c521a655a258c45c852c66091` | ⚠️ Unaudited |
| ProxyERC20 | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-266874 | `0x8c6f28f2f1a3c87f0f938b96d27520d9751ec8d9` | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x629b03d018efd7871e5a72c929d88e29d03c0958`; optimism `0xcabaac238ab70888bcc13ff93fe31d8614a25224`; optimism `0xdaa95c72330a7ef1390874677323b2a13e0d94d7`; optimism `0xefa456c58b306674ca0eafb642735df4e79ecb75` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfed2eb6325432f0bf7110dce2ccc5ff811ac3d4d` | ⚠️ Unaudited |
| RewardedActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb688d73b58e5004341f855f3e71177316281cde7` | ⚠️ Unaudited |
| RewardPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa6dcda89deaca9e18e3e747b2101d6dad781b7ea` | ⚠️ Unaudited |
| SAFEEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9ff826860689483181c5fac9628fd2f70275a700` | ⚠️ Unaudited |
| SettlementSurplusAuctioneer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7edad06b56bbec6a1c5dd95b8d00aebc803afe43` | ⚠️ Unaudited |
| StabilityFeeTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe9e54c55d41d6622933f9f736e0c55484b3c4f6f` | ⚠️ Unaudited |
| StakingManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x1250f2326f04ac61ee5aed92fef74bcac6e6bc90`; optimism `0x13531b3039533860576e01798df29b6a14fcd1d9`; optimism `0x70bf153870e405097eeec57d0b800fe7ee279e93` | ⚠️ Unaudited |
| StakingToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0xaa46f6e234d52cc8c3b387a44584a9fb1a62be0a`; optimism `0xcb7e5bb21b714991bdc6b07be36cb897cdd1980f`; optimism `0xf632d72378d887e337c52ff57fcd454f78881fc3` | ⚠️ Unaudited |
| SurplusAuctionHouse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x096125fa7e2181dba78136782365a39c3a1778e9` | ⚠️ Unaudited |
| SurplusBidActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x632229a0a849bde3a1f1200cf23118b33a925cec` | ⚠️ Unaudited |
| SystemCoin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-266871 | `0x10398abc267496e49106b07dd6be13364d10dc71` | ⚠️ Unaudited |
| TaxCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x62b82cce08f8f2d808348409e9418c65eb1973c3` | ⚠️ Unaudited |
| TokenDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcb96543b9f3657be103ba6371aaed8a711cc9e02` | ⚠️ Unaudited |
| TrustedRelayerIsm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5efe302058757c630df21608548f24545291d505` | ⚠️ Unaudited |
| UniV3RelayerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb6a352636588d833d2795e67eaafdc5b6f3948c1` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | optimism | unit-266872 | `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |
| WrappedToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x70f3713512089736661f928b291d1443c8b1bb6a` | ⚠️ Unaudited |
| WrappedTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x20a7eaf4a922df50b312ef61aea8b6e1deb5ddd6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (39)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0078fb65304e9e047925b25a84f302e9709a36a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0ef96c66767942ed561e4c028905d683943b7a39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x146b020399769339509c98b7b353d19130c150ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x15f0ad2faca0fb11462109a781a38d35d778324a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1be428e1265d28194b44ac28d5728a1cf81c3469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1c48bbb32d7a5c799842d5dcfb13c1e95ed2ee02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x202d13f39dd71711339fdc2d951eac4d0582d711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x226e60c2513c4db44e21a4b783e0010b45dd6a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2729b135f37ef272c14e1688b4fe9bf368ba59f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2d57b9205957484839d830a38d7d7e1bd6d506f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3975ff822af38552fac62a975d4d4e0ea5ac5980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3baf7cb0af84007230295f7528baa0f1cb17ed94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3ccc004e68886b75f27ae3f715ef02e0ce55d6ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3e2d4b6652198aa914c5365192b54b5a808fb7ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4384004b516ea4665823b7931c7a17fb88e420cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x47c6ae06686d35dd7656be6af3091fcd626bbb2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4fcd90ee6a041c631b6b93a52b4d94e0cedcb1ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x50d758e014c972e73166ea87a6a7d96868bf2859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x524fe171e80173c15381bb50034033da282abcc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c9842e9fcef99b19e6ec086f32c2809108a44db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x61ad81f20e71051067977eb18a69ce9e98b064bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6353621ed493108d104c65ab98f550fb758055fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6c797b98b9245470e16a86dbd2f666a421a0c200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7c44077bca5bdeb5b4123b3f25510053f7687a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7ddb1bcedf6b3c615768d130588ed0fd471fa66f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x805a26c46ebf8b6815d8b81e1c488eae4c217d47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x90de1e1d3961a30046563fe774b3d998b58d7741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xaacc036c505370918e4a89567a636d561833bd21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb72ff173e0b022d36604673378d450c52f438c3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb97a5f055285244bf11252178fb1053f035a77e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbb2d454b459581e2b5f4860dd2762c5c3c1069a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd68d4fc30ee2a071f85186b5240c80bce8bc50b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc16cacc473a3e7c9483e3cb39a39fa4f88acad9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc199756dd05f99831c11ac668b5c4a44a3f56ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc64d0cb32be0c7e84720162ec97fd5c3201fc53b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd8485245e56f56b53e0c4af4c7d7c81c76747b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe1514605cfd551e5c501d2538b327429881462af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe1d1692a4e8a6014725efb38e775b2425c7b80ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfc4fd07b8cba6b008952656a3d16a25da012ea56` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 38
- Live contracts: 0
- Unknown liveness contracts: 38
- Source-verified contracts: 35
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=1, contamination review=20, source verified unclassified=14, unverified unclassified=3

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | TransparentUpgradeableProxy<br>`0xbdf4a4cc124d9a83a5774574fcbe45dc5d1f1152` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | BasicActions<br>`0xd36b1bd5445374ceb7fe4148a719584234da7bb0` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | BeefyVeloVaultRelayerFactory<br>`0x02fe16beec67c31e242a87832f7b92d557fdaabf` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | CollateralBidActions<br>`0xbfac170711dfe2043f47b34f118e9fcda8fc694d` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | CollateralJoinFactory<br>`0xfe7987b1ee45a8d592b15e8e924d50bfc8536143` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | DebtBidActions<br>`0xfc55b886a2619bd8645549f7cb672872479f8117` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | DelayedOracleFactory<br>`0x41a600e03eaa8d208b9230a219e0c4594897b3bb` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | DenominatedOracleFactory<br>`0xc3a0035bcd3fcbb84a4874b19f7170bfe167fd35` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | GlobalSettlementActions<br>`0xa0a78899cd5c093f563ef22e86b68bbc44845fa1` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | HaiSafeManager<br>`0xb0ff82d8322f6fa9c28ec46ef0a5c343e95106c3` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | HardcodedOracle<br>`0x8c212bcae328669c8b045d467cb78b88e0be0d39` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | LiquidationJob<br>`0x5ef15750b5672cd6217e4e184cead440cb1b3638` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | PIDController<br>`0x6f9aec3c0df4df7a0da66453a38b8c767972f609` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | PIDRateSetter<br>`0x1f76f20c9d9075dc160d0e47cd214df0b7434d2f` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | PostSettlementSurplusBidActions<br>`0x48c3416097529944946d08486f10185f18463640` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | RewardedActions<br>`0xb688d73b58e5004341f855f3e71177316281cde7` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | RewardPoolFactory<br>`0xa6dcda89deaca9e18e3e747b2101d6dad781b7ea` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | SurplusBidActions<br>`0x632229a0a849bde3a1f1200cf23118b33a925cec` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | TokenDistributor<br>`0xcb96543b9f3657be103ba6371aaed8a711cc9e02` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | TrustedRelayerIsm<br>`0x5efe302058757c630df21608548f24545291d505` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| contamination review | UniV3RelayerFactory<br>`0xb6a352636588d833d2795e67eaafdc5b6f3948c1` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| source verified unclassified | BeefyVeloVaultRelayerFactory<br>`0x6cbfa178142829bb84cd2567f64737c43edf67fd` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| source verified unclassified | CollateralAuctionHouseFactory<br>`0x81c5c2da8c1a74c6077b03ad69ca04b74b94b427` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| source verified unclassified | DebtAuctionHouse<br>`0x7cde0d7296725afb80ea091eca8d06a377f617b3` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| source verified unclassified | GlobalSettlement<br>`0x75880aca7230462a630ad65ad5444cb1e1864218` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| source verified unclassified | HaiDelegatee<br>`0x2c6c638b93ba5a11dbd419305f14749fc8aa2b63` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| source verified unclassified | HypERC20<br>`0xfdf059e1c104a7ca3191b916e6f513c160aba0b1` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| source verified unclassified | PostSettlementSurplusAuctionHouse<br>`0x1fa281ea8d0e9db78beaa1f5b1a452058f956d66` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| source verified unclassified | PythAggregatorV3<br>`0x629b03d018efd7871e5a72c929d88e29d03c0958` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| source verified unclassified | PythAggregatorV3<br>`0xcabaac238ab70888bcc13ff93fe31d8614a25224` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| source verified unclassified | PythAggregatorV3<br>`0xdaa95c72330a7ef1390874677323b2a13e0d94d7` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| source verified unclassified | PythAggregatorV3<br>`0xefa456c58b306674ca0eafb642735df4e79ecb75` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| source verified unclassified | SettlementSurplusAuctioneer<br>`0x7edad06b56bbec6a1c5dd95b8d00aebc803afe43` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| source verified unclassified | StabilityFeeTreasury<br>`0xe9e54c55d41d6622933f9f736e0c55484b3c4f6f` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| source verified unclassified | SurplusAuctionHouse<br>`0x096125fa7e2181dba78136782365a39c3a1778e9` | non_address_book | unknown | unknown | verified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| unverified unclassified | UnnamedContract<br>`0x202d13f39dd71711339fdc2d951eac4d0582d711` | non_address_book | unknown | unknown | unverified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| unverified unclassified | UnnamedContract<br>`0x4384004b516ea4665823b7931c7a17fb88e420cb` | non_address_book | unknown | unknown | unverified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |
| unverified unclassified | UnnamedContract<br>`0x61ad81f20e71051067977eb18a69ce9e98b064bc` | non_address_book | unknown | unknown | unverified | n/a | `0xbd8ec4cb226ebae228f8829e2ec23070b09165d3` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [HaiVELO V2 Electisec.pdf](https://github.com/hai-on-op/audit-reports/blob/main/HaiVELO%20V2%20Electisec.pdf) | Electisec | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [ackee_HAI_new-core-features_report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/ackee_HAI_new-core-features_report.pdf) | Ackee Blockchain | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |
| [dMakers_HAI_audit_report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/dMakers_HAI_audit_report.pdf) | dMakers | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 19 | n/a |
| [solidified_HAI_audit_report.pdf](https://github.com/hai-on-op/audit-reports/blob/main/solidified_HAI_audit_report.pdf) | Solidified | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 131 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3166] 2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf — no match: Two contracts in scope: CurveStableSwapNGRelayer and CurveStableSwapNGRelayerFactory. Audit date from timeline: February 12 to 13, 2026, so end date is 2026-02-13.
- [3167] HaiVELO V2 Electisec.pdf — no match: No reason recorded
- [3168] ackee_HAI_new-core-features_report.pdf — no match: No reason recorded
- [3169] dMakers_HAI_audit_report.pdf — no match: No reason recorded
- [3170] solidified_HAI_audit_report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf | CurveStableSwapNGRelayer | unmatched — not counted | — | listed in scope | no |
| 2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf | CurveStableSwapNGRelayerFactory | unmatched — not counted | — | listed in scope | no |
| HaiVELO V2 Electisec.pdf | WrappedTokenV2 | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | AbstractVeloVaultRelayer | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | Assertions | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | Authorizable | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | BeefyVeloVaultRelayer | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | Encoding | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | FactoryChild | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | Modifiable | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | RewardDistributor | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | RewardPool | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | RewardPoolChild | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | RewardPoolFactory | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | StakingManager | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | StakingToken | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | WrappedToken | unmatched — not counted | — | — | no |
| ackee_HAI_new-core-features_report.pdf | YearnVeloVaultRelayer | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | AccountingEngine | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | CoinJoin | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | DelayedOracle | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | ETHJoin | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | Encoding | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | HaiProxy | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | HaiProxyFactory | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | HaiProxyRegistry | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | LiquidationEngine | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | OracleRelayer | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | Ownable | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | PidRateSetter | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | PostSettlementSurplusAuctionHouse | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | SAFEEngine | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | SafeEngine | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | StabilityFeeTreasury | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | SystemCoin | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | TokenDistributor | unmatched — not counted | — | — | no |
| dMakers_HAI_audit_report.pdf | UniV3Relayer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | AccountingEngine | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | AccountingJob | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | Assertions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | Authorizable | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | AuthorizableChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | BasicActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ChainlinkRelayer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ChainlinkRelayerChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ChainlinkRelayerFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CoinJoin | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CollateralAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CollateralAuctionHouseChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CollateralAuctionHouseFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CollateralBidActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CollateralJoin | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CollateralJoinChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CollateralJoinDelegatableChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CollateralJoinFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | CommonActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DebtAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DebtBidActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DelayedOracle | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DelayedOracleChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DelayedOracleFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DenominatedOracle | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DenominatedOracleChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DenominatedOracleFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DeviatedOracle | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | Disableable | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | DisableableChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ETHJoin | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | Encoding | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | FactoryChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | GlobalSettlement | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | GlobalSettlementActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | HaiProxy | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | HaiProxyFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | HaiProxyRegistry | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | HaiSafeManager | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | HardcodedOracle | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IAccountingEngine | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IAccountingJob | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IAuthorizable | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IAuthorizableChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IBaseOracle | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IBasicActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IChainlinkOracle | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IChainlinkRelayer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IChainlinkRelayerChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IChainlinkRelayerFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICoinJoin | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICollateralAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICollateralAuctionHouseChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICollateralAuctionHouseFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICollateralBidActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICollateralJoin | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICollateralJoinChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICollateralJoinDelegatableChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICollateralJoinFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICommonActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ICommonSurplusAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDebtAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDebtBidActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDelayedOracle | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDelayedOracleChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDelayedOracleFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDenominatedOracle | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDenominatedOracleChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDenominatedOracleFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDisableable | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IDisableableChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IETHJoin | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IFactoryChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IGlobalSettlement | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IGlobalSettlementActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IHaiProxy | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IHaiProxyFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IHaiProxyRegistry | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IHaiSafeManager | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IJob | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ILiquidationEngine | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ILiquidationJob | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IModifiable | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IOracleJob | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IOracleRelayer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IOwnable | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IPIDController | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IPIDRateSetter | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IPostSettlementSurplusAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IProtocolToken | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IRewardedActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ISAFEEngine | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ISAFESaviour | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ISettlementSurplusAuctioneer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IStabilityFeeTreasury | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ISurplusAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ISurplusBidActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ISystemCoin | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ITaxCollector | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ITokenDistributor | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IUniV3Relayer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IUniV3RelayerChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IUniV3RelayerFactory | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | IWeth | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | Job | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | LiquidationEngine | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | LiquidationJob | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | Math | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | MintableERC20 | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | Modifiable | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | OracleJob | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | OracleRelayer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | Ownable | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | PIDController | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | PIDRateSetter | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | PostSettlementSurplusAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | PostSettlementSurplusBidActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | ProtocolToken | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | RewardedActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | SAFEEngine | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | SAFEHandler | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | SettlementSurplusAuctioneer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | StabilityFeeTreasury | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | SurplusAuctionHouse | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | SurplusBidActions | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | SystemCoin | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | TaxCollector | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | TokenDistributor | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | UniV3Relayer | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | UniV3RelayerChild | unmatched — not counted | — | — | no |
| solidified_HAI_audit_report.pdf | UniV3RelayerFactory | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x4200000000000000000000000000000000000042` | GovernanceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x4200000000000000000000000000000000000006` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 53 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 168 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [3166] 2026-02-HAI-CurveStableSwapNG-Oracle-Review-report.pdf
- [3167] HaiVELO V2 Electisec.pdf
- [3168] ackee_HAI_new-core-features_report.pdf
- [3169] dMakers_HAI_audit_report.pdf
- [3170] solidified_HAI_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
