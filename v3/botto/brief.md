# Agentic Audit Brief: Botto

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Botto (`botto`)
- Website: [https://botto.com/](https://botto.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- Coverage basis: 0/7 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,831,231.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Botto. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across base, ethereum. Structural roles: 6 unclassified, 4 core, 2 supporting, 1 infra. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: unclassified (6), core (4), supporting (2), infra (1)
- Contract kinds: contract (13)
- Detected standards: ownable (3), erc1967proxy (2), erc20 (2), erc165 (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (3), uniswap (3), solmate (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AdminUpgradeabilityProxy (`0x19cd39...91e8a6`, chain 1)
- AdminUpgradeabilityProxy (`0xf8515c...f853fd`, chain 1)
- BOTTO (`0x9dfad1...845bba`, chain 1)
- BottoActiveRewards (`0x932982...cb4c47`, chain 1)
- BottoGovernance (`0x8a7a59...84f0a9`, chain 1)
- TransparentUpgradeableProxy (`0x19cd39...91e8a6`, chain 8453)
- TransparentUpgradeableProxy (`0x8a7a59...84f0a9`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 12 (7 live, 5 unknown).
- Excluded by liveness: 1 inactive, 0 uninitialized.
- Deployment units: 7/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/7 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Deployed-live implementations: 7 of 8 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BOTTO | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230924 | `0x9dfad1...845bba` | ⚠️ Unaudited |
| BottoActiveRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230922 | `0x932982...cb4c47` | ⚠️ Unaudited |
| BottoActiveRewards | unknown | project_anchor | own_supporting | 1 | base | unit-230929 | `0x19cd39...91e8a6` | ⚠️ Unaudited |
| BottoGovernance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-230921 | `0x8a7a59...84f0a9` | ⚠️ Unaudited |
| BottoGovernance | unknown | project_anchor | own_supporting | 1 | base | unit-230930 | `0x8a7a59...84f0a9` | ⚠️ Unaudited |
| BottoGovernanceV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230928 | `0x19cd39...91e8a6` | ⚠️ Unaudited |
| BottoLiquidityMiningV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-230927 | `0xf8515c...f853fd` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-230926 | `0x24914c...6e6a0c` | ⚠️ Unaudited |

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
| [prong-distance-e49.notion.site/Botto-Governance-V2-Report-e4f25230b7e34187abdb1b7d55f1ab4c](https://prong-distance-e49.notion.site/Botto-Governance-V2-Report-e4f25230b7e34187abdb1b7d55f1ab4c) | GoldmanDAO | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.notion.so/Botto-NFTs-V2-Report-b242862b0dcc48dd94bdfe2cee517660](https://www.notion.so/Botto-NFTs-V2-Report-b242862b0dcc48dd94bdfe2cee517660) | Code4rena | Contest | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [audita.io](https://audita.io/) | Audita | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2595] prong-distance-e49.notion.site/Botto-Governance-V2-Report-e4f25230b7e34187abdb1b7d55f1ab4c — no match: The provided text is a Notion page requiring JavaScript; no audit report content is available.
- [2596] www.notion.so/Botto-NFTs-V2-Report-b242862b0dcc48dd94bdfe2cee517660 — no match: Three main contracts explicitly listed in scope; support contracts excluded.
- [2597] audita.io — no match: The provided text is a marketing page for Audita's audit services, not an actual audit report. No contracts in scope or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.notion.so/Botto-NFTs-V2-Report-b242862b0dcc48dd94bdfe2cee517660 | BottoActiveReward | unmatched — not counted | — | listed in scope | no |
| www.notion.so/Botto-NFTs-V2-Report-b242862b0dcc48dd94bdfe2cee517660 | BottoRetroactiveReward | unmatched — not counted | — | listed in scope | no |
| www.notion.so/Botto-NFTs-V2-Report-b242862b0dcc48dd94bdfe2cee517660 | BottoERC1155 | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x9dfad1...845bba` | BOTTO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x932982...cb4c47` | BottoActiveRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x19cd39...91e8a6` | BottoActiveRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8a7a59...84f0a9` | BottoGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8a7a59...84f0a9` | BottoGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19cd39...91e8a6` | BottoGovernanceV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf8515c...f853fd` | BottoLiquidityMiningV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2
- Match method counts: n/a

Zero-match audit list:

- [2595] prong-distance-e49.notion.site/Botto-Governance-V2-Report-e4f25230b7e34187abdb1b7d55f1ab4c
- [2596] www.notion.so/Botto-NFTs-V2-Report-b242862b0dcc48dd94bdfe2cee517660
- [2597] audita.io

Fork inheritance lineage and inherited audits are included when available.
