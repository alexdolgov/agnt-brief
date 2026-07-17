# Agentic Audit Brief: Levinswap

## Project Overview

- Project: Levinswap (`levinswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.955Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: gnosis
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $105,837.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 10 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 2 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EternalStorageProxy | unknown | gnosis | n/a | [`0x17e64926d5f92251822f66736ebd405e03809034`](./contracts/gnosis-100/0x17e64926d5f92251822f66736ebd405e03809034/) | ⚠️ Unaudited |
| ForeignAMBErc677ToErc677 | unknown | gnosis | n/a | [`0x0d03852adf8877574f2537663760bd2174046fba`](./contracts/gnosis-100/0x0d03852adf8877574f2537663760bd2174046fba/) | ⚠️ Unaudited |
| LevinBar | unknown | gnosis | n/a | [`0x6a5f3d605613bd3b6515d803f8f7dc617f4f6bb3`](./contracts/gnosis-100/0x6a5f3d605613bd3b6515d803f8f7dc617f4f6bb3/) | ⚠️ Unaudited |
| LevinMaker | unknown | gnosis | n/a | [`0x6d81dda24b7ff5b4a65039ff15d06a076e018e49`](./contracts/gnosis-100/0x6d81dda24b7ff5b4a65039ff15d06a076e018e49/) | ⚠️ Unaudited |
| LevinTimelock | unknown | gnosis | n/a | [`0x061cc9d4bda1805eac1dc27979e58dc4c01304f2`](./contracts/gnosis-100/0x061cc9d4bda1805eac1dc27979e58dc4c01304f2/) | ⚠️ Unaudited |
| LevinToken | unknown | gnosis | n/a | [`0x1698cd22278ef6e7c0df45a8dea72edbea9e42aa`](./contracts/gnosis-100/0x1698cd22278ef6e7c0df45a8dea72edbea9e42aa/) | ⚠️ Unaudited |
| MasterChefLVN | unknown | gnosis | n/a | [`0x37a714661820927b6d1a6bdbb7dfd2bc23f4a072`](./contracts/gnosis-100/0x37a714661820927b6d1a6bdbb7dfd2bc23f4a072/) | ⚠️ Unaudited |
| MasterLevin | unknown | gnosis | n/a | [`0x0f2b0e9db46c6b538e9276d2cf0c6ce8d515eca1`](./contracts/gnosis-100/0x0f2b0e9db46c6b538e9276d2cf0c6ce8d515eca1/) | ⚠️ Unaudited |
| Moloch | unknown | gnosis | n/a | [`0x78f96767012ae634c9a9554e7b46bcd29ae98cff`](./contracts/gnosis-100/0x78f96767012ae634c9a9554e7b46bcd29ae98cff/) | ⚠️ Unaudited |
| UniswapV2Factory | unknown | gnosis | n/a | [`0x965769c9cea8a7667246058504dcdcdb1e2975a5`](./contracts/gnosis-100/0x965769c9cea8a7667246058504dcdcdb1e2975a5/) | ⚠️ Unaudited |

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
| gnosis | [`0x17e64926d5f92251822f66736ebd405e03809034`](./contracts/gnosis-100/0x17e64926d5f92251822f66736ebd405e03809034/) | EternalStorageProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0d03852adf8877574f2537663760bd2174046fba`](./contracts/gnosis-100/0x0d03852adf8877574f2537663760bd2174046fba/) | ForeignAMBErc677ToErc677 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x6a5f3d605613bd3b6515d803f8f7dc617f4f6bb3`](./contracts/gnosis-100/0x6a5f3d605613bd3b6515d803f8f7dc617f4f6bb3/) | LevinBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x6d81dda24b7ff5b4a65039ff15d06a076e018e49`](./contracts/gnosis-100/0x6d81dda24b7ff5b4a65039ff15d06a076e018e49/) | LevinMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x061cc9d4bda1805eac1dc27979e58dc4c01304f2`](./contracts/gnosis-100/0x061cc9d4bda1805eac1dc27979e58dc4c01304f2/) | LevinTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x1698cd22278ef6e7c0df45a8dea72edbea9e42aa`](./contracts/gnosis-100/0x1698cd22278ef6e7c0df45a8dea72edbea9e42aa/) | LevinToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x37a714661820927b6d1a6bdbb7dfd2bc23f4a072`](./contracts/gnosis-100/0x37a714661820927b6d1a6bdbb7dfd2bc23f4a072/) | MasterChefLVN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0f2b0e9db46c6b538e9276d2cf0c6ce8d515eca1`](./contracts/gnosis-100/0x0f2b0e9db46c6b538e9276d2cf0c6ce8d515eca1/) | MasterLevin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x78f96767012ae634c9a9554e7b46bcd29ae98cff`](./contracts/gnosis-100/0x78f96767012ae634c9a9554e7b46bcd29ae98cff/) | Moloch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
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
