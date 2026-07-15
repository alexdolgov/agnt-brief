# Agentic Audit Brief: Neo Tokyo

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 4 (3 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Neo Tokyo (`neo-tokyo`)
- Website: [https://neotokyo.codes/](https://neotokyo.codes/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 97 unique implementations (106 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $849,957.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Neo Tokyo. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across ethereum. Structural roles: 2 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (2), abstract (1)
- Detected standards: erc20 (2), ownable (2), erc1967proxy (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BYTES2 (`0xa19f52...0bea86`, chain 1)
- BYTESContract (`0x7d647b...4f8c95`, chain 1)
- ERC1967Proxy (`0xb9951b...ed1c0f`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 94 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 3 of 97 unique; 94 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/50
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 47
- Unique implementations: 97
- Raw deployments: 106
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 50.0% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 2.0% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BYTES2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389776 | `0xa19f52...0bea86` | ✅ Audited |

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| beckLoot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86357a...3a66c0` | ⚠️ Unaudited |
| boughtIdentity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x835a60...3a892e` | ⚠️ Unaudited |
| BYTESContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-389775 | `0x7d647b...4f8c95` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x95c07e...9cf13e`; ethereum `0xc0aa01...746789` | ⚠️ Unaudited |
| NeoTokyoStaker | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e1ec...ca9e16` | ⚠️ Unaudited |
| NTBytesBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc958e...32edf3` | ⚠️ Unaudited |
| NTBytesBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf53eb6...329e9c` | ⚠️ Unaudited |
| NTBytesStopGap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6868e4...58bfef` | ⚠️ Unaudited |
| NTChampionChips | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7fdf7b...3705f4`; ethereum `0xa91a93...dac3cd` | ⚠️ Unaudited |
| NTChampionChips | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf5205c...8428f5` | ⚠️ Unaudited |
| NTCitizenDeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb668be...3bdd65` | ⚠️ Unaudited |
| NTCitizenHandMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd167e...fcaa60` | ⚠️ Unaudited |
| NTConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51b1b6...9e4b09` | ⚠️ Unaudited |
| NTConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa10934...28cb48`; ethereum `0xfce9ab...01745a` | ⚠️ Unaudited |
| NTHandIdentityMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc54e36...2e06d7`; ethereum `0xe5bb82...998747` | ⚠️ Unaudited |
| NTItems | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0938e3...da3af9` | ⚠️ Unaudited |
| NTLandDeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c54b7...3019bb` | ⚠️ Unaudited |
| NTMigrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91a341...fd9e57` | ⚠️ Unaudited |
| NTOuterCitizenDeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9b091d...932ec4`; ethereum `0xa4a4c4...5b5ec2` | ⚠️ Unaudited |
| NTOuterIdentity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x698fba...62cf54` | ⚠️ Unaudited |
| NTS1Citizen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b6b64...339457` | ⚠️ Unaudited |
| NTS1Citizen | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389777 | `0xb9951b...ed1c0f` | ⚠️ Unaudited |
| NTS1Identity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e8ae6...4dd93a` | ⚠️ Unaudited |
| NTS1Identity_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x059174...8f2f99` | ⚠️ Unaudited |
| NTS1Identity_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdaf3b...55bb65` | ⚠️ Unaudited |
| NTS1Item | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bf9a8...40596b` | ⚠️ Unaudited |
| NTS1Item | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe7489e...13d249` | ⚠️ Unaudited |
| NTS1Land | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x847eed...de7d1b` | ⚠️ Unaudited |
| NTS1Land | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcfc6a1...62e21a` | ⚠️ Unaudited |
| NTS1Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30d274...97fe30` | ⚠️ Unaudited |
| NTS1Vault_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x17b2f2...8e69c7` | ⚠️ Unaudited |
| NTS1Vault_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe0eab...3d2924` | ⚠️ Unaudited |
| NTS2Citizen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6254ba...2c8a07` | ⚠️ Unaudited |
| NTS2Citizen_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x448150...f7912e` | ⚠️ Unaudited |
| NTS2Citizen_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c291f...3c7fff` | ⚠️ Unaudited |
| NTS2Identity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x317d14...f7206e` | ⚠️ Unaudited |
| NTS2Identity | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8e9f3c...0ad6d3` | ⚠️ Unaudited |
| NTS2Item | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0b8f04...9efad9` | ⚠️ Unaudited |
| NTS2Item | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9df4c5...da384d` | ⚠️ Unaudited |
| NTS2Items | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ac66d...d69354` | ⚠️ Unaudited |
| NTS2Land | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6caafb...d25778` | ⚠️ Unaudited |
| NTS2Land | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb58ae9...bf4b4e` | ⚠️ Unaudited |
| NTS2LandDeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf90980...1df639` | ⚠️ Unaudited |
| NTStakedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x049c68...153fa4` | ⚠️ Unaudited |
| NTStakedTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb92053...908627`; ethereum `0xd37ea7...9e7ed9` | ⚠️ Unaudited |
| PublicBytesBurn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d59cb...879bf3` | ⚠️ Unaudited |
| royaltySplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x88165a...39bcae`; ethereum `0xb61694...06854c`; ethereum `0xdf9a7c...2fafaa`; ethereum `0xf824b2...971ed6` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeb09c...688b34` | ⚠️ Unaudited |
| vaultBox | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab0b0d...e80879` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (47)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04b6fb...58de1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x064327...2d983d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0658b1...082a59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x094d82...84068b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09a079...ab0c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a35e3...ba57e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x124037...ebf29b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x169e92...763d1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16e856...3f839b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19815e...a8f130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dbd2f...1db5e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x254e2d...05f116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d87a6...973bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3248d8...254851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x443230...1dcda7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x451d69...92f494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4abf96...555535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c0a9a...6f8f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c9cfe...3e2054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d4c75...9b2d84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5804ae...2f3023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ecf76...592c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64967d...e072b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6685d8...4d445c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c7695...4d5d41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ddcf7...039674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79995d...cce1f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b776e...b3fd17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae3abf...74d2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb06050...dcbc3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb50722...82b577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7c5ed...269bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbb6a3...735310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0a6b3...513c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1da87...75742d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc47ae0...19a864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda5187...812b81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1b58e...d2f287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8e99...7b2b21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeb06c...a5f857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1f199...af507b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf333e6...5d08c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5327f...e088df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf76c56...c3862b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf82706...86c902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9b392...5616d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb730d...06631e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena.com/reports/2023-03-neotokyo](https://code4rena.com/reports/2023-03-neotokyo) | Code4rena | Contest | 2023-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [2023-03-neotokyo (GitHub directory)](https://github.com/code-423n4/2023-03-neotokyo) | Code4rena | Contest | 2023-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [2023-03-neotokyo-findings (GitHub directory)](https://github.com/code-423n4/2023-03-neotokyo-findings) | Code4rena | Contest | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [report.md](https://github.com/code-423n4/2023-03-neotokyo-findings/blob/main/report.md) | Code4rena | Contest | 2023-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21355] code4rena.com/reports/2023-03-neotokyo — matched: Scope section explicitly lists 2 smart contracts: BYTES2.sol and NeoTokyoStaker.sol. Audit date found on cover page.
- [21356] 2023-03-neotokyo (GitHub directory) — matched: Scope explicitly lists two contracts: BYTES2.sol and NeoTokyoStaker.sol. Audit date is the contest end date March 15, 2023.
- [21357] 2023-03-neotokyo-findings (GitHub directory) — no match: The provided text is a GitHub repository README for a contest findings repo, not an audit report. It contains no contract names, scope sections, or audit date.
- [24271] report.md — matched: The audit report clearly states the scope includes 2 smart contracts: BYTES2.sol and NeoTokyoStaker.sol. The audit contest took place March 8-15, 2023, so the end date is used.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code4rena.com/reports/2023-03-neotokyo | BYTES2 | own contract | BYTES2 (selected) `0xa19f52...0bea86` — deployed 2023-06-15 23:31:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2023-03-neotokyo | NeoTokyoStaker | unmatched — not counted | — | listed in scope | no |
| 2023-03-neotokyo (GitHub directory) | BYTES2 | own contract | BYTES2 (selected) `0xa19f52...0bea86` — deployed 2023-06-15 23:31:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-neotokyo (GitHub directory) | NeoTokyoStaker | unmatched — not counted | — | listed in scope table | no |
| report.md | BYTES2 | own contract | BYTES2 (selected) `0xa19f52...0bea86` — deployed 2023-06-15 23:31:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report.md | NeoTokyoStaker | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xb9951b...ed1c0f` | NTS1Citizen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 48 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [21357] 2023-03-neotokyo-findings (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
