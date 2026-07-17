# Agentic Audit Brief: Theo

## Project Overview

- Project: Theo (`theo`)
- Website: [https://app.theo.xyz/invite?invite=defillama](https://app.theo.xyz/invite?invite=defillama)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.434Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: arbitrum, ethereum, hyperliquid
- Contract surface: 34 unique implementations (34 raw deployments)
- DeFi Llama TVL: $95,982,429.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 29 project-authored contract(s) across 3 chain(s); 4 ERC4626 vaults, 6 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 3 functional families. Its contracts share 20 common project-authored base contract(s) (erc165, contextupgradeable, erc20upgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 34; live-surface contracts included: 34 (34 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/29 (27.6%)
- Deployed-live implementations: 34 of 34 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/34
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 34
- Raw deployments: 34
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 5 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 4 | 11.8% | 2026-04 |
| Zenith | Tier 2 | 4 | 11.8% | 2026-03 |
| Pashov Audit Group | Tier 2 | 1 | 2.9% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| IToken | unknown | ethereum | n/a | [`0x325478a069b0dbbdfbee909fa3741f84259ba519`](./contracts/ethereum-1/0x325478a069b0dbbdfbee909fa3741f84259ba519/) | ✅ Audited |
| SthUSD | unknown | ethereum | n/a | [`0x342487f9fe31d199dda8c89a1c34cc647c5a7dc3`](./contracts/ethereum-1/0x342487f9fe31d199dda8c89a1c34cc647c5a7dc3/) | ✅ Audited |
| SthUSDRewards | unknown | ethereum | n/a | [`0x4775a42121f251f41790257983b9d0234bc4c9e8`](./contracts/ethereum-1/0x4775a42121f251f41790257983b9d0234bc4c9e8/) | ✅ Audited |
| StUSD | unknown | ethereum | n/a | [`0x1bd5154221ac5f57c1b8f4bbadb6d46f9a8d8628`](./contracts/ethereum-1/0x1bd5154221ac5f57c1b8f4bbadb6d46f9a8d8628/) | ✅ Audited |
| TheoWhitelist | unknown | ethereum | n/a | [`0x14d38a3ed85ebddb3e22ff022e38e645a311f388`](./contracts/ethereum-1/0x14d38a3ed85ebddb3e22ff022e38e645a311f388/) | ✅ Audited |
| ThUSD | unknown | ethereum | n/a | [`0x2332e0df18ad299847b71ed6b8ebd74341359e2c`](./contracts/ethereum-1/0x2332e0df18ad299847b71ed6b8ebd74341359e2c/) | ✅ Audited |
| ThUSDMinter | unknown | ethereum | n/a | [`0x2c2347f3cf2275bda88a7a222f08f888e0972f64`](./contracts/ethereum-1/0x2c2347f3cf2275bda88a7a222f08f888e0972f64/) | ✅ Audited |
| TTokenRouter | unknown | ethereum | n/a | [`0x11ae0ddca63e7a6ed11e575cf497fa69f27b9076`](./contracts/ethereum-1/0x11ae0ddca63e7a6ed11e575cf497fa69f27b9076/) | ✅ Audited |

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Delta | unknown | ethereum | n/a | [`0x060d8503a9a552a4600abbc5e741b8bed06d0e9c`](./contracts/ethereum-1/0x060d8503a9a552a4600abbc5e741b8bed06d0e9c/) | ⚠️ Unaudited |
| DeltaManager | unknown | ethereum | n/a | [`0x14542032f6a696231b3cf868e1811898c6f3e859`](./contracts/ethereum-1/0x14542032f6a696231b3cf868e1811898c6f3e859/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x9e31aa691cfeb47276727793ccb29984625301dc`](./contracts/ethereum-1/0x9e31aa691cfeb47276727793ccb29984625301dc/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xa6ab7ba3ea0c0016de31826682789371bc6cb25f`](./contracts/ethereum-1/0xa6ab7ba3ea0c0016de31826682789371bc6cb25f/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c`](./contracts/ethereum-1/0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c/) | ⚠️ Unaudited |
| KYC | unknown | ethereum | n/a | [`0x39ade913407b5da446c7d1e1e6a7421b7c8ce028`](./contracts/ethereum-1/0x39ade913407b5da446c7d1e1e6a7421b7c8ce028/) | ⚠️ Unaudited |
| KYCUltra | unknown | arbitrum | n/a | [`0x17b7bf7cf11f879a97f2790baaad698a50fa11f2`](./contracts/arbitrum-42161/0x17b7bf7cf11f879a97f2790baaad698a50fa11f2/) | ⚠️ Unaudited |
| MintCoordinator | unknown | ethereum | n/a | [`0x8a095d7ecba36d19c4d9a8389d9d7da0ee85f1eb`](./contracts/ethereum-1/0x8a095d7ecba36d19c4d9a8389d9d7da0ee85f1eb/) | ⚠️ Unaudited |
| PredepositClaim | unknown | ethereum | n/a | [`0x10456b3b0fb9f5f8141d38edf180ad9342996650`](./contracts/ethereum-1/0x10456b3b0fb9f5f8141d38edf180ad9342996650/) | ⚠️ Unaudited |
| SafeProxy | unknown | ethereum | n/a | [`0x94877640dd9e6f1e3cb56bf7b5665b7152601295`](./contracts/ethereum-1/0x94877640dd9e6f1e3cb56bf7b5665b7152601295/) | ⚠️ Unaudited |
| ThBillHyperliquidComposer | unknown | hyperliquid | n/a | [`0xabb13ab90f90aa195af77a50b3f4b25a74cc3923`](./contracts/hyperliquid-999/0xabb13ab90f90aa195af77a50b3f4b25a74cc3923/) | ⚠️ Unaudited |
| ThBillOFT | unknown | hyperliquid | n/a | [`0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a`](./contracts/hyperliquid-999/0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a/) | ⚠️ Unaudited |
| ThBillOFTAdapter | unknown | ethereum | n/a | [`0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a`](./contracts/ethereum-1/0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a/) | ⚠️ Unaudited |
| TheoTUltraOracle | unknown | ethereum | n/a | [`0x2fb6f063c1950100db45492f1c359d809d42f9ce`](./contracts/ethereum-1/0x2fb6f063c1950100db45492f1c359d809d42f9ce/) | ⚠️ Unaudited |
| ThUSDOFT | unknown | arbitrum | n/a | [`0x9aa9aa0530a6af70ee7bc47cf1240100f514b065`](./contracts/arbitrum-42161/0x9aa9aa0530a6af70ee7bc47cf1240100f514b065/) | ⚠️ Unaudited |
| ThUSDOFTAdapter | unknown | ethereum | n/a | [`0x9aa9aa0530a6af70ee7bc47cf1240100f514b065`](./contracts/ethereum-1/0x9aa9aa0530a6af70ee7bc47cf1240100f514b065/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x46a9ca32d5c7c866336e75765b099b669fef8bc2`](./contracts/ethereum-1/0x46a9ca32d5c7c866336e75765b099b669fef8bc2/) | ⚠️ Unaudited |
| TTokenRouterV2 | unknown | ethereum | n/a | [`0x8a2c307d1462ff4fa98c9c119d3a3457ad505eb1`](./contracts/ethereum-1/0x8a2c307d1462ff4fa98c9c119d3a3457ad505eb1/) | ⚠️ Unaudited |
| TTokenRouterV3 | unknown | ethereum | n/a | [`0x9e7a82cb1705bc5cb3c5500d96d166123e2df621`](./contracts/ethereum-1/0x9e7a82cb1705bc5cb3c5500d96d166123e2df621/) | ⚠️ Unaudited |
| TTokenV2 | unknown | ethereum | n/a | [`0xa6844c9030f2717955f77801edbfb3480ad8f083`](./contracts/ethereum-1/0xa6844c9030f2717955f77801edbfb3480ad8f083/) | ⚠️ Unaudited |
| TTokenV3 | unknown | ethereum | n/a | [`0x1aa000527eb3ec9cff8168d8ff96513469a0fdda`](./contracts/ethereum-1/0x1aa000527eb3ec9cff8168d8ff96513469a0fdda/) | ⚠️ Unaudited |
| TULTRAV2 | unknown | ethereum | n/a | [`0x985b600c534f7a8599b1df1b9e23bfc94aea1b54`](./contracts/ethereum-1/0x985b600c534f7a8599b1df1b9e23bfc94aea1b54/) | ⚠️ Unaudited |
| TULTRAV3 | unknown | ethereum | n/a | [`0x4d0fcefff18dbdfe8ada61b51f0caed4b33e5248`](./contracts/ethereum-1/0x4d0fcefff18dbdfe8ada61b51f0caed4b33e5248/) | ⚠️ Unaudited |
| Ultra | unknown | arbitrum | n/a | [`0x14542032f6a696231b3cf868e1811898c6f3e859`](./contracts/arbitrum-42161/0x14542032f6a696231b3cf868e1811898c6f3e859/) | ⚠️ Unaudited |
| UltraManager | unknown | ethereum | n/a | [`0x0f37eedfe1f6e010254135bdfed0255f79ab5ac6`](./contracts/ethereum-1/0x0f37eedfe1f6e010254135bdfed0255f79ab5ac6/) | ⚠️ Unaudited |
| UltraManagerFiat | unknown | arbitrum | n/a | [`0x060d8503a9a552a4600abbc5e741b8bed06d0e9c`](./contracts/arbitrum-42161/0x060d8503a9a552a4600abbc5e741b8bed06d0e9c/) | ⚠️ Unaudited |

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
| [ThUSD - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/ThUSD%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2026-04 | fresh | Direct | contract_name | 4 | high |
| [Theo Tokenized Staking Vault - Zenith Audit Report.pdf](https://github.com/zenith-security/reports/blob/main/reports/Theo%20Tokenized%20Staking%20Vault%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [Theo-security-review_2026-03-19.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Theo-security-review_2026-03-19.pdf) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | 1 | high |
| [Theo - Zenith Audit Report.pdf](https://github.com/zenith-security/reports/blob/main/reports/Theo%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2025-07 | aging | Direct | contract_name | 3 | high |
| [spaces/C2o2dJlijOInJR8UAhrX/uploads/p1lutmFVHrdK8qIa7Cwu/ThUSD - Zellic Audit Report.pdf](https://1433280965-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FC2o2dJlijOInJR8UAhrX%2Fuploads%2Fp1lutmFVHrdK8qIa7Cwu%2FThUSD%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2026-04 | fresh | Direct | contract_name | 4 | high |
| [Theo-security-review_2026-03-19.md](https://github.com/pashov/audits/blob/master/team/md/Theo-security-review_2026-03-19.md) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x060d8503a9a552a4600abbc5e741b8bed06d0e9c`](./contracts/ethereum-1/0x060d8503a9a552a4600abbc5e741b8bed06d0e9c/) | Delta | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14542032f6a696231b3cf868e1811898c6f3e859`](./contracts/ethereum-1/0x14542032f6a696231b3cf868e1811898c6f3e859/) | DeltaManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39ade913407b5da446c7d1e1e6a7421b7c8ce028`](./contracts/ethereum-1/0x39ade913407b5da446c7d1e1e6a7421b7c8ce028/) | KYC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x17b7bf7cf11f879a97f2790baaad698a50fa11f2`](./contracts/arbitrum-42161/0x17b7bf7cf11f879a97f2790baaad698a50fa11f2/) | KYCUltra | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a095d7ecba36d19c4d9a8389d9d7da0ee85f1eb`](./contracts/ethereum-1/0x8a095d7ecba36d19c4d9a8389d9d7da0ee85f1eb/) | MintCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10456b3b0fb9f5f8141d38edf180ad9342996650`](./contracts/ethereum-1/0x10456b3b0fb9f5f8141d38edf180ad9342996650/) | PredepositClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xabb13ab90f90aa195af77a50b3f4b25a74cc3923`](./contracts/hyperliquid-999/0xabb13ab90f90aa195af77a50b3f4b25a74cc3923/) | ThBillHyperliquidComposer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a`](./contracts/hyperliquid-999/0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a/) | ThBillOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a`](./contracts/ethereum-1/0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a/) | ThBillOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fb6f063c1950100db45492f1c359d809d42f9ce`](./contracts/ethereum-1/0x2fb6f063c1950100db45492f1c359d809d42f9ce/) | TheoTUltraOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9aa9aa0530a6af70ee7bc47cf1240100f514b065`](./contracts/arbitrum-42161/0x9aa9aa0530a6af70ee7bc47cf1240100f514b065/) | ThUSDOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9aa9aa0530a6af70ee7bc47cf1240100f514b065`](./contracts/ethereum-1/0x9aa9aa0530a6af70ee7bc47cf1240100f514b065/) | ThUSDOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a2c307d1462ff4fa98c9c119d3a3457ad505eb1`](./contracts/ethereum-1/0x8a2c307d1462ff4fa98c9c119d3a3457ad505eb1/) | TTokenRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e7a82cb1705bc5cb3c5500d96d166123e2df621`](./contracts/ethereum-1/0x9e7a82cb1705bc5cb3c5500d96d166123e2df621/) | TTokenRouterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6844c9030f2717955f77801edbfb3480ad8f083`](./contracts/ethereum-1/0xa6844c9030f2717955f77801edbfb3480ad8f083/) | TTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1aa000527eb3ec9cff8168d8ff96513469a0fdda`](./contracts/ethereum-1/0x1aa000527eb3ec9cff8168d8ff96513469a0fdda/) | TTokenV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x985b600c534f7a8599b1df1b9e23bfc94aea1b54`](./contracts/ethereum-1/0x985b600c534f7a8599b1df1b9e23bfc94aea1b54/) | TULTRAV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d0fcefff18dbdfe8ada61b51f0caed4b33e5248`](./contracts/ethereum-1/0x4d0fcefff18dbdfe8ada61b51f0caed4b33e5248/) | TULTRAV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x14542032f6a696231b3cf868e1811898c6f3e859`](./contracts/arbitrum-42161/0x14542032f6a696231b3cf868e1811898c6f3e859/) | Ultra | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f37eedfe1f6e010254135bdfed0255f79ab5ac6`](./contracts/ethereum-1/0x0f37eedfe1f6e010254135bdfed0255f79ab5ac6/) | UltraManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x060d8503a9a552a4600abbc5e741b8bed06d0e9c`](./contracts/arbitrum-42161/0x060d8503a9a552a4600abbc5e741b8bed06d0e9c/) | UltraManagerFiat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=14

Fork inheritance lineage and inherited audits are included when available.
