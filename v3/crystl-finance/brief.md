# Agentic Audit Brief: Crystl Finance

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

- Project: Crystl Finance (`crystl-finance`)
- Website: [https://www.crystl.finance/](https://www.crystl.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, cronos, fantom, moonbeam, polygon
- Contract surface: 67 unique implementations (71 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $165,979.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Crystl Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 33 contract row(s) across bsc, cronos, fantom, moonbeam, polygon. Structural roles: 31 unclassified, 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 33
- Structural roles: unclassified (31), core (2)
- Contract kinds: contract (31), abstract (2)
- Detected standards: ownable (2), erc20 (1), pausable (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 33; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 56 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 11 discovered implementations excluded (54 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 67
- Raw deployments: 71
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

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ANN | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x98936b...1f2067` | ⚠️ Unaudited |
| AnyswapV6ERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x011734...420acf`; polygon `0x806303...5cef6b` | ⚠️ Unaudited |
| AthToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | moonbeam | n/a | `0xcbabee...6b51d6` | ⚠️ Unaudited |
| BabyToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x53e562...3d2657` | ⚠️ Unaudited |
| BEP20Ethereum | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x2170ed...f933f8` | ⚠️ Unaudited |
| BEP20Token | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x23ce9e...5cd978`; bsc `0x7130d2...3ead9c`; bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BEP20TokenImplementation | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | bsc | n/a | `0x9678e4...0064e5` | ⚠️ Unaudited |
| BridgeToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x5ec03c...48acdc` | ⚠️ Unaudited |
| CrystalMine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5badd6...d057dd` | ⚠️ Unaudited |
| CrystalToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-234582 | `0x76bf0c...3cfe64` | ⚠️ Unaudited |
| EditableERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0xdfa464...964b02` | ⚠️ Unaudited |
| Emp | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x3b248c...dc1d58` | ⚠️ Unaudited |
| EShare | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0xdb20f6...956550` | ⚠️ Unaudited |
| FINToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x576c99...678e94` | ⚠️ Unaudited |
| Lucidao | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0xc2a45f...131b4a` | ⚠️ Unaudited |
| MasterHealer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xebcc84...ef1e6d` | ⚠️ Unaudited |
| MaticWETH | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x7ceb23...b9f619` | ⚠️ Unaudited |
| MintSwapCanonicalToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x208cfe...d77272`; bsc `0x734548...11c6ab` | ⚠️ Unaudited |
| MoboxToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x3203c9...da2377` | ⚠️ Unaudited |
| PDDollar | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x146e58...80c667` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4ff339...58ff56` | ⚠️ Unaudited |
| StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03a6c9...aa4957` | ⚠️ Unaudited |
| Stella | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0x0e3588...4c88d2` | ⚠️ Unaudited |
| StrategyMasterHealer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03196c...a2ad21` | ⚠️ Unaudited |
| StrategyMasterHealerForDoubleReflect | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa023d9...744341` | ⚠️ Unaudited |
| StrategyMasterHealerForQuick | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-234581 | `0x4509c2...8d5245` | ⚠️ Unaudited |
| StrategyMasterHealerForReflect | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x231166...5f2a4c` | ⚠️ Unaudited |
| StrategyMasterHealerKavian | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c83d7...48eeea` | ⚠️ Unaudited |
| StrategyMasterHealerWithReferral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9245...79a2c9` | ⚠️ Unaudited |
| SynapseERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x5f4bde...feed63` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12fc8f...990145` | ⚠️ Unaudited |
| UChildAdministrableERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | `0x2791bc...a84174` | ⚠️ Unaudited |
| UChildERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | `0x2e1ad1...586756` | ⚠️ Unaudited |
| UChildERC20 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | `0xc3c7d4...a58756` | ⚠️ Unaudited |
| UChildUSDT0 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | `0xc2132d...b58e8f` | ⚠️ Unaudited |
| VaultHealer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0192eb...fb47ef` | ⚠️ Unaudited |
| WBNB | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0xbb4cdb...bc095c` | ⚠️ Unaudited |
| Well | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0x511ab5...2411e3` | ⚠️ Unaudited |
| WETH9 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0xacc15d...c6077f` | ⚠️ Unaudited |
| WMATIC | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x0d500b...df1270` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x022401...b8c8e1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x02a8dc...9b47b6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x062e66...107d52` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x2d03be...d11e03` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x39bc1e...66c782` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x47a9d6...cd89aa` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x5c7f8a...e1ae23` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x68c4fd...ce016e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x6d6d6b...50a63a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x6f7151...159520` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0x98936b...1f2067` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0xadbd12...7b49fe` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0xb888d8...e7aa93` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0xc21223...ff0c59` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0xcbde0e...7ecb8b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0xd8d40d...de7ff0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | cronos | n/a | `0xe44fd7...0c299a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x55d398...197955` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x8ac76a...cd580d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x04068d...5d5b75` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x10b620...cd86f9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x21be37...1a4c83` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x5cc61a...78e59b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x6c021a...53fbb7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x841fad...c7effe` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0x322e86...b33bfb` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonbeam | n/a | `0x568e57...3abc3e` | ❓ Unverified |

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
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 54 |

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
