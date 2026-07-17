# Agentic Audit Brief: Armitage by Wintermute

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Armitage by Wintermute (`armitage-by-wintermute`)
- Website: [https://armitage.wintermute.com](https://armitage.wintermute.com)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-07-04T14:53:04.136Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: ethereum
- Contract surface: 7 unique implementations (9 raw deployments)
- DeFi Llama TVL: $56,367,700.69
- On-chain TVL (included contracts): $56,389,000.80
- TVL by chain: Ethereum $56,389,000.80

## Project Description

Risk Curators. Structurally: 7 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 1 ERC20 token; built on solmate.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: solmate.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 7 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/7
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 9
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $56,389,000.80
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $56,389,000.80 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x5dc53a23adc9f2bed98de6f59f7f309a7c71ff2b`](./contracts/ethereum-1/0x5dc53a23adc9f2bed98de6f59f7f309a7c71ff2b/); ethereum `0xa2eaad0d586cf9fd73bb2c09cf6a7e3e187d68cd` | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| MorphoMarketV1AdapterV2Factory | adapter | ethereum | n/a | [`0x32bb1c0d48d8b1b3363e86eeb9a0300bad61ccc1`](./contracts/ethereum-1/0x32bb1c0d48d8b1b3363e86eeb9a0300bad61ccc1/) | ⚠️ Unaudited |
| MorphoVaultV1AdapterFactory | adapter | ethereum | n/a | [`0xd1b8e2dee25c2b89dcd2f98448a7ce87d6f63394`](./contracts/ethereum-1/0xd1b8e2dee25c2b89dcd2f98448a7ce87d6f63394/) | ⚠️ Unaudited |
| RegistryList | registry | ethereum | n/a | [`0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e`](./contracts/ethereum-1/0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4687e45bb5518a995913a24bb2816fe2031d74d8`](./contracts/ethereum-1/0x4687e45bb5518a995913a24bb2816fe2031d74d8/); ethereum `0xb83a77677c51aaf6c45b0b64199eae6938559e5e` | ⚠️ Unaudited |
| VaultV2Factory | registry | ethereum | n/a | [`0xa1d94f746defa1928926b84fb2596c06926c0405`](./contracts/ethereum-1/0xa1d94f746defa1928926b84fb2596c06926c0405/) | ⚠️ Unaudited |

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
| ethereum | [`0x5dc53a23adc9f2bed98de6f59f7f309a7c71ff2b`](./contracts/ethereum-1/0x5dc53a23adc9f2bed98de6f59f7f309a7c71ff2b/) | VaultV2 | core_logic | $56,389,000.80 | Verified native implementation with $56,389,000.80 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e`](./contracts/ethereum-1/0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e/) | RegistryList | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1d94f746defa1928926b84fb2596c06926c0405`](./contracts/ethereum-1/0xa1d94f746defa1928926b84fb2596c06926c0405/) | VaultV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 3 |
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
