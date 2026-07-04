# Agentic Audit Brief: HOPE Money

## Project Overview

- Project: HOPE Money (`hope-money`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.634Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: ethereum
- Contract surface: 44 unique implementations (70 raw deployments)
- DeFi Llama TVL: $1,307,534.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 120 project-authored contract(s) across 1 chain(s); 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 13 common project-authored base contract(s) (proxy, erc1967upgrade, accesscontrolupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 135; live-surface contracts included: 55 (53 live, 2 unknown).
- Excluded by liveness: 80 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 15/42 (35.7%)
- Deployed-live implementations: 42 of 44 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/42
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 44
- Raw deployments: 70
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 15 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 26.2% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 11 | 26.2% | 2023-03 |
| PeckShield | Tier 2 | 7 | 16.7% | 2023-04 |
| CertiK | Tier 2 | 6 | 14.3% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ApprovedTokenManager | unknown | ethereum | n/a | [`0x2ca1f5...173c78`](./contracts/ethereum-1/0x2ca1f5e429d423701052222e598e036016173c78/) | ✅ Audited |
| BurnerManager | unknown | ethereum | n/a | [`0x0d80a7...966066`](./contracts/ethereum-1/0x0d80a72c9f98e5b1c7fb3e3dc4d58aeca5966066/) | ✅ Audited |
| FeeDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x60498d...7285bb`](./contracts/ethereum-1/0x60498d57c18737f0a37e43f9bc20a3ce937285bb/); ethereum `0x99040c...2bb697` | ✅ Audited |
| GaugeController | unknown | ethereum | n/a | [`0xa8b270...b4dd7e`](./contracts/ethereum-1/0xa8b2706b45eb95e5d14f8c29a3c5cf0cd5b4dd7e/) | ✅ Audited |
| GaugeFeeDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0xdedd17...3c48ed`](./contracts/ethereum-1/0xdedd17f3f3d6af647b94b77fa0d97983003c48ed/); ethereum `0xe0530d...898a84` | ✅ Audited |
| HOPE | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8f9bd4...03c61e`](./contracts/ethereum-1/0x8f9bd4f6b88c46657aab889f1150b0521203c61e/); ethereum `0xc353bf...68f98e` | ✅ Audited |
| HOPE | unknown | ethereum | n/a | [`0xe4a14f...848e84`](./contracts/ethereum-1/0xe4a14f5a293274ee3fae3958895a22e6fc848e84/) | ✅ Audited |
| HopeSwapBurner | unknown | ethereum | n/a | [`0xd32864...acea42`](./contracts/ethereum-1/0xd32864ff55aa1ceabace9d3e57bb113461acea42/) | ✅ Audited |
| LT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9ed143...9a735b`](./contracts/ethereum-1/0x9ed1439d328647bdb148c20316ea024c719a735b/); ethereum `0xd708e5...8ed019` | ✅ Audited |
| PoolGauge | unknown | ethereum | n/a | [`0x3f954d...7908aa`](./contracts/ethereum-1/0x3f954d5db340578773218388d8327035db7908aa/) | ✅ Audited |
| StakingHOPE | unknown | ethereum | n/a | [`0xf5c6d9...9fd4d8`](./contracts/ethereum-1/0xf5c6d9fc73991f687f158fe30d4a77691a9fd4d8/) | ✅ Audited |
| SwapFeeToVault | unknown | ethereum | n/a | [`0xda9c43...f42f23`](./contracts/ethereum-1/0xda9c43a13a82b0d0292cf38e18fa71a0a9f42f23/) | ✅ Audited |
| UnderlyingBurner | unknown | ethereum | n/a | [`0xd61fd6...cadc97`](./contracts/ethereum-1/0xd61fd63a466dee970eea49ef109283a57acadc97/) | ✅ Audited |
| UniswapV2Router02 | adapter | ethereum | n/a | [`0x219bd2...5051e9`](./contracts/ethereum-1/0x219bd2d1449f3813c01204ee455d11b41d5051e9/) | ✅ Audited |
| VotingEscrow | unknown | ethereum | n/a | [`0xe909f3...b67400`](./contracts/ethereum-1/0xe909f37f3003fa37aad83c1baf2a98e5a7b67400/) | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| brBTC | unknown | ethereum | n/a | [`0x2ec37d...8f6646`](./contracts/ethereum-1/0x2ec37d45fcae65d9787ecf71dc85a444968f6646/) | ⚠️ Unaudited |
| brVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1419b4...0e3386`](./contracts/ethereum-1/0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386/); ethereum `0xc7d81a...8334c7` | ⚠️ Unaudited |
| CCIPPeer | unknown | ethereum | n/a | [`0x55a67c...b60edc`](./contracts/ethereum-1/0x55a67cf07b8a9a09fb6d565279287cfe4ab60edc/) | ⚠️ Unaudited |
| DelayRedeemRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x720081...eb859d`](./contracts/ethereum-1/0x720081e3ee2b1542e341afc793de20b08beb859d/); ethereum `0xaa732c...f89246` | ⚠️ Unaudited |
| directBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x11964b...09954b`](./contracts/ethereum-1/0x11964b366f794ae56717e8efa05d31ab2a09954b/); ethereum `0xa70099...c0b090` | ⚠️ Unaudited |
| DirectBTCMinter | unknown | ethereum | n/a | [`0x91fd8c...d64500`](./contracts/ethereum-1/0x91fd8c7a5fda7d52ab41bbe423eedd3a65d64500/) | ⚠️ Unaudited |
| DirectStaking | unknown | ethereum | n/a | [`0xe8239b...5c4572`](./contracts/ethereum-1/0xe8239b17034c372cdf8a5f8d3ccb7cf1795c4572/) | ⚠️ Unaudited |
| HToken | token | ethereum | n/a | 7 deployments: ethereum [`0x1fc2dd...2c9386`](./contracts/ethereum-1/0x1fc2dd0dcb64e0159b0474cfe6e45985522c9386/); ethereum `0x25126f...403907`; ethereum `0x396856...a4323e`; ethereum `0x58792e...f74d90`; ethereum `0x5dd30e...303572`; ethereum `0x6090f3...51b749`; ethereum `0xb3cc0a...334e62` | ⚠️ Unaudited |
| LightTeamVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6a1207...9d82c3`](./contracts/ethereum-1/0x6a120782dc421ef28f148ee1fee8a09bc59d82c3/); ethereum `0xdd42df...e54513` | ⚠️ Unaudited |
| LightTeamVaultManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x045087...a20a91`](./contracts/ethereum-1/0x045087cbb64b35a31845b6e720c17f443ea20a91/); ethereum `0xedb47d...b3c0bc` | ⚠️ Unaudited |
| Payment | unknown | ethereum | n/a | 2 deployments: ethereum [`0x552b0c...42fa05`](./contracts/ethereum-1/0x552b0c6688fcae5cf0164f27fd129b882a42fa05/); ethereum `0x9203ce...718031` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9f6326...e7f002`](./contracts/ethereum-1/0x9f63269196a8828f05f2e49d1078ea7c44e7f002/); ethereum `0xcc0f98...a3bd39` | ⚠️ Unaudited |
| Redeem | unknown | ethereum | n/a | 2 deployments: ethereum [`0x981692...1d3b8d`](./contracts/ethereum-1/0x98169228cb99ed26c1043ed8ca53a5cb371d3b8d/); ethereum `0x9ca778...3c5f8c` | ⚠️ Unaudited |
| Restaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1e4d0a...c4e518`](./contracts/ethereum-1/0x1e4d0a963953e7c08fc7602b01e683547fc4e518/); ethereum `0x3f4eac...6e9850` | ⚠️ Unaudited |
| RewardPool | unknown | ethereum | n/a | [`0xb7019c...732064`](./contracts/ethereum-1/0xb7019c9184580b2e1f66fcdc3eb6c62621732064/) | ⚠️ Unaudited |
| RockXETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3376eb...61514a`](./contracts/ethereum-1/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/); ethereum `0x58cb26...9d187d` | ⚠️ Unaudited |
| RockXETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x79f2c3...449597`](./contracts/ethereum-1/0x79f2c32204e997d4d49de3d45a6130d627449597/); ethereum `0xd48d3e...905e11` | ⚠️ Unaudited |
| RockXETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8a9486...98e590`](./contracts/ethereum-1/0x8a94866df557bb7fce88eff9917237286098e590/); ethereum `0xf1376b...df51f4` | ⚠️ Unaudited |
| RockXRedeem | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3774af...4ba818`](./contracts/ethereum-1/0x3774af7bb6e792963167588ae85b5ab8664ba818/); ethereum `0x5e3787...58d2f9` | ⚠️ Unaudited |
| RockXRedeem | unknown | ethereum | n/a | 2 deployments: ethereum [`0x89b2c7...740aeb`](./contracts/ethereum-1/0x89b2c722abf9e1c8dd215e4e8352e0f293740aeb/); ethereum `0xdfc7d2...2b511e` | ⚠️ Unaudited |
| RockXStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x02e3e2...af25ea`](./contracts/ethereum-1/0x02e3e2c644601b18ad67a6f09155fe5581af25ea/); ethereum `0x11b380...66be7b` | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0x4befa2...269e9d`](./contracts/ethereum-1/0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d/) | ⚠️ Unaudited |
| UnderlyingBurnerV2 | unknown | ethereum | n/a | [`0x77b3cf...ee5f29`](./contracts/ethereum-1/0x77b3cfcd79f8030fac267da519a1d8e4f6ee5f29/) | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | n/a | [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | n/a | [`0x51a7f8...db6c5e`](./contracts/ethereum-1/0x51a7f889480c57cbeea81614f7d0be2b70db6c5e/) | ⚠️ Unaudited |
| uniBTCRate | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe54291...abc716`](./contracts/ethereum-1/0xe542919e4b281f10b437f947c8ba224ddfabc716/); ethereum `0xf50dba...bcdae9` | ⚠️ Unaudited |
| VaultWithoutNative | unknown | ethereum | n/a | [`0x047d41...10d6da`](./contracts/ethereum-1/0x047d41f2544b7f63a8e991af2068a363d210d6da/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0fe418...dc12f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69fd3e...21bbdb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CertiK-Audit-for-LightDAO-II-v1.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/CertiK-Audit-for-LightDAO-II-v1.pdf) | CertiK | Audit | 2023-04 | stale | Direct | contract_name | 7 | high |
| [PeckShield-Audit-Report-HOPE-v1.2.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/PeckShield-Audit-Report-HOPE-v1.2.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | 9 | high |
| [SlowMist Audit Report - LightDAO Phase1_en-us.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/SlowMist%20Audit%20Report%20-%20LightDAO%20Phase1_en-us.pdf) | SlowMist | Audit | 2023-02 | stale | Direct | contract_name | 7 | high |
| [SlowMist Audit Report - LightDAO Phase2_en-us.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/SlowMist%20Audit%20Report%20-%20LightDAO%20Phase2_en-us.pdf) | SlowMist | Audit | 2023-03 | stale | Direct | contract_name | 7 | high |
| [- [Audits]()](https://docs.hope.money/appendix/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 44 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=30

Zero-match audit list:

- [17440] - [Audits]()

Fork inheritance lineage and inherited audits are included when available.
