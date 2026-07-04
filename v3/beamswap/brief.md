# Agentic Audit Brief: BeamSwap

⚠️ Lifecycle status: DEAD - TVL dropped 22.3% over 90 days

## Project Overview

- Project: BeamSwap (`beamswap`)
- Website: [https://beamswap.io](https://beamswap.io)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-03T21:05:33.407Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: moonbeam
- Contract surface: 144 unique implementations (147 raw deployments)
- DeFi Llama TVL: $40,774.00
- On-chain TVL (included contracts): $37,505.06
- TVL by chain: Moonbeam $37,505.06

## Project Description

Structural profile: 77 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 13 common project-authored base contract(s) (governable, peripheryimmutablestate, beamswaptypes). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 211; live-surface contracts included: 147 (31 live, 116 unknown).
- Excluded by liveness: 64 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/28 (28.6%)
- Deployed-live implementations: 28 of 144 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/28
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 116
- Unique implementations: 144
- Raw deployments: 147
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $37,505.06
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $37,505.06 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 6 | 21.4% | 2024-01 |
| PeckShield | Tier 2 | 3 | 10.7% | 2023-06 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AmplificationUtils | unknown | moonbeam | n/a | [`0x3708eb...b00dd9`](./contracts/moonbeam-1284/0x3708eb3803b43829d542d83cfc770d9389b00dd9/) | ✅ Audited |
| BeamChefV2 | unknown | moonbeam | n/a | [`0x9d4814...aad42c`](./contracts/moonbeam-1284/0x9d48141b234bb9528090e915085e0e6af5aad42c/) | ✅ Audited |
| BeamChefV3 | unknown | moonbeam | n/a | [`0x26b22e...75e0e1`](./contracts/moonbeam-1284/0x26b22e286f08e5e0ea9ec819ede70bbddb75e0e1/) | ✅ Audited |
| BeamShare | unknown | moonbeam | n/a | [`0x4204ca...0a6408`](./contracts/moonbeam-1284/0x4204cad97732282d261fbb7088e07557810a6408/) | ✅ Audited |
| BeamswapV3Factory | unknown | moonbeam | n/a | [`0xd118fa...196e71`](./contracts/moonbeam-1284/0xd118fa707147c54387b738f54838ea5dd4196e71/) | ✅ Audited |
| BeamswapV3PoolDeployer | unknown | moonbeam | n/a | [`0x99bf59...fd681e`](./contracts/moonbeam-1284/0x99bf59eb23c1b3594764662ad052f5c42bfd681e/) | ✅ Audited |
| SwapUtils | unknown | moonbeam | n/a | [`0xbe161d...060a0b`](./contracts/moonbeam-1284/0xbe161d04498b9b93b74d474421e292f3d0060a0b/) | ✅ Audited |
| Timelock | governance | moonbeam | n/a | [`0x5d3b3f...efb9df`](./contracts/moonbeam-1284/0x5d3b3f2e28eb08a578f11fb31a433956c4efb9df/) | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeamSwapToken | token | moonbeam | n/a | [`0xcd3b51...ef1d58`](./contracts/moonbeam-1284/0xcd3b51d98478d53f4515a306be565c6eebef1d58/) | ⚠️ Unaudited |
| BeamChef | unknown | moonbeam | n/a | [`0xc6ca17...00587b`](./contracts/moonbeam-1284/0xc6ca172fc8bdb803c5e12731109744fb0200587b/) | ⚠️ Unaudited |
| BeamLocker | unknown | moonbeam | n/a | [`0xe31a3b...84cc85`](./contracts/moonbeam-1284/0xe31a3b6c62ebe9db3b991661530fa9871584cc85/) | ⚠️ Unaudited |
| BeamSplitter | operational_periphery | moonbeam | n/a | [`0xcf8afa...764eca`](./contracts/moonbeam-1284/0xcf8afa5be7daa15fd8bb2a3cc6203db25d764eca/) | ⚠️ Unaudited |
| BeamSwapFactory | registry | moonbeam | n/a | [`0x985bca...7a86fd`](./contracts/moonbeam-1284/0x985bca32293a7a496300a48081947321177a86fd/) | ⚠️ Unaudited |
| BeamswapHybridRouter | adapter | moonbeam | n/a | [`0x9f52f5...98877c`](./contracts/moonbeam-1284/0x9f52f5370d38877e01579cd6e028bc263898877c/) | ⚠️ Unaudited |
| BeamSwapRouter | adapter | moonbeam | n/a | [`0x96b244...6970c7`](./contracts/moonbeam-1284/0x96b244391d98b62d19ae89b1a4dccf0fc56970c7/) | ⚠️ Unaudited |
| BLP | unknown | moonbeam | n/a | [`0x0e6580...2dde92`](./contracts/moonbeam-1284/0x0e6580f2f84c8191d36043fb340ad9c0982dde92/) | ⚠️ Unaudited |
| BlpManager | governance | moonbeam | n/a | [`0xc9d9e5...5145ed`](./contracts/moonbeam-1284/0xc9d9e5a2fdbb64947ab158f48eff9be9d75145ed/) | ⚠️ Unaudited |
| EarnBLP | unknown | moonbeam | n/a | [`0x3decce...04e217`](./contracts/moonbeam-1284/0x3deccefd66b34b64b8830b036843c9568504e217/) | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | moonbeam | n/a | [`0x7baadb...58d4dc`](./contracts/moonbeam-1284/0x7baadbcf1428fb217dec3e5e917c126a5258d4dc/) | ⚠️ Unaudited |
| FeeLessSwap | unknown | moonbeam | n/a | [`0x3c245a...ed1ecb`](./contracts/moonbeam-1284/0x3c245a333c3a173c81b302a8fcbf87a8e7ed1ecb/) | ⚠️ Unaudited |
| LPToken | unknown | moonbeam | n/a | [`0xb36a64...d723ce`](./contracts/moonbeam-1284/0xb36a647418b4d1279f61ec84cb7f87c467d723ce/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | moonbeam | n/a | [`0x909b62...9aef70`](./contracts/moonbeam-1284/0x909b62deb98ea8b46f7af0f4494c2c1d119aef70/) | ⚠️ Unaudited |
| Router | adapter | moonbeam | n/a | [`0xa20682...a9c072`](./contracts/moonbeam-1284/0xa206820ec04bf892f800e5fde8a0a69624a9c072/) | ⚠️ Unaudited |
| ShareFarm | unknown | moonbeam | n/a | [`0xb6b339...1e5771`](./contracts/moonbeam-1284/0xb6b3390b334fa2d35951e5700982d42a9e1e5771/) | ⚠️ Unaudited |
| StakedGlint | token | moonbeam | n/a | [`0x63d43d...d71697`](./contracts/moonbeam-1284/0x63d43d0edda7de4b5ed9b2f2aa855f81fbd71697/) | ⚠️ Unaudited |
| Staking | unknown | moonbeam | n/a | [`0x548257...368fa9`](./contracts/moonbeam-1284/0x54825778d33140fe9011dcfbbbd50b924e368fa9/) | ⚠️ Unaudited |
| SwapFlashLoan | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x2fc632...83846f`](./contracts/moonbeam-1284/0x2fc63231f734850c4b8c6b80c275fdb66983846f/); moonbeam `0xe3f59a...1e402c` | ⚠️ Unaudited |
| Vesting | operational_periphery | moonbeam | n/a | 3 deployments: moonbeam [`0x806f16...9d20f5`](./contracts/moonbeam-1284/0x806f16c24e28a23fe597a794f1487274a79d20f5/); moonbeam `0xac7c02...e231cc`; moonbeam `0xbb23b6...a8ce33` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (116)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonbeam | n/a | `0x067fc2...ee6df7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x07f614...51e1b1` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x0bd8f3...fb4c98` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x0c6fb8...da0010` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x0edf79...27853b` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x154e71...c39b4c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x1726da...fc60dc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x19182f...c7755d` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x1fd344...eca1f6` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x2057ff...633840` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x2493ab...3c040b` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x2e2a60...236061` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x2fcad2...9bf8a0` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x303e7b...5127b0` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x324e00...c867d4` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x33aa70...30e448` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x34eea4...3b8392` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x364785...26f81f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x38bf8a...f70491` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x3965e7...e2df07` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x3e3303...242cd3` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x3fe158...30adcc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x431c1c...c98b91` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x4652b0...e7a134` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x46b1a6...67e0cb` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x480240...509933` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x49e1dc...45bb60` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x4d5a91...d07ddb` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x4de1b6...718943` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x4e3413...95b5df` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x531fcb...add3fd` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x5412af...314f98` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x56b055...25c9b8` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x589a9d...8e510e` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x59d925...31919f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x5f6342...ba2a19` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x5fc9e4...ac9d23` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x620145...c21955` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x663c3c...b4f163` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x6a8021...34799a` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x6e7ded...664c81` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x6ed4d6...8fcb07` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x70c104...2d3698` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x7189f2...795003` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x722f36...c2b764` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x756337...8d412b` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x761851...058d40` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x7841b1...631589` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x7de6d2...93b3a7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x7efbcf...79bfd1` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x81adc0...420db2` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x83fda9...7fed5b` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x881638...d04f6e` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x888ff9...877c39` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x8c18b6...07e8aa` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x8d264e...7ebc41` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x8d56b3...63c161` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x8d804e...43e1cd` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x8ecadf...8a6f7e` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x8f83dc...42fb96` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x91d119...6e8801` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x96947a...1f6393` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x979a7e...b928fc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x98029e...545ed1` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x9be9b6...5e67c6` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x9ff22d...83a0ff` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xa016cb...350c3c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xa3bf67...631350` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xa4f817...3f3972` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xa53258...a74d74` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xa67b2e...715393` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xaa6d16...2956ab` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xab33c0...e58360` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xad7dd9...cf7602` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xaf28db...b3487a` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xb731b5...bf637e` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xb925c4...2458c6` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xbd1336...d8eb78` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xc18d00...1d0676` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xc52f32...35f7df` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xc6ef67...7f9f3a` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xc7d015...5462e4` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xc814ed...293cda` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xcb54f9...0ed06a` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xcdd520...4a0eb7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd21e2b...fcdf7c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd28146...d34ef5` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd47eab...3ece6c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd56094...994c3d` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd57e76...0fe756` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd6a422...b6326f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd6dbf5...10bbdc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd75f95...816e31` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd7a508...af4498` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd913b7...79d687` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd968c7...e2759a` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xd9c4d9...db2fd6` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xdd7c3c...e195c5` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xdd9ccc...13fbeb` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xdde448...624398` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xe1da28...8e84a3` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xe6a40e...713625` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xe7e89d...13891f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xeb3682...d90de2` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xecfeb1...ffd6ad` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf20579...4ab8f3` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf3a6ff...0a8759` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf3e0c9...26c63c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf42919...5316bc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf43ae3...c352a8` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf5f753...d24373` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf7e25c...4d960e` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf7f4d2...e21d2d` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xf8fe71...cd8df6` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xfb0321...16e816` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xfb9fb6...4ef0d6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-BeamEx-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-BeamEx-v1.0.pdf) | PeckShield | Audit | 2023-06 | stale | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-Beamswap-v1.0.pdf](https://raw.githubusercontent.com/peckshield/publications/65be3a3b651bba87c4a9c024ca4306adbadba040/audit_reports/PeckShield-Audit-Report-Beamswap-v1.0.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 2 | high |
| [sourcehat.com/audits/BeamSwap](https://sourcehat.com/audits/BeamSwap) | SourceHat | Audit | 2022-01 | stale | Direct | contract_name | 2 | n/a |
| [sourcehat.com/audits/BeamswapV3](https://sourcehat.com/audits/BeamswapV3) | SourceHat | Audit | 2023-05 | stale | Direct | contract_name | 2 | high |
| [sourcehat.com/audits/BeamSwapStaking](https://sourcehat.com/audits/BeamSwapStaking) | SourceHat | Audit | 2023-05 | stale | Direct | contract_name | 1 | high |
| [sourcehat.com/audits/BeamChefV3](https://sourcehat.com/audits/BeamChefV3) | SourceHat | Audit | 2024-01 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonbeam | [`0xcd3b51...ef1d58`](./contracts/moonbeam-1284/0xcd3b51d98478d53f4515a306be565c6eebef1d58/) | BeamSwapToken | token | $37,505.06 | Verified native implementation with $37,505.06 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xc6ca17...00587b`](./contracts/moonbeam-1284/0xc6ca172fc8bdb803c5e12731109744fb0200587b/) | BeamChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xe31a3b...84cc85`](./contracts/moonbeam-1284/0xe31a3b6c62ebe9db3b991661530fa9871584cc85/) | BeamLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xcf8afa...764eca`](./contracts/moonbeam-1284/0xcf8afa5be7daa15fd8bb2a3cc6203db25d764eca/) | BeamSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x985bca...7a86fd`](./contracts/moonbeam-1284/0x985bca32293a7a496300a48081947321177a86fd/) | BeamSwapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x9f52f5...98877c`](./contracts/moonbeam-1284/0x9f52f5370d38877e01579cd6e028bc263898877c/) | BeamswapHybridRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x96b244...6970c7`](./contracts/moonbeam-1284/0x96b244391d98b62d19ae89b1a4dccf0fc56970c7/) | BeamSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0e6580...2dde92`](./contracts/moonbeam-1284/0x0e6580f2f84c8191d36043fb340ad9c0982dde92/) | BLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xc9d9e5...5145ed`](./contracts/moonbeam-1284/0xc9d9e5a2fdbb64947ab158f48eff9be9d75145ed/) | BlpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x3decce...04e217`](./contracts/moonbeam-1284/0x3deccefd66b34b64b8830b036843c9568504e217/) | EarnBLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x7baadb...58d4dc`](./contracts/moonbeam-1284/0x7baadbcf1428fb217dec3e5e917c126a5258d4dc/) | FastPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x3c245a...ed1ecb`](./contracts/moonbeam-1284/0x3c245a333c3a173c81b302a8fcbf87a8e7ed1ecb/) | FeeLessSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xa20682...a9c072`](./contracts/moonbeam-1284/0xa206820ec04bf892f800e5fde8a0a69624a9c072/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xb6b339...1e5771`](./contracts/moonbeam-1284/0xb6b3390b334fa2d35951e5700982d42a9e1e5771/) | ShareFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x63d43d...d71697`](./contracts/moonbeam-1284/0x63d43d0edda7de4b5ed9b2f2aa855f81fbd71697/) | StakedGlint | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x548257...368fa9`](./contracts/moonbeam-1284/0x54825778d33140fe9011dcfbbbd50b924e368fa9/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x2fc632...83846f`](./contracts/moonbeam-1284/0x2fc63231f734850c4b8c6b80c275fdb66983846f/) | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x806f16...9d20f5`](./contracts/moonbeam-1284/0x806f16c24e28a23fe597a794f1487274a79d20f5/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 118 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=4, extraction_exact=5

Fork inheritance lineage and inherited audits are included when available.
