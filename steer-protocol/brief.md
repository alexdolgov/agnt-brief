# Agentic Audit Brief: Steer Protocol

## Project Overview

- Project: Steer Protocol (`steer-protocol`)
- Website: [https://app.steer.finance](https://app.steer.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.924Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, base
- Contract surface: 46 unique implementations (80 raw deployments)
- DeFi Llama TVL: $15,600,255.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquidity Manager. Structurally: 53 project-authored contract(s) across 2 chain(s); 24 ERC20 tokens, 1 ERC721 NFT, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 9 common project-authored base contract(s) (upgradeableproxy, proxy, baseliquiditymanager). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 117; live-surface contracts included: 80 (65 live, 15 unknown).
- Excluded by liveness: 37 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 25/31 (80.6%)
- Deployed-live implementations: 31 of 46 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 25/31
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 46
- Raw deployments: 80
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 25 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omniscia | Tier 2 | 25 | 80.6% | 2024-05 |

## Contract Surface

### ✅ Verified + Audited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BundleRegistry | unknown | base | n/a | 2 deployments: base [`0x806c2240793b3738000fcb62c66bf462764b903f`](./contracts/base-8453/0x806c2240793b3738000fcb62c66bf462764b903f/); base `0xab36d30c1a1c683037bd7aac67f29b2e3ecc6576` | ✅ Audited |
| BundleRegistry | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x279228aafd13bb4642abb772a248c78555dc39c4`](./contracts/arbitrum-42161/0x279228aafd13bb4642abb772a248c78555dc39c4/); arbitrum `0xca19bec25a41443f35eeae03411dce87d8c0edc4` | ✅ Audited |
| DynamicJobs | unknown | base | n/a | 4 deployments: base [`0x279228aafd13bb4642abb772a248c78555dc39c4`](./contracts/base-8453/0x279228aafd13bb4642abb772a248c78555dc39c4/); base `0x491bf4aca9a475e107cfa4bcdd836648b72c34e5`; arbitrum `0x981c9af8723a8aa5d85338a8bcf35a9710b0075f`; arbitrum `0xb27a61faf33d2f6ad7af8cc2512c3b58901f779b` | ✅ Audited |
| GasVault | unknown | base | n/a | 2 deployments: base [`0x3b41454cb7858b6d0535e61bae9362af0151cc2d`](./contracts/base-8453/0x3b41454cb7858b6d0535e61bae9362af0151cc2d/); base `0xc1ecd10398a6d7036ccee1f50551ff169715081c` | ✅ Audited |
| GasVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x16ba7102271dc83fff2f709691c2b601dad7668e`](./contracts/arbitrum-42161/0x16ba7102271dc83fff2f709691c2b601dad7668e/); arbitrum `0x254d37f5ed7e96fc2d242cb06b17fae1ee9e1ada` | ✅ Audited |
| KeeperRegistry | unknown | base | n/a | 2 deployments: base [`0x1a7e75715d157736103ec429ff7079994d907472`](./contracts/base-8453/0x1a7e75715d157736103ec429ff7079994d907472/); base `0xce965b256e8735911b5e569aba4508fd27afde1e` | ✅ Audited |
| KeeperRegistry | unknown | base | n/a | [`0x64833f91df7e9b5b1f35510a7febd213201aa06e`](./contracts/base-8453/0x64833f91df7e9b5b1f35510a7febd213201aa06e/) | ✅ Audited |
| KeeperRegistry | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8fb2cd40046b08f155d06c3a31b69c1bd2c971e2`](./contracts/arbitrum-42161/0x8fb2cd40046b08f155d06c3a31b69c1bd2c971e2/); arbitrum `0xf4de4180829272ae5f69acacf820f4f7d547513b` | ✅ Audited |
| MultiPositionLiquidityManager | unknown | base | n/a | [`0x00d0cc8db826da3f68b0f645acc7785f917aaff8`](./contracts/base-8453/0x00d0cc8db826da3f68b0f645acc7785f917aaff8/) | ✅ Audited |
| MultiPositionLiquidityManager | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc1ecd10398a6d7036ccee1f50551ff169715081c`](./contracts/arbitrum-42161/0xc1ecd10398a6d7036ccee1f50551ff169715081c/); arbitrum `0xe1c56f99a459ed47b629f3d818bcc84826bced66` | ✅ Audited |
| Orchestrator | unknown | base | n/a | 2 deployments: base [`0x8fb2cd40046b08f155d06c3a31b69c1bd2c971e2`](./contracts/base-8453/0x8fb2cd40046b08f155d06c3a31b69c1bd2c971e2/); base `0xf4de4180829272ae5f69acacf820f4f7d547513b` | ✅ Audited |
| Orchestrator | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2822ee30383eabcba817ab4a7a592f4a194e14b5`](./contracts/arbitrum-42161/0x2822ee30383eabcba817ab4a7a592f4a194e14b5/); arbitrum `0x38a07152ee64c7067feeba904d72abc9a9da0c77` | ✅ Audited |
| SinglePositionLiquidityManager | unknown | arbitrum | n/a | [`0x3b41454cb7858b6d0535e61bae9362af0151cc2d`](./contracts/arbitrum-42161/0x3b41454cb7858b6d0535e61bae9362af0151cc2d/) | ✅ Audited |
| StakingRewards | unknown | base | n/a | 2 deployments: base [`0x116dba5dce9ccda828218b7eb46406810632014c`](./contracts/base-8453/0x116dba5dce9ccda828218b7eb46406810632014c/); base `0xa1dd21fbd9e1f0bf28d41f18bdc22326e50c02e9` | ✅ Audited |
| StakingRewards | unknown | arbitrum | n/a | [`0x30138931beab8ee0233f8a094660c60a4383eb21`](./contracts/arbitrum-42161/0x30138931beab8ee0233f8a094660c60a4383eb21/) | ✅ Audited |
| SteerPeriphery | unknown | base | n/a | [`0x16ba7102271dc83fff2f709691c2b601dad7668e`](./contracts/base-8453/0x16ba7102271dc83fff2f709691c2b601dad7668e/) | ✅ Audited |
| SteerPeriphery | unknown | base | n/a | 3 deployments: base [`0x254d37f5ed7e96fc2d242cb06b17fae1ee9e1ada`](./contracts/base-8453/0x254d37f5ed7e96fc2d242cb06b17fae1ee9e1ada/); base `0xbfd2e0c4cf82d91ec13731e7bc14ac6120cd01f5`; arbitrum `0xab36d30c1a1c683037bd7aac67f29b2e3ecc6576` | ✅ Audited |
| SteerPeriphery | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x37fef4504ee86d1469858c166deb5f7a22489ed9`](./contracts/arbitrum-42161/0x37fef4504ee86d1469858c166deb5f7a22489ed9/); arbitrum `0x806c2240793b3738000fcb62c66bf462764b903f` | ✅ Audited |
| StrategyRegistry | unknown | base | n/a | 2 deployments: base [`0x317eedb54711681056f37e10d5de0b55455b476f`](./contracts/base-8453/0x317eedb54711681056f37e10d5de0b55455b476f/); base `0x99eca0e5db125900e3a0389f6d3503837e99f59b` | ✅ Audited |
| StrategyRegistry | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x09eb271b444d1db7163c8555919de85b20be7d1d`](./contracts/arbitrum-42161/0x09eb271b444d1db7163c8555919de85b20be7d1d/); arbitrum `0xd964811233b8a0185d3c93664df82136c80d1bb2` | ✅ Audited |
| VaultRegistry | unknown | base | n/a | [`0x2822ee30383eabcba817ab4a7a592f4a194e14b5`](./contracts/base-8453/0x2822ee30383eabcba817ab4a7a592f4a194e14b5/) | ✅ Audited |
| VaultRegistry | unknown | base | n/a | 2 deployments: base [`0x7760d5cb6366dd1dead394012186202b1834cde5`](./contracts/base-8453/0x7760d5cb6366dd1dead394012186202b1834cde5/); base `0xd964811233b8a0185d3c93664df82136c80d1bb2` | ✅ Audited |
| VaultRegistry | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x116dba5dce9ccda828218b7eb46406810632014c`](./contracts/arbitrum-42161/0x116dba5dce9ccda828218b7eb46406810632014c/); arbitrum `0x9f5b097ad23e2cf4f34e502a3e41d941678877dc` | ✅ Audited |
| WhitelistedMultiLiquidityManager | unknown | arbitrum | n/a | [`0x0c5c5beb833fd382b04e039f151942dc3d9a60ce`](./contracts/arbitrum-42161/0x0c5c5beb833fd382b04e039f151942dc3d9a60ce/) | ✅ Audited |
| WhitelistedSingleLiquidityManager | unknown | arbitrum | n/a | [`0xdca3251ebe8f85458e8d95813bcb816460e4bef1`](./contracts/arbitrum-42161/0xdca3251ebe8f85458e8d95813bcb816460e4bef1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Core | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x66025704d21c154cf1709ca759d4ddb62293b158`](./contracts/arbitrum-42161/0x66025704d21c154cf1709ca759d4ddb62293b158/); arbitrum `0xb2f009749260ddbefe5e1687895f0a0e411613ea` | ⚠️ Unaudited |
| ERC1155AdminMinter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x375775c28d16d1eabdf2d991b3b0a3c81990c812`](./contracts/arbitrum-42161/0x375775c28d16d1eabdf2d991b3b0a3c81990c812/); arbitrum `0xd778a415a3ab81ef27da61218c71a5f31a4d10be` | ⚠️ Unaudited |
| ERC1155MaxSupplyMintable | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x20d7e6d720e8dc3341e32c3375443969a08f4456`](./contracts/arbitrum-42161/0x20d7e6d720e8dc3341e32c3375443969a08f4456/); arbitrum `0x792e36c772f6da6280fa43159792f89e7444cf18` | ⚠️ Unaudited |
| GlobalReentrancyLock | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x147138a3c8ecd229b9306b7b2efc1b261d875079`](./contracts/arbitrum-42161/0x147138a3c8ecd229b9306b7b2efc1b261d875079/); arbitrum `0x90eaa68fae4703ff5328f2e86982e77ebc10539a` | ⚠️ Unaudited |
| Staking | unknown | arbitrum | n/a | 11 deployments: base `0x07536e7fbc498bd886d393fb693e71c8c4e45b97`; arbitrum [`0x004a733aa20ea2caddba6af62bb56aa96dce4922`](./contracts/arbitrum-42161/0x004a733aa20ea2caddba6af62bb56aa96dce4922/); arbitrum `0x0635b76fc26c1d65bb2d761ee2fc4652e8bf5ca8`; arbitrum `0x0b619438d1e8b8c205656502de59af2af71c43e0`; arbitrum `0x1e6a358a1721e0d2b84f39fd328fc03a1b6e863b`; arbitrum `0x3338b85fb1607c519962571b67061e02408475bb`; arbitrum `0x3dc57204f2230c8d972653db0205199eb2bd7f38`; arbitrum `0x6519a921d0e6f06524eff5df976abc9a3abf36cf`; arbitrum `0x78fe84c305c8cd7e23186f2740b73915baeadd52`; arbitrum `0xb10ab1a1c0e3e9697928f05da842a292310b37f1`; arbitrum `0xff46e1b60dd9de89aa04902d5c3c5ca01f8576a4` | ⚠️ Unaudited |
| Token | token | arbitrum | n/a | [`0x1c43d05be7e5b54d506e3ddb6f0305e8a66cd04e`](./contracts/arbitrum-42161/0x1c43d05be7e5b54d506e3ddb6f0305e8a66cd04e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x71be4708c86b8afd6aa47929ce073e400b5b7747` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9790afec5d23a840bc0597d9f54584057254d190` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbaad3154a16d3c1375e58b56281e202caa30c854` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x122126e397677cfd6476c531416b7cbec74c06c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x122e6df4a18619c0fc7dc99547aa17c285a5abe8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x253b89efa5a23b1b0305416973f21f6a11cefab0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x44379e4f18d589c5696d86a419b9684aa603ca07` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x657bb5fd00e6d6bda438988dcaf5b62ef16f6163` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6d611ee9904cea8650a8d3d35e71273195aaa9d8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x73f478268fe699d8f3d5855639b7789f8cf42261` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x76fcf46e3eaf5c5d403009c5c8c0e816b69d0c43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc113f7e3af88a4cd1f2cccc5c2d11154c881e63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd1b49bb21d2c2638cfddf4b2dc8dbc61dcbce0ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe489df86999c0138a55cecc096930f580d192ab8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfebd2070f187c3adc7296902e9054f022df5c1a6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf](https://hashlock.com/wp-content/uploads/2025/04/Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf) | Hashlock | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4](https://omniscia.io/reports/steer-protocol-poolshark-vaults-660552b2d0e471001941c8f4) | Omniscia | Audit | 2024-05 | stale | Direct | contract_name | 3 | high |
| [omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566](https://omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566) | Omniscia | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [omniscia.io/reports/steer-protocol-algebra-strategies-6508231259c40e0014bce243](https://omniscia.io/reports/steer-protocol-algebra-strategies-6508231259c40e0014bce243) | Code4rena | Contest | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f](https://omniscia.io/reports/steer-protocol-core-implementation-636b8fca6693a100164bf02f) | Omniscia | Audit | n/a | unknown | Direct | contract_name | 45 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x66025704d21c154cf1709ca759d4ddb62293b158`](./contracts/arbitrum-42161/0x66025704d21c154cf1709ca759d4ddb62293b158/) | Core | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x375775c28d16d1eabdf2d991b3b0a3c81990c812`](./contracts/arbitrum-42161/0x375775c28d16d1eabdf2d991b3b0a3c81990c812/) | ERC1155AdminMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x20d7e6d720e8dc3341e32c3375443969a08f4456`](./contracts/arbitrum-42161/0x20d7e6d720e8dc3341e32c3375443969a08f4456/) | ERC1155MaxSupplyMintable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x147138a3c8ecd229b9306b7b2efc1b261d875079`](./contracts/arbitrum-42161/0x147138a3c8ecd229b9306b7b2efc1b261d875079/) | GlobalReentrancyLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x004a733aa20ea2caddba6af62bb56aa96dce4922`](./contracts/arbitrum-42161/0x004a733aa20ea2caddba6af62bb56aa96dce4922/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1c43d05be7e5b54d506e3ddb6f0305e8a66cd04e`](./contracts/arbitrum-42161/0x1c43d05be7e5b54d506e3ddb6f0305e8a66cd04e/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=48

Zero-match audit list:

- [11688] Steer-Protocol-Smart-Contract-Audit-Report-Final-Report.pdf
- [11690] omniscia.io/reports/steer-protocol-algebra-integral-position-manager-smart-rewarder-661909e09ce51e0018065566
- [11691] omniscia.io/reports/steer-protocol-algebra-strategies-6508231259c40e0014bce243

Fork inheritance lineage and inherited audits are included when available.
