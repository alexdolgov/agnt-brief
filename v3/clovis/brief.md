# Agentic Audit Brief: Clovis

## Project Overview

- Project: Clovis (`clovis`)
- Website: [https://clovis.network/](https://clovis.network/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:25:22.602Z
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

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 3 unknown
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
| ATokenV3 | unknown | sei | n/a | [`0x093066...e32819`](./contracts/sei-1329/0x093066736e6762210de13f92b39cf862eee32819/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | optimism | n/a | [`0xe7cd86...0fc82d`](./contracts/optimism-10/0xe7cd86e13ac4309349f30b3435a9d337750fc82d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x01bff4...bc1071`](./contracts/optimism-10/0x01bff41798a0bcf287b996046ca68b395dbc1071/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0xf97f14...6c7d0c`](./contracts/ethereum-1/0xf97f14eb571eb749390ef5a067edbbbc646c7d0c/) | ⚠️ Unaudited |
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
| [Clovis - Verichains Audit Report - Pre-deposit Vault.pdf](https://1911326218-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FAVHC81FYBgMAILvctkBu%2Fuploads%2FpqSJehegms81oyLLXrZX%2FClovis%20-%20Verichains%20Audit%20Report%20-%20%20Pre-deposit%20Vault.pdf) | Verichains | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Clovis - billh Security Review - Pre-deposit Vault.pdf](https://1911326218-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FAVHC81FYBgMAILvctkBu%2Fuploads%2FGYHchudKLFMpgRmDKfTO%2FClovis%20-%20billh%20Security%20Review%20-%20Pre-deposit%20Vault.pdf) | billh | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Clovis - billh Security Report - TGE.pdf](https://1911326218-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FAVHC81FYBgMAILvctkBu%2Fuploads%2Feuw9HH6WBEyWWlk3tIdq%2FClovis%20-%20billh%20Security%20Report%20-%20TGE.pdf) | billh | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19651] Clovis - Verichains Audit Report - Pre-deposit Vault.pdf
- [19652] Clovis - billh Security Review - Pre-deposit Vault.pdf
- [19653] Clovis - billh Security Report - TGE.pdf

Fork inheritance lineage and inherited audits are included when available.
