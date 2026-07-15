# Agentic Audit Brief: LlamaPay

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: LlamaPay (`llamapay`)
- Website: [https://llamapay.io](https://llamapay.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, avalanche-fuji, base, berachain, blast, bsc, cronos, ethereum, fantom, fraxtal, gnosis, goerli, linea, mantle, metis, mode, optimism, polygon, polygon-zkevm, scroll, sonic, zora
- Contract surface: 52 unique implementations (93 raw deployments)
- Coverage basis: 0/19 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $36,149,992.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for LlamaPay. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 19 contract row(s) across arbitrum, avalanche, avalanche-fuji, base, berachain, blast, bsc, cronos, ethereum, fantom, gnosis, goerli, metis, optimism, polygon, sonic, zora. Structural roles: 8 supporting, 8 unclassified, 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 19
- Structural roles: supporting (8), unclassified (8), core (3)
- Contract kinds: contract (13), unclassified (6)
- Detected standards: none
- Frameworks: solmate (6), openzeppelin (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 39 contracts are derived from known codebases. 39 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xd152f5...452150`, chain 1)
- UnnamedContract (`0x62e13b...cd4c10`, chain 10)
- UnnamedContract (`0xc5a4fe...074ab9`, chain 10)
- UnnamedContract (`0xd152f5...452150`, chain 10)
- UnnamedContract (`0xde1c04...f84c7f`, chain 10)
- UnnamedContract (`0x02266e...121c01`, chain 56)
- UnnamedContract (`0xd152f5...452150`, chain 56)
- UnnamedContract (`0xd152f5...452150`, chain 100)
- UnnamedContract (`0xde1c04...f84c7f`, chain 100)
- UnnamedContract (`0x02266e...121c01`, chain 137)
- UnnamedContract (`0xc5a4fe...074ab9`, chain 137)
- UnnamedContract (`0xd152f5...452150`, chain 137)
- UnnamedContract (`0xde1c04...f84c7f`, chain 137)
- UnnamedContract (`0x62e13b...cd4c10`, chain 43114)
- UnnamedContract (`0x7d507b...25f4a3`, chain 43114)
- UnnamedContract (`0x62e13b...cd4c10`, chain 81457)
- Disperse (`0x6f9fb4...56301a`, chain 43114)
- LlamaPayBot (`0xc5a4fe...074ab9`, chain 1)
- LlamaPayBot (`0xc5a4fe...074ab9`, chain 56)
- LlamaPayBot (`0x57547f...0353d7`, chain 43114)
- LlamaPayFactory (`0xde1c04...f84c7f`, chain 1)
- LlamaPayFactory (`0xde1c04...f84c7f`, chain 56)
- LlamaPayFactory (`0x09c39b...3aea07`, chain 8453)
- LlamaPayFactory (`0xde1c04...f84c7f`, chain 42161)
- TokenEscrow (`0x056e39...532b72`, chain 1)
- TokenEscrow (`0xb4e9d1...404779`, chain 10)
- TokenEscrow (`0x1564d7...528734`, chain 42161)
- TokenEscrow (`0x4c48f1...84fa0c`, chain 43114)
- UnnamedContract (`0x62e13b...cd4c10`, chain 250)
- UnnamedContract (`0xc5a4fe...074ab9`, chain 250)
- UnnamedContract (`0xd152f5...452150`, chain 250)
- UnnamedContract (`0xda33d4...5294d1`, chain 250)
- UnnamedContract (`0xde1c04...f84c7f`, chain 250)
- Vesting Escrow Factory (`0xcf6178...6ab347`, chain 1)
- Vesting Escrow Factory (`0x62e13b...cd4c10`, chain 56)
- Vesting Escrow Factory (`0x62e13b...cd4c10`, chain 100)
- Vesting Escrow Factory (`0x62e13b...cd4c10`, chain 137)
- Vesting Escrow Factory (`0x62e13b...cd4c10`, chain 8453)
- Vesting Escrow Factory (`0x62e13b...cd4c10`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 19; live-surface rows included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 40/43 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/19 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 40 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 9 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 40 of 52 unique; 12 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 52
- Raw deployments: 93
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Disperse | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-245182 | `0x6f9fb4...56301a` | ⚠️ Unaudited |
| Disperse | unknown | project_anchor | own_supporting | 0 | avalanche | unit-245189 | `0x6f9fb4...56301a` | ⚠️ Unaudited |
| LlamaPayBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x0327a0...ae948e`; ethereum `0xe10eb2...218ee9`; optimism `0x6f9fb4...56301a`; arbitrum `0xb1870e...b184e0`; avalanche `0x0327a0...ae948e`; avalanche `0x0e52b1...c258cf`; avalanche `0x3addfd...b6cb0f`; avalanche `0x9410fb...1b633c`; avalanche `0xb7caa9...8b268c`; avalanche `0xda33d4...5294d1`; avalanche `0xe10eb2...218ee9`; avalanche `0xf13563...bac057` | ⚠️ Unaudited |
| LlamaPayBot | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245158 | `0xc5a4fe...074ab9` | ⚠️ Unaudited |
| LlamaPayBot | unknown | project_anchor | own_supporting | 0 | bsc | unit-245194 | `0xc5a4fe...074ab9` | ⚠️ Unaudited |
| LlamaPayBot | unknown | project_anchor | own_supporting | 0 | avalanche | unit-245187 | `0x57547f...0353d7` | ⚠️ Unaudited |
| LlamaPayFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-245161 | `0xde1c04...f84c7f` | ⚠️ Unaudited |
| LlamaPayFactory | registry | project_anchor | own_supporting | 0 | bsc | unit-245196 | `0xde1c04...f84c7f` | ⚠️ Unaudited |
| LlamaPayFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | 6 deployments: metis `0x06bfb4...f92c38`; metis `0x0ebe05...9b411c`; metis `0x43634d...030600`; metis `0x4ddfc2...7567b7`; metis `0xcfb166...c937bc`; berachain `0x09c39b...3aea07` | ⚠️ Unaudited |
| LlamaPayFactory | registry | project_anchor | own_supporting | 0 | base | unit-245198 | `0x09c39b...3aea07` | ⚠️ Unaudited |
| LlamaPayFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-245183 | `0xde1c04...f84c7f` | ⚠️ Unaudited |
| Simple Vesting Escrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 12 deployments: ethereum `0x9dd5cf...14bad2`; bsc `0x4ace3e...2b84bd`; gnosis `0x4ace3e...2b84bd`; polygon `0x4ace3e...2b84bd`; sonic `0xb61915...75a8b4`; base `0x0d5e12...d62cce`; base `0x2b3a5d...d15e49`; base `0x4ace3e...2b84bd`; base `0x4c0f3d...6d4be5`; base `0xb61915...75a8b4`; arbitrum `0x4ace3e...2b84bd`; berachain `0xb93427...10411a` | ⚠️ Unaudited |
| TokenEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02266e...121c01` | ⚠️ Unaudited |
| TokenEscrow | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-245200 | `0x056e39...532b72` | ⚠️ Unaudited |
| TokenEscrow | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-245163 | `0xb4e9d1...404779` | ⚠️ Unaudited |
| TokenEscrow | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-245180 | `0x1564d7...528734` | ⚠️ Unaudited |
| TokenEscrow | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-245186 | `0x4c48f1...84fa0c` | ⚠️ Unaudited |
| Vesting Escrow Factory | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-245159 | `0xcf6178...6ab347` | ⚠️ Unaudited |
| Vesting Escrow Factory | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-245193 | `0x62e13b...cd4c10` | ⚠️ Unaudited |
| Vesting Escrow Factory | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-245167 | `0x62e13b...cd4c10` | ⚠️ Unaudited |
| Vesting Escrow Factory | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-245171 | `0x62e13b...cd4c10` | ⚠️ Unaudited |
| Vesting Escrow Factory | operational_periphery | project_anchor | own_supporting | 0 | base | unit-245199 | `0x62e13b...cd4c10` | ⚠️ Unaudited |
| Vesting Escrow Factory | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-245181 | `0x62e13b...cd4c10` | ⚠️ Unaudited |
| Vesting Escrow Factory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 3 deployments: sonic `0xb93427...10411a`; berachain `0x4ace3e...2b84bd`; berachain `0xb61915...75a8b4` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0xb61915...75a8b4`; ethereum `0xb93427...10411a`; bsc `0xb61915...75a8b4`; bsc `0xb93427...10411a`; gnosis `0xb61915...75a8b4`; gnosis `0xb93427...10411a`; polygon `0xb61915...75a8b4`; polygon `0xb93427...10411a`; arbitrum `0xb61915...75a8b4`; arbitrum `0xb93427...10411a`; avalanche `0xb61915...75a8b4`; avalanche `0xb93427...10411a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-245160 | `0xd152f5...452150` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-245191 | `0xccdd68...cec23d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245162 | `0x62e13b...cd4c10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245164 | `0xc5a4fe...074ab9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245165 | `0xd152f5...452150` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-245166 | `0xde1c04...f84c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | 2 deployments: cronos `0x62e13b...cd4c10`; zora `0x62e13b...cd4c10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245192 | `0x02266e...121c01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-245195 | `0xd152f5...452150` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-245168 | `0xd152f5...452150` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-245169 | `0xde1c04...f84c7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-245170 | `0x02266e...121c01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-245172 | `0xc5a4fe...074ab9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-245173 | `0xd152f5...452150` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-245174 | `0xde1c04...f84c7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-245175 | `0x62e13b...cd4c10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-245176 | `0xc5a4fe...074ab9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-245177 | `0xd152f5...452150` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-245178 | `0xda33d4...5294d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-245179 | `0xde1c04...f84c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb93427...10411a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-245184 | `0x62e13b...cd4c10` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-245185 | `0xc4705f...6a7d30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ace3e...2b84bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-245188 | `0x62e13b...cd4c10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-245190 | `0x7d507b...25f4a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-245197 | `0x62e13b...cd4c10` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-LlamaPay-v1.0.pdf](https://github.com/LlamaPay/llamapay/blob/master/audits/PeckShield-Audit-Report-LlamaPay-v1.0.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5984] PeckShield-Audit-Report-LlamaPay-v1.0.pdf — no match: Only one contract, LlamaPay, is explicitly mentioned as the target. The report references a single contract file LlamaPay.sol.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-LlamaPay-v1.0.pdf | LlamaPay | unmatched — not counted | — | Listed as target in findings and scope description. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xc5a4fe...074ab9` | LlamaPayBot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc5a4fe...074ab9` | LlamaPayBot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x57547f...0353d7` | LlamaPayBot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xde1c04...f84c7f` | LlamaPayFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xde1c04...f84c7f` | LlamaPayFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x09c39b...3aea07` | LlamaPayFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xde1c04...f84c7f` | LlamaPayFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x056e39...532b72` | TokenEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xb4e9d1...404779` | TokenEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1564d7...528734` | TokenEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x4c48f1...84fa0c` | TokenEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcf6178...6ab347` | Vesting Escrow Factory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x62e13b...cd4c10` | Vesting Escrow Factory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x62e13b...cd4c10` | Vesting Escrow Factory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x62e13b...cd4c10` | Vesting Escrow Factory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x62e13b...cd4c10` | Vesting Escrow Factory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x62e13b...cd4c10` | Vesting Escrow Factory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [5984] PeckShield-Audit-Report-LlamaPay-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
