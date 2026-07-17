# Agentic Audit Brief: Molecular

## Project Overview

- Project: Molecular (`molecular`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:33.271Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: arbitrum
- Contract surface: 26 unique implementations (26 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Leveraged Farming. Structurally: 1 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 52; live-surface contracts included: 26 (1 live, 25 unknown).
- Excluded by liveness: 26 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/1 (100.0%)
- Deployed-live implementations: 1 of 26 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 26
- Raw deployments: 26
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 100.0% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MolecularToken | token | arbitrum | n/a | [`0x19d0899464dea847ad0a5b7d42f3ce0592542f9a`](./contracts/arbitrum-42161/0x19d0899464dea847ad0a5b7d42f3ce0592542f9a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x00bcb665b817cdffa6c9f437bad6e5d4db8464d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0672c6d19b3c6d5928ca050ff1c3336d55c7f0f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0c89a07146d6fa9c1c0d39a1ad210ffeb9a8ccca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1687ca2c3b2eda2720c9ecd6ed02e5ee3ef76b6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29e2d016e30954f5abf482e3ee70b89ee8e84667` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x381755eeaabaaa280bd37682072d2280cf4673f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x416c7169b5fac309edf00202a09746322b7e0737` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4bc29e36f5e5d2ffcda0edb7454b5edc88a99720` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x56436fc001c4a907e0161c79b1f3ac793d6e872e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x577454d037ca9f8d9a750bbe53a49c9d7f906136` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6bf04456b375170b104dfd01019dba461c4213c5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6fb727ef13fcc48ed13b8dd3366efd747d5cf78c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x852bc05399ba2a7b89020750c01866b7bce3cab5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x883a626f8ae10b0def926394b4af18dc1875ecb5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8cc7292ceaa938519ad2542389e929648cf8dbaa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8d49f730f99cee3c3bbacfa4bf7b0c61356f4128` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x96cf1e25d6341b2832ebd9b8f38f6c35a3624b91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b6e63f81fcfffbcd3d1eff03adf12cff3157390` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9ef04fd4883aafed5edecf5efe20efc935cd46a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac6246fa01a2a72a0eb262fb0083c0515fa5f20c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb204bab97ec529b0a79144989a54ff28846698b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb863829a923c68446f1bc93ecbd28a86437b619b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbedcee9468e28c463b81f14805fa5c31bde0fa9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed177a2934e921196ce2fde586ac86c4935f32b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb7c672e2b43ba5edf3c8bb612b5aa055dee31e1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Molecular-Protocol_202509161103.pdf](https://beosin.com/audits/Molecular-Protocol_202509161103.pdf) | unknown | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
