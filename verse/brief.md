# Agentic Audit Brief: Verse

## Project Overview

- Project: Verse (`verse`)
- Website: [https://verse.bitcoin.com](https://verse.bitcoin.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.905Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 53 unique implementations (64 raw deployments)
- DeFi Llama TVL: $424,910.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 55 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens, 4 ERC721 NFTs, 4 Chainlink feeds; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 10 common project-authored base contract(s) (poolbase, poolsharetoken, liquidtransfer). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 145; live-surface contracts included: 64 (15 live, 49 unknown).
- Excluded by liveness: 81 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/4 (100.0%)
- Deployed-live implementations: 4 of 53 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/5
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 53
- Raw deployments: 64
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 40.0% | 2022-02 |
| CertiK | Tier 2 | 1 | 20.0% | 2023-02 |
| Quantstamp | Tier 2 | 1 | 20.0% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SimpleFarm | unknown | ethereum | n/a | 12 deployments: ethereum [`0x17bdce...0605ef`](./contracts/ethereum-1/0x17bdceec80d3506e384db09e5d5696edf70605ef/); ethereum `0x29e9c9...3447f6`; ethereum `0x42535f...961dc7`; ethereum `0x4ba48d...6a125d`; ethereum `0x4e1f12...d4910c`; ethereum `0x4efff2...da6b10`; ethereum `0x8295e4...f88b01`; ethereum `0xc5af93...219aa8`; ethereum `0xcb2e16...d71a0e`; ethereum `0xd92055...023e07`; ethereum `0xdd5a9e...9598eb`; ethereum `0xded0c2...04cab2` | ✅ Audited |
| SwapsFactory | unknown | ethereum | n/a | [`0xee3e9e...1a06e2`](./contracts/ethereum-1/0xee3e9e46e34a27dc755a63e2849c9913ee1a06e2/) | ✅ Audited |
| SwapsRouter | unknown | ethereum | n/a | [`0xb4b0ea...718671`](./contracts/ethereum-1/0xb4b0ea46fe0e9e8eab4afb765b527739f2718671/) | ✅ Audited |
| VerseToken | unknown | ethereum | n/a | [`0x249ca8...350a18`](./contracts/ethereum-1/0x249ca82617ec3dfb2589c4c17ab7ec9765350a18/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultWrapperSky | unknown | ethereum | n/a | [`0x4a9680...3a60fb`](./contracts/ethereum-1/0x4a9680835591125ec533574610290003043a60fb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x02c4f0...4c650b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fb7c3...3c1f6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15729a...e390c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x178eff...287f55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19c97f...9b0138` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a3887...791a70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e940a...ef690e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2437af...c6f77d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dedcd...ace529` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30621f...2b0408` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3489a8...37929f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34ae0b...b56241` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bd4a5...89df9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44cd20...ebff17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x463796...a35fde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47a348...f483c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a1533...ec075d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f491d...7c8543` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51d2a2...2e9380` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5214a7...999042` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x563ecd...3b9e68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59bdda...37381e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6071fc...410f26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6139cf...fe6c84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62b551...22f0ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x638c27...9d07ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x696563...bfa9a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69a906...25fc92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b0f51...74dd60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73a111...3a3c0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b4baf...5e1501` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bf50a...2f026c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b872e...442dfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c6d04...255e39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x950672...31497f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa03594...3d5b3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa07b92...8ad501` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa40328...f5d367` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5ba62...ddf08a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaba585...2576cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad6492...9c0598` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb74480...643ed8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb67be...c516bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde39dd...20f14e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf196f3...6a8377` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd28f8...d61da1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe441b...d3ac82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfed1a3...e18ffc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Bitcoin.com_final-audit-report.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/bitcoin.com/Bitcoin.com_final-audit-report.pdf) | unknown | Audit | 2022-02 | stale | Direct | contract_name | 2 | high |
| [skynet.certik.com/projects/bitcoin-com](https://skynet.certik.com/projects/bitcoin-com) | CertiK | Audit | 2023-02 | stale | Direct | contract_name | 12 | medium |
| [verse-security-audit.pdf](https://www.getverse.com/verse-security-audit.pdf) | Quantstamp | Audit | 2022-05 | stale | Direct | contract_name | 1 | high |
| [single-token-lp-audit.pdf](https://verse.bitcoin.com/single-token-lp-audit.pdf) | Chainsulting | Audit | 2023-06 | stale | Direct | contract_name | 0 | n/a |
| [dynamic-rewards-farming-audit.pdf](https://verse.bitcoin.com/dynamic-rewards-farming-audit.pdf) | Softstack | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4a9680...3a60fb`](./contracts/ethereum-1/0x4a9680835591125ec533574610290003043a60fb/) | VaultWrapperSky | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: extraction_exact=16

Zero-match audit list:

- [14110] single-token-lp-audit.pdf
- [14111] dynamic-rewards-farming-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
