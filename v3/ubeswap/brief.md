# Agentic Audit Brief: Ubeswap

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

- Project: Ubeswap (`ubeswap`)
- Website: [https://ubeswap.org](https://ubeswap.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: celo
- Contract surface: 29 unique implementations (29 raw deployments)
- Coverage basis: 0/18 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $763,526.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ubeswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across celo. Structural roles: 15 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: core (15), supporting (3)
- Contract kinds: contract (18)
- Detected standards: erc165 (2), accesscontrol (1), erc20 (1), multicall (1)
- Frameworks: openzeppelin (11), uniswap-v3 (2), permit2 (1), solmate (1), uniswap-v2 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 20 contracts are derived from known codebases. 20 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x716733...de7a8a`, chain 42220)
- UnnamedContract (`0x897387...6f8c8f`, chain 42220)
- Create2Deployer (`0x4a27c0...5f6ee3`, chain 42220)
- GnosisSafeProxy (`0x3cdb70...555167`, chain 42220)
- QuoterV2 (`0xa8864a...cca56f`, chain 42220)
- RomulusDelegate (`0xd355a0...55f928`, chain 42220)
- Timelock (`0x936f5b...2fdaf6`, chain 42220)
- UbeAdvisoryVesting (`0xf7d062...1f7d10`, chain 42220)
- UbeEcosystemVesting (`0x3924c6...a6ae73`, chain 42220)
- UbeMarketingVesting (`0xd733bc...0d0c5e`, chain 42220)
- UbeMiningReserveVesting (`0xae4634...502968`, chain 42220)
- UbeswapV3Farming (`0xa6e906...f51853`, chain 42220)
- UbeTeamVesting (`0x74d498...6c8b5c`, chain 42220)
- UbeToken (`0x71e26d...101490`, chain 42220)
- UniswapInterfaceMulticall (`0x4d446f...49d63f`, chain 42220)
- UniswapV2Factory (`0x62d5b8...c25fae`, chain 42220)
- UniswapV2Router02 (`0xe3d8bd...f96121`, chain 42220)
- UniswapV3Factory (`0x67fea5...f8aec4`, chain 42220)
- UniversalRouter (`0x3c255d...7a7a0d`, chain 42220)
- VotableStakingRewards (`0x388d61...5ff5c9`, chain 42220)

## Contract Surface Quality

- Logic-topography rows: 18; live-surface rows included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/18 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 20 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 9 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 20 of 29 unique; 9 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 29
- Raw deployments: 29
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

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Create2Deployer | unknown | project_anchor | own_supporting | 0 | celo | unit-395280 | `0x4a27c0...5f6ee3` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 0 | celo | unit-395278 | `0x3cdb70...555167` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5c7624...fdcd65` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6bd919...70e694` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | celo | unit-395300 | `0xa8864a...cca56f` | ⚠️ Unaudited |
| RomulusDelegate | unknown | project_anchor | own_supporting | 1 | celo | unit-395309 | `0xd355a0...55f928` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x534408...15b52c` | ⚠️ Unaudited |
| StakingRewardsCapped | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x799a23...602a45` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5cde4d...d8ee7a` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1d8c56...4265c4` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | celo | unit-395296 | `0x936f5b...2fdaf6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6e2369...4ffe67` | ⚠️ Unaudited |
| UbeAdvisoryVesting | unknown | project_anchor | own_supporting | 0 | celo | unit-395308 | `0xf7d062...1f7d10` | ⚠️ Unaudited |
| UbeConvert | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9dfc13...bb7a36` | ⚠️ Unaudited |
| UbeEcosystemVesting | unknown | project_anchor | own_supporting | 0 | celo | unit-395274 | `0x3924c6...a6ae73` | ⚠️ Unaudited |
| UbeMarketingVesting | unknown | project_anchor | own_supporting | 0 | celo | unit-395304 | `0xd733bc...0d0c5e` | ⚠️ Unaudited |
| UbeMiningReserveVesting | unknown | project_anchor | own_supporting | 0 | celo | unit-395302 | `0xae4634...502968` | ⚠️ Unaudited |
| UbeswapV3Farming | unknown | project_anchor | own_supporting | 0 | celo | unit-395298 | `0xa6e906...f51853` | ⚠️ Unaudited |
| UbeTeamVesting | unknown | project_anchor | own_supporting | 0 | celo | unit-395292 | `0x74d498...6c8b5c` | ⚠️ Unaudited |
| UbeToken | unknown | project_anchor | own_supporting | 0 | celo | unit-395290 | `0x71e26d...101490` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | unknown | project_anchor | own_supporting | 0 | celo | unit-395282 | `0x4d446f...49d63f` | ⚠️ Unaudited |
| UniswapV2Factory | unknown | project_anchor | own_supporting | 0 | celo | unit-395284 | `0x62d5b8...c25fae` | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | project_anchor | own_supporting | 0 | celo | unit-395306 | `0xe3d8bd...f96121` | ⚠️ Unaudited |
| UniswapV3Factory | unknown | project_anchor | own_supporting | 0 | celo | unit-395286 | `0x67fea5...f8aec4` | ⚠️ Unaudited |
| UniversalRouter | unknown | project_anchor | own_supporting | 0 | celo | unit-395276 | `0x3c255d...7a7a0d` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x65415d...ebec66` | ⚠️ Unaudited |
| VotableStakingRewards | unknown | project_anchor | own_supporting | 0 | celo | unit-395272 | `0x388d61...5ff5c9` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-395288 | `0x716733...de7a8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-395294 | `0x897387...6f8c8f` | ❓ Unverified |

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
| celo | `0xa8864a...cca56f` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xd355a0...55f928` | RomulusDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x936f5b...2fdaf6` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xf7d062...1f7d10` | UbeAdvisoryVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x3924c6...a6ae73` | UbeEcosystemVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xd733bc...0d0c5e` | UbeMarketingVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xae4634...502968` | UbeMiningReserveVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xa6e906...f51853` | UbeswapV3Farming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x74d498...6c8b5c` | UbeTeamVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x71e26d...101490` | UbeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x3c255d...7a7a0d` | UniversalRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x388d61...5ff5c9` | VotableStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 4 |
| standard_library | 4 |
| needs_review | 2 |

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
