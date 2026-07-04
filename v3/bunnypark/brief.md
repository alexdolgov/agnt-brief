# Agentic Audit Brief: BunnyPark

## Project Overview

- Project: BunnyPark (`bunnypark`)
- Website: [https://www.bunnypark.com/](https://www.bunnypark.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:38.353Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: bsc
- Contract surface: 97 unique implementations (102 raw deployments)
- DeFi Llama TVL: $0.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 4 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 106; live-surface contracts included: 102 (4 live, 98 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/3 (33.3%)
- Deployed-live implementations: 3 of 97 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 94
- Unique implementations: 97
- Raw deployments: 102
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 33.3% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 33.3% | 2021-08 |
| SlowMist | Tier 1 | 1 | 33.3% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BPToken | token | bsc | n/a | 2 deployments: bsc [`0x36f956...aa5a7c`](./contracts/bsc-56/0x36f95616619e2d40132fe459fc2e7826fdaa5a7c/); bsc `0xacb8f5...fee9c1` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BunnyParkMasterChefV2 | unknown | bsc | n/a | [`0x614810...b2efe7`](./contracts/bsc-56/0x6148104d39924f071df05eeb2f6aeb53f7b2efe7/) | ⚠️ Unaudited |
| Timelock | governance | bsc | n/a | [`0x88b048...86811c`](./contracts/bsc-56/0x88b048191b071ed1bcd1ff7c7c21a697ec86811c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (94)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x8a9ac1335b04b77dd06323c12e9c460d956a6765) | unknown | bsc | n/a | 2 deployments: bsc `0x2ab35a...22552d`; bsc `0x8a9ac1...6a6765` | ❓ Unverified |
| Proxy (impl: 0xca1b7f1871abad569d067d0b1c7b6654f76cd23a) | unknown | bsc | n/a | 2 deployments: bsc `0x5128df...cf2843`; bsc `0xca1b7f...6cd23a` | ❓ Unverified |
| Proxy (impl: 0xd4e3bea7ce5cc28560a24afc16810538b771d518) | unknown | bsc | n/a | 2 deployments: bsc `0x8a8389...f11896`; bsc `0xd4e3be...71d518` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x003abb...47d050` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01002b...bbfbb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0288dd...176fee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x02b978...a6a8a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03a40a...12a4ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04cb93...385433` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x068b1c...f06318` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06d961...c55f4b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x093dec...dbd1d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09d270...c97d45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c98dc...aff496` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0ee54c...d96d6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1272fa...eadf2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12cf2a...e2c12f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13ddd2...c70cd8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x177dca...fbfff0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1bae0a...570bad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d4b0a...9bef27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d8bc4...f0cac6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x239a0c...2d2c24` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2565d8...11e9e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c4db5...fa0531` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35fa37...190a79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b0969...81250a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x409dba...2ffdf0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41ee62...ebfd61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x465beb...44d266` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x498620...208eac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5135e2...ac6524` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51d836...21547a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52299a...63f762` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x545c67...60bfbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x563936...01f69c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58a67a...92e304` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a1104...d4b185` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5fafaf...fca56f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60a58c...e82c53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64bb9a...b21fb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x651e05...d25dcb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a834f...3b9194` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c126d...c634b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7001f9...f70031` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x713ddd...7e9632` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7450e2...8ec351` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x752238...a070ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x756d4c...eb4f79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7fce94...26596d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82d092...1672f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x851b59...228cf4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x85483b...d7a9c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87055d...f9e6c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8949ca...09565c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8959b3...297980` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a4656...0c8393` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ae187...23977d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b91e1...518cce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c6eb2...05c7ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x913e79...6a374b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94a3ea...632ae6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9743d5...d788f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b120c...8341e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b72a5...df818b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9cf7f5...290aa2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e0ce5...8397c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f1f56...4f959e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1f1a9...def7b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5cda9...977602` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa79009...914baf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa79cf9...5ae551` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaaa5d7...6877d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf59c2...61bc38` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb780d9...cb0b8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0xb83e77...e96f05`; bsc `0xe051c6...7c9916` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc2f4d...c652b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe8155...cc885f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbea9f7...966338` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfdd98...2dcfc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc36871...e65fa8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc39e11...ba5c6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc45803...fd259b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcae367...009bc0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6fb1f...79bf73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7f19a...ebb61b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd99153...c61d3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdbbece...2c1837` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5631f...a92b71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb5b96...9fde5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec0fe6...986a5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeece9b...4f2c8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3a894...30ca71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf50242...0408ed` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SlowMistAuditReportBunnyPark-en.pdf](https://static.bunnypark.com/image/BunnyPark/pdf/SlowMistAuditReportBunnyPark-en.pdf) | SlowMist | Audit | 2021-04 | stale | Direct | contract_name | 1 | n/a |
| [skynet.certik.com/projects/bunnypark](https://skynet.certik.com/projects/bunnypark) | CertiK | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-ERC20-BP-v1.0.pdf](https://static.bunnypark.com/image/BunnyPark/pdf/PeckShield-Audit-Report-ERC20-BP-v1.0.pdf) | PeckShield | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 97 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [12869] skynet.certik.com/projects/bunnypark

Fork inheritance lineage and inherited audits are included when available.
