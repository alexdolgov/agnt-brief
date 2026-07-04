# Agentic Audit Brief: Alchemist

## Project Overview

- Project: Alchemist (`alchemist`)
- Website: [https://www.alchemist.wtf](https://www.alchemist.wtf)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:26.500Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $184,230.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 14 project-authored contract(s) across 1 chain(s); 3 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 14 contract(s).

## Fork Lineage

This project reuses audited code from **DPEX** (`dpex`) in the LiquidriumFactory, Visor subsystem.
2 audits inherited from `dpex`, scoped to that subsystem.

Total inherited audits: 2. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/14 (0.0%)
- Deployed-live implementations: 14 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 2 (0 direct, 2 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Alchemist | unknown | ethereum | n/a | [`0x88acdd...ebb7ab`](./contracts/ethereum-1/0x88acdd2a6425c3faae4bc9650fd7e27e0bebb7ab/) | ⚠️ Unaudited |
| Aludel | unknown | ethereum | n/a | [`0xf0d415...6cb24d`](./contracts/ethereum-1/0xf0d415189949d913264a454f57f4279ad66cb24d/) | ⚠️ Unaudited |
| Crucible | unknown | ethereum | n/a | [`0x18cc48...3a110f`](./contracts/ethereum-1/0x18cc48140cfec90cef0035761d56d2d0ff3a110f/) | ⚠️ Unaudited |
| CrucibleFactory | unknown | ethereum | n/a | [`0x54e039...273d56`](./contracts/ethereum-1/0x54e0395cfb4f39bef66dbcd5bd93cca4e9273d56/) | ⚠️ Unaudited |
| EtherTulip | unknown | ethereum | n/a | [`0xd5fbd8...8ecc57`](./contracts/ethereum-1/0xd5fbd81cef9aba7464c5f17e529444918a8ecc57/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x30642c...92f1ff`](./contracts/ethereum-1/0x30642caaf2a2b3f7ef3e7e891d9132340a92f1ff/) | ⚠️ Unaudited |
| PowerSwitchFactory | unknown | ethereum | n/a | [`0x89d2d9...64fc24`](./contracts/ethereum-1/0x89d2d92eace71977dd0b159062f8ec90ea64fc24/) | ⚠️ Unaudited |
| RewardPoolFactory | unknown | ethereum | n/a | [`0xf016fa...d27ccf`](./contracts/ethereum-1/0xf016fa84d5f3a252409a63b5cb89b555a0d27ccf/) | ⚠️ Unaudited |
| StreamETH | unknown | ethereum | n/a | [`0xe58a21...375c36`](./contracts/ethereum-1/0xe58a2119ac17610718430774db0182bd6b375c36/) | ⚠️ Unaudited |
| StreamV1 | unknown | ethereum | n/a | [`0x353420...8463ca`](./contracts/ethereum-1/0x35342016abce65720024aaaa61b4f7a0dd8463ca/) | ⚠️ Unaudited |
| TokenManager | unknown | ethereum | n/a | [`0x1c428a...6d3562`](./contracts/ethereum-1/0x1c428a75181bc25509af3a5b7faee97b4b6d3562/) | ⚠️ Unaudited |
| TransmuterV1 | unknown | ethereum | n/a | [`0xb772ce...ce456a`](./contracts/ethereum-1/0xb772ce9f14fc7c7db0d4525adb9349fbd7ce456a/) | ⚠️ Unaudited |
| TulipBidding | unknown | ethereum | n/a | [`0xc11dbb...eb6e7c`](./contracts/ethereum-1/0xc11dbb4dbc2913650000e2eab4a3db44d2eb6e7c/) | ⚠️ Unaudited |
| TulipFloorBidding | unknown | ethereum | n/a | [`0x40ab33...959eb6`](./contracts/ethereum-1/0x40ab332dd48f35ebd227708ef381c946c4959eb6/) | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/dpex](https://skynet.certik.com/projects/dpex) | CertiK | Audit | 2023-01 | stale | Inherited from DPEX — forked code, scoped to LiquidriumFactory, Visor | n/a | 0 | n/a |
| [DPEX_Zokyo audit report.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/DPEX/DPEX_Zokyo%20audit%20report.pdf) | unknown | Audit | n/a | unknown | Inherited from DPEX — forked code, scoped to LiquidriumFactory, Visor | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [18805] skynet.certik.com/projects/dpex
- [18806] DPEX_Zokyo audit report.pdf

Fork inheritance lineage and inherited audits are included when available.
