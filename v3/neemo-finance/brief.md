# Agentic Audit Brief: Neemo Finance

## Project Overview

- Project: Neemo Finance (`neemo-finance`)
- Website: [https://neemo.finance/](https://neemo.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:36.289Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 14 unique implementations (15 raw deployments)
- DeFi Llama TVL: $859,815.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Restaking. Structurally: 0 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Proxies) of 1 contract(s).

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (2 live, 13 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 14
- Raw deployments: 15
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | proxy | ethereum | n/a | [`0x54cd23...c13525`](./contracts/ethereum-1/0x54cd23460df45559fd5feeaada7ba25f89c13525/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x653415...ae2bdf`](./contracts/ethereum-1/0x653415bc15ec3bca10815e09fcc5fe0a5bae2bdf/); ethereum `0x85031e...16559c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x02c5b1...da785a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b43ae...64d807` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x131ae8...210f4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e6d79...b19342` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dcdd4...ba141d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x873059...b4ef63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa75e4...6f364d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc67476...b44337` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfa66f...d0cec2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf13790...64dfe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf18229...9d9418` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb01af...fea0d3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hacken.io/audits/neemo-finance](https://hacken.io/audits/neemo-finance) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3061] hacken.io/audits/neemo-finance

Fork inheritance lineage and inherited audits are included when available.
