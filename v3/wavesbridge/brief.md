# Agentic Audit Brief: WavesBridge

## Project Overview

- Project: WavesBridge (`wavesbridge`)
- Website: [https://wavesbridge.io/](https://wavesbridge.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:11.975Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: arbitrum, bsc, ethereum
- Contract surface: 6 unique implementations (7 raw deployments)
- DeFi Llama TVL: $1,102,614.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 27 project-authored contract(s) across 2 chain(s); 9 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 2 common project-authored base contract(s) (endpoint, typecast). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 63; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 56 inactive, 0 singleton, 0 uninitialized.
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
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
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
| Bridge | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x3ac7a6...9c3a55`](./contracts/ethereum-1/0x3ac7a6635d99f376c3c05442f7eef62d349c3a55/); bsc [`0x3ac7a6...9c3a55`](./contracts/bsc-56/0x3ac7a6635d99f376c3c05442f7eef62d349c3a55/) | ⚠️ Unaudited |
| Neiro | unknown | ethereum | n/a | [`0x812ba4...a853ee`](./contracts/ethereum-1/0x812ba41e071c7b7fa4ebcfb62df5f45f6fa853ee/) | ⚠️ Unaudited |
| PepeToken | token | ethereum | n/a | [`0x698250...311933`](./contracts/ethereum-1/0x6982508145454ce325ddbe47a25d4ec3d2311933/) | ⚠️ Unaudited |
| PortalV2 | unknown | arbitrum | n/a | [`0xac8f44...0ffcbe`](./contracts/arbitrum-42161/0xac8f44ceca92b2a4b30360e5bd3043850a0ffcbe/) | ⚠️ Unaudited |
| RealGames | unknown | ethereum | n/a | [`0x1a920b...e04882`](./contracts/ethereum-1/0x1a920b0eae5b49c51ebf042a61c3fa58dae04882/) | ⚠️ Unaudited |
| SimpleToken | token | ethereum | n/a | [`0x4d2244...594381`](./contracts/ethereum-1/0x4d224452801aced8b2f0aebe155379bb5d594381/) | ⚠️ Unaudited |

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
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
