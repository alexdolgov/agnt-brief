# Agentic Audit Brief: Plasma Saving Vaults

## Project Overview

- Project: Plasma Saving Vaults (`plasma-saving-vaults`)
- Website: [https://app.plasma.to/](https://app.plasma.to/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:42.410Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: plasma
- Contract surface: 6 unique implementations (13 raw deployments)
- DeFi Llama TVL: $33,190,726.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 3 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 10 (9 live, 1 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 6
- Raw deployments: 13
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
| BoringVault | core_logic | plasma | n/a | [`0xd1074e...73a000`](./contracts/plasma-9745/0xd1074e0ae85610ddba0147e29ebe0d8e5873a000/) | ⚠️ Unaudited |
| OUpgradeable | unknown | plasma | n/a | 2 deployments: plasma [`0x0200c2...8470c1`](./contracts/plasma-9745/0x0200c29006150606b650577bbe7b6248f58470c1/); plasma `0xc00e2c...ae65c1` | ⚠️ Unaudited |
| OUpgradeable | unknown | plasma | n/a | 2 deployments: plasma [`0x4970ea...0e8752`](./contracts/plasma-9745/0x4970ea919f0073d4e7c4fa8ec1b8cefaaa0e8752/); plasma `0x63ab93...08e6f7` | ⚠️ Unaudited |
| ProxyAdmin | governance | plasma | n/a | 2 deployments: plasma [`0x322483...773772`](./contracts/plasma-9745/0x3224831b5f45c616f8accba907798c6236773772/); plasma `0x5be536...47d8b2` | ⚠️ Unaudited |
| TetherTokenOFTExtension | unknown | plasma | n/a | 5 deployments: plasma [`0x1b64b9...d4d193`](./contracts/plasma-9745/0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193/); plasma `0x4a5cd3...7a6e0e`; plasma `0xb8ce59...625ebb`; plasma `0xcab8f3...f50b90`; plasma `0xf555a1...db34b9` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | plasma | n/a | `0x779ded...713736` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Veda-Labs/boring-vault-plasma/blob/main/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/Veda-Labs/boring-vault-plasma/blob/main/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/Veda-Labs/boring-vault-plasma/blob/main/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20939] 0xmacro-boring-vault-arctic-0.pdf
- [20940] 0xmacro-boring-vault-arctic-1.pdf
- [20941] spearbit-boring-vault-arctic-0.pdf

Fork inheritance lineage and inherited audits are included when available.
