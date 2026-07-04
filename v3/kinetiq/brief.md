# Agentic Audit Brief: Kinetiq

## Project Overview

- Project: Kinetiq (`kinetiq`)
- Website: [https://kinetiq.xyz/](https://kinetiq.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:19.928Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: hyperliquid
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $1,075,501,422.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 5 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 10 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeaconProxy | unknown | hyperliquid | n/a | [`0x079bd4...482f4b`](./contracts/hyperliquid-999/0x079bd41cb6e110446a00280403fbee133a482f4b/) | ⚠️ Unaudited |
| BeaconProxy | unknown | hyperliquid | n/a | [`0x09b4cd...113895`](./contracts/hyperliquid-999/0x09b4cda849037d1717e91d201ee416bf1c113895/) | ⚠️ Unaudited |
| DefaultOracle | unknown | hyperliquid | n/a | [`0x055462...3747a3`](./contracts/hyperliquid-999/0x055462ff8c7a37d60c5344fca6bb7b80db3747a3/) | ⚠️ Unaudited |
| RewardShareTracker | unknown | hyperliquid | n/a | [`0x01ad7c...0080d5`](./contracts/hyperliquid-999/0x01ad7c427459f48e76b3dc48e08aa59c990080d5/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | [`0x000000...42c2d6`](./contracts/hyperliquid-999/0x000000000000780555bd0bca3791f89f9542c2d6/) | ⚠️ Unaudited |

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
| [DL audit link](https://drive.google.com/drive/folders/1T3ZGl6HNmt5LaKwdCmrA9HS7MsXheOys) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DL audit link](https://kinetiq-cms.vercel.app/api/media/file/launch-june-2026-cantina.pdf) | Spearbit | Audit | 2026-06 | fresh | Direct | n/a | 0 | n/a |
| [DL audit link](https://kinetiq-cms.vercel.app/api/media/file/launch-may-2026-zerocool.pdf) | unknown | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [Bug bounty](https://cantina.xyz/bounties/a98129d7-dd15-4c16-b2cb-d8cc42f87de4) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [skntq-january-2026-spearbit.pdf](https://drive.google.com/file/d/1LSZWM2sheoh1qeBqjkwkkl_1wO8gtI6H/view) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [kmhype-november-2025-spearbit.pdf](https://drive.google.com/file/d/1uffwIAjfRDdCLCTpN66h1zK_Qji41Fr-/view) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [kmhype-november-2025-zenith.pdf](https://drive.google.com/file/d/1pMti8B4qM15-v61AyGe-hEdi8zcXR6at/view) | Zenith | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [khype-lst-instant-unstake-nov-2025-pashov.pdf](https://drive.google.com/file/d/1ada6eazjmtatQIt38_QrZ3Nks7pYTly1/view) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [khype-lst-june-2025-spearbit.pdf](https://drive.google.com/file/d/121JxhR9TpWGEoa1-GGm9fNbl3ByjOOhe/view) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [khype-lst-april-2025-code4rena.pdf](https://drive.google.com/file/d/1C5F5k-xo7OtDpMnkHikcCpf3YoRcpFcW/view) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [khype-lst-march-2025-zenith.pdf](https://drive.google.com/file/d/1S5Xm1rinC7kOt826eXhwrVbX7WtdwsWr/view) | Zenith | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [khype-lst-march-2025-pashov.pdf](https://drive.google.com/file/d/1k9jA3JJ_e85AtI-EJRBdo-cq4JOvBok3/view) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20617] DL audit link
- [20618] DL audit link
- [20619] DL audit link
- [20620] Bug bounty
- [20621] skntq-january-2026-spearbit.pdf
- [20622] kmhype-november-2025-spearbit.pdf
- [20623] kmhype-november-2025-zenith.pdf
- [20624] khype-lst-instant-unstake-nov-2025-pashov.pdf
- [20625] khype-lst-june-2025-spearbit.pdf
- [20626] khype-lst-april-2025-code4rena.pdf
- [20627] khype-lst-march-2025-zenith.pdf
- [20628] khype-lst-march-2025-pashov.pdf

Fork inheritance lineage and inherited audits are included when available.
