# Agentic Audit Brief: Tokenlon

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Tokenlon (`tokenlon`)
- Website: [https://tokenlon.im](https://tokenlon.im)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 13 unique implementations (17 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $29,972,190.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Tokenlon in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 12 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 13
- Raw deployments: 17
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AMMWrapperWithPath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a1434...c3650d` | ⚠️ Unaudited |
| DelayedMultiSig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9afc22...874465` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3557bd...c20a46` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xbf03bc...0af355` | ⚠️ Unaudited |
| Lon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...71c952` | ⚠️ Unaudited |
| MerkleRedeem | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...9023db` | ⚠️ Unaudited |
| MiningTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x292a69...1045e4` | ⚠️ Unaudited |
| PMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9011...5913c6` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf1c2c...02ab07` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x74379c...a278e4`; ethereum `0x929cf6...21bc6a`; ethereum `0xb6bc1a...8fabfd`; ethereum `0xc34831...2d69f4` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x55d31f...233c2f`; ethereum `0x7924a8...54f31f` | ⚠️ Unaudited |
| UserProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x03f34b...d59659` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258783 | `0x95e6f4...094cef` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf (also discovered via alternate URL)](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-TokenlonV5.3-v1.0.pdf (also discovered via alternate URL)](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-Report-TokenlonV5.3-v1.0.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 2 | high |
| [PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf (also discovered via alternate URL)](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 3 | medium |
| [PeckShield-Audit-TokenlonV5-v1.0.pdf (also discovered via alternate URL)](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-TokenlonV5-v1.0.pdf) | PeckShield | Audit | 2020-12 | stale | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 11 | high |
| [PeckShield-Audit-TokenlonV5-v1.0rc.pdf (also discovered via alternate URL)](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/PeckShield-Audit-TokenlonV5-v1.0rc.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name|n/a | no match | 0 | 0 | 0 | 13 | high |
| [Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/master/audits/Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf) | Decurity | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/v5/audits/Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf) | Decurity | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/v5/audits/Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf) | Decurity | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf](https://github.com/consenlabs/tokenlon-contracts/blob/v5/audits/Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf) | Decurity | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5893] PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf — no match: Contracts extracted from findings targets and scope description. No explicit scope table, but contracts are clearly identified as audited targets.
- [5894] PeckShield-Audit-Report-TokenlonV5.3-v1.0.pdf — no match: Audit report for Tokenlon (Multicall). Scope mentioned as 'multicall support in Tokenlon' but specific contracts UserProxy and LimitOrder are identified as targets in findings.
- [5895] PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf — no match: No explicit scope table; contracts extracted from findings targets and code listings. Audit date from cover page.
- [5896] PeckShield-Audit-TokenlonV5-v1.0.pdf — no match: Extracted contract names from findings targets and code snippets. No explicit scope table found, but contracts are clearly audited targets.
- [5897] PeckShield-Audit-TokenlonV5-v1.0rc.pdf — no match: Extracted contract names from findings sections where they are explicitly mentioned as targets. No explicit scope table was found, but the report consistently refers to these contracts as audited targets.
- [5899] Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf — no match: Scope section explicitly lists 7 contracts. Audit period ends 14/07/2023.
- [15516] Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf — no match: No reason recorded
- [15517] Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf — no match: Scope section explicitly lists RFQv2.sol as the audited contract. Additional contracts are referenced in findings as part of the codebase.
- [15518] Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf — no match: Scope explicitly lists RFQv2.sol; TokenCollector.sol is mentioned in findings as a contract with issues.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf | ILimitOrder | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf | LimitOrder | unmatched — not counted | — | Target in findings PVE-003 and PVE-004 | no |
| PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf | LimitOrderLibEIP712 | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf | TransparentUpgradeableProxyImpl | unmatched — not counted | — | Mentioned in finding PVE-003 | no |
| PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf | UserProxy | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-TokenlonV5.3-v1.0.pdf | LimitOrder | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-TokenlonV5.3-v1.0.pdf | UserProxy | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf | AllowanceTarget | unmatched — not counted | — | Target in finding PVE-003; code listing 3.3 | no |
| PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf | PMM | unmatched — not counted | — | Target in finding PVE-004; code listing 3.5 | no |
| PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf | Spender | unmatched — not counted | — | Target in finding PVE-001 and PVE-002; mentioned in code listings | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | AMMWrapper | unmatched — not counted | — | Listed in findings targets (PVE-001, PVE-005, PVE-006) and described in report. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | AllowanceTarget | unmatched — not counted | — | Listed in finding PVE-009 target. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | EmergencyRecipient | unmatched — not counted | — | Mentioned in finding PVE-002 as dedicated contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | Lon | unmatched — not counted | — | Mentioned in finding PVE-002 as example contract with emergencyWithdraw. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | PMM | unmatched — not counted | — | Listed in findings targets (PVE-005) and described in report. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | PermanentStorage | unmatched — not counted | — | Listed in finding PVE-008 target. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | Spender | unmatched — not counted | — | Listed in finding PVE-009 target. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | StakingRewards | unmatched — not counted | — | Listed in finding PVE-004 target. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | TreasuryVester | unmatched — not counted | — | Mentioned in TreasuryVesterFactory code snippet. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | TreasuryVesterFactory | unmatched — not counted | — | Mentioned in finding PVE-003 as example of unused code. | no |
| PeckShield-Audit-TokenlonV5-v1.0.pdf | UserProxy | unmatched — not counted | — | Mentioned in findings PVE-003 and PVE-007. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | AMMWrapper | unmatched — not counted | — | Listed in findings (PVE-001, PVE-005, PVE-006, etc.) and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | AllowanceTarget | unmatched — not counted | — | Listed in finding PVE-009 and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | EmergencyRecipient | unmatched — not counted | — | Listed in finding PVE-002 and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | LONStaking | unmatched — not counted | — | Listed in findings (PVE-010, PVE-011) and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | Lon | unmatched — not counted | — | Listed in finding PVE-002 and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | PMM | unmatched — not counted | — | Listed in findings (PVE-005, PVE-007) and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | PermanentStorage | unmatched — not counted | — | Listed in finding PVE-008 and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | RewardDistributor | unmatched — not counted | — | Listed in findings (PVE-012, PVE-013) and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | Spender | unmatched — not counted | — | Listed in finding PVE-009 and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | StakingRewards | unmatched — not counted | — | Listed in findings (PVE-003, PVE-004) and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | TreasuryVester | unmatched — not counted | — | — | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | TreasuryVesterFactory | unmatched — not counted | — | Listed in finding PVE-003 and described as a target contract. | no |
| PeckShield-Audit-TokenlonV5-v1.0rc.pdf | UserProxy | unmatched — not counted | — | Listed in findings (PVE-003, PVE-007) and described as a target contract. | no |
| Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf | AllowanceTarget | unmatched — not counted | — | listed in scope section | no |
| Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf | CoordinatedTaker | unmatched — not counted | — | listed in scope section | no |
| Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf | GenericSwap | unmatched — not counted | — | listed in scope section | no |
| Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf | LimitOrderSwap | unmatched — not counted | — | listed in scope section | no |
| Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf | RFQ | unmatched — not counted | — | listed in scope section | no |
| Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf | SmartOrderStrategy | unmatched — not counted | — | listed in scope section | no |
| Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf | UniAgent | unmatched — not counted | — | listed in scope section | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | AllowanceTarget | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | LibBytes | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | LibUniswapV3 | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | LimitOrder | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | Multicall | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | PermanentStorage | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | Proxy | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | ProxyPermanentStorage | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | Spender | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | Tokenlon | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | UniswapV3PathLib | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | UpgradeableProxy | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf | UserProxy | unmatched — not counted | — | — | no |
| Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf | RFQv2 | unmatched — not counted | — | listed in scope and findings | no |
| Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf | BaseLibEIP712 | unmatched — not counted | — | listed in findings | no |
| Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf | TokenCollector | unmatched — not counted | — | listed in findings | no |
| Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf | Offer | unmatched — not counted | — | listed in findings | no |
| Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf | RFQOrder | unmatched — not counted | — | listed in findings | no |
| Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf | Asset | unmatched — not counted | — | listed in findings | no |
| Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf | RFQv2 | unmatched — not counted | — | listed in scope section and findings | no |
| Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf | TokenCollector | unmatched — not counted | — | mentioned in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 63 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, medium=1
- Match method counts: n/a

Zero-match audit list:

- [5893] PeckShield-Audit-Report-Tokenlon-LimitOrder-v1.0.pdf
- [5894] PeckShield-Audit-Report-TokenlonV5.3-v1.0.pdf
- [5895] PeckShield-Audit-Report-Tokenlonv5.2-v1.0.pdf
- [5896] PeckShield-Audit-TokenlonV5-v1.0.pdf
- [5897] PeckShield-Audit-TokenlonV5-v1.0rc.pdf
- [5899] Tokenlon-v6.0.0-Smart-Contract-Audit-Report-Decurity.pdf
- [15516] Tokenlon-v5.3.1-Smart-Contract-Audit-Report-Decurity.pdf
- [15517] Tokenlon-v5.3.2-Smart-Contract-Audit-Report-Decurity.pdf
- [15518] Tokenlon-v5.3.3-Smart-Contract-Audit-Report-Decurity.pdf

Fork inheritance lineage and inherited audits are included when available.
