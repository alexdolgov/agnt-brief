# Agentic Audit Brief: AO Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 56.4% over 90 days

## Project Overview

- Project: AO Bridge (`ao-bridge`)
- Website: [https://ao.arweave.net/](https://ao.arweave.net/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 16 unique implementations (44 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $40,188,831.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for AO Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across ethereum. Structural roles: 3 infra, 3 unclassified. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: infra (3), unclassified (3)
- Contract kinds: contract (6)
- Detected standards: erc1967proxy (3)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3225737a9bbb6473cb4a45b7244aca2befdb276a`, chain 1)
- Distribution (`0x3df444111b36e1debd4060ebad89887e1d8dc0b5`, chain 1)
- Distribution (`0x76488832a88475af0ac223d8fd4d053177a012cc`, chain 1)
- Distribution (`0x78cc4fad915ff9514f73046d84ce8b2aac98da12`, chain 1)
- ERC1967Proxy (`0x6a1b588b0684dace1f53c5820111f400b3dbfebf`, chain 1)
- ERC1967Proxy (`0x7cd01d5cad4ba0caeba02583a5c61d35b23e08eb`, chain 1)
- ERC1967Proxy (`0xfe08d40eee53d64936d3128838867c867602665c`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 12 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Confirmed-live implementations: 4 of 16 unique; 12 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 16
- Raw deployments: 44
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x033b274ff36837d72d4baf7b7fcf4f84f6ab8a0e`; ethereum `0x6a9b9057f825cfaf3d803cbb997402515134fe0b` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0e7f88e04c9f645a534f0cb27340609c04b6d31e`; ethereum `0xb965e42a9896676fbbbb87aedf60a6ba3d53df46` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x11f90fc3324dd91e199804fa6597229eee493740`; ethereum `0x742366f0130d422e8cd6d381a044165a340c13be` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a36f3e1990ec6955a18cd9449b146f9fb7ad2ce`; ethereum `0xfffe89b412e3f6de074d1fe4d7a93d1a81c13a4c` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1fa69debf88f3ccc3a4604ac35d86b34c7b01cf1`; ethereum `0xf9b8d0ae97d20bbe44953a6e1ae9d19d1f38a538` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2950fc2158b506bc54d4f25568b1046a3c515e28`; ethereum `0xc7b80ce29ae7a553c655c4fec09a5791d3dfe2c6` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2f9bc30f61c0f6150e2401085ae4fb4dcda015d2`; ethereum `0x93f99302ac51f701b7c748eef9350f590876a418` | ⚠️ Unaudited |
| Distribution | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379058 | 2 deployments: ethereum `0x3df444111b36e1debd4060ebad89887e1d8dc0b5`; ethereum `0x7cd01d5cad4ba0caeba02583a5c61d35b23e08eb` | ⚠️ Unaudited |
| Distribution | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379060 | 2 deployments: ethereum `0x6a1b588b0684dace1f53c5820111f400b3dbfebf`; ethereum `0x78cc4fad915ff9514f73046d84ce8b2aac98da12` | ⚠️ Unaudited |
| Distribution | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379059 | 2 deployments: ethereum `0x76488832a88475af0ac223d8fd4d053177a012cc`; ethereum `0xfe08d40eee53d64936d3128838867c867602665c` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9a91bd112bd06cf8811071bac32eab5f5cd200d5`; ethereum `0xfa20ac96c0a4083bf4fa3dd391eb6cdb4f38504f` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa65f94d5d371be45ba1d8b472e30cd3651ee72b0`; ethereum `0xa682fddd9572d70ff2ac3e0adb097f12dad20cb3` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb7410da12a1256d61c4a954b1d20026f92b12e81`; ethereum `0xe07707757e16e51a9cc65d03aaf462027f2f3d60` | ⚠️ Unaudited |
| LinearDistributionIntervalDecrease | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e209b1833ae5313c2923116c78baedf14d1d482` | ⚠️ Unaudited |
| Refunder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 16 deployments: ethereum `0x0278d076edccb596fca5de58e7e8e70d2a906a32`; ethereum `0x35afb17b338fb2aecf4ce0d8244599a14ec9ee86`; ethereum `0x3951140f5fbf78ad7ffab796e7f390c11bb900c9`; ethereum `0x40973b9a16eda9a7e624aeaf5a594d28e4d0c52c`; ethereum `0x4f7cf3b9fa9f783cb00f88b4921d17c062df0dce`; ethereum `0x5da0f6374f74df754fb76aa9632d96f598d42bed`; ethereum `0x6bf1724d01951a5f2db773d11bcc4d27d1e228e9`; ethereum `0x6ca43ed64a6c03dc43f8a83f1c33a7bcca373262`; ethereum `0x88a8686cb3a9d94288e28f4227b523e5432ffc60`; ethereum `0x8e4f0941166cfad7acaa793bd5da9a851c84294d`; ethereum `0x94c6b5c107d61bf73fdeeffa8154fef8f90c2cb9`; ethereum `0xd250c07ba93063a11855220cbaad2b5608975eb2`; ethereum `0xe4b2e1f077585d3828d9b5453383919498bd263c`; ethereum `0xe82c9c29e911554aae5e14638825fd3da447352b`; ethereum `0xf1bd338adfef0cd6bf8d535305c9d67fa93529fa`; ethereum `0xff8a50522f8dcbd0127babbfd5c75b08c135a11e` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379057 | `0x3225737a9bbb6473cb4a45b7244aca2befdb276a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3df444111b36e1debd4060ebad89887e1d8dc0b5` | Distribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x76488832a88475af0ac223d8fd4d053177a012cc` | Distribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
