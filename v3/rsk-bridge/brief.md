# Agentic Audit Brief: RSK Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: RSK Bridge (`rsk-bridge`)
- Website: [https://rootstock.io/](https://rootstock.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum
- Contract surface: 20 unique implementations (20 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $98,414,552.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for RSK Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, base, ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: layerzero (1), openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1e44f98cc78d505a61f63b26d13b116cf51dbb87`, chain 1)
- UnnamedContract (`0x441fcb23dfe8289cf572126fedcf450974adc891`, chain 8453)
- UnnamedContract (`0xe5e851b01dd3eda24fde709a407db44555b6d1e0`, chain 8453)
- UnnamedContract (`0x441fcb23dfe8289cf572126fedcf450974adc891`, chain 42161)
- UnnamedContract (`0xe5e851b01dd3eda24fde709a407db44555b6d1e0`, chain 42161)
- MyOFT (`0x01b603be3d545f096015741e6503440282bf45fb`, chain 1)

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
- Outside the address book: 14 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 6 of 20 unique; 14 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 20
- Raw deployments: 20
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2017-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x12ed69359919fc775bc2674860e8fe2d2b6a7b5d` | ⚠️ Unaudited |
| AllowTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x118522603dc0b8490fec2b8db92e6f1c66cd697c` | ⚠️ Unaudited |
| Bridge_v0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe34f957e42a3a2b5f8a64ee367851a088bd1426a` | ⚠️ Unaudited |
| Bridge_v1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8582f510817731be46e6a8380cf4eeffc05aa5f1` | ⚠️ Unaudited |
| Federation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5631a6ac95b6bde690807085aaa70e3b2d9d76c5` | ⚠️ Unaudited |
| Federation_v1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x479f86ecbe766073d2712ef418aceb56d5362a2b` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x040007b1804ad78a97f541bebed377dcb60e4138` | ⚠️ Unaudited |
| MyOFT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253269 | `0x01b603be3d545f096015741e6503440282bf45fb` | ⚠️ Unaudited |
| Payroll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb005bb5e58878318d559561a49f0b67c616d11f0` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4a94b0e07a8a453d382747741d4652a0d0bcbf` | ⚠️ Unaudited |
| SideToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73c08467e23f7dcb7ddbbc8d05041b74467a498a` | ⚠️ Unaudited |
| SideTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d06103af1a68026615e673d46047fab77db0fa` | ⚠️ Unaudited |
| SideTokenFactory_v1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x578a80ad3f6d56f873da81b73b8d192ab6bfb063` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5bce0ababa89e1d0e063978d87cff2f8f5145942` | ⚠️ Unaudited |
| Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f989f2f323a1732a565c9a3f694f2fa8f0b6120` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253270 | `0x1e44f98cc78d505a61f63b26d13b116cf51dbb87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253273 | `0x441fcb23dfe8289cf572126fedcf450974adc891` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-253274 | `0xe5e851b01dd3eda24fde709a407db44555b6d1e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253271 | `0x441fcb23dfe8289cf572126fedcf450974adc891` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-253272 | `0xe5e851b01dd3eda24fde709a407db44555b6d1e0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [RSKj.pdf](https://github.com/trailofbits/publications/blob/master/reviews/RSKj.pdf) | Trail of Bits | Audit | 2017-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [rskaudit_ginger_120717.pdf](http://www0.cs.ucl.ac.uk/staff/P.McCorry/rskaudit_ginger_120717.pdf) | Patrick McCorry (UCL) | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20994] RSKj.pdf — no match: The report does not list individual smart contracts in scope; it audits the entire RSKj platform, which is a Java implementation of a smart contract platform. No specific contract names are provided.
- [20995] rskaudit_ginger_120717.pdf — no match: The report explicitly states the audit scope as Remasc and Bridge contracts. No specific file paths or addresses provided. No audit date found in the text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| RSKj.pdf | RSKj | unmatched — not counted | — | The report title and executive summary refer to RSKj as the audited system. | no |
| rskaudit_ginger_120717.pdf | Remasc | unmatched — not counted | — | explicitly stated as audited contract in abstract and throughout report | no |
| rskaudit_ginger_120717.pdf | Bridge | unmatched — not counted | — | explicitly stated as audited contract in abstract and throughout report | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x01b603be3d545f096015741e6503440282bf45fb` | MyOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [20994] RSKj.pdf
- [20995] rskaudit_ginger_120717.pdf

Fork inheritance lineage and inherited audits are included when available.
