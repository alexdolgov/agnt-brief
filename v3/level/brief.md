# Agentic Audit Brief: Level

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Level (`level`)
- Website: [https://www.level.money](https://www.level.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 26 unique implementations (27 raw deployments)
- Coverage basis: 0/26 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $668,554.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Level in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AaveV3YieldManager (`0x9df5680d8dc866ad154dc07a7dc1c418dc60c96c`, chain 1)
- BoringVault (`0x834d9c7688ca1c10479931de906bcc44879a0446`, chain 1)
- EigenlayerReserveManager (`0x7b2c2c905184cef1fabe920d4cbea525acaa6f14`, chain 1)
- ERC1967Proxy (`0x29759944834e08ace755dcea71491413f7e2cbad`, chain 1)
- ERC1967Proxy (`0x5f432430c515964c299bb4f277cdab0fcc074e25`, chain 1)
- ERC1967Proxy (`0x9136ab0294986267b71beed86a75eeb3336d09e1`, chain 1)
- ERC1967Proxy (`0xbd05b8b22fe4ccf093a6206c63cc39f02345e0da`, chain 1)
- GnosisSafeProxy (`0x343acce723339d5a417411d8ff57fde8886e91dc`, chain 1)
- KarakReserveManager (`0x329f91fe82c1799c3e089fabe9d3a7efdc2d3151`, chain 1)
- LevelMinting (`0x8e7046e27d14d09bdacde9260ff7c8c2be68a41f`, chain 1)
- LevelReserveLensMorphoOracle (`0x625bb4f5133ff9f6d43e21f15add35be46387903`, chain 1)
- LevelStakingPool (`0x7fda203f6f77545548e984133be62693bcd61497`, chain 1)
- LevelUsdPointsFarm (`0x80b73ef4534fe245300017a5197451973559c00f`, chain 1)
- lvlUSD (`0x7c1156e515aa1a2e851674120074968c905aaf37`, chain 1)
- MyOFT (`0x2d175c43c58e57cceb38b9bd204ee73db25c66e8`, chain 8453)
- MyOFT (`0xa8cf99f2572500a9df5cd794c0e24f132448adde`, chain 8453)
- MyOFTAdapter (`0x180fcf9c9f5ecb75de90395d54cd7c69b3902fcd`, chain 1)
- MyOFTAdapter (`0x2f12d09333a6be8cc7c2d3e11a83def02cf0cbfa`, chain 1)
- PauserGuard (`0x9f3328e60cb9418dbde038b54d588dfea2c0b6f9`, chain 1)
- SafeProxy (`0xcea14c3e9afc5822d44ade8d006fcfbab60f7a21`, chain 1)
- SafeProxy (`0xdf95bb71581b224bd42eb19ceaff5e92816e181e`, chain 1)
- StakedlvlUSD (`0x4737d9b4592b40d51e110b94c9c043c6654067ae`, chain 1)
- StrictRolesAuthority (`0xc8425ace617aca1ddcb09cb7784b67403440098a`, chain 1)
- SymbioticReserveManager (`0x21c937d436f2d86859ce60311290a8072368932d`, chain 1)
- TimelockController (`0x0798880e772009ddf6ef062f2ef32c738119d086`, chain 1)
- WrappedRebasingERC20 (`0x78c6b27be6db520d332b1b44323f94bc831f5e33`, chain 1)
- WrappedRebasingERC20 (`0xb723377679b807370ae8615ae3e76f6d1e75a5f2`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 26/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/26 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 26 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 26 of 26 unique; 0 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/26
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 26
- Raw deployments: 27
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3YieldManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388495 | `0x9df5680d8dc866ad154dc07a7dc1c418dc60c96c` | ⚠️ Unaudited |
| BoringVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388493 | `0x834d9c7688ca1c10479931de906bcc44879a0446` | ⚠️ Unaudited |
| EigenlayerReserveManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388489 | `0x7b2c2c905184cef1fabe920d4cbea525acaa6f14` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388505 | `0x343acce723339d5a417411d8ff57fde8886e91dc` | ⚠️ Unaudited |
| KarakReserveManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388485 | `0x329f91fe82c1799c3e089fabe9d3a7efdc2d3151` | ⚠️ Unaudited |
| LevelMinting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388494 | `0x8e7046e27d14d09bdacde9260ff7c8c2be68a41f` | ⚠️ Unaudited |
| LevelMintingV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388503 | `0x9136ab0294986267b71beed86a75eeb3336d09e1` | ⚠️ Unaudited |
| LevelReserveLens | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388506 | `0x29759944834e08ace755dcea71491413f7e2cbad` | ⚠️ Unaudited |
| LevelReserveLensMorphoOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388487 | `0x625bb4f5133ff9f6d43e21f15add35be46387903` | ⚠️ Unaudited |
| LevelStakingPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388491 | `0x7fda203f6f77545548e984133be62693bcd61497` | ⚠️ Unaudited |
| LevelUsdPointsFarm | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388492 | `0x80b73ef4534fe245300017a5197451973559c00f` | ⚠️ Unaudited |
| lvlUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388490 | `0x7c1156e515aa1a2e851674120074968c905aaf37` | ⚠️ Unaudited |
| MyOFT | unknown | project_anchor | own_supporting | 0 | base | unit-388499 | `0x2d175c43c58e57cceb38b9bd204ee73db25c66e8` | ⚠️ Unaudited |
| MyOFT | unknown | project_anchor | own_supporting | 0 | base | unit-388500 | `0xa8cf99f2572500a9df5cd794c0e24f132448adde` | ⚠️ Unaudited |
| MyOFTAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388482 | `0x180fcf9c9f5ecb75de90395d54cd7c69b3902fcd` | ⚠️ Unaudited |
| MyOFTAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388484 | `0x2f12d09333a6be8cc7c2d3e11a83def02cf0cbfa` | ⚠️ Unaudited |
| PauserGuard | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388496 | `0x9f3328e60cb9418dbde038b54d588dfea2c0b6f9` | ⚠️ Unaudited |
| RewardsManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388502 | `0xbd05b8b22fe4ccf093a6206c63cc39f02345e0da` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 2 | ethereum | unit-388501 (2 proxies) | 2 deployments: ethereum `0xcea14c3e9afc5822d44ade8d006fcfbab60f7a21`; ethereum `0xdf95bb71581b224bd42eb19ceaff5e92816e181e` | ⚠️ Unaudited |
| StakedlvlUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388486 | `0x4737d9b4592b40d51e110b94c9c043c6654067ae` | ⚠️ Unaudited |
| StrictRolesAuthority | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388498 | `0xc8425ace617aca1ddcb09cb7784b67403440098a` | ⚠️ Unaudited |
| SymbioticReserveManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388483 | `0x21c937d436f2d86859ce60311290a8072368932d` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388481 | `0x0798880e772009ddf6ef062f2ef32c738119d086` | ⚠️ Unaudited |
| VaultManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-388504 | `0x5f432430c515964c299bb4f277cdab0fcc074e25` | ⚠️ Unaudited |
| WrappedRebasingERC20 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388488 | `0x78c6b27be6db520d332b1b44323f94bc831f5e33` | ⚠️ Unaudited |
| WrappedRebasingERC20 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388497 | `0xb723377679b807370ae8615ae3e76f6d1e75a5f2` | ⚠️ Unaudited |

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

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 26 |

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
