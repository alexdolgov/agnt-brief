# Agentic Audit Brief: Rari Capital

## Project Overview

- Project: Rari Capital (`rari-capital`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:44.188Z
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

- Coverage of deployed-live implementations: 0/44 (0.0%)
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
| AaveIntegration | unknown | ethereum | n/a | [`0xf61734...3d9d39`](./contracts/ethereum-1/0xf617346a0fb6320e9e578e0c9b2a4588283d9d39/) | ⚠️ Unaudited |
| AavePoolController | unknown | ethereum | n/a | [`0x1821c1...259c98`](./contracts/ethereum-1/0x1821c1d8c74a3d8799170c35f2abb83ac3259c98/) | ⚠️ Unaudited |
| BasketManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x66126b...dea96d`](./contracts/ethereum-1/0x66126b4aa2a1c07536ef8e5e8bd4efda1fdea96d/); ethereum `0x6efa26...79bf61` | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | ethereum | n/a | [`0x760ea8...dc0731`](./contracts/ethereum-1/0x760ea8cfdcc4e78d8b9ca3088ecd460246dc0731/) | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | ethereum | n/a | [`0xadeedd...343c99`](./contracts/ethereum-1/0xadeedd3e5768f7882572ad91065f93ba88343c99/) | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | ethereum | n/a | [`0xd124b5...2a6207`](./contracts/ethereum-1/0xd124b55f70d374f58455c8aedf308e52cf2a6207/) | ⚠️ Unaudited |
| BoostedSavingsVault | unknown | ethereum | n/a | [`0xf65d53...75e35c`](./contracts/ethereum-1/0xf65d53aa6e2e4a5f4f026e73cb3e22c22d75e35c/) | ⚠️ Unaudited |
| BoostedSavingsVault_imbtc_mainnet_2 | unknown | ethereum | n/a | [`0xf38522...8a3016`](./contracts/ethereum-1/0xf38522f63f40f9dd81abafd2b8efc2ec958a3016/) | ⚠️ Unaudited |
| BoostedSavingsVault_imusd_mainnet_2 | core_logic | ethereum | n/a | [`0x78befc...1a6c7b`](./contracts/ethereum-1/0x78befca7de27d07dc6e71da295cc2946681a6c7b/) | ⚠️ Unaudited |
| CompoundIntegration | unknown | ethereum | n/a | [`0xd55684...9db735`](./contracts/ethereum-1/0xd55684f4369040c12262949ff78299f2bc9db735/) | ⚠️ Unaudited |
| CompoundPoolController | unknown | ethereum | n/a | [`0xaf0d83...6af3f4`](./contracts/ethereum-1/0xaf0d83ae6c62281cc1fa28dde0647b9bb16af3f4/) | ⚠️ Unaudited |
| DydxPoolController | unknown | ethereum | n/a | [`0x631b0d...2e9bba`](./contracts/ethereum-1/0x631b0d1c8bd940bfaf59a2d15ce30462962e9bba/) | ⚠️ Unaudited |
| FeederPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x48c591...2c4ba7`](./contracts/ethereum-1/0x48c59199da51b7e30ea200a74ea07974e62c4ba7/); ethereum `0xbb128b...060c64` | ⚠️ Unaudited |
| FeederPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa88328...22b9ea`](./contracts/ethereum-1/0xa88328ed84c31c98d81237c354cc852a5022b9ea/); ethereum `0xb61a6f...4921e0` | ⚠️ Unaudited |
| FeederPoolV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4fb30c...90752d`](./contracts/ethereum-1/0x4fb30c5a3ac8e85bc32785518633303c4590752d/); ethereum `0xfe842e...1381c6` | ⚠️ Unaudited |
| FusePoolController | unknown | ethereum | n/a | [`0x5959db...375311`](./contracts/ethereum-1/0x5959dbc5432c173cbea41ab79d5673d5aa375311/) | ⚠️ Unaudited |
| IncentivisedVotingLockup | unknown | ethereum | n/a | [`0xae8bc9...a0e1bf`](./contracts/ethereum-1/0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf/) | ⚠️ Unaudited |
| InvariantValidator | unknown | ethereum | n/a | [`0xca480d...e7d705`](./contracts/ethereum-1/0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705/) | ⚠️ Unaudited |
| Liquidator | unknown | ethereum | n/a | [`0xe595d6...1f1dbd`](./contracts/ethereum-1/0xe595d67181d701a5356e010d9a58eb9a341f1dbd/) | ⚠️ Unaudited |
| MassetBtcV2 | unknown | ethereum | n/a | [`0x945fac...7330a1`](./contracts/ethereum-1/0x945facb997494cc2570096c74b5f66a3507330a1/) | ⚠️ Unaudited |
| MetaToken | token | ethereum | n/a | [`0xa3bed4...e9acd2`](./contracts/ethereum-1/0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2/) | ⚠️ Unaudited |
| MStablePoolController | unknown | ethereum | n/a | [`0x2afe31...d5fa0e`](./contracts/ethereum-1/0x2afe310485208476d5aa480905db4f7e90d5fa0e/) | ⚠️ Unaudited |
| MusdV3 | unknown | ethereum | n/a | [`0x15b283...945aee`](./contracts/ethereum-1/0x15b2838cd28cc353afbe59385db3f366d8945aee/) | ⚠️ Unaudited |
| MusdV3_deprecated | unknown | ethereum | n/a | [`0xe2f2a5...5935a5`](./contracts/ethereum-1/0xe2f2a5c287993345a840db3b0845fbc70f5935a5/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 8 deployments: ethereum [`0x038e3f...886298`](./contracts/ethereum-1/0x038e3fb79bbe37c804f6d5ee6b5323537c886298/); ethereum `0x1c9aa5...2c6ad3`; ethereum `0x3cd782...ace0c0`; ethereum `0x482136...65e3b1`; ethereum `0x485dd1...613f61`; ethereum `0xa6ae69...b4605b`; ethereum `0xab2543...5fcc6e`; ethereum `0xec5572...b67cae` | ⚠️ Unaudited |
| RariFundController | unknown | ethereum | n/a | 8 deployments: ethereum [`0x369855...f4e262`](./contracts/ethereum-1/0x369855b051d1b2dbee88a792dcfc08614ff4e262/); ethereum `0x3f4931...e43657`; ethereum `0x6afe6c...b09a8d`; ethereum `0x9245ef...dc3ffa`; ethereum `0xa42289...7e24b6`; ethereum `0xb42bc0...2b43b8`; ethereum `0xd9f223...f91a3c`; ethereum `0xdac458...be0d47` | ⚠️ Unaudited |
| RariFundManager | governance | ethereum | n/a | [`0x59fa43...13fce6`](./contracts/ethereum-1/0x59fa438cd0731ebf5f4cdcaf72d4960efd13fce6/) | ⚠️ Unaudited |
| RariFundManager | governance | ethereum | n/a | [`0xb465ba...7d9635`](./contracts/ethereum-1/0xb465baf04c087ce3ed1c266f96ca43f4847d9635/) | ⚠️ Unaudited |
| RariFundManager | governance | ethereum | n/a | [`0xc6bf8c...8ddf4a`](./contracts/ethereum-1/0xc6bf8c8a55f77686720e0a88e2fd1feef58ddf4a/) | ⚠️ Unaudited |
| RariFundPriceConsumer | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc34d76...8954ee`](./contracts/ethereum-1/0xc34d76cbb18a5976e38fe0f0c580dcee6d8954ee/); ethereum `0xd7d2d9...4083c5` | ⚠️ Unaudited |
| RariFundProxy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x35ddef...42c6e8`](./contracts/ethereum-1/0x35ddefa2a30474e64314aaa7370abe14c042c6e8/); ethereum `0x4a785f...996d4d`; ethereum `0xa3cc9e...3ebe5c`; ethereum `0xe4dee9...b3b439` | ⚠️ Unaudited |
| RariFundToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17728f...96aa4d`](./contracts/ethereum-1/0x17728f7dd30b6e87d597a54b3a6863cf4e96aa4d/); ethereum `0xb849da...5911c6` | ⚠️ Unaudited |
| RariGovernanceTokenDistributor | operational_periphery | ethereum | n/a | [`0x9c0cae...fc1043`](./contracts/ethereum-1/0x9c0caeb986c003417d21a7daaf30221d61fc1043/) | ⚠️ Unaudited |
| RariGovernanceTokenUniswapDistributor | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x1fa69a...cd98c7`](./contracts/ethereum-1/0x1fa69a416bcf8572577d3949b742fbb0a9cd98c7/); ethereum `0x7a2bba...f5f7b2` | ⚠️ Unaudited |
| RariGovernanceTokenVestingV3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x014b22...78f436`](./contracts/ethereum-1/0x014b220912f6a9fce68e82fa6c2e603a7a78f436/); ethereum `0xdee870...566d79` | ⚠️ Unaudited |
| SavingsContract_imbtc_mainnet_22 | unknown | ethereum | n/a | [`0x17d8cb...7a6c24`](./contracts/ethereum-1/0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24/) | ⚠️ Unaudited |
| SavingsContract_imusd_mainnet_22_deprecated | unknown | ethereum | n/a | [`0x30647a...7eac19`](./contracts/ethereum-1/0x30647a72dc82d7fbb1123ea74716ab8a317eac19/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x9b4aba...6c9a6f`](./contracts/ethereum-1/0x9b4aba35b35eee7481775ccb4055ce4e176c9a6f/) | ⚠️ Unaudited |
| StakingRewardsWithPlatformToken | token | ethereum | n/a | [`0xf4a7d2...f7f027`](./contracts/ethereum-1/0xf4a7d2d85f4ba11b5c73c35e27044c0c49f7f027/) | ⚠️ Unaudited |
| Token | token | ethereum | n/a | [`0x6c806e...739bec`](./contracts/ethereum-1/0x6c806eddad78a5505fce27b18c6f859fc9739bec/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6bcc07...fd125d`](./contracts/ethereum-1/0x6bcc070637a6eb4a13df47b906e4017530fd125d/); ethereum `0x6dc585...836eec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc76190...44165d`](./contracts/ethereum-1/0xc76190e04012f26a364228cfc41690429c44165d/); ethereum `0xec929d...ad7117` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x18a797...cacf04`](./contracts/ethereum-1/0x18a797c7c70c1bf22fdee1c09062aba709cacf04/) | ⚠️ Unaudited |
| ZeroExExchangeController | unknown | ethereum | n/a | [`0x1573a4...1d5f1a`](./contracts/ethereum-1/0x1573a4de6a852e7f9647169a1c22d9cfed1d5f1a/) | ⚠️ Unaudited |

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
| Proxy (impl: 0x5e829d997294f7f1d40a45c0f6431af13a381e63) | unknown | ethereum | n/a | 2 deployments: ethereum `0x1bbf31...2cd76c`; ethereum `0x5e829d...381e63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x015e43...88f757` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0573cc...576d95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x084ec1...49a6bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08eee5...0affad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x122ee0...75d02e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14ee02...909f28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1510c1...46d4d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x159dc8...fef013` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19f7f0...ee2973` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a1e7b...7f8ef6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a5655...a54ec7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ac1ec...071a06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c77d2...3a9baf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x216c30...68e1d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25dd5b...f3da3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25f9ce...96ecb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x290e0f...557245` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b88f7...06dd29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ba5f8...914da4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c0cd5...b0fe63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2da13a...adc651` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f116c...0553d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x321899...20efd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3288a2...325de2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33f738...94982a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3472f7...c64b73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3659a0...f552e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36f74b...95ec9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37c909...736c80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x397f22...13d1c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a8a76...08eae6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3adc1f...b6bf1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b1c9f...5c6888` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f0ae9...ba80d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f44ca...7a5e9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f579f...ec9966` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x402026...1c9ee1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4186c5...17f287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41c7f2...27452f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x42e004...1c0d2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49a4af...8baf18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4af56e...599874` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4afb2b...f477e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d10ca...959ef0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d9e06...173735` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f9b31...34c7c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50293e...f592c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x539c54...6d81fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5447c8...7176cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x545d7c...6755dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55448f...426b29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57a729...af29a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58c3e7...b47012` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x594bca...7b1aa6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5aab54...bb1d22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5add5c...095d71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5aeeb3...3f7cee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ca061...65b7ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f2df2...bec4d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60a315...96c054` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6127e3...4cde98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x619de9...65557d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x626a6f...723890` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x626d69...13bc11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63b79a...646fbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x657bd4...428ef9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66159b...ae7b1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x679680...5b2f0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68ac6a...2d51c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ab249...70af09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dd8e1...219a88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x704bff...d8ec77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70e345...e12c4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x710416...1bb790` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72609c...c47ba0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72ad93...c9ba4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72fd4c...fd851a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7328a0...f5a3b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x771575...59ea9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x775234...4cf0c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bc6da...8af007` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c332f...3dc399` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c99ae...fa3f0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ecaf9...63e0a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80829b...51cd89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83728b...14b814` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85aaa6...742c4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87a405...e23e85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x884159...cbfdeb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89e4a3...70a721` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c1e81...a69d21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8db188...69b958` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e9e1a...232e75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f3eaa...60be20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x948e58...4dae66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97b687...74fcc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97e6e9...e0afe0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9827b8...6b5883` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99f7cb...8219ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a1c51...c114c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e35ce...bf52d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fa9ff...9b0fad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa13a42...0b24cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa18c88...5b8c8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa27be1...021f5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa32858...0aaa11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa64d0b...aa20f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6f8dd...6ea928` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa05a0...dec8bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae130f...4019cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae7c21...6e4aa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb04be6...9b5c5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb202ca...b9792e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5e8e4...cb7000` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5eeae...fc2784` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb669d0...2b668b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb77a6...0f873b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf29f8...7fea4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf8abd...8d854f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc09e98...92b39a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0d4c4...a204e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc11581...a808fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc201b8...dd6a08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7a842...4af3b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca8448...922fbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbe7a8...567157` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc29fe...5c140e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1a758...c184a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4a510...85b102` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd57ba8...f22e57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6a8ca...e39869` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7590e...b8228a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd80678...2431fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9456c...3d8ca2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9a294...184544` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9eefd...c1ea21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddb0d8...6b5530` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddf281...afd001` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde6796...35fc09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdeacc4...a78f8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe17852...92a29a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe23b82...4d0042` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe26463...bf6f8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5bb43...c47d50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7db5c...79b9fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb988f...bfe357` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebc075...c35ae3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebea14...9d0163` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec7577...7440b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed2cd6...7c623f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef1a4e...a13cf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef3035...165ad3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefb106...65d3c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf02391...7388b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0f3a1...fc13d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3a36b...e86b78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3c10a...7dbf17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5c914...719f91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8731e...c9ed36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffc9ec...1fb7f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7](https://www.notion.so/Rari-Capital-Audit-Quantstamp-December-2020-24a1d1df94894d6881ee190686f47bc7) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 205 |

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
