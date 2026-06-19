# Agentic Audit Brief: WAGMI

⚠️ Lifecycle status: DECLINING - TVL dropped 15.2% over 90 days

## Project Overview

- Project: WAGMI (`wagmi`)
- Website: [https://wagmi.com/](https://wagmi.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T06:14:51.391Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, avalanche, base, bsc, ethereum, fantom, kava, metis, polygon, sonic, zksync-era
- Contract surface: 113 unique implementations (133 raw deployments)
- DeFi Llama TVL: $1,250,372.93
- On-chain TVL (included contracts): $1,154,822.68
- TVL by chain: Ethereum $1,154,577.84 | Sonic $244.84 | Base $0.00

## Project Description

WAGMI is a decentralized exchange and liquidity protocol that enables token swaps and liquidity provision across multiple chains. It deploys Uniswap V3–style infrastructure, including factory, router, and position manager contracts, to facilitate concentrated liquidity and efficient trading. The protocol also features its own WAGMI token and related staking or omnichain fungible token (OFT) contracts.

### Architecture

The DEX Core family is deployed on multiple chains and shares a common set of peripheral contracts (multicall, quoter, permit) that support the core swap and liquidity functions. The WAGMI Token family interacts with the DEX Core by providing the native token for liquidity pools and incentives, while the Liquidity Optimization family uses the DEX Core's factory and position manager to automate liquidity strategies.

## Contract Surface Quality

- Indexed contracts: 429; live-surface contracts included: 133 (32 live, 101 unknown).
- Excluded by liveness: 296 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 10/17.

## Audit Coverage Summary

- Verified implementations audited: 2/26 (7.7%)
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 87
- Unique implementations: 113
- Raw deployments: 133
- Audits discovered: 12
- Scoreable audits (matched contracts): 12
- ASD (verified + unaudited TVL): $1,154,577.84
- Latest audit: 2024-04 (stale)
- Staleness: 0 fresh, 0 aging, 12 stale, 0 unknown
- Tier 1 coverage: 7.7% (Sherlock)
- Note: This protocol is classified as [declining]. ASD of $1,154,577.84 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 2 | 7.7% | 2024-04 |
| Pashov Audit Group | Tier 2 | 2 | 7.7% | 2024-04 |
| Sherlock | Tier 1 | 2 | 7.7% | 2024-04 |
| AstraSec | Tier 2 | 1 | 3.8% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | metis | n/a | 3 deployments: sonic `0xfb3efa...764132`; metis [`0x9cb36c...9e3630`](./contracts/metis-1088/0x9cb36c835f189c40bd9cd1cf298717b7bb9e3630/); base `0xb75c17...0c003f` | ✅ Audited |
| LiquidityBorrowingManager | unknown | metis | n/a | 2 deployments: sonic `0x78b796...05d5d9`; metis [`0x25a31a...aeb54e`](./contracts/metis-1088/0x25a31a36ff56bc5570fd09ac2da062115daeb54e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WagmiToken | token | ethereum | n/a | [`0x92cc36...b83a67`](./contracts/ethereum-1/0x92cc36d66e9d739d50673d1f27929a371fb83a67/) | ⚠️ Unaudited |
| InterfaceMulticallV2 | periphery | metis | n/a | [`0x16b413...e418fd`](./contracts/metis-1088/0x16b413526d062142eb9eda9d75312ca9f2e418fd/) | ⚠️ Unaudited |
| Multicall2 | periphery | metis | n/a | [`0x576a13...418fd4`](./contracts/metis-1088/0x576a1301b42942537d38fb147895fe83fb418fd4/) | ⚠️ Unaudited |
| NFTDescriptor | token | metis | n/a | [`0x6372f4...2d8dd8`](./contracts/metis-1088/0x6372f4acf0a1e54fb5c3f48137e970a3df2d8dd8/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | n/a | 3 deployments: sonic [`0x77dcc9...18d690`](./contracts/sonic-146/0x77dcc9b09c6ae94cdc726540735682a38e18d690/); metis `0xa7e119...cb1b02`; base `0x818780...ac1f72` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | metis | n/a | [`0x1e6ef5...f59e8a`](./contracts/metis-1088/0x1e6ef5f8f589650b589e17ab15bc4ba42ef59e8a/) | ⚠️ Unaudited |
| OFT | unknown | polygon | n/a | 6 deployments: bsc `0xaf20f5...0de7d7`; polygon [`0x07ed33...5024da`](./contracts/polygon-137/0x07ed33a242bd9c08ca3c198e01189e35265024da/); sonic `0x0e0ce4...87d16b`; base `0xaf20f5...0de7d7`; arbitrum `0xaf20f5...0de7d7`; avalanche `0xaf20f5...0de7d7` | ⚠️ Unaudited |
| Permit2 | unknown | base | n/a | 3 deployments: sonic `0x7ac9e3...b22948`; metis `0xb1f795...d48297`; base [`0x16b413...e418fd`](./contracts/base-8453/0x16b413526d062142eb9eda9d75312ca9f2e418fd/) | ⚠️ Unaudited |
| PopsicleV3Optimizer | unknown | ethereum | n/a | 4 deployments: ethereum [`0x212aa0...81740b`](./contracts/ethereum-1/0x212aa024e25a9c9baf5b5397b558b7ccea81740b/); ethereum `0x5c08a6...97218d`; ethereum `0x9683d4...317f55`; ethereum `0xa1be64...943d0e` | ⚠️ Unaudited |
| ProxyAdmin | governance | metis | n/a | [`0xf914e1...97f966`](./contracts/metis-1088/0xf914e1329e4588783ee68f06b2b900addc97f966/) | ⚠️ Unaudited |
| Quoter | periphery | metis | n/a | [`0x2dc123...710cea`](./contracts/metis-1088/0x2dc123ff6757fcea46c025758e93bd8b98710cea/) | ⚠️ Unaudited |
| QuoterV2 | periphery | metis | n/a | [`0xb9a14e...abde24`](./contracts/metis-1088/0xb9a14ee1cd3417f3acc988f61650895151abde24/) | ⚠️ Unaudited |
| sWagmi | unknown | sonic | n/a | [`0x4b5d9d...fa28aa`](./contracts/sonic-146/0x4b5d9db7910448e2f236509d9ee242673afa28aa/) | ⚠️ Unaudited |
| SwapRouter | adapter | bsc | n/a | 3 deployments: bsc [`0x7b2f96...f8fb44`](./contracts/bsc-56/0x7b2f96919cff07110feb0ec06130b33d70f8fb44/); sonic `0x9282a6...4cfd49`; metis `0x8fb7a8...7cfedc` | ⚠️ Unaudited |
| SwapRouter02 | adapter | sonic | unit-32830 | [`0x1ac569...ccded5`](./contracts/sonic-146/0x1ac569879ef7eacb17cc373ef801cdce4accded5/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | metis | n/a | 2 deployments: ethereum `0xd8ac77...d65293`; metis [`0x8b741b...41f015`](./contracts/metis-1088/0x8b741b0d79be80e135c880f7583d427b4d41f015/) | ⚠️ Unaudited |
| TickLens | periphery | metis | n/a | [`0x428065...fdd649`](./contracts/metis-1088/0x428065998a96f82bf66a0a427a157429a6fdd649/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | metis | n/a | [`0xa9af50...84d12c`](./contracts/metis-1088/0xa9af508a15fc3b75763a9e536505ffe1f884d12c/) | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | metis | n/a | [`0xb5fa77...5bcd0e`](./contracts/metis-1088/0xb5fa77e3929fe198a86aa40fd6c77886785bcd0e/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | metis | n/a | [`0x8112e1...fe5b8a`](./contracts/metis-1088/0x8112e18a34b63964388a3b2984037d6a2efe5b8a/) | ⚠️ Unaudited |
| UniversalRouter | adapter | base | n/a | 3 deployments: sonic `0xc81dae...626d19`; metis `0x730135...61ca48`; base [`0x08d6e1...d79ce8`](./contracts/base-8453/0x08d6e1ae0f91423ddbd16f083ca39ccdd1d79ce8/) | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | metis | n/a | [`0xe88b19...c9b6e2`](./contracts/metis-1088/0xe88b19885935b4be8dcf38e2c96b8c73cfc9b6e2/) | ⚠️ Unaudited |
| V3Migrator | periphery | metis | n/a | [`0x818780...ac1f72`](./contracts/metis-1088/0x8187808b163e7cbaccc4d0a9b138ae6196ac1f72/) | ⚠️ Unaudited |
| WagmiOFTV2Adapter | adapter | ethereum | n/a | [`0xf5ec00...22b4e4`](./contracts/ethereum-1/0xf5ec00e770de25aef156d290c2504e163b22b4e4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (87)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x4b5d9d...fa28aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd74c1d...07fedb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x037f7b...74e473` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x441047...573d5c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4e537a...6888cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd8aa17...eccc8f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdf351e...d1afe5` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x07ed33...5024da` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x0834cf...089485` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x209050...e7ac6c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x45c16c...cbe29a` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x56cfc7...079aef` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5973c9...b5a2fe` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5db68a...c4d14e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x660fc6...d0ed6e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x77dcc9...18d690` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x828825...308292` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x877cda...341b83` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x9282a6...4cfd49` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x92cc36...b83a67` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x98fe50...6532ed` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xaf20f5...0de7d7` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xb1f795...d48297` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xcb5cbc...7c9753` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xdb51cf...2d0d24` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x3613ad...c2dc9e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x01bd51...bee2ac` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x03d1ef...e27cd2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0e6a9c...cde12c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x18213a...b8100e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x19eab1...740776` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1d8571...d416f0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2120eb...844e9a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2668f4...545bf1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2c3918...8b4410` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x30623f...032d9c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x348a1b...a2f301` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x400fe1...64bfa6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x546d87...4fce31` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5873c1...7710ed` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5f171e...71d54c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5fb398...352558` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5ff8cc...febefa` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6175b6...0585e6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x677290...7493ea` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x67b319...7fd6bd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x72e9b5...f07788` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x73e721...6d51d9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x836017...52aa67` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x83f7e7...b2e0d8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x86fd61...4038fa` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9490a6...e9d026` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9cc313...629194` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa0f185...799ed9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa6e02c...9f4904` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xab719a...f1bb51` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xaf20f5...0de7d7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb33fc0...595ecd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb9ba23...617b0e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xba99f0...6c5aa8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbd3c28...36692b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbf4b53...a37feb` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc78a18...fb2bca` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd55b48...ee709f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe673a6...2ace5b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xebdaf1...a098a5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xec3739...c4e17a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf411fd...419ff7` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x0e0ce4...87d16b` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x1e6ef5...f59e8a` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x2dc123...710cea` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x3690d1...c9630f` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x428065...fdd649` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x576a13...418fd4` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x6372f4...2d8dd8` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x8112e1...fe5b8a` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x818780...ac1f72` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x8b741b...41f015` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x8fb7a8...7cfedc` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xa7e119...cb1b02` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xa9af50...84d12c` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xaf20f5...0de7d7` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xb1f795...d48297` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xb5fa77...5bcd0e` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xb9a14e...abde24` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xe88b19...c9b6e2` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xf914e1...97f966` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/f5b20449ff1a769af108c2b2fa6ee928a0c77232/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf) | Hacken | Audit | 2024-04 | stale | Direct | contract_name | 2 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/pashov/audits/bed0a845f5af0047206ce423d111673183dba1e9/team/pdf/Wagmi-security-review.pdf) | Hacken | Audit | 2024-04 | stale | Direct | contract_name | 5 | high |
| [{% embed url="<>" %}](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf) | Sherlock | Contest | 2024-04 | stale | Direct | contract_name | 2 | high |
| [{% embed url="<>" %}](https://github.com/pashov/audits/blob/master/team/pdf/Wagmi-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | contract_name | 5 | high |
| [Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.0%200-V2.0%20AstraSec.pdf) | AstraSec | Audit | 2024-03 | stale | Direct | contract_name | 2 | high |
| [Wagmi Leverage V1.0 Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.0%20Sherlock.pdf) | Sherlock | Contest | 2023-11 | stale | Direct | contract_name | 5 | high |
| [Wagmi Leverage V1.1 Hacken.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.1%20Hacken.pdf) | Hacken | Audit | 2023-12 | stale | Direct | contract_name | 5 | high |
| [Wagmi Leverage V1.5 Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.5%20Sherlock.pdf) | Sherlock | Contest | 2024-03 | stale | Direct | contract_name | 2 | high |
| [Wagmi Leverage V2.0 Pashov.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V2.0%20Pashov.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | contract_name | 5 | high |
| [Wagmi Leverage V2.0 Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V2.0%20Sherlock.pdf) | Sherlock | Contest | 2024-04 | stale | Direct | contract_name | 2 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/pashov/audits/b60fc16f80b1291d36bd09a443e90f39bcb5d660/team/pdf/Wagmi-security-review.pdf) | Hacken | Audit | 2024-04 | stale | Direct | contract_name | 5 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/a58894ebc05005a80e945a2558d583b8e0e05ef2/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf) | Hacken | Audit | 2024-04 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x92cc36...b83a67`](./contracts/ethereum-1/0x92cc36d66e9d739d50673d1f27929a371fb83a67/) | WagmiToken | token | $1,154,577.84 | Verified native implementation with $1,154,577.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x6372f4...2d8dd8`](./contracts/metis-1088/0x6372f4acf0a1e54fb5c3f48137e970a3df2d8dd8/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x77dcc9...18d690`](./contracts/sonic-146/0x77dcc9b09c6ae94cdc726540735682a38e18d690/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1e6ef5...f59e8a`](./contracts/metis-1088/0x1e6ef5f8f589650b589e17ab15bc4ba42ef59e8a/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x07ed33...5024da`](./contracts/polygon-137/0x07ed33a242bd9c08ca3c198e01189e35265024da/) | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x2dc123...710cea`](./contracts/metis-1088/0x2dc123ff6757fcea46c025758e93bd8b98710cea/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4b5d9d...fa28aa`](./contracts/sonic-146/0x4b5d9db7910448e2f236509d9ee242673afa28aa/) | sWagmi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7b2f96...f8fb44`](./contracts/bsc-56/0x7b2f96919cff07110feb0ec06130b33d70f8fb44/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1ac569...ccded5`](./contracts/sonic-146/0x1ac569879ef7eacb17cc373ef801cdce4accded5/) | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x428065...fdd649`](./contracts/metis-1088/0x428065998a96f82bf66a0a427a157429a6fdd649/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x818780...ac1f72`](./contracts/metis-1088/0x8187808b163e7cbaccc4d0a9b138ae6196ac1f72/) | V3Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5ec00...22b4e4`](./contracts/ethereum-1/0xf5ec00e770de25aef156d290c2504e163b22b4e4/) | WagmiOFTV2Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 7 |
| standard_library | 6 |
| needs_review | 51 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=12
- Match method counts: extraction_exact=54

Fork inheritance lineage and inherited audits are included when available.
