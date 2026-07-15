# Agentic Audit Brief: Trueo

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

- Project: Trueo (`trueo`)
- Website: [https://trueo.com/](https://trueo.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 58 unique implementations (82 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,304,112.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Trueo. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across base. Structural roles: 6 unclassified, 2 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: unclassified (6), core (2), supporting (1)
- Contract kinds: contract (9)
- Detected standards: ownable (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (2), permit2 (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0x61a98b...c695d7`, chain 8453)
- ERC1967Proxy (`0x8175b0...275baa`, chain 8453)
- ERC1967Proxy (`0xca7af0...f198be`, chain 8453)
- OracleBonds (`0xff21c2...0d7b9a`, chain 8453)
- OracleCouncil (`0xf1df87...87481a`, chain 8453)
- OrderManager (`0x8e5e63...5e3da7`, chain 8453)
- TruthMarket (`0xb7b53c...eef3d1`, chain 8453)
- TruthMarketV2 (`0x2ca897...3e3409`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (8 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 52 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 6 of 58 unique; 52 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/57
- Verified + Unaudited implementations: 57
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 58
- Raw deployments: 82
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

### ⚠️ Verified + Unaudited (57)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BinaryOutcomePlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb9103...c2f3ba` | ⚠️ Unaudited |
| CrossChainAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31fafd...7d72a9` | ⚠️ Unaudited |
| Escalation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0dc1f7...0644a0`; base `0x7397ef...940b27` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x39339e...755d9d`; base `0x8c6c62...20134f` | ⚠️ Unaudited |
| Launchpad | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8b9b64...e44147`; base `0xed3ebc...fd1af6` | ⚠️ Unaudited |
| LaunchpadFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9f04de...9a5417`; base `0xaa35bc...d7ee02` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf9d107...577d9f` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x03a520...ed34f1` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4615c3...121463`; base `0x4f2259...401009` | ⚠️ Unaudited |
| OracleBonds | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x118c2d...13f63e`; base `0x388993...91a9c0` | ⚠️ Unaudited |
| OracleBonds | unknown | project_anchor | own_supporting | 1 | base | unit-394275 | 2 deployments: base `0x8175b0...275baa`; base `0xff21c2...0d7b9a` | ⚠️ Unaudited |
| OracleCouncil | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x87bc36...7992ab`; base `0xb8e809...81c450` | ⚠️ Unaudited |
| OracleCouncil | unknown | project_anchor | own_supporting | 1 | base | unit-394274 | 2 deployments: base `0xca7af0...f198be`; base `0xf1df87...87481a` | ⚠️ Unaudited |
| OrderManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1cdb1c...c59a1a` | ⚠️ Unaudited |
| OrderManager | governance | project_anchor | own_supporting | 0 | base | unit-394271 | `0x8e5e63...5e3da7` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x000000...c78ba3` | ⚠️ Unaudited |
| PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x498581...652b2b` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x7c5f5a...429bdc` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d4e44...35b76a` | ⚠️ Unaudited |
| RestrictDepositorPlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x882a6b...e24629` | ⚠️ Unaudited |
| RestrictMaximumRatioOfOutcomeDepositPlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcb9d2c...4b6fb1` | ⚠️ Unaudited |
| RestrictMinimumDepositsPlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e8403...08c840` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1a4062...c035ed`; base `0x688f5b...8af014` | ⚠️ Unaudited |
| SwapRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x262666...41e481` | ⚠️ Unaudited |
| SweepStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb3151...fab215` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cdee0...c9ac6d` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x896371...f6fd04`; base `0xc0a7e6...c4959a` | ⚠️ Unaudited |
| TokenConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x74793d...9364f5`; base `0xb416f7...63fbaf` | ⚠️ Unaudited |
| TokenConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x807825...81b792`; base `0xe4a50a...44f864` | ⚠️ Unaudited |
| TrueToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21cfcf...6eb7ab` | ⚠️ Unaudited |
| TruthAttesterSBT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43a2ee...c97bc4` | ⚠️ Unaudited |
| TruthMarket | unknown | project_anchor | own_supporting | 0 | base | unit-394272 | `0xb7b53c...eef3d1` | ⚠️ Unaudited |
| TruthMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd51191...7720e2` | ⚠️ Unaudited |
| TruthMarketAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2bf3a4...553c0c`; base `0x6e08d2...8125e1` | ⚠️ Unaudited |
| TruthMarketHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1cfead...1740c4` | ⚠️ Unaudited |
| TruthMarketLPManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x05ef8b...6398fb`; base `0x68ff20...06d4b9`; base `0xa0be61...c79f89` | ⚠️ Unaudited |
| TruthMarketLPManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x909a43...5b42cb`; base `0xea477d...b9858a` | ⚠️ Unaudited |
| TruthMarketManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x21d652...bbe7b5`; base `0x7bdae0...275999`; base `0x83eaed...eeae2d` | ⚠️ Unaudited |
| TruthMarketManager | unknown | project_anchor | own_supporting | 1 | base | unit-394273 | `0x61a98b...c695d7` | ⚠️ Unaudited |
| TruthMarketManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-394270 | `0x8ddf40...d6dbe6` | ⚠️ Unaudited |
| TruthMarketSwapValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x55e26c...74dd38` | ⚠️ Unaudited |
| TruthMarketV2 | unknown | project_anchor | own_supporting | 0 | base | unit-394269 | `0x2ca897...3e3409` | ⚠️ Unaudited |
| TruthMarketV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x74ffbb...15b58c`; base `0x8e40e1...aa43da` | ⚠️ Unaudited |
| TruthMarketV2Launcher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7bb366...156b73`; base `0xdb5c23...45bd22` | ⚠️ Unaudited |
| TruthMarketV2LPManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1a6008...833443`; base `0x42db46...2bb04c` | ⚠️ Unaudited |
| TruthMarketV2LPManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x351539...b6968d`; base `0x5278ad...1e451b` | ⚠️ Unaudited |
| TruthMarketV2ProportionalDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5bfcba...12411a` | ⚠️ Unaudited |
| TruthMarketV2SingleSideLiquidityPositionDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x954a4c...ab57d3` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1fae24...352d77` | ⚠️ Unaudited |
| UniswapV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33128a...f6fdfd` | ⚠️ Unaudited |
| UniswapV3Staker | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x42be4d...25c3c1` | ⚠️ Unaudited |
| UniversalRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6ff569...299b43` | ⚠️ Unaudited |
| UniversalRouterAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0a1afc...64034a`; base `0x647474...14c19e` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x23cf10...acd2d7` | ⚠️ Unaudited |
| V3SwapStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x339619...fb3b65` | ⚠️ Unaudited |
| V4SwapStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f3da9...f7927e` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb13cf1...1def4b` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3334d8...621fa9` | ❓ Unverified |

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
| base | `0x8175b0...275baa` | OracleBonds | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xca7af0...f198be` | OracleCouncil | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8e5e63...5e3da7` | OrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb7b53c...eef3d1` | TruthMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x61a98b...c695d7` | TruthMarketManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2ca897...3e3409` | TruthMarketV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 51 |
| upstream | 4 |
| standard_library | 2 |
| needs_review | 1 |

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
