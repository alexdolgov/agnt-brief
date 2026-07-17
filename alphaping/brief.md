# Agentic Audit Brief: AlphaPing

## Project Overview

- Project: AlphaPing (`alphaping`)
- Website: [https://alphaping.ch/](https://alphaping.ch/)
- Lifecycle: active (Tier 0, 64.4% below peak)
- Generated: 2026-07-04T14:53:00.600Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: ethereum
- Contract surface: 5 unique implementations (17 raw deployments)
- DeFi Llama TVL: $39,132,369.30
- On-chain TVL (included contracts): $36,687,056.01
- TVL by chain: Ethereum $36,687,056.01

## Project Description

Risk Curators. Structurally: 5 project-authored contract(s) across 1 chain(s); 3 ERC4626 vaults, 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 17; live-surface contracts included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 17
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $36,687,056.01
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
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
| VaultV2 | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x0bf0164d17469241b6e086da4016dcc54feaa334`](./contracts/ethereum-1/0x0bf0164d17469241b6e086da4016dcc54feaa334/); ethereum `0x153bd1abe60104bd46aa05a27fa12d1346d64a57`; ethereum `0x35cbe8542e70fa2f7f9cdf129f19e593f4b4f560`; ethereum `0x610f5b68bd1eed68af649a3fd3dc2caa1ee4ae7e`; ethereum `0x951a9f4a2ce19b9dea6b37e691d076a345b6c0f8`; ethereum `0x9f39b13bb472126d6937bf25a39338e664eefa82`; ethereum `0xeb6719c14ba01bf1d6bfb78a65f63f12fabf202c`; ethereum `0xf1ca44eea3a4effcb195a970a2f1d8553f76f9a1` | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | n/a | [`0xd8cd72a2eb7a4312404c00aed5172c0026da0c27`](./contracts/ethereum-1/0xd8cd72a2eb7a4312404c00aed5172c0026da0c27/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | ethereum | n/a | 6 deployments: ethereum [`0x47fe8ab9ee47dd65c24df52324181790b9f47efc`](./contracts/ethereum-1/0x47fe8ab9ee47dd65c24df52324181790b9f47efc/); ethereum `0x6701957aaa39e9352a42729cc65436a4c945cb90`; ethereum `0x874e7fb1abb4c27a7bbeeefa39e888b63181939c`; ethereum `0xb0f05e4de970a1aaf77f8c2f823953a367504ba9`; ethereum `0xf9b85b19f6885511165505299648e6d052e8d4c8`; ethereum `0xfa7ed49eb24a6117d8a3168eee69d26b45c40c63` | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0xeb4af6fa3afa08b10d593ec8ff87efb03bc04645`](./contracts/ethereum-1/0xeb4af6fa3afa08b10d593ec8ff87efb03bc04645/) | ⚠️ Unaudited |

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
| ethereum | [`0x0bf0164d17469241b6e086da4016dcc54feaa334`](./contracts/ethereum-1/0x0bf0164d17469241b6e086da4016dcc54feaa334/) | VaultV2 | core_logic | $36,603,893.28 | Verified native implementation with $36,603,893.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd8cd72a2eb7a4312404c00aed5172c0026da0c27`](./contracts/ethereum-1/0xd8cd72a2eb7a4312404c00aed5172c0026da0c27/) | VaultV2 | core_logic | $83,162.73 | Verified native implementation with $83,162.73 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
