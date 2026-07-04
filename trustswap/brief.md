# Agentic Audit Brief: trustswap

## Project Overview

- Project: trustswap (`trustswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.509Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 6 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 6 contract(s).

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x0198b6...649e11`](./contracts/ethereum-1/0x0198b65cd2c12eae4fb7ea1996b8470b6c649e11/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x898da6...0e6a79`](./contracts/ethereum-1/0x898da6b2e015c64c060025cc5ebcf588290e6a79/) | ⚠️ Unaudited |
| SmartSwap | unknown | ethereum | n/a | [`0x03089e...6fb943`](./contracts/ethereum-1/0x03089ee8f8505ed44cb567836bbc04b3426fb943/) | ⚠️ Unaudited |
| SwapSmartLock | unknown | ethereum | n/a | [`0x06d0cc...384c70`](./contracts/ethereum-1/0x06d0ccbfa6f1eec7ca61288f8545efd977384c70/) | ⚠️ Unaudited |
| SwapStakingContract | unknown | ethereum | n/a | [`0x454a18...bbd8a8`](./contracts/ethereum-1/0x454a18cef2792e683648b6863d88da47b0bbd8a8/) | ⚠️ Unaudited |
| SwapToken | unknown | ethereum | n/a | [`0x907c6d...56eebe`](./contracts/ethereum-1/0x907c6d5bf04dc6f2cc34ceb649adb18bf356eebe/) | ⚠️ Unaudited |

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
| ethereum | [`0x03089e...6fb943`](./contracts/ethereum-1/0x03089ee8f8505ed44cb567836bbc04b3426fb943/) | SmartSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06d0cc...384c70`](./contracts/ethereum-1/0x06d0ccbfa6f1eec7ca61288f8545efd977384c70/) | SwapSmartLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x454a18...bbd8a8`](./contracts/ethereum-1/0x454a18cef2792e683648b6863d88da47b0bbd8a8/) | SwapStakingContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x907c6d...56eebe`](./contracts/ethereum-1/0x907c6d5bf04dc6f2cc34ceb649adb18bf356eebe/) | SwapToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
