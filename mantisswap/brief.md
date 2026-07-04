# Agentic Audit Brief: MantisSwap

## Project Overview

- Project: MantisSwap (`mantisswap`)
- Website: [https://mantissa.finance](https://mantissa.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.389Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: mode, polygon, polygon-zkevm
- Contract surface: 47 unique implementations (76 raw deployments)
- DeFi Llama TVL: $182,787.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 12 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 3 common project-authored base contract(s) (ownable, pausable, reentrancyguard). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 79; live-surface contracts included: 76 (36 live, 40 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/15 (53.3%)
- Deployed-live implementations: 18 of 47 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/18
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 47
- Raw deployments: 76
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 8 | 44.4% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LP | unknown | polygon | n/a | 4 deployments: polygon [`0x4b3bfc...23e64b`](./contracts/polygon-137/0x4b3bfcaa4f8bd4a276b81c110640da634723e64b/); polygon `0x977e41...01906c`; polygon `0xe03aec...13b889`; polygon `0xe8a1ea...ce1820` | ✅ Audited |
| LP | unknown | mode | n/a | [`0xd4cd95...400ca3`](./contracts/mode-34443/0xd4cd95ee7fe89d0cd1982a7336634ec5cb400ca3/) | ✅ Audited |
| MasterMantis | unknown | polygon | n/a | [`0x2c1ded...8b6d1e`](./contracts/polygon-137/0x2c1ded27522e317515e5b5e856de7293938b6d1e/) | ✅ Audited |
| MasterMantis | unknown | mode | n/a | [`0x3dcf3b...1995fc`](./contracts/mode-34443/0x3dcf3bcdeab8ae7487d6fe7c7cb3af95d21995fc/) | ✅ Audited |
| MNTS | unknown | polygon | n/a | [`0x6e1bf9...9a0086`](./contracts/polygon-137/0x6e1bf91427e2b63c1dce474a64e8b8e75c9a0086/) | ✅ Audited |
| Pool | unknown | polygon | n/a | 2 deployments: polygon [`0x62ba5e...7166ad`](./contracts/polygon-137/0x62ba5e1ab1fa304687f132f67e35bfc5247166ad/); polygon `0xbaef01...ab8f66` | ✅ Audited |
| Pool | unknown | mode | n/a | 2 deployments: polygon `0x69928a...0c6906`; mode [`0x20a588...dec13e`](./contracts/mode-34443/0x20a5889c03d28c2f5efe569157ae291090dec13e/) | ✅ Audited |
| PoolVolatile | unknown | mode | n/a | [`0xe03aec...13b889`](./contracts/mode-34443/0xe03aec0d08b3158350a9ab99f6cea7ba9513b889/) | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafeL2 | governance | polygon | n/a | [`0x56dc54...b95e71`](./contracts/polygon-137/0x56dc54ddc30bdc43db84b8e59087097805b95e71/) | ⚠️ Unaudited |
| MNT | unknown | polygon | n/a | [`0xe92175...eeae04`](./contracts/polygon-137/0xe92175ea10fc1f59f633c77153e81780a6eeae04/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | 2 deployments: polygon [`0x3dcf3b...1995fc`](./contracts/polygon-137/0x3dcf3bcdeab8ae7487d6fe7c7cb3af95d21995fc/); mode `0x6962f8...c29139` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 3 deployments: polygon [`0x10a7d5...0401c5`](./contracts/polygon-137/0x10a7d5276669cb5b286cdc35e9399f01ab0401c5/); polygon `0x64522c...9b734f`; polygon `0xbb9190...a3ddd4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 4 deployments: polygon [`0x12d41b...d98215`](./contracts/polygon-137/0x12d41b6df938c739f00c392575e3fd9292d98215/); polygon `0x153e43...9c9cb9`; polygon `0x3b92b5...7073f4`; polygon `0x9b7bce...aefe4b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x20a588...dec13e`](./contracts/polygon-137/0x20a5889c03d28c2f5efe569157ae291090dec13e/); polygon `0x714023...dbc896` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x2adedc...0c1f80`](./contracts/polygon-137/0x2adedcfd726e03032ddef1241d5c8efad40c1f80/); polygon `0xfcd302...523130` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x8997e7...d7b448`](./contracts/polygon-137/0x8997e7669da8451e356472cf3ef33dfbc9d7b448/); polygon `0xda4f88...82ba41` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x967f59...11def8`](./contracts/polygon-137/0x967f594f73930a02817daf3112ccc7f2c611def8/); polygon `0xd4cd95...400ca3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mode | n/a | 10 deployments: mode [`0x12d41b...d98215`](./contracts/mode-34443/0x12d41b6df938c739f00c392575e3fd9292d98215/); mode `0x153e43...9c9cb9`; mode `0x4af97f...db3e77`; mode `0x4b3bfc...23e64b`; mode `0x7bcad0...d73ccb`; mode `0x8997e7...d7b448`; mode `0x967f59...11def8`; mode `0xa56b52...caafb4`; mode `0xda4f88...82ba41`; mode `0xe8a1ea...ce1820` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x0737ac...d4ceec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x16f8c8...effd76` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x187b34...fe3806` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2b4d15...336779` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2b9914...3037c0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2d2bca...198fe3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x472469...c4d512` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4af97f...db3e77` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4f3fd2...0c4501` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x586f03...3cbe4b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6962f8...c29139` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8b2399...fcc5af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8c2ca2...de15fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc18949...561b23` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc9c7ea...b15a9c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcdbd54...5e3261` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd5ad5d...cebe73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe4bb53...39f7fb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe8a8ea...813a3a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf45bf7...dfd33d` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | 6 deployments: polygon-zkevm `0x12d41b...d98215`; polygon-zkevm `0x375488...e736bf`; polygon-zkevm `0x3b92b5...7073f4`; polygon-zkevm `0x4af97f...db3e77`; polygon-zkevm `0x9b7bce...aefe4b`; polygon-zkevm `0xfe825c...3947a8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x16f8c8...effd76` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2b4d15...336779` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2c1ded...8b6d1e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x62ba5e...7166ad` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x714023...dbc896` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x977e41...01906c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xbb9190...a3ddd4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf45bf7...dfd33d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-MantisSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-MantisSwap-v1.0.pdf) | PeckShield | Audit | 2022-11 | stale | Direct | contract_name | 2 | high |
| [omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd](https://omniscia.io/reports/mantissa-finance-core-system-64bf82869d175e0014dae1cd) | PeckShield | Audit | 2023-08 | stale | Direct | contract_name | 13 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xe92175...eeae04`](./contracts/polygon-137/0xe92175ea10fc1f59f633c77153e81780a6eeae04/) | MNT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=15

Fork inheritance lineage and inherited audits are included when available.
