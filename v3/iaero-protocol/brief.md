# Agentic Audit Brief: iAero Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 4 audit(s)
- Eligible audit results: 5 (4 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: iAero Protocol (`iaero-protocol`)
- Website: [https://app.iaero.finance/](https://app.iaero.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 37 unique implementations (51 raw deployments)
- Coverage basis: 6/13 confirmed own live verified implementations (46.2%); conservative 46.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,228,897.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for iAero Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across base. Structural roles: 9 supporting, 7 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: supporting (9), core (7), unclassified (1)
- Contract kinds: contract (16), unclassified (1)
- Detected standards: ownable (7), pausable (6), erc165 (5), accesscontrol (4), erc20 (4), erc20permit (4), erc721 (1)
- Frameworks: openzeppelin (15)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x25f11f947309df89bf4d36da5d9a9fb5f1e186c1`, chain 8453)
- EpochStakingDistributor (`0x781a80fa817b5a146c440f03ef8643f4aca6588a`, chain 8453)
- GnosisSafeProxy (`0x1039cb48254a3150fc604d4b9ea08f66f4739d37`, chain 8453)
- iAEROAutoUSDCVault (`0xfe5c929677d97723dc822c86c93c7e2d1b59c774`, chain 8453)
- iAEROToken (`0x81034fb34009115f215f5d5f564aac9ffa46a1dc`, chain 8453)
- LIQLinearVester (`0xf1d25f4ee64988afad0f1612cc3d540725f319db`, chain 8453)
- LIQStakingDistributor (`0xb81efc6be6622bf4086566210a6ad134cd0cdda4`, chain 8453)
- LIQToken (`0x7ee8964160126081cebc443a42482e95e393e6a8`, chain 8453)
- PermalockVault_V5 (`0x180dab53968e599dd43cf431e27cb01aa5c37909`, chain 8453)
- RewardsHarvesterV2 (`0x77f90d2ddb15ffe28fa322ada351d11da3b8bfe5`, chain 8453)
- RewardsSugar (`0xd4ad2eeeb3314d54212a92f4cbbe684195defe3e`, chain 8453)
- StiAERO (`0x72c135b8eebc57a3823f0920233e1a90ff4d683d`, chain 8453)
- TreasuryDistributor (`0xd36b84eefd1f481a737595c8212c43a9cd76c8e0`, chain 8453)
- VotingManagerOptimised (`0xa0ebbded0e201a9c37f4bffbb831cb8db9fed0b8`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 17; live-surface rows included: 17 (13 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/13 (46.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations shown in the inventory but excluded from coverage (4 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 14 of 37 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/35
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 37
- Raw deployments: 51
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 5 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 17.1% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EpochStakingDistributor | operational_periphery | project_anchor | own_supporting | 0 | base | unit-242312 | `0x781a80fa817b5a146c440f03ef8643f4aca6588a` | ✅ Audited |
| iAEROToken | token | project_anchor | own_supporting | 0 | base | unit-242314 | `0x81034fb34009115f215f5d5f564aac9ffa46a1dc` | ✅ Audited |
| LIQToken | token | project_anchor | own_supporting | 0 | base | unit-242313 | `0x7ee8964160126081cebc443a42482e95e393e6a8` | ✅ Audited |
| RewardsHarvesterV2 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-242311 | `0x77f90d2ddb15ffe28fa322ada351d11da3b8bfe5` | ✅ Audited |
| StiAERO | token | project_anchor | own_supporting | 0 | base | unit-242310 | `0x72c135b8eebc57a3823f0920233e1a90ff4d683d` | ✅ Audited |
| VotingManagerOptimised | governance | project_anchor | own_supporting | 0 | base | unit-242316 | `0xa0ebbded0e201a9c37f4bffbb831cb8db9fed0b8` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Aero | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-242315 | `0x940181a94a35a4569e4529a3cdfb74e38fd98631` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x35f35ca5b132cadf2916bab57639128eac5bbcb5` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | base | unit-242324 | `0x1039cb48254a3150fc604d4b9ea08f66f4739d37` | ⚠️ Unaudited |
| iAEROAutoUSDCVault | core_logic | project_anchor | own_supporting | 0 | base | unit-242323 | `0xfe5c929677d97723dc822c86c93c7e2d1b59c774` | ⚠️ Unaudited |
| iAEROToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb2d6326eaec90ccbc9ce9b5d4a9367b307f8f4c9` | ⚠️ Unaudited |
| LIQLinearVester | operational_periphery | project_anchor | own_supporting | 0 | base | unit-242322 | `0xf1d25f4ee64988afad0f1612cc3d540725f319db` | ⚠️ Unaudited |
| LIQStakingDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x4b591f40c9e2a8e11495837386e1c03c8605be16`; base `0xe84945285b92e0afc6e61acb1f2c45d0699f8e47` | ⚠️ Unaudited |
| LIQStakingDistributor | operational_periphery | project_anchor | own_supporting | 0 | base | unit-242317 | `0xb81efc6be6622bf4086566210a6ad134cd0cdda4` | ⚠️ Unaudited |
| LIQToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x76d17a9bb85b272421e0fa46cc8ebf669fad37d6` | ⚠️ Unaudited |
| Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb018363f0a9af8f91f06fee6613a751b2a33fe5` | ⚠️ Unaudited |
| PermalockVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x38cc7923d5190a0e0fbdb8e51bce8ae8cef59c70`; base `0x430c3dc3cbf7b166d4ad3a7d1255ac4762fb7ca0`; base `0x55816b387d4077e26bbf51ad90ba3ed7fe0f339c`; base `0x6584a3cff5a9edc564fc5e75ec33898340552c61` | ⚠️ Unaudited |
| PermalockVault_V5 | core_logic | project_anchor | own_supporting | 0 | base | unit-242308 | `0x180dab53968e599dd43cf431e27cb01aa5c37909` | ⚠️ Unaudited |
| PermalockVault_V5 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x877398aea8b5ccb0d482705c2d88df768c953957`; base `0x9322a2155815cd636a16e66bef717b1b848e3248` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08d49da370ecffbc4c6fdd2ae82b2d6ae238affd` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x227f65131a261548b057215bb1d5ab2997964c7d` | ⚠️ Unaudited |
| RewardsHarvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x1dcdcc16167520256c3b13e18266615d504769ff`; base `0x1f935ebfeed8d68b901c154338223a33d044acfa`; base `0xa520f8d85d2fcebecd44b657f909aa3cc980750a`; base `0xe9fd07f2161d3fe49939acb379f157c4839459c4` | ⚠️ Unaudited |
| RewardsSugar | unknown | project_anchor | own_supporting | 0 | base | unit-242320 | `0xd4ad2eeeb3314d54212a92f4cbbe684195defe3e` | ⚠️ Unaudited |
| RewardTokenRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3e32b22da6bf601a5917ecd344a7ec46bca072c` | ⚠️ Unaudited |
| Router | adapter | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-242318 | `0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43` | ⚠️ Unaudited |
| StakingDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5ae34974387dfe5b141770274adc7ef5749fc7e1` | ⚠️ Unaudited |
| StakingDistributorV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c2b15113ad031ae12e154ee83f16a17dcbd4dbf` | ⚠️ Unaudited |
| TreasuryDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0ab24cdd6e23040e37fc24b19e1d43fbe9e65ee8`; base `0x4306e56213e985276b99fd5f5c5ae097fa5b1bdc`; base `0x7098c065578577926b3b34f4dd6f8172a8e541f9` | ⚠️ Unaudited |
| TreasuryDistributor | operational_periphery | project_anchor | own_supporting | 0 | base | unit-242319 | `0xd36b84eefd1f481a737595c8212c43a9cd76c8e0` | ⚠️ Unaudited |
| VeArtProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9992487b2ee03b7a91241695a58e0ef3654643e` | ⚠️ Unaudited |
| Voter | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-242307 | `0x16613524e02ad97edfef371bc883f2f5d6c480a5` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-242321 | `0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4` | ⚠️ Unaudited |
| VotingManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x06026fe30ce9e9a613a21a87af210022c80565a4`; base `0xc9c7bf2157163f859da851655ea02e14a3a26498`; base `0xde7785264cf9aceaf00e535bfb1067cd8d328c7f`; base `0xdf5ebfba1e39e206f1dcdbf93231ee5b7061cebf` | ⚠️ Unaudited |
| VotingManagerOptimised | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x1702ddf00e4ff3ed892e569a26e0f1f6858e6fbb`; base `0xe7082a6ecd7218ad6c8af732acb2305b5e5589b0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-242309 | `0x25f11f947309df89bf4d36da5d9a9fb5f1e186c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x75f57faf06f0191a1422a665bfc297bcb6aa765a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 3
- Live contracts: 0
- Unknown liveness contracts: 3
- Source-verified contracts: 3
- Currently scope-matched contracts retained as-is: 0
- Classification counts: source verified unclassified=3

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| source verified unclassified | LIQStakingDistributor<br>`0x4b591f40c9e2a8e11495837386e1c03c8605be16` | non_address_book | unknown | unknown | verified | n/a | `0x9402cec8e19cfbdc3fab9898f49ff91351d47a98` |
| source verified unclassified | LIQStakingDistributor<br>`0xe84945285b92e0afc6e61acb1f2c45d0699f8e47` | non_address_book | unknown | unknown | verified | n/a | `0x9402cec8e19cfbdc3fab9898f49ff91351d47a98` |
| source verified unclassified | LIQToken<br>`0x76d17a9bb85b272421e0fa46cc8ebf669fad37d6` | non_address_book | unknown | unknown | verified | n/a | `0x9402cec8e19cfbdc3fab9898f49ff91351d47a98` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [- [Audit PermaLock Vault]()](https://docs.iaero.finance/technical-documentation/audit-permalockvault_v5.md) | unknown | Audit | 2025-09 | fresh | Direct | address | no match | 0 | 0 | 0 | 1 | high |
| [- [Audit Voting Manager Optimised]()](https://docs.iaero.finance/technical-documentation/audit-votingmanageroptimised.md) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [- [Audit iAero & LIQ]()](https://docs.iaero.finance/technical-documentation/audit-iaero-and-liq.md) | unknown | Audit | 2025-09 | fresh | Direct | address | matched | 2 | 0 | 0 | 0 | high |
| [- [Audit Rewards Harvester]()](https://docs.iaero.finance/technical-documentation/audit-rewardsharvester.md) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [- [Audits Epoch Staking Distributor & stiAERO]()](https://docs.iaero.finance/technical-documentation/audit-epochstakingdistributor-stiaero.md) | unknown | Audit | 2025-09 | fresh | Direct | address | matched | 2 | 0 | 0 | 0 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [30465] - [Audit PermaLock Vault]() — no match: Only one contract (PermalockVault_V5) is in scope. Date is September 2025, converted to last day of month.
- [30466] - [Audit Voting Manager Optimised]() — matched: Only one contract in scope: VotingManagerOptimised. External interfaces (IVoter, IVoterTime, IPermalockVault, AggregatorV3Interface) are out of scope.
- [30467] - [Audit iAero & LIQ]() — matched: Two contracts audited: iAEROToken and LIQToken, both on Base Mainnet. Date is September 2025, converted to last day of month.
- [30468] - [Audit Rewards Harvester]() — matched: Only RewardsHarvester.sol is in scope; other contracts are external dependencies.
- [30470] - [Audits Epoch Staking Distributor & stiAERO]() — matched: Two contracts audited: EpochStakingDistributor and StiAERO. Date is September 2025, last day of month used.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| - [Audit PermaLock Vault]() | PermalockVault_V5 | unmatched — not counted | — | Contract address and name mentioned in audit report title and throughout | no |
| - [Audit Voting Manager Optimised]() | VotingManagerOptimised | own contract | VotingManagerOptimised (selected) `0xa0ebbded0e201a9c37f4bffbb831cb8db9fed0b8` — deployed 2025-10-10 00:59:03+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| - [Audit iAero & LIQ]() | iAEROToken | own contract | iAEROToken (selected) `0x81034fb34009115f215f5d5f564aac9ffa46a1dc` — deployed 2025-08-26 01:42:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| - [Audit iAero & LIQ]() | LIQToken | own contract | LIQToken (selected) `0x7ee8964160126081cebc443a42482e95e393e6a8` — deployed 2025-08-26 01:47:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| - [Audit Rewards Harvester]() | RewardsHarvester | own contract | RewardsHarvesterV2 (selected) `0x77f90d2ddb15ffe28fa322ada351d11da3b8bfe5` — deployed 2025-10-10 01:44:33+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| - [Audits Epoch Staking Distributor & stiAERO]() | EpochStakingDistributor | own contract | EpochStakingDistributor (selected) `0x781a80fa817b5a146c440f03ef8643f4aca6588a` — deployed 2025-09-06 03:41:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| - [Audits Epoch Staking Distributor & stiAERO]() | StiAERO | own contract | StiAERO (selected) `0x72c135b8eebc57a3823f0920233e1a90ff4d683d` — deployed 2025-09-06 03:41:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xfe5c929677d97723dc822c86c93c7e2d1b59c774` | iAEROAutoUSDCVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf1d25f4ee64988afad0f1612cc3d540725f319db` | LIQLinearVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb81efc6be6622bf4086566210a6ad134cd0cdda4` | LIQStakingDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x180dab53968e599dd43cf431e27cb01aa5c37909` | PermalockVault_V5 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd4ad2eeeb3314d54212a92f4cbbe684195defe3e` | RewardsSugar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd36b84eefd1f481a737595c8212c43a9cd76c8e0` | TreasuryDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: address=4, unique_name=2

Zero-match audit list:

- [30465] - [Audit PermaLock Vault]()

Fork inheritance lineage and inherited audits are included when available.
