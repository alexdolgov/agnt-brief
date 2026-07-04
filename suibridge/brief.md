# Agentic Audit Brief: SuiBridge

## Project Overview

- Project: SuiBridge (`suibridge`)
- Website: [https://bridge.sui.io](https://bridge.sui.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.969Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: ethereum
- Contract surface: 5 unique implementations (9 raw deployments)
- DeFi Llama TVL: $30,994,461.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 3 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (committeeupgradeable, messageverifier). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/5 (100.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/5
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 9
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 5 | 100.0% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeCommittee | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa470ca...23b63b`](./contracts/ethereum-1/0xa470ca92126bd6b6f6e98f3010c7e384f223b63b/); ethereum `0xee2d52...5b416f` | ✅ Audited |
| BridgeConfig | unknown | ethereum | n/a | 2 deployments: ethereum [`0x72d34f...6a1540`](./contracts/ethereum-1/0x72d34fe82c71bf8120647518e5128e53106a1540/); ethereum `0xb083c4...fec50c` | ✅ Audited |
| BridgeLimiter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x12183b...736767`](./contracts/ethereum-1/0x12183b0796bbc4678999100e8c6c5715d5736767/); ethereum `0xd754e5...887340` | ✅ Audited |
| BridgeVault | operational_periphery | ethereum | n/a | [`0x312e67...f80b53`](./contracts/ethereum-1/0x312e67b47a2a29ae200184949093d92369f80b53/) | ✅ Audited |
| SuiBridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa60f29...bb036c`](./contracts/ethereum-1/0xa60f29201aeae592d9ab95747ae1cf425dbb036c/); ethereum `0xda3bd1...8a92fd` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [Sui_bridge_v1_OtterSec.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/sui-foundation/security-audits/main/docs/Sui_bridge_v1_OtterSec.pdf) | OtterSec | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Sui_Bridge_v1_Zellic.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/sui-foundation/security-audits/main/docs/Sui_Bridge_v1_Zellic.pdf) | Zellic | Audit | 2024-04 | stale | Direct | contract_name | 9 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=18

Zero-match audit list:

- [21279] Sui_bridge_v1_OtterSec.pdf

Fork inheritance lineage and inherited audits are included when available.
