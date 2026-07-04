# Agentic Audit Brief: Clovis

## Project Overview

- Project: Clovis (`clovis`)
- Website: [https://clovis.network/](https://clovis.network/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.321Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum, optimism, sei
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $233,440.41
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 3 project-authored contract(s) across 3 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/3 (33.3%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/5
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| billh | Tier 2 | 1 | 20.0% | 2025-08 |
| Verichains | Tier 2 | 1 | 20.0% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | unknown | ethereum | n/a | [`0xf97f14...6c7d0c`](./contracts/ethereum-1/0xf97f14eb571eb749390ef5a067edbbbc646c7d0c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ATokenV3 | unknown | sei | n/a | [`0x093066...e32819`](./contracts/sei-1329/0x093066736e6762210de13f92b39cf862eee32819/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | optimism | n/a | [`0xe7cd86...0fc82d`](./contracts/optimism-10/0xe7cd86e13ac4309349f30b3435a9d337750fc82d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x01bff4...bc1071`](./contracts/optimism-10/0x01bff41798a0bcf287b996046ca68b395dbc1071/) | ⚠️ Unaudited |
| VaultV2 | unknown | ethereum | n/a | [`0x39166b...a5e94c`](./contracts/ethereum-1/0x39166b36a25a4a98d6b7c21d429f4740c6a5e94c/) | ⚠️ Unaudited |

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
| [Clovis - Verichains Audit Report - Pre-deposit Vault.pdf](https://1911326218-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FAVHC81FYBgMAILvctkBu%2Fuploads%2FpqSJehegms81oyLLXrZX%2FClovis%20-%20Verichains%20Audit%20Report%20-%20%20Pre-deposit%20Vault.pdf) | Verichains | Audit | 2025-07 | aging | Direct | contract_name | 1 | high |
| [Clovis - billh Security Review - Pre-deposit Vault.pdf](https://1911326218-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FAVHC81FYBgMAILvctkBu%2Fuploads%2FGYHchudKLFMpgRmDKfTO%2FClovis%20-%20billh%20Security%20Review%20-%20Pre-deposit%20Vault.pdf) | billh | Audit | 2025-07 | aging | Direct | contract_name | 1 | high |
| [Clovis - billh Security Report - TGE.pdf](https://1911326218-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FAVHC81FYBgMAILvctkBu%2Fuploads%2Feuw9HH6WBEyWWlk3tIdq%2FClovis%20-%20billh%20Security%20Report%20-%20TGE.pdf) | billh | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sei | [`0x093066...e32819`](./contracts/sei-1329/0x093066736e6762210de13f92b39cf862eee32819/) | ATokenV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39166b...a5e94c`](./contracts/ethereum-1/0x39166b36a25a4a98d6b7c21d429f4740c6a5e94c/) | VaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Zero-match audit list:

- [19653] Clovis - billh Security Report - TGE.pdf

Fork inheritance lineage and inherited audits are included when available.
