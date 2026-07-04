# Agentic Audit Brief: Blasterswap

⚠️ Lifecycle status: DECLINING - TVL dropped 22.8% over 90 days

## Project Overview

- Project: Blasterswap (`blasterswap`)
- Website: [https://blasterswap.com/](https://blasterswap.com/)
- Lifecycle: declining (Tier 0, 98.4% below peak)
- Generated: 2026-07-03T21:05:35.848Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: blast
- Contract surface: 4 unique implementations (7 raw deployments)
- DeFi Llama TVL: $288,534.00
- On-chain TVL (included contracts): $2,361.66
- TVL by chain: Blast $2,361.66

## Project Description

Dexs. Structurally: 5 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 7 (6 live, 1 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
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
- Raw deployments: 7
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,361.66
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,361.66 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | blast | n/a | 3 deployments: blast [`0x013249...a84260`](./contracts/blast-81457/0x013249266842e078999088807033d80531a84260/); blast `0x0464a3...6f6e3f`; blast `0xc52fb7...58c91d` | ⚠️ Unaudited |
| Andy | unknown | blast | n/a | 2 deployments: blast [`0x0ecd76...e9d505`](./contracts/blast-81457/0x0ecd76c73caf3ef7995cb236366f71fae2e9d505/); blast `0xd43d8a...752cf8` | ⚠️ Unaudited |
| Pacmoon | unknown | blast | n/a | [`0x5ffd9e...a29c06`](./contracts/blast-81457/0x5ffd9ebd27f2fcab044c0f0a26a45cb62fa29c06/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | blast | n/a | `0x44fa62...23ea6a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [AstraSec-AuditReport-BlasterSwap.pdf](https://github.com/blasterswap/blasterswap-core-v2/blob/main/AstraSec-AuditReport-BlasterSwap.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0x013249...a84260`](./contracts/blast-81457/0x013249266842e078999088807033d80531a84260/) | Vault | core_logic | $2,361.66 | Verified native implementation with $2,361.66 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x0ecd76...e9d505`](./contracts/blast-81457/0x0ecd76c73caf3ef7995cb236366f71fae2e9d505/) | Andy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x5ffd9e...a29c06`](./contracts/blast-81457/0x5ffd9ebd27f2fcab044c0f0a26a45cb62fa29c06/) | Pacmoon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12792] AstraSec-AuditReport-BlasterSwap.pdf

Fork inheritance lineage and inherited audits are included when available.
