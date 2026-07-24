# Agentic Audit Brief: ApeChain Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

⚠️ Lifecycle status: UNKNOWN - TVL dropped 38.2% over 90 days

## Project Overview

- Project: ApeChain Bridge (`apechain-bridge`)
- Website: [https://apechain.com/portal#bridge](https://apechain.com/portal#bridge)
- Lifecycle: unknown (Tier 0, 93.6% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum
- Contract surface: 20 unique implementations (20 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $47,110,900.49
- On-chain TVL (included contracts): $148,164,315.76
- TVL by chain: Ethereum $148,164,315.76

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for ApeChain Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 20
- Raw deployments: 20
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SimpleToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d224452801aced8b2f0aebe155379bb5d594381` | ⚠️ Unaudited |
| ApeCoinStakedVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0187ae64e905b4fe7dd1568a5642fbef05e96e71` | ⚠️ Unaudited |
| ApeCoinStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5954ab967bc958940b7eb73ee84797dc8a2afbb9` | ⚠️ Unaudited |
| ApeETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf800f4948d16f23333508191b1b1591daf70438` | ⚠️ Unaudited |
| ApeUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2235d059f80e176d931ef76b6c51953eb3fbef4` | ⚠️ Unaudited |
| ERC20Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x6b71afb4b7725227ab944c96fe018ab9dc0434b8` | ⚠️ Unaudited |
| ERC20Inbox | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x1b98e4ed82ee1a91a65a38c690e2266364064d15` | ⚠️ Unaudited |
| ERC20Outbox | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x4f405ba65291063d8a524c2bdf55d4e67405c2af` | ⚠️ Unaudited |
| L1ApeETHRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c92ceeb09c83f1018d5bca81d933df3eeaed0a1` | ⚠️ Unaudited |
| L1Oft4626Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf33d21137cd0b878f3a18cc60cd74f842c59cb00` | ⚠️ Unaudited |
| L1OrbitCustomGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xed543da6fe33ccee50dc024b78c27959235d0ab0` | ⚠️ Unaudited |
| L1OrbitERC20Gateway | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xb603a1c07a11945bfe4855347c88583e31b8ddb0` | ⚠️ Unaudited |
| L1OrbitGatewayRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xd57df5c2dc2d60307a74944191f2aa5b7bd4a700` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e5f8ff72895aea53dd62b590da51e92dc75b507` | ⚠️ Unaudited |
| RollupAdminLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x374de579ae15ad59ed0519aeaf1a23f348df259c` | ⚠️ Unaudited |
| SequencerInbox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xe6a92ae29e24c343ee66a2b3d3ecb783d65e4a3c` | ⚠️ Unaudited |
| StETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8a12b1db09ec5a43919906d94fa7eeaef1131d1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27e800528bf4f0b1a8831c85763d20a26047b84d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b61c1c63206052b852c24b36d23abe35dac196c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 4
- Live contracts: 0
- Unknown liveness contracts: 4
- Source-verified contracts: 2
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=1, source verified unclassified=1, unverified unclassified=2

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | ApeCoinStakedVoting<br>`0x0187ae64e905b4fe7dd1568a5642fbef05e96e71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x33f32d80556f76c88f5206fb5bb69ab91d944e49` |
| source verified unclassified | StETHVault<br>`0xc8a12b1db09ec5a43919906d94fa7eeaef1131d1` | non_address_book | unknown | unknown | verified | n/a | `0xa42095bb1c45c51ecd6535f1130eec65dbe04484` |
| unverified unclassified | UnnamedContract<br>`0x27e800528bf4f0b1a8831c85763d20a26047b84d` | non_address_book | unknown | unknown | unverified | n/a | `0xa420b688fad7f076f7475cead5cc047235f554d4` |
| unverified unclassified | UnnamedContract<br>`0x5b61c1c63206052b852c24b36d23abe35dac196c` | non_address_book | unknown | unknown | unverified | n/a | `0xa42095bb1c45c51ecd6535f1130eec65dbe04484` |

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
| native | 8 |
| upstream | 1 |
| standard_library | 8 |
| needs_review | 3 |

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
