# Agentic Audit Brief: Colony

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Colony (`colony`)
- Website: [https://www.colonylab.io/](https://www.colonylab.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 32 unique implementations (32 raw deployments)
- Coverage basis: 1/4 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $192,830.08
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Colony. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across avalanche. Structural roles: 4 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (4), unclassified (1)
- Contract kinds: contract (4), abstract (1)
- Detected standards: ownable (3), erc20 (2), erc20permit (2), pausable (2), erc165 (1)
- Frameworks: openzeppelin (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x62685d3eaace96d6145d35f3b7540d35f482de5b`, chain 43114)
- UnnamedContract (`0x6a74b8c452f36ad3a9a162d2710ba012c3e5eb82`, chain 43114)
- ColonyGovernanceToken (`0xec3492a2508ddf4fdc0cd76f31f340b30d1793e6`, chain 43114)
- ManagedIndex (`0x48f88a3fe843ccb0b5003e70b4192c1d7448bef0`, chain 43114)
- Vesting (`0xefac81f709d314604a7daee9ca234da978c2be20`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (4 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/4 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 5 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 5 of 32 unique; 27 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/29
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 32
- Raw deployments: 32
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 1 | 3.4% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-381755 | `0x62685d3eaace96d6145d35f3b7540d35f482de5b` | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AVAXHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6101f79b6b29ffa43a30dab7188918e669a56d2e` | ⚠️ Unaudited |
| ColonyGovernanceToken | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381759 | `0xec3492a2508ddf4fdc0cd76f31f340b30d1793e6` | ⚠️ Unaudited |
| DepositManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf2e0869b9e96ed25a5eb7e551229f3e50388224c` | ⚠️ Unaudited |
| DirectDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x837d54af002188045662cc3bff5b30e40247ba53` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x358ca1d984759c8ddb59a1ef74e76d615af11f28` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x3dad1208afec6eccda25169a5d16119ce2ba76bd` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x626068c6d37fa633fd746251eb5aa2aa8c019253` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x6d9f100ca14384262ca6afd8ef7cec265a113113` | ⚠️ Unaudited |
| IndexLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3531ed4cb9f8b68e0c706c92af5b8a50e095f293` | ⚠️ Unaudited |
| IndexNAV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x167daeaa53fb3f2b5719b19ad7397c0adb6de348` | ⚠️ Unaudited |
| IndexRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6a676ff024215942706071c84e086cd0af361270` | ⚠️ Unaudited |
| IndexRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5cade1b94f263d0e0ad6e68c4f19532a55f61153` | ⚠️ Unaudited |
| ManagedIndex | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381753 | `0x48f88a3fe843ccb0b5003e70b4192c1d7448bef0` | ⚠️ Unaudited |
| ManagedIndexFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6d825ce7f220c6cc03fe156f28be6318e6546ca8` | ⚠️ Unaudited |
| ManagedIndexReweightingLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f124cd28e775ae1fde2885c8fa6b2b8772e2e6b` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5463fb623fe9806b78d8ebc41f4671200295a9d0` | ⚠️ Unaudited |
| OrdererAvax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22486d98d59d810b89f2abd7bd2ca521b4be8c6d` | ⚠️ Unaudited |
| OrderHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x24ddfc46d4cbbb269bc4c2baf81cf5649cc31221` | ⚠️ Unaudited |
| OrderingExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe9b38d900445685cb7232259c95a96150fdd5585` | ⚠️ Unaudited |
| PhuturePriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05ea07036badcdef987f6b6a652f492a30c0a4ec` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe4d695387e7cfc3dfd388f1cf8bd6eba7e4e3027` | ⚠️ Unaudited |
| Staking | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-381754 | `0x5b0d74c78f2588b3c5c49857edb856cc731dc557` | ⚠️ Unaudited |
| StakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd2890ce5a3df6c7e26b83e8da202c7d37410bbc` | ⚠️ Unaudited |
| StakingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b8c3c4d13142d7457dc80c92db4c62f3543751c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x0eb749a42ca15d6ee8ad30e789586c09c2c52388` | ⚠️ Unaudited |
| Vesting | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381760 | `0xefac81f709d314604a7daee9ca234da978c2be20` | ⚠️ Unaudited |
| vToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9fee340b3754e0d1911d001ce8973fa91fefaabf` | ⚠️ Unaudited |
| vTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x986cefa4e8ba3ffec6ce3ef2449133072eb120f8` | ⚠️ Unaudited |

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
| UnnamedContract | periphery | project_anchor | own_supporting | 0 | avalanche | unit-381756 | `0x6a74b8c452f36ad3a9a162d2710ba012c3e5eb82` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-381757 | `0x7ccda6e26dced1ba275c67cd20235790ed615a8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-381758 | `0xae0f6d1aa8704ba051e040aac2b156b5cd3adbf2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Manual Review](https://omniscia.io/reports/colony-lab-staking-v2) | Omniscia | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [DL audit link](https://paladinsec.co/projects/colony) | Paladin | Audit | 2024-02 | stale | Direct | address | matched | 1 | 0 | 0 | 23 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16893] Manual Review — no match: All contracts listed in the 'Contracts Assessed' table under 'Files in Scope' are extracted. No audit date found in the provided text.
- [16894] DL audit link — matched: Extracted from two audit report sections: first for Colony (Token & Staking) completed 26 Feb 2024, second for Colony completed 19 Feb 2024. Used the latest date. Contracts listed in 'Contracts Audited' tables.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Manual Review | AntToken | unmatched — not counted | — | listed in scope table | no |
| Manual Review | AuthorizedStaking | unmatched — not counted | — | listed in scope table | no |
| Manual Review | PrivilegedGroupUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Manual Review | RewardingStaking | unmatched — not counted | — | listed in scope table | no |
| Manual Review | Staking | unmatched — not counted | — | listed in scope table | no |
| Manual Review | StakingV2 | unmatched — not counted | — | listed in scope table | no |
| Manual Review | StakingDeposit | unmatched — not counted | — | listed in scope table | no |
| Manual Review | TimedValuesStorage | unmatched — not counted | — | listed in scope table | no |
| DL audit link | AntTokenV2 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | StakingV3 | own contract | 0x62685d… (selected) `0x62685d3eaace96d6145d35f3b7540d35f482de5b` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DL audit link | KycManager | unmatched — not counted | — | listed in scope table | no |
| DL audit link | FractalPrivilegedGroup | unmatched — not counted | — | listed in scope table | no |
| DL audit link | PrivilegedGroupUpgradeable | unmatched — not counted | — | listed in scope table | no |
| DL audit link | EarlyStageManager | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ProjectNest | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ProjectNestFactory | unmatched — not counted | — | listed in scope table | no |
| DL audit link | StablecoinDistributor | unmatched — not counted | — | listed in scope table | no |
| DL audit link | DealSigner | unmatched — not counted | — | listed in scope table | no |
| DL audit link | AntTierProgram | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ColonyPoolExchangeStrategy | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ColonyRangedRewarder | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ColonyRouter | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ExchangeBoostRegistry | unmatched — not counted | — | listed in scope table | no |
| DL audit link | MasterchefColony | unmatched — not counted | — | listed in scope table | no |
| DL audit link | AbstractVestingV2 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | DiscreteVestingV2 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | DiscreteVestingV2Factory | unmatched — not counted | — | listed in scope table | no |
| DL audit link | LinearVestingV2 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | LinearVestingV2Factory | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ceToken | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ceTokenDistributor | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ceTokenFactory | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0xec3492a2508ddf4fdc0cd76f31f340b30d1793e6` | ColonyGovernanceToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x48f88a3fe843ccb0b5003e70b4192c1d7448bef0` | ManagedIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xefac81f709d314604a7daee9ca234da978c2be20` | Vesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 31 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: address=1

Zero-match audit list:

- [16893] Manual Review

Fork inheritance lineage and inherited audits are included when available.
