# Agentic Audit Brief: Liquis

## Project Overview

- Project: Liquis (`liquis`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.101Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum
- Contract surface: 12 unique implementations (13 raw deployments)
- DeFi Llama TVL: $321,069.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 26 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 1 common project-authored base contract(s) (permission). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 9 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/12 (41.7%)
- Deployed-live implementations: 12 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/12
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 13
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 4 | 33.3% | 2023-08 |
| WatchPug | Tier 2 | 1 | 8.3% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseRewardPool | core_logic | ethereum | n/a | [`0x7ea693...5acb23`](./contracts/ethereum-1/0x7ea6930a9487ce8d039f7cc89432435e6d5acb23/) | ✅ Audited |
| BoosterHelper | core_logic | ethereum | n/a | [`0x4ea2ef...d171f4`](./contracts/ethereum-1/0x4ea2efb759591eec7f916f89547d339a69d171f4/) | ✅ Audited |
| LiqLocker | unknown | ethereum | n/a | [`0x748a0f...03e1cb`](./contracts/ethereum-1/0x748a0f458b9e71061ca0ac543b984473f203e1cb/) | ✅ Audited |
| LiquisClaimZap | adapter | ethereum | n/a | [`0xad161b...70431b`](./contracts/ethereum-1/0xad161b8beb5bf2af9cda30e3988b13f62e70431b/) | ✅ Audited |
| LitDepositorHelper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4512c8...d373b5`](./contracts/ethereum-1/0x4512c81c2a88ea83539b535988cbe2f454d373b5/); ethereum `0x97a258...0af08c` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BoosterOwner | unknown | ethereum | n/a | [`0x948a60...c0a6cb`](./contracts/ethereum-1/0x948a608ff2198a4546abdbfadf43039a99c0a6cb/) | ⚠️ Unaudited |
| LiqToken | token | ethereum | n/a | [`0xd82fd4...4aa408`](./contracts/ethereum-1/0xd82fd4d6d62f89a1e50b1db69ad19932314aa408/) | ⚠️ Unaudited |
| LiquisViewHelpers | unknown | ethereum | n/a | [`0xd58dd6...9b9fe4`](./contracts/ethereum-1/0xd58dd6def2d0e8e16ffc537c7f269719e19b9fe4/) | ⚠️ Unaudited |
| PoolManager | unknown | ethereum | n/a | [`0x61e69c...39ccb5`](./contracts/ethereum-1/0x61e69c64e8cdf804cf3e0be287969d272939ccb5/) | ⚠️ Unaudited |
| RewardFactory | unknown | ethereum | n/a | [`0x368dda...0f9a48`](./contracts/ethereum-1/0x368dda6c8cce7283f4ee2577b8cbe454f40f9a48/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xf17d23...e09660`](./contracts/ethereum-1/0xf17d23136b4fead139f54fb766c8795faae09660/) | ⚠️ Unaudited |
| WeightedPool2Tokens | core_logic | ethereum | n/a | [`0x9232a5...93675c`](./contracts/ethereum-1/0x9232a548dd9e81bac65500b5e0d918f8ba93675c/) | ⚠️ Unaudited |

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
| [Liquis_Audit_Report_by_Halborn.pdf](https://github.com/liquisfi/security/blob/main/audits/Liquis_Audit_Report_by_Halborn.pdf) | Halborn | Audit | 2023-08 | stale | Direct | contract_name | 4 | n/a |
| [Liquis_Audit_Report_by_WatchPug.pdf](https://github.com/liquisfi/security/blob/main/audits/Liquis_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-07 | stale | Direct | contract_name | 2 | high |
| [Liquis_Audit_Report_by_WatchPug_prelaunch.pdf](https://github.com/liquisfi/security/blob/main/audits/Liquis_Audit_Report_by_WatchPug_prelaunch.pdf) | WatchPug | Audit | 2023-07 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x948a60...c0a6cb`](./contracts/ethereum-1/0x948a608ff2198a4546abdbfadf43039a99c0a6cb/) | BoosterOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd82fd4...4aa408`](./contracts/ethereum-1/0xd82fd4d6d62f89a1e50b1db69ad19932314aa408/) | LiqToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd58dd6...9b9fe4`](./contracts/ethereum-1/0xd58dd6def2d0e8e16ffc537c7f269719e19b9fe4/) | LiquisViewHelpers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61e69c...39ccb5`](./contracts/ethereum-1/0x61e69c64e8cdf804cf3e0be287969d272939ccb5/) | PoolManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x368dda...0f9a48`](./contracts/ethereum-1/0x368dda6c8cce7283f4ee2577b8cbe454f40f9a48/) | RewardFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf17d23...e09660`](./contracts/ethereum-1/0xf17d23136b4fead139f54fb766c8795faae09660/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9232a5...93675c`](./contracts/ethereum-1/0x9232a548dd9e81bac65500b5e0d918f8ba93675c/) | WeightedPool2Tokens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=4, extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
