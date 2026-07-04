# Agentic Audit Brief: Theo

## Project Overview

- Project: Theo (`theo`)
- Website: [https://app.theo.xyz/invite?invite=defillama](https://app.theo.xyz/invite?invite=defillama)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:01.269Z
- Pipeline run: v2-2026-07-02-1ba3fd
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

- Coverage of deployed-live implementations: 0/34 (0.0%)
- Deployed-live implementations: 34 of 34 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/34
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 34
- Raw deployments: 34
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 4 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Delta | unknown | ethereum | n/a | [`0x060d85...6d0e9c`](./contracts/ethereum-1/0x060d8503a9a552a4600abbc5e741b8bed06d0e9c/) | ⚠️ Unaudited |
| DeltaManager | unknown | ethereum | n/a | [`0x145420...f3e859`](./contracts/ethereum-1/0x14542032f6a696231b3cf868e1811898c6f3e859/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x9e31aa...5301dc`](./contracts/ethereum-1/0x9e31aa691cfeb47276727793ccb29984625301dc/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xa6ab7b...6cb25f`](./contracts/ethereum-1/0xa6ab7ba3ea0c0016de31826682789371bc6cb25f/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x98c23e...e16f5c`](./contracts/ethereum-1/0x98c23e9d8f34fefb1b7bd6a91b7ff122f4e16f5c/) | ⚠️ Unaudited |
| IToken | unknown | ethereum | n/a | [`0x325478...9ba519`](./contracts/ethereum-1/0x325478a069b0dbbdfbee909fa3741f84259ba519/) | ⚠️ Unaudited |
| KYC | unknown | ethereum | n/a | [`0x39ade9...8ce028`](./contracts/ethereum-1/0x39ade913407b5da446c7d1e1e6a7421b7c8ce028/) | ⚠️ Unaudited |
| KYCUltra | unknown | arbitrum | n/a | [`0x17b7bf...fa11f2`](./contracts/arbitrum-42161/0x17b7bf7cf11f879a97f2790baaad698a50fa11f2/) | ⚠️ Unaudited |
| MintCoordinator | unknown | ethereum | n/a | [`0x8a095d...85f1eb`](./contracts/ethereum-1/0x8a095d7ecba36d19c4d9a8389d9d7da0ee85f1eb/) | ⚠️ Unaudited |
| PredepositClaim | unknown | ethereum | n/a | [`0x10456b...996650`](./contracts/ethereum-1/0x10456b3b0fb9f5f8141d38edf180ad9342996650/) | ⚠️ Unaudited |
| SafeProxy | unknown | ethereum | n/a | [`0x948776...601295`](./contracts/ethereum-1/0x94877640dd9e6f1e3cb56bf7b5665b7152601295/) | ⚠️ Unaudited |
| SthUSD | unknown | ethereum | n/a | [`0x342487...5a7dc3`](./contracts/ethereum-1/0x342487f9fe31d199dda8c89a1c34cc647c5a7dc3/) | ⚠️ Unaudited |
| SthUSDRewards | unknown | ethereum | n/a | [`0x4775a4...c4c9e8`](./contracts/ethereum-1/0x4775a42121f251f41790257983b9d0234bc4c9e8/) | ⚠️ Unaudited |
| StUSD | unknown | ethereum | n/a | [`0x1bd515...8d8628`](./contracts/ethereum-1/0x1bd5154221ac5f57c1b8f4bbadb6d46f9a8d8628/) | ⚠️ Unaudited |
| ThBillHyperliquidComposer | unknown | hyperliquid | n/a | [`0xabb13a...cc3923`](./contracts/hyperliquid-999/0xabb13ab90f90aa195af77a50b3f4b25a74cc3923/) | ⚠️ Unaudited |
| ThBillOFT | unknown | hyperliquid | n/a | [`0xfdd22c...f55a5a`](./contracts/hyperliquid-999/0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a/) | ⚠️ Unaudited |
| ThBillOFTAdapter | unknown | ethereum | n/a | [`0xfdd22c...f55a5a`](./contracts/ethereum-1/0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a/) | ⚠️ Unaudited |
| TheoTUltraOracle | unknown | ethereum | n/a | [`0x2fb6f0...42f9ce`](./contracts/ethereum-1/0x2fb6f063c1950100db45492f1c359d809d42f9ce/) | ⚠️ Unaudited |
| TheoWhitelist | unknown | ethereum | n/a | [`0x14d38a...11f388`](./contracts/ethereum-1/0x14d38a3ed85ebddb3e22ff022e38e645a311f388/) | ⚠️ Unaudited |
| ThUSD | unknown | ethereum | n/a | [`0x2332e0...359e2c`](./contracts/ethereum-1/0x2332e0df18ad299847b71ed6b8ebd74341359e2c/) | ⚠️ Unaudited |
| ThUSDMinter | unknown | ethereum | n/a | [`0x2c2347...972f64`](./contracts/ethereum-1/0x2c2347f3cf2275bda88a7a222f08f888e0972f64/) | ⚠️ Unaudited |
| ThUSDOFT | unknown | arbitrum | n/a | [`0x9aa9aa...14b065`](./contracts/arbitrum-42161/0x9aa9aa0530a6af70ee7bc47cf1240100f514b065/) | ⚠️ Unaudited |
| ThUSDOFTAdapter | unknown | ethereum | n/a | [`0x9aa9aa...14b065`](./contracts/ethereum-1/0x9aa9aa0530a6af70ee7bc47cf1240100f514b065/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x46a9ca...ef8bc2`](./contracts/ethereum-1/0x46a9ca32d5c7c866336e75765b099b669fef8bc2/) | ⚠️ Unaudited |
| TTokenRouter | unknown | ethereum | n/a | [`0x11ae0d...7b9076`](./contracts/ethereum-1/0x11ae0ddca63e7a6ed11e575cf497fa69f27b9076/) | ⚠️ Unaudited |
| TTokenRouterV2 | unknown | ethereum | n/a | [`0x8a2c30...505eb1`](./contracts/ethereum-1/0x8a2c307d1462ff4fa98c9c119d3a3457ad505eb1/) | ⚠️ Unaudited |
| TTokenRouterV3 | unknown | ethereum | n/a | [`0x9e7a82...2df621`](./contracts/ethereum-1/0x9e7a82cb1705bc5cb3c5500d96d166123e2df621/) | ⚠️ Unaudited |
| TTokenV2 | unknown | ethereum | n/a | [`0xa6844c...d8f083`](./contracts/ethereum-1/0xa6844c9030f2717955f77801edbfb3480ad8f083/) | ⚠️ Unaudited |
| TTokenV3 | unknown | ethereum | n/a | [`0x1aa000...a0fdda`](./contracts/ethereum-1/0x1aa000527eb3ec9cff8168d8ff96513469a0fdda/) | ⚠️ Unaudited |
| TULTRAV2 | unknown | ethereum | n/a | [`0x985b60...ea1b54`](./contracts/ethereum-1/0x985b600c534f7a8599b1df1b9e23bfc94aea1b54/) | ⚠️ Unaudited |
| TULTRAV3 | unknown | ethereum | n/a | [`0x4d0fce...3e5248`](./contracts/ethereum-1/0x4d0fcefff18dbdfe8ada61b51f0caed4b33e5248/) | ⚠️ Unaudited |
| Ultra | unknown | arbitrum | n/a | [`0x145420...f3e859`](./contracts/arbitrum-42161/0x14542032f6a696231b3cf868e1811898c6f3e859/) | ⚠️ Unaudited |
| UltraManager | unknown | ethereum | n/a | [`0x0f37ee...ab5ac6`](./contracts/ethereum-1/0x0f37eedfe1f6e010254135bdfed0255f79ab5ac6/) | ⚠️ Unaudited |
| UltraManagerFiat | unknown | arbitrum | n/a | [`0x060d85...6d0e9c`](./contracts/arbitrum-42161/0x060d8503a9a552a4600abbc5e741b8bed06d0e9c/) | ⚠️ Unaudited |

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
| [ThUSD - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/ThUSD%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |
| [Theo Tokenized Staking Vault - Zenith Audit Report.pdf](https://github.com/zenith-security/reports/blob/main/reports/Theo%20Tokenized%20Staking%20Vault%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [Theo-security-review_2026-03-19.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Theo-security-review_2026-03-19.pdf) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [Theo - Zenith Audit Report.pdf](https://github.com/zenith-security/reports/blob/main/reports/Theo%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [spaces/C2o2dJlijOInJR8UAhrX/uploads/p1lutmFVHrdK8qIa7Cwu/ThUSD - Zellic Audit Report.pdf](https://1433280965-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FC2o2dJlijOInJR8UAhrX%2Fuploads%2Fp1lutmFVHrdK8qIa7Cwu%2FThUSD%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Theo-security-review_2026-03-19.md](https://github.com/pashov/audits/blob/master/team/md/Theo-security-review_2026-03-19.md) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21185] ThUSD - Zellic Audit Report.pdf
- [21186] Theo Tokenized Staking Vault - Zenith Audit Report.pdf
- [21187] Theo-security-review_2026-03-19.pdf
- [21188] Theo - Zenith Audit Report.pdf
- [21189] spaces/C2o2dJlijOInJR8UAhrX/uploads/p1lutmFVHrdK8qIa7Cwu/ThUSD - Zellic Audit Report.pdf
- [21190] Theo-security-review_2026-03-19.md

Fork inheritance lineage and inherited audits are included when available.
