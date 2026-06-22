# Agentic Audit Brief: Bedrock

## Project Overview

- Project: Bedrock (`bedrock`)
- Website: [https://www.bedrock.technology](https://www.bedrock.technology)
- Lifecycle: active (Tier 0, 59% below peak)
- Generated: 2026-06-21T18:59:31.390Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, ink, linea, mantle, mode, optimism, scroll, sonic, unichain
- Contract surface: 36 unique implementations (42 raw deployments)
- DeFi Llama TVL: $306,571,552.00
- On-chain TVL (included contracts): $18,475,265.79
- TVL by chain: Ethereum $18,268,772.99 | Bsc $205,550.97 | Optimism $941.82

## Project Description

Bedrock is a multi-chain liquid staking and restaking protocol that issues yield-bearing tokens (uniETH, uniBTC, uniIOTX, brBTC) representing staked or restaked assets. It enables users to earn staking rewards while maintaining liquidity through tokenized representations of their deposits.

### Architecture

The uniETH and uniBTC families share a common VaultWithoutNative and token proxy pattern for managing deposits and minting liquid tokens. The brBTC family builds on uniBTC by wrapping it into a restaking vault, while uniETH restaking extends the base staking with EigenLayer integration, all relying on upgradeable proxy infrastructure for modularity.

## Contract Surface Quality

- Indexed contracts: 75; live-surface contracts included: 42 (40 live, 2 unknown).
- Excluded by liveness: 14 inactive, 19 singleton, 0 uninitialized.
- Deployment units: 28/40 live.
- Detected codebases: none
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 19/34 (55.9%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 1
- Unverified implementations: 2
- Unique implementations: 36
- Raw deployments: 42
- Audits discovered: 9
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $89,013.75
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 6 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 19 | 55.9% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RockXETH | token | ethereum | unit-43669 | [`0xf1376b...df51f4`](./contracts/ethereum-1/0xf1376bcef0f78459c0ed0ba5ddce976f1ddf51f4/) | ✅ Audited |
| brVault | core_logic | bsc | unit-43672 | [`0x1df46e...90ad93`](./contracts/bsc-56/0x1df46ec5e86fec4589b3fa7d60b6dc7ef890ad93/) | ✅ Audited |
| brVault | core_logic | ethereum | unit-43660 | [`0x1419b4...0e3386`](./contracts/ethereum-1/0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386/) | ✅ Audited |
| brBTC | unknown | ethereum | unit-43661 | [`0x2ec37d...8f6646`](./contracts/ethereum-1/0x2ec37d45fcae65d9787ecf71dc85a444968f6646/) | ✅ Audited |
| brBTC | unknown | bsc | unit-43674 | [`0x733a6c...f01df3`](./contracts/bsc-56/0x733a6c29eda4a58931ae81b8d91e29f2eaf01df3/) | ✅ Audited |
| brBTC | unknown | base | unit-43687 | [`0x3376eb...61514a`](./contracts/base-8453/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/) | ✅ Audited |
| brBTC | unknown | berachain | unit-43693 | [`0x939197...2b593e`](./contracts/berachain-80094/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | ✅ Audited |
| brVault | core_logic | berachain | unit-43697 | [`0xf97750...31ab18`](./contracts/berachain-80094/0xf9775085d726e782e83585033b58606f7731ab18/) | ✅ Audited |
| RockXETH | token | ethereum | n/a | [`0x3376eb...61514a`](./contracts/ethereum-1/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/) | ✅ Audited |
| uniBTC | unknown | ethereum | unit-43658 | [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | ✅ Audited |
| uniBTC | unknown | optimism | unit-43670 | [`0x939197...2b593e`](./contracts/optimism-10/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | ✅ Audited |
| uniBTC | unknown | bsc | unit-43673 | [`0x6b2a01...bd726a`](./contracts/bsc-56/0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a/) | ✅ Audited |
| uniBTC | unknown | sonic | unit-43680 | [`0xc3827a...db6e90`](./contracts/sonic-146/0xc3827a4bc8224ee2d116637023b124ced6db6e90/) | ✅ Audited |
| uniBTC | unknown | hyperliquid | unit-43682 | [`0xf97750...31ab18`](./contracts/hyperliquid-999/0xf9775085d726e782e83585033b58606f7731ab18/) | ✅ Audited |
| uniBTC | unknown | mantle | unit-43684 | [`0x939197...2b593e`](./contracts/mantle-5000/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | ✅ Audited |
| uniBTC | unknown | base | unit-43688 | [`0x939197...2b593e`](./contracts/base-8453/0x93919784c523f39cacaa98ee0a9d96c3f32b593e/) | ✅ Audited |
| uniBTC | unknown | arbitrum | unit-43690 | [`0x6b2a01...bd726a`](./contracts/arbitrum-42161/0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a/) | ✅ Audited |
| uniBTC | unknown | berachain | unit-43695 | [`0xc3827a...db6e90`](./contracts/berachain-80094/0xc3827a4bc8224ee2d116637023b124ced6db6e90/) | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultWithoutNative | core_logic | ethereum | unit-43659 | [`0x047d41...10d6da`](./contracts/ethereum-1/0x047d41f2544b7f63a8e991af2068a363d210d6da/) | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | bsc | unit-43675 | [`0x84e5c8...c26800`](./contracts/bsc-56/0x84e5c854a7ff9f49c888d69deca578d406c26800/) | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | optimism | unit-43671 | [`0xf97750...31ab18`](./contracts/optimism-10/0xf9775085d726e782e83585033b58606f7731ab18/) | ⚠️ Unaudited |
| EigenPod | core_logic | ethereum | unit-43664 | [`0x926720...d01cce`](./contracts/ethereum-1/0x926720ae39114d0e2043b79570a1e08f00d01cce/) | ⚠️ Unaudited |
| Bedrock | unknown | bsc | n/a | [`0xff7d6a...f56b41`](./contracts/bsc-56/0xff7d6a96ae471bbcd7713af9cb1feeb16cf56b41/) | ⚠️ Unaudited |
| brBTCOFTAdapter | adapter | ethereum | n/a | [`0xbefc7d...d6633d`](./contracts/ethereum-1/0xbefc7d6a15cc9bf839e64a16cd43abd55dd6633d/) | ⚠️ Unaudited |
| MultiBridgeToken | operational_periphery | linea | n/a | 3 deployments: arbitrum `0x3d15fd...e2c3a0`; linea [`0x15eefe...ef4d25`](./contracts/linea-59144/0x15eefe5b297136b8712291b632404b66a8ef4d25/); scroll [`0x15eefe...ef4d25`](./contracts/scroll-534352/0x15eefe5b297136b8712291b632404b66a8ef4d25/) | ⚠️ Unaudited |
| ProxyAdmin | governance | sonic | n/a | 2 deployments: sonic [`0x17c3b6...d551ab`](./contracts/sonic-146/0x17c3b688badd6dd11244096a9fbc4ae0add551ab/); berachain [`0x17c3b6...d551ab`](./contracts/berachain-80094/0x17c3b688badd6dd11244096a9fbc4ae0add551ab/) | ⚠️ Unaudited |
| Restaking | unknown | ethereum | unit-43662 | [`0x3f4eac...6e9850`](./contracts/ethereum-1/0x3f4eaceb930b0edfa78a1dfcbae5c5494e6e9850/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0xa93322...4ffadd`](./contracts/ethereum-1/0xa93322a98335b791df87f20bb939fbe4d84ffadd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mode | n/a | 2 deployments: mode [`0x6b2a01...bd726a`](./contracts/mode-34443/0x6b2a01a5f79deb4c2f3c0eda7b01df456fbd726a/); mode `0x84e5c8...c26800` | ⚠️ Unaudited |
| uniBTCOFTAdapter | adapter | ethereum | n/a | [`0x50fa14...1b8190`](./contracts/ethereum-1/0x50fa1411201e2ac0361fb893e903b80f141b8190/) | ⚠️ Unaudited |
| uniBTCRate | unknown | base | n/a | 2 deployments: base [`0x02643a...870c5e`](./contracts/base-8453/0x02643a61f03783b8897c11fbd7b255dc0e870c5e/); base `0xc651dd...c11680` | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | mantle | unit-43685 | [`0xf97750...31ab18`](./contracts/mantle-5000/0xf9775085d726e782e83585033b58606f7731ab18/) | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | arbitrum | unit-43691 | [`0x84e5c8...c26800`](./contracts/arbitrum-42161/0x84e5c854a7ff9f49c888d69deca578d406c26800/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| brBTC | proxy | unichain | unit-43677 | 2 deployments: unichain [`0xa16113...2059be`](./contracts/unichain-130/0xa161132371c94299d215915d4cbc3b629e2059be/); hyperliquid `0xdfc7d2...2b511e` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ink | n/a | `0xa16113...2059be` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xd3c8da...b1d58d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-RockXStaking-v1.0.pdf](https://github.com/RockX-SG/stake/blob/main/PeckShield-Audit-Report-RockXStaking-v1.0.pdf) | PeckShield | Audit | 2024-02 | stale | Direct | contract_name | 2 | high |
| [<table><thead><tr><th width="125">Token</th><th width="134">Audit firm</th><th width="153">Audit date</th><th>Report</th></tr></thead><tbody><tr><td>brBTC</td><td>Blocksec</td><td>16 Dec 2024</td><td><a href="">https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf</a></td></tr><tr><td>uniBTC</td><td>Blocksec</td><td>30 Oct 2024</td><td><a href="https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf">https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf</a></td></tr><tr><td>uniBTC</td><td>PeckShield</td><td>01 Oct 2024</td><td><a href="https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf">https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf</a></td></tr><tr><td>uniBTC</td><td>Blocksec</td><td>12 Jun 2024</td><td><a href="https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf">https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf</a></td></tr><tr><td>uniETH</td><td>PeckShield</td><td>15 Feb 2024</td><td><a href="https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf">https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf</a></td></tr></tbody></table>](https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 8 | high |
| [<table><thead><tr><th width="125">Token</th><th width="134">Audit firm</th><th width="153">Audit date</th><th>Report</th></tr></thead><tbody><tr><td>brBTC</td><td>Blocksec</td><td>16 Dec 2024</td><td><a href="https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf">https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf</a></td></tr><tr><td>uniBTC</td><td>Blocksec</td><td>30 Oct 2024</td><td><a href="">https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf</a></td></tr><tr><td>uniBTC</td><td>PeckShield</td><td>01 Oct 2024</td><td><a href="https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf">https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf</a></td></tr><tr><td>uniBTC</td><td>Blocksec</td><td>12 Jun 2024</td><td><a href="https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf">https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf</a></td></tr><tr><td>uniETH</td><td>PeckShield</td><td>15 Feb 2024</td><td><a href="https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf">https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf</a></td></tr></tbody></table>](https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 0 | n/a |
| [<table><thead><tr><th width="125">Token</th><th width="134">Audit firm</th><th width="153">Audit date</th><th>Report</th></tr></thead><tbody><tr><td>brBTC</td><td>Blocksec</td><td>16 Dec 2024</td><td><a href="https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf">https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf</a></td></tr><tr><td>uniBTC</td><td>Blocksec</td><td>30 Oct 2024</td><td><a href="https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf">https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf</a></td></tr><tr><td>uniBTC</td><td>PeckShield</td><td>01 Oct 2024</td><td><a href="">https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf</a></td></tr><tr><td>uniBTC</td><td>Blocksec</td><td>12 Jun 2024</td><td><a href="https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf">https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf</a></td></tr><tr><td>uniETH</td><td>PeckShield</td><td>15 Feb 2024</td><td><a href="https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf">https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf</a></td></tr></tbody></table>](https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [<table><thead><tr><th width="125">Token</th><th width="134">Audit firm</th><th width="153">Audit date</th><th>Report</th></tr></thead><tbody><tr><td>brBTC</td><td>Blocksec</td><td>16 Dec 2024</td><td><a href="https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf">https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf</a></td></tr><tr><td>uniBTC</td><td>Blocksec</td><td>30 Oct 2024</td><td><a href="https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf">https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf</a></td></tr><tr><td>uniBTC</td><td>PeckShield</td><td>01 Oct 2024</td><td><a href="https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf">https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf</a></td></tr><tr><td>uniBTC</td><td>Blocksec</td><td>12 Jun 2024</td><td><a href="">https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf</a></td></tr><tr><td>uniETH</td><td>PeckShield</td><td>15 Feb 2024</td><td><a href="https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf">https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf</a></td></tr></tbody></table>](https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name | 9 | high |
| [<table><thead><tr><th width="125">Token</th><th width="134">Audit firm</th><th width="153">Audit date</th><th>Report</th></tr></thead><tbody><tr><td>brBTC</td><td>Blocksec</td><td>16 Dec 2024</td><td><a href="https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf">https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf</a></td></tr><tr><td>uniBTC</td><td>Blocksec</td><td>30 Oct 2024</td><td><a href="https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf">https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf</a></td></tr><tr><td>uniBTC</td><td>PeckShield</td><td>01 Oct 2024</td><td><a href="https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf">https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf</a></td></tr><tr><td>uniBTC</td><td>Blocksec</td><td>12 Jun 2024</td><td><a href="https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf">https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf</a></td></tr><tr><td>uniETH</td><td>PeckShield</td><td>15 Feb 2024</td><td><a href="">https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf</a></td></tr></tbody></table> (also discovered via alternate URL)](https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | contract_name|n/a | 2 | high |
| [The uniIOTX smart contract has been audited by Peckshield. You can find the smart contract audit report for uniIOTX [here]().](https://github.com/RockX-SG/uniiotx/blob/main/docs/PeckShield-Audit-Report-RockXStaking-IOTEX-v1.0.pdf) | PeckShield | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [blocksec_bedrock_unibtc_v1.1-signed.pdf](https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.1-signed.pdf) | BlockSec | Audit | 2024-11 | aging | Direct | contract_name | 0 | n/a |
| [PeckShield Audit Report RockX Eth Staking.pdf](https://github.com/Bedrock-Technology/docs/blob/main/PeckShield%20Audit%20Report%20RockX%20Eth%20Staking.pdf) | PeckShield | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xff7d6a...f56b41`](./contracts/bsc-56/0xff7d6a96ae471bbcd7713af9cb1feeb16cf56b41/) | Bedrock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbefc7d...d6633d`](./contracts/ethereum-1/0xbefc7d6a15cc9bf839e64a16cd43abd55dd6633d/) | brBTCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa93322...4ffadd`](./contracts/ethereum-1/0xa93322a98335b791df87f20bb939fbe4d84ffadd/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50fa14...1b8190`](./contracts/ethereum-1/0x50fa1411201e2ac0361fb893e903b80f141b8190/) | uniBTCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02643a...870c5e`](./contracts/base-8453/0x02643a61f03783b8897c11fbd7b255dc0e870c5e/) | uniBTCRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 1 |
| standard_library | 19 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=40

Zero-match audit list:

- [12768] <table><thead><tr><th width="125">Token</th><th width="134">Audit firm</th><th width="153">Audit date</th><th>Report</th></tr></thead><tbody><tr><td>brBTC</td><td>Blocksec</td><td>16 Dec 2024</td><td><a href="https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf">https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf</a></td></tr><tr><td>uniBTC</td><td>Blocksec</td><td>30 Oct 2024</td><td><a href="">https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf</a></td></tr><tr><td>uniBTC</td><td>PeckShield</td><td>01 Oct 2024</td><td><a href="https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf">https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf</a></td></tr><tr><td>uniBTC</td><td>Blocksec</td><td>12 Jun 2024</td><td><a href="https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf">https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf</a></td></tr><tr><td>uniETH</td><td>PeckShield</td><td>15 Feb 2024</td><td><a href="https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf">https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf</a></td></tr></tbody></table>
- [12769] <table><thead><tr><th width="125">Token</th><th width="134">Audit firm</th><th width="153">Audit date</th><th>Report</th></tr></thead><tbody><tr><td>brBTC</td><td>Blocksec</td><td>16 Dec 2024</td><td><a href="https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf">https://github.com/Bedrock-Technology/omni/blob/main/blocksec_bedrock_br_v1.0-signed.pdf</a></td></tr><tr><td>uniBTC</td><td>Blocksec</td><td>30 Oct 2024</td><td><a href="https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf">https://github.com/Bedrock-Technology/uniBTC/blob/main/blocksec_bedrock_unibtc_v1.0-signed.pdf</a></td></tr><tr><td>uniBTC</td><td>PeckShield</td><td>01 Oct 2024</td><td><a href="">https://github.com/Bedrock-Technology/uniBTC/blob/main/PeckShield-Audit-Report-uniBTC-v1.0.pdf</a></td></tr><tr><td>uniBTC</td><td>Blocksec</td><td>12 Jun 2024</td><td><a href="https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf">https://github.com/Bedrock-Technology/uniBTC/blob/main/code%20audit%20blocksec.pdf</a></td></tr><tr><td>uniETH</td><td>PeckShield</td><td>15 Feb 2024</td><td><a href="https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf">https://raw.githubusercontent.com/Bedrock-Technology/docs/main/PeckShield-Audit-Report-Bedrock-v1.0.pdf</a></td></tr></tbody></table>
- [12772] The uniIOTX smart contract has been audited by Peckshield. You can find the smart contract audit report for uniIOTX [here]().
- [12773] blocksec_bedrock_unibtc_v1.1-signed.pdf
- [12774] PeckShield Audit Report RockX Eth Staking.pdf

Fork inheritance lineage and inherited audits are included when available.
