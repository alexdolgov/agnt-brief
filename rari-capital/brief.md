# Agentic Audit Brief: Rari Capital

## Project Overview

- Project: Rari Capital (`rari-capital`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.566Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: ethereum
- Contract surface: 205 unique implementations (233 raw deployments)
- DeFi Llama TVL: $1,276,138.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 100 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 25 common project-authored base contract(s) (upgradeabilityproxy, proxy, cdelegatorinterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 512; live-surface contracts included: 228 (64 live, 164 unknown).
- Excluded by liveness: 284 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/38 (0.0%)
- Deployed-live implementations: 44 of 205 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/44
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 161
- Unique implementations: 205
- Raw deployments: 233
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveIntegration | unknown | ethereum | n/a | [`0xf617346a0fb6320e9e578e0c9b2a4588283d9d39`](./contracts/ethereum-1/0xf617346a0fb6320e9e578e0c9b2a4588283d9d39/) | ⚠️ Unaudited |
| AavePoolController | unknown | ethereum | n/a | [`0x1821c1d8c74a3d8799170c35f2abb83ac3259c98`](./contracts/ethereum-1/0x1821c1d8c74a3d8799170c35f2abb83ac3259c98/) | ⚠️ Unaudited |
| BasketManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x66126b4aa2a1c07536ef8e5e8bd4efda1fdea96d`](./contracts/ethereum-1/0x66126b4aa2a1c07536ef8e5e8bd4efda1fdea96d/); ethereum `0x6efa260a268e4afacf7fb91a6bf5f5b37379bf61` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | ethereum | n/a | [`0x760ea8cfdcc4e78d8b9ca3088ecd460246dc0731`](./contracts/ethereum-1/0x760ea8cfdcc4e78d8b9ca3088ecd460246dc0731/) | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | ethereum | n/a | [`0xadeedd3e5768f7882572ad91065f93ba88343c99`](./contracts/ethereum-1/0xadeedd3e5768f7882572ad91065f93ba88343c99/) | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | ethereum | n/a | [`0xd124b55f70d374f58455c8aedf308e52cf2a6207`](./contracts/ethereum-1/0xd124b55f70d374f58455c8aedf308e52cf2a6207/) | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | ethereum | n/a | [`0xf65d53aa6e2e4a5f4f026e73cb3e22c22d75e35c`](./contracts/ethereum-1/0xf65d53aa6e2e4a5f4f026e73cb3e22c22d75e35c/) | ⚠️ Unaudited |
| BoostedSavingsVault_imbtc_mainnet_2 | unknown | ethereum | n/a | [`0xf38522f63f40f9dd81abafd2b8efc2ec958a3016`](./contracts/ethereum-1/0xf38522f63f40f9dd81abafd2b8efc2ec958a3016/) | ⚠️ Unaudited |
| BoostedSavingsVault_imusd_mainnet_2 | core_logic | ethereum | n/a | [`0x78befca7de27d07dc6e71da295cc2946681a6c7b`](./contracts/ethereum-1/0x78befca7de27d07dc6e71da295cc2946681a6c7b/) | ⚠️ Unaudited |
| CompoundIntegration | unknown | ethereum | n/a | [`0xd55684f4369040c12262949ff78299f2bc9db735`](./contracts/ethereum-1/0xd55684f4369040c12262949ff78299f2bc9db735/) | ⚠️ Unaudited |
| CompoundPoolController | unknown | ethereum | n/a | [`0xaf0d83ae6c62281cc1fa28dde0647b9bb16af3f4`](./contracts/ethereum-1/0xaf0d83ae6c62281cc1fa28dde0647b9bb16af3f4/) | ⚠️ Unaudited |
| DydxPoolController | unknown | ethereum | n/a | [`0x631b0d1c8bd940bfaf59a2d15ce30462962e9bba`](./contracts/ethereum-1/0x631b0d1c8bd940bfaf59a2d15ce30462962e9bba/) | ⚠️ Unaudited |
| FeederPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x48c59199da51b7e30ea200a74ea07974e62c4ba7`](./contracts/ethereum-1/0x48c59199da51b7e30ea200a74ea07974e62c4ba7/); ethereum `0xbb128bc208c45b3dd277e001f88e1c6648060c64` | ⚠️ Unaudited |
| FeederPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa88328ed84c31c98d81237c354cc852a5022b9ea`](./contracts/ethereum-1/0xa88328ed84c31c98d81237c354cc852a5022b9ea/); ethereum `0xb61a6f928b3f069a68469ddb670f20eeeb4921e0` | ⚠️ Unaudited |
| FeederPoolV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4fb30c5a3ac8e85bc32785518633303c4590752d`](./contracts/ethereum-1/0x4fb30c5a3ac8e85bc32785518633303c4590752d/); ethereum `0xfe842e95f8911dcc21c943a1daa4bd641a1381c6` | ⚠️ Unaudited |
| FusePoolController | unknown | ethereum | n/a | [`0x5959dbc5432c173cbea41ab79d5673d5aa375311`](./contracts/ethereum-1/0x5959dbc5432c173cbea41ab79d5673d5aa375311/) | ⚠️ Unaudited |
| IncentivisedVotingLockup | unknown | ethereum | n/a | [`0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf`](./contracts/ethereum-1/0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf/) | ⚠️ Unaudited |
| InvariantValidator | unknown | ethereum | n/a | [`0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705`](./contracts/ethereum-1/0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705/) | ⚠️ Unaudited |
| Liquidator | unknown | ethereum | n/a | [`0xe595d67181d701a5356e010d9a58eb9a341f1dbd`](./contracts/ethereum-1/0xe595d67181d701a5356e010d9a58eb9a341f1dbd/) | ⚠️ Unaudited |
| MassetBtcV2 | unknown | ethereum | n/a | [`0x945facb997494cc2570096c74b5f66a3507330a1`](./contracts/ethereum-1/0x945facb997494cc2570096c74b5f66a3507330a1/) | ⚠️ Unaudited |
| MetaToken | token | ethereum | n/a | [`0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2`](./contracts/ethereum-1/0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2/) | ⚠️ Unaudited |
| MStablePoolController | unknown | ethereum | n/a | [`0x2afe310485208476d5aa480905db4f7e90d5fa0e`](./contracts/ethereum-1/0x2afe310485208476d5aa480905db4f7e90d5fa0e/) | ⚠️ Unaudited |
| MusdV3 | unknown | ethereum | n/a | [`0x15b2838cd28cc353afbe59385db3f366d8945aee`](./contracts/ethereum-1/0x15b2838cd28cc353afbe59385db3f366d8945aee/) | ⚠️ Unaudited |
| MusdV3_deprecated | unknown | ethereum | n/a | [`0xe2f2a5c287993345a840db3b0845fbc70f5935a5`](./contracts/ethereum-1/0xe2f2a5c287993345a840db3b0845fbc70f5935a5/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 8 deployments: ethereum [`0x038e3fb79bbe37c804f6d5ee6b5323537c886298`](./contracts/ethereum-1/0x038e3fb79bbe37c804f6d5ee6b5323537c886298/); ethereum `0x1c9aa54a013962c2444ecae06902f31d532c6ad3`; ethereum `0x3cd782379ce010fcda43983b490a99f43aace0c0`; ethereum `0x482136f386f8ec0032e730ee28ee9277b965e3b1`; ethereum `0x485dd130c2052770d4aa27df91049ee70b613f61`; ethereum `0xa6ae69af4aa21cc8813667d7089e44ba44b4605b`; ethereum `0xab2543d24da4b1e599d10745434d640b8d5fcc6e`; ethereum `0xec55723f3d3242038f33b85796a82f25a8b67cae` | ⚠️ Unaudited |
| RariFundController | unknown | ethereum | n/a | 8 deployments: ethereum [`0x369855b051d1b2dbee88a792dcfc08614ff4e262`](./contracts/ethereum-1/0x369855b051d1b2dbee88a792dcfc08614ff4e262/); ethereum `0x3f4931a8e9d4cdf8f56e7e8a8cfe3bede0e43657`; ethereum `0x6afe6c37bf75f80d512b9d89c19ec0b346b09a8d`; ethereum `0x9245efb59f6491ed1652c2dd8a4880cbfadc3ffa`; ethereum `0xa422890cbbe5eaa8f1c88590fbab7f319d7e24b6`; ethereum `0xb42bc0a99a176a16de9af1a490cae0c6832b43b8`; ethereum `0xd9f223a36c2e398b0886f945a7e556b41ef91a3c`; ethereum `0xdac4585b741e5b6625cec460d2a255fb3fbe0d47` | ⚠️ Unaudited |
| RariFundManager | governance | ethereum | n/a | [`0x59fa438cd0731ebf5f4cdcaf72d4960efd13fce6`](./contracts/ethereum-1/0x59fa438cd0731ebf5f4cdcaf72d4960efd13fce6/) | ⚠️ Unaudited |
| RariFundManager | governance | ethereum | n/a | [`0xb465baf04c087ce3ed1c266f96ca43f4847d9635`](./contracts/ethereum-1/0xb465baf04c087ce3ed1c266f96ca43f4847d9635/) | ⚠️ Unaudited |
| RariFundManager | governance | ethereum | n/a | [`0xc6bf8c8a55f77686720e0a88e2fd1feef58ddf4a`](./contracts/ethereum-1/0xc6bf8c8a55f77686720e0a88e2fd1feef58ddf4a/) | ⚠️ Unaudited |
| RariFundPriceConsumer | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc34d76cbb18a5976e38fe0f0c580dcee6d8954ee`](./contracts/ethereum-1/0xc34d76cbb18a5976e38fe0f0c580dcee6d8954ee/); ethereum `0xd7d2d97c61afb3045039584dc654b926694083c5` | ⚠️ Unaudited |
| RariFundProxy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x35ddefa2a30474e64314aaa7370abe14c042c6e8`](./contracts/ethereum-1/0x35ddefa2a30474e64314aaa7370abe14c042c6e8/); ethereum `0x4a785fa6fcd2e0845a24847beb7bddd26f996d4d`; ethereum `0xa3cc9e4b9784c80a05b3af215c32ff223c3ebe5c`; ethereum `0xe4dee94233dd4d7c2504744ee6d34f3875b3b439` | ⚠️ Unaudited |
| RariFundToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17728f7dd30b6e87d597a54b3a6863cf4e96aa4d`](./contracts/ethereum-1/0x17728f7dd30b6e87d597a54b3a6863cf4e96aa4d/); ethereum `0xb849daff8045fc295af2f6b4e27874914b5911c6` | ⚠️ Unaudited |
| RariGovernanceTokenDistributor | operational_periphery | ethereum | n/a | [`0x9c0caeb986c003417d21a7daaf30221d61fc1043`](./contracts/ethereum-1/0x9c0caeb986c003417d21a7daaf30221d61fc1043/) | ⚠️ Unaudited |
| RariGovernanceTokenUniswapDistributor | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x1fa69a416bcf8572577d3949b742fbb0a9cd98c7`](./contracts/ethereum-1/0x1fa69a416bcf8572577d3949b742fbb0a9cd98c7/); ethereum `0x7a2bbae82bd08196d64ff01c53788d942cf5f7b2` | ⚠️ Unaudited |
| RariGovernanceTokenVestingV3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x014b220912f6a9fce68e82fa6c2e603a7a78f436`](./contracts/ethereum-1/0x014b220912f6a9fce68e82fa6c2e603a7a78f436/); ethereum `0xdee8708c7ac420607dfcb572d69bab603a566d79` | ⚠️ Unaudited |
| SavingsContract_imbtc_mainnet_22 | unknown | ethereum | n/a | [`0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24`](./contracts/ethereum-1/0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24/) | ⚠️ Unaudited |
| SavingsContract_imusd_mainnet_22_deprecated | unknown | ethereum | n/a | [`0x30647a72dc82d7fbb1123ea74716ab8a317eac19`](./contracts/ethereum-1/0x30647a72dc82d7fbb1123ea74716ab8a317eac19/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x9b4aba35b35eee7481775ccb4055ce4e176c9a6f`](./contracts/ethereum-1/0x9b4aba35b35eee7481775ccb4055ce4e176c9a6f/) | ⚠️ Unaudited |
| StakingRewardsWithPlatformToken | token | ethereum | n/a | [`0xf4a7d2d85f4ba11b5c73c35e27044c0c49f7f027`](./contracts/ethereum-1/0xf4a7d2d85f4ba11b5c73c35e27044c0c49f7f027/) | ⚠️ Unaudited |
| Token | token | ethereum | n/a | [`0x6c806eddad78a5505fce27b18c6f859fc9739bec`](./contracts/ethereum-1/0x6c806eddad78a5505fce27b18c6f859fc9739bec/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6bcc070637a6eb4a13df47b906e4017530fd125d`](./contracts/ethereum-1/0x6bcc070637a6eb4a13df47b906e4017530fd125d/); ethereum `0x6dc585ad66a10214ef0502492b0cc02f0e836eec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc76190e04012f26a364228cfc41690429c44165d`](./contracts/ethereum-1/0xc76190e04012f26a364228cfc41690429c44165d/); ethereum `0xec929dfe6c95a8fbcb8ad5a91e14975a79ad7117` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x18a797c7c70c1bf22fdee1c09062aba709cacf04`](./contracts/ethereum-1/0x18a797c7c70c1bf22fdee1c09062aba709cacf04/) | ⚠️ Unaudited |
| ZeroExExchangeController | unknown | ethereum | n/a | [`0x1573a4de6a852e7f9647169a1c22d9cfed1d5f1a`](./contracts/ethereum-1/0x1573a4de6a852e7f9647169a1c22d9cfed1d5f1a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (161)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x5e829d997294f7f1d40a45c0f6431af13a381e63) | unknown | ethereum | n/a | 2 deployments: ethereum `0x1bbf310c8707bc2248c0b46a2cd073c81f2cd76c`; ethereum `0x5e829d997294f7f1d40a45c0f6431af13a381e63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x015e435df0bfb249990be78ce050bf8b3b88f757` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0573cceb1003225034cf287e2fdb225a0e576d95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x084ec13783c5fa8492a038189932299db549a6bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08eee5214953f8f54e04c3279ce47548700affad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x122ee0a13751f30909ddcd34a9e866d67175d02e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14ee0270c80bed60bdc117d4f218dee0a4909f28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1510c117c12918f67bc4802747b139d99346d4d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x159dc835ee77e955f6b5a8ebe0f3cab572fef013` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19f7f071dd782f66fbcb4165b27d9b4217ee2973` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a1e7b69348b22b304428a07a7ffa1c6347f8ef6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a5655cbda3a2823568b87ecf5af12c509a54ec7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ac1ec4030d3ebaeae7be8d5786a8a7bca071a06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c77d2413e4848c2c73f8e15edd95216f63a9baf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x216c301a7c45167c605c87f650fb589ba268e1d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25dd5bc0fd84db78fda975b7decc5b7882f3da3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25f9cebb75ebbaa7b7eddc70d33ffb993896ecb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x290e0f31e96e13f9c0db14fd328a3c2a94557245` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b88f7f53649efae653e53a204b4618ede06dd29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ba5f816fb2c219ae1c621c69a263899c1914da4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c0cd506669259157474897484b10f2097b0fe63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2da13a91e06ce9619399684fc5429d25dfadc651` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f116c0e2788920a913d2164a7851586520553d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3218996f84d2596601834f197e29a669d820efd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3288a2d5f11fcbefbf77754e073cad2c10325de2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33f738c401f864c26fee2fd0f6ad66f6c294982a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3472f7e0179fe15cd7450c9c5269c876fac64b73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3659a0a9128ee84f143bdc83c4f3932cd8f552e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36f74bad13019612b33e359a9b263e904a95ec9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37c909fb7c6ad03d968898a2105da767ac736c80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x397f22662eaf94bf0b05b1205bcde61a3d13d1c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a8a76b8c18ad093a0832ca1574422740d08eae6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3adc1ff6db7a10a7a6d82cf0b65b701b36b6bf1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b1c9f632def81f02b64f1e45db05c046c5c6888` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f0ae9e61fe649e09ddbdcbc8f9d995694ba80d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f44ca47db5d8240ee5f3b8df4eedf45547a5e9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f579f097f2ce8696ae8c417582cfafde9ec9966` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x402026b4525df39f1072a9de672b23b7c11c9ee1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4186c5aed424876f7ebe52f9148552a45e17f287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41c7f2d48bde2397dff43dada367d2bd3527452f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42e004d19dddd185ac19c0daf1225540a81c0d2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49a4af90cfc103a71e893a0302dd25940a8baf18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4af56ef284388b5b3d344f7caed1ff3eb0599874` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4afb2b3dc111d091ca6c46c024d1d2f17bf477e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d10ca761814f56be0b99b45ea1857f494959ef0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d9e0684ad569bc1a70905b02c367f1e80173735` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f9b31514e15b504686a1ebc0d7e8fb40934c7c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50293eb96e90616fad66cef227eda2b344f592c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x539c54bd78b89079f57560ea95080da7a76d81fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5447c825ee330015418c1a0d840c4a1b5a7176cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x545d7ceb4f1af03cad930c6a6f7634f3406755dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55448f02e3bd7b19a0585876d301043a91426b29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57a729b2fd6b137502d2d70329dcfd40e4af29a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58c3e7119ec200c09b2b3a9f8ce3bd77b6b47012` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x594bca95159757b270c2ac6bcb3105620c7b1aa6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5aab54196368878d603db79d54c4233c54bb1d22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5add5c070902e4b535f76bafac486cc689095d71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5aeeb31cf3dd740fb6cfa7e8c2af6daf2c3f7cee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ca061d60d1f10732f42fdb54eb1f4ef9065b7ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f2df200636e203863819cbeaa02017cfabec4d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60a315ceb791cdf6c7f17b14ba03aaadbd96c054` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6127e381756796fb978bc872556bf790f14cde98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x619de905be35aa5bb05f2bd5ab0b8d425065557d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x626a6f2279306637f6fe3dd2ca7a06c86d723890` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x626d6979f3607d13051594d8b27a0a64e413bc11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63b79a03dd859b99022166af0a66334b1e646fbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x657bd4d86c8aef3ab9c145b1b84eb2d661428ef9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66159b1250f7ec2e335176643c25a0a3deae7b1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x679680ae60c008eae23e18e143aea4a0d75b2f0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68ac6adeefdfbbd603bad9db0bb64a90dd2d51c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ab2497db9f36ebd69d2f9f13329a27fe070af09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dd8e1df9f366e6494c2601e515813e0f9219a88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x704bff255201c9da5487fa251bbc686a69d8ec77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70e34593dec1c0bd1326e83b36a293e691e12c4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71041665f8d82b35f8fa15daa7c2e9010c1bb790` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72609cd3ae6110aadda977af5886680c6ac47ba0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72ad938d1c649c4ea1f69d53497f4cbd35c9ba4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72fd4c801f5845ab672a12bce1b05bdba1fd851a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7328a02a9d9ce05fc9c8e548d27df0d981f5a3b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77157556cd422e369c35f914fd8ddcd35e59ea9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x775234178eb3424ac177546bd2093abdbc4cf0c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bc6da9cb9139f4bf04c1562de7cb5ffe18af007` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c332fea58056d1ef6ab2b2016ce4900773dc399` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c99ae5a1e01a8942575c906a3abbcf7f2fa3f0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ecaf96c79c2b263afe4f486ec9a74f8e563e0a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80829b8a344741e28ae70374be02ec9d4b51cd89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83728b5ba733b849bc35b4aa8544cfbfb814b814` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85aaa627b152659202d901f25022a44d7a742c4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87a405a42792ea23045e54cdeddb270a0fe23e85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x884159900e528c2337810986191e5914f0cbfdeb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89e4a3cb522e6b916051cf166d8c00996370a721` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c1e81145e49b27a595388459d0221fc7ca69d21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8db1884def49b001c0b9b2fd5ba8e8b71f69b958` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e9e1aef096763124ce9682fabcf67f428232e75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f3eaad739f99f5408e249660aa6dafe4760be20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x948e587a4c175e3b4208f8084e6b8c5c0c4dae66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97b6879573ae5c09cbe200c96b407ef9ac74fcc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97e6e953c9a9250c8e889d888158f27752e0afe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9827b882671747d096ce5b2d80a6e1ab126b5883` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99f7cbbaac87624b77ddf6bc229a7f48b38219ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a1c51c2d8ea2275e538fc69acf031c376c114c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e35ce1edaa2cbe4c2c61627ccada05646bf52d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fa9ffa397be8e33930571dcd9f5f92b629b0fad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa13a429f7f629012bb20f4f8418aa64d860b24cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa18c88f04e46caa1541c90e8eb1a25f9f45b8c8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa27be12024b06a7d1ba5cf0d9182d65a7b021f5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3285883df1a64775ca05e2517cdca2d420aaa11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa64d0be31db79e0441da56f0adea1f3a59aa20f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6f8dd6bd8f56e18eece37c7b56d2075156ea928` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa05a0949a35747bac858aa6110d3fae1edec8bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae130fb40a137bb84f0b71e3b8651594874019cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae7c2169f3b5179ba56e471623bc47bee06e4aa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb04be6165cf1879310e48f8900ad8c647b9b5c5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb202cad3965997f2f5e67b349b2c5df036b9792e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5e8e42639e20285c9e58a317c28d9a4d7cb7000` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5eeaeb4e7e0a9fed003ed402016342a09fc2784` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb669d0319fb9de553e5c206e6fbebd58512b668b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb77a6a11a5998a6c7b9337f97fd82f0d90f873b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf29f83d9a0ec1d9ec7281381e04750b817fea4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf8abdd5b8c4561d3380a8af20f7dea0a68d854f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc09e9858bb85e0345be6ba4b9b74b667c492b39a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0d4c40fd7777f4b15abbe530b54b44d16a204e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc115814fb76891164a011954ab58b67996a808fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc201b8c8dd22c779025e16f1825c90e1e6dd6a08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7a8424040321e43f413396ba4c8d319524af3b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca844845a3578296b3fcfe50fc3a1064a2922fbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbe7a81292b089a1ce3ba5343531eeb7aa567157` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc29fe6a0e090d464abb616e1ae4ceea415c140e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1a758149896530a114c7f5e4c4daf093fc184a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4a510b9e5b41a17f4e2e97477a468f6be85b102` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd57ba8d8aa1fadc329b6529640cdcde84ef22e57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6a8cac634e59c00a3d4163f839d068458e39869` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7590e93a2e04110ad50ec70eade7490f7b8228a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd806782b31ec52fcb7f2a009d7d045bb732431fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9456c29f7ba8538a316836c42b64ec6e53d8ca2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9a29423a952629d814b4531212086825e184544` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9eefdb09d75ca848433079ea72ef609a1c1ea21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddb0d86fdbf33210ba6efc97757ffcdbf26b5530` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddf28109e765d3d8e88c9bcd2263f0e03dafd001` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde6796aa414173b63f626be1f13e419d8e35fc09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdeacc4f27379deff3d40974f72c60b664ea78f8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe178524348a6d09de427cf076a0c3f587592a29a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe23b821d5400a9a729036350bded215bd74d0042` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe264631bbaa8c1ad73d1354a829615a4d9bf6f8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5bb43b4274a25049f43298c6d38f299bac47d50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7db5c6b22654e0fd9da4e90f7afbdcfc579b9fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb988f5492c86584f8d8f1b8662188d5a9bfe357` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebc0752232697f17ebfaa1f26ab8543ecec35ae3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebea141052d759b75c4c9eeaad28f07f329d0163` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec75777be4585d20bd5ecea354f7da62f97440b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed2cd60c0000a990a5ffaf0e7ddc70a37d7c623f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef1a4e2ca6fbedd135f1173be8d8b4c197a13cf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef3035775e3c3d5710a2c374f883215d45165ad3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefb1061514c0fed04ef3dbe72b0dd9889b65d3c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0239157ba67fb793ac6833056de15ce5c7388b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0f3a1494ae00b5350535b7777abb2f499fc13d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3a36bb3b627a5c8c36ba0714fe035a401e86b78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3c10a283baf9fccf354ac544b81fd72487dbf17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5c9148cfcaf42f2d94b3ceed751b8815b719f91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8731eb567c4c7693cf497849247668c91c9ed36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffc9ec4adbf75a537e4d233720f06f0df01fb7f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7](https://www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x66126b4aa2a1c07536ef8e5e8bd4efda1fdea96d`](./contracts/ethereum-1/0x66126b4aa2a1c07536ef8e5e8bd4efda1fdea96d/) | BasketManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x760ea8cfdcc4e78d8b9ca3088ecd460246dc0731`](./contracts/ethereum-1/0x760ea8cfdcc4e78d8b9ca3088ecd460246dc0731/) | BoostedSavingsVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadeedd3e5768f7882572ad91065f93ba88343c99`](./contracts/ethereum-1/0xadeedd3e5768f7882572ad91065f93ba88343c99/) | BoostedSavingsVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd124b55f70d374f58455c8aedf308e52cf2a6207`](./contracts/ethereum-1/0xd124b55f70d374f58455c8aedf308e52cf2a6207/) | BoostedSavingsVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf65d53aa6e2e4a5f4f026e73cb3e22c22d75e35c`](./contracts/ethereum-1/0xf65d53aa6e2e4a5f4f026e73cb3e22c22d75e35c/) | BoostedSavingsVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf38522f63f40f9dd81abafd2b8efc2ec958a3016`](./contracts/ethereum-1/0xf38522f63f40f9dd81abafd2b8efc2ec958a3016/) | BoostedSavingsVault_imbtc_mainnet_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78befca7de27d07dc6e71da295cc2946681a6c7b`](./contracts/ethereum-1/0x78befca7de27d07dc6e71da295cc2946681a6c7b/) | BoostedSavingsVault_imusd_mainnet_2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x631b0d1c8bd940bfaf59a2d15ce30462962e9bba`](./contracts/ethereum-1/0x631b0d1c8bd940bfaf59a2d15ce30462962e9bba/) | DydxPoolController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48c59199da51b7e30ea200a74ea07974e62c4ba7`](./contracts/ethereum-1/0x48c59199da51b7e30ea200a74ea07974e62c4ba7/) | FeederPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa88328ed84c31c98d81237c354cc852a5022b9ea`](./contracts/ethereum-1/0xa88328ed84c31c98d81237c354cc852a5022b9ea/) | FeederPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fb30c5a3ac8e85bc32785518633303c4590752d`](./contracts/ethereum-1/0x4fb30c5a3ac8e85bc32785518633303c4590752d/) | FeederPoolV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5959dbc5432c173cbea41ab79d5673d5aa375311`](./contracts/ethereum-1/0x5959dbc5432c173cbea41ab79d5673d5aa375311/) | FusePoolController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf`](./contracts/ethereum-1/0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf/) | IncentivisedVotingLockup | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705`](./contracts/ethereum-1/0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705/) | InvariantValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe595d67181d701a5356e010d9a58eb9a341f1dbd`](./contracts/ethereum-1/0xe595d67181d701a5356e010d9a58eb9a341f1dbd/) | Liquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x945facb997494cc2570096c74b5f66a3507330a1`](./contracts/ethereum-1/0x945facb997494cc2570096c74b5f66a3507330a1/) | MassetBtcV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2`](./contracts/ethereum-1/0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2/) | MetaToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2afe310485208476d5aa480905db4f7e90d5fa0e`](./contracts/ethereum-1/0x2afe310485208476d5aa480905db4f7e90d5fa0e/) | MStablePoolController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15b2838cd28cc353afbe59385db3f366d8945aee`](./contracts/ethereum-1/0x15b2838cd28cc353afbe59385db3f366d8945aee/) | MusdV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe2f2a5c287993345a840db3b0845fbc70f5935a5`](./contracts/ethereum-1/0xe2f2a5c287993345a840db3b0845fbc70f5935a5/) | MusdV3_deprecated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x369855b051d1b2dbee88a792dcfc08614ff4e262`](./contracts/ethereum-1/0x369855b051d1b2dbee88a792dcfc08614ff4e262/) | RariFundController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59fa438cd0731ebf5f4cdcaf72d4960efd13fce6`](./contracts/ethereum-1/0x59fa438cd0731ebf5f4cdcaf72d4960efd13fce6/) | RariFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb465baf04c087ce3ed1c266f96ca43f4847d9635`](./contracts/ethereum-1/0xb465baf04c087ce3ed1c266f96ca43f4847d9635/) | RariFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6bf8c8a55f77686720e0a88e2fd1feef58ddf4a`](./contracts/ethereum-1/0xc6bf8c8a55f77686720e0a88e2fd1feef58ddf4a/) | RariFundManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc34d76cbb18a5976e38fe0f0c580dcee6d8954ee`](./contracts/ethereum-1/0xc34d76cbb18a5976e38fe0f0c580dcee6d8954ee/) | RariFundPriceConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35ddefa2a30474e64314aaa7370abe14c042c6e8`](./contracts/ethereum-1/0x35ddefa2a30474e64314aaa7370abe14c042c6e8/) | RariFundProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17728f7dd30b6e87d597a54b3a6863cf4e96aa4d`](./contracts/ethereum-1/0x17728f7dd30b6e87d597a54b3a6863cf4e96aa4d/) | RariFundToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c0caeb986c003417d21a7daaf30221d61fc1043`](./contracts/ethereum-1/0x9c0caeb986c003417d21a7daaf30221d61fc1043/) | RariGovernanceTokenDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fa69a416bcf8572577d3949b742fbb0a9cd98c7`](./contracts/ethereum-1/0x1fa69a416bcf8572577d3949b742fbb0a9cd98c7/) | RariGovernanceTokenUniswapDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x014b220912f6a9fce68e82fa6c2e603a7a78f436`](./contracts/ethereum-1/0x014b220912f6a9fce68e82fa6c2e603a7a78f436/) | RariGovernanceTokenVestingV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24`](./contracts/ethereum-1/0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24/) | SavingsContract_imbtc_mainnet_22 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30647a72dc82d7fbb1123ea74716ab8a317eac19`](./contracts/ethereum-1/0x30647a72dc82d7fbb1123ea74716ab8a317eac19/) | SavingsContract_imusd_mainnet_22_deprecated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b4aba35b35eee7481775ccb4055ce4e176c9a6f`](./contracts/ethereum-1/0x9b4aba35b35eee7481775ccb4055ce4e176c9a6f/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf4a7d2d85f4ba11b5c73c35e27044c0c49f7f027`](./contracts/ethereum-1/0xf4a7d2d85f4ba11b5c73c35e27044c0c49f7f027/) | StakingRewardsWithPlatformToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c806eddad78a5505fce27b18c6f859fc9739bec`](./contracts/ethereum-1/0x6c806eddad78a5505fce27b18c6f859fc9739bec/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1573a4de6a852e7f9647169a1c22d9cfed1d5f1a`](./contracts/ethereum-1/0x1573a4de6a852e7f9647169a1c22d9cfed1d5f1a/) | ZeroExExchangeController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 5 |
| standard_library | 2 |
| needs_review | 162 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3048] www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7

Fork inheritance lineage and inherited audits are included when available.
