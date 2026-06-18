# Agentic Audit Brief: Bunny

⚠️ Lifecycle status: DECLINING - TVL changed 3.9% over 90 days

## Project Overview

- Project: Bunny (`bunny`)
- Website: [https://pancakebunny.finance/](https://pancakebunny.finance/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-18T05:54:08.993Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-94c2
- Chains: bsc
- Contract surface: 18 unique implementations (45 raw deployments)
- DeFi Llama TVL: $3,054,580.71
- On-chain TVL (included contracts): $68,278,839.50
- TVL by chain: Bsc $68,278,839.50

## Project Description

Bunny is primarily a yield optimization protocol that aggregates user deposits into auto-compounding vaults, historically across BSC and Polygon, using strategies such as LP token handling and staking in external platforms like Venus and PancakeSwap. Its broader recorded contract surface also includes historical or ancillary product lines and operational contracts such as MoundTokenBSC, MoundOfferingBSC, VaultMND, VaultQBTBNB, VaultFlipToQBT, PotBunnyLover, PotCakeLover, BankBNB, CompensationTreasury, and safeSwapBNB, so not all deployments should be described as a single BUNNY-reward vault family.

### Architecture

All vaults and pools share the BUNNY token for rewards, minted by BunnyMinterV2 and distributed via BunnyChef and BunnyPool contracts. Price calculators and zap contracts provide shared infrastructure for asset valuation and deposit routing across vaults, while proxy contracts enable upgradeability for most core logic.

## Contract Surface Quality

- Indexed contracts: 446; live-surface contracts included: 45 (45 live, 0 unknown).
- Excluded by liveness: 260 inactive, 141 singleton, 0 uninitialized.
- Deployment units: 10/79 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 5/35.

## Audit Coverage Summary

- Verified implementations audited: 7/18 (38.9%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 18
- Raw deployments: 45
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $67,796,491.90
- Latest audit: 2021-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $67,796,491.90 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 7 | 38.9% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BunnyToken | token | bsc | n/a | [`0xc9849e...a11a51`](./contracts/bsc-56/0xc9849e6fdb743d08faee3e34dd2d1bc69ea11a51/) | ✅ Audited |
| VaultCakeToCake | core_logic | bsc | unit-35366 | [`0xedfcb7...da28ed`](./contracts/bsc-56/0xedfcb78e73f7ba6ad2d829bf5d462a0924da28ed/) | ✅ Audited |
| BunnyPool | core_logic | bsc | n/a | [`0xcadc8c...d7889d`](./contracts/bsc-56/0xcadc8cb26c8c7cb46500e61171b5f27e9bd7889d/) | ✅ Audited |
| VaultCakeToCake | core_logic | bsc | n/a | [`0x537a7c...9e354a`](./contracts/bsc-56/0x537a7c41f3dff2dcb9018cec636b42069d9e354a/) | ✅ Audited |
| VaultFlipToCake | core_logic | bsc | unit-35320 (12 proxies) | 12 deployments: bsc [`0x203ee2...f92cb1`](./contracts/bsc-56/0x203ee29ba85bbdfa23bfae5d77620aefdaf92cb1/); bsc `0x74fdc2...3416dd`; bsc `0x7d52a1...11a921`; bsc `0x7f0320...3e2344`; bsc `0x81fa6f...4f9551`; bsc `0xac2092...24eb39`; bsc `0xac7d40...8403fa`; bsc `0xbdd478...0cd702`; bsc `0xc1d9ea...306f77`; bsc `0xd22204...7bb0ad`; bsc `0xf92f12...2c61d7`; bsc `0xfeed0b...a11aac` | ✅ Audited |
| VaultFlipToFlip | core_logic | bsc | unit-35316 | [`0x0d17e7...eb8eaa`](./contracts/bsc-56/0x0d17e7b77c678c79c3ab5176e164ff0bcceb8eaa/) | ✅ Audited |
| VaultFlipToFlip | core_logic | bsc | unit-35324 (6 proxies) | 6 deployments: bsc [`0x285f79...bf1f1f`](./contracts/bsc-56/0x285f793ce97079d4a5712e616afbbb971dbf1f1f/); bsc `0x633e53...71e77b`; bsc `0xa599d6...af00aa`; bsc `0xc341c6...b22ff6`; bsc `0xe0aca3...71ca62`; bsc `0xfdb7d4...70286c` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultQubit | core_logic | bsc | unit-35328 (8 proxies) | 8 deployments: bsc [`0x401c22...e38c9a`](./contracts/bsc-56/0x401c22395200caaae87f8ab9f9446636dde38c9a/); bsc `0x4b107b...0c5729`; bsc `0x4fc359...67b2a6`; bsc `0x53fd20...6f3403`; bsc `0x67c42b...494e46`; bsc `0xb9cf0d...0d6d74`; bsc `0xde80ce...82eea3`; bsc `0xee3ee0...2aced6` | ⚠️ Unaudited |
| MoundTokenBSC | token | bsc | unit-35331 | [`0x4c97c9...f244fe`](./contracts/bsc-56/0x4c97c901b5147f8c1c7ce3c5cf3eb83b44f244fe/) | ⚠️ Unaudited |
| VaultBunnyMaximizer | core_logic | bsc | unit-35357 | [`0xc004a3...667329`](./contracts/bsc-56/0xc004a3b5af216e9c2c59a9ea8bc3ee07af667329/) | ⚠️ Unaudited |
| VaultVenus | core_logic | bsc | unit-35342 (5 proxies) | 5 deployments: bsc [`0x7cd22b...8ed03c`](./contracts/bsc-56/0x7cd22bd5b7a45f952a4f375aa6d5bf08538ed03c/); bsc `0x7d2de1...7b3ee7`; bsc `0xa08a26...e3a208`; bsc `0xa55544...fcb4de`; bsc `0xf70e33...e8de85` | ⚠️ Unaudited |
| BunnyFeeBox | unknown | bsc | unit-35326 | [`0x3749f6...1894bb`](./contracts/bsc-56/0x3749f69b2d99e5586d95d95b6f9b5252c71894bb/) | ⚠️ Unaudited |
| BunnyMinterV2 | unknown | bsc | n/a | [`0xc39c78...72d15d`](./contracts/bsc-56/0xc39c78a5e90a57a030bcffc6ae5fadb14d72d15d/) | ⚠️ Unaudited |
| CakeFlipVault | core_logic | bsc | n/a | [`0x23b68a...8f3891`](./contracts/bsc-56/0x23b68a3c008512a849981b6e69bbac16048f3891/) | ⚠️ Unaudited |
| DashboardBSC | unknown | bsc | n/a | [`0x41cbb9...c549fe`](./contracts/bsc-56/0x41cbb968fc4251bdf4894ec05d25aefd35c549fe/) | ⚠️ Unaudited |
| MigrationRewards | operational_periphery | bsc | n/a | [`0x033361...306c83`](./contracts/bsc-56/0x033361ddf05d969ba77bccfc51f49c9ce3306c83/) | ⚠️ Unaudited |
| VaultBunnyBNB | core_logic | bsc | unit-35350 | [`0xa6c29a...783622`](./contracts/bsc-56/0xa6c29a422d1612293669156a34f2793526783622/) | ⚠️ Unaudited |
| ZapBSC | adapter | bsc | n/a | [`0x634456...3dd26b`](./contracts/bsc-56/0x634456be9ab2c2b06f2d77e5c7248fbe0e3dd26b/) | ⚠️ Unaudited |

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
| [[HAECHI AUDIT] PancakeBunny Smart Contract Audit Report ver 2.0.pdf](https://github.com/PancakeBunny-finance/Bunny/blob/main/audits/%5BHAECHI%20AUDIT%5D%20PancakeBunny%20Smart%20Contract%20Audit%20Report%20ver%202.0.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 23 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xc39c78...72d15d`](./contracts/bsc-56/0xc39c78a5e90a57a030bcffc6ae5fadb14d72d15d/) | BunnyMinterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x23b68a...8f3891`](./contracts/bsc-56/0x23b68a3c008512a849981b6e69bbac16048f3891/) | CakeFlipVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x41cbb9...c549fe`](./contracts/bsc-56/0x41cbb968fc4251bdf4894ec05d25aefd35c549fe/) | DashboardBSC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x033361...306c83`](./contracts/bsc-56/0x033361ddf05d969ba77bccfc51f49c9ce3306c83/) | MigrationRewards | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x634456...3dd26b`](./contracts/bsc-56/0x634456be9ab2c2b06f2d77e5c7248fbe0e3dd26b/) | ZapBSC | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=70

Fork inheritance lineage and inherited audits are included when available.
