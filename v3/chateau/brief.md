# Agentic Audit Brief: CHATEAU

## Project Overview

- Project: CHATEAU (`chateau`)
- Website: [https://www.chateau.capital](https://www.chateau.capital)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:39.383Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: hyperliquid, plasma
- Contract surface: 31 unique implementations (32 raw deployments)
- DeFi Llama TVL: $1,030,829.43
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 13 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 16 common project-authored base contract(s) (oftownable2step, oft, oftcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 49; live-surface contracts included: 32 (5 live, 27 unknown).
- Excluded by liveness: 17 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/4 (25.0%)
- Deployed-live implementations: 4 of 31 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/4
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 31
- Raw deployments: 32
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 25.0% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| chUSD | unknown | plasma | n/a | 2 deployments: hyperliquid `0x222222...abea02`; plasma [`0x222222...f5fdc1`](./contracts/plasma-9745/0x22222215d4edc5510d23d0886133e7ece7f5fdc1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EndpointV2 | operational_periphery | plasma | n/a | [`0x6f4756...48dd5b`](./contracts/plasma-9745/0x6f475642a6e85809b1c36fa62763669b1b48dd5b/) | ⚠️ Unaudited |
| StakedchUSDOFT | token | hyperliquid | n/a | [`0x888888...b93aa8`](./contracts/hyperliquid-999/0x888888facb316879129e1eee2451260e44b93aa8/) | ⚠️ Unaudited |
| StakedchUSDV2 | token | plasma | n/a | [`0x888888...ce874d`](./contracts/plasma-9745/0x888888bab58a7bd3068110749bc7b63b62ce874d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | plasma | n/a | `0x14e445...525658` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x15e517...1451b3` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x199859...e7a9c6` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x1a327a...032e58` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x1dcdac...203795` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x236732...f58312` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x2d61dc...529aaa` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x37aaaf...5c2a02` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x38de71...491251` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x3a7303...4a9aa9` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x4514fc...315f25` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x4ee2f9...235245` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x5b19bd...a18c1c` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x66a71d...5cd675` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x8bc1e3...2f5a4e` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x9740ff...3ed9e4` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x980205...3ec981` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x9c061c...7f4bdd` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xa20db4...41058e` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xc097ab...3b526f` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xc1b15d...dacb36` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xc1b621...c09821` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xce8358...d65887` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xea6709...cd7296` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xf36d3f...49411a` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xfd76d9...b1e3ca` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xfe7c30...d3a098` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Chateau - Zenith Audit Report.pdf](https://github.com/zenith-security/reports/blob/main/reports/Chateau%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
