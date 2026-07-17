# Agentic Audit Brief: Edel

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

- Project: Edel (`edel`)
- Website: [https://www.edel.finance/](https://www.edel.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, ethereum
- Contract surface: 59 unique implementations (59 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,743,686.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Edel. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across base, bsc, ethereum. Structural roles: 5 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: ownable (4), ownable2step (2), erc1967proxy (1), erc20 (1), erc20permit (1)
- Frameworks: aave (4), openzeppelin (3), uniswap (2)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6d6aca7411e2e35125def630dcb0ed77a6ef7a5a`, chain 1)
- UnnamedContract (`0xbf59dbc154421a7b37f4f2841e11f4ed2a1dee7c`, chain 1)
- UnnamedContract (`0xbf59dbc154421a7b37f4f2841e11f4ed2a1dee7c`, chain 56)
- ContractOne (`0xfb31f85a8367210b2e4ed2360d2da9dc2d2ccc95`, chain 8453)
- EdelZap (`0xfc3f2b827a1176641022a9369c483b6faa2cb6f3`, chain 1)
- ERC4626EdelWrapperGateway (`0x349fa7e2a00fd64855713cf9b11e3c4c0232082c`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x3eeeb3cd20f844a578807fc457388ceb9a67faa6`, chain 1)
- PoolAddressesProvider (`0x7ff6bac9fedfa774060c880122bad2b607ba8a4d`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 51 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 8 of 59 unique; 51 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/53
- Verified + Unaudited implementations: 53
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 59
- Raw deployments: 59
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

### ⚠️ Verified + Unaudited (53)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ACLManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b8493f5c3e335602557c4684e46502c43c6fb64` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03e5235753880491b1d46c44fb44787628834cc3` | ⚠️ Unaudited |
| BorrowLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69193ab664dfb61ef9093fdc9ef229d560de1c8e` | ⚠️ Unaudited |
| BridgeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d61e0b36b9419bcbbf7e32eb6b49c53188ae526` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eb30706831854b78bca2472952f84d92e30425c` | ⚠️ Unaudited |
| ContractOne | unknown | project_anchor | own_supporting | 0 | base | unit-236679 | `0xfb31f85a8367210b2e4ed2360d2da9dc2d2ccc95` | ⚠️ Unaudited |
| ContractOneOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88c4c42ed68584ff02f5a00d5d3d985108a3961c` | ⚠️ Unaudited |
| DataStreamsConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4fe9fbc38a5f87862be4be13264039b28848dd` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c05f8a12bb64ea7fa3ca98dcddb60b43bf236b8` | ⚠️ Unaudited |
| DelegationAwareAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e11a40ba857e3c24c07798f2cf386b0d2df6161` | ⚠️ Unaudited |
| EdelStreams_XStocks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13536966973f5f463918cef7cd6e1545cd790116` | ⚠️ Unaudited |
| EdelWrappedXStocksAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74e9b93b8ad0f43f1dd0bca596ab6cce663efa71` | ⚠️ Unaudited |
| EdelZap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236677 | `0xfc3f2b827a1176641022a9369c483b6faa2cb6f3` | ⚠️ Unaudited |
| EmissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82ac3babec0050c970d415854c8360b278056789` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119505b31d369d5cf27c149a0d132d8cdd99cf5e` | ⚠️ Unaudited |
| ERC4626EdelWrapperGateway | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236673 | `0x349fa7e2a00fd64855713cf9b11e3c4c0232082c` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x245f4a173dd1e40017b17011710f5a5c467f121d` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6803ac1ad765a6d03a52b7b89302acf66f262a99` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x72fc034dc80f4fdf5436c2772e844170ca73e971` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-236680 | `0x3eeeb3cd20f844a578807fc457388ceb9a67faa6` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38c14f1091947572f592ca4de13462a4f5195cb2` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| MockAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4455e3f74adbe89d46e4ba1ef3231f0695664df8` | ⚠️ Unaudited |
| OndoAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07c6a25739ffe02b1dae12502632126ffa7497c2` | ⚠️ Unaudited |
| ParaSwapDebtSwapAdapterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56149c159544b23530ff772244f9011dcec297d5` | ⚠️ Unaudited |
| ParaSwapLiquiditySwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1123a070386e131db934b4136b1219da7e97be75` | ⚠️ Unaudited |
| ParaSwapLiquiditySwapAdapterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1559d61af153ce8511dd2a1afb5ca92d7639d2e` | ⚠️ Unaudited |
| ParaSwapRepayAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d123e921ec8810699dcb8c77a77d159064e6c1f` | ⚠️ Unaudited |
| ParaSwapRepayAdapterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7d7f1b7d28c23bfe442e59a2a0d91b7ddd7df18` | ⚠️ Unaudited |
| ParaSwapWithdrawSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x243aecbd7964ffda26c3c8e66f175853a10fafe7` | ⚠️ Unaudited |
| ParaSwapWithdrawSwapAdapterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x465289527cc6f5946bbfc87442cbfbbd69fb9c99` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc87ed0c515ffd27474ccfc05f48ac206d4924637` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236675 | `0x7ff6bac9fedfa774060c880122bad2b607ba8a4d` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aa5c4c61a25c50d96cfcc325de62fa19bdd406b` | ⚠️ Unaudited |
| PoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x861381d4955d3fae194e9d60fb3233f22aa3562a` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10bc9308c6045946918aebe38a5c9ca8cd2c6542` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2970e7ea5e74052e99455931931840d51c0835f9` | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2511bda9c038ad1a82f7d283c5df72b6cfc90303` | ⚠️ Unaudited |
| RewardsController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d7231fcfcc2ecb512cbe07a4b5fd9e9911653d` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8f2946a09a7137ea72f7f79261bf8f77f0d5e0` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e4e969ec8ce68e8b3e22ec71ef30791ecd54b18` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5ace7f72413fd391300c45b4440e5f651fe8fb4` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56e9577255b7e4289b78c8c9bdef20abf69bb158` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0df7427cd2d104ec6c452aaeac7b13b1addb2d15` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38554e6cc65637a5d4b6fb8daefb7cc7254c9a54` | ⚠️ Unaudited |
| WrappedBackedTokenImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0b2456017c5df2dfc0289740c4b352049892780c` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a233ecd6ff9e0b20fad37bf827937d2f7feae6a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236674 | `0x6d6aca7411e2e35125def630dcb0ed77a6ef7a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbe015118d6ca79c8e1da11cd7015e5b1107ec36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc95ebb40a5f98445e266cf6b237bdf2a0867752` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236676 | `0xbf59dbc154421a7b37f4f2841e11f4ed2a1dee7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeed91a1ad2a168b6bb83794762e096aec28a36df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-236678 | `0xbf59dbc154421a7b37f4f2841e11f4ed2a1dee7c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xfb31f85a8367210b2e4ed2360d2da9dc2d2ccc95` | ContractOne | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfc3f2b827a1176641022a9369c483b6faa2cb6f3` | EdelZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x349fa7e2a00fd64855713cf9b11e3c4c0232082c` | ERC4626EdelWrapperGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ff6bac9fedfa774060c880122bad2b607ba8a4d` | PoolAddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 6 |

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
