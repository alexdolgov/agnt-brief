# Agentic Audit Brief: Sperax

⚠️ Lifecycle status: DECLINING - TVL dropped 15.7% over 90 days

## Project Overview

- Project: Sperax (`sperax`)
- Website: [http://sperax.io](http://sperax.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:50.457Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, ethereum
- Contract surface: 133 unique implementations (137 raw deployments)
- DeFi Llama TVL: $1,870,997.00
- On-chain TVL (included contracts): $13,186,650.99
- TVL by chain: Arbitrum $11,561,418.82 | Ethereum $1,625,232.17

## Project Description

Sperax is currently positioned around SperaxOS, a DeFi agent layer. Its historical and on-chain protocol surface also includes the USDs stablecoin, SPA governance/staking assets including veSPA and xSPA, and related vault, strategy, and farm contracts.

### Architecture

The VaultCore uses strategies (Aave, Compound, Stargate) to generate yield, while the MasterPriceOracle provides asset prices for collateral and vault operations. The stablecoin USDs relies on CollateralManager and YieldReserve for backing, and governance tokens (SPA, veSPA, xSPA) control protocol parameters and incentivize liquidity through farms.

## Contract Surface Quality

- Indexed contracts: 159; live-surface contracts included: 137 (3 live, 134 unknown).
- Excluded by liveness: 10 inactive, 12 singleton, 0 uninitialized.
- Deployment units: 0/22 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 17/35 (48.6%)
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 98
- Unique implementations: 133
- Raw deployments: 137
- Audits discovered: 9
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): $1,625,232.17
- Latest audit: 2024-06 (stale)
- Staleness: 0 fresh, 0 aging, 9 stale, 0 unknown
- Tier 1 coverage: 11.4% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of $1,625,232.17 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 14 | 40.0% | 2024-06 |
| Quantstamp | Tier 2 | 12 | 34.3% | 2023-12 |
| SlowMist | Tier 1 | 4 | 11.4% | 2021-12 |
| PeckShield | Tier 2 | 2 | 5.7% | 2022-09 |

## Contract Surface

### ✅ Verified + Audited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SperaxTokenL2 | token | arbitrum | n/a | [`0x557555...40ad4b`](./contracts/arbitrum-42161/0x5575552988a3a80504bbaeb1311674fcfd40ad4b/) | ✅ Audited |
| AaveStrategy | operational_periphery | arbitrum | unit-31187 | [`0x974993...9f3388`](./contracts/arbitrum-42161/0x974993ee8df7f5c4f3f9aa4eb5b4534f359f3388/) | ✅ Audited |
| CollateralManager | governance | arbitrum | n/a | [`0xda423b...faedf0`](./contracts/arbitrum-42161/0xda423bfa1e196598190deefbafc28adb36faedf0/) | ✅ Audited |
| CompoundStrategy | core_logic | arbitrum | unit-31191 | [`0xbceb48...a82442`](./contracts/arbitrum-42161/0xbceb48625771e35420076f79ec6921e783a82442/) | ✅ Audited |
| Dripper | unknown | arbitrum | n/a | [`0xd50193...a044c1`](./contracts/arbitrum-42161/0xd50193e8ffb00bea274bd2b11d0a7ea08da044c1/) | ✅ Audited |
| Farm | unknown | arbitrum | n/a | [`0x39eb38...a4d8ea`](./contracts/arbitrum-42161/0x39eb38cf2cc8b4ff77817e2ada6ba64e40a4d8ea/) | ✅ Audited |
| FeeCalculator | unknown | arbitrum | n/a | [`0xd12284...558afc`](./contracts/arbitrum-42161/0xd122840fa5b48b2ddb723ccc5928f88dcb558afc/) | ✅ Audited |
| MasterPriceOracle | operational_periphery | arbitrum | n/a | [`0x14d994...6e8e50`](./contracts/arbitrum-42161/0x14d99412dab1878dc01fe7a1664cde85896e8e50/) | ✅ Audited |
| RebaseManager | governance | arbitrum | n/a | [`0x297331...37beec`](./contracts/arbitrum-42161/0x297331a0155b1e30bbfa85cf3609ec0ff037beec/) | ✅ Audited |
| RewarderFactory | registry | arbitrum | n/a | [`0x926477...e1bdd3`](./contracts/arbitrum-42161/0x926477baf60c25857419cc9bf52e914881e1bdd3/) | ✅ Audited |
| StargateStrategy | core_logic | arbitrum | unit-31189 | [`0xb9c910...daa136`](./contracts/arbitrum-42161/0xb9c9100720d8c6e35eb8dd0f9c1abef320daa136/) | ✅ Audited |
| USDs | unknown | arbitrum | unit-31193 | [`0xd74f52...2d5748`](./contracts/arbitrum-42161/0xd74f5255d557944cf7dd0e45ff521520002d5748/) | ✅ Audited |
| USDsL2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2d715a...fa55dc`](./contracts/arbitrum-42161/0x2d715a14d0577964f9dd7956c9a369b26afa55dc/); arbitrum `0xa78d7b...232f8c` | ✅ Audited |
| VaultCore | core_logic | arbitrum | unit-31185 | [`0x6bbc47...6f74ca`](./contracts/arbitrum-42161/0x6bbc476ee35cba9e9c3a59fc5b10d7a0bc6f74ca/) | ✅ Audited |
| VaultCore | core_logic | arbitrum | n/a | [`0xe0a1f2...5e0b55`](./contracts/arbitrum-42161/0xe0a1f2ed69a739b52a493b244d8ac27f555e0b55/) | ✅ Audited |
| veSPA_v1 | unknown | arbitrum | n/a | [`0xd16f53...69d165`](./contracts/arbitrum-42161/0xd16f5343fddd2dcf6a8791e302a204c13069d165/) | ✅ Audited |
| YieldReserve | unknown | arbitrum | n/a | [`0xfd14c8...29d861`](./contracts/arbitrum-42161/0xfd14c8ef0993fd9409f7820ba8ba80370529d861/) | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SperaxToken | token | ethereum | n/a | 2 deployments: ethereum [`0x963148...215bc3`](./contracts/ethereum-1/0x9631483f28b7f5cbf7d435ab249be8f709215bc3/); ethereum `0xb4a3b0...d59008` | ⚠️ Unaudited |
| Buyback | unknown | arbitrum | n/a | [`0xb560c0...ef3429`](./contracts/arbitrum-42161/0xb560c08bd0a0a57b7056612f556a71fd53ef3429/) | ⚠️ Unaudited |
| CamelotV3FarmDeployer | unknown | arbitrum | n/a | [`0x212208...8226b8`](./contracts/arbitrum-42161/0x212208daf12d7612e65fb39ee9a07172b08226b8/) | ⚠️ Unaudited |
| Demeter_UniV3FarmDeployer_v2 | unknown | arbitrum | n/a | [`0x0b680a...7dc4d2`](./contracts/arbitrum-42161/0x0b680a3bfc16fc0d72f2a36157ca939a047dc4d2/) | ⚠️ Unaudited |
| Dynamic_APR_Farm | unknown | arbitrum | n/a | [`0x7775cd...5ef2be`](./contracts/arbitrum-42161/0x7775cd662acf952101ace08a7144c8bb7d5ef2be/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x00f2a6...96a825`](./contracts/arbitrum-42161/0x00f2a6a5c20152afa76c05627a224af8fc96a825/); arbitrum `0x3e4992...1ddf25` | ⚠️ Unaudited |
| RewardDistributor_v1 | operational_periphery | arbitrum | n/a | [`0x2c07bc...8d9e16`](./contracts/arbitrum-42161/0x2c07bc934974bbf413a4a4ceda98713dcb8d9e16/) | ⚠️ Unaudited |
| RewardDistributor_v2 | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x01bfd5...0a0c2e`](./contracts/arbitrum-42161/0x01bfd592b754169bba095663093678d3900a0c2e/); arbitrum `0xc9869e...4ae512` | ⚠️ Unaudited |
| SPA_USDs_Farm | unknown | arbitrum | n/a | [`0x84f7f3...b97174`](./contracts/arbitrum-42161/0x84f7f3246fd8beaac8af4ab08a2161506cb97174/) | ⚠️ Unaudited |
| SperaxTokenL1 | token | ethereum | n/a | [`0x2a95fe...f770cb`](./contracts/ethereum-1/0x2a95fe4c7e64e09856989f9ea0b57b9ab5f770cb/) | ⚠️ Unaudited |
| Staking | unknown | arbitrum | n/a | [`0xc150cb...7039fd`](./contracts/arbitrum-42161/0xc150cbddc5932258fac768beb4d2352d127039fd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-31180 | [`0x0390c6...60f473`](./contracts/arbitrum-42161/0x0390c6c7c320e41fce0e6f0b982d20a88660f473/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-31192 | [`0xbf82a3...e7f403`](./contracts/arbitrum-42161/0xbf82a3212e13b2d407d10f5107b5c8404de7f403/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-31194 | [`0xdc118f...9d1eb4`](./contracts/arbitrum-42161/0xdc118f2f00812326fe0de5c9c74c1c0c609d1eb4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-31197 | [`0xf783dd...340e3f`](./contracts/arbitrum-42161/0xf783dd830a4650d2a8594423f123250652340e3f/) | ⚠️ Unaudited |
| USDTswapStrategy | core_logic | arbitrum | n/a | [`0xe45af3...0095c8`](./contracts/arbitrum-42161/0xe45af3389384e29a9d698a89f1d97e61b30095c8/) | ⚠️ Unaudited |
| veSPA | unknown | arbitrum | unit-31182 | [`0x2e2071...5f6a17`](./contracts/arbitrum-42161/0x2e2071180682ce6c247b1ef93d382d509f5f6a17/) | ⚠️ Unaudited |
| xSPA | unknown | arbitrum | unit-31181 | [`0x0966e7...b9ccc3`](./contracts/arbitrum-42161/0x0966e72256d6055145902f72f9d3b6a194b9ccc3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (98)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FarmRegistry | registry | arbitrum | unit-31183 | `0x45bc6b...e222e0` | ❓ Unverified |
| Proxy (impl: 0x3703a01804f05a3cf84be69627ce32f8c2b84151) | proxy | arbitrum | unit-31186 | `0x886f2d...198444` | ❓ Unverified |
| Proxy (impl: 0xb172d61f8682b977cf0888ce9337c41b50f94910) | proxy | arbitrum | unit-31190 | `0xbc683d...d75c09` | ❓ Unverified |
| SPABuyback | unknown | arbitrum | unit-31198 | `0xfbc0d3...77afe3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x00b309...a2894d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0247d4...da924b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03b354...cbc663` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x06910b...506b65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x06bba0...8677ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09983f...09bbc1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09fcea...5be5f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0addfb...2868d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0fb294...87e7d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x116291...38a3fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x128527...51251e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x145ac7...b58e4a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x176dcf...c5a57e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1820c0...a61af9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a6131...c4ecc2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f6803...6aba26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x240db7...adf2fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x295246...1142c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b00ef...2aaa10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d4b8a...27c275` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x305026...8760a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x322057...8e72a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3333a1...9ecd41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x356d79...236ab8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x374219...64bd20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x386a29...f83ec1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43dccb...291be1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46728c...0071b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4bc6be...8e138a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4c5884...660cd3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4fcbfc...dc1da1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x511c1b...d14172` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x524b11...af8899` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x544350...cd4cab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x584643...aef487` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x58735e...804c9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5a96b1...764848` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b2da0...6a8a2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d2a5d...869fb9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f6ac8...31185b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x638d76...933a4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x645ebe...eae1af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67a798...982ed9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ada84...6f039d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x754db8...44da9c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x75ab2d...3b203d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77b6e3...159714` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78b2a3...33d5bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b952a...d66047` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c8599...9635d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x81fb64...3a6d31` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x83db29...a10224` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x83fa5f...9c354f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8dbfa1...edebed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e5562...3e7d76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8fa1e5...bbba6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9741d4...30aed3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x974bf7...1de4c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97a7e6...962307` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97b3e3...9dc7c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x983fcc...eba210` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x992bcb...8babe2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b9080...fc3b43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d8979...6828e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2255e...3fd92d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa4d10...44367e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa7487...be05b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae3232...9eb5be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb1056a...df9430` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb3647b...24eff0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb38629...b68944` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4a3b0...d59008` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4f9a8...ee3bcb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6b989...cb0b28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb74401...b9b4a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbe51b6...50307d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc0f048...afe0fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc92acb...c3633b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcb9b91...9e688c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbac4b...627d75` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc12be...e99fa8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf9761...1e8004` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd0497f...61c370` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd06eca...4e650c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd4e33a...492cf3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdb46bf...6fa9b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe64ced...5f45ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7b284...d423a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe8f757...e75c94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe91b6d...9169a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecc7fc...79f81b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf30db0...162bf2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf403a6...527e7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc074b...d791a0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Demeter_PeckShield_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/Demeter_PeckShield_1.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | contract_name | 1 | medium |
| [Sperax - USDs - Report (1).pdf](https://github.com/Sperax/Audit_Reports/blob/main/Sperax%20-%20USDs%20-%20Report%20(1).pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 13 | high |
| [Demeter Audit Final Report.pdf](https://github.com/Sperax/Audit_Reports/blob/main/Demeter%20Audit%20Final%20Report.pdf) | Unknown | Audit | 2024-06 | stale | Direct | contract_name | 3 | high |
| [LM_Certik_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/LM_Certik_1.pdf) | CertiK | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [SPA_Certik_2.pdf](https://github.com/Sperax/Audit_Reports/blob/main/SPA_Certik_2.pdf) | CertiK | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [USDs_Quantstamp.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Quantstamp.pdf) | Quantstamp | Audit | 2023-12 | stale | Direct | contract_name | 13 | high |
| [USDs_Slowmist_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Slowmist_1.pdf) | SlowMist | Audit | 2021-12 | stale | Direct | contract_name | 5 | high |
| [USDs_Slowmist_2.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Slowmist_2.pdf) | SlowMist | Audit | 2021-12 | stale | Direct | contract_name | 5 | high |
| [veSPA_PeckShield_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/veSPA_PeckShield_1.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x963148...215bc3`](./contracts/ethereum-1/0x9631483f28b7f5cbf7d435ab249be8f709215bc3/) | SperaxToken | token | $1,625,232.17 | Verified native implementation with $1,625,232.17 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb560c0...ef3429`](./contracts/arbitrum-42161/0xb560c08bd0a0a57b7056612f556a71fd53ef3429/) | Buyback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x212208...8226b8`](./contracts/arbitrum-42161/0x212208daf12d7612e65fb39ee9a07172b08226b8/) | CamelotV3FarmDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0b680a...7dc4d2`](./contracts/arbitrum-42161/0x0b680a3bfc16fc0d72f2a36157ca939a047dc4d2/) | Demeter_UniV3FarmDeployer_v2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7775cd...5ef2be`](./contracts/arbitrum-42161/0x7775cd662acf952101ace08a7144c8bb7d5ef2be/) | Dynamic_APR_Farm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2c07bc...8d9e16`](./contracts/arbitrum-42161/0x2c07bc934974bbf413a4a4ceda98713dcb8d9e16/) | RewardDistributor_v1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01bfd5...0a0c2e`](./contracts/arbitrum-42161/0x01bfd592b754169bba095663093678d3900a0c2e/) | RewardDistributor_v2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x84f7f3...b97174`](./contracts/arbitrum-42161/0x84f7f3246fd8beaac8af4ab08a2161506cb97174/) | SPA_USDs_Farm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a95fe...f770cb`](./contracts/ethereum-1/0x2a95fe4c7e64e09856989f9ea0b57b9ab5f770cb/) | SperaxTokenL1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc150cb...7039fd`](./contracts/arbitrum-42161/0xc150cbddc5932258fac768beb4d2352d127039fd/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe45af3...0095c8`](./contracts/arbitrum-42161/0xe45af3389384e29a9d698a89f1d97e61b30095c8/) | USDTswapStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 69 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6, medium=1
- Match method counts: extraction_exact=42

Zero-match audit list:

- [2891] LM_Certik_1.pdf
- [2892] SPA_Certik_2.pdf

Fork inheritance lineage and inherited audits are included when available.
