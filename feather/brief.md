# Agentic Audit Brief: Feather

## Project Overview

- Project: Feather (`feather`)
- Website: [https://app.feather.zone/](https://app.feather.zone/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-12T14:10:47.211Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-769a
- Chains: celo, klaytn, sei
- Contract surface: 10 unique implementations (15 raw deployments)
- DeFi Llama TVL: $15,858,309.71
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Feather is an isolated-risk lending and borrowing protocol with Feather Vaults powered by Morpho. It curates lending markets and vault risk parameters, including support from an on-chain risk engine for lending parameters and oracle feeds, across supported chains.

### Architecture

All MetaMorpho vaults are deployed by the same deployer cluster and likely share a common SafeProxy for administrative control, with the unnamed contract possibly serving as a registry or factory.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 10
- Raw deployments: 15
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AdaptiveCurveIrm | unknown | sei | [`0x6efa8e...ea56c4`](./contracts/sei-1329/0x6efa8e3aa8279eb2fd46b6083a9e52da72ea56c4/) | ⚠️ Unaudited |
| Bundler3 | unknown | sei | [`0xf94573...5761ad`](./contracts/sei-1329/0xf9457356f18a3349bb317ac144c3bcc62e5761ad/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | sei | 6 deployments: sei [`0x015f10...03e41c`](./contracts/sei-1329/0x015f10a56e97e02437d294815d8e079e1903e41c/); sei `0x50715a...28bfe8`; sei `0x8e1812...0a7223`; sei `0x948fcc...2a4923`; sei `0x94e6a8...5eb79c`; sei `0xbd1836...963dc5` | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | registry | sei | [`0x8dea49...118291`](./contracts/sei-1329/0x8dea49ec5bd5aeac8bcf96b3e187f59354118291/) | ⚠️ Unaudited |
| Morpho | unknown | sei | [`0xc9cdac...a9094c`](./contracts/sei-1329/0xc9cdac20fceaaf616f7eb0bb6cd2c69dcfa9094c/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | sei | [`0x4bd68c...f23f07`](./contracts/sei-1329/0x4bd68c2ff3274207ec07ed281c915758b6f23f07/) | ⚠️ Unaudited |
| PreLiquidationFactory | registry | sei | [`0x65ed61...f6d27b`](./contracts/sei-1329/0x65ed61058ceb4895b7d62437bacea39b04f6d27b/) | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | sei | [`0xd87850...159d6b`](./contracts/sei-1329/0xd878509446be2c601f0f032f501851001b159d6b/) | ⚠️ Unaudited |
| SafeProxy | unknown | celo | [`0x81c76f...2f091f`](./contracts/celo-42220/0x81c76f62f7e05dec75800150ba5a23f62e2f091f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | klaytn | `0x6ba8f7...5a133e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
