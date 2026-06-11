# Agentic Audit Brief: KUMA Protocol

## Project Overview

- Project: KUMA Protocol (`kuma-protocol`)
- Website: [https://kuma.bond](https://kuma.bond)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-11T12:10:01.129Z
- Pipeline run: v2-pipeline-2026-06-11-9658c2-d9fc
- Chains: ethereum, linea, mantle, polygon
- Contract surface: 53 unique implementations (210 raw deployments)
- DeFi Llama TVL: $3,075,023.64
- On-chain TVL (included contracts): $3,102,306.93
- TVL by chain: Ethereum $3,044,482.43 | Linea $55,765.24 | Polygon $2,059.26

## Project Description

KUMA Protocol provides infrastructure for regulated real-world-asset-backed yield tokens. It swaps regulated MCAG-issued KUMA NFTs, initially backed by sovereign bonds, into transferable interest-bearing ERC-20 KIBTs, supported by KIBToken, KBCToken/KUMABondToken components, address-provider and access-control registry infrastructure, rate/feed integrations, fee collection, and swap contracts. Claims that KUMA directly tokenizes sovereign bonds or primarily facilitates stablecoin swaps should be qualified unless separately sourced.

### Architecture

The KUMA Protocol family provides the core infrastructure (rate feeds, swaps, fee collection) shared by all token instances. Individual token families (EGK, FRK, USK) are specific deployments of KIBToken that rely on the protocol's registries and access controllers for operation.

## Audit Coverage Summary

- Verified implementations audited: 9/32 (28.1%)
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 53
- Raw deployments: 210
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $23,142.22
- Latest audit: 2023-02 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 1 unknown
- Tier 1 coverage: 28.1% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 9 | 28.1% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| KIBToken | token | ethereum | 16 deployments: ethereum [`0x01bf66...86cdfd`](./contracts/ethereum-1/0x01bf66becdcfd6d59a5ca18869f494fea086cdfd/); ethereum `0x3cd093...290f80`; ethereum `0x66dfa3...8dcfb1`; ethereum `0x932c93...537e5f`; ethereum `0x94abc2...851ab3`; ethereum `0xf2b5c4...f7868e`; polygon `0x197c9e...dd795e`; polygon `0x2cb728...46c6eb`; polygon `0xa66818...7e214a`; polygon `0xedb20e...1b8703`; mantle `0x05f41f...e599a0`; mantle `0x3bcdd3...b7e0a7`; linea `0x5ccc9f...bdd3e8`; linea `0x7a6aa8...ff3865`; linea `0xc84f2c...ff448e`; linea `0xfe9685...f2e8e2` | ✅ Audited |
| Blacklist | unknown | mantle | 5 deployments: ethereum `0xac4724...c45baa`; polygon `0x7cdfc6...51f0c0`; polygon `0xc10367...6c18ef`; mantle [`0x11be34...7c97be`](./contracts/mantle-5000/0x11be346f8b79613bd865d5dbffc1ba3c3b7c97be/); linea `0xd34a77...86da1e` | ✅ Audited |
| KBCToken | token | linea | 12 deployments: ethereum `0x238134...d9ab0a`; ethereum `0xa89d5f...184c1d`; polygon `0x8df37d...28bd69`; polygon `0xd965ff...fa9caf`; mantle `0xabe67b...35f0d0`; mantle `0xf4b4d2...049a17`; linea [`0x1647f3...e96f7c`](./contracts/linea-59144/0x1647f37e6db9756522f6d31ebae01f7ad1e96f7c/); linea `0x32cc00...da664e`; linea `0x6a83fb...0c49e0`; linea `0x91ca27...2df264`; linea `0xc54b48...1550b7`; linea `0xc815b8...d8108a` | ✅ Audited |
| KUMAAddressProvider | registry | mantle | 12 deployments: ethereum `0xb091c1...97338a`; ethereum `0xdc024b...3d7dc9`; polygon `0x4dba79...19941c`; polygon `0x7714fc...b54f65`; mantle [`0x2bb3f7...c742a1`](./contracts/mantle-5000/0x2bb3f79b89a33dbcec846ec706c650ccefc742a1/); mantle `0xe740e2...ede6be`; linea `0x2fb3b4...f16840`; linea `0x5a22c2...a77fb3`; linea `0x69c6d6...6e27f2`; linea `0x96ae40...767b8f`; linea `0xdc5767...e6f34e`; linea `0xeb4afe...f0fd12` | ✅ Audited |
| KUMABondToken | token | linea | 5 deployments: ethereum `0x74e9e8...b79a7b`; polygon `0x4bd547...12f389`; polygon `0xfff0a9...d13e7a`; mantle `0xda9b8d...ec61d9`; linea [`0x3d0a18...3a3a9a`](./contracts/linea-59144/0x3d0a18c6bddd2e03ddd0ea26ed2bb9c6f83a3a9a/) | ✅ Audited |
| KUMAFeeCollector | unknown | linea | 14 deployments: ethereum `0x25b23d...e74424`; ethereum `0x400e02...62ad25`; ethereum `0x45eac9...14d331`; ethereum `0xd4144c...773407`; polygon `0x7feec0...ffd1b6`; polygon `0xb5e2e9...7faa36`; polygon `0xd4db0f...3e8a65`; polygon `0xd567e0...49ddbd`; mantle `0x33bb1a...9fbf35`; mantle `0xae37de...bccfb7`; linea [`0x16a4ea...9c4940`](./contracts/linea-59144/0x16a4ead3305e1b265c35915a30004519f09c4940/); linea `0x704343...e5517c`; linea `0x9f9f94...3d9056`; linea `0xe12151...0db8eb` | ✅ Audited |
| KUMASwap | unknown | polygon | 14 deployments: ethereum `0x43ea73...7f6fcb`; ethereum `0x4cd485...15dcdf`; ethereum `0xb1ab37...951cda`; ethereum `0xcb32e7...222fa1`; polygon [`0x0ac2e3...514e73`](./contracts/polygon-137/0x0ac2e3cd1e9b2da91972d2363e76b5a0ce514e73/); polygon `0x41d4d2...a516bb`; polygon `0xbcc382...8b4ebc`; polygon `0xd2a75e...752c82`; mantle `0x63a402...d1625b`; mantle `0xbb4335...cfca42`; linea `0x34e232...c12233`; linea `0x41deef...0483ac`; linea `0x42817d...ecebc1`; linea `0xbe5acb...f06c6f` | ✅ Audited |
| MCAGAggregator | unknown | ethereum | 8 deployments: ethereum [`0x06b1d7...3bb9d7`](./contracts/ethereum-1/0x06b1d77aca7e3239878ca864931c5750113bb9d7/); ethereum `0x357536...b782aa`; ethereum `0xc28372...03918d`; polygon `0x13414c...61cba9`; polygon `0x7e86bc...bbdd94`; mantle `0x3015c5...0af6c3`; linea `0x5516c2...444fd1`; linea `0x782b8c...b034a3` | ✅ Audited |
| MCAGRateFeed | unknown | mantle | 12 deployments: ethereum `0x6596a0...fd9daf`; ethereum `0xab5459...a28f7b`; polygon `0x173eb1...f827ef`; polygon `0x72e923...0ee60a`; mantle [`0x0abf0c...69569a`](./contracts/mantle-5000/0x0abf0c3822fee43d58e3ffac870de5c4f969569a/); mantle `0x4520ee...a29c7d`; linea `0x26ddb0...e25dde`; linea `0x27c57d...6e591b`; linea `0x3eb85a...db661f`; linea `0x959f2d...a5d69d`; linea `0xec23c6...920fca`; linea `0xf1de41...ad07c5` | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WrappedRebaseToken | token | polygon | 7 deployments: ethereum `0x1543b1...845395`; ethereum `0x476507...200c87`; ethereum `0xaf4ce7...e57e09`; ethereum `0xb186b9...18aef7`; ethereum `0xf1254e...9e3fe4`; polygon [`0x01d1a8...511a3a`](./contracts/polygon-137/0x01d1a890d40d890d59795afcce22f5adbb511a3a/); linea `0x2f0b43...d7297a` | ⚠️ Unaudited |
| AccessController | governance | polygon | 14 deployments: ethereum `0x8b853d...30a725`; ethereum `0xe3aaef...92351e`; polygon [`0x00142b...a05e7c`](./contracts/polygon-137/0x00142b50b435a6ddef5d91bfbb7208ecd2a05e7c/); polygon `0x02b23b...c0a8b1`; polygon `0x302888...652584`; polygon `0x4de405...467e23`; polygon `0x6bfad3...5d4cd6`; polygon `0xaea58d...56f3bf`; polygon `0xc7b973...d77c0d`; polygon `0xe7ec63...8a5c8f`; mantle `0x291cb8...ae299a`; mantle `0x8cf407...e3494a`; linea `0x3037e0...c4604e`; linea `0x80a31c...701a40` | ⚠️ Unaudited |
| AddressProvider | registry | polygon | 5 deployments: polygon [`0x385190...fdcd15`](./contracts/polygon-137/0x38519093cc62d83e31afb53c00c0bf4dc8fdcd15/); polygon `0x3d58b7...8ebd58`; polygon `0xb89ddc...855b88`; polygon `0xdf4f21...cd79fa`; polygon `0xede773...997c53` | ⚠️ Unaudited |
| ConfigProvider | governance | polygon | 3 deployments: polygon [`0x20a83a...a9fab4`](./contracts/polygon-137/0x20a83af929f1de7d518d49e93f5465d040a9fab4/); polygon `0x44aded...646163`; polygon `0xfed8a7...7bdb22` | ⚠️ Unaudited |
| DebtNotifier | unknown | polygon | 2 deployments: polygon [`0xa88ced...7d329f`](./contracts/polygon-137/0xa88ced4edfd32bcd32de592ea3eec7c03d7d329f/); polygon `0xeb6b8f...a53574` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | linea | 7 deployments: polygon `0x86f875...adec87`; polygon `0xb27615...679d48`; polygon `0xecede3...5b8ed4`; linea [`0x31150b...3e00fa`](./contracts/linea-59144/0x31150b1a1ad3a7cfda76e36aae379efd8f3e00fa/); linea `0x57bd03...a8f3fa`; linea `0x5eb5bd...25684d`; linea `0x82d9db...5b3056` | ⚠️ Unaudited |
| ERC4626Oracle | operational_periphery | ethereum | 3 deployments: ethereum [`0xa1048e...2c6888`](./contracts/ethereum-1/0xa1048eef9c523304202daf480051a672e92c6888/); ethereum `0xc77d36...7abce0`; polygon `0xabd06d...6afa41` | ⚠️ Unaudited |
| FeeDistributor | operational_periphery | polygon | 3 deployments: polygon [`0x28c1ab...62cd85`](./contracts/polygon-137/0x28c1ab6aeabb84491dbafc71d9ebb5cc1d62cd85/); polygon `0x83d8ca...ca1227`; polygon `0x8cfa62...3d04b5` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | 2 deployments: ethereum [`0x33da84...e0d1bf`](./contracts/ethereum-1/0x33da84dd937779f3edaccf87e7ddcdc216e0d1bf/); ethereum `0xb55027...33f450` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | linea | 4 deployments: polygon `0x1a1a40...a70156`; polygon `0x5219bc...1d2247`; linea [`0x1151d6...642997`](./contracts/linea-59144/0x1151d63eb6154843d4b4898cf4c63af556642997/); linea `0x7cf34a...025432` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | mantle | 2 deployments: mantle [`0x37d1c9...b130a9`](./contracts/mantle-5000/0x37d1c94087643dfe5288f72cd1e4a6fde5b130a9/); mantle `0xfef638...3207b6` | ⚠️ Unaudited |
| GovernanceAddressProvider | registry | polygon | 2 deployments: polygon [`0x026fa9...fa0ecf`](./contracts/polygon-137/0x026fa9b2bc828c7e0acca440fdf77a19d3fa0ecf/); polygon `0xa918fa...f47e63` | ⚠️ Unaudited |
| KIBTAggregator | unknown | polygon | 4 deployments: ethereum `0xb76c37...ac0695`; ethereum `0xdc888b...96cb50`; polygon [`0x82c3e5...77b4f0`](./contracts/polygon-137/0x82c3e5aa2b31a9bdcc9149fb8050464d2c77b4f0/); polygon `0xae1e83...f77b50` | ⚠️ Unaudited |
| KUMAAccessController | governance | ethereum | 6 deployments: ethereum [`0x5fad6f...1163de`](./contracts/ethereum-1/0x5fad6f80312aee6f19784a7fc359f90d441163de/); polygon `0xfe7261...a42a54`; mantle `0xcdf658...9a3b66`; linea `0x85dd3a...3be78f`; linea `0xad5c32...74ad6b`; linea `0xb9cee0...6a52ae` | ⚠️ Unaudited |
| LiquidationManager | governance | polygon | 3 deployments: polygon [`0x4986af...b9d5f3`](./contracts/polygon-137/0x4986af7f4194af50586f8236f76bef909cb9d5f3/); polygon `0x8b45ce...d22047`; polygon `0x97b6d9...f5b740` | ⚠️ Unaudited |
| PaUSD | unknown | polygon | 6 deployments: polygon [`0x4811d2...233a00`](./contracts/polygon-137/0x4811d2a9374db89ec5ffd70be76bd68618233a00/); polygon `0x604bb0...667277`; polygon `0x8054d4...a7486b`; polygon `0xb04e31...cad1f5`; mantle `0x6ff6fd...acae09`; linea `0x93bf70...e78b38` | ⚠️ Unaudited |
| PriceFeedUSD | operational_periphery | polygon | 3 deployments: polygon [`0x6ee6ac...b06683`](./contracts/polygon-137/0x6ee6aca3b1381c8d9fbe9be4d16bbb1bc2b06683/); polygon `0xabb419...128e65`; polygon `0xb3d014...321fa4` | ⚠️ Unaudited |
| RateProvider | unknown | polygon | 2 deployments: ethereum `0xd8689e...64e842`; polygon [`0x76d8b7...6628e2`](./contracts/polygon-137/0x76d8b79fb9afd4da89913458c90b6c09676628e2/) | ⚠️ Unaudited |
| RatesManager | governance | polygon | 2 deployments: polygon [`0xd58f48...05497a`](./contracts/polygon-137/0xd58f48f533e3896b51854bd95165fdd87605497a/); polygon `0xfc3631...ff1686` | ⚠️ Unaudited |
| VaultsCore | core_logic | polygon | 3 deployments: polygon [`0x11737d...3c77ff`](./contracts/polygon-137/0x11737d07a928b62b3814ecd1778814a82e3c77ff/); polygon `0xc15576...58bf83`; polygon `0xefce11...c402e9` | ⚠️ Unaudited |
| VaultsCoreState | core_logic | polygon | 3 deployments: polygon [`0x20b55e...869e38`](./contracts/polygon-137/0x20b55eaba83c3ce27082879be54fe47bbb869e38/); polygon `0x2caf48...836572`; polygon `0x7a33f4...665f75` | ⚠️ Unaudited |
| VaultsDataProvider | core_logic | polygon | 3 deployments: polygon [`0x003b7b...646d08`](./contracts/polygon-137/0x003b7bdc1adfa3fee002869081cbff4d73646d08/); polygon `0x8a604e...a9101a`; polygon `0xd0e68b...4ebabc` | ⚠️ Unaudited |
| WrappedRebaseTokenFactory | registry | polygon | 2 deployments: polygon [`0x9bdd10...98f735`](./contracts/polygon-137/0x9bdd10f41b4de9dc1d63ae6ff9075c075298f735/); linea `0xae136f...efabbd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x7a467d...cb1981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8e8cdf...f74874` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc7d90b...dff07a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd407db...6de867` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x15c05d...da2c5b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x308466...c0ccdf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7e5660...734f76` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9f1a2e...d5e05e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xba75fc...68546b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc1e17d...dd6a82` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xab7e63...c3570a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xfdbb83...a43b27` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x1a3445...7317a8` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x274b30...2b0bce` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x6a9742...d3f24a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x6f74f0...a8bbbd` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7d9573...1cecb0` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x83f8eb...15af34` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x888c2b...2826d1` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc3b9d4...34dc3e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xda8102...accfeb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Code4rena](https://code4rena.com/reports/2023-02-kuma) | Code4rena | Contest | 2023-02 | stale | Direct | contract_name | 98 | high |
| [KUMA Audit report #3](https://www.chainsecurity.com/security-audit/kuma-protocol) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Public Github Repo: <>](https://github.com/code-423n4/2023-02-kuma) | Code4rena | Contest | 2023-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x01d1a8...511a3a`](./contracts/polygon-137/0x01d1a890d40d890d59795afcce22f5adbb511a3a/) | WrappedRebaseToken | token | $23,142.22 | Verified native implementation with $23,142.22 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00142b...a05e7c`](./contracts/polygon-137/0x00142b50b435a6ddef5d91bfbb7208ecd2a05e7c/) | AccessController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x385190...fdcd15`](./contracts/polygon-137/0x38519093cc62d83e31afb53c00c0bf4dc8fdcd15/) | AddressProvider | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x20a83a...a9fab4`](./contracts/polygon-137/0x20a83af929f1de7d518d49e93f5465d040a9fab4/) | ConfigProvider | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa88ced...7d329f`](./contracts/polygon-137/0xa88ced4edfd32bcd32de592ea3eec7c03d7d329f/) | DebtNotifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1048e...2c6888`](./contracts/ethereum-1/0xa1048eef9c523304202daf480051a672e92c6888/) | ERC4626Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x28c1ab...62cd85`](./contracts/polygon-137/0x28c1ab6aeabb84491dbafc71d9ebb5cc1d62cd85/) | FeeDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x026fa9...fa0ecf`](./contracts/polygon-137/0x026fa9b2bc828c7e0acca440fdf77a19d3fa0ecf/) | GovernanceAddressProvider | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x82c3e5...77b4f0`](./contracts/polygon-137/0x82c3e5aa2b31a9bdcc9149fb8050464d2c77b4f0/) | KIBTAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fad6f...1163de`](./contracts/ethereum-1/0x5fad6f80312aee6f19784a7fc359f90d441163de/) | KUMAAccessController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4986af...b9d5f3`](./contracts/polygon-137/0x4986af7f4194af50586f8236f76bef909cb9d5f3/) | LiquidationManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4811d2...233a00`](./contracts/polygon-137/0x4811d2a9374db89ec5ffd70be76bd68618233a00/) | PaUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6ee6ac...b06683`](./contracts/polygon-137/0x6ee6aca3b1381c8d9fbe9be4d16bbb1bc2b06683/) | PriceFeedUSD | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x76d8b7...6628e2`](./contracts/polygon-137/0x76d8b79fb9afd4da89913458c90b6c09676628e2/) | RateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd58f48...05497a`](./contracts/polygon-137/0xd58f48f533e3896b51854bd95165fdd87605497a/) | RatesManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x11737d...3c77ff`](./contracts/polygon-137/0x11737d07a928b62b3814ecd1778814a82e3c77ff/) | VaultsCore | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x20b55e...869e38`](./contracts/polygon-137/0x20b55eaba83c3ce27082879be54fe47bbb869e38/) | VaultsCoreState | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x003b7b...646d08`](./contracts/polygon-137/0x003b7bdc1adfa3fee002869081cbff4d73646d08/) | VaultsDataProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9bdd10...98f735`](./contracts/polygon-137/0x9bdd10f41b4de9dc1d63ae6ff9075c075298f735/) | WrappedRebaseTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=98

Zero-match audit list:

- [2759] KUMA Audit report #3
- [11948] Public Github Repo: <>

Fork inheritance lineage and inherited audits are included when available.
