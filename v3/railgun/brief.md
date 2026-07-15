# Agentic Audit Brief: Railgun

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 10 (1 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Railgun (`railgun`)
- Website: [https://railgun.org](https://railgun.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, polygon
- Contract surface: 3 unique implementations (3 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $232,664,353.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Railgun. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc, ethereum, polygon. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: erc20 (3), ownable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- RailToken (`0xe76c6c...a7a33d`, chain 1)
- RailTokenFixedSupply (`0x3f847b...cd737f`, chain 56)
- RailTokenFixedSupply (`0x92a9c9...1a714f`, chain 137)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zokyo | Tier 2 | 1 | 33.3% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RailToken | token | project_anchor | own_supporting | 0 | ethereum | unit-391271 | `0xe76c6c...a7a33d` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RailTokenFixedSupply | token | project_anchor | own_supporting | 0 | bsc | unit-391273 | `0x3f847b...cd737f` | ⚠️ Unaudited |
| RailTokenFixedSupply | token | project_anchor | own_supporting | 0 | polygon | unit-391272 | `0x92a9c9...1a714f` | ⚠️ Unaudited |

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
| [2023-02-03 Zokyo.pdf](https://assets.railgun.org/docs/audits/2023-02-03%20Zokyo.pdf) | Zokyo | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2022-12-21 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-12-21%20Zokyo.pdf) | Zokyo | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [2022-09-14 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-09-14%20Zokyo.pdf) | Zokyo | Audit | 2022-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [2022-08-29 Hashcloak.pdf](https://assets.railgun.org/docs/audits/2022-08-29%20Hashcloak.pdf) | HashCloak | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [2022-04-21 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-04-21%20Zokyo.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [2022-04-20 Zokyo.pdf](https://assets.railgun.org/docs/audits/2022-04-20%20Zokyo.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [2021-11-23 Zokyo.pdf](https://assets.railgun.org/docs/audits/2021-11-23%20Zokyo.pdf) | Zokyo | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [2021-11-03 Zokyo.pdf](https://assets.railgun.org/docs/audits/2021-11-03%20Zokyo.pdf) | Zokyo | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [2021-11-02 Hacken.pdf](https://assets.railgun.org/docs/audits/2021-11-02%20Hacken.pdf) | Hacken | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [2021-04-01 ABDK.pdf](https://assets.railgun.org/docs/audits/2021-04-01%20ABDK.pdf) | ABDK | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13741] 2023-02-03 Zokyo.pdf — no match: Two contracts explicitly listed in scope: Sender.sol and Executor.sol. Audit date from cover page: 'February 3rd 2023'.
- [13742] 2022-12-21 Zokyo.pdf — no match: No reason recorded
- [13743] 2022-09-14 Zokyo.pdf — no match: No reason recorded
- [13744] 2022-08-29 Hashcloak.pdf — no match: No reason recorded
- [13745] 2022-04-21 Zokyo.pdf — matched: Only one contract, Rail.sol, is explicitly mentioned in scope.
- [13746] 2022-04-20 Zokyo.pdf — no match: No reason recorded
- [13747] 2021-11-23 Zokyo.pdf — no match: No reason recorded
- [13748] 2021-11-03 Zokyo.pdf — no match: No reason recorded
- [13749] 2021-11-02 Hacken.pdf — no match: No reason recorded
- [13750] 2021-04-01 ABDK.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023-02-03 Zokyo.pdf | Sender | unmatched — not counted | — | listed in scope section: 'Within the scope of this audit, the team of auditors reviewed the following contract(s): Sender.sol Executor.sol' | no |
| 2023-02-03 Zokyo.pdf | Executor | unmatched — not counted | — | listed in scope section: 'Within the scope of this audit, the team of auditors reviewed the following contract(s): Sender.sol Executor.sol' | no |
| 2022-12-21 Zokyo.pdf | Commitments | unmatched — not counted | — | — | no |
| 2022-12-21 Zokyo.pdf | RailgunLogic | unmatched — not counted | — | — | no |
| 2022-12-21 Zokyo.pdf | RailgunSmartWallet | unmatched — not counted | — | — | no |
| 2022-09-14 Zokyo.pdf | Delegator | unmatched — not counted | — | — | no |
| 2022-09-14 Zokyo.pdf | Voting | unmatched — not counted | — | — | no |
| 2022-08-29 Hashcloak.pdf | GovernorRewards.sol | unmatched — not counted | — | — | no |
| 2022-08-29 Hashcloak.pdf | PublicInputHash.circom | unmatched — not counted | — | — | no |
| 2022-08-29 Hashcloak.pdf | Treasury.sol | unmatched — not counted | — | — | no |
| 2022-08-29 Hashcloak.pdf | Voting.sol | unmatched — not counted | — | — | no |
| 2022-08-29 Hashcloak.pdf | joinsplit.circom | unmatched — not counted | — | — | no |
| 2022-04-21 Zokyo.pdf | Rail | own contract | RailToken (selected) `0xe76c6c...a7a33d` — deployed 2021-07-03 16:16:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-04-20 Zokyo.pdf | Commitments.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | Globals.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | Poseidon.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | RailgunLogic.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | Snark.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | TokenBlacklist.sol | unmatched — not counted | — | — | no |
| 2022-04-20 Zokyo.pdf | Verifier.sol | unmatched — not counted | — | — | no |
| 2021-11-23 Zokyo.pdf | Commitments | unmatched — not counted | — | — | no |
| 2021-11-23 Zokyo.pdf | Globals | unmatched — not counted | — | — | no |
| 2021-11-23 Zokyo.pdf | RailgunLogic | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Commitments | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Delegator | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Deployer | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Distributor | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Globals | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Multisend | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Poseidon | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Proxy | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | ProxyAdmin | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | RailgunLogic | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Snark | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Staking | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | TokenWhitelist | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Treasury | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Verifier | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | VestLock | unmatched — not counted | — | — | no |
| 2021-11-03 Zokyo.pdf | Voting | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Commitments | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | CommitmentsStub | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Delegator | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Deployer | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Distributor | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Getter | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Globals | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | GovernanceTarget | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Multisend | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Poseidon | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Proxy | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | ProxyAdmin | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | ProxyTarget | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | RailgunLogic | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Snark | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Staking | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | StakingStub | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | TokenStubs | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | TokenWhitelist | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | TokenWhitelistStub | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Treasury | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Verifier | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | VestLock | unmatched — not counted | — | — | no |
| 2021-11-02 Hacken.pdf | Voting | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Commitments | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | HashInputs | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | JoinSplit | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Large | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | MerkleTree | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | RailgunLogic | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Small | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Snark | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | TokenWhitelist | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Types | unmatched — not counted | — | — | no |
| 2021-04-01 ABDK.pdf | Verifier | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x3f847b...cd737f` | RailTokenFixedSupply | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x92a9c9...1a714f` | RailTokenFixedSupply | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 74 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=1

Zero-match audit list:

- [13741] 2023-02-03 Zokyo.pdf
- [13742] 2022-12-21 Zokyo.pdf
- [13743] 2022-09-14 Zokyo.pdf
- [13744] 2022-08-29 Hashcloak.pdf
- [13746] 2022-04-20 Zokyo.pdf
- [13747] 2021-11-23 Zokyo.pdf
- [13748] 2021-11-03 Zokyo.pdf
- [13749] 2021-11-02 Hacken.pdf
- [13750] 2021-04-01 ABDK.pdf

Fork inheritance lineage and inherited audits are included when available.
