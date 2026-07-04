# Agentic Audit Brief: Secured Finance

## Project Overview

- Project: Secured Finance (`secured-finance`)
- Website: [https://secured.finance/](https://secured.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:52.940Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum, polygon-zkevm
- Contract surface: 117 unique implementations (216 raw deployments)
- DeFi Llama TVL: $589,511.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 18 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 5 common project-authored base contract(s) (mixinaddressresolver, proxyable, mixinaccesscontrol). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 218; live-surface contracts included: 216 (121 live, 95 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 17/30 (56.7%)
- Deployed-live implementations: 30 of 117 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 17/31
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 86
- Unique implementations: 117
- Raw deployments: 216
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 17 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 17 | 54.8% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressResolver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0fc649...f53f1f`](./contracts/ethereum-1/0x0fc649b763a685e2f22fa248cebf6b2b70f53f1f/); ethereum `0xa3719b...368e4a` | ✅ Audited |
| BeaconProxyController | registry | ethereum | n/a | 4 deployments: ethereum [`0x3dd09b...3be313`](./contracts/ethereum-1/0x3dd09bf57fa2128af8802b177677fccbb73be313/); ethereum `0x8a44ed...c4c897`; ethereum `0xad6861...a2851b`; ethereum `0xbfa7e7...286211` | ✅ Audited |
| DepositManagementLogic | unknown | ethereum | n/a | 5 deployments: ethereum [`0x1fa5d5...0bef95`](./contracts/ethereum-1/0x1fa5d5a4df29c09825b63b9a653a74a1b80bef95/); ethereum `0x3dc65b...530bf3`; ethereum `0x6afe00...b86ed4`; ethereum `0xd60551...fd9765`; ethereum `0xe825f9...7eba89` | ✅ Audited |
| FundManagementLogic | unknown | ethereum | n/a | 5 deployments: ethereum [`0x3482cf...8bb820`](./contracts/ethereum-1/0x3482cfcd46d580260eb85d173b3856273a8bb820/); ethereum `0x449d3a...07cf94`; ethereum `0x4beabc...72a3c8`; ethereum `0xd4e37b...824223`; ethereum `0xf4f496...9ee2f0` | ✅ Audited |
| FutureValueVault | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x01fa28...a437fe`](./contracts/ethereum-1/0x01fa284e47403a47ec6c836b41db33a849a437fe/); ethereum `0x077ea4...a63879`; ethereum `0x68eb5c...da97ce`; ethereum `0xc860e5...344816`; ethereum `0xe05e26...c0a1f6` | ✅ Audited |
| GenesisValueVault | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x0bbe24...3e7da0`](./contracts/ethereum-1/0x0bbe246f63dedc7b2e0245d72619b4c7c13e7da0/); ethereum `0x224f43...2060b4`; ethereum `0x24c8c6...b19da4`; ethereum `0xaed8d7...5fd92d`; ethereum `0xf49cc5...cd3e9d`; ethereum `0xfe6225...58bb1a` | ✅ Audited |
| LendingMarket | core_logic | ethereum | n/a | 7 deployments: ethereum [`0x39fce9...efac9e`](./contracts/ethereum-1/0x39fce9528d756f7fa43058c6c6fe862f09efac9e/); ethereum `0x5a3207...777030`; ethereum `0x819cc1...46b52d`; ethereum `0x927160...29dd1d`; ethereum `0xacc7f4...624d97`; ethereum `0xbc542b...a16819`; ethereum `0xd06dd4...57e521` | ✅ Audited |
| LendingMarketController | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x1237b5...6b61e7`](./contracts/ethereum-1/0x1237b5c92a8e7025046de64be79326f3bb6b61e7/); ethereum `0x60ccbf...0e5fc7`; ethereum `0x6caf98...61e873`; ethereum `0x79b9bf...a51b8f`; ethereum `0xd0ae7b...f0214c`; ethereum `0xf50875...b5f6ec` | ✅ Audited |
| LendingMarketOperationLogic | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x1c9579...7e2f22`](./contracts/ethereum-1/0x1c9579874a3bd0088b85faa520e88ea0677e2f22/); ethereum `0x293c4e...512810`; ethereum `0x3a2a5a...71fb8b`; ethereum `0xa4c30d...1b8f30`; ethereum `0xe4f5c6...a9582a` | ✅ Audited |
| LendingMarketUserLogic | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x378083...b32efc`](./contracts/ethereum-1/0x37808387929c4ca07cd01929aeb142e2ddb32efc/); ethereum `0x3efcfc...b679a2`; ethereum `0xc521f8...ac614b`; ethereum `0xc66399...fcd081`; ethereum `0xc901ed...e4b67b` | ✅ Audited |
| LiquidationLogic | unknown | ethereum | n/a | 6 deployments: ethereum [`0x0722e0...1a20c3`](./contracts/ethereum-1/0x0722e0a2482df780b6d833b78c4576f0321a20c3/); ethereum `0x0e1913...aa2b34`; ethereum `0x11ec43...eba1d9`; ethereum `0xb5b236...cb9fb9`; ethereum `0xf64ebc...8b406a`; ethereum `0xf90ef8...405093` | ✅ Audited |
| OrderActionLogic | unknown | ethereum | n/a | 6 deployments: ethereum [`0x2feb57...faa1ef`](./contracts/ethereum-1/0x2feb574b70d1e5cd44ad05733648f65889faa1ef/); ethereum `0x41eb72...30750b`; ethereum `0x54a3f4...1d7926`; ethereum `0x867f87...96ab8a`; ethereum `0xb9e1af...e9dc79`; ethereum `0xefabd8...413c8c` | ✅ Audited |
| OrderBookLogic | unknown | ethereum | n/a | 3 deployments: ethereum [`0x05e71d...7f21b5`](./contracts/ethereum-1/0x05e71dc39c3de40e017d166e605b97451e7f21b5/); ethereum `0xc58700...89103a`; ethereum `0xef430f...185120` | ✅ Audited |
| OrderReaderLogic | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0b063c...11dbfe`](./contracts/ethereum-1/0x0b063c48362d01c3ea8134615035d4aa6211dbfe/); ethereum `0x21ee63...91b33d`; ethereum `0x64a055...654e90`; ethereum `0xacd8f5...c30941` | ✅ Audited |
| ProxyController | governance | ethereum | n/a | 2 deployments: ethereum [`0x1634d2...020ebb`](./contracts/ethereum-1/0x1634d2104b48299da7d927c4582ea7ba67020ebb/); ethereum `0x561507...1fa960` | ✅ Audited |
| ReserveFund | unknown | ethereum | n/a | 5 deployments: ethereum [`0x5f4ca7...73379e`](./contracts/ethereum-1/0x5f4ca7e45ef6f74c82cb96f968c280bc5573379e/); ethereum `0x6518f2...71cbdc`; ethereum `0xb4c852...fd01ad`; ethereum `0xc360e1...06c52a`; ethereum `0xfcb48a...d55d4e` | ✅ Audited |
| TokenVault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x185272...a84e44`](./contracts/ethereum-1/0x1852726f6bd3c4657156d529cde023d273a84e44/); ethereum `0x4aed62...1f649d`; ethereum `0x6eadcc...f3f25f`; ethereum `0x83c785...1408bd` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CurrencyController | governance | ethereum | n/a | [`0xfc8c59...007439`](./contracts/ethereum-1/0xfc8c59903b064a4abf013ae2757f570f2e007439/) | ⚠️ Unaudited |
| GenesisValueVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x43b7a3...dc5145`](./contracts/ethereum-1/0x43b7a3c78ada26eb2d3183da03795081a0dc5145/); ethereum `0xa2700d...a07f2b` | ⚠️ Unaudited |
| MigrationAddressResolver | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x5a074d...36cb59`](./contracts/ethereum-1/0x5a074d18c00c07f7f7bc13e89919bfb00236cb59/); ethereum `0xcfec1a...e2f885`; ethereum `0xdda594...943d2c`; ethereum `0xde683a...e9bf53`; ethereum `0xefdd05...9b97a5`; ethereum `0xf53327...ba753c` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0xf8e671...831b67`](./contracts/ethereum-1/0xf8e671b3c70b9549ca87c6c9dc57a9823a831b67/) | ⚠️ Unaudited |
| QuickSort | unknown | ethereum | n/a | [`0xac98b3...b817fc`](./contracts/ethereum-1/0xac98b3afa0b59b8d770e29d5bf1f7cd623b817fc/) | ⚠️ Unaudited |
| ReserveFund | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8bd2e1...bda6fb`](./contracts/ethereum-1/0x8bd2e1ac0e990c1b610f4a491cc92364c6bda6fb/); ethereum `0xd2683e...d2778e` | ⚠️ Unaudited |
| StaticPriceAggregator | operational_periphery | ethereum | n/a | 19 deployments: ethereum [`0x1bb66b...abe10d`](./contracts/ethereum-1/0x1bb66b0625a52abf12065ef596ec2adb76abe10d/); ethereum `0x3179d2...761b84`; ethereum `0x354662...e4dc04`; ethereum `0x379423...106848`; ethereum `0x40786c...f6b08c`; ethereum `0x40bb4f...22a349`; ethereum `0x4ce6bd...5e5eae`; ethereum `0x4cfb76...24be09`; ethereum `0x51dfbe...0a51b7`; ethereum `0x6221b6...6cf19c`; ethereum `0x72f550...e09331`; ethereum `0x732bad...c01262`; ethereum `0x7fd3cc...06d034`; ethereum `0x813dd1...de74ee`; ethereum `0xd0fdb0...587b37`; ethereum `0xd778d1...4df7ef`; ethereum `0xe8e0c1...91a4eb`; ethereum `0xf15359...abf288`; ethereum `0xf15b2a...e616c1` | ⚠️ Unaudited |
| TokenFaucet | token | ethereum | n/a | 4 deployments: ethereum [`0x59d580...d846c1`](./contracts/ethereum-1/0x59d58018ea583b965bfcf8f098344ee60bd846c1/); ethereum `0x675d43...774dfa`; ethereum `0xb92ac5...d7cb26`; ethereum `0xed3908...1e6f70` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | ethereum | n/a | [`0x6f6046...ab8935`](./contracts/ethereum-1/0x6f6046e59501e484152d46045ba5eecf1cab8935/) | ⚠️ Unaudited |
| TokenVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x4675b1...3135d4`](./contracts/ethereum-1/0x4675b1573c528c4d5b4fe60e647810e4cf3135d4/); ethereum `0xb74749...b69393` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2b6fff...bf7158`](./contracts/ethereum-1/0x2b6fff70b2273b565c7012c9e7da7a55e2bf7158/); ethereum `0xed890f...6863c5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | 2 deployments: ethereum [`0xafc8cf...38c4a7`](./contracts/ethereum-1/0xafc8cf94f8e43e874a1f9a3e19b112305f38c4a7/); ethereum `0xff3b44...8c038d` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | ethereum | n/a | [`0x7a6e36...028789`](./contracts/ethereum-1/0x7a6e3635694952dc00f6ba4d4ad1a7b892028789/) | ⚠️ Unaudited |
| ZCToken | token | ethereum | n/a | 3 deployments: ethereum [`0x3d8202...8b1e9a`](./contracts/ethereum-1/0x3d820274f7d98bef0b5dd78411d63ddd868b1e9a/); ethereum `0x6bb750...11ef37`; ethereum `0x7a1932...e7b3c8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (86)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x02f2de...ceeb65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04d2b9...4b46cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x050c73...6cbc6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08cdef...6c51cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x095117...6c942f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09d39e...903645` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10651c...edc995` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x107a8a...90bc59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x151a9c...3cea32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x159a1f...bee89e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18f082...951cc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19d812...4da42a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b4e56...574d4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28eb84...de7e9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x297c64...eff517` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ad86f...7bbe7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c15fd...ef45f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d92b3...f27fcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x324886...a06470` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33a5f7...3d9060` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34b5fd...fd7d8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x431d7f...1fcf34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43eede...f89928` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x457671...4833a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4742ad...865866` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e6eab...f29a4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b1cdc...5f10b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b47e0...aef331` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b5f2f...685b2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60fcd0...eeded4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63dbcf...adc2c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6523fc...298020` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x655056...169e35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f06b1...15a686` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71c9bb...421dcf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74c75c...9b0421` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75045f...68e2d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75f8c7...15adcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x793fc4...5a7c17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bde2b...ba9e7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a16aa...54f95d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b29d1...cd0722` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c8098...4fed7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f3d1b...4e313e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f7878...596daa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94d02d...d0bdf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96a3ae...07807d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96d7e0...d56c0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98d7a9...c5c063` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa041a1...0e9176` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1925f...d73f79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1d9f8...5ea9fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa63422...7634bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6a6b5...d654dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa91a09...a9f099` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9b039...dc1203` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae342e...7ac3e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb034d5...d56bab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6bf26...85cdc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8d4f0...3f051b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd4585...097cfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbea8b9...716d03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc052a3...fa3c66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1decd...47bee3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc25f6f...a98e23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc79a6f...345770` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca4112...93d553` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc348e...99fe89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd36c6...60c987` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce9813...857e76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2f21d...7865bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd795c9...4d310c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd84bde...ac740a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe02a6b...dc8802` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe453ff...986cd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4b990...d97ab8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9bda3...539e00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea83f7...f0f9cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb7cad...2f0549` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedbd0e...c59fdc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf141ee...d3fc83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf87de2...106943` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb3170...356dea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc8274...c58f55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc882e...652cd0` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | 4 deployments: polygon-zkevm `0x0896ac...d68824`; polygon-zkevm `0x7dca6b...2bf2dc`; polygon-zkevm `0x9e1254...27a74b`; polygon-zkevm `0xb74749...b69393` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-01-Hexens.pdf](https://github.com/Secured-Finance/stablecoin-contracts/blob/develop/audits/2025-01-Hexens.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2025-03-Decurity.pdf](https://github.com/Secured-Finance/stablecoin-contracts/blob/develop/audits/2025-03-Decurity.pdf) | Decurity | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [2025-08-Hexens.pdf](https://github.com/Secured-Finance/stablecoin-contracts/blob/develop/audits/2025-08-Hexens.pdf) | Decurity | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [2023-11-Quantstamp.pdf](https://github.com/Secured-Finance/contracts/blob/develop/audits/2023-11-Quantstamp.pdf) | Quantstamp | Audit | 2023-11 | stale | Direct | contract_name | 17 | n/a |
| [2024-03-Quantstamp.pdf](https://github.com/Secured-Finance/contracts/blob/develop/audits/2024-03-Quantstamp.pdf) | Quantstamp | Audit | 2024-03 | stale | Direct | contract_name | 11 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 117 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=28

Zero-match audit list:

- [13817] 2025-01-Hexens.pdf
- [13818] 2025-03-Decurity.pdf
- [13819] 2025-08-Hexens.pdf

Fork inheritance lineage and inherited audits are included when available.
