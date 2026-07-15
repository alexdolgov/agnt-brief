# Agentic Audit Brief: Revault

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Revault (`revault`)
- Website: [https://wizardsardine.com/revault/](https://wizardsardine.com/revault/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 15 unique implementations (15 raw deployments)
- Coverage basis: 2/3 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,839,159.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Revault. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc. Structural roles: 3 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: erc20 (2), ownable (2), erc1967proxy (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x141683...651cfb`, chain 56)
- UnnamedContract (`0x2642fa...3d9ccd`, chain 56)
- UnnamedContract (`0x30ec49...4e28bc`, chain 56)
- UnnamedContract (`0x636bf0...3d9d48`, chain 56)
- UnnamedContract (`0x785ffb...cabe2c`, chain 56)
- UnnamedContract (`0x8b7b2a...9c466a`, chain 56)
- UnnamedContract (`0x98bc7b...152193`, chain 56)
- UnnamedContract (`0xa66af2...5960c8`, chain 56)
- UnnamedContract (`0xc01123...292be6`, chain 56)
- UnnamedContract (`0xcce8e8...fd69c9`, chain 56)
- UnnamedContract (`0xd75502...3d638b`, chain 56)
- UnnamedContract (`0xeda62c...e0fd0d`, chain 56)
- RevaToken (`0x4fdd92...7b4a3b`, chain 56)
- TransparentUpgradeableProxy (`0xe8f1cd...37d3cb`, chain 56)
- vRevaToken (`0x774d91...aef658`, chain 56)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/15 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/3 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 15 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 15 of 15 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/3
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 2 | 66.7% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RevaToken | token | project_anchor | own_supporting | 0 | bsc | unit-391410 | `0x4fdd92...7b4a3b` | ✅ Audited |
| vRevaToken | token | project_anchor | own_supporting | 0 | bsc | unit-391412 | `0x774d91...aef658` | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RevaAutoCompoundPool | core_logic | project_anchor | own_supporting | 1 | bsc | unit-391421 | `0xe8f1cd...37d3cb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391407 | `0x141683...651cfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391408 | `0x2642fa...3d9ccd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391409 | `0x30ec49...4e28bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391411 | `0x636bf0...3d9d48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391413 | `0x785ffb...cabe2c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391414 | `0x8b7b2a...9c466a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391415 | `0x98bc7b...152193` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391416 | `0xa66af2...5960c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391417 | `0xc01123...292be6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391418 | `0xcce8e8...fd69c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391419 | `0xd75502...3d638b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-391420 | `0xeda62c...e0fd0d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [paladinsec.co/projects/revault-network](https://paladinsec.co/projects/revault-network) | Paladin | Audit | 2021-09 | stale | Direct | n/a | matched | 2 | 0 | 0 | 10 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2948] paladinsec.co/projects/revault-network — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| paladinsec.co/projects/revault-network | ReVaultReVault | unmatched — not counted | — | — | no |
| paladinsec.co/projects/revault-network | ReVaultRevaUserProxy | unmatched — not counted | — | — | no |
| paladinsec.co/projects/revault-network | RevaChef | unmatched — not counted | — | — | no |
| paladinsec.co/projects/revault-network | RevaFeeReceiver | unmatched — not counted | — | — | no |
| paladinsec.co/projects/revault-network | RevaLpStakingPool | unmatched — not counted | — | — | no |
| paladinsec.co/projects/revault-network | RevaStakingPool | unmatched — not counted | — | — | no |
| paladinsec.co/projects/revault-network | RevaToken | own contract | RevaToken (selected) `0x4fdd92...7b4a3b` — deployed 2021-10-12 17:34:04+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/revault-network | RevaUserProxyFactory | unmatched — not counted | — | — | no |
| paladinsec.co/projects/revault-network | Timelock | unmatched — not counted | — | — | no |
| paladinsec.co/projects/revault-network | Zap | unmatched — not counted | — | — | no |
| paladinsec.co/projects/revault-network | ZapAndDeposit | unmatched — not counted | — | — | no |
| paladinsec.co/projects/revault-network | vRevaToken | own contract | vRevaToken (selected) `0x774d91...aef658` — deployed 2021-10-13 01:14:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xe8f1cd...37d3cb` | RevaAutoCompoundPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: unique_name=2

Fork inheritance lineage and inherited audits are included when available.
