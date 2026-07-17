# Agentic Audit Brief: InfinityPools

## Project Overview

- Project: InfinityPools (`infinitypools`)
- Website: [https://infinitypools.finance/](https://infinitypools.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:22.034Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: base
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $110,979.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 6 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 1 unknown
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
| GeneralSwapForwarder | unknown | base | n/a | [`0x567a06c6e4f77fcc64cf53183e0328a7f84a4354`](./contracts/base-8453/0x567a06c6e4f77fcc64cf53183e0328a7f84a4354/) | ⚠️ Unaudited |
| InfinityPoolsFactory | unknown | base | n/a | [`0x86342d7bbe93cb640a6c57d4781f04d93a695f08`](./contracts/base-8453/0x86342d7bbe93cb640a6c57d4781f04d93a695f08/) | ⚠️ Unaudited |
| InfinityPoolsPeriphery | unknown | base | n/a | [`0xf8fad01b2902ff57460552c920233682c7c011a7`](./contracts/base-8453/0xf8fad01b2902ff57460552c920233682c7c011a7/) | ⚠️ Unaudited |
| InfinityPoolsQuoter | unknown | base | n/a | [`0xc9d8a51be17b79eb8fd22f87f6851c243855663c`](./contracts/base-8453/0xc9d8a51be17b79eb8fd22f87f6851c243855663c/) | ⚠️ Unaudited |
| InfinityPoolsSwapForwarder | unknown | base | n/a | [`0x99a9c21053acccf6961f7f12cff0d9d155d4ebe7`](./contracts/base-8453/0x99a9c21053acccf6961f7f12cff0d9d155d4ebe7/) | ⚠️ Unaudited |
| UniV2SwapForwarder | unknown | base | n/a | [`0xdc9be7d212536e8e23b0074678d0625499e61021`](./contracts/base-8453/0xdc9be7d212536e8e23b0074678d0625499e61021/) | ⚠️ Unaudited |

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
| [Link](https://github.com/abdk-consulting/audits/blob/main/lemmalabs/ABDK_LemmaLabs_InfinityPools_v_2_0.pdf) | ABDK | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Link](https://drive.google.com/file/d/1VsHVjXFc5YnFLWOi_iOUi9Tvr4i3B09m/view?usp=sharing) | ABDK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x567a06c6e4f77fcc64cf53183e0328a7f84a4354`](./contracts/base-8453/0x567a06c6e4f77fcc64cf53183e0328a7f84a4354/) | GeneralSwapForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x86342d7bbe93cb640a6c57d4781f04d93a695f08`](./contracts/base-8453/0x86342d7bbe93cb640a6c57d4781f04d93a695f08/) | InfinityPoolsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf8fad01b2902ff57460552c920233682c7c011a7`](./contracts/base-8453/0xf8fad01b2902ff57460552c920233682c7c011a7/) | InfinityPoolsPeriphery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc9d8a51be17b79eb8fd22f87f6851c243855663c`](./contracts/base-8453/0xc9d8a51be17b79eb8fd22f87f6851c243855663c/) | InfinityPoolsQuoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x99a9c21053acccf6961f7f12cff0d9d155d4ebe7`](./contracts/base-8453/0x99a9c21053acccf6961f7f12cff0d9d155d4ebe7/) | InfinityPoolsSwapForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdc9be7d212536e8e23b0074678d0625499e61021`](./contracts/base-8453/0xdc9be7d212536e8e23b0074678d0625499e61021/) | UniV2SwapForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20584] Link
- [20585] Link

Fork inheritance lineage and inherited audits are included when available.
