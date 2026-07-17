# Agentic Audit Brief: Aegis Markets

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 65.8% over 90 days

## Project Overview

- Project: Aegis Markets (`aegis-markets`)
- Website: [https://aegis.markets/](https://aegis.markets/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, unichain
- Contract surface: 30 unique implementations (39 raw deployments)
- Coverage basis: 5/10 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,694,151.43
- On-chain TVL (included contracts): $20,765,282.15
- TVL by chain: Base $18,084,727.89 | Unichain $2,680,554.25

## Project Description

This brief describes the observed EVM deployment and audit surface for Aegis Markets. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across base, unichain. Structural roles: 5 supporting, 4 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: supporting (5), core (4), unclassified (1)
- Contract kinds: contract (10)
- Detected standards: erc165 (2)
- Frameworks: solmate (9), uniswap (9), openzeppelin (8), permit2 (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- DynamicFeeManager (`0xd7deabab9ecd3bcb3b89ab0ce2c84c8565bb8d98`, chain 130)
- DynamicFeeManager (`0xe6768629156d4b713e266b87502fbeccc218a028`, chain 130)
- FullRangeLiquidityManager (`0xa7b3e2306a0b46dbde3b533c4e2c3be6a24352a3`, chain 130)
- FullRangeLiquidityManager (`0xa7ce35e886e58926ad0c149f4cc558e27d458a2c`, chain 130)
- PoolPolicyManager (`0xaaf29f2c9516062dc43c4465ef6d43ce8397cdda`, chain 130)
- PoolPolicyManager (`0xe072d3c7567d4b326ddde0f77062e6758aec0ee7`, chain 130)
- Spot (`0x88c9ff9fc0b22cca42265d3f1d1c2c39e41cdacc`, chain 130)
- Spot (`0xa0b0d2d00fd544d8e0887f1a3cedd6e24baf10cc`, chain 130)
- TruncGeoOracleMulti (`0x22e086c085fbda3214db238f8a930d22228facb5`, chain 130)
- TruncGeoOracleMulti (`0xbe4f23b9488300c532a5d9d8d11b0b8163be6abf`, chain 130)

## Contract Surface Quality

- Logic-topography rows: 10; live-surface rows included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/10 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 20 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 10 of 30 unique; 20 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/26
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 30
- Raw deployments: 39
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 50.0% (Spearbit)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 5 | 19.2% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DynamicFeeManager | governance | project_anchor | own_supporting | 0 | unichain | unit-378645 | `0xe6768629156d4b713e266b87502fbeccc218a028` | ✅ Audited |
| FullRangeLiquidityManager | unknown | project_anchor | own_supporting | 0 | unichain | unit-378640 | `0xa7ce35e886e58926ad0c149f4cc558e27d458a2c` | ✅ Audited |
| PoolPolicyManager | core_logic | project_anchor | own_supporting | 0 | unichain | unit-378641 | `0xaaf29f2c9516062dc43c4465ef6d43ce8397cdda` | ✅ Audited |
| Spot | unknown | project_anchor | own_supporting | 0 | unichain | unit-378638 | `0xa0b0d2d00fd544d8e0887f1a3cedd6e24baf10cc` | ✅ Audited |
| TruncGeoOracleMulti | operational_periphery | project_anchor | own_supporting | 0 | unichain | unit-378636 | `0x22e086c085fbda3214db238f8a930d22228facb5` | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PoolManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | 2 deployments: unichain `0x1f98400000000000000000000000000000000004`; base `0x498581ff718922c3f8e6a244956af099b2652b2b` | ⚠️ Unaudited |
| AegisNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xdb3a3d5a32d78b19da8417aeb1cda5e2778e718d` | ⚠️ Unaudited |
| DynamicFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | 2 deployments: unichain `0x16b40ca9b9366aba4cfdb3d6827491b66994d958`; unichain `0x4a6770f83059d0ee4ea1bdaaf0d3849deaa9429c` | ⚠️ Unaudited |
| DynamicFeeManager | governance | project_anchor | own_supporting | 0 | unichain | unit-378643 | `0xd7deabab9ecd3bcb3b89ab0ce2c84c8565bb8d98` | ⚠️ Unaudited |
| FullRangeLiquidityManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x6da0c0a6153f3c161d7fb260b5f040d5530fe365` | ⚠️ Unaudited |
| FullRangeLiquidityManager | governance | project_anchor | own_supporting | 0 | unichain | unit-378639 | `0xa7b3e2306a0b46dbde3b533c4e2c3be6a24352a3` | ⚠️ Unaudited |
| PoolInitAndBindRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xb3b7bc07597d20535e3850d34ec4363f8bfea779` | ⚠️ Unaudited |
| PoolPolicyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | 2 deployments: unichain `0x87cb5af674b546ec73e462221e8cb5e5ff7e3e06`; unichain `0xa16eb8f1e03696ca0b4acb0085918e2ed77d3006` | ⚠️ Unaudited |
| PoolPolicyManager | core_logic | project_anchor | own_supporting | 0 | unichain | unit-378644 | `0xe072d3c7567d4b326ddde0f77062e6758aec0ee7` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | unichain | n/a | `0x4529a01c7a0410167c5740c487a8de60232617bf` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x7c5f5a4bbd8fd63184577525326123b519429bdc` | ⚠️ Unaudited |
| PreCcaBonusClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | 2 deployments: unichain `0x37fcaead6f62bdead5cb2c17f2528fb4965f9332`; unichain `0xbead51ca64fbb18bdfc17dc4bd46ad04473c670d` | ⚠️ Unaudited |
| RewardCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xee8e373c05a6876d43a8a054a47b16345662c0c3` | ⚠️ Unaudited |
| SponsorAccount | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x8f9fa5ef0697276c56f51ec3b20da18b5cf02c86` | ⚠️ Unaudited |
| SponsorCenter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x94e43144067e93f778d29406110b2a6a8730b310` | ⚠️ Unaudited |
| Spot | unknown | project_anchor | own_supporting | 0 | unichain | unit-378637 | `0x88c9ff9fc0b22cca42265d3f1d1c2c39e41cdacc` | ⚠️ Unaudited |
| Spot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88c9ff9fc0b22cca42265d3f1d1c2c39e41cdacc` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xf9a8f837337118960d78e2d0de8dbe17acfae04a` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | 5 deployments: unichain `0x5a09c037eab964ce925ee88ab1facf8af6d9d13f`; unichain `0x825b158857d283deb3f0c6a5c52d79a65323c40e`; unichain `0x96573d7f83628d80ce2ff7cabe13e09afcf6f3eb`; unichain `0xc754bc22e9c3cbf899baf37e5e97bf42ff52d245`; unichain `0xf0e74f35a5c7e1b6a35877afe8ac2ace0c510603` | ⚠️ Unaudited |
| TruncGeoOracleMulti | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | 2 deployments: unichain `0x23ff89455d190e2cff95a65d2ae01d3f170984ba`; unichain `0x2699565b992723113794679b02eff025bebe054a` | ⚠️ Unaudited |
| TruncGeoOracleMulti | operational_periphery | project_anchor | own_supporting | 0 | unichain | unit-378642 | `0xbe4f23b9488300c532a5d9d8d11b0b8163be6abf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x508bc0586244a8641da341769f67d76dfcee7dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x53e02d0351823dad1898675fc018d657a4de6544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x9c66d0e50679f4997d3657be76e8e982d0223ad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0b0d2d00fd544d8e0887f1a3cedd6e24baf10cc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1vUWENoQsiQxDuex0WU6mZtwJVmE50Ddc/view](https://drive.google.com/file/d/1vUWENoQsiQxDuex0WU6mZtwJVmE50Ddc/view?usp=sharing) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | matched | 5 | 0 | 0 | 1 | high |
| [drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view](https://drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view?usp=sharing) | Trail of Bits | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2839] drive.google.com/file/d/1vUWENoQsiQxDuex0WU6mZtwJVmE50Ddc/view — matched: Extracted contract names from findings context. No explicit scope section found; contracts are identified as audited targets via repeated mentions in findings.
- [2840] drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view — no match: Extracted contract names from Project Targets section and detailed findings. Audit date from cover page: May 7, 2026.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1vUWENoQsiQxDuex0WU6mZtwJVmE50Ddc/view | FullRangeLiquidityManager | own contract | FullRangeLiquidityManager (alternative) `0xa7b3e2306a0b46dbde3b533c4e2c3be6a24352a3` — deployed 2025-10-21 20:39:17+03 — liveness: live (code_present_context)<br>FullRangeLiquidityManager (selected) `0xa7ce35e886e58926ad0c149f4cc558e27d458a2c` — deployed 2025-06-08 19:12:32+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-06-08 was 2d from audit; next candidate 137d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1vUWENoQsiQxDuex0WU6mZtwJVmE50Ddc/view | Spot | own contract | Spot (alternative) `0x88c9ff9fc0b22cca42265d3f1d1c2c39e41cdacc` — deployed 2025-10-21 20:39:17+03 — liveness: live (current_address_book_code)<br>Spot (selected) `0xa0b0d2d00fd544d8e0887f1a3cedd6e24baf10cc` — deployed 2025-06-08 19:12:32+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-06-08 was 2d from audit; next candidate 137d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1vUWENoQsiQxDuex0WU6mZtwJVmE50Ddc/view | PoolPolicyManager | own contract | PoolPolicyManager (selected) `0xaaf29f2c9516062dc43c4465ef6d43ce8397cdda` — deployed 2025-06-08 19:12:32+03 — liveness: live (code_present_context)<br>PoolPolicyManager (alternative) `0xe072d3c7567d4b326ddde0f77062e6758aec0ee7` — deployed 2025-10-21 20:39:16+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-06-08 was 2d from audit; next candidate 137d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1vUWENoQsiQxDuex0WU6mZtwJVmE50Ddc/view | DynamicFeeManager | own contract | DynamicFeeManager (alternative) `0xd7deabab9ecd3bcb3b89ab0ce2c84c8565bb8d98` — deployed 2025-10-21 20:39:16+03 — liveness: live (code_present_context)<br>DynamicFeeManager (selected) `0xe6768629156d4b713e266b87502fbeccc218a028` — deployed 2025-06-08 19:12:32+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-06-08 was 2d from audit; next candidate 137d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1vUWENoQsiQxDuex0WU6mZtwJVmE50Ddc/view | TruncGeoOracleMulti | own contract | TruncGeoOracleMulti (selected) `0x22e086c085fbda3214db238f8a930d22228facb5` — deployed 2025-06-08 19:12:32+03 — liveness: live (current_address_book_code)<br>TruncGeoOracleMulti (alternative) `0xbe4f23b9488300c532a5d9d8d11b0b8163be6abf` — deployed 2025-10-21 20:39:16+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-06-08 was 2d from audit; next candidate 137d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1vUWENoQsiQxDuex0WU6mZtwJVmE50Ddc/view | TruncGeoOracle | unmatched — not counted | — | Mentioned in findings 3.2.5, 3.3.2 | no |
| drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view | AegisEngine | unmatched — not counted | — | listed in scope and targets | no |
| drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view | AegisRouterV1 | unmatched — not counted | — | listed in scope and targets | no |
| drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view | AegisHook | unmatched — not counted | — | listed in scope and targets | no |
| drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view | LimitOrderManager | unmatched — not counted | — | listed in scope and targets | no |
| drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view | OracleManager | unmatched — not counted | — | listed in scope and targets | no |
| drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view | DynamicFeeManager | ambiguous — not counted | DynamicFeeManager (alternative) `0xd7deabab9ecd3bcb3b89ab0ce2c84c8565bb8d98` — deployed 2025-10-21 20:39:16+03 — liveness: live (code_present_context)<br>DynamicFeeManager (alternative) `0xe6768629156d4b713e266b87502fbeccc218a028` — deployed 2025-06-08 19:12:32+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view | VaultRegistry | unmatched — not counted | — | listed in scope and targets | no |
| drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view | CollateralFloorMath | unmatched — not counted | — | mentioned in detailed findings | no |
| drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view | TickSetCodec | unmatched — not counted | — | mentioned in detailed findings | no |
| drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view | BaseDynamicFeePolicy | unmatched — not counted | — | mentioned in detailed findings | no |
| drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view | DynamicFeeState | unmatched — not counted | — | mentioned in detailed findings | no |
| drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view | MarketFeeGrowthCache | unmatched — not counted | — | mentioned in detailed findings | no |
| drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view | AegisRouterActions | unmatched — not counted | — | mentioned in detailed findings | no |
| drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view | AegisRouterParamsEncoder | unmatched — not counted | — | mentioned in detailed findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| unichain | `0xd7deabab9ecd3bcb3b89ab0ce2c84c8565bb8d98` | DynamicFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xa7b3e2306a0b46dbde3b533c4e2c3be6a24352a3` | FullRangeLiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xe072d3c7567d4b326ddde0f77062e6758aec0ee7` | PoolPolicyManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x88c9ff9fc0b22cca42265d3f1d1c2c39e41cdacc` | Spot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xbe4f23b9488300c532a5d9d8d11b0b8163be6abf` | TruncGeoOracleMulti | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 14 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: temporal_name=5

Zero-match audit list:

- [2840] drive.google.com/file/d/1Lzfe49__CXGmBffFLmQ8-v7M6kSUfN8l/view

Fork inheritance lineage and inherited audits are included when available.
