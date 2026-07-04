# Agentic Audit Brief: HyperJump

## Project Overview

- Project: HyperJump (`hyperjump`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.803Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: bsc
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $185,953.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 14 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 5 cross-contract reference(s). Dominant framework: openzeppelin.

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
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 3 unknown
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
| BeefyVaultV4 | unknown | bsc | n/a | [`0x02931d...23d913`](./contracts/bsc-56/0x02931dca7f6360fbfafde00be784b8c80123d913/) | ⚠️ Unaudited |
| BurnMachineV2 | unknown | bsc | n/a | [`0xef6a9d...4af52b`](./contracts/bsc-56/0xef6a9d388071cfa59534c625e03df002f64af52b/) | ⚠️ Unaudited |
| HyperAlloy | unknown | bsc | n/a | [`0x5ef599...6065bd`](./contracts/bsc-56/0x5ef5994fa33ff4eb6c82d51ee1dc145c546065bd/) | ⚠️ Unaudited |
| HyperBurn | unknown | bsc | n/a | [`0x03d6bd...ecd54d`](./contracts/bsc-56/0x03d6bd3d48f956d783456695698c407a46ecd54d/) | ⚠️ Unaudited |
| HyperCity | unknown | bsc | n/a | [`0x4f1818...1c6250`](./contracts/bsc-56/0x4f1818ff649498a2441ae1ad29ccf55a8e1c6250/) | ⚠️ Unaudited |
| HyperMechs | unknown | bsc | n/a | [`0x3ae713...b84954`](./contracts/bsc-56/0x3ae713c662b8852d686e718e0762631a4cb84954/) | ⚠️ Unaudited |
| HyperPool | unknown | bsc | n/a | [`0x1b04a6...e82f4b`](./contracts/bsc-56/0x1b04a6cdd6422f44eeea2dbe9bf1127a1ae82f4b/) | ⚠️ Unaudited |
| HyperPoolV2 | unknown | bsc | n/a | [`0x027587...625a85`](./contracts/bsc-56/0x027587c42d8c43b5e8e622aa9981a409ef625a85/) | ⚠️ Unaudited |
| HyperWarp | unknown | bsc | n/a | [`0x624e7c...8ae756`](./contracts/bsc-56/0x624e7c88b6884bffbab31623f4d1f8bc8b8ae756/) | ⚠️ Unaudited |
| LPFeeVault | unknown | bsc | n/a | [`0x0fa942...59fa8d`](./contracts/bsc-56/0x0fa9420a4bfc08dbb6bdd1728b1555a96c59fa8d/) | ⚠️ Unaudited |
| StarVaultLPF | unknown | bsc | n/a | [`0x64776d...e01447`](./contracts/bsc-56/0x64776d5bdbd391716a01c9fff35fc18fbce01447/) | ⚠️ Unaudited |
| StrategyHyperLP | unknown | bsc | n/a | [`0x02db4d...d65cf8`](./contracts/bsc-56/0x02db4d714641f46dd70bec80e4e4c33f8fd65cf8/) | ⚠️ Unaudited |
| StrategyHyperLPV2 | unknown | bsc | n/a | [`0x78609e...0454ab`](./contracts/bsc-56/0x78609e486ec17441e250d949df395a37e00454ab/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0x89861b...d00265`](./contracts/bsc-56/0x89861bf28cedabba52ea4b06869186294cd00265/) | ⚠️ Unaudited |

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
| [Certik HyperJump Audit: <>](https://skynet.certik.com/projects/hyperjump) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Diving in to the Certik Audit of HyperJump](https://hyperjumpfi.medium.com/diving-in-to-the-certik-audit-of-hyperjump-b7ae6bb5d5bb) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [- [Audit]()](https://hyperjump.gitbook.io/hyperguides/security/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20519] Certik HyperJump Audit: <>
- [20520] Diving in to the Certik Audit of HyperJump
- [20521] - [Audit]()

Fork inheritance lineage and inherited audits are included when available.
