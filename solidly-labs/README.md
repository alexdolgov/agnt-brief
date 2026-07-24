# Agentic Audit Brief: Solidly Labs

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Solidly Labs (`solidly-labs`)
- Website: [https://solidly.com](https://solidly.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, chain-4002, ethereum, fantom, goerli, optimism, sonic
- Contract surface: 49 unique implementations (49 raw deployments)
- Coverage basis: 1/21 confirmed own live verified implementations (4.8%); conservative 4.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $624,675.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Solidly Labs. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 26 contract row(s) across arbitrum, base, chain-4002, ethereum, fantom, goerli, optimism, sonic. Structural roles: 24 unclassified, 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 26
- Structural roles: unclassified (24), core (2)
- Contract kinds: contract (26)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 26 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- factory (`0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687`, chain 1)
- factory (`0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687`, chain 10)
- factory (`0x777faca731b17e8847ebf175c94dbe9d81a8f630`, chain 146)
- factory (`0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687`, chain 250)
- factory (`0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687`, chain 8453)
- factory (`0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687`, chain 42161)
- pool (`0x831bf48183b999fde45294b14b55199072f0801b`, chain 1)
- pool (`0x3d9752beb3125ae6cd778e10e99deec6c8455781`, chain 250)
- rewarder (`0x6207801cf58ec8ff24d59dbb8fc25e4a20989ae7`, chain 1)
- rewarder (`0x777dfb70eb952a081d0d11ff828715f79572cfe4`, chain 10)
- rewarder (`0x777dfb70eb952a081d0d11ff828715f79572cfe4`, chain 146)
- rewarder (`0x777dfb70eb952a081d0d11ff828715f79572cfe4`, chain 250)
- rewarder (`0x777dfb70eb952a081d0d11ff828715f79572cfe4`, chain 8453)
- rewarder (`0x777dfb70eb952a081d0d11ff828715f79572cfe4`, chain 42161)
- SolidlyProxy (`0x77730ed992d286c53f3a0838232c3957daeaaf73`, chain 1)
- veSOLID / NFTBridge (`0x777b2cc540e5e6824a5ceafb04c5a383874a6bf5`, chain 10)
- veSOLID / NFTBridge (`0x777b2cc540e5e6824a5ceafb04c5a383874a6bf5`, chain 146)
- veSOLID / NFTBridge (`0x777b2cc540e5e6824a5ceafb04c5a383874a6bf5`, chain 250)
- veSOLID / NFTBridge (`0x777b2cc540e5e6824a5ceafb04c5a383874a6bf5`, chain 8453)
- veSOLID / NFTBridge (`0x777b2cc540e5e6824a5ceafb04c5a383874a6bf5`, chain 42161)
- voter (`0x777034fef3ccbed74536ea1002faec9620deae0a`, chain 1)
- voter (`0x777bfcbde82256064742220463c7764954e9a927`, chain 10)
- voter (`0x777bfcbde82256064742220463c7764954e9a927`, chain 146)
- voter (`0x777bfcbde82256064742220463c7764954e9a927`, chain 250)
- voter (`0x777bfcbde82256064742220463c7764954e9a927`, chain 8453)
- voter (`0x777bfcbde82256064742220463c7764954e9a927`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 26; live-surface rows included: 26 (21 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 26/44 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/21 (4.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 26 own, 15 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 8 discovered implementations shown in the inventory but excluded from coverage (7 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 26 of 49 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/26
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 49
- Raw deployments: 49
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 3.8% | n/a |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VeV2Interface | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392750 | `0x77730ed992d286c53f3a0838232c3957daeaaf73` | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseV2TokenInterface | token | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-392748 | `0x777172d858dc1599914a1c4c6c9fc48c99a60990` | ⚠️ Unaudited |
| factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392686 | `0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687` | ⚠️ Unaudited |
| factory | unknown | project_anchor | own_supporting | 0 | optimism | unit-392690 | `0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687` | ⚠️ Unaudited |
| factory | unknown | project_anchor | own_supporting | 0 | sonic | unit-392699 | `0x777faca731b17e8847ebf175c94dbe9d81a8f630` | ⚠️ Unaudited |
| factory | unknown | project_anchor | own_supporting | 0 | base | unit-392738 | `0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687` | ⚠️ Unaudited |
| factory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392721 | `0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687` | ⚠️ Unaudited |
| pool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392688 | `0x831bf48183b999fde45294b14b55199072f0801b` | ⚠️ Unaudited |
| rewarder | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392685 | `0x6207801cf58ec8ff24d59dbb8fc25e4a20989ae7` | ⚠️ Unaudited |
| rewarder | unknown | project_anchor | own_supporting | 0 | optimism | unit-392694 | `0x777dfb70eb952a081d0d11ff828715f79572cfe4` | ⚠️ Unaudited |
| rewarder | unknown | project_anchor | own_supporting | 0 | sonic | unit-392698 | `0x777dfb70eb952a081d0d11ff828715f79572cfe4` | ⚠️ Unaudited |
| rewarder | unknown | project_anchor | own_supporting | 0 | base | unit-392747 | `0x777dfb70eb952a081d0d11ff828715f79572cfe4` | ⚠️ Unaudited |
| rewarder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392729 | `0x777dfb70eb952a081d0d11ff828715f79572cfe4` | ⚠️ Unaudited |
| SOLID | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-392693 | `0x777cf5ba9c291a1a8f57ff14836f6f9dc5c0f9dd` | ⚠️ Unaudited |
| SOLID | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | unit-392697 | `0x777cf5ba9c291a1a8f57ff14836f6f9dc5c0f9dd` | ⚠️ Unaudited |
| SOLID | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-392745 | `0x777cf5ba9c291a1a8f57ff14836f6f9dc5c0f9dd` | ⚠️ Unaudited |
| SOLID | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-392727 | `0x777cf5ba9c291a1a8f57ff14836f6f9dc5c0f9dd` | ⚠️ Unaudited |
| veSOLID / NFTBridge | unknown | project_anchor | own_supporting | 0 | optimism | unit-392691 | `0x777b2cc540e5e6824a5ceafb04c5a383874a6bf5` | ⚠️ Unaudited |
| veSOLID / NFTBridge | unknown | project_anchor | own_supporting | 0 | sonic | unit-392695 | `0x777b2cc540e5e6824a5ceafb04c5a383874a6bf5` | ⚠️ Unaudited |
| veSOLID / NFTBridge | unknown | project_anchor | own_supporting | 0 | base | unit-392740 | `0x777b2cc540e5e6824a5ceafb04c5a383874a6bf5` | ⚠️ Unaudited |
| veSOLID / NFTBridge | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392723 | `0x777b2cc540e5e6824a5ceafb04c5a383874a6bf5` | ⚠️ Unaudited |
| voter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392687 | `0x777034fef3ccbed74536ea1002faec9620deae0a` | ⚠️ Unaudited |
| voter | unknown | project_anchor | own_supporting | 0 | optimism | unit-392692 | `0x777bfcbde82256064742220463c7764954e9a927` | ⚠️ Unaudited |
| voter | unknown | project_anchor | own_supporting | 0 | sonic | unit-392696 | `0x777bfcbde82256064742220463c7764954e9a927` | ⚠️ Unaudited |
| voter | unknown | project_anchor | own_supporting | 0 | base | unit-392743 | `0x777bfcbde82256064742220463c7764954e9a927` | ⚠️ Unaudited |
| voter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392725 | `0x777bfcbde82256064742220463c7764954e9a927` | ⚠️ Unaudited |

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
| factory | unknown | project_anchor | own_supporting | 0 | fantom | unit-392701 | `0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687` | ❓ Unverified |
| pool | unknown | project_anchor | own_supporting | 0 | fantom | unit-392700 | `0x3d9752beb3125ae6cd778e10e99deec6c8455781` | ❓ Unverified |
| rewarder | unknown | project_anchor | own_supporting | 0 | fantom | unit-392707 | `0x777dfb70eb952a081d0d11ff828715f79572cfe4` | ❓ Unverified |
| SOLID | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | unit-392705 | `0x777cf5ba9c291a1a8f57ff14836f6f9dc5c0f9dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x158381f1b992d4f665ce6a7c0df9284c9dc7c60d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x193baf807d7c3375eb7038d0cc68da733c702e75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d205f5150a4ac212295abafaa0004412e8e0d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c92cd1b834b5ff961b8c594a528eed2b6cd579c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x735bb16affe83a3dc4dc418abccf179617cf9ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca826106f052a2e8ef5ad1e5b7a5350d677092af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe511470c1fcaee3e7f8888a0b03fea5d16bfa16f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-392731 | `0x0e629bdff2cc7c6b99c7e35bd8a35d204f8c2f48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-392733 | `0x31635381bca17b8eb7731f7cef98c6489d271470` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-392734 | `0xa4f7baab9394d1a3366958f65a86c40ed4d08d4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8362dd9b78b0ea1320986b1157e2649d1b5c3ed7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4002 | unit-392709 | `0x356ed0875519bbcc725c4cd1be6de21627037583` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4002 | unit-392710 | `0x54eb4adbff3e25a0ef047a5a9434e51c4b921d4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4002 | unit-392712 | `0x9336dd038cb5af549160e7a6299c3a6ede6072df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4002 | unit-392714 | `0xab045ea417fda2a2839785f3449311729f38d260` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4002 | unit-392716 | `0xcb8d9002254bf4aacc8f1e179740b233fac50bb3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-4002 | unit-392717 | `0xfa4bd0d4052bddfd2705b85324a5b0a1944f6ee1` | ❓ Unverified |
| veSOLID / NFTBridge | unknown | project_anchor | own_supporting | 0 | fantom | unit-392702 | `0x777b2cc540e5e6824a5ceafb04c5a383874a6bf5` | ❓ Unverified |
| voter | unknown | project_anchor | own_supporting | 0 | fantom | unit-392703 | `0x777bfcbde82256064742220463c7764954e9a927` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 8
- Live contracts: 0
- Unknown liveness contracts: 8
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=8

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x158381f1b992d4f665ce6a7c0df9284c9dc7c60d` | non_address_book | unknown | unknown | unverified | n/a | `0x082ac14939338bd25eec8078b1a3550cbef842e4` |
| unverified unclassified | UnnamedContract<br>`0x193baf807d7c3375eb7038d0cc68da733c702e75` | non_address_book | unknown | unknown | unverified | n/a | `0x082ac14939338bd25eec8078b1a3550cbef842e4` |
| unverified unclassified | UnnamedContract<br>`0x2d205f5150a4ac212295abafaa0004412e8e0d71` | non_address_book | unknown | unknown | unverified | n/a | `0x082ac14939338bd25eec8078b1a3550cbef842e4` |
| unverified unclassified | UnnamedContract<br>`0x4c92cd1b834b5ff961b8c594a528eed2b6cd579c` | non_address_book | unknown | unknown | unverified | n/a | `0x082ac14939338bd25eec8078b1a3550cbef842e4` |
| unverified unclassified | UnnamedContract<br>`0x735bb16affe83a3dc4dc418abccf179617cf9ff2` | non_address_book | unknown | unknown | unverified | n/a | `0x082ac14939338bd25eec8078b1a3550cbef842e4` |
| unverified unclassified | UnnamedContract<br>`0xca826106f052a2e8ef5ad1e5b7a5350d677092af` | non_address_book | unknown | unknown | unverified | n/a | `0x082ac14939338bd25eec8078b1a3550cbef842e4` |
| unverified unclassified | UnnamedContract<br>`0xe511470c1fcaee3e7f8888a0b03fea5d16bfa16f` | non_address_book | unknown | unknown | unverified | n/a | `0x082ac14939338bd25eec8078b1a3550cbef842e4` |
| unverified unclassified | UnnamedContract<br>`0x8362dd9b78b0ea1320986b1157e2649d1b5c3ed7` | non_address_book | unknown | unknown | unverified | n/a | `0x082ac14939338bd25eec8078b1a3550cbef842e4` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Cyfrin_Memebox_Audit.pdf](https://github.com/SolidlyLabs/Solidly-Audits/blob/main/Memebox%20(Solidly%20V2%20Memecore)/Cyfrin_Memebox_Audit.pdf) | Cyfrin | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [audit_solidly.pdf](https://github.com/SolidlyLabs/Solidly-Audits/blob/main/Solidly%20V2/audit_solidly.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | matched | 1 | 1 | 0 | 21 | n/a |
| [cyfrin_solidlyV3.pdf](https://github.com/SolidlyLabs/Solidly-Audits/blob/main/Solidly%20V3/cyfrin_solidlyV3.pdf) | Cyfrin | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13871] Cyfrin_Memebox_Audit.pdf — no match: All contracts from the flattened SolidlyV2-memecore.sol file are in scope.
- [13872] audit_solidly.pdf — matched: No reason recorded
- [13873] cyfrin_solidlyV3.pdf — no match: Extracted contracts from the Audit Scope section and file paths. Note: 'Status' appears in both v3-core and v3-rewards; only one entry included.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Cyfrin_Memebox_Audit.pdf | Math | unmatched — not counted | — | listed in scope | no |
| Cyfrin_Memebox_Audit.pdf | SolidlyV2Accounting | unmatched — not counted | — | listed in scope | no |
| Cyfrin_Memebox_Audit.pdf | SolidlyV2LockBox | unmatched — not counted | — | listed in scope | no |
| Cyfrin_Memebox_Audit.pdf | SolidlyV2Pair | unmatched — not counted | — | listed in scope | no |
| Cyfrin_Memebox_Audit.pdf | SolidlyV2ERC42069 | unmatched — not counted | — | listed in scope | no |
| Cyfrin_Memebox_Audit.pdf | SolidlyV2Factory | unmatched — not counted | — | listed in scope | no |
| audit_solidly.pdf | BaseV2 | unmatched — not counted | — | — | no |
| audit_solidly.pdf | BaseV2BribeFactory | unmatched — not counted | — | — | no |
| audit_solidly.pdf | BaseV2Factory | unmatched — not counted | — | — | no |
| audit_solidly.pdf | BaseV2FeeDistFactory | unmatched — not counted | — | — | no |
| audit_solidly.pdf | BaseV2Fees | unmatched — not counted | — | — | no |
| audit_solidly.pdf | BaseV2Minter | unmatched — not counted | — | — | no |
| audit_solidly.pdf | BaseV2Pair | unmatched — not counted | — | — | no |
| audit_solidly.pdf | BaseV2Router01 | unmatched — not counted | — | — | no |
| audit_solidly.pdf | BaseV2Voter | unmatched — not counted | — | — | no |
| audit_solidly.pdf | BribeV2 | unmatched — not counted | — | — | no |
| audit_solidly.pdf | FeeDistV2 | unmatched — not counted | — | — | no |
| audit_solidly.pdf | GaugeV2 | unmatched — not counted | — | — | no |
| audit_solidly.pdf | SolidlyChildImplementation | unmatched — not counted | — | — | no |
| audit_solidly.pdf | SolidlyChildProxy | unmatched — not counted | — | — | no |
| audit_solidly.pdf | SolidlyDeployer | unmatched — not counted | — | — | no |
| audit_solidly.pdf | SolidlyFactory | unmatched — not counted | — | — | no |
| audit_solidly.pdf | SolidlyImplementation | unmatched — not counted | — | — | no |
| audit_solidly.pdf | SolidlyLens | unmatched — not counted | — | — | no |
| audit_solidly.pdf | SolidlyProxy | own proxy deployment | SolidlyProxy (proxy) (selected) `0x77730ed992d286c53f3a0838232c3957daeaaf73` — deployed 2022-12-31 12:56:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit_solidly.pdf | solidly_library | unmatched — not counted | — | — | no |
| audit_solidly.pdf | veV2 | unmatched — not counted | — | — | no |
| audit_solidly.pdf | ve_distV2 | unmatched — not counted | — | — | no |
| cyfrin_solidlyV3.pdf | SolidlyV3Factory | unmatched — not counted | — | listed in scope table | no |
| cyfrin_solidlyV3.pdf | SolidlyV3Pool | unmatched — not counted | — | listed in scope table | no |
| cyfrin_solidlyV3.pdf | SolidlyV3PoolDeployer | unmatched — not counted | — | listed in scope table | no |
| cyfrin_solidlyV3.pdf | Position | unmatched — not counted | — | listed in scope table | no |
| cyfrin_solidlyV3.pdf | Status | unmatched — not counted | — | listed in scope table (v3-core) | no |
| cyfrin_solidlyV3.pdf | Tick | unmatched — not counted | — | listed in scope table | no |
| cyfrin_solidlyV3.pdf | TransferHelper | unmatched — not counted | — | listed in scope table | no |
| cyfrin_solidlyV3.pdf | Validation | unmatched — not counted | — | listed in scope table | no |
| cyfrin_solidlyV3.pdf | RewardDistributor | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 47 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 36 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=1

Zero-match audit list:

- [13871] Cyfrin_Memebox_Audit.pdf
- [13873] cyfrin_solidlyV3.pdf

Fork inheritance lineage and inherited audits are included when available.
