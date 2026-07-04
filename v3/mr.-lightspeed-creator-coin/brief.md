# Agentic Audit Brief: Mr. Lightspeed Creator Coin

## Project Overview

- Project: Mr. Lightspeed Creator Coin (`mr.-lightspeed-creator-coin`)
- Website: [https://zora.co/mr_lightspeed](https://zora.co/mr_lightspeed)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:31.884Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: base, zora
- Contract surface: 4 unique implementations (6 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

SoFi. Structurally: 3 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (multiownable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (3 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 3 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 6
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CreatorCoin | unknown | base | n/a | [`0xf0cb96...10f87a`](./contracts/base-8453/0xf0cb96a4011a0a6f73d100c7080bf8020d10f87a/) | ⚠️ Unaudited |
| ZoraFactoryImpl | registry | base | n/a | [`0x777777...45baf3`](./contracts/base-8453/0x777777751622c0d3258f214f9df38e35bf45baf3/) | ⚠️ Unaudited |
| ZoraHookRegistry | registry | base | n/a | [`0x777777...fc18d7`](./contracts/base-8453/0x777777c4c14b133858c3982d41dbf02509fc18d7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | zora | n/a | 3 deployments: zora `0x111111...0afc69`; zora `0x777777...45baf3`; zora `0x777777...fc18d7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Zora Token - Zellic Audit Report.pdf](https://github.com/ourzora/zora-token/blob/main/audit/Zora%20Token%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13535] Zora Token - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
