# Agentic Audit Brief: Thruster

## Project Overview

- Project: Thruster (`thruster`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:01.376Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: blast
- Contract surface: 19 unique implementations (22 raw deployments)
- DeFi Llama TVL: $4,558,132.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 22 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 7 common project-authored base contract(s) (thrustergas, peripheryimmutablestate, peripheryvalidation). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 36; live-surface contracts included: 22 (14 live, 8 unknown).
- Excluded by liveness: 14 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/11 (0.0%)
- Deployed-live implementations: 11 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 19
- Raw deployments: 22
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 12 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchDistributor | operational_periphery | blast | n/a | [`0x0561fc...1056ab`](./contracts/blast-81457/0x0561fc4e3c728afc9a0407fa109a2bd2981056ab/) | ⚠️ Unaudited |
| Curve Fee Distribution | unknown | blast | n/a | [`0xaafa3d...13c65c`](./contracts/blast-81457/0xaafa3db42ea9c114c36a2a033e04c8bc0813c65c/) | ⚠️ Unaudited |
| Gauge Controller | operational_periphery | blast | n/a | [`0xd40fb8...db2756`](./contracts/blast-81457/0xd40fb88b94d20d5d60a94e00492214061bdb2756/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | blast | n/a | [`0x434575...e227f9`](./contracts/blast-81457/0x434575eaea081b735c985fa9bf63cd7b87e227f9/) | ⚠️ Unaudited |
| Pump | unknown | blast | n/a | [`0x216a5a...b5630a`](./contracts/blast-81457/0x216a5a1135a9dab49fa9ad865e0f22fe22b5630a/) | ⚠️ Unaudited |
| SwapRouter | adapter | blast | n/a | [`0x337827...0c0555`](./contracts/blast-81457/0x337827814155ecbf24d20231fca4444f530c0555/) | ⚠️ Unaudited |
| ThrusterFactory | registry | blast | n/a | 2 deployments: blast [`0x378368...b93fc4`](./contracts/blast-81457/0x37836821a2c03c171fb1a595767f4a16e2b93fc4/); blast `0xb4a7d9...aafa13` | ⚠️ Unaudited |
| ThrusterPair | unknown | blast | n/a | 2 deployments: blast [`0x12c69b...3fc7df`](./contracts/blast-81457/0x12c69bfa3fb3cba75a1defa6e976b87e233fc7df/); blast `0xd2f1a2...dbf477` | ⚠️ Unaudited |
| ThrusterPoolFactory | registry | blast | n/a | [`0x71b08f...016127`](./contracts/blast-81457/0x71b08f13b3c3af35aadeb3949afeb1ded1016127/) | ⚠️ Unaudited |
| ThrusterRouter | adapter | blast | n/a | 2 deployments: blast [`0x44889b...fb2b4e`](./contracts/blast-81457/0x44889b52b71e60de6ed7de82e2939fcc52fb2b4e/); blast `0x98994a...1650f6` | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | blast | n/a | [`0xc6de1f...2386a4`](./contracts/blast-81457/0xc6de1f30415352941f7ce784a67b2df1552386a4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | blast | n/a | `0x18db7b...428397` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x32cad2...a5b412` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x44a2f2...7e968a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x609fdd...ef3358` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x985924...735e4a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc4af38...72ba44` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd3aad2...22b6d7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe79513...11fd87` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [code4rena.com/reports/2024-02-thruster](https://code4rena.com/reports/2024-02-thruster) | Code4rena | Contest | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [4naly3er-report-thruster-clmm.md](https://github.com/code-423n4/2024-02-thruster/blob/main/4naly3er-report-thruster-clmm.md) | 4naly3er | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [4naly3er-report-thruster-treasure.md](https://github.com/code-423n4/2024-02-thruster/blob/main/4naly3er-report-thruster-treasure.md) | 4naly3er | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [bot-report.md](https://github.com/code-423n4/2024-02-thruster/blob/main/bot-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [report.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/report.md) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [0xDING99YA-Q.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/data/0xDING99YA-Q.md) | 0xDING99YA | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EV_om-Q.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/data/EV_om-Q.md) | EV_om | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [oakcobalt-Analysis.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/data/oakcobalt-Analysis.md) | oakcobalt | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [oakcobalt-G.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/data/oakcobalt-G.md) | oakcobalt | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [oakcobalt-Q.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/data/oakcobalt-Q.md) | oakcobalt | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rvierdiiev-Analysis.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/data/rvierdiiev-Analysis.md) | rvierdiiev | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rvierdiiev-G.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/data/rvierdiiev-G.md) | rvierdiiev | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rvierdiiev-Q.md](https://github.com/code-423n4/2024-02-thruster-findings/blob/main/data/rvierdiiev-Q.md) | rvierdiiev | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21043] code4rena.com/reports/2024-02-thruster
- [21044] 4naly3er-report-thruster-clmm.md
- [21045] 4naly3er-report-thruster-treasure.md
- [21046] bot-report.md
- [21047] report.md
- [21048] 0xDING99YA-Q.md
- [21049] EV_om-Q.md
- [21050] oakcobalt-Analysis.md
- [21051] oakcobalt-G.md
- [21052] oakcobalt-Q.md
- [21053] rvierdiiev-Analysis.md
- [21054] rvierdiiev-G.md
- [21055] rvierdiiev-Q.md

Fork inheritance lineage and inherited audits are included when available.
