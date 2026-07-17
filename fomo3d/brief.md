# Agentic Audit Brief: Fomo3D

## Project Overview

- Project: Fomo3D (`fomo3d`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.438Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum
- Contract surface: 17 unique implementations (17 raw deployments)
- DeFi Llama TVL: $1,869,722.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 9 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (f3devents, modularlong). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 17 (4 live, 13 unknown).
- Excluded by liveness: 8 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 4 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 17
- Raw deployments: 17
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Divies | unknown | ethereum | n/a | [`0xc0c001140319c5f114f8467295b1f22f86929ad0`](./contracts/ethereum-1/0xc0c001140319c5f114f8467295b1f22f86929ad0/) | ⚠️ Unaudited |
| FoMo3Dlong | unknown | ethereum | n/a | [`0xa62142888aba8370742be823c1782d17a0389da1`](./contracts/ethereum-1/0xa62142888aba8370742be823c1782d17a0389da1/) | ⚠️ Unaudited |
| FoMo3DSoon | unknown | ethereum | n/a | [`0x4e8ecf79ade5e2c49b9e30d795517a81e0bf00b8`](./contracts/ethereum-1/0x4e8ecf79ade5e2c49b9e30d795517a81e0bf00b8/) | ⚠️ Unaudited |
| Hourglass | unknown | ethereum | n/a | [`0xb3775fb83f7d12a36e0475abdd1fca35c091efbe`](./contracts/ethereum-1/0xb3775fb83f7d12a36e0475abdd1fca35c091efbe/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1fb5464720ac6610da724fd9b65a08837bea51d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27afcbe78ba41543c8e6ede1ec0560cd128adccb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32967d6c142c2f38ab39235994e2ddf11c37d590` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c7b8591c50f4ad308d07d6294f2945e074420f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e58d5f454f08725c6387c3c4214ffa59f52d8ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x902d1a2a0800570b458119acaaeb3bf005d1aef4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf57726f133e0e57896a52d3baf377d2bf91f5b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc25d0372bdb252933b8075e49cac77209769570b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6ffc9cc528d9646f8357293a98ff8796517716f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd14f5d11fde8f2baf394d3334df13ee6aa58c708` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7da96693d54d6892d97dfa4751acd3c6493152d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf820cf2c076397532a0e29c13725c086a1898277` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9ba0955b0509ac6138908ccc50d5bd296e48d7d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc0c001140319c5f114f8467295b1f22f86929ad0`](./contracts/ethereum-1/0xc0c001140319c5f114f8467295b1f22f86929ad0/) | Divies | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa62142888aba8370742be823c1782d17a0389da1`](./contracts/ethereum-1/0xa62142888aba8370742be823c1782d17a0389da1/) | FoMo3Dlong | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e8ecf79ade5e2c49b9e30d795517a81e0bf00b8`](./contracts/ethereum-1/0x4e8ecf79ade5e2c49b9e30d795517a81e0bf00b8/) | FoMo3DSoon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3775fb83f7d12a36e0475abdd1fca35c091efbe`](./contracts/ethereum-1/0xb3775fb83f7d12a36e0475abdd1fca35c091efbe/) | Hourglass | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
