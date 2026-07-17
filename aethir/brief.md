# Agentic Audit Brief: Aethir

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Aethir (`aethir`)
- Website: [https://aethir.com/](https://aethir.com/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-07-04T14:52:58.067Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: ethereum
- Contract surface: 6 unique implementations (7 raw deployments)
- DeFi Llama TVL: $6,461,829.85
- On-chain TVL (included contracts): $173,808,593.83
- TVL by chain: Ethereum $173,808,593.83

## Project Description

Developer Tools. Structurally: 7 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
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
- Raw deployments: 7
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $173,808,593.83
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $173,808,593.83 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AethirToken | token | ethereum | n/a | [`0xbe0ed4138121ecfc5c0e56b40517da27e6c5226b`](./contracts/ethereum-1/0xbe0ed4138121ecfc5c0e56b40517da27e6c5226b/) | ⚠️ Unaudited |
| AethirWrapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ecb43e02d6573119eaf0e6509a4725b8633a13c`](./contracts/ethereum-1/0x1ecb43e02d6573119eaf0e6509a4725b8633a13c/); ethereum `0x3f69bb14860f7f3348ac8a5f0d445322143f7fee` | ⚠️ Unaudited |
| StAethir | unknown | ethereum | n/a | [`0xc96aa65f31e41b4ca6924b86d93e25686019e59c`](./contracts/ethereum-1/0xc96aa65f31e41b4ca6924b86d93e25686019e59c/) | ⚠️ Unaudited |
| VeAethir | unknown | ethereum | n/a | [`0x1b49f587feca530a7bf7cf2bd3fbda780e1b7490`](./contracts/ethereum-1/0x1b49f587feca530a7bf7cf2bd3fbda780e1b7490/) | ⚠️ Unaudited |
| VestingWallet | operational_periphery | ethereum | n/a | [`0xf9d9f4ae37d09d50a279058c008a4fa98b6336b6`](./contracts/ethereum-1/0xf9d9f4ae37d09d50a279058c008a4fa98b6336b6/) | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | ethereum | n/a | [`0x6f5c81fe067ae25afd52218f140a73d51f0c6b31`](./contracts/ethereum-1/0x6f5c81fe067ae25afd52218f140a73d51f0c6b31/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/aethir](https://skynet.certik.com/projects/aethir) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xbe0ed4138121ecfc5c0e56b40517da27e6c5226b`](./contracts/ethereum-1/0xbe0ed4138121ecfc5c0e56b40517da27e6c5226b/) | AethirToken | token | $173,808,593.83 | Verified native implementation with $173,808,593.83 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ecb43e02d6573119eaf0e6509a4725b8633a13c`](./contracts/ethereum-1/0x1ecb43e02d6573119eaf0e6509a4725b8633a13c/) | AethirWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc96aa65f31e41b4ca6924b86d93e25686019e59c`](./contracts/ethereum-1/0xc96aa65f31e41b4ca6924b86d93e25686019e59c/) | StAethir | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b49f587feca530a7bf7cf2bd3fbda780e1b7490`](./contracts/ethereum-1/0x1b49f587feca530a7bf7cf2bd3fbda780e1b7490/) | VeAethir | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf9d9f4ae37d09d50a279058c008a4fa98b6336b6`](./contracts/ethereum-1/0xf9d9f4ae37d09d50a279058c008a4fa98b6336b6/) | VestingWallet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f5c81fe067ae25afd52218f140a73d51f0c6b31`](./contracts/ethereum-1/0x6f5c81fe067ae25afd52218f140a73d51f0c6b31/) | Voting Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20638] skynet.certik.com/projects/aethir

Fork inheritance lineage and inherited audits are included when available.
