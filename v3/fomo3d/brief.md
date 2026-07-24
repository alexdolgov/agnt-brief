# Agentic Audit Brief: Fomo3D

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Fomo3D (`fomo3d`)
- Website: [https://exitscam.me/](https://exitscam.me/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 25 unique implementations (27 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,869,722.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Fomo3D. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 25
- Raw deployments: 27
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

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Divies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1a294b212bb37f790aef81b91321a1111a177f45`; ethereum `0xc0c001140319c5f114f8467295b1f22f86929ad0`; ethereum `0xc7029ed9eba97a096e72607f4340c34049c7af48` | ⚠️ Unaudited |
| FoMo3Dlong | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56bbe9e9d360e94e6bd14c55e5713da7576049d7` | ⚠️ Unaudited |
| FoMo3Dlong | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-240044 | `0xa62142888aba8370742be823c1782d17a0389da1` | ⚠️ Unaudited |
| FoMo3DSoon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e8ecf79ade5e2c49b9e30d795517a81e0bf00b8` | ⚠️ Unaudited |
| Hourglass | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3775fb83f7d12a36e0475abdd1fca35c091efbe` | ⚠️ Unaudited |
| JIincForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd4950f977ee28d2c132f1353d1595035db444ee` | ⚠️ Unaudited |
| MSFun | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1974850db14d6b75322b56fc5febc2698d5f4120` | ⚠️ Unaudited |
| NameFilter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b7ac91b53545ae20a4990f9b5f6a14682deecbc` | ⚠️ Unaudited |
| PlayerBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd60d353610d9a5ca478769d371b53cefaa7b6e4c` | ⚠️ Unaudited |
| SafeMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4b5556dad4a0affc0eef0da56a928712e412180` | ⚠️ Unaudited |
| TeamJust | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x464904238b5cdbdce12722a7e6014ec1c0b66928` | ⚠️ Unaudited |
| UintCompressor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe86a14626854f846457c2879f31b25076f2c9fb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fb5464720ac6610da724fd9b65a08837bea51d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27afcbe78ba41543c8e6ede1ec0560cd128adccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32967d6c142c2f38ab39235994e2ddf11c37d590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c7b8591c50f4ad308d07d6294f2945e074420f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e58d5f454f08725c6387c3c4214ffa59f52d8ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x902d1a2a0800570b458119acaaeb3bf005d1aef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf57726f133e0e57896a52d3baf377d2bf91f5b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc25d0372bdb252933b8075e49cac77209769570b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6ffc9cc528d9646f8357293a98ff8796517716f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd14f5d11fde8f2baf394d3334df13ee6aa58c708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7da96693d54d6892d97dfa4751acd3c6493152d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf820cf2c076397532a0e29c13725c086a1898277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9ba0955b0509ac6138908ccc50d5bd296e48d7d` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 22
- Live contracts: 0
- Unknown liveness contracts: 22
- Source-verified contracts: 10
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: contamination review=2, source verified unclassified=8, unverified unclassified=12

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | contamination review | JIincForwarder<br>`0xdd4950f977ee28d2c132f1353d1595035db444ee` | non_address_book | unknown | unknown | verified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | contamination review | TeamJust<br>`0x464904238b5cdbdce12722a7e6014ec1c0b66928` | non_address_book | unknown | unknown | verified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | source verified unclassified | Divies<br>`0x1a294b212bb37f790aef81b91321a1111a177f45` | non_address_book | unknown | unknown | verified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | source verified unclassified | Divies<br>`0xc7029ed9eba97a096e72607f4340c34049c7af48` | non_address_book | unknown | unknown | verified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | source verified unclassified | FoMo3Dlong<br>`0x56bbe9e9d360e94e6bd14c55e5713da7576049d7` | non_address_book | unknown | unknown | verified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | source verified unclassified | MSFun<br>`0x1974850db14d6b75322b56fc5febc2698d5f4120` | non_address_book | unknown | unknown | verified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | source verified unclassified | NameFilter<br>`0x4b7ac91b53545ae20a4990f9b5f6a14682deecbc` | non_address_book | unknown | unknown | verified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | source verified unclassified | PlayerBook<br>`0xd60d353610d9a5ca478769d371b53cefaa7b6e4c` | non_address_book | unknown | unknown | verified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | source verified unclassified | SafeMath<br>`0xd4b5556dad4a0affc0eef0da56a928712e412180` | non_address_book | unknown | unknown | verified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | source verified unclassified | UintCompressor<br>`0xfe86a14626854f846457c2879f31b25076f2c9fb` | non_address_book | unknown | unknown | verified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1fb5464720ac6610da724fd9b65a08837bea51d3` | non_address_book | unknown | unknown | unverified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x27afcbe78ba41543c8e6ede1ec0560cd128adccb` | non_address_book | unknown | unknown | unverified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x32967d6c142c2f38ab39235994e2ddf11c37d590` | non_address_book | unknown | unknown | unverified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c7b8591c50f4ad308d07d6294f2945e074420f5` | non_address_book | unknown | unknown | unverified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e58d5f454f08725c6387c3c4214ffa59f52d8ac` | non_address_book | unknown | unknown | unverified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x902d1a2a0800570b458119acaaeb3bf005d1aef4` | non_address_book | unknown | unknown | unverified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbf57726f133e0e57896a52d3baf377d2bf91f5b1` | non_address_book | unknown | unknown | unverified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc25d0372bdb252933b8075e49cac77209769570b` | non_address_book | unknown | unknown | unverified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6ffc9cc528d9646f8357293a98ff8796517716f` | non_address_book | unknown | unknown | unverified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd14f5d11fde8f2baf394d3334df13ee6aa58c708` | non_address_book | unknown | unknown | unverified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7da96693d54d6892d97dfa4751acd3c6493152d` | non_address_book | unknown | unknown | unverified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf820cf2c076397532a0e29c13725c086a1898277` | non_address_book | unknown | unknown | unverified | n/a | `0xf39e044e1ab204460e06e87c6dca2c6319fc69e3` |

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
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

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
