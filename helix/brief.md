# Agentic Audit Brief: Helix

## Project Overview

- Project: Helix (`helix`)
- Website: [https://helixapp.com](https://helixapp.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.386Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 9 unique implementations (9 raw deployments)
- DeFi Llama TVL: $1,115,731.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 9 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 2 functional families. Its contracts share 3 common project-authored base contract(s) (upgradeableproxy, proxy, helixbase). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 9 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 9
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

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HelixAuthoriser | unknown | ethereum | n/a | [`0x3e33865107d728336563c9a9d479173fcf61fc49`](./contracts/ethereum-1/0x3e33865107d728336563c9a9d479173fcf61fc49/) | ⚠️ Unaudited |
| HelixConfig | unknown | ethereum | n/a | [`0x8c83f98953f5035cbef60d2da964f8111fa3dd4a`](./contracts/ethereum-1/0x8c83f98953f5035cbef60d2da964f8111fa3dd4a/) | ⚠️ Unaudited |
| HelixDeal | unknown | ethereum | n/a | [`0xcef1ce6b10886a8e7698f51bad265c35883e62c6`](./contracts/ethereum-1/0xcef1ce6b10886a8e7698f51bad265c35883e62c6/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x7ce4646402d94f6006af0c7c54ce70fb7dc64e3b`](./contracts/ethereum-1/0x7ce4646402d94f6006af0c7c54ce70fb7dc64e3b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1c227497dea66f59811db6ee3a3bcfe148bab4dc`](./contracts/ethereum-1/0x1c227497dea66f59811db6ee3a3bcfe148bab4dc/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x274515b23b9c4dd616c88a6c5d715f5c88a4cc36`](./contracts/ethereum-1/0x274515b23b9c4dd616c88a6c5d715f5c88a4cc36/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x42012e315c70af46585581803066243f95153b95`](./contracts/ethereum-1/0x42012e315c70af46585581803066243f95153b95/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x4512abc6384431d107d264dc2c8cfe1c475df999`](./contracts/ethereum-1/0x4512abc6384431d107d264dc2c8cfe1c475df999/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x67c3a8ecd374b46d335105323f5888f70679d740`](./contracts/ethereum-1/0x67c3a8ecd374b46d335105323f5888f70679d740/) | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3e33865107d728336563c9a9d479173fcf61fc49`](./contracts/ethereum-1/0x3e33865107d728336563c9a9d479173fcf61fc49/) | HelixAuthoriser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c83f98953f5035cbef60d2da964f8111fa3dd4a`](./contracts/ethereum-1/0x8c83f98953f5035cbef60d2da964f8111fa3dd4a/) | HelixConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcef1ce6b10886a8e7698f51bad265c35883e62c6`](./contracts/ethereum-1/0xcef1ce6b10886a8e7698f51bad265c35883e62c6/) | HelixDeal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
