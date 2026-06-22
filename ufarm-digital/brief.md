# Agentic Audit Brief: UFarm Digital

⚠️ Lifecycle status: DECLINING - TVL dropped 51.9% over 90 days

## Project Overview

- Project: UFarm Digital (`ufarm-digital`)
- Website: [https://ufarm.digital](https://ufarm.digital)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T14:11:32.318Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, ethereum
- Contract surface: 20 unique implementations (20 raw deployments)
- DeFi Llama TVL: $507,656.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

UFarm Digital is an onchain capital allocator that manages liquidity positions and yield strategies across Ethereum and Arbitrum One. It uses upgradeable proxy contracts to deploy and manage assets, interacting with Uniswap V3 for liquidity provision.

### Architecture

The two ERC1967Proxy contracts serve as upgradeable vaults, delegating to their respective implementations, while the NonfungiblePositionManager is used to manage Uniswap V3 liquidity positions, indicating a shared dependency on Uniswap for yield generation.

## Contract Surface Quality

- Indexed contracts: 86; live-surface contracts included: 20 (20 live, 0 unknown).
- Excluded by liveness: 42 inactive, 24 singleton, 0 uninitialized.
- Deployment units: 4/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/2 (50.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 20
- Raw deployments: 20
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Staleness: 0 fresh, 1 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Decurity | Tier 2 | 1 | 50.0% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UFarmCore | unknown | arbitrum | n/a | [`0xc66660...4376fb`](./contracts/arbitrum-42161/0xc666606a0b45b5794b28221694f0b5a0124376fb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NonfungiblePositionManager | governance | arbitrum | unit-42731 | [`0xc36442...11fe88`](./contracts/arbitrum-42161/0xc36442b4a4522e871399cd717abdd847ab11fe88/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x22e4ed...d0da97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27d5de...333f11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a1efb...334ad7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6738e8...c33e53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x989610...c6acee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb5c39...4fc084` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc18171...178a3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd8b64...26e384` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec07c3...954a82` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5bb9f9...2f52b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6db9d1...42dad1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x70555f...359a6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x785a40...db2c8f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x825b84...07f404` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x82898a...ff4ec0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xca9bbf...f12804` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdfcb4b...fcc1ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec0b81...93cf23` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ufarm-audit-report-2023-1.1.pdf](https://github.com/Decurity/audits/blob/master/UFarm/ufarm-audit-report-2023-1.1.pdf) | Decurity | Audit | 2024-02 | stale | Direct | contract_name | 1 | high |
| [Audit report 2025](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/ufarm-may-25(Final).pdf) | Hexens | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [14048] Audit report 2025

Fork inheritance lineage and inherited audits are included when available.
