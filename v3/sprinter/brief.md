# Agentic Audit Brief: Sprinter

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Sprinter (`sprinter`)
- Website: [https://sprinter.tech/](https://sprinter.tech/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 19 unique implementations (25 raw deployments)
- Coverage basis: 3/3 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $680,662.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sprinter. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, base, ethereum, optimism. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: accesscontrol (2), erc165 (2), pausable (2), erc20 (1), ownable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xa593a9...539ff2`, chain 8453)
- LiquidityPool (`0xb58bb9...e5c032`, chain 8453)
- LiquidityPoolAave (`0x7c2552...c09f4b`, chain 8453)
- SprinterLiquidityMining (`0x479d15...313c21`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/3 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 15 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 4 of 19 unique; 15 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/18
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 19
- Raw deployments: 25
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 2 fresh, 4 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 33.3% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sygma Labs | Tier 2 | 3 | 16.7% | 2025-03 |
| Spearbit | Tier 1 | 1 | 5.6% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LiquidityPool | core_logic | project_anchor | own_supporting | 0 | base | unit-256654 | `0xb58bb9...e5c032` | ✅ Audited |
| LiquidityPoolAave | core_logic | project_anchor | own_supporting | 0 | base | unit-256650 | `0x7c2552...c09f4b` | ✅ Audited |
| SprinterLiquidityMining | unknown | project_anchor | own_supporting | 0 | base | unit-256648 | `0x479d15...313c21` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CensoredTransferFromMulticall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7c472e...29b6bb` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83b8d2...71c1d6` | ⚠️ Unaudited |
| LiquidityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x0e1632...2810eb`; base `0x0e1632...2810eb`; arbitrum `0x0e1632...2810eb` | ⚠️ Unaudited |
| LiquidityPoolAave | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x2022a5...5357b5`; base `0x2022a5...5357b5`; arbitrum `0x2022a5...5357b5` | ⚠️ Unaudited |
| LiquidityPoolAaveLongTerm | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d0ee...257788` | ⚠️ Unaudited |
| LiquidityPoolStablecoin | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d2c9...0a3672` | ⚠️ Unaudited |
| Processor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xffdb38...16286d` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x2b5d04...1664cb`; base `0x818e81...ac5077`; base `0x998c73...91d47b` | ⚠️ Unaudited |
| Rebalancer | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xa85cf4...869888` | ⚠️ Unaudited |
| Rebalancer | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xa85cf4...869888` | ⚠️ Unaudited |
| Rebalancer | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xa85cf4...869888` | ⚠️ Unaudited |
| Repayer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x36364a...439511` | ⚠️ Unaudited |
| Repayer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x36364a...439511` | ⚠️ Unaudited |
| Repayer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x36364a...439511` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ea9e6...810636` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256651 | `0xa593a9...539ff2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cantina.xyz/portfolio/fe3c634c-d06d-47c2-a70a-f19d2f820f58](https://cantina.xyz/portfolio/fe3c634c-d06d-47c2-a70a-f19d2f820f58) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01](https://cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01) | Spearbit | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Sprinter remote collateral security review Cantina - final.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/Sprinter%20remote%20collateral%20security%20review%20Cantina%20-%20final.pdf) | Spearbit | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 19 | n/a |
| [VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf) | Sygma Labs | Audit | 2025-02 | aging | Direct | n/a | matched | 1 | 0 | 0 | 4 | n/a |
| [VAR_Sygma_labs_Sprinter_liquidity_pool_250304-final.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/VAR_Sygma_labs_Sprinter_liquidity_pool_250304-final.pdf) | Sygma Labs | Audit | 2025-03 | aging | Direct | n/a | matched | 2 | 0 | 0 | 1 | n/a |
| [cantina_sprinter_may2025.pdf](https://github.com/sprintertech/sprinter-stash-contracts/blob/main/audits/cantina_sprinter_may2025.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | n/a | matched | 1 | 0 | 0 | 5 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3209] cantina.xyz/portfolio/fe3c634c-d06d-47c2-a70a-f19d2f820f58 — no match: The report does not have a dedicated scope section listing individual contracts. The only contract name inferred is 'SprinterStash' from the title and repository name. The audit period is 22 May 2025 - 27 May 2025, so the end date is used.
- [3210] cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01 — no match: Extracted contract names from findings sections; no explicit scope table found but contracts are clearly audited targets.
- [15648] Sprinter remote collateral security review Cantina - final.pdf — no match: No reason recorded
- [15649] VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf — matched: No reason recorded
- [15650] VAR_Sygma_labs_Sprinter_liquidity_pool_250304-final.pdf — matched: No reason recorded
- [15651] cantina_sprinter_may2025.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| cantina.xyz/portfolio/fe3c634c-d06d-47c2-a70a-f19d2f820f58 | SprinterStash | unmatched — not counted | — | The report title is 'Cross-Chain Security Audit of Sprinter Stash' and the repository is 'sprintertech/sprinter-stash-contracts'. The report focuses on the Sprinter Stash contracts. | no |
| cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01 | EscrowController | unmatched — not counted | — | mentioned in findings: 'Controller settlement uses asset based ERC4626 flows for share accounted collateral' | no |
| cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01 | EscrowVault | unmatched — not counted | — | mentioned in findings: 'EscrowVault Uses Default decimalOffset of Zero' | no |
| cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01 | EscrowHelper | unmatched — not counted | — | mentioned in findings: 'Arbitrary wrapData in EscrowHelper Allows Attacker to Steal User Funds' | no |
| cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01 | StashCreditHub | unmatched — not counted | — | mentioned in findings: 'Borrow validations in StashCreditHub enforce tighter limits' | no |
| cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01 | CreditHubBase | unmatched — not counted | — | mentioned in findings: 'Liquidation rounding can seize more collateral than the intended reward value' | no |
| cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01 | CreditHub | unmatched — not counted | — | mentioned in findings: 'Attacker Can DoS Victim's Collateral Deposits by Filling Their Collateral Array' | no |
| cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01 | CreditHubController | unmatched — not counted | — | mentioned in findings: 'Use of assert on production code' | no |
| cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01 | EscrowLocal | unmatched — not counted | — | mentioned in findings: 'Attacker Can DoS Victim's Collateral Deposits by Filling Their Collateral Array' | no |
| cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01 | ChainlinkOracle | unmatched — not counted | — | mentioned in findings: 'previewRedeem in ChainlinkOracle Reverts for ERC7540 Async Vaults' | no |
| cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01 | ValueOracle | unmatched — not counted | — | mentioned in findings: 'Static price configuration does not bound decimals' | no |
| cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01 | ExclusiveOperator | unmatched — not counted | — | mentioned in findings: 'Revocation finalization and borrowing remain simultaneously valid at the revoke boundary' | no |
| cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01 | Liquidator | unmatched — not counted | — | mentioned in findings: 'Unconfigured domain receivers can leave liquidation claims pending in the helper queue' | no |
| cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01 | Operator | unmatched — not counted | — | mentioned in findings: 'Missing Events on State Changing Functions' | no |
| Sprinter remote collateral security review Cantina - final.pdf | ChainlinkOracle | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | CreditHub | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | CreditHubBase | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | CreditHubController | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | ERC7201Helper | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | EndOfMonthTimestamps | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | Escrow | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | EscrowController | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | EscrowHelper | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | EscrowLocal | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | EscrowVault | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | ExclusiveOperator | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | Liquidator | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | Operator | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | Preprocessor | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | PreprocessorBase | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | PreprocessorLocal | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | Processor | unmatched — not counted | — | — | no |
| Sprinter remote collateral security review Cantina - final.pdf | StashCreditHub | unmatched — not counted | — | — | no |
| VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf | LiquidityHub | unmatched — not counted | — | — | no |
| VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf | LiquidityMining | unmatched — not counted | — | — | no |
| VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf | ManagedToken | unmatched — not counted | — | — | no |
| VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf | Rebalancer | unmatched — not counted | — | — | no |
| VAR_Sygma_labs_Sprinter_liquidity_250212-final.pdf | SprinterLiquidityMining | own contract | SprinterLiquidityMining (selected) `0x479d15...313c21` — deployed 2025-03-27 14:56:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR_Sygma_labs_Sprinter_liquidity_pool_250304-final.pdf | LiquidityPool | own contract | LiquidityPool (selected) `0xb58bb9...e5c032` — deployed 2025-03-21 18:32:49+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR_Sygma_labs_Sprinter_liquidity_pool_250304-final.pdf | LiquidityPoolAave | own contract | LiquidityPoolAave (selected) `0x7c2552...c09f4b` — deployed 2025-03-21 18:32:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR_Sygma_labs_Sprinter_liquidity_pool_250304-final.pdf | Rebalancer | unmatched — not counted | — | — | no |
| cantina_sprinter_may2025.pdf | CCTPAdapter | unmatched — not counted | — | — | no |
| cantina_sprinter_may2025.pdf | CensoredTransferFromMulticall | unmatched — not counted | — | — | no |
| cantina_sprinter_may2025.pdf | LiquidityHub | unmatched — not counted | — | — | no |
| cantina_sprinter_may2025.pdf | ManagedToken | unmatched — not counted | — | — | no |
| cantina_sprinter_may2025.pdf | Repayer | unmatched — not counted | — | — | no |
| cantina_sprinter_may2025.pdf | SprinterLiquidityMining | own contract | SprinterLiquidityMining (selected) `0x479d15...313c21` — deployed 2025-03-27 14:56:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 43 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: unique_name=4

Zero-match audit list:

- [3209] cantina.xyz/portfolio/fe3c634c-d06d-47c2-a70a-f19d2f820f58
- [3210] cantina.xyz/portfolio/2a4c73be-7566-4d0b-af12-d94a037c4b01
- [15648] Sprinter remote collateral security review Cantina - final.pdf

Fork inheritance lineage and inherited audits are included when available.
