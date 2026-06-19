# Agentic Audit Brief: cSigma Finance

## Project Overview

- Project: cSigma Finance (`csigma-finance`)
- Website: [https://csigma.finance](https://csigma.finance)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-19T06:13:49.146Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, base, ethereum
- Contract surface: 26 unique implementations (48 raw deployments)
- DeFi Llama TVL: $12,657,718.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

cSigma Finance is a decentralized lending protocol that enables real-world asset (RWA) backed loans. It provides vaults for collateral management, pools for liquidity, and factories for deploying new lending markets.

### Architecture

The cSigma Finance family uses VaultFacet for core vault logic and CsigmaV3Pool for liquidity pools, both managed through factory contracts. The Discover family's Sigma contract appears to be a predecessor or alternative implementation, sharing the same deployer cluster but no direct on-chain dependency with the main protocol.

## Contract Surface Quality

- Indexed contracts: 203; live-surface contracts included: 48 (48 live, 0 unknown).
- Excluded by liveness: 104 inactive, 51 singleton, 0 uninitialized.
- Deployment units: 1/24 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 4/15 (26.7%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 26
- Raw deployments: 48
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Immunebytes | Tier 2 | 3 | 20.0% | n/a |
| QuillAudits | Tier 2 | 1 | 6.7% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CsigmaV2Pool | core_logic | base | n/a | 5 deployments: ethereum `0xa5b755...9aec4d`; ethereum `0xea7171...c2abb1`; base [`0x2a4eb4...6e817d`](./contracts/base-8453/0x2a4eb45a52ebcae4ab62959088ca1c7c0a6e817d/); base `0x95c144...a6e3ac`; arbitrum `0x3c6afe...7b81cf` | ✅ Audited |
| DiamondCutFacet | unknown | ethereum | n/a | [`0x3f6222...c80ebd`](./contracts/ethereum-1/0x3f62228db89af0f05e6baa2e27a276635cc80ebd/) | ✅ Audited |
| DiamondLoupeFacet | unknown | ethereum | n/a | [`0xfffb10...319c59`](./contracts/ethereum-1/0xfffb10a6f20d86bbec86b71b7e0e38c21a319c59/) | ✅ Audited |
| VaultFacet | core_logic | ethereum | n/a | [`0x0673a6...1f6799`](./contracts/ethereum-1/0x0673a6fa0d4a4bacd1821441eb14b3522d1f6799/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CsigmaPDNv1_1 | unknown | arbitrum | unit-37734 | [`0x67a1fc...5b1395`](./contracts/arbitrum-42161/0x67a1fc35961dd0e293bb4481b48491adf95b1395/) | ⚠️ Unaudited |
| CsigmaPermissionedFundManager | governance | arbitrum | n/a | 3 deployments: ethereum `0xa9fca7...bd2330`; base `0x7ce643...16063b`; arbitrum [`0x6132de...75cf1a`](./contracts/arbitrum-42161/0x6132dea8db86c68fa18be318ffcb9ecb9475cf1a/) | ⚠️ Unaudited |
| CsigmaPermissionedPool | core_logic | base | n/a | 3 deployments: ethereum `0xe27cd6...85d411`; base [`0x85e700...534e17`](./contracts/base-8453/0x85e700e92dde9904009ac116251b5598c8534e17/); arbitrum `0xc6014a...527dd7` | ⚠️ Unaudited |
| CsigmaPermissionedWithdrawalManager | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x25f7e3...9dacb9`](./contracts/ethereum-1/0x25f7e3b56bf360250f94307fb22aa9b8049dacb9/); base `0x4c158b...9192dc`; arbitrum `0x5acb48...8153d1` | ⚠️ Unaudited |
| CsigmaV2WithdrawalManager | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x2db11a...3fc725`](./contracts/ethereum-1/0x2db11a6263c068d530ee8b82a25e715d463fc725/); ethereum `0x67db53...c45949`; base `0x920296...56655e`; base `0xd055b4...031f38`; arbitrum `0x71c492...e53110`; arbitrum `0xdb2da1...efa661` | ⚠️ Unaudited |
| CsigmaV3Pool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x6a4605...5dbb72`](./contracts/ethereum-1/0x6a460564ccc601d2cd15399d8ebe52448b5dbb72/); ethereum `0xdbf149...02eb22`; ethereum `0xe3bf45...1b60b4` | ⚠️ Unaudited |
| CsigmaV3WithdrawalManager | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x5076d8...29a73f`](./contracts/ethereum-1/0x5076d83e5e6c750f783f8cd9990ea0508d29a73f/); ethereum `0x9264fe...fe73d4`; ethereum `0x9d6812...1a0c2e`; ethereum `0xa3a8cb...966906` | ⚠️ Unaudited |
| Diamond | unknown | ethereum | n/a | [`0x2cbf4a...620235`](./contracts/ethereum-1/0x2cbf4af96019f29ddc61438d20b11c77f3620235/) | ⚠️ Unaudited |
| DiamondInit | unknown | ethereum | n/a | [`0x7fa701...314a8d`](./contracts/ethereum-1/0x7fa7015f2859160db9311a924e8ce08b86314a8d/) | ⚠️ Unaudited |
| StakingPlatform | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2851e9...b695ca`](./contracts/ethereum-1/0x2851e986bb80466a36e8c13817a9df95c4b695ca/); ethereum `0x4e8a07...9836a3`; ethereum `0x71ddb7...c75973` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | n/a | [`0x447683...8172cc`](./contracts/ethereum-1/0x447683715f000cfeaf8d2c6c23a6b501408172cc/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x15ccd7...a33e8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3283f3...8cf05a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b40e2...5317df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4010cd...ebdded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ff9e9...701eb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f3474...c27930` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7938b7...7c5733` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0002e...dd29a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8d6bf...1e6db2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc01e4...db6182` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe58735...505da5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cSigma Edge Audit Report - QuillAudits.pdf](https://github.com/csigma-labs/audit-reports/blob/main/cSigma%20Edge%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2024-12 | aging | Direct | contract_name | 5 | high |
| [cSigma Institutional Audit Report - Immunebytes.pdf](https://github.com/csigma-labs/audit-reports/blob/main/cSigma%20Institutional%20Audit%20Report%20-%20Immunebytes.pdf) | Immunebytes | Audit | n/a | unknown | Direct | contract_name | 3 | medium |
| [cSigma Token Audit Report - QuillAudits.pdf](https://github.com/csigma-labs/audit-reports/blob/main/cSigma%20Token%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2024-11 | aging | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x6132de...75cf1a`](./contracts/arbitrum-42161/0x6132dea8db86c68fa18be318ffcb9ecb9475cf1a/) | CsigmaPermissionedFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x85e700...534e17`](./contracts/base-8453/0x85e700e92dde9904009ac116251b5598c8534e17/) | CsigmaPermissionedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25f7e3...9dacb9`](./contracts/ethereum-1/0x25f7e3b56bf360250f94307fb22aa9b8049dacb9/) | CsigmaPermissionedWithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2db11a...3fc725`](./contracts/ethereum-1/0x2db11a6263c068d530ee8b82a25e715d463fc725/) | CsigmaV2WithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a4605...5dbb72`](./contracts/ethereum-1/0x6a460564ccc601d2cd15399d8ebe52448b5dbb72/) | CsigmaV3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5076d8...29a73f`](./contracts/ethereum-1/0x5076d83e5e6c750f783f8cd9990ea0508d29a73f/) | CsigmaV3WithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cbf4a...620235`](./contracts/ethereum-1/0x2cbf4af96019f29ddc61438d20b11c77f3620235/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fa701...314a8d`](./contracts/ethereum-1/0x7fa7015f2859160db9311a924e8ce08b86314a8d/) | DiamondInit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2851e9...b695ca`](./contracts/ethereum-1/0x2851e986bb80466a36e8c13817a9df95c4b695ca/) | StakingPlatform | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x447683...8172cc`](./contracts/ethereum-1/0x447683715f000cfeaf8d2c6c23a6b501408172cc/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=90

Zero-match audit list:

- [2030] cSigma Token Audit Report - QuillAudits.pdf

Fork inheritance lineage and inherited audits are included when available.
