# Agentic Audit Brief: SQD.ai

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SQD.ai (`sqd.ai`)
- Website: [https://www.sqd.ai/](https://www.sqd.ai/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 42 unique implementations (55 raw deployments)
- Coverage basis: 11/16 confirmed own live verified implementations (68.8%); conservative 68.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $21,978,065.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SQD.ai. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across arbitrum, base, bsc, ethereum. Structural roles: 9 unclassified, 5 core, 4 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: unclassified (9), core (5), supporting (4)
- Contract kinds: contract (16), abstract (2)
- Detected standards: accesscontrol (7), erc165 (7), pausable (5), erc20 (1)
- Frameworks: openzeppelin (8), prb-math (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AllocationsViewer (`0x88ce6d8d70df9fe049315fd9d6c3d59108c15c4c`, chain 42161)
- DistributedRewardsDistribution (`0x4de282bd18ae4987b3070f4d5ef8c80756362aea`, chain 42161)
- LinearToSqrtCap (`0x0eb27b1cbba04698dd7ce0f2364584d33a616545`, chain 42161)
- NetworkController (`0x4cf58097d790b193d22ed633bf8b15c9bc4f0da7`, chain 42161)
- RewardTreasury (`0x237abf43bc51fd5c50d0d598a1a4c26e56a8a2a0`, chain 42161)
- SQD (`0x1337420ded5adb9980cfc35f8f2b054ea86f8ab1`, chain 42161)
- Staking (`0xb31a0d39d2c69ed4b28d96e12cbf52c5f9ac9a51`, chain 42161)
- VestingFactory (`0x1f8f83cd76baeca1cb5c064ad59203c82b4e4ece`, chain 42161)
- WorkerRegistration (`0x36e2b147db67e76ab67a4d07c293670ebefcae4e`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 18; live-surface rows included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/44 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 11/16 (68.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 26 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 16 of 42 unique; 26 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 11/39
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 42
- Raw deployments: 55
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: 68.8% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 11 | 28.2% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AllocationsViewer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393004 | `0x88ce6d8d70df9fe049315fd9d6c3d59108c15c4c` | ✅ Audited |
| EqualStrategy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393011 | `0xa604f84c9c59e223b12c831b35723aa0d7277f8b` | ✅ Audited |
| LinearToSqrtCap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392979 | `0x0eb27b1cbba04698dd7ce0f2364584d33a616545` | ✅ Audited |
| NetworkController | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392993 | `0x4cf58097d790b193d22ed633bf8b15c9bc4f0da7` | ✅ Audited |
| RewardCalculation | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393018 | `0xd3d2c185a30484641c07b60e7d952d7b85516eb5` | ✅ Audited |
| RewardTreasury | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-392984 | `0x237abf43bc51fd5c50d0d598a1a4c26e56a8a2a0` | ✅ Audited |
| Staking | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393014 | `0xb31a0d39d2c69ed4b28d96e12cbf52c5f9ac9a51` | ✅ Audited |
| SubequalStrategy | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393019 | `0xf197094d96f45325ee8bd2c43c5d25c05d66ab62` | ✅ Audited |
| TemporaryHoldingFactory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392981 | `0x14926ebf05a904b8e2e2bf05c10ecca9a54d8d0d` | ✅ Audited |
| VestingFactory | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-392982 | `0x1f8f83cd76baeca1cb5c064ad59203c82b4e4ece` | ✅ Audited |
| WorkerRegistration | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392990 | `0x36e2b147db67e76ab67a4d07c293670ebefcae4e` | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AllocationsViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9902060b71a0040880aa038d22ddcfe3c6d78f5` | ⚠️ Unaudited |
| BuyBack | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4efab28e320ef16907930a06e2a5aaadb7425b48` | ⚠️ Unaudited |
| DistributedRewardsDistribution | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392994 | `0x4de282bd18ae4987b3070f4d5ef8c80756362aea` | ⚠️ Unaudited |
| DistributedRewardsDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xa0780e470dc14ba9aa35343f9c09e72092764f74`; arbitrum `0xab690da5815659fe94f08f73e870d91a4d376d8f` | ⚠️ Unaudited |
| EqualStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17cdf76366d0576b9660a4e4de2fe4c46e206d84` | ⚠️ Unaudited |
| FeeRouterModule | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x59c074ee3dd85125620b4a5b452c008bc792a787` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| GatewayRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x17776c473d94d6910d66ff69656825051ea2c7ca`; arbitrum `0x2cc72e32b023c9d2b307a1b36734789e35a3ce5f` | ⚠️ Unaudited |
| GatewayRegistry | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392986 | `0x2591121581d2a7022cd3f66f1a7ccc9560df2152` | ⚠️ Unaudited |
| GatewayRegistry | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-393022 | 2 deployments: arbitrum `0x8a90a1ce5fa8cf71de9e6f76b7d3c0b72feb8c4b`; arbitrum `0xa20ee6bd99b4da88652d6a7e0d013c96905adc58` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x070feb1a767fd7b6b81d4e5c3fcd9d58640d7c25`; arbitrum `0x59eae72ddfc99851acd1a766d4e2eb5e8686c0d4`; arbitrum `0x6413556136d260b6b7a00c1781634f40c2de4e34`; arbitrum `0x7039287a60030917bacde577950fb42040e69f55`; arbitrum `0xa7ceb6db443053f788c03ffcbf8f56cf361cc66f` | ⚠️ Unaudited |
| NetworkController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x159550d2589cff1ff604af715130642256b88847`; arbitrum `0xd03b4ea30a6fdb5d785ed1b5ed4a0909ebd5768b`; arbitrum `0xe57c1870227410e0d3c78c9608b69976d4ca7f99`; arbitrum `0xf5462ef65ca8a9cca789c912bc8ada80b582d68d` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd4554bea546efa83c1e6b389ecac40ea999b3e78` | ⚠️ Unaudited |
| OverTheCounter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c77ad535552e7428630bcdf5b10b1e992f9f16c` | ⚠️ Unaudited |
| PeerToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe50e3d1a46070444f44df911359033f2937fcc13` | ⚠️ Unaudited |
| RewardCalculation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa4727db4d01a12dba15bce5b891a89bccaa2082` | ⚠️ Unaudited |
| RewardTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce1f5ae81fa43b572995eaa064115fca1c9af27c` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0afe1dc5892eff2c7cc059479049f831e0867099`; arbitrum `0x3b88a5d13acc197b607ab993451127180867e492` | ⚠️ Unaudited |
| Router | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-393021 | 2 deployments: arbitrum `0x4a7c41397f623ca04b60a59bcaa77346aeae86aa`; arbitrum `0x67f56d27dab93eeb07f6372274aca277f49da941` | ⚠️ Unaudited |
| SoftCap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x6351431fb7a55013daa5427d55ee09693ccc5bad`; arbitrum `0xde29d5215c28036ce56091ea91038c94c84c87d0` | ⚠️ Unaudited |
| SQD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1337420ded5adb9980cfc35f8f2b054ea86f8ab1` | ⚠️ Unaudited |
| SQD | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392980 | `0x1337420ded5adb9980cfc35f8f2b054ea86f8ab1` | ⚠️ Unaudited |
| Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd2dcb97efc693c67988451898aa03f97c1f895f5` | ⚠️ Unaudited |
| SubequalStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x554df4ad609d08ec913f9ad2ce2cc4a85a6e61a2` | ⚠️ Unaudited |
| TemporaryHoldingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf83ac42cd4446c6aa9e17ccb0533d1e758f122c1` | ⚠️ Unaudited |
| VestingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7508bc557abc52ad41688250a467185d4125816c` | ⚠️ Unaudited |
| WorkerRegistration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a56598418ae3c6b2570af0e5765a44306971ad4` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9d1e08c7793af67e9d92fe308d5697fb81d3e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x365709ef4830b77a6eb4a689f13f57a1c22d8306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7b057c3b0ee4dd101047b26fd3964185b7d8cc4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity_Subsquid_Subsquid_Audit.pdf](https://www.chainsecurity.com/reports/Subsquid/ChainSecurity_Subsquid_Subsquid_Audit.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | contract_name | matched | 11 | 0 | 0 | 7 | high |
| [Manual audit seed](https://www.chainsecurity.com/security-audit/subsquid-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21283] ChainSecurity_Subsquid_Subsquid_Audit.pdf — matched: All contracts listed in the scope table under section 2.1. Extracted date from cover page: 'April 17, 2024'.
- [24475] Manual audit seed — no match: No contract names or scope section found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | Executable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | Vesting | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | GatewayRegistry | ambiguous — not counted | GatewayRegistry (alternative) `0x2591121581d2a7022cd3f66f1a7ccc9560df2152` — deployed 2024-05-06 14:35:30+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a90a1ce5fa8cf71de9e6f76b7d3c0b72feb8c4b` — deployed 2024-05-06 14:35:38+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | RewardCalculation | own contract | RewardCalculation (selected) `0xd3d2c185a30484641c07b60e7d952d7b85516eb5` — deployed 2024-05-06 14:35:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | Staking | own contract | Staking (selected) `0xb31a0d39d2c69ed4b28d96e12cbf52c5f9ac9a51` — deployed 2024-05-06 14:35:26+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | DistributedRewardDistribution | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | WorkerRegistration | own contract | WorkerRegistration (selected) `0x36e2b147db67e76ab67a4d07c293670ebefcae4e` — deployed 2024-05-06 14:35:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | NetworkController | own contract | NetworkController (selected) `0x4cf58097d790b193d22ed633bf8b15c9bc4f0da7` — deployed 2024-05-06 14:35:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | AllocationsViewer | own contract | AllocationsViewer (selected) `0x88ce6d8d70df9fe049315fd9d6c3d59108c15c4c` — deployed 2024-05-06 14:35:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | SoftCap | own contract | LinearToSqrtCap (selected) `0x0eb27b1cbba04698dd7ce0f2364584d33a616545` — deployed 2024-06-19 13:18:48+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | TemporaryHolding | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | RewardTreasury | own contract | RewardTreasury (selected) `0x237abf43bc51fd5c50d0d598a1a4c26e56a8a2a0` — deployed 2024-05-06 14:35:28+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | EqualStrategy | own contract | EqualStrategy (selected) `0xa604f84c9c59e223b12c831b35723aa0d7277f8b` — deployed 2024-05-06 14:35:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | SubequalStrategy | own contract | SubequalStrategy (selected) `0xf197094d96f45325ee8bd2c43c5d25c05d66ab62` — deployed 2024-05-06 14:35:42+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | Router | ambiguous — not counted | Router (alternative) `0x4a7c41397f623ca04b60a59bcaa77346aeae86aa` — deployed 2024-05-06 14:35:15+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x67f56d27dab93eeb07f6372274aca277f49da941` — deployed 2024-05-06 14:35:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | VestingFactory | own contract | VestingFactory (selected) `0x1f8f83cd76baeca1cb5c064ad59203c82b4e4ece` — deployed 2024-05-06 14:35:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | TemporaryHoldingFactory | own contract | TemporaryHoldingFactory (selected) `0x14926ebf05a904b8e2e2bf05c10ecca9a54d8d0d` — deployed 2024-05-06 14:35:56+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_Subsquid_Subsquid_Audit.pdf | AccessControlledPausable | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x4de282bd18ae4987b3070f4d5ef8c80756362aea` | DistributedRewardsDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2591121581d2a7022cd3f66f1a7ccc9560df2152` | GatewayRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8a90a1ce5fa8cf71de9e6f76b7d3c0b72feb8c4b` | GatewayRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4a7c41397f623ca04b60a59bcaa77346aeae86aa` | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1337420ded5adb9980cfc35f8f2b054ea86f8ab1` | SQD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 11 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 5 unmatched
- Matched-own operational status: 11 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=11

Zero-match audit list:

- [24475] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
