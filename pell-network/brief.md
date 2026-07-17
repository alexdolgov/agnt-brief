# Agentic Audit Brief: Pell Network

## Project Overview

- Project: Pell Network (`pell-network`)
- Website: [https://pell.network/](https://pell.network/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.024Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $217,858.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Restaking. Structurally: 7 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 2 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 7 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EmptyContract | unknown | ethereum | n/a | [`0xd7e240bde89eae9166a126a7fb7a68ebe64f8a27`](./contracts/ethereum-1/0xd7e240bde89eae9166a126a7fb7a68ebe64f8a27/) | ⚠️ Unaudited |
| PauserRegistry | unknown | ethereum | n/a | [`0x52537f1a015ab9785dd48a9e553f593157a98bf1`](./contracts/ethereum-1/0x52537f1a015ab9785dd48a9e553f593157a98bf1/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x0584f8a92af95e9e441142f9e2f0b5999bd61390`](./contracts/ethereum-1/0x0584f8a92af95e9e441142f9e2f0b5999bd61390/) | ⚠️ Unaudited |
| Slasher | unknown | ethereum | n/a | [`0x13066c68dc4f5e8e10a75adf6dd53e87904f37b4`](./contracts/ethereum-1/0x13066c68dc4f5e8e10a75adf6dd53e87904f37b4/) | ⚠️ Unaudited |
| StrategyBaseTVLLimits | unknown | ethereum | n/a | [`0x13c5f34471a14bc466d4ed1e6c7a840fa45eac5c`](./contracts/ethereum-1/0x13c5f34471a14bc466d4ed1e6c7a840fa45eac5c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x00b67e4805138325ce871d5e27dc15f994681bc1`](./contracts/ethereum-1/0x00b67e4805138325ce871d5e27dc15f994681bc1/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x230b442c0802fe83daf3d2656aadfd16ca1e1f66`](./contracts/ethereum-1/0x230b442c0802fe83daf3d2656aadfd16ca1e1f66/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-PellNetwork-v1.0.pdf](https://github.com/0xPellNetwork/restaking-contracts/blob/main/audits/PeckShield-Audit-Report-PellNetwork-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xd7e240bde89eae9166a126a7fb7a68ebe64f8a27`](./contracts/ethereum-1/0xd7e240bde89eae9166a126a7fb7a68ebe64f8a27/) | EmptyContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52537f1a015ab9785dd48a9e553f593157a98bf1`](./contracts/ethereum-1/0x52537f1a015ab9785dd48a9e553f593157a98bf1/) | PauserRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13066c68dc4f5e8e10a75adf6dd53e87904f37b4`](./contracts/ethereum-1/0x13066c68dc4f5e8e10a75adf6dd53e87904f37b4/) | Slasher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13c5f34471a14bc466d4ed1e6c7a840fa45eac5c`](./contracts/ethereum-1/0x13c5f34471a14bc466d4ed1e6c7a840fa45eac5c/) | StrategyBaseTVLLimits | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20922] PeckShield-Audit-Report-PellNetwork-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
