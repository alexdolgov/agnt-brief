# Agentic Audit Brief: Neemo Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Neemo Finance (`neemo-finance`)
- Website: [https://neemo.finance/](https://neemo.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 14 unique implementations (15 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $859,815.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Neemo Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x02c5b109ccbdc63aa57a7382fd4a62043bda785a`, chain 1)
- UnnamedContract (`0x6dcdd4bf74bcc65394c42e23679e6fed74ba141d`, chain 1)
- UnnamedContract (`0x8730592a1ba11330c7d185b4fc02337fbbb4ef63`, chain 1)
- UnnamedContract (`0xf18229fdd04712ef25342e620a973194189d9418`, chain 1)
- UnnamedContract (`0xfb01af154675236f7f187e4121a9b917e4fea0d3`, chain 1)
- ERC1967Proxy (`0x54cd23460df45559fd5feeaada7ba25f89c13525`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 8 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 6 of 14 unique; 8 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 14
- Raw deployments: 15
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | proxy | project_anchor | own_supporting | 1 | ethereum | unit-248772 | `0x54cd23460df45559fd5feeaada7ba25f89c13525` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x653415bc15ec3bca10815e09fcc5fe0a5bae2bdf`; ethereum `0x85031e58c66ba47a16eef7a69514cd33ec16559c` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248767 | `0x02c5b109ccbdc63aa57a7382fd4a62043bda785a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b43aeaa98e882a2432a580b6549d5a57e64d807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x131ae8b2eaa111304e1f5cd25a95f214f0210f4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e6d797b8d2bd3870e1fd46c737714c16cb19342` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248768 | `0x6dcdd4bf74bcc65394c42e23679e6fed74ba141d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248769 | `0x8730592a1ba11330c7d185b4fc02337fbbb4ef63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa75e4350169fc3765e3056007805acacd6f364d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67476893c166c537afd9bc6bc87b3f228b44337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfa66f824b195757786188730d29094052d0cec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf13790894a9d8cf6d87affbdb5b9c3bc1364dfe1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248770 | `0xf18229fdd04712ef25342e620a973194189d9418` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-248771 | `0xfb01af154675236f7f187e4121a9b917e4fea0d3` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 14
- Live contracts: 5
- Unknown liveness contracts: 9
- Source-verified contracts: 1
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=1, exact address book overlap=5, unverified unclassified=8

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | ERC1967Proxy<br>`0x653415bc15ec3bca10815e09fcc5fe0a5bae2bdf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xbde590921e7666b0dc88e3b1dd50931c5cd2fb3b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x02c5b109ccbdc63aa57a7382fd4a62043bda785a` | project_anchor | unknown | live | unverified | n/a | `0xbde590921e7666b0dc88e3b1dd50931c5cd2fb3b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x6dcdd4bf74bcc65394c42e23679e6fed74ba141d` | project_anchor | unknown | live | unverified | n/a | `0xbde590921e7666b0dc88e3b1dd50931c5cd2fb3b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x8730592a1ba11330c7d185b4fc02337fbbb4ef63` | project_anchor | unknown | live | unverified | n/a | `0xbde590921e7666b0dc88e3b1dd50931c5cd2fb3b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0xf18229fdd04712ef25342e620a973194189d9418` | project_anchor | unknown | live | unverified | n/a | `0xbde590921e7666b0dc88e3b1dd50931c5cd2fb3b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0xfb01af154675236f7f187e4121a9b917e4fea0d3` | project_anchor | unknown | live | unverified | n/a | `0xbde590921e7666b0dc88e3b1dd50931c5cd2fb3b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b43aeaa98e882a2432a580b6549d5a57e64d807` | non_address_book | unknown | unknown | unverified | n/a | `0xbde590921e7666b0dc88e3b1dd50931c5cd2fb3b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x131ae8b2eaa111304e1f5cd25a95f214f0210f4a` | non_address_book | unknown | unknown | unverified | n/a | `0xbde590921e7666b0dc88e3b1dd50931c5cd2fb3b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e6d797b8d2bd3870e1fd46c737714c16cb19342` | non_address_book | unknown | unknown | unverified | n/a | `0xbde590921e7666b0dc88e3b1dd50931c5cd2fb3b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85031e58c66ba47a16eef7a69514cd33ec16559c` | non_address_book | unknown | unknown | unverified | n/a | `0xbde590921e7666b0dc88e3b1dd50931c5cd2fb3b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa75e4350169fc3765e3056007805acacd6f364d` | non_address_book | unknown | unknown | unverified | n/a | `0xbde590921e7666b0dc88e3b1dd50931c5cd2fb3b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc67476893c166c537afd9bc6bc87b3f228b44337` | non_address_book | unknown | unknown | unverified | n/a | `0xbde590921e7666b0dc88e3b1dd50931c5cd2fb3b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcfa66f824b195757786188730d29094052d0cec2` | non_address_book | unknown | unknown | unverified | n/a | `0xbde590921e7666b0dc88e3b1dd50931c5cd2fb3b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf13790894a9d8cf6d87affbdb5b9c3bc1364dfe1` | non_address_book | unknown | unknown | unverified | n/a | `0xbde590921e7666b0dc88e3b1dd50931c5cd2fb3b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [hacken.io/audits/neemo-finance](https://hacken.io/audits/neemo-finance) | Hacken | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3061] hacken.io/audits/neemo-finance — no match: The page is an overview listing multiple audits for Neemo Finance. No single audit report with a defined scope section is provided. The extracted names come from the audit history table, but the actual contracts in scope for a specific audit are not detailed. No audit date is identifiable from the page content.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| hacken.io/audits/neemo-finance | NeemoLiquifier | unmatched — not counted | — | listed in audit history table as 'Smart Contract NeemoLiquifier' | no |
| hacken.io/audits/neemo-finance | Neemo-Staked-Astar | unmatched — not counted | — | listed in audit history table as 'Smart Contract Neemo-Staked-Astar' | no |
| hacken.io/audits/neemo-finance | Neemo-Restaked-Ether | unmatched — not counted | — | listed in audit history table as 'Smart Contract Neemo-Restaked-Ether' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [3061] hacken.io/audits/neemo-finance

Fork inheritance lineage and inherited audits are included when available.
