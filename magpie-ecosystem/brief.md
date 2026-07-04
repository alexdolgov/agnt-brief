# Agentic Audit Brief: Magpie Ecosystem

## Project Overview

- Project: Magpie Ecosystem (`magpie-ecosystem`)
- Website: [https://link3.to/magpiexyz](https://link3.to/magpiexyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.300Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16da
- Chains: arbitrum, base, berachain, bsc, ethereum, optimism, plasma, sonic
- Contract surface: 383 unique implementations (398 raw deployments)
- DeFi Llama TVL: $16,621,913.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 37 project-authored contract(s) across 8 chain(s); 13 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 10 common project-authored base contract(s) (proxy, erc1967upgrade, oapp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 398; live-surface contracts included: 398 (98 live, 300 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 45/72 (62.5%)
- Deployed-live implementations: 83 of 383 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 55/83
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 300
- Unique implementations: 383
- Raw deployments: 398
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 55 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 55 | 66.3% | 2024-05 |
| unknown | Tier 2 | 1 | 1.2% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (55)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BabypieManager | governance | ethereum | n/a | [`0xe813ff...6e2df3`](./contracts/ethereum-1/0xe813ffa7932f2d182f0ae89254acfd0baa6e2df3/) | ✅ Audited |
| ClisBNBLaunchPoolDistributor | operational_periphery | bsc | n/a | [`0x81a62b...5a46e8`](./contracts/bsc-56/0x81a62b329cc8939494d8613f614171a9955a46e8/) | ✅ Audited |
| EigenpieStaking | unknown | ethereum | n/a | [`0x24db67...875db7`](./contracts/ethereum-1/0x24db6717db1c75b9db6ea47164d8730b63875db7/) | ✅ Audited |
| EigenpieWithdrawManager | operational_periphery | ethereum | n/a | [`0x98083e...9dcba4`](./contracts/ethereum-1/0x98083e22d12497c1516d3c49e7cc6cd2cd9dcba4/) | ✅ Audited |
| ListaAutoBuyback | unknown | bsc | n/a | [`0xffd3a5...9908e6`](./contracts/bsc-56/0xffd3a57e8db4f51fa01c72f06ff30bdfda9908e6/) | ✅ Audited |
| ListaRevenueDistributor | operational_periphery | bsc | n/a | [`0x34b504...7fa3da`](./contracts/bsc-56/0x34b504a5cf0ff41f8a480580533b6dda687fa3da/) | ✅ Audited |
| ListaRush | unknown | bsc | n/a | [`0x934c69...f3ac36`](./contracts/bsc-56/0x934c69e35ca3a2774cc0aa36f5632f1c39f3ac36/) | ✅ Audited |
| ListaStaking | unknown | bsc | n/a | [`0x76865d...b2ca97`](./contracts/bsc-56/0x76865d4bfa513a3dd7f8a9977f3dd71e8ab2ca97/) | ✅ Audited |
| ListaVault | core_logic | bsc | n/a | [`0x307d13...30292a`](./contracts/bsc-56/0x307d13267f360f78005f476fa913f8848f30292a/) | ✅ Audited |
| LpProxy | unknown | bsc | n/a | [`0x5a0e32...70ec01`](./contracts/bsc-56/0x5a0e3291514f5f1797a0c7efefdac81eec70ec01/) | ✅ Audited |
| MasterCakepie | unknown | bsc | n/a | [`0x74165b...a61e98`](./contracts/bsc-56/0x74165b89fd8e9b91a109a4e71662f27eeba61e98/) | ✅ Audited |
| MasterListapie | unknown | bsc | n/a | [`0xdd3868...340853`](./contracts/bsc-56/0xdd386880c277c3c27f604f4c35b029bae0340853/) | ✅ Audited |
| MasterMagpie | unknown | bsc | n/a | [`0xa3b615...26bd46`](./contracts/bsc-56/0xa3b615667cbd33cfc69843bf11fbb2a1d926bd46/) | ✅ Audited |
| MasterMagpie | unknown | arbitrum | n/a | [`0x664cc2...9db6e7`](./contracts/arbitrum-42161/0x664cc2bcae1e057eb1ec379598c5b743ad9db6e7/) | ✅ Audited |
| MasterPenpie | unknown | ethereum | n/a | [`0x162968...6347d0`](./contracts/ethereum-1/0x16296859c15289731521f199f0a5f762df6347d0/) | ✅ Audited |
| MasterPenpie | unknown | optimism | n/a | [`0x3cbfc9...e57eac`](./contracts/optimism-10/0x3cbfc97f87f534b42bb58276b7b5dcad29e57eac/) | ✅ Audited |
| MasterPenpie | unknown | bsc | n/a | [`0xb35b3d...3cd5db`](./contracts/bsc-56/0xb35b3d118c0394e750b4b59d2a2f9307393cd5db/) | ✅ Audited |
| MasterPenpie | unknown | sonic | n/a | [`0x664cc2...9db6e7`](./contracts/sonic-146/0x664cc2bcae1e057eb1ec379598c5b743ad9db6e7/) | ✅ Audited |
| MasterPenpie | unknown | base | n/a | [`0xc29508...dc6461`](./contracts/base-8453/0xc295087393c3ffc8aa46a8f6489ac93ce2dc6461/) | ✅ Audited |
| MasterPenpie | unknown | plasma | n/a | [`0x2cfedb...d55243`](./contracts/plasma-9745/0x2cfedb9c62efb57a8bb8ec535f32731975d55243/) | ✅ Audited |
| MasterPenpie | unknown | arbitrum | n/a | [`0x0776c0...25942d`](./contracts/arbitrum-42161/0x0776c06907ce6ff3d9dbf84ba9b3422d7225942d/) | ✅ Audited |
| MasterPenpie | unknown | berachain | n/a | [`0x367e7a...cdef96`](./contracts/berachain-80094/0x367e7a694b9be5339cd861f7ee200cb829cdef96/) | ✅ Audited |
| MasterRadpie | unknown | bsc | n/a | [`0x1b80ee...e58453`](./contracts/bsc-56/0x1b80eec9b25472c6119ead3b880976fa62e58453/) | ✅ Audited |
| MasterRadpie | unknown | arbitrum | n/a | [`0xc9cb57...0f2baa`](./contracts/arbitrum-42161/0xc9cb578d613d729c3c4c8ef7d46cb814570f2baa/) | ✅ Audited |
| mCake | unknown | bsc | n/a | [`0x581fa6...95c0ca`](./contracts/bsc-56/0x581fa684d0ec11ccb46b1d92f1f24c8a3f95c0ca/) | ✅ Audited |
| mCakeSV | unknown | bsc | n/a | [`0x1d7928...cb0c21`](./contracts/bsc-56/0x1d7928452009e03af2e3a2b5931d5d5876cb0c21/) | ✅ Audited |
| mListaConvertor | adapter | bsc | n/a | [`0xa606c8...8c68b3`](./contracts/bsc-56/0xa606c8916501fc841e383710817666aaed8c68b3/) | ✅ Audited |
| MLRTCCIPBridge | operational_periphery | arbitrum | n/a | [`0x42c614...68f588`](./contracts/arbitrum-42161/0x42c614415cfb8c71bb28314f6d2a21d91c68f588/) | ✅ Audited |
| mPendleConvertor | adapter | ethereum | n/a | [`0x4bcc7c...23b458`](./contracts/ethereum-1/0x4bcc7c793534246bc18acd3737aa4897ff23b458/) | ✅ Audited |
| mWOM | unknown | arbitrum | n/a | [`0x509fd2...947876`](./contracts/arbitrum-42161/0x509fd25ee2ac7833a017f17ee8a6fb4aaf947876/) | ✅ Audited |
| mWomSV | unknown | arbitrum | n/a | [`0x21804f...3b07db`](./contracts/arbitrum-42161/0x21804fb90593458630298f10a85094cb6d3b07db/) | ✅ Audited |
| PancakeStakingBNBChain | unknown | bsc | n/a | [`0xb47b79...44f327`](./contracts/bsc-56/0xb47b790076050423888cde9ebb2d5cb86544f327/) | ✅ Audited |
| PendleMarketDepositHelper | core_logic | ethereum | n/a | [`0x1c1fb3...0fc0f4`](./contracts/ethereum-1/0x1c1fb35334290b5ff1bf7b4c09130885b10fc0f4/) | ✅ Audited |
| PendleStaking | unknown | ethereum | n/a | [`0x6e7997...713652`](./contracts/ethereum-1/0x6e799758cee75dae3d84e09d40dc416ecf713652/) | ✅ Audited |
| PendleStakingSideChain | unknown | sonic | n/a | [`0xf9619e...5814ec`](./contracts/sonic-146/0xf9619e8b01acc23fac7ee0aeb1258433b85814ec/) | ✅ Audited |
| PendleStakingSideChain | unknown | base | n/a | [`0x7a8961...7e9aab`](./contracts/base-8453/0x7a89614b596720d4d0f51a69d6c1d55db97e9aab/) | ✅ Audited |
| PendleStakingSideChain | unknown | plasma | n/a | [`0xfff28a...310701`](./contracts/plasma-9745/0xfff28a2845aeb11394ed63ddfc62161af6310701/) | ✅ Audited |
| PendleStakingSideChain | unknown | arbitrum | n/a | [`0x6db96b...8b3f81`](./contracts/arbitrum-42161/0x6db96bbeb081d2a85e0954c252f2c1dc108b3f81/) | ✅ Audited |
| PendleStakingSideChain | unknown | berachain | n/a | [`0xc4a65a...5d1d7e`](./contracts/berachain-80094/0xc4a65a93dd6cd9717551ebe827e8baee025d1d7e/) | ✅ Audited |
| PendleStakingSideChainBNB | unknown | bsc | n/a | [`0x782d9d...3b7982`](./contracts/bsc-56/0x782d9d67feaa4d1cdf8222d9053c8cba1c3b7982/) | ✅ Audited |
| RadiantStaking | unknown | bsc | n/a | [`0xe05157...3ca131`](./contracts/bsc-56/0xe05157aa8d14b8ed1d816d505b3d5deeb83ca131/) | ✅ Audited |
| RadiantStaking | unknown | arbitrum | n/a | [`0x18a192...6283b2`](./contracts/arbitrum-42161/0x18a192dfe0be1e5e9aa424738fdad800646283b2/) | ✅ Audited |
| Radpie | unknown | arbitrum | n/a | [`0x54bdbf...87c0f6`](./contracts/arbitrum-42161/0x54bdbf3ce36f451ec61493236b8e6213ac87c0f6/) | ✅ Audited |
| RadpiePoolHelper | core_logic | arbitrum | n/a | [`0x4ade86...3dda7a`](./contracts/arbitrum-42161/0x4ade86667760f45cbd5255a5bc8b4c3a703dda7a/) | ✅ Audited |
| VeLista | unknown | bsc | n/a | [`0xd0c380...7b87b3`](./contracts/bsc-56/0xd0c380d31db43cd291e2bbe2da2fd6dc877b87b3/) | ✅ Audited |
| VeListaAutoCompounder | adapter | bsc | n/a | [`0x9a0530...c3bf5e`](./contracts/bsc-56/0x9a0530a81c83d3b0dae720bf91c9254fecc3bf5e/) | ✅ Audited |
| VeListaRewardsCourier | unknown | bsc | n/a | [`0xca8d24...2b72e9`](./contracts/bsc-56/0xca8d2451df68a9132fd9d30e8d354460642b72e9/) | ✅ Audited |
| VLCakepie | unknown | bsc | n/a | [`0x232594...94eb26`](./contracts/bsc-56/0x232594e7f0096ba7ddabcd8689cb0d994694eb26/) | ✅ Audited |
| VLMGP | unknown | bsc | n/a | [`0x9b69b0...eb32c6`](./contracts/bsc-56/0x9b69b06272980fa6bad9d88680a71e3c3beb32c6/) | ✅ Audited |
| VLMGP | unknown | arbitrum | n/a | [`0x536599...4786b9`](./contracts/arbitrum-42161/0x536599497ce6a35fc65c7503232fec71a84786b9/) | ✅ Audited |
| VLPenpie | unknown | ethereum | n/a | [`0x4405c0...5af0f8`](./contracts/ethereum-1/0x4405c0b330db66dffc40c8bcc616e447505af0f8/) | ✅ Audited |
| VLPenpie | unknown | optimism | n/a | [`0x0af3ec...11527d`](./contracts/optimism-10/0x0af3ec6f9592c193196bef220bc0ce4d9311527d/) | ✅ Audited |
| VLPenpie | unknown | arbitrum | n/a | [`0xc61d3c...53feff`](./contracts/arbitrum-42161/0xc61d3c70cfc9dedaa090fdd0760eb9291253feff/) | ✅ Audited |
| WombatStaking | unknown | bsc | n/a | [`0x664cc2...9db6e7`](./contracts/bsc-56/0x664cc2bcae1e057eb1ec379598c5b743ad9db6e7/) | ✅ Audited |
| WombatStaking | unknown | arbitrum | n/a | [`0x3cbfc9...e57eac`](./contracts/arbitrum-42161/0x3cbfc97f87f534b42bb58276b7b5dcad29e57eac/) | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BnbStaking | unknown | bsc | n/a | [`0x555ea7...6dcb5a`](./contracts/bsc-56/0x555ea72d7347e82c614c16f005fa91caf06dcb5a/) | ⚠️ Unaudited |
| Buyback | unknown | bsc | n/a | [`0x3b99a4...2e1bfc`](./contracts/bsc-56/0x3b99a4177e3f430590a8473f353dd87a5a2e1bfc/) | ⚠️ Unaudited |
| Cakepie | unknown | bsc | n/a | [`0x2b5d9a...eda649`](./contracts/bsc-56/0x2b5d9adea07b590b638ffc165792b2c610eda649/) | ⚠️ Unaudited |
| CakeToken | token | bsc | n/a | 3 deployments: bsc [`0x0e09fa...81ce82`](./contracts/bsc-56/0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82/); bsc `0x46e358...b42cf4`; bsc `0xe17a47...7f978b` | ⚠️ Unaudited |
| Hypervisor | unknown | bsc | n/a | 3 deployments: bsc [`0x368550...a96708`](./contracts/bsc-56/0x3685502ea3ea4175fb5cbb5344f74d2138a96708/); bsc `0xab092c...5fff22`; bsc `0xdf0b9b...dd54c4` | ⚠️ Unaudited |
| ICHIVault | core_logic | bsc | n/a | [`0x885711...3dfc8c`](./contracts/bsc-56/0x885711bedd3d17949dfed5e77d5ab6e89c3dfc8c/) | ⚠️ Unaudited |
| ListaOFTAdapter | adapter | bsc | n/a | [`0x837cb0...25e7b3`](./contracts/bsc-56/0x837cb07f6b8a98731856092457524ff37b25e7b3/) | ⚠️ Unaudited |
| ListaToken | token | bsc | n/a | [`0xfceb31...9edc46`](./contracts/bsc-56/0xfceb31a79f71ac9cbdcf853519c1b12d379edc46/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | 3 deployments: bsc [`0x4e585c...0e764d`](./contracts/bsc-56/0x4e585c367dafa5db5e182a192e73f4e0900e764d/); bsc `0x73feaa...c9e24e`; bsc `0x91dc89...c3e756` | ⚠️ Unaudited |
| mBTCProvider | unknown | bsc | n/a | [`0x8a016f...e2bb0b`](./contracts/bsc-56/0x8a016f1896dc2939ffdbb60f6e42bcc245e2bb0b/) | ⚠️ Unaudited |
| MGP | unknown | bsc | n/a | [`0xd06716...3b45fa`](./contracts/bsc-56/0xd06716e1ff2e492cc5034c2e81805562dd3b45fa/) | ⚠️ Unaudited |
| MintedERC20 | token | sonic | n/a | [`0xf1ef7d...71a74b`](./contracts/sonic-146/0xf1ef7d2d4c0c881cd634481e0586ed5d2871a74b/) | ⚠️ Unaudited |
| mPendleOFT | token | ethereum | n/a | 3 deployments: ethereum [`0x83e817...6f555e`](./contracts/ethereum-1/0x83e817e1574e2201a005ec0f7e700ed5606f555e/); optimism `0xa3b615...26bd46`; arbitrum `0xb688ba...36a5bf` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | 2 deployments: optimism `0xbc7b1f...6e66e1`; base [`0xa99f6e...9eeb3e`](./contracts/base-8453/0xa99f6e6785da0f5d6fb42495fe424bce029eeb3e/) | ⚠️ Unaudited |
| Pair | unknown | bsc | n/a | [`0x04d611...3f857d`](./contracts/bsc-56/0x04d6115703b0127888323f142b8046c7c13f857d/) | ⚠️ Unaudited |
| PancakeFactory | registry | bsc | n/a | [`0xbcfccb...952812`](./contracts/bsc-56/0xbcfccbde45ce874adcb698cc183debcf17952812/) | ⚠️ Unaudited |
| PancakeRouter | adapter | bsc | n/a | [`0x05ff2b...608c7f`](./contracts/bsc-56/0x05ff2b0db69458a0750badebc4f9e13add608c7f/) | ⚠️ Unaudited |
| PancakeStableSwapLP | unknown | bsc | n/a | [`0xb2aa63...85a488`](./contracts/bsc-56/0xb2aa63f363196caba3154d4187949283f085a488/) | ⚠️ Unaudited |
| PendleOFT | token | plasma | n/a | [`0x17bac5...831f24`](./contracts/plasma-9745/0x17bac5f906c9a0282ac06a59958d85796c831f24/) | ⚠️ Unaudited |
| PenpieOFT | unknown | arbitrum | n/a | 3 deployments: ethereum `0x7dedbc...718715`; optimism `0xc4a65a...5d1d7e`; arbitrum [`0x2ac2b2...9c34ee`](./contracts/arbitrum-42161/0x2ac2b254bc18cd4999f64773a966e4f4869c34ee/) | ⚠️ Unaudited |
| PumpBTCProvider | unknown | bsc | n/a | [`0xea44dd...2b9e6e`](./contracts/bsc-56/0xea44ddc58ec6b4902e19a353c554b6a4f32b9e6e/) | ⚠️ Unaudited |
| SlisBNBProvider | unknown | bsc | n/a | [`0xfd31e1...97819b`](./contracts/bsc-56/0xfd31e1c5e5571f8e7fe318f80888c1e6da97819b/) | ⚠️ Unaudited |
| SmartChef | unknown | bsc | n/a | 4 deployments: bsc [`0x0c3d68...8e4528`](./contracts/bsc-56/0x0c3d6892aa3b23811af3bd1bbea8b0740e8e4528/); bsc `0x2dcf4c...5b66cf`; bsc `0xa5137e...30964e`; bsc `0xce54ba...dd8d9a` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0x0c880f...a8c9e8`](./contracts/arbitrum-42161/0x0c880f6761f1af8d9aa9c466984b80dab9a8c9e8/) | ⚠️ Unaudited |
| SyrupBar | unknown | bsc | n/a | [`0x009cf7...cea9b0`](./contracts/bsc-56/0x009cf7bc57584b7998236eff51b98a168dcea9b0/) | ⚠️ Unaudited |
| TokenImplementation | token | arbitrum | n/a | 2 deployments: arbitrum [`0x7b5eb3...9ddf96`](./contracts/arbitrum-42161/0x7b5eb3940021ec0e8e463d5dbb4b7b09a89ddf96/); arbitrum `0xa61f74...fa22a3` | ⚠️ Unaudited |
| VotingEscrowPendleMainchain | operational_periphery | ethereum | n/a | [`0x4f30a9...170210`](./contracts/ethereum-1/0x4f30a9d41b80ecc5b94306ab4364951ae3170210/) | ⚠️ Unaudited |
| WOFT | token | berachain | n/a | [`0xff9c59...88aef6`](./contracts/berachain-80094/0xff9c599d51c407a45d631c6e89cb047efb88aef6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (300)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x006835...4ccfd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01a6fc...eb8281` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01b39e...b44e23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x034f0a...929b37` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03db75...d63067` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0541ee...a1806a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x05570c...7115c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x05ac03...8a4c9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x061178...80d195` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x07d274...735253` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08bcb6...540c5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0ad764...669caa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0aeb6c...6571f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0aed86...7f4f3b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0bebd7...b79478` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0bfb1b...d8dad1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c9a0f...8d15b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d3190...c7a3cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f4c12...61d415` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0fee40...36e05c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1101ff...923dc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x117b4a...651063` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11bf11...59147a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x138288...9ddd59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x143c8b...164642` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x157c9a...8ce299` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15fc4e...727ec2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16c39b...0622a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1716ac...b47c73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x18fce5...2164c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1afa15...11fad5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b19bc...11b96e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b8b3f...89d308` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1bce74...418885` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c56cc...9a7cc4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1cf9c6...336c4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1dbc9a...792072` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x209003...f7741b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2202a4...fcd7e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x225cbc...3194cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x227716...f6c867` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2367f2...9a6918` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24e5de...0d0bd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2544be...d355a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2725d7...65aa57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a66f6...f887dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c3f3b...ad0339` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d24c9...96162d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ea16e...b8fb5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ed866...b558d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2eedc4...2d5642` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f9da6...0a509e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31d558...b87aaf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x334e4f...a1b704` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x337a7a...c38249` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35718b...05617d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35c673...af4bbe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3605c7...db95b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3665d7...94d9c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36a7bd...944c84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37db1a...95d0bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x383a35...5b2130` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x394473...33e28e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x397a48...39004b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x398df8...ec2596` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x39d099...39716a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a0f55...208a9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b2393...5e6086` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b2ff4...59ffb1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b778d...1936bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c1612...010eb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3cd434...f0fc43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e75d7...a0976d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f3e0a...68cc10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4192ff...1723b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x419352...181d1a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x420a16...dde28b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43a00b...75ea42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44388e...89c584` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4510aa...cc7f50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45575e...c1d92d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45aac0...5ce40c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x464bfb...8d5d57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46c572...95be54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x476884...b9c576` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47dbca...784a41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b1298...6f5145` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b2d67...f9159c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c545d...ad3bff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d9ed5...a33430` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4fd4b7...368ac3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4fece6...35ef65` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x510264...6827d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x550206...4a7f15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x564fa7...8b1ebb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x566278...27204c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x57371f...8490f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5763dd...972ec7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5784e6...449ce0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x586034...c7bb0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58fe0f...5c725a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5aabbb...493b26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5be73a...cdb971` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d52bc...693736` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5debc8...ade245` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e9909...bd756a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ecc1d...0627c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5faa44...20552e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5fb5b2...804114` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x605356...cc4404` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62dfec...f68153` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64dbd2...6480c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66de07...1796f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c5285...13fc5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c8787...09e98c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6dc0ab...119b5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6dc552...b01de3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70035e...cc6d6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x708252...cfb755` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7247dd...20f59d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x732053...c96a8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73538c...da0093` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x735f7a...e1e918` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x748f2a...2ef905` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x74e17e...f69307` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7628a5...a7dcc0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76e001...eb3d00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77c9b4...7c2572` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77f452...070b95` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79cfad...30cc3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ad627...16da80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c81da...424954` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7db21c...1c3ce7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7dc9d0...0c5ba0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ed71d...44eb2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x811591...1c866b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81c4f1...c8e6d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82c6fb...8a4491` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82f5bc...413f02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83f861...a2ae5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8453cd...16005f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84c445...b27190` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x873339...3256fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x876cd9...6c3104` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87e994...f9070f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88620f...c4a2e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88a596...291c27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x891a60...e7df7f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89a9bc...d3f2cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a3143...182cc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8abb19...07ccda` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8be958...222345` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f8075...afeee1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x908047...7aaa94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x914190...6ffe05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92cfb7...7a6393` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x946a68...f7c53b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x946e5c...e74c05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9534dd...d6a45f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x969130...da4edf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x982d1d...ecf70c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9881cf...7c7e12` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98a3ff...e84c54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98b167...e6739a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a8195...8c7856` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b4f67...af1e96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b4fcb...18be4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b83f2...6cfb6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b8788...4ab7ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ba88e...4063cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ddd9b...be5ff2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e4dfb...d06cb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9eb77a...fb38f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f6c25...69eff4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa34627...505281` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3bce2...b0fd45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5e8ea...cfffbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa65c40...4a218e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa94aa7...2f7079` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa97aed...347900` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa4912...6d50d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa57f3...72ec0c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabdb46...09f4df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac6b7f...d05996` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac6d58...8d8460` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad406c...059b1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad9eaa...5b6f65` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xadcc15...4e98fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xade6d9...8bea2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae1951...5a4508` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf7133...90e08e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb12ff6...4b1e92` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb16226...67a884` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb18bf8...88605c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1da31...9a5af4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb20a61...780e4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb35d0f...99055d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb69162...110ed4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb7a58a...7f3978` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb7a753...48af85` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb7d76f...90a4a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb894de...4f9c26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbaf8b4...e3cc03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbaff57...2fb0c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbbb2aa...6974fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc019e...b8d305` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc380e...570b82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbcb466...7a7245` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd13ab...47c5f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1d3a2...3cacef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc23d34...c077c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4857c...59a998` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4a8a6...edd830` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5b9e1...a5e212` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6f28a...ff0fe2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc74efa...4fb7dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc952cc...e6e2d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc998f1...cee150` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9ca23...24ddd7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca07db...f8ac38` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb8f70...ccd2d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcda44d...2c34b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf9509...78ecd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd06233...544c6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd113db...195a16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1a6cc...366c18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1eb87...9ab904` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1f81b...3b001e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd209d1...d75283` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd4cfc5...6136b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5d976...c2aaa0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5e1b3...c66870` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd74508...ad2754` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7e339...f9bae8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd84eff...064d97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda0e73...01be0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdace1c...875057` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdcfe50...12007e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd185c...77a054` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xddc89c...0ba274` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdeb598...39ceaa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf2d4c...17ae63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf5a8e...539be8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe31f0b...978f10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3221b...7feb85` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe43fe8...14f520` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4f487...77181f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe51485...248b46` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5248d...1dee78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5c03c...43de08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5dbfc...c13d8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe61f43...dee39a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6c1be...6f79ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe786ec...05d6be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe859f3...90f45f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8f464...8b8dd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe93ce7...5f6173` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe95eaf...82a0c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb995f...54b1ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee00de...e5319b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee3d69...efc3cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee56ee...796dbb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeed4af...556410` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xefebdd...9fcf14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf09fef...e22889` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0fc2d...08e956` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf19dc2...a26a72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf1e177...fb191a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf1f4d6...bd8b22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf21b35...31d057` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf2d56e...53ebc4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf2fa32...207026` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3afd8...e6c750` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf40d0d...2004ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf51c1d...1abb7f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf57a8c...a659f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf5bd9b...c4d7f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf625b8...39386d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6ab5c...dcf504` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6dadf...30313c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf76d9c...29cda9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf85d7c...d40a99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf87e70...377799` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8ca8d...b7a677` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8d1d8...83eafa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8d762...a9460a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf92001...c3f9e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf982b7...c79415` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf9b24c...49ebaa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa5b48...0ac719` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc0ef1...38edfd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc136f...31336c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd6b9c...aeb4ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe2881...89525e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfeb284...2bdbac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff5ed1...12eb00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff6f8c...63f955` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x017778...29cd7b` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0d7432...7982bf` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x647316...482ee9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Cakepie-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Cakepie-v1.0.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | contract_name | 55 | high |
| [blocksec_cakepie_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_cakepie_v1.0-signed.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 1 | high |
| [PeckShield-Audit-Report-Eigenpie-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Eigenpie-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | contract_name | 1 | high |
| [PeckShield-Audit-Report-Magpie-v1.1.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Magpie-v1.1.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x555ea7...6dcb5a`](./contracts/bsc-56/0x555ea72d7347e82c614c16f005fa91caf06dcb5a/) | BnbStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3b99a4...2e1bfc`](./contracts/bsc-56/0x3b99a4177e3f430590a8473f353dd87a5a2e1bfc/) | Buyback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2b5d9a...eda649`](./contracts/bsc-56/0x2b5d9adea07b590b638ffc165792b2c610eda649/) | Cakepie | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e09fa...81ce82`](./contracts/bsc-56/0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82/) | CakeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x368550...a96708`](./contracts/bsc-56/0x3685502ea3ea4175fb5cbb5344f74d2138a96708/) | Hypervisor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x885711...3dfc8c`](./contracts/bsc-56/0x885711bedd3d17949dfed5e77d5ab6e89c3dfc8c/) | ICHIVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x837cb0...25e7b3`](./contracts/bsc-56/0x837cb07f6b8a98731856092457524ff37b25e7b3/) | ListaOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfceb31...9edc46`](./contracts/bsc-56/0xfceb31a79f71ac9cbdcf853519c1b12d379edc46/) | ListaToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4e585c...0e764d`](./contracts/bsc-56/0x4e585c367dafa5db5e182a192e73f4e0900e764d/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8a016f...e2bb0b`](./contracts/bsc-56/0x8a016f1896dc2939ffdbb60f6e42bcc245e2bb0b/) | mBTCProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd06716...3b45fa`](./contracts/bsc-56/0xd06716e1ff2e492cc5034c2e81805562dd3b45fa/) | MGP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xf1ef7d...71a74b`](./contracts/sonic-146/0xf1ef7d2d4c0c881cd634481e0586ed5d2871a74b/) | MintedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83e817...6f555e`](./contracts/ethereum-1/0x83e817e1574e2201a005ec0f7e700ed5606f555e/) | mPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa99f6e...9eeb3e`](./contracts/base-8453/0xa99f6e6785da0f5d6fb42495fe424bce029eeb3e/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04d611...3f857d`](./contracts/bsc-56/0x04d6115703b0127888323f142b8046c7c13f857d/) | Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbcfccb...952812`](./contracts/bsc-56/0xbcfccbde45ce874adcb698cc183debcf17952812/) | PancakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05ff2b...608c7f`](./contracts/bsc-56/0x05ff2b0db69458a0750badebc4f9e13add608c7f/) | PancakeRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb2aa63...85a488`](./contracts/bsc-56/0xb2aa63f363196caba3154d4187949283f085a488/) | PancakeStableSwapLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2ac2b2...9c34ee`](./contracts/arbitrum-42161/0x2ac2b254bc18cd4999f64773a966e4f4869c34ee/) | PenpieOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xea44dd...2b9e6e`](./contracts/bsc-56/0xea44ddc58ec6b4902e19a353c554b6a4f32b9e6e/) | PumpBTCProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfd31e1...97819b`](./contracts/bsc-56/0xfd31e1c5e5571f8e7fe318f80888c1e6da97819b/) | SlisBNBProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0c3d68...8e4528`](./contracts/bsc-56/0x0c3d6892aa3b23811af3bd1bbea8b0740e8e4528/) | SmartChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c880f...a8c9e8`](./contracts/arbitrum-42161/0x0c880f6761f1af8d9aa9c466984b80dab9a8c9e8/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x009cf7...cea9b0`](./contracts/bsc-56/0x009cf7bc57584b7998236eff51b98a168dcea9b0/) | SyrupBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7b5eb3...9ddf96`](./contracts/arbitrum-42161/0x7b5eb3940021ec0e8e463d5dbb4b7b09a89ddf96/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f30a9...170210`](./contracts/ethereum-1/0x4f30a9d41b80ecc5b94306ab4364951ae3170210/) | VotingEscrowPendleMainchain | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xff9c59...88aef6`](./contracts/berachain-80094/0xff9c599d51c407a45d631c6e89cb047efb88aef6/) | WOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 11 |
| standard_library | 0 |
| needs_review | 300 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=63

Fork inheritance lineage and inherited audits are included when available.
