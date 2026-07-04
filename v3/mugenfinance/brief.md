# Agentic Audit Brief: MugenFinance

## Project Overview

- Project: MugenFinance (`mugenfinance`)
- Website: [https://www.mugenfinance.com](https://www.mugenfinance.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:31.901Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum
- Contract surface: 13 unique implementations (17 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 11 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 2 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 17 (14 live, 3 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 10 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 13
- Raw deployments: 17
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbitrumSwaps | unknown | arbitrum | n/a | [`0x4f1bc1...796479`](./contracts/arbitrum-42161/0x4f1bc106664c174aad15df9beb5c168511796479/) | ⚠️ Unaudited |
| CapStrategy | core_logic | arbitrum | n/a | 4 deployments: arbitrum [`0x029782...6b702e`](./contracts/arbitrum-42161/0x029782b403811e46a5a45983bbc59bbc766b702e/); arbitrum `0x21df7f...768a8e`; arbitrum `0x93db14...4e3cb8`; arbitrum `0xe4c071...258f1d` | ⚠️ Unaudited |
| FeeCollector | unknown | arbitrum | n/a | [`0xb09f29...14ac8a`](./contracts/arbitrum-42161/0xb09f29e2ba229fdb2bb68dd0e2049a76c014ac8a/) | ⚠️ Unaudited |
| Mugen | unknown | arbitrum | n/a | [`0xfc77b8...22856e`](./contracts/arbitrum-42161/0xfc77b86f3ade71793e1eec1e7944db074922856e/) | ⚠️ Unaudited |
| MugenAutoCompounder | adapter | arbitrum | n/a | [`0x44e4c3...5c4417`](./contracts/arbitrum-42161/0x44e4c3668552033419520be229cd9df0c35c4417/) | ⚠️ Unaudited |
| MugenRedemption | unknown | arbitrum | n/a | [`0xfae58b...b35860`](./contracts/arbitrum-42161/0xfae58b1f4d70619b0810239ae5382af2dbb35860/) | ⚠️ Unaudited |
| StrategyHub | core_logic | arbitrum | n/a | [`0x002361...22296e`](./contracts/arbitrum-42161/0x00236173844ac7f7091d69d6cbf7e0430222296e/) | ⚠️ Unaudited |
| Treasury | operational_periphery | arbitrum | n/a | [`0xf7be84...86f3dd`](./contracts/arbitrum-42161/0xf7be8476ae27d27ebc236e33020150b23a86f3dd/) | ⚠️ Unaudited |
| xMugen | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x25b9f8...3d15ea`](./contracts/arbitrum-42161/0x25b9f82d1f1549f97b86bd0873738e30f23d15ea/); arbitrum `0xc9bec4...14c58d` | ⚠️ Unaudited |
| YieldDistributor | operational_periphery | arbitrum | n/a | [`0xfc22da...3fad8b`](./contracts/arbitrum-42161/0xfc22dafae9ef61535019df250e1f60a21c3fad8b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x510e2e...122100` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5a45fa...47ff65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa58386...ad6322` | ❓ Unverified |

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
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
