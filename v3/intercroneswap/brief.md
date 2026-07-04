# Agentic Audit Brief: Intercroneswap

## Project Overview

- Project: Intercroneswap (`intercroneswap`)
- Website: [http://www.intercroneswap.com](http://www.intercroneswap.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:01.373Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $255,337.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 6 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
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
- Raw deployments: 6
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
| ICR | unknown | bsc | n/a | [`0x4f60ad...971e00`](./contracts/bsc-56/0x4f60ad2c684296458b12053c0ef402e162971e00/) | ⚠️ Unaudited |
| ICR_b | unknown | bsc | n/a | [`0x9b4da0...315d2f`](./contracts/bsc-56/0x9b4da0d77c7d611e8fe0ec9214dd791d05315d2f/) | ⚠️ Unaudited |
| InterCrone | unknown | bsc | n/a | [`0xdc0678...9d06d8`](./contracts/bsc-56/0xdc0678e929852aebe68e0ce60f65049b0d9d06d8/) | ⚠️ Unaudited |
| IswapV1Factory | unknown | bsc | n/a | [`0x774433...56632b`](./contracts/bsc-56/0x774433016a25e19b2a8d96996c940e326356632b/) | ⚠️ Unaudited |
| IswapV1Router02 | unknown | bsc | n/a | [`0x4fd7d1...d259b3`](./contracts/bsc-56/0x4fd7d13c126ece5c3fe7a839871b242971d259b3/) | ⚠️ Unaudited |
| StakingRewards | unknown | bsc | n/a | [`0x0484b7...35b38d`](./contracts/bsc-56/0x0484b79f91f88234e01cd7fd6ceeeb9d5835b38d/) | ⚠️ Unaudited |

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
