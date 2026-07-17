# Agentic Audit Brief: BendDAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DEAD - TVL dropped 18.5% over 90 days

## Project Overview

- Project: BendDAO (`benddao`)
- Website: [https://www.benddao.xyz](https://www.benddao.xyz)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 36 unique implementations (42 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $5,763,832.00
- On-chain TVL (included contracts): $246,324.55
- TVL by chain: Ethereum $246,324.55

## Project Description

No contract logic was present for BendDAO in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0684c5ca33f3c9ad5bb405f91d4200b776af477b`, chain 1)
- UnnamedContract (`0x0b870d974fb968b2e06798abbd2563c80933d148`, chain 1)
- UnnamedContract (`0x1f71c54edf2d4cf3c856987e8d3a7962f5308fea`, chain 1)
- UnnamedContract (`0x209759abcb4d2ea1b0fc285042c2bcdbfd124123`, chain 1)
- UnnamedContract (`0x222bb44602746c18006e857e81f36899b86afb87`, chain 1)
- UnnamedContract (`0x34659656e021c9b0730bd2a576b8536d9929a5ec`, chain 1)
- UnnamedContract (`0x4643f7791ac622863503d8d3e62942fcff592a91`, chain 1)
- UnnamedContract (`0x4e208a8d078836c68a0cc77e94f261829a5c5773`, chain 1)
- UnnamedContract (`0x529a8822416c3c4ed1b77de570118fdf1d474639`, chain 1)
- UnnamedContract (`0x61ae6dce4c7cb1b8165ae244c734f20df56efd73`, chain 1)
- UnnamedContract (`0x63e6be62be4d60017360eee1e451ebc70be40861`, chain 1)
- UnnamedContract (`0x6fa43c1a296db746937ac4d97ff61409e8c530cc`, chain 1)
- UnnamedContract (`0x780fe377c80b242f8cabeb43aa73913178685710`, chain 1)
- UnnamedContract (`0x8c119f5d51209e6b5c508f90d23e8f3069a2ddbd`, chain 1)
- UnnamedContract (`0x8e72a9ea6a6d99cbb5e50343bb5d741156c01154`, chain 1)
- UnnamedContract (`0x94e044321ff98ddcc4060d362afdde3ceb6c05a4`, chain 1)
- UnnamedContract (`0xab3ab751136c4e6af6f2bbd894a822deb7a67c2f`, chain 1)
- UnnamedContract (`0xae23c7bffd96b77667bf63ff3e294c1335865fbc`, chain 1)
- UnnamedContract (`0xaf488a0ff6d54d6e457cfd5cecce49646d01fbf5`, chain 1)
- UnnamedContract (`0xe3ad267696758ec9882525c43b20171a98535c49`, chain 1)
- UnnamedContract (`0xf6ee27bb3f17e456078711d8c4b257377375d654`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 21 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 9 discovered implementations shown in the inventory but excluded from coverage (6 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 21 of 36 unique; 15 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 36
- Raw deployments: 42
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BendToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x02863c14603c3b157379999f567ddece151e9153`; ethereum `0x0d02755a5700414b26ff040e1de35d337df56218` | ⚠️ Unaudited |
| BendUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x607d113a67f456292939c636becccfb3656ca80f`; ethereum `0xf0dfc149feab7bc2380f8d53b6353c6743f159a0` | ⚠️ Unaudited |
| InterestRate | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x710a2b4b5f267047728402f1594f440a2acbae02` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b5d2904be3e4711a848be09b17dee89e6a5bc27` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d8138ab8458bc420ac2dc078c59e8bd4defcaa6` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x859f6e05410893fe64bc84d92bda773ff798cf66` | ⚠️ Unaudited |
| PunkGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2bbb6f9c858a96a91e1e8e5b7f0e25ea34835ba0`; ethereum `0x791de2090162a4ca1dd4bf998e0bbcc17bfff6fd`; ethereum `0xa319552eef068933945a4484a1640c6a6edefe39` | ⚠️ Unaudited |
| WETHGateway | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1302a7da9cfa2bef4d7d8985fa0b1a1729971527`; ethereum `0x5fa288a9c6cdbd0b0845199a033ef32a207bc98d`; ethereum `0xe2b1fc3c7e218bfccbb249afc7df9da6ff9b9868` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380307 | `0x0684c5ca33f3c9ad5bb405f91d4200b776af477b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380308 | `0x0b870d974fb968b2e06798abbd2563c80933d148` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-380309 | `0x1432a03715dc2491b9cde3a0dcbea4de4f0dedbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380310 | `0x1f71c54edf2d4cf3c856987e8d3a7962f5308fea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380311 | `0x209759abcb4d2ea1b0fc285042c2bcdbfd124123` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380312 | `0x222bb44602746c18006e857e81f36899b86afb87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380313 | `0x34659656e021c9b0730bd2a576b8536d9929a5ec` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-380314 | `0x3f8133a472c1d94be4a562c44c337409c04ae244` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380315 | `0x4643f7791ac622863503d8d3e62942fcff592a91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380316 | `0x4e208a8d078836c68a0cc77e94f261829a5c5773` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-380317 | `0x510f816d2bcf423df45f57026ecae80ffdf777a5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380318 | `0x529a8822416c3c4ed1b77de570118fdf1d474639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e0785d84e60f4c94f970ac8a7a8561d761c0171` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380319 | `0x61ae6dce4c7cb1b8165ae244c734f20df56efd73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380320 | `0x63e6be62be4d60017360eee1e451ebc70be40861` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380321 | `0x6fa43c1a296db746937ac4d97ff61409e8c530cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380322 | `0x780fe377c80b242f8cabeb43aa73913178685710` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380323 | `0x8c119f5d51209e6b5c508f90d23e8f3069a2ddbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380324 | `0x8e72a9ea6a6d99cbb5e50343bb5d741156c01154` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380325 | `0x94e044321ff98ddcc4060d362afdde3ceb6c05a4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-380326 | `0xa9afc955d549d43db056655b98fab02870a45fcd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-380327 | `0xa9e3696544da3b41c774115c0f7ef6e97436f5db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380328 | `0xab3ab751136c4e6af6f2bbd894a822deb7a67c2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380329 | `0xae23c7bffd96b77667bf63ff3e294c1335865fbc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380330 | `0xaf488a0ff6d54d6e457cfd5cecce49646d01fbf5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380331 | `0xe3ad267696758ec9882525c43b20171a98535c49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380332 | `0xf6ee27bb3f17e456078711d8c4b257377375d654` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-380333 | `0xfc76acb1c685fc427894652616feb4e303e4611a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/bend-dao](https://skynet.certik.com/projects/bend-dao) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2183] skynet.certik.com/projects/bend-dao — no match: Extracted from Audited Files section; only two files explicitly listed. The report mentions 80 audited files but only shows two. Date from 'Last Audit was delivered on 4/1/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/bend-dao | WalletBalanceProvider | unmatched — not counted | — | listed in Audited Files | no |
| skynet.certik.com/projects/bend-dao | DataTypes | unmatched — not counted | — | listed in Audited Files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [2183] skynet.certik.com/projects/bend-dao

Fork inheritance lineage and inherited audits are included when available.
