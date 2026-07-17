# Agentic Audit Brief: BitFi

## Project Overview

- Project: BitFi (`bitfi`)
- Website: [https://bitfi.org](https://bitfi.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:07.492Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: base, bsc, ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $264,654,912.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 5 project-authored contract(s) across 3 chain(s); 1 ERC4626 vault, 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/5 (100.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/5
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 100.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 5 | 100.0% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bfbtc | unknown | bsc | n/a | [`0x128eb2baca6ac5416bed268d41c202fc41d55f1b`](./contracts/bsc-56/0x128eb2baca6ac5416bed268d41c202fc41d55f1b/) | ✅ Audited |
| BfbtcOracle | unknown | base | n/a | [`0x3f8c84fe47486156b81e74f08c4d9be3c3ab5f5b`](./contracts/base-8453/0x3f8c84fe47486156b81e74f08c4d9be3c3ab5f5b/) | ✅ Audited |
| BitFiStablecoinManager | unknown | ethereum | n/a | [`0xb69865f8fa4bfc67ab4ad233e36ac593a5d21f06`](./contracts/ethereum-1/0xb69865f8fa4bfc67ab4ad233e36ac593a5d21f06/) | ✅ Audited |
| BitFiStablecoinZap | unknown | ethereum | n/a | [`0x140b5517df7e33878eb0a494d6882cfac54b66cb`](./contracts/ethereum-1/0x140b5517df7e33878eb0a494d6882cfac54b66cb/) | ✅ Audited |
| StakedBitFiStablecoin | unknown | ethereum | n/a | [`0x688745d56f93924dbda1c2caa613adcbcea871c5`](./contracts/ethereum-1/0x688745d56f93924dbda1c2caa613adcbcea871c5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [Audit Report](https://docs.bitfi.one/developer/audit-report) | SlowMist | Audit | n/a | unknown | Direct | contract_name | 1 | medium |
| [bitfi-slowmist-audit.pdf](https://docs.bitfi.one/assets/bitfi-slowmist-audit.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |
| [See the report on SlowMist's GitHub](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/BitFi%20-%20BFBTC%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |
| [Download the bfUSD audit report (PDF)](https://docs.bitfi.one/assets/bitfi-usd-slowmist-audit.pdf) | SlowMist | Audit | 2025-12 | fresh | Direct | contract_name | 3 | high |
| [See the report on SlowMist's GitHub](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/BitFi%20USD%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-12 | fresh | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4, medium=1
- Match method counts: extraction_exact=11

Fork inheritance lineage and inherited audits are included when available.
