# Agentic Audit Brief: BitFi

## Project Overview

- Project: BitFi (`bitfi`)
- Website: [https://bitfi.org](https://bitfi.org)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:35.774Z
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

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 5 unknown
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
| Bfbtc | unknown | bsc | n/a | [`0x128eb2...d55f1b`](./contracts/bsc-56/0x128eb2baca6ac5416bed268d41c202fc41d55f1b/) | ⚠️ Unaudited |
| BfbtcOracle | unknown | base | n/a | [`0x3f8c84...ab5f5b`](./contracts/base-8453/0x3f8c84fe47486156b81e74f08c4d9be3c3ab5f5b/) | ⚠️ Unaudited |
| BitFiStablecoinManager | unknown | ethereum | n/a | [`0xb69865...d21f06`](./contracts/ethereum-1/0xb69865f8fa4bfc67ab4ad233e36ac593a5d21f06/) | ⚠️ Unaudited |
| BitFiStablecoinZap | unknown | ethereum | n/a | [`0x140b55...4b66cb`](./contracts/ethereum-1/0x140b5517df7e33878eb0a494d6882cfac54b66cb/) | ⚠️ Unaudited |
| StakedBitFiStablecoin | unknown | ethereum | n/a | [`0x688745...a871c5`](./contracts/ethereum-1/0x688745d56f93924dbda1c2caa613adcbcea871c5/) | ⚠️ Unaudited |

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
| [Audit Report](https://docs.bitfi.one/developer/audit-report) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [bitfi-slowmist-audit.pdf](https://docs.bitfi.one/assets/bitfi-slowmist-audit.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [See the report on SlowMist's GitHub](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/BitFi%20-%20BFBTC%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Download the bfUSD audit report (PDF)](https://docs.bitfi.one/assets/bitfi-usd-slowmist-audit.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [See the report on SlowMist's GitHub](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/BitFi%20USD%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19570] Audit Report
- [19571] bitfi-slowmist-audit.pdf
- [19572] See the report on SlowMist's GitHub
- [19573] Download the bfUSD audit report (PDF)
- [19574] See the report on SlowMist's GitHub

Fork inheritance lineage and inherited audits are included when available.
