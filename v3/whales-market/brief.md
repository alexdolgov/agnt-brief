# Agentic Audit Brief: Whales Market

## Project Overview

- Project: Whales Market (`whales-market`)
- Website: [https://whales.market/](https://whales.market/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:12.009Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, base, bsc, ethereum, mode
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $654,440.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

OTC Marketplace. Structurally: 7 project-authored contract(s) across 5 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (11 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/11 (0.0%)
- Deployed-live implementations: 11 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | ethereum | n/a | [`0x193aaa...2aecbf`](./contracts/ethereum-1/0x193aaa7e9f358b7e52c978bf560f28f2b62aecbf/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x1311d5...cf9d4d`](./contracts/bsc-56/0x1311d574598b516b3b050e77ab9e424867cf9d4d/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | [`0x47d7c1...fdc9bf`](./contracts/arbitrum-42161/0x47d7c164834ccae520be78f9cb032d6d03fdc9bf/) | ⚠️ Unaudited |
| MappingLog | unknown | base | n/a | [`0xf9a286...78810a`](./contracts/base-8453/0xf9a286c70830f2b35b1bc530e62769393c78810a/) | ⚠️ Unaudited |
| PreMarket | unknown | ethereum | n/a | [`0x0e57ff...2ac3da`](./contracts/ethereum-1/0x0e57fff83ae53b22c5b656745168b21a9d2ac3da/) | ⚠️ Unaudited |
| PreMarketMigration | unknown | base | n/a | [`0x31847b...136290`](./contracts/base-8453/0x31847b4f5cce05fa29038e914f5fdd952f136290/) | ⚠️ Unaudited |
| PreMarketMode | unknown | mode | n/a | [`0xed66db...09e79c`](./contracts/mode-34443/0xed66dbd66ecbd215827eea1eea896ccc2e09e79c/) | ⚠️ Unaudited |
| PremarketOFTFactory | unknown | bsc | n/a | [`0x20c453...968940`](./contracts/bsc-56/0x20c453e643badb04072ca2a94eef965a58968940/) | ⚠️ Unaudited |
| PreMarketV2 | unknown | base | n/a | [`0x0e57ff...2ac3da`](./contracts/base-8453/0x0e57fff83ae53b22c5b656745168b21a9d2ac3da/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x1ecdb3...0c6603`](./contracts/bsc-56/0x1ecdb32e59e948c010a189a0798c674a2d0c6603/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x12617f...28d43b`](./contracts/ethereum-1/0x12617f31a29dccff3790e4767239a7b00928d43b/) | ⚠️ Unaudited |
| VCDeal | unknown | ethereum | n/a | [`0x0b416a...c5b25c`](./contracts/ethereum-1/0x0b416aa811bd8396f516be8833b9683524c5b25c/) | ⚠️ Unaudited |

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
| [spaces/x6BD7DBdJOnjDJswNoq9/uploads/FRidwsyZAo0bejXHjYHq/PeckShield-Audit-Report-WhalesMarket-Solana.v1.0.pdf](https://1927385578-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fx6BD7DBdJOnjDJswNoq9%2Fuploads%2FFRidwsyZAo0bejXHjYHq%2FPeckShield-Audit-Report-WhalesMarket-Solana.v1.0.pdf?alt=media&token=fc4571bf-8a93-49da-a492-a573b1022ce8) | PeckShield | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [docs.whales.market/additional-documents/contract-audits](https://docs.whales.market/additional-documents/contract-audits) | PeckShield | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21353] spaces/x6BD7DBdJOnjDJswNoq9/uploads/FRidwsyZAo0bejXHjYHq/PeckShield-Audit-Report-WhalesMarket-Solana.v1.0.pdf
- [21354] docs.whales.market/additional-documents/contract-audits

Fork inheritance lineage and inherited audits are included when available.
