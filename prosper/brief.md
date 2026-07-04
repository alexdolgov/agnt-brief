# Agentic Audit Brief: prosper

## Project Overview

- Project: prosper (`prosper`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.198Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc, ethereum
- Contract surface: 7 unique implementations (7 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 7 project-authored contract(s) across 2 chain(s); 6 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 7 contract(s).

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/7 (0.0%)
- Deployed-live implementations: 7 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
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

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Coldstack | unknown | ethereum | n/a | [`0x675bbc...76de37`](./contracts/ethereum-1/0x675bbc7514013e2073db7a919f6e4cbef576de37/) | ⚠️ Unaudited |
| MessageRelayer | unknown | ethereum | n/a | [`0x1412f2...288fda`](./contracts/ethereum-1/0x1412f2b39050cd05bc0b2f08acb5cb8e41288fda/) | ⚠️ Unaudited |
| PROS | unknown | ethereum | n/a | [`0x126574...bbd267`](./contracts/ethereum-1/0x126574ad1cdf14f9421f847e991df72c5fbbd267/) | ⚠️ Unaudited |
| ProsperSocial | unknown | bsc | n/a | [`0x486898...02152e`](./contracts/bsc-56/0x4868985b0963f58fd209ce80b8567a21b302152e/) | ⚠️ Unaudited |
| StakingPool | unknown | bsc | n/a | [`0x15f1d1...6ab647`](./contracts/bsc-56/0x15f1d19f43cb2e9bbb88e0d3f4afa545846ab647/) | ⚠️ Unaudited |
| Token | unknown | bsc | n/a | [`0x05e42f...653411`](./contracts/bsc-56/0x05e42f507f84d349b16fe4361190828e60653411/) | ⚠️ Unaudited |
| TokenRelayer | unknown | ethereum | n/a | [`0x564800...55f479`](./contracts/ethereum-1/0x5648003d9dca549ff5db0c76b3f1b0b58355f479/) | ⚠️ Unaudited |

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
| ethereum | [`0x675bbc...76de37`](./contracts/ethereum-1/0x675bbc7514013e2073db7a919f6e4cbef576de37/) | Coldstack | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1412f2...288fda`](./contracts/ethereum-1/0x1412f2b39050cd05bc0b2f08acb5cb8e41288fda/) | MessageRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x126574...bbd267`](./contracts/ethereum-1/0x126574ad1cdf14f9421f847e991df72c5fbbd267/) | PROS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x486898...02152e`](./contracts/bsc-56/0x4868985b0963f58fd209ce80b8567a21b302152e/) | ProsperSocial | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15f1d1...6ab647`](./contracts/bsc-56/0x15f1d19f43cb2e9bbb88e0d3f4afa545846ab647/) | StakingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05e42f...653411`](./contracts/bsc-56/0x05e42f507f84d349b16fe4361190828e60653411/) | Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x564800...55f479`](./contracts/ethereum-1/0x5648003d9dca549ff5db0c76b3f1b0b58355f479/) | TokenRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
