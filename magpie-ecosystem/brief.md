# Agentic Audit Brief: Magpie Ecosystem

⚠️ Lifecycle status: DECLINING - TVL dropped 42.5% over 90 days

## Project Overview

- Project: Magpie Ecosystem (`magpie-ecosystem`)
- Website: [https://link3.to/magpiexyz](https://link3.to/magpiexyz)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:32.970Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, berachain, bsc, ethereum, optimism, plasma, sonic
- Contract surface: 89 unique implementations (104 raw deployments)
- DeFi Llama TVL: $19,123,338.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Magpie Ecosystem is a multi-chain yield and veTokenomics boosting ecosystem composed of product lines including Magpie, Penpie, Radpie, Cakepie, Eigenpie, Listapie and Babypie. Its products help users optimize yield, governance power and rewards across supported DeFi protocols; some products involve liquid staking or restaking derivatives, but this architecture should not be assumed to apply uniformly across every product family.

### Architecture

All product families share a common architecture of yield-optimizing vaults that issue liquid derivative tokens and distribute rewards via the Magpie Ecosystem's governance token (MGP). They are deployed across multiple chains by a centralized deployer cluster, indicating a unified development and management framework.

## Contract Surface Quality

- Indexed contracts: 679; live-surface contracts included: 104 (104 live, 0 unknown).
- Excluded by liveness: 342 inactive, 233 singleton, 0 uninitialized.
- Deployment units: 62/147 live.
- Detected codebases: makerdao-dss, uniswap-v2
- Unverified dependencies: 2/37.

## Audit Coverage Summary

- Verified implementations audited: 0/83 (0.0%)
- Verified + Unaudited implementations: 83
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 89
- Raw deployments: 104
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (83)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BabypieManager | governance | ethereum | unit-20703 | [`0xe813ff...6e2df3`](./contracts/ethereum-1/0xe813ffa7932f2d182f0ae89254acfd0baa6e2df3/) | ⚠️ Unaudited |
| BnbStaking | unknown | bsc | n/a | [`0x555ea7...6dcb5a`](./contracts/bsc-56/0x555ea72d7347e82c614c16f005fa91caf06dcb5a/) | ⚠️ Unaudited |
| Buyback | unknown | bsc | unit-20731 | [`0x3b99a4...2e1bfc`](./contracts/bsc-56/0x3b99a4177e3f430590a8473f353dd87a5a2e1bfc/) | ⚠️ Unaudited |
| Cakepie | unknown | bsc | n/a | [`0x2b5d9a...eda649`](./contracts/bsc-56/0x2b5d9adea07b590b638ffc165792b2c610eda649/) | ⚠️ Unaudited |
| CakeToken | unknown | bsc | n/a | 3 deployments: bsc [`0x0e09fa...81ce82`](./contracts/bsc-56/0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82/); bsc `0x46e358...b42cf4`; bsc `0xe17a47...7f978b` | ⚠️ Unaudited |
| ClisBNBLaunchPoolDistributor | unknown | bsc | unit-20758 | [`0x81a62b...5a46e8`](./contracts/bsc-56/0x81a62b329cc8939494d8613f614171a9955a46e8/) | ⚠️ Unaudited |
| EigenpieStaking | unknown | ethereum | unit-20697 | [`0x24db67...875db7`](./contracts/ethereum-1/0x24db6717db1c75b9db6ea47164d8730b63875db7/) | ⚠️ Unaudited |
| EigenpieWithdrawManager | unknown | ethereum | unit-20701 | [`0x98083e...9dcba4`](./contracts/ethereum-1/0x98083e22d12497c1516d3c49e7cc6cd2cd9dcba4/) | ⚠️ Unaudited |
| Hypervisor | unknown | bsc | n/a | 3 deployments: bsc [`0x368550...a96708`](./contracts/bsc-56/0x3685502ea3ea4175fb5cbb5344f74d2138a96708/); bsc `0xab092c...5fff22`; bsc `0xdf0b9b...dd54c4` | ⚠️ Unaudited |
| ICHIVault | unknown | bsc | n/a | [`0x885711...3dfc8c`](./contracts/bsc-56/0x885711bedd3d17949dfed5e77d5ab6e89c3dfc8c/) | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | bsc | unit-20815 | [`0xffd3a5...9908e6`](./contracts/bsc-56/0xffd3a57e8db4f51fa01c72f06ff30bdfda9908e6/) | ⚠️ Unaudited |
| ListaOFTAdapter | unknown | bsc | n/a | [`0x837cb0...25e7b3`](./contracts/bsc-56/0x837cb07f6b8a98731856092457524ff37b25e7b3/) | ⚠️ Unaudited |
| ListaRevenueDistributor | unknown | bsc | unit-20729 | [`0x34b504...7fa3da`](./contracts/bsc-56/0x34b504a5cf0ff41f8a480580533b6dda687fa3da/) | ⚠️ Unaudited |
| ListaRush | unknown | bsc | unit-20762 | [`0x934c69...f3ac36`](./contracts/bsc-56/0x934c69e35ca3a2774cc0aa36f5632f1c39f3ac36/) | ⚠️ Unaudited |
| ListaStaking | unknown | bsc | unit-20756 | [`0x76865d...b2ca97`](./contracts/bsc-56/0x76865d4bfa513a3dd7f8a9977f3dd71e8ab2ca97/) | ⚠️ Unaudited |
| ListaToken | unknown | bsc | n/a | [`0xfceb31...9edc46`](./contracts/bsc-56/0xfceb31a79f71ac9cbdcf853519c1b12d379edc46/) | ⚠️ Unaudited |
| ListaVault | unknown | bsc | unit-20727 | [`0x307d13...30292a`](./contracts/bsc-56/0x307d13267f360f78005f476fa913f8848f30292a/) | ⚠️ Unaudited |
| LpProxy | unknown | bsc | unit-20746 | [`0x5a0e32...70ec01`](./contracts/bsc-56/0x5a0e3291514f5f1797a0c7efefdac81eec70ec01/) | ⚠️ Unaudited |
| MasterCakepie | unknown | bsc | unit-20754 | [`0x74165b...a61e98`](./contracts/bsc-56/0x74165b89fd8e9b91a109a4e71662f27eeba61e98/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | 3 deployments: bsc [`0x4e585c...0e764d`](./contracts/bsc-56/0x4e585c367dafa5db5e182a192e73f4e0900e764d/); bsc `0x73feaa...c9e24e`; bsc `0x91dc89...c3e756` | ⚠️ Unaudited |
| MasterListapie | unknown | bsc | unit-20796 | [`0xdd3868...340853`](./contracts/bsc-56/0xdd386880c277c3c27f604f4c35b029bae0340853/) | ⚠️ Unaudited |
| MasterMagpie | unknown | bsc | unit-20774 | [`0xa3b615...26bd46`](./contracts/bsc-56/0xa3b615667cbd33cfc69843bf11fbb2a1d926bd46/) | ⚠️ Unaudited |
| MasterMagpie | unknown | arbitrum | unit-20833 | [`0x664cc2...9db6e7`](./contracts/arbitrum-42161/0x664cc2bcae1e057eb1ec379598c5b743ad9db6e7/) | ⚠️ Unaudited |
| MasterPenpie | unknown | ethereum | unit-20694 | [`0x162968...6347d0`](./contracts/ethereum-1/0x16296859c15289731521f199f0a5f762df6347d0/) | ⚠️ Unaudited |
| MasterPenpie | unknown | optimism | unit-20705 | [`0x3cbfc9...e57eac`](./contracts/optimism-10/0x3cbfc97f87f534b42bb58276b7b5dcad29e57eac/) | ⚠️ Unaudited |
| MasterPenpie | unknown | bsc | unit-20781 | [`0xb35b3d...3cd5db`](./contracts/bsc-56/0xb35b3d118c0394e750b4b59d2a2f9307393cd5db/) | ⚠️ Unaudited |
| MasterPenpie | unknown | sonic | unit-20816 | [`0x664cc2...9db6e7`](./contracts/sonic-146/0x664cc2bcae1e057eb1ec379598c5b743ad9db6e7/) | ⚠️ Unaudited |
| MasterPenpie | unknown | base | unit-20820 | [`0xc29508...dc6461`](./contracts/base-8453/0xc295087393c3ffc8aa46a8f6489ac93ce2dc6461/) | ⚠️ Unaudited |
| MasterPenpie | unknown | plasma | unit-20821 | [`0x2cfedb...d55243`](./contracts/plasma-9745/0x2cfedb9c62efb57a8bb8ec535f32731975d55243/) | ⚠️ Unaudited |
| MasterPenpie | unknown | arbitrum | unit-20823 | [`0x0776c0...25942d`](./contracts/arbitrum-42161/0x0776c06907ce6ff3d9dbf84ba9b3422d7225942d/) | ⚠️ Unaudited |
| MasterPenpie | unknown | berachain | unit-20839 | [`0x367e7a...cdef96`](./contracts/berachain-80094/0x367e7a694b9be5339cd861f7ee200cb829cdef96/) | ⚠️ Unaudited |
| MasterRadpie | unknown | bsc | unit-20720 | [`0x1b80ee...e58453`](./contracts/bsc-56/0x1b80eec9b25472c6119ead3b880976fa62e58453/) | ⚠️ Unaudited |
| MasterRadpie | unknown | arbitrum | unit-20838 | [`0xc9cb57...0f2baa`](./contracts/arbitrum-42161/0xc9cb578d613d729c3c4c8ef7d46cb814570f2baa/) | ⚠️ Unaudited |
| mBTCProvider | unknown | bsc | unit-20761 | [`0x8a016f...e2bb0b`](./contracts/bsc-56/0x8a016f1896dc2939ffdbb60f6e42bcc245e2bb0b/) | ⚠️ Unaudited |
| mCake | unknown | bsc | unit-20745 | [`0x581fa6...95c0ca`](./contracts/bsc-56/0x581fa684d0ec11ccb46b1d92f1f24c8a3f95c0ca/) | ⚠️ Unaudited |
| mCakeSV | unknown | bsc | unit-20722 | [`0x1d7928...cb0c21`](./contracts/bsc-56/0x1d7928452009e03af2e3a2b5931d5d5876cb0c21/) | ⚠️ Unaudited |
| MGP | unknown | bsc | n/a | [`0xd06716...3b45fa`](./contracts/bsc-56/0xd06716e1ff2e492cc5034c2e81805562dd3b45fa/) | ⚠️ Unaudited |
| MintedERC20 | unknown | sonic | unit-20817 | [`0xf1ef7d...71a74b`](./contracts/sonic-146/0xf1ef7d2d4c0c881cd634481e0586ed5d2871a74b/) | ⚠️ Unaudited |
| mListaConvertor | adapter | bsc | unit-20775 | [`0xa606c8...8c68b3`](./contracts/bsc-56/0xa606c8916501fc841e383710817666aaed8c68b3/) | ⚠️ Unaudited |
| MLRTCCIPBridge | operational_periphery | arbitrum | unit-20828 | [`0x42c614...68f588`](./contracts/arbitrum-42161/0x42c614415cfb8c71bb28314f6d2a21d91c68f588/) | ⚠️ Unaudited |
| mPendleConvertor | unknown | ethereum | unit-20699 | [`0x4bcc7c...23b458`](./contracts/ethereum-1/0x4bcc7c793534246bc18acd3737aa4897ff23b458/) | ⚠️ Unaudited |
| mPendleOFT | unknown | ethereum | n/a | 3 deployments: ethereum [`0x83e817...6f555e`](./contracts/ethereum-1/0x83e817e1574e2201a005ec0f7e700ed5606f555e/); optimism `0xa3b615...26bd46`; arbitrum `0xb688ba...36a5bf` | ⚠️ Unaudited |
| mWOM | unknown | arbitrum | unit-20830 | [`0x509fd2...947876`](./contracts/arbitrum-42161/0x509fd25ee2ac7833a017f17ee8a6fb4aaf947876/) | ⚠️ Unaudited |
| mWomSV | unknown | arbitrum | unit-20826 | [`0x21804f...3b07db`](./contracts/arbitrum-42161/0x21804fb90593458630298f10a85094cb6d3b07db/) | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | base | n/a | 2 deployments: optimism `0xbc7b1f...6e66e1`; base [`0xa99f6e...9eeb3e`](./contracts/base-8453/0xa99f6e6785da0f5d6fb42495fe424bce029eeb3e/) | ⚠️ Unaudited |
| Pair | unknown | bsc | n/a | [`0x04d611...3f857d`](./contracts/bsc-56/0x04d6115703b0127888323f142b8046c7c13f857d/) | ⚠️ Unaudited |
| PancakeFactory | unknown | bsc | n/a | [`0xbcfccb...952812`](./contracts/bsc-56/0xbcfccbde45ce874adcb698cc183debcf17952812/) | ⚠️ Unaudited |
| PancakeRouter | unknown | bsc | n/a | [`0x05ff2b...608c7f`](./contracts/bsc-56/0x05ff2b0db69458a0750badebc4f9e13add608c7f/) | ⚠️ Unaudited |
| PancakeStableSwapLP | unknown | bsc | n/a | [`0xb2aa63...85a488`](./contracts/bsc-56/0xb2aa63f363196caba3154d4187949283f085a488/) | ⚠️ Unaudited |
| PancakeStakingBNBChain | unknown | bsc | unit-20782 | [`0xb47b79...44f327`](./contracts/bsc-56/0xb47b790076050423888cde9ebb2d5cb86544f327/) | ⚠️ Unaudited |
| PendleMarketDepositHelper | unknown | ethereum | unit-20695 | [`0x1c1fb3...0fc0f4`](./contracts/ethereum-1/0x1c1fb35334290b5ff1bf7b4c09130885b10fc0f4/) | ⚠️ Unaudited |
| PendleOFT | unknown | plasma | n/a | [`0x17bac5...831f24`](./contracts/plasma-9745/0x17bac5f906c9a0282ac06a59958d85796c831f24/) | ⚠️ Unaudited |
| PendleStaking | unknown | ethereum | unit-20700 | [`0x6e7997...713652`](./contracts/ethereum-1/0x6e799758cee75dae3d84e09d40dc416ecf713652/) | ⚠️ Unaudited |
| PendleStakingSideChain | unknown | sonic | unit-20818 | [`0xf9619e...5814ec`](./contracts/sonic-146/0xf9619e8b01acc23fac7ee0aeb1258433b85814ec/) | ⚠️ Unaudited |
| PendleStakingSideChain | unknown | base | unit-20819 | [`0x7a8961...7e9aab`](./contracts/base-8453/0x7a89614b596720d4d0f51a69d6c1d55db97e9aab/) | ⚠️ Unaudited |
| PendleStakingSideChain | unknown | plasma | unit-20822 | [`0xfff28a...310701`](./contracts/plasma-9745/0xfff28a2845aeb11394ed63ddfc62161af6310701/) | ⚠️ Unaudited |
| PendleStakingSideChain | unknown | arbitrum | unit-20834 | [`0x6db96b...8b3f81`](./contracts/arbitrum-42161/0x6db96bbeb081d2a85e0954c252f2c1dc108b3f81/) | ⚠️ Unaudited |
| PendleStakingSideChain | unknown | berachain | unit-20840 | [`0xc4a65a...5d1d7e`](./contracts/berachain-80094/0xc4a65a93dd6cd9717551ebe827e8baee025d1d7e/) | ⚠️ Unaudited |
| PendleStakingSideChainBNB | unknown | bsc | unit-20757 | [`0x782d9d...3b7982`](./contracts/bsc-56/0x782d9d67feaa4d1cdf8222d9053c8cba1c3b7982/) | ⚠️ Unaudited |
| PenpieOFT | unknown | arbitrum | n/a | 3 deployments: ethereum `0x7dedbc...718715`; optimism `0xc4a65a...5d1d7e`; arbitrum [`0x2ac2b2...9c34ee`](./contracts/arbitrum-42161/0x2ac2b254bc18cd4999f64773a966e4f4869c34ee/) | ⚠️ Unaudited |
| PumpBTCProvider | unknown | bsc | unit-20804 | [`0xea44dd...2b9e6e`](./contracts/bsc-56/0xea44ddc58ec6b4902e19a353c554b6a4f32b9e6e/) | ⚠️ Unaudited |
| RadiantStaking | unknown | bsc | unit-20800 | [`0xe05157...3ca131`](./contracts/bsc-56/0xe05157aa8d14b8ed1d816d505b3d5deeb83ca131/) | ⚠️ Unaudited |
| RadiantStaking | unknown | arbitrum | unit-20825 | [`0x18a192...6283b2`](./contracts/arbitrum-42161/0x18a192dfe0be1e5e9aa424738fdad800646283b2/) | ⚠️ Unaudited |
| Radpie | unknown | arbitrum | unit-20832 | [`0x54bdbf...87c0f6`](./contracts/arbitrum-42161/0x54bdbf3ce36f451ec61493236b8e6213ac87c0f6/) | ⚠️ Unaudited |
| RadpiePoolHelper | unknown | arbitrum | unit-20829 | [`0x4ade86...3dda7a`](./contracts/arbitrum-42161/0x4ade86667760f45cbd5255a5bc8b4c3a703dda7a/) | ⚠️ Unaudited |
| SlisBNBProvider | unknown | bsc | unit-20812 | [`0xfd31e1...97819b`](./contracts/bsc-56/0xfd31e1c5e5571f8e7fe318f80888c1e6da97819b/) | ⚠️ Unaudited |
| SmartChef | unknown | bsc | n/a | 4 deployments: bsc [`0x0c3d68...8e4528`](./contracts/bsc-56/0x0c3d6892aa3b23811af3bd1bbea8b0740e8e4528/); bsc `0x2dcf4c...5b66cf`; bsc `0xa5137e...30964e`; bsc `0xce54ba...dd8d9a` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | arbitrum | unit-20824 | [`0x0c880f...a8c9e8`](./contracts/arbitrum-42161/0x0c880f6761f1af8d9aa9c466984b80dab9a8c9e8/) | ⚠️ Unaudited |
| SyrupBar | unknown | bsc | n/a | [`0x009cf7...cea9b0`](./contracts/bsc-56/0x009cf7bc57584b7998236eff51b98a168dcea9b0/) | ⚠️ Unaudited |
| TokenImplementation | unknown | arbitrum | unit-20835 (2 proxies) | 2 deployments: arbitrum [`0x7b5eb3...9ddf96`](./contracts/arbitrum-42161/0x7b5eb3940021ec0e8e463d5dbb4b7b09a89ddf96/); arbitrum `0xa61f74...fa22a3` | ⚠️ Unaudited |
| VeLista | unknown | bsc | unit-20794 | [`0xd0c380...7b87b3`](./contracts/bsc-56/0xd0c380d31db43cd291e2bbe2da2fd6dc877b87b3/) | ⚠️ Unaudited |
| VeListaAutoCompounder | unknown | bsc | unit-20765 | [`0x9a0530...c3bf5e`](./contracts/bsc-56/0x9a0530a81c83d3b0dae720bf91c9254fecc3bf5e/) | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | bsc | unit-20792 | [`0xca8d24...2b72e9`](./contracts/bsc-56/0xca8d2451df68a9132fd9d30e8d354460642b72e9/) | ⚠️ Unaudited |
| VLCakepie | unknown | bsc | unit-20723 | [`0x232594...94eb26`](./contracts/bsc-56/0x232594e7f0096ba7ddabcd8689cb0d994694eb26/) | ⚠️ Unaudited |
| VLMGP | unknown | bsc | unit-20767 | [`0x9b69b0...eb32c6`](./contracts/bsc-56/0x9b69b06272980fa6bad9d88680a71e3c3beb32c6/) | ⚠️ Unaudited |
| VLMGP | unknown | arbitrum | unit-20831 | [`0x536599...4786b9`](./contracts/arbitrum-42161/0x536599497ce6a35fc65c7503232fec71a84786b9/) | ⚠️ Unaudited |
| VLPenpie | unknown | ethereum | unit-20698 | [`0x4405c0...5af0f8`](./contracts/ethereum-1/0x4405c0b330db66dffc40c8bcc616e447505af0f8/) | ⚠️ Unaudited |
| VLPenpie | unknown | optimism | unit-20704 | [`0x0af3ec...11527d`](./contracts/optimism-10/0x0af3ec6f9592c193196bef220bc0ce4d9311527d/) | ⚠️ Unaudited |
| VLPenpie | unknown | arbitrum | unit-20837 | [`0xc61d3c...53feff`](./contracts/arbitrum-42161/0xc61d3c70cfc9dedaa090fdd0760eb9291253feff/) | ⚠️ Unaudited |
| VotingEscrowPendleMainchain | unknown | ethereum | n/a | [`0x4f30a9...170210`](./contracts/ethereum-1/0x4f30a9d41b80ecc5b94306ab4364951ae3170210/) | ⚠️ Unaudited |
| WOFT | unknown | berachain | n/a | [`0xff9c59...88aef6`](./contracts/berachain-80094/0xff9c599d51c407a45d631c6e89cb047efb88aef6/) | ⚠️ Unaudited |
| WombatStaking | unknown | bsc | unit-20751 | [`0x664cc2...9db6e7`](./contracts/bsc-56/0x664cc2bcae1e057eb1ec379598c5b743ad9db6e7/) | ⚠️ Unaudited |
| WombatStaking | unknown | arbitrum | unit-20827 | [`0x3cbfc9...e57eac`](./contracts/arbitrum-42161/0x3cbfc97f87f534b42bb58276b7b5dcad29e57eac/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x394473...33e28e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70035e...cc6d6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbbb2aa...6974fd` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x017778...29cd7b` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0d7432...7982bf` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x647316...482ee9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Cakepie-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Cakepie-v1.0.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [blocksec_cakepie_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_cakepie_v1.0-signed.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Eigenpie-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Eigenpie-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Magpie-v1.1.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Magpie-v1.1.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 89 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3561] PeckShield-Audit-Report-Cakepie-v1.0.pdf
- [3562] blocksec_cakepie_v1.0-signed.pdf
- [3563] PeckShield-Audit-Report-Eigenpie-v1.0.pdf
- [3564] PeckShield-Audit-Report-Magpie-v1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
