# Agentic Audit Brief: Angstrom

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `badfb69ca75b1f24c1a11ab95b6fafb44eb35f63eed2bc554b58d06f531dd5bd`

⚠️ Lifecycle status: DECLINING - TVL dropped 69.9% over 90 days

## Project Overview

- Project: Angstrom (`angstrom`)
- Website: [https://angstrom.xyz/](https://angstrom.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-24T07:45:00.000Z
- Pipeline run: brief-priority-deployer-expansion-20260724-v1
- Chains: base, ethereum, sepolia
- Contract surface: 37 unique implementations (39 raw deployments)
- Coverage basis: 1/5 confirmed own live verified implementations (20.0%); conservative 20.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,967,672.32
- On-chain TVL (included contracts): $223,534,408.46
- TVL by chain: Ethereum $205,311,400.31 | Base $18,223,008.14

## Project Description

This brief describes the observed EVM deployment and audit surface for Angstrom. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across base, ethereum, sepolia. Structural roles: 3 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (3), supporting (3)
- Contract kinds: contract (6)
- Detected standards: ownable (4), accesscontrol (1), erc165 (1)
- Frameworks: solady (5), openzeppelin (4), foundry (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Angstrom (`0x0000000aa232009084bd71a5797d089aa4edfad4`, chain 1)
- AngstromL2 (`0x7fa49d29481b6d168505ccde26635e204c09e5cf`, chain 8453)
- AngstromL2 (`0xcd256a2f4574cb6aca4837313ad225d2fe1de5cf`, chain 8453)
- AngstromL2Factory (`0x0000000000fd3b85c30f942e8d878e858e69cd05`, chain 8453)
- ControllerV1 (`0x1746484ea5e11c75e009252c102c8c33e0315fd4`, chain 1)
- TimelockController (`0x60d41d9708bbefd29000d1486c6406ef23526c01`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/5 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 30 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 5 of 37 unique; 32 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/14
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 37
- Raw deployments: 39
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 20.0% (Spearbit)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 1 | 7.1% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Angstrom | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379014 | `0x0000000aa232009084bd71a5797d089aa4edfad4` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x000000000004444c5dc75cb358380d2e3de08a90`; base `0x498581ff718922c3f8e6a244956af099b2652b2b` | ⚠️ Unaudited |
| AngstromAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb535aeb27335b91e1b5bccbd64888ba7574efbf8` | ⚠️ Unaudited |
| AngstromInspector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd262c224402e9a7f5e8ad1621be1bb1f3203b6c3` | ⚠️ Unaudited |
| AngstromL2 | unknown | project_anchor | own_supporting | 0 | base | unit-379020 | 2 deployments: base `0x7fa49d29481b6d168505ccde26635e204c09e5cf`; base `0xcd256a2f4574cb6aca4837313ad225d2fe1de5cf` | ⚠️ Unaudited |
| AngstromL2Factory | registry | project_anchor | own_supporting | 0 | base | unit-379019 | `0x0000000000fd3b85c30f942e8d878e858e69cd05` | ⚠️ Unaudited |
| AngstromVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6582c770fc4167aa807c3846c73e6006e90c169c` | ⚠️ Unaudited |
| ControllerV1 | governance | project_anchor | own_supporting | 0 | ethereum | unit-379015 | `0x1746484ea5e11c75e009252c102c8c33e0315fd4` | ⚠️ Unaudited |
| EventEmitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3df869572ac94bb1acf5e9ecbfae3afee8a00df` | ⚠️ Unaudited |
| PerpsOracleAttested | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d8555f8c710798274a8c655b9a26a3465a65c0b` | ⚠️ Unaudited |
| PriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cf26a7e680d5d86232f985b91c6cb9e0774b89d` | ⚠️ Unaudited |
| Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x814e3b8dfdc2376b59a5ab70e8784dcb3bebf8cc` | ⚠️ Unaudited |
| TimelockController | governance | project_anchor | own_supporting | 0 | ethereum | unit-379016 | `0x60d41d9708bbefd29000d1486c6406ef23526c01` | ⚠️ Unaudited |
| VaultExtension | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06d9f5e807eeca914482bbd8ed3f40c55ce06c79` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73922ee4f10a1d5a68700ff5c4fbf6b0e5bba674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9051085355ba7e36177e0a1c4082cb88c270ba90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0e209a38c5c4ba34cad20acaca09a610224ba61d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0e308c1382705ed0cdd56f132ff004baa9878dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x167e96ce69ae0f752c48788d5a2b95ab51acca48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x29358dafdc14221e7f7a46d6347c87a89a2b4da6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x40069bbb265c2a24ce3c4e37d1a92b71270eda20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x40c32cc8ac5d4155826d510fbbb63ac94937a79e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b3f375ec381412df3210e9e7a506bb073f92456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4de4326613020a00f5545074bc578c87761295c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x53b5bd9d96010cd018977c544cbc7b32de9ce252` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379017 | `0x73922ee4f10a1d5a68700ff5c4fbf6b0e5bba674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7b172c425da9afd142bdf984d1b2df57d68e1ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7d744be01100af58576dd08118572b2ab1fb86e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8f7c8ef580f4d22cfb08c0cdae9812a924d0e246` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-379018 | `0x9051085355ba7e36177e0a1c4082cb88c270ba90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x93d9faa6dff56f9fa94d0968f57d92b334e65b60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa9c2facf4af65165c6cd73eecad3263412e0521c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd280e3d98b722da75c425a5902bc6d9ef6f509f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd7d2f2a4e117fab1611accb599a0717959d83588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe31934e7e08214f16646f843bcab98cc0fc10ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf0bcef24596237c7db0be9e4a5b8350ad24fd0f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfc9e1d6677c283b920d6b1e97e356234bd65d0f5` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 20
- Live contracts: 0
- Unknown liveness contracts: 20
- Source-verified contracts: 1
- Currently scope-matched contracts retained as-is: 0
- Classification counts: source verified unclassified=1, unverified unclassified=19

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| source verified unclassified | PerpsOracleAttested<br>`0x5d8555f8c710798274a8c655b9a26a3465a65c0b` | non_address_book | unknown | unknown | verified | n/a | `0xd13559bfcb3f481d958e6e90317a97b237cd9377` |
| unverified unclassified | UnnamedContract<br>`0x0e209a38c5c4ba34cad20acaca09a610224ba61d` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0x0e308c1382705ed0cdd56f132ff004baa9878dc3` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0x167e96ce69ae0f752c48788d5a2b95ab51acca48` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0x29358dafdc14221e7f7a46d6347c87a89a2b4da6` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0x40069bbb265c2a24ce3c4e37d1a92b71270eda20` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0x40c32cc8ac5d4155826d510fbbb63ac94937a79e` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0x4b3f375ec381412df3210e9e7a506bb073f92456` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0x4de4326613020a00f5545074bc578c87761295c7` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0x53b5bd9d96010cd018977c544cbc7b32de9ce252` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0x7b172c425da9afd142bdf984d1b2df57d68e1ce9` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0x7d744be01100af58576dd08118572b2ab1fb86e0` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0x8f7c8ef580f4d22cfb08c0cdae9812a924d0e246` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0x93d9faa6dff56f9fa94d0968f57d92b334e65b60` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0xa9c2facf4af65165c6cd73eecad3263412e0521c` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0xd280e3d98b722da75c425a5902bc6d9ef6f509f1` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0xd7d2f2a4e117fab1611accb599a0717959d83588` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0xe31934e7e08214f16646f843bcab98cc0fc10ae5` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0xf0bcef24596237c7db0be9e4a5b8350ad24fd0f6` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |
| unverified unclassified | UnnamedContract<br>`0xfc9e1d6677c283b920d6b1e97e356234bd65d0f5` | non_address_book | unknown | unknown | unverified | n/a | `0x9b9202606f77db144c682650343a10e43ac4c64b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cantina.xyz/portfolio/39f1c6a9-dbd5-4322-b6a3-84b794b97cb8](https://cantina.xyz/portfolio/39f1c6a9-dbd5-4322-b6a3-84b794b97cb8?utm_source=x&utm_medium=social&utm_campaign=july) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940](https://cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940) | Spearbit | Contest | 2024-11 | aging | Direct | n/a | matched | 1 | 0 | 0 | 36 | n/a |
| [cantina.xyz/portfolio/c2fe4e46-66a3-416e-ab26-40dd4b437ff6](https://cantina.xyz/portfolio/c2fe4e46-66a3-416e-ab26-40dd4b437ff6) | Spearbit | Audit | 2024-10 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2046] cantina.xyz/portfolio/39f1c6a9-dbd5-4322-b6a3-84b794b97cb8 — no match: No explicit scope section; contracts extracted from findings and code references. Audit period is 14-15 July 2025, so end date used.
- [2047] cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 — matched: No reason recorded
- [2048] cantina.xyz/portfolio/c2fe4e46-66a3-416e-ab26-40dd4b437ff6 — matched: The report does not contain a detailed scope table or file listing. Only the protocol name 'Angstrom' is mentioned as the subject of the audit.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| cantina.xyz/portfolio/39f1c6a9-dbd5-4322-b6a3-84b794b97cb8 | UnlockHook | unmatched — not counted | — | mentioned in recommendation diff | no |
| cantina.xyz/portfolio/39f1c6a9-dbd5-4322-b6a3-84b794b97cb8 | Asset | unmatched — not counted | — | referenced in description | no |
| cantina.xyz/portfolio/39f1c6a9-dbd5-4322-b6a3-84b794b97cb8 | Settlement | unmatched — not counted | — | referenced in description | no |
| cantina.xyz/portfolio/39f1c6a9-dbd5-4322-b6a3-84b794b97cb8 | GrowthOutsideUpdater | unmatched — not counted | — | referenced in description | no |
| cantina.xyz/portfolio/39f1c6a9-dbd5-4322-b6a3-84b794b97cb8 | PoolUpdates | unmatched — not counted | — | referenced in description | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | Angstrom | own contract | Angstrom (selected) `0x0000000aa232009084bd71a5797d089aa4edfad4` — deployed 2025-07-22 05:36:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | Asset | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | CalldataReader | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | ConfigEntry | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | Constants | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | DeltaTracker | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | GrowthOutsideUpdater | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | HookBuffer | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | IAngstromComposable | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | IDaiPermit | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | IERC2612 | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | IHooks | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | IUniV4 | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | MixedSignLib | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | OrderInvalidation | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | Pair | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | PermitSubmitterHook | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | PoolConfigStore | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | PoolRewards | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | PoolUpdateVariantMap | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | PoolUpdates | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | Positions | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | Price | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | RayMathLib | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | Settlement | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | SignatureLib | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | StoreDeployer | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | SwapCall | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | TickLib | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | ToBOrderBuffer | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | ToBOrderVariantMap | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | TopLevelAuth | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | TypedDataHasher | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | UniConsumer | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | UserOrderBuffer | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | UserOrderVariantMap | unmatched — not counted | — | — | no |
| cantina.xyz/competitions/84df57a3-0526-49b8-a7c5-334888f43940 | X128MathLib | unmatched — not counted | — | — | no |
| cantina.xyz/portfolio/c2fe4e46-66a3-416e-ab26-40dd4b437ff6 | Angstrom | own contract | Angstrom (selected) `0x0000000aa232009084bd71a5797d089aa4edfad4` — deployed 2025-07-22 05:36:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x7fa49d29481b6d168505ccde26635e204c09e5cf` | AngstromL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0000000000fd3b85c30f942e8d878e858e69cd05` | AngstromL2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1746484ea5e11c75e009252c102c8c33e0315fd4` | ControllerV1 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 41 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1, medium=1
- Match method counts: unique_name=2

Zero-match audit list:

- [2046] cantina.xyz/portfolio/39f1c6a9-dbd5-4322-b6a3-84b794b97cb8

Fork inheritance lineage and inherited audits are included when available.
