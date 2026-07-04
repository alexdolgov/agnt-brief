# Agentic Audit Brief: Blueberry

## Project Overview

- Project: Blueberry (`blueberry`)
- Website: [https://app.blueberry.garden](https://app.blueberry.garden)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:35.887Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $257,415.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 6 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on solmate.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: solmate.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BloomPool | unknown | ethereum | n/a | [`0x225a72...3450e3`](./contracts/ethereum-1/0x225a72121f077629a9049b78492a7b645a3450e3/) | ⚠️ Unaudited |
| BlueberryToken | unknown | ethereum | n/a | [`0x904f36...966a02`](./contracts/ethereum-1/0x904f36d74bed2ef2729eaa1c7a5b70dea2966a02/) | ⚠️ Unaudited |
| BPSFeed | unknown | ethereum | n/a | [`0x51fd72...7924ad`](./contracts/ethereum-1/0x51fd7269fd752c62e75e990dbbe73badf97924ad/) | ⚠️ Unaudited |
| GasChecker | unknown | ethereum | n/a | [`0xd49845...dafc9b`](./contracts/ethereum-1/0xd49845d0ca19a26055904d7ce0911a8e88dafc9b/) | ⚠️ Unaudited |
| MerkleWhitelist | unknown | ethereum | n/a | [`0x30b4a5...efd5f4`](./contracts/ethereum-1/0x30b4a5f5f98dbcad5a76db9328da48057cefd5f4/) | ⚠️ Unaudited |
| SwapFacility | unknown | ethereum | n/a | [`0x165401...11acd6`](./contracts/ethereum-1/0x16540107a5b4e17a5d65e071a3dc8f40e011acd6/) | ⚠️ Unaudited |

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
| [Blueberry-security-review_2025-04-30.pdf](https://github.com/Blueberryfi/blueberry-v2-contracts/blob/main/audits/bbhlp/current/Blueberry-security-review_2025-04-30.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Blueberry-security-review_2025-05-16.pdf](https://github.com/Blueberryfi/blueberry-v2-contracts/blob/main/audits/bbhlp/current/Blueberry-security-review_2025-05-16.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19577] Blueberry-security-review_2025-04-30.pdf
- [19578] Blueberry-security-review_2025-05-16.pdf

Fork inheritance lineage and inherited audits are included when available.
