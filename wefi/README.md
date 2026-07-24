# Agentic Audit Brief: wefi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: wefi (`wefi`)
- Website: [https://wefi.xyz](https://wefi.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: boba, linea, polygon
- Contract surface: 44 unique implementations (44 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $499,369.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for wefi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xc7f2720aafc991abbad66651e28a40711262478b`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 43 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 44 unique; 43 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 42
- Unique implementations: 44
- Raw deployments: 44
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
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
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc1704c99278c3e5a91afb117301ea61b003aa650` | ⚠️ Unaudited |
| WeFi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xffa188493c15dfaf2c206c97d8633377847b6a52` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (42)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02e9a543f11e38dc0a42861100ffd1141f06adbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03ad1bcc7499d49b66c33c9bd5ac9050d2f6ce50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12624cf7756677ed2694fb1577d90cb1f3e8d0b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12a92662bf3c6996a124a2bac718729f791844e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12f38c40d605e5add1d5b92359b3be8157abdb6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1b8e1dc8614e123144f4bb2c1ded2182f905ba14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d09546dc4821632ee6d516ecc277e20f82592da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e8cd6843db6286f4c7cf86efda572eccc4dff05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1edf64b621f17dc45c82a65e1312e8df988a94d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x250b7a570b2af0d34784ef9741c2a6be129752ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2588c9214376ddb524dcfa72859b522e745283bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a500d5707f8fbbaed35b99867af94dfe86f36d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d2413f9cf2d177b706a6b06913c9558f3390f5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2e941c3d0374aeed6c93f1972e1463bcafa17d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x301c76e7b60e9824e32991b8f29e1c4a03b4f65b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x303a22423b1b8cfa5fb00988ade50c2618d8721d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x34aa3fb5f02df5fbd03545ed3b35b90e51eee88d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x356c896582e74b91571a47542ec5368862231adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4de159c518fab4a3ce35246e4ca687a9215feae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x54ecc8832b65c2db0c53235cde94991c5cdcabf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c32eef8cac50f7dff1b4d20b2c73318cc5c7e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x63c61d352e82c23f102221be939132a64e65b3f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6dc71ac27cee3eaae4765258c29c427687974002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78718e0cada1ca39fa23fc710e4accfd0ff9a5e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ebc4bb88493ccb03702dc240e1f19c360126b69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f2dadc86e7441b613ba1ab6a42193b1930e15ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x927e7e19384eb05a7e271f07dc3c89e8c2318b30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x942bedab1ebdcbdb374583032a61a02505ebd423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x971a78f06d25c36dfacc5a598f81475ad3bd8eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98a723f5e35270d0de3e73529e5ce4d0ebe76fe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa42e5d2a738f83a1e1a907eb3ae031e5a768c085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaee1fd052f6b5464699b3d27f07e3214376b207f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb50ff38f0fb98dd5f9fb76ea333927beb8f1920c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb9da6c2b72bbd1664622a0e47c4f90edecb61e96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-396611 | `0xc7f2720aafc991abbad66651e28a40711262478b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce39ec58257c790f622fa7dfd5b4cc372f41ed9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd0b5a656fb3fa2b5cc61cb5f2ad7904c39d75d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5700c677ddc823b0b6cc9a5dc8415c07842ef35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe30694ffb30964af4c948f468abd74e0e62aa0fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe696dd106ad4c0e541de30a7820409db95d1e7cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef0b81a38a3e61c94d1c3f9d24c22faa9772fa95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf5820c137679e49f5ab06b5a9e79dcea0e4a3b42` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 41
- Live contracts: 0
- Unknown liveness contracts: 41
- Source-verified contracts: 1
- Currently scope-matched contracts retained as-is: 0
- Classification counts: source verified unclassified=1, unverified unclassified=40

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| source verified unclassified | VotingEscrow<br>`0xc1704c99278c3e5a91afb117301ea61b003aa650` | non_address_book | unknown | unknown | verified | n/a | `0xdd561195aa0f719de3735568c3cd46d8836c6b35` |
| unverified unclassified | UnnamedContract<br>`0x02e9a543f11e38dc0a42861100ffd1141f06adbe` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x12624cf7756677ed2694fb1577d90cb1f3e8d0b1` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x12a92662bf3c6996a124a2bac718729f791844e8` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x12f38c40d605e5add1d5b92359b3be8157abdb6b` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x1b8e1dc8614e123144f4bb2c1ded2182f905ba14` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x1d09546dc4821632ee6d516ecc277e20f82592da` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x1e8cd6843db6286f4c7cf86efda572eccc4dff05` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x1edf64b621f17dc45c82a65e1312e8df988a94d3` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x250b7a570b2af0d34784ef9741c2a6be129752ce` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x2588c9214376ddb524dcfa72859b522e745283bf` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x2a500d5707f8fbbaed35b99867af94dfe86f36d6` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x2d2413f9cf2d177b706a6b06913c9558f3390f5c` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x2e941c3d0374aeed6c93f1972e1463bcafa17d5f` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x301c76e7b60e9824e32991b8f29e1c4a03b4f65b` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x303a22423b1b8cfa5fb00988ade50c2618d8721d` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x34aa3fb5f02df5fbd03545ed3b35b90e51eee88d` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x356c896582e74b91571a47542ec5368862231adb` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x4de159c518fab4a3ce35246e4ca687a9215feae2` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x54ecc8832b65c2db0c53235cde94991c5cdcabf9` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x5c32eef8cac50f7dff1b4d20b2c73318cc5c7e95` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x63c61d352e82c23f102221be939132a64e65b3f6` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x6dc71ac27cee3eaae4765258c29c427687974002` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x78718e0cada1ca39fa23fc710e4accfd0ff9a5e9` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x8ebc4bb88493ccb03702dc240e1f19c360126b69` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x8f2dadc86e7441b613ba1ab6a42193b1930e15ac` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x927e7e19384eb05a7e271f07dc3c89e8c2318b30` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x942bedab1ebdcbdb374583032a61a02505ebd423` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x971a78f06d25c36dfacc5a598f81475ad3bd8eb5` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0x98a723f5e35270d0de3e73529e5ce4d0ebe76fe1` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0xa42e5d2a738f83a1e1a907eb3ae031e5a768c085` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0xaee1fd052f6b5464699b3d27f07e3214376b207f` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0xb50ff38f0fb98dd5f9fb76ea333927beb8f1920c` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0xb9da6c2b72bbd1664622a0e47c4f90edecb61e96` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0xce39ec58257c790f622fa7dfd5b4cc372f41ed9e` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0xd0b5a656fb3fa2b5cc61cb5f2ad7904c39d75d50` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0xd5700c677ddc823b0b6cc9a5dc8415c07842ef35` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0xe30694ffb30964af4c948f468abd74e0e62aa0fc` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0xe696dd106ad4c0e541de30a7820409db95d1e7cf` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0xef0b81a38a3e61c94d1c3f9d24c22faa9772fa95` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |
| unverified unclassified | UnnamedContract<br>`0xf5820c137679e49f5ab06b5a9e79dcea0e4a3b42` | non_address_book | unknown | unknown | unverified | n/a | `0x99a219f4c322993a101258b0a157eacf5b447d68` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Paxo-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Paxo-v1.0.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Paxo Smart Contract Audit Report - QuillAudits.pdf](https://github.com/Quillhash/QuillAudit_Reports/blob/master/Paxo%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [docs.google.com/document/d/1uNrOZqCMzTxA_BM6PxMxugvjDgTOFCFL966bim28zS0/edit](https://docs.google.com/document/d/1uNrOZqCMzTxA_BM6PxMxugvjDgTOFCFL966bim28zS0/edit?usp=sharing) | PeckShield | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14123] PeckShield-Audit-Report-Paxo-v1.0.pdf — no match: Audit report for Paxo Protocol. Scope includes CErc20, Comptroller, and CToken contracts. Audit date is February 16, 2023.
- [14124] Paxo Smart Contract Audit Report - QuillAudits.pdf — no match: Only one contract name (PToken) extracted from findings; no explicit scope section listing contracts.
- [14125] docs.google.com/document/d/1uNrOZqCMzTxA_BM6PxMxugvjDgTOFCFL966bim28zS0/edit — no match: The provided text is a title fragment and does not contain any contract names, scope section, or audit date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Paxo-v1.0.pdf | CErc20 | unmatched — not counted | — | Target in finding PVE-001, PVE-004, and mentioned in code snippets | no |
| PeckShield-Audit-Report-Paxo-v1.0.pdf | Comptroller | unmatched — not counted | — | Target in finding PVE-002, PVE-004, and mentioned in code snippets | no |
| PeckShield-Audit-Report-Paxo-v1.0.pdf | CToken | unmatched — not counted | — | Target in finding PVE-003, and mentioned in code snippets | no |
| Paxo Smart Contract Audit Report - QuillAudits.pdf | PToken | unmatched — not counted | — | mentioned in findings as PToken.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2
- Match method counts: n/a

Zero-match audit list:

- [14123] PeckShield-Audit-Report-Paxo-v1.0.pdf
- [14124] Paxo Smart Contract Audit Report - QuillAudits.pdf
- [14125] docs.google.com/document/d/1uNrOZqCMzTxA_BM6PxMxugvjDgTOFCFL966bim28zS0/edit

Fork inheritance lineage and inherited audits are included when available.
