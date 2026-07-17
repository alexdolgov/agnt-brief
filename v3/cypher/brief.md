# Agentic Audit Brief: Cypher

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

- Project: Cypher (`cypher`)
- Website: [https://cyphereth.com/](https://cyphereth.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 23 unique implementations (23 raw deployments)
- Coverage basis: 0/23 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Cypher in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 23 contracts are derived from known codebases. 23 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AlgebraFactory (`0xfb8ed3485efa29a0e4bed93351dd51b59fc4b0f0`, chain 1)
- AlgebraFeePluginFactoryV1 (`0x478dc624b9cfb68ed1cea0e7b51a6279905f7fb3`, chain 1)
- BCTokenDeployer (`0xe5a1438aca8e48a0d6ef6fc402254b709ec67d79`, chain 1)
- BCTokenFactory (`0x5145e18526b6851f9e6aa28f11cb667956aa0920`, chain 1)
- BondingCurve (`0x035d264b16d445eb6a5b3109a40224e210035245`, chain 1)
- CurveMath (`0x78e6b8e6f479323fbbeb31878c1538c270199e32`, chain 1)
- CypherFactory (`0xcc8e4c2998395e56d06d985ba791138edf48a8d4`, chain 1)
- CypherRouter (`0xadfd0ebc71afcd38070a9fb5cecf9a932cbcc46f`, chain 1)
- CypherYakRouter (`0x37ca43556bb981ca6827b4a92369a28eb61995e3`, chain 1)
- Distributor (`0x2a7b9e22a76edec50167590fd3198b27040362d4`, chain 1)
- ERC1967Proxy (`0x3f75580cd579547a69854ac2924371209261b9d1`, chain 1)
- ERC1967Proxy (`0x5163b56b5275401bdfa5e46c75eb7c9d728848b6`, chain 1)
- ERC1967Proxy (`0xa279ca693d66fe65ba0062d0218578f424249dfd`, chain 1)
- Harvester (`0x59716fb1d8a2131c1cab3847842fd6c8583f3681`, chain 1)
- HighlightsManager (`0x6ef6dec7a077f68424e23f090d5fd57e01415e35`, chain 1)
- LiquidityManager (`0x14127323b4b84e9688ef1018ab5f641344aa07dc`, chain 1)
- NonfungiblePositionManager (`0x0a984a446a116335ac90425d2d1e69a7199a2f7c`, chain 1)
- Quoter (`0x02f22d58d161d1c291abfe88764d84120f20f723`, chain 1)
- ReferralManager (`0x4e06b03a4a84fea63c565cd0e47747f8cb88f773`, chain 1)
- StakingVaultFactory (`0xb4a217606603f68dc18ec88b8622464c4c90aa55`, chain 1)
- SwapRouter (`0x20c5893f69f635f55b0367c519f3f95e59c0b0ab`, chain 1)
- TokenVesting (`0x3590194aaf1dbf5923bd5a4e69f2ada90c94b348`, chain 1)
- TransparentUpgradeableProxy (`0xcaf7d2ae2c8de1512b2bd392eebb0b95192b2262`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/23 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 23 of 23 unique; 0 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 23
- Raw deployments: 23
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

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383649 | `0xfb8ed3485efa29a0e4bed93351dd51b59fc4b0f0` | ⚠️ Unaudited |
| AlgebraFeePluginFactoryV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383639 | `0x478dc624b9cfb68ed1cea0e7b51a6279905f7fb3` | ⚠️ Unaudited |
| BCTokenDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383648 | `0xe5a1438aca8e48a0d6ef6fc402254b709ec67d79` | ⚠️ Unaudited |
| BCTokenFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383641 | `0x5145e18526b6851f9e6aa28f11cb667956aa0920` | ⚠️ Unaudited |
| BondingCurve | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383632 | `0x035d264b16d445eb6a5b3109a40224e210035245` | ⚠️ Unaudited |
| CampaignFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383651 | `0xcaf7d2ae2c8de1512b2bd392eebb0b95192b2262` | ⚠️ Unaudited |
| CurveMath | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383644 | `0x78e6b8e6f479323fbbeb31878c1538c270199e32` | ⚠️ Unaudited |
| CypherFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383647 | `0xcc8e4c2998395e56d06d985ba791138edf48a8d4` | ⚠️ Unaudited |
| CypherRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383645 | `0xadfd0ebc71afcd38070a9fb5cecf9a932cbcc46f` | ⚠️ Unaudited |
| CypherYakRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383638 | `0x37ca43556bb981ca6827b4a92369a28eb61995e3` | ⚠️ Unaudited |
| Distributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383636 | `0x2a7b9e22a76edec50167590fd3198b27040362d4` | ⚠️ Unaudited |
| EscrowToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383650 | `0x5163b56b5275401bdfa5e46c75eb7c9d728848b6` | ⚠️ Unaudited |
| Harvester | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383642 | `0x59716fb1d8a2131c1cab3847842fd6c8583f3681` | ⚠️ Unaudited |
| HighlightsManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383643 | `0x6ef6dec7a077f68424e23f090d5fd57e01415e35` | ⚠️ Unaudited |
| LiquidityManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383634 | `0x14127323b4b84e9688ef1018ab5f641344aa07dc` | ⚠️ Unaudited |
| MainToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383653 | `0xa279ca693d66fe65ba0062d0218578f424249dfd` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383633 | `0x0a984a446a116335ac90425d2d1e69a7199a2f7c` | ⚠️ Unaudited |
| OptionsToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383652 | `0x3f75580cd579547a69854ac2924371209261b9d1` | ⚠️ Unaudited |
| Quoter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383631 | `0x02f22d58d161d1c291abfe88764d84120f20f723` | ⚠️ Unaudited |
| ReferralManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383640 | `0x4e06b03a4a84fea63c565cd0e47747f8cb88f773` | ⚠️ Unaudited |
| StakingVaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383646 | `0xb4a217606603f68dc18ec88b8622464c4c90aa55` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383635 | `0x20c5893f69f635f55b0367c519f3f95e59c0b0ab` | ⚠️ Unaudited |
| TokenVesting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383637 | `0x3590194aaf1dbf5923bd5a4e69f2ada90c94b348` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

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
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 23 |

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
