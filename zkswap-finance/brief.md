# Agentic Audit Brief: zkSwap Finance

## Project Overview

- Project: zkSwap Finance (`zkswap-finance`)
- Website: [https://zkswap.finance](https://zkswap.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.965Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: sonic, zksync-era
- Contract surface: 55 unique implementations (76 raw deployments)
- DeFi Llama TVL: $843,085.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 30 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 9 common project-authored base contract(s) (peripheryimmutablestate, oft, oftcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 100; live-surface contracts included: 76 (31 live, 45 unknown).
- Excluded by liveness: 24 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/10 (20.0%)
- Deployed-live implementations: 11 of 55 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/11
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 44
- Unique implementations: 55
- Raw deployments: 76
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 18.2% | 2024-01 |
| Bailsec | Tier 2 | 1 | 9.1% | 2024-04 |
| CertiK | Tier 2 | 1 | 9.1% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ZFGovernanceStaking | unknown | sonic | n/a | 5 deployments: sonic [`0x0cc7d6...a171d5`](./contracts/sonic-146/0x0cc7d6da666529841bad1f9d4199f9773aa171d5/); sonic `0x476151...1a9d3f`; sonic `0x54de11...0e106d`; sonic `0xb255ec...e1e876`; sonic `0xcb3d62...c35087` | ✅ Audited |
| ZFRouter | adapter | zksync-era | n/a | 2 deployments: sonic `0xcd219a...5d1822`; zksync-era [`0x18381c...040fa4`](./contracts/zksync-era-324/0x18381c0f738146fb694de18d1106bde2be040fa4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregatorSmart | unknown | sonic | n/a | 4 deployments: sonic [`0x0edd6e...f6f5b3`](./contracts/sonic-146/0x0edd6eced51b0f0ee830d891ba230ac39ff6f5b3/); sonic `0x55dfa5...679d2a`; sonic `0xbd1c10...59ca60`; sonic `0xc9c497...c85849` | ⚠️ Unaudited |
| AggregatorSmartV2 | unknown | sonic | n/a | [`0x7f2038...2aac65`](./contracts/sonic-146/0x7f2038b9a6d80b34dc5ec66208bccfd9332aac65/) | ⚠️ Unaudited |
| BulkSender | unknown | sonic | n/a | [`0xaf02a2...d5533e`](./contracts/sonic-146/0xaf02a22ea072d8a7fc573935aea7152345d5533e/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | sonic | n/a | 2 deployments: sonic [`0x4780ea...7c2262`](./contracts/sonic-146/0x4780ea7fc1fc4c51732ab31d797d4e24757c2262/); sonic `0x825e62...ff1e13` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | n/a | 2 deployments: sonic [`0x2e1164...0094f5`](./contracts/sonic-146/0x2e11640ee1368f2cd90c36607760a274a30094f5/); zksync-era `0xe8a9c6...683860` | ⚠️ Unaudited |
| UniversalRouter | adapter | sonic | n/a | [`0x957dbe...8f18ec`](./contracts/sonic-146/0x957dbef5673822b3db074f6cee6dcd0fa68f18ec/) | ⚠️ Unaudited |
| ZFOFT | unknown | sonic | n/a | 2 deployments: sonic [`0xb62690...197cbf`](./contracts/sonic-146/0xb6269059eef1b6b7d478752ed037bd0dd8197cbf/); sonic `0xd25b7a...ac3891` | ⚠️ Unaudited |
| ZFRewardDistributor | operational_periphery | sonic | n/a | 6 deployments: sonic [`0x66349d...2344fe`](./contracts/sonic-146/0x66349deb1eb7d855894bfde287ac68d0eb2344fe/); sonic `0x78caac...dbc5d5`; sonic `0x807fa0...3e795f`; sonic `0xb2d779...b74de5`; sonic `0xda85e0...d23e8d`; sonic `0xfcc8d3...5d3164` | ⚠️ Unaudited |
| ZFSwap2EarnRewarder | unknown | sonic | n/a | 6 deployments: sonic [`0x3e5239...0cb362`](./contracts/sonic-146/0x3e5239b8b19f2610769a7bcb5e9c876bf90cb362/); sonic `0x43589b...b15843`; sonic `0x4784a5...3a96b7`; sonic `0x750591...93155b`; sonic `0xc98628...1e453c`; sonic `0xf5df07...f47113` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (44)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x1ad6bc...35168a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1e9ebc...fc6e88` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x273fff...eb88cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3ec487...0cf971` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x45728a...4f877a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5ebdc3...a45644` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8328ea...ef1434` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xced359...ceda27` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xead549...c83bb2` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x010012...39e069` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x056f19...dc0c8e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x0d64c4...2238c0` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x12c944...9adf4f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x13bd7a...854042` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x142096...98c08c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x15309a...5b1dd7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x31c330...f479e4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x386bef...63c54c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x470034...c473d5` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4780ea...7c2262` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x484a72...7990a4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4ca2ac...5f1987` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x525990...e4983d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x571407...c5ddab` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x58d8dd...3f3c11` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x5ae21a...1f6eb7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x61278a...48ea9b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x63d8e7...8f19fc` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x6f4fc7...e4c215` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x7ab617...b6bbc7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x825e62...ff1e13` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x9f20a1...64ea28` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x9f9d04...979d67` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xa478bf...2803ab` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xa9e411...a8e100` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xb392e1...097f50` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xb71dca...f961e6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xb76f08...f66b0b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xc008dc...9c0269` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xcd6121...33946f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xdbe9b7...e5ba52` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xf1802d...e6a821` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xf560df...01e53e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xfe6b01...6a41b5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/zkswap-finance](https://skynet.certik.com/projects/zkswap-finance) | CertiK | Audit | 2023-12 | stale | Direct | contract_name | 1 | n/a |
| [ZKSWAP FINANCE AUDIT REPORT.pdf](https://github.com/Vital-block/Smart-Contract-Audit/blob/main/ZKSWAP%20FINANCE%20AUDIT%20REPORT.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | 1 | n/a |
| [0_[Certik]_zkSwap_Finance_Audit_Report.pdf](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/0_%5BCertik%5D_zkSwap_Finance_Audit_Report.pdf) | CertiK | Audit | 2023-12 | stale | Direct | contract_name | 1 | n/a |
| [Bailsec - zkSwap Final Report Github (+Resolution).pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20zkSwap%20Final%20Report%20Github%20(%2BResolution).pdf) | Bailsec | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [SmartContract_Audit_Solidproof_ZkSwapFinance.pdf](https://github.com/solidproof/projects/blob/main/2024/Zkswap%20Finance/SmartContract_Audit_Solidproof_ZkSwapFinance.pdf) | Solidproof | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Farm.pdf](https://github.com/cyberscope-io/audits/blob/main/zkswap-finance/Farm.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [GovernanceStaking.pdf](https://github.com/cyberscope-io/audits/blob/main/zkswap-finance/GovernanceStaking.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | 1 | n/a |
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/zkswap-finance/audit.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x0edd6e...f6f5b3`](./contracts/sonic-146/0x0edd6eced51b0f0ee830d891ba230ac39ff6f5b3/) | AggregatorSmart | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7f2038...2aac65`](./contracts/sonic-146/0x7f2038b9a6d80b34dc5ec66208bccfd9332aac65/) | AggregatorSmartV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xaf02a2...d5533e`](./contracts/sonic-146/0xaf02a22ea072d8a7fc573935aea7152345d5533e/) | BulkSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2e1164...0094f5`](./contracts/sonic-146/0x2e11640ee1368f2cd90c36607760a274a30094f5/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x957dbe...8f18ec`](./contracts/sonic-146/0x957dbef5673822b3db074f6cee6dcd0fa68f18ec/) | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb62690...197cbf`](./contracts/sonic-146/0xb6269059eef1b6b7d478752ed037bd0dd8197cbf/) | ZFOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x66349d...2344fe`](./contracts/sonic-146/0x66349deb1eb7d855894bfde287ac68d0eb2344fe/) | ZFRewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3e5239...0cb362`](./contracts/sonic-146/0x3e5239b8b19f2610769a7bcb5e9c876bf90cb362/) | ZFSwap2EarnRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 44 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=5

Zero-match audit list:

- [3159] SmartContract_Audit_Solidproof_ZkSwapFinance.pdf
- [14821] Farm.pdf
- [14823] audit.pdf

Fork inheritance lineage and inherited audits are included when available.
