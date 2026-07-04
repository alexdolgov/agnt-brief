# Agentic Audit Brief: Avalon Labs

⚠️ Lifecycle status: UNKNOWN - TVL dropped 38.3% over 90 days

## Project Overview

- Project: Avalon Labs (`avalon-labs`)
- Website: [https://www.avalonfinance.xyz](https://www.avalonfinance.xyz)
- Lifecycle: unknown (Tier 0, 85.1% below peak)
- Generated: 2026-07-04T14:53:04.980Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: arbitrum, base, berachain, bsc, ethereum, klaytn, mantle, merlin, mode, scroll, sei, sonic
- Contract surface: 571 unique implementations (913 raw deployments)
- DeFi Llama TVL: $398,187,502.00
- On-chain TVL (included contracts): $1,990,093.28
- TVL by chain: Bsc $1,990,093.28 | Ethereum $0.00

## Project Description

Anchor BTC. Structurally: 272 project-authored contract(s) across 10 chain(s); 1 ERC4626 vault, 31 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on aave.

### Architecture

The protocol comprises 13 functional families. Its contracts share 49 common project-authored base contract(s) (proxy, oapp, oappsender). Dominant framework: aave.

## Contract Surface Quality

- Indexed contracts: 1573; live-surface contracts included: 909 (313 live, 596 unknown).
- Excluded by liveness: 664 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/28 (17.9%)
- Deployed-live implementations: 34 of 571 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/44
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 2
- Unverified implementations: 527
- Unique implementations: 571
- Raw deployments: 913
- Audits discovered: 19 (19 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $1,990,093.28
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 2 stale, 11 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 14.3% (SlowMist)
- Note: This protocol is classified as [unknown]. ASD of $1,990,093.28 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 4 | 9.1% | 2024-10 |
| BlockSec | Tier 2 | 3 | 6.8% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolManager | core_logic | bsc | n/a | 2 deployments: bsc [`0x02fedc...d248f0`](./contracts/bsc-56/0x02fedcff97942fe28e8936cdc3d7a480fdd248f0/); bsc `0xeb13f6...d3c5ed` | ✅ Audited |
| SavingAccount | core_logic | ethereum | n/a | [`0x01e3cc...5ddfa6`](./contracts/ethereum-1/0x01e3cc8e17755989ad2cafe78a822354eb5ddfa6/) | ✅ Audited |
| sUSDa | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2b66aa...d43bd9`](./contracts/ethereum-1/0x2b66aade1e9c062ff411bd47c44e0ad696d43bd9/); bsc `0x73a325...f82b03`; mantle `0x5a61b1...66bc6e` | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakedUSDX | token | bsc | n/a | [`0x7788a3...d87d92`](./contracts/bsc-56/0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92/) | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | sei | n/a | 25 deployments: ethereum `0x2ee043...d1c2ef`; ethereum `0x87ed94...acab67`; ethereum `0xfabb0f...ead7e2`; bsc `0x2c4aeb...bd1966`; bsc `0x5157f6...96a09e`; bsc `0x56f817...84b351`; bsc `0x58c937...fff03c`; bsc `0x5b9b3c...a587dc`; bsc `0x672b19...ed8c39`; bsc `0x9515dc...b7f9d8`; bsc `0xa34f1a...1fa20f`; bsc `0xc5b05b...79b6c9`; bsc `0xf828a7...54fe5c`; sonic `0x1c6e95...b0481f`; sonic `0x23f02c...f59a02`; sonic `0x28350e...eb4700`; sei [`0x16b9b8...d45121`](./contracts/sei-1329/0x16b9b88b773c1a1aba6d305e0560171405d45121/); sei `0x5ecdc2...c40ec0`; base `0xa9d15c...8f7d50`; mode `0x8f016f...e2de74`; mode `0xc5b05b...79b6c9`; arbitrum `0x2c4aeb...bd1966`; arbitrum `0xec579d...086a6f`; arbitrum `0xfabb0f...ead7e2`; scroll `0x18cbe7...da53f2` | ⚠️ Unaudited |
| ACLManager | governance | mode | n/a | 5 deployments: bsc `0xae5d15...c88537`; bsc `0xdc041a...b5049e`; base `0xb96166...21d928`; mode [`0x8692d9...e62cd2`](./contracts/mode-34443/0x8692d945f2d8a1f3770610b814110b28bce62cd2/); mode `0xc6a936...8f74bb` | ⚠️ Unaudited |
| Avalon | unknown | bsc | n/a | 2 deployments: bsc [`0x9124b9...400330`](./contracts/bsc-56/0x9124b9b7517387937e07078db5a2620860400330/); bsc `0x9beee8...fdc202` | ⚠️ Unaudited |
| AvalonTimelock | governance | bsc | n/a | [`0x1e93f3...2b603f`](./contracts/bsc-56/0x1e93f31dab711d36b263d0b8ae3a6730792b603f/) | ⚠️ Unaudited |
| AVLStaking | token | bsc | n/a | 2 deployments: ethereum `0x2c9b3d...7a1680`; bsc [`0x1c961a...69ec3b`](./contracts/bsc-56/0x1c961a18882661dc2aea540108a1165dfa69ec3b/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | bsc | n/a | 186 deployments: ethereum `0x01f4b5...f53ebf`; ethereum `0x075df6...06e326`; ethereum `0x108587...8b81ca`; ethereum `0x1bf297...eddedb`; ethereum `0x1c81ea...7e4857`; ethereum `0x1cc929...28238a`; ethereum `0x30aa4c...53d5e7`; ethereum `0x331c8b...77c8f4`; ethereum `0x351aa4...7e5ba1`; ethereum `0x4892aa...d021d1`; ethereum `0x4c25c2...51bce4`; ethereum `0x526580...9230e6`; ethereum `0x558bea...0a651c`; ethereum `0x5a61b1...66bc6e`; ethereum `0x5f7ceb...98c358`; ethereum `0x7148ad...bd7bd5`; ethereum `0x787e38...ccbbea`; ethereum `0x7c1f51...ea1643`; ethereum `0x7d51cb...cfe73c`; ethereum `0x80b5be...5e1993`; ethereum `0x8c1582...b9a467`; ethereum `0x9783be...bb7de6`; ethereum `0x9a1815...70d0ce`; ethereum `0x9d321e...526a64`; ethereum `0xa0d400...4ea6b9`; ethereum `0xa23e2b...aa7295`; ethereum `0xa8944a...fc72e6`; ethereum `0xb2a64a...dd4928`; ethereum `0xb6661f...e51a8e`; ethereum `0xca2da6...e582c0`; ethereum `0xd63332...15af88`; ethereum `0xd96da8...0ab5f6`; ethereum `0xea714f...1d6fee`; ethereum `0xf043f5...3e3e89`; ethereum `0xfd88b2...ae6bcf`; bsc [`0x002481...df0a5e`](./contracts/bsc-56/0x0024818043d04b1cc9685233d47ef7eea6df0a5e/); bsc `0x016f4d...00205d`; bsc `0x0230c0...0c6375`; bsc `0x03372f...a9deec`; bsc `0x075df6...06e326`; bsc `0x07e1ae...bc5d9f`; bsc `0x0a444c...92dc09`; bsc `0x0b5965...f91add`; bsc `0x1076a0...6e57c0`; bsc `0x154273...528ffa`; bsc `0x191280...31f9b2`; bsc `0x1c81ea...7e4857`; bsc `0x26fd39...de4b54`; bsc `0x297201...e21ea8`; bsc `0x2e6b79...dff496`; bsc `0x2e7b1d...dfcd85`; bsc `0x2f88c4...60cfcc`; bsc `0x332a0b...c8d776`; bsc `0x3456f1...380bb3`; bsc `0x38647f...cd5858`; bsc `0x3c4537...526351`; bsc `0x42d147...245776`; bsc `0x49c13d...59d7de`; bsc `0x4bb77e...4c3b8e`; bsc `0x4ea93e...58fcee`; bsc `0x4faece...7b79a1`; bsc `0x517744...6874e8`; bsc `0x53b35d...d93a44`; bsc `0x5a61b1...66bc6e`; bsc `0x60e3ef...2c95e8`; bsc `0x648cb2...95ec95`; bsc `0x66432c...827570`; bsc `0x6755fe...e3491f`; bsc `0x774636...16b3e6`; bsc `0x78fa4e...e2f10b`; bsc `0x7dbe4a...666a92`; bsc `0x7f013b...731633`; bsc `0x821d2e...1baaa2`; bsc `0x84071c...52e80f`; bsc `0x8424e2...76eb91`; bsc `0x85491e...d8f937`; bsc `0x87656c...71dd22`; bsc `0x897bf2...9e1441`; bsc `0x9a1815...70d0ce`; bsc `0x9b4149...560139`; bsc `0xa1a764...8ced42`; bsc `0xab8371...e8af0e`; bsc `0xad833e...781087`; bsc `0xb2c6f2...1f2c25`; bsc `0xb2df8c...9b7b80`; bsc `0xb60a7e...7fc584`; bsc `0xb801dc...d994ea`; bsc `0xbd0147...278709`; bsc `0xc01173...e46c25`; bsc `0xc0aafe...15237e`; bsc `0xc18e92...feaca6`; bsc `0xc8b602...f9dded`; bsc `0xcb3bfa...1e7efc`; bsc `0xccc613...c2feda`; bsc `0xd5d37f...e02f2b`; bsc `0xddd646...87d683`; bsc `0xde33ce...be0212`; bsc `0xea8e3d...6d8896`; bsc `0xecf226...c4e40f`; bsc `0xf0d077...1e57ea`; bsc `0xf37c6c...7503ef`; bsc `0xf9511b...774134`; bsc `0xfb2e7f...9185be`; bsc `0xfbd67f...7fb6ab`; bsc `0xfe48b5...d7b631`; bsc `0xfe59ca...91c41e`; sonic `0x0ccb6f...f985da`; sonic `0x143fda...588b98`; sonic `0x17aa0e...e0c1b7`; sonic `0x1c2031...b63bc1`; sonic `0x2329bf...e562ac`; sonic `0x276f2e...85d851`; sonic `0x3c3271...9b9a29`; sonic `0x3d678b...bf4d2f`; sonic `0x4384ca...6bcb0a`; sonic `0x5126ad...45b389`; sonic `0x577c75...68088b`; sonic `0x5e2ab9...ca8385`; sonic `0x641c0b...704b9e`; sonic `0x6aea35...4468a9`; sonic `0x6ddcc9...e0765d`; sonic `0x7dbe4a...666a92`; sonic `0x8b83a1...3ef134`; sonic `0x947a17...ec2b13`; sonic `0xa7da5a...885ba6`; sonic `0xad0e48...e1ed94`; sonic `0xbb1035...a701f6`; sonic `0xbd68cc...17fbf8`; sonic `0xc3f180...5b5b9f`; sonic `0xcb3bfa...1e7efc`; sonic `0xd18f63...008b84`; sonic `0xd30cb9...3ab6fa`; sonic `0xd7b09e...cfb95c`; sonic `0xde3cc2...996bc4`; sonic `0xdf4bcc...6cab53`; sonic `0xe2f68b...10b92e`; sonic `0xe32dd6...818c3b`; sonic `0xe4bfdf...28bc9d`; sonic `0xf690b3...cc6b3f`; sonic `0xf9d3b2...1c6af0`; sei `0x4faece...7b79a1`; sei `0xed2cb8...1f4102`; base `0x07e1ae...bc5d9f`; base `0x19e685...d53e05`; base `0x1d6d16...6f4786`; base `0x2c84d2...36ac66`; base `0x332a0b...c8d776`; base `0x407759...719f1a`; base `0x4ea93e...58fcee`; base `0x67fd19...eca203`; base `0x732712...f5dcbf`; base `0x774636...16b3e6`; base `0x84071c...52e80f`; base `0x85491e...d8f937`; base `0xb2763a...a6f03d`; base `0xc76aab...ea746b`; base `0xd43ab3...b07dd3`; base `0xe329c3...d94082`; mode `0x07e1ae...bc5d9f`; mode `0x1d6d16...6f4786`; mode `0x2c84d2...36ac66`; mode `0x332a0b...c8d776`; mode `0x3456f1...380bb3`; mode `0x407759...719f1a`; mode `0x4ea93e...58fcee`; mode `0x67fd19...eca203`; mode `0x732712...f5dcbf`; mode `0x774636...16b3e6`; mode `0x84071c...52e80f`; mode `0x85491e...d8f937`; mode `0xc0aafe...15237e`; mode `0xc76aab...ea746b`; mode `0xd43ab3...b07dd3`; mode `0xe329c3...d94082`; arbitrum `0x075df6...06e326`; arbitrum `0x1c81ea...7e4857`; arbitrum `0x410d2d...d38bd0`; arbitrum `0x5a61b1...66bc6e`; arbitrum `0x7148ad...bd7bd5`; arbitrum `0x821d2e...1baaa2`; arbitrum `0x9a1815...70d0ce`; arbitrum `0xa28b10...4e1dcf`; arbitrum `0xa46f33...77f0fe`; arbitrum `0xa68c3a...fb2249`; arbitrum `0xf96160...cf9371`; scroll `0x4ea93e...58fcee` | ⚠️ Unaudited |
| DelegationAwareAToken | token | mode | n/a | 2 deployments: mode [`0x00c461...ccf3ea`](./contracts/mode-34443/0x00c4613e32536cae23e88bf29c44a73a36ccf3ea/); mode `0xfc8f7a...c9e877` | ⚠️ Unaudited |
| EmissionManager | operational_periphery | mode | n/a | 2 deployments: mode [`0xa22de2...1890ab`](./contracts/mode-34443/0xa22de22cbfdd8699ed00e1ceef5f7e0a621890ab/); mode `0xb5250a...fbb57d` | ⚠️ Unaudited |
| EmptyContract | unknown | ethereum | n/a | 3 deployments: ethereum [`0x266f93...116cc3`](./contracts/ethereum-1/0x266f93db3771ab1459ef19cfe5cae37107116cc3/); bsc [`0x266f93...116cc3`](./contracts/bsc-56/0x266f93db3771ab1459ef19cfe5cae37107116cc3/); mantle [`0x266f93...116cc3`](./contracts/mantle-5000/0x266f93db3771ab1459ef19cfe5cae37107116cc3/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | bsc | n/a | [`0x2aa51a...9a8247`](./contracts/bsc-56/0x2aa51a1d4a549cf2fff0159f9d041cb50a9a8247/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | berachain | n/a | [`0x0c3616...8ceba5`](./contracts/berachain-80094/0x0c3616027b7d7ac8ba6fa2a1540a5e6a728ceba5/) | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | mode | n/a | 2 deployments: mode [`0x707b8c...2a6991`](./contracts/mode-34443/0x707b8ce7e7313fa3ecdbf458fa27241bb42a6991/); mode `0xb5ec04...293526` | ⚠️ Unaudited |
| LockedFBTC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3119a1...7b93b9`](./contracts/ethereum-1/0x3119a1ad5b63a000ab9ca3f2470611eb997b93b9/); ethereum `0x8dc0d5...89f39c` | ⚠️ Unaudited |
| LockedFBTC | unknown | bsc | n/a | 2 deployments: bsc [`0x3119a1...7b93b9`](./contracts/bsc-56/0x3119a1ad5b63a000ab9ca3f2470611eb997b93b9/); bsc `0x8dc0d5...89f39c` | ⚠️ Unaudited |
| LockedFBTC | unknown | mantle | n/a | 2 deployments: mantle [`0x3119a1...7b93b9`](./contracts/mantle-5000/0x3119a1ad5b63a000ab9ca3f2470611eb997b93b9/); mantle `0x8dc0d5...89f39c` | ⚠️ Unaudited |
| PoolAddressesProvider | core_logic | mode | n/a | 2 deployments: mode [`0x8ca0fe...de1784`](./contracts/mode-34443/0x8ca0fe5ba4e182ef11cb012f9a3a8ae9d0de1784/); mode `0xef83dd...e49af1` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | registry | ethereum | n/a | 9 deployments: ethereum [`0x3975be...4f5273`](./contracts/ethereum-1/0x3975be5e668b189b8ac9049b96a9d9561c4f5273/); ethereum `0xe00a3f...0facc0`; ethereum `0xff1247...fe9acc`; bsc `0x539520...8416c1`; bsc `0xb1c93b...0c0cc0`; mode `0x490f8f...75ca93`; mode `0xe3b01b...ef5dcc`; arbitrum `0xa2ddc0...34ee1a`; scroll `0xfbb77a...e90c70` | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | n/a | 4 deployments: bsc [`0x28350e...eb4700`](./contracts/bsc-56/0x28350e38f241d7f24106ce5eab1684d6ebeb4700/); bsc `0x373ab8...7a50f9`; sei `0x5c7163...6082a4`; sei `0xcde33b...218ebd` | ⚠️ Unaudited |
| ReservesSetupHelper | periphery | mode | n/a | 2 deployments: mode [`0x279600...6f2962`](./contracts/mode-34443/0x279600943897b64cd8e7e050c0c7ec66876f2962/); mode `0xdc041a...b5049e` | ⚠️ Unaudited |
| RewardsController | governance | mode | n/a | 2 deployments: mode [`0x4881fd...1bac0d`](./contracts/mode-34443/0x4881fd4d2d056745098d79b3ee2a45b31e1bac0d/); mode `0x95feaa...eb0dc4` | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x5a7931...c6757e`](./contracts/ethereum-1/0x5a79311083dc82abc2de1e5639673c876cc6757e/) | ⚠️ Unaudited |
| sAVL | unknown | bsc | n/a | 2 deployments: ethereum `0xdb8d77...b33b50`; bsc [`0x5e2a06...c0d300`](./contracts/bsc-56/0x5e2a06121b2cc7e5ac30bb2d5a128bfbb0c0d300/) | ⚠️ Unaudited |
| StableDebtToken | token | mode | n/a | 2 deployments: mode [`0xa3ed9f...4ce4a2`](./contracts/mode-34443/0xa3ed9fab560bcf127adabc793de68b241d4ce4a2/); mode `0xe35e20...e80605` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | 3 deployments: ethereum [`0x37c21d...feeda8`](./contracts/ethereum-1/0x37c21df558f7ba9401a56d9017fa047cbafeeda8/); bsc [`0x37c21d...feeda8`](./contracts/bsc-56/0x37c21df558f7ba9401a56d9017fa047cbafeeda8/); mantle [`0x37c21d...feeda8`](./contracts/mantle-5000/0x37c21df558f7ba9401a56d9017fa047cbafeeda8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7840fc...f333a1`](./contracts/ethereum-1/0x7840fca3acd12b96d7137d9b1f9434634bf333a1/); ethereum `0x88cd59...edc497` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | 2 deployments: ethereum [`0xf29723...20d659`](./contracts/ethereum-1/0xf297230fa5614545b427616148a74c888620d659/); ethereum `0xf613a5...2b5a3c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | [`0x713efc...5ddafb`](./contracts/bsc-56/0x713efc245745b370d4246759ed8a856c885ddafb/) | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | mode | n/a | 2 deployments: mode [`0x3f7281...c1c1b1`](./contracts/mode-34443/0x3f72812ffbe9cfd45a020c27d56a9e219ac1c1b1/); mode `0x6cab07...26029f` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | core_logic | sonic | n/a | 42 deployments: ethereum `0x0c57b0...91aa1f`; ethereum `0x154273...528ffa`; ethereum `0x358c2b...726336`; ethereum `0x8e2fe9...71dedd`; ethereum `0xd5d37f...e02f2b`; bsc `0x0c57b0...91aa1f`; bsc `0x12aaa8...d2bb65`; bsc `0x35b6c8...f22f8e`; bsc `0x385009...9c9c3c`; bsc `0x409392...86f28f`; bsc `0x5879b7...762ab3`; bsc `0x745956...a4052e`; bsc `0x89f047...ae98ce`; bsc `0x9bed9c...03cc37`; bsc `0x9d6341...066aa8`; bsc `0xa49824...74c636`; bsc `0xc88987...8be431`; bsc `0xea6460...44b937`; sonic [`0x00ad0e...f4100f`](./contracts/sonic-146/0x00ad0e3d7daba4092be35741ff1f92d571f4100f/); sonic `0x139b81...fa1684`; sonic `0x2bd254...c29242`; sonic `0x355b53...7060fa`; sonic `0x51b70b...4a81a8`; sonic `0x8812c8...ae55aa`; sonic `0x8c403d...fc3d46`; sonic `0x8e91bd...efe962`; sonic `0xaf0f03...05f72d`; sonic `0xb3aac7...6b2028`; sonic `0xb8ecf1...dfe6d3`; sonic `0xc4603b...fdb055`; sonic `0xcb0f74...5058c0`; sonic `0xf111b7...21398c`; sonic `0xf93957...68aa8b`; sei `0xe6ad9e...8010ea`; sei `0xf48582...867f8e`; base `0xd14da3...5ec61b`; base `0xe91d67...826e27`; mode `0xcf1177...7c8653`; mode `0xd14da3...5ec61b`; arbitrum `0x7d51cb...cfe73c`; arbitrum `0xe565d8...0767e1`; arbitrum `0xfe48b5...d7b631` | ⚠️ Unaudited |
| USDX | unknown | bsc | n/a | [`0xf3527e...a66cef`](./contracts/bsc-56/0xf3527ef8de265eaa3716fb312c12847bfba66cef/) | ⚠️ Unaudited |
| USDXRedeem | unknown | bsc | n/a | [`0x0eaf6f...d82f7b`](./contracts/bsc-56/0x0eaf6fe1aed8631114d1de78317982ce73d82f7b/) | ⚠️ Unaudited |
| USDXSales | unknown | bsc | n/a | [`0xb45c42...0a56d1`](./contracts/bsc-56/0xb45c42fbf8af8df5a1fa080a351e9b2f8e0a56d1/) | ⚠️ Unaudited |
| VariableDebtToken | token | mode | n/a | 2 deployments: mode [`0xb60a7e...7fc584`](./contracts/mode-34443/0xb60a7e2ef708da20787a2c659d473647607fc584/); mode `0xc01173...e46c25` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | mode | n/a | 2 deployments: mode [`0x9bed9c...03cc37`](./contracts/mode-34443/0x9bed9cf1cfb69f468f6f9121dd620c228203cc37/); mode `0xaddd62...160303` | ⚠️ Unaudited |
| WFBTC | unknown | bsc | n/a | 2 deployments: bsc [`0x8100f7...1981b4`](./contracts/bsc-56/0x8100f723e6bd50a6e3272169caff506da61981b4/); bsc `0xafb46b...bc7ea7` | ⚠️ Unaudited |
| WFBTC | unknown | sei | n/a | 2 deployments: sei [`0x248262...179f0c`](./contracts/sei-1329/0x24826290c8ea044d646530d325f7adbc6d179f0c/); sei `0x5fabd1...b6df56` | ⚠️ Unaudited |
| WFBTC | unknown | sei | n/a | 2 deployments: sei [`0x9d6341...066aa8`](./contracts/sei-1329/0x9d6341a6fed3e886d8be47aaba932ae4b6066aa8/); sei `0xe9ca67...877fee` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | mode | n/a | 5 deployments: bsc `0xebfd8d...5fe687`; sonic `0xee4cfd...284a17`; mode [`0x8ca7c6...38ffda`](./contracts/mode-34443/0x8ca7c600506a8394b68cce42e780b21ab038ffda/); mode `0xf6aa54...e5205d`; arbitrum `0xb2a64a...dd4928` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolManager | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x02fedc...d248f0`](./contracts/ethereum-1/0x02fedcff97942fe28e8936cdc3d7a480fdd248f0/); ethereum `0xeb13f6...d3c5ed`; mantle [`0x02fedc...d248f0`](./contracts/mantle-5000/0x02fedcff97942fe28e8936cdc3d7a480fdd248f0/); mantle `0xeb13f6...d3c5ed` | ✅ Audited (bytecode match) |
| USDa | unknown | mantle | n/a | 8 deployments: ethereum `0x0b4d6d...bd6316`; ethereum `0x8a60e4...17d9c2`; bsc `0x8a4ba6...7f0224`; bsc `0x935608...699894`; sonic `0xff1247...fe9acc`; mantle [`0x075df6...06e326`](./contracts/mantle-5000/0x075df695b8e7f4361fa7f8c1426c63f11b06e326/); mantle `0x2bdc20...34eb2e`; berachain `0xff1247...fe9acc` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (527)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LockedFBTC | unknown | sonic | n/a | `0x040c10...8b2ba5` | ❓ Unverified |
| Proxy (impl: 0x25db2bae7d6ced94e0cdc28a748ce7c21793eca3) | proxy | berachain | n/a | 2 deployments: berachain `0x0db262...2f8fc6`; berachain `0x25db2b...93eca3` | ❓ Unverified |
| Proxy (impl: 0x99026b750048619c7a2d54cdfc4c6524eeea0b99) | proxy | ethereum | n/a | 2 deployments: ethereum `0x79dac6...8427d3`; ethereum `0x99026b...ea0b99` | ❓ Unverified |
| Proxy (impl: 0xc5ebe22b413d12069a0062c3f6ed5f0fc3313497) | proxy | ethereum | n/a | 2 deployments: ethereum `0x0c5bd0...21252e`; ethereum `0xc5ebe2...313497` | ❓ Unverified |
| Proxy (impl: 0xcd97c67b101a1d8622c9ed55d1c16b6739c54b1a) | proxy | ethereum | n/a | 2 deployments: ethereum `0xc1a8e4...388e3a`; ethereum `0xcd97c6...c54b1a` | ❓ Unverified |
| Proxy (impl: 0xef657c3b5b5e10bc20787546b0e81e7ba2ec7234) | proxy | berachain | n/a | 2 deployments: berachain `0x02fedc...d248f0`; berachain `0xef657c...ec7234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04d041...ba4eea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a6914...711104` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b5965...f91add` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x0c0c35...4c9db2`; ethereum `0x58cc31...48cc0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0dbd62...cae4ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0dc0fc...9ef13f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fbb0e...17275e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x10d162...733a97`; ethereum `0x3f390d...808693` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x14aaed...2483cc`; ethereum `0xfabccd...893f05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x151464...31075c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16d0d4...bbdc9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x191280...31f9b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x1d6321...30456f`; ethereum `0x1e7dff...c39dfc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2093f1...8c2eb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x235b13...b6ba3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a85e8...51415a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bdc20...34eb2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x2ead68...ae3903`; ethereum `0x6cf44d...2c2a1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x361d78...9ca0a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a4ba0...1fc4d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x410d2d...d38bd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4422a7...2582b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x470f9c...25d72d`; ethereum `0xf72df7...7d373b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x522b3b...7859e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x535e53...3af910` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a4435...b89d44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ca296...f520f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d5c8a...5714a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f314b...9536ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x5f99a1...056559`; ethereum `0xeabad1...638186` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61361e...edf712` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x631da0...79cfd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ab5d5...219796` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d3808...02433c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6fd78d...6ed413` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c01e1...64543a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x802cb6...b6fe00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8abf81...604d19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e435d...c5e7e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91b212...dfc070` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9935e1...9c8333` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c9a26...71683b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa4430...e0de89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabfa72...0b81d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf0ba8...0587b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb95120...e51497` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba7752...72533f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc415c9...4d4848` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc48790...dba4b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6a02e...fff0d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9137f...58a042` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc5f87...0fa74c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccc613...c2feda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd282d7...0a7eac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd329f9...835ccf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf62f1...1f812d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe02825...805c67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe29d69...37a14a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe565d8...0767e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5ec81...da2cbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec3452...9de2d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef657c...ec7234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf37c6c...7503ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5cce1...834e8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03ac80...f5dd8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04d041...ba4eea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06b162...8c13f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a90d8...6d677b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0fa655...1e56da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0fb570...084ded` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10392e...1ce382` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1190bd...e09d08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13b954...e29128` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14743b...535ae7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x151464...31075c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1683f5...79b337` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16b9b8...d45121` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16d0d4...bbdc9b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x18cbe7...da53f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19b329...615520` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2062bd...3466c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x208fd5...f4aef3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20a2be...c1a321` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23bbdd...887263` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x255e48...f1f39d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28292e...3cb8cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2884f5...4cc273` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28cd18...e06aee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a85e8...51415a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2af92d...91add6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2bdc20...34eb2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ca77d...07a0fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d9526...9c6603` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f1ea9...09f9aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3016f2...289c3e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x327b32...ebb011` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3469b1...101e52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x354b8d...e31e23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35bcab...d0d664` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3bf334...ce0b5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d6c3b...07b766` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3db4fb...e39543` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e24be...90a29e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e2b69...94e8ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e3e76...52e073` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e54bb...fa6717` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f7281...c1c1b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4388d8...034916` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4422a7...2582b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x480d69...0eb2c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a4cea...6f4794` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a6ea6...317968` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c25c2...51bce4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ffb2a...bd8ef7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x522b3b...7859e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x523c66...e57e5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x52ec2c...957bd1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x535e53...3af910` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55bc4d...2113ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x57bf2a...af5a71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a4435...b89d44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ad428...5e7ab5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ca296...f520f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d5c8a...5714a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5dacf1...323c28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ecdc2...c40ec0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61361e...edf712` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x628239...986cae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62b1d1...4b348b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x631da0...79cfd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x639c9c...097499` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x646203...6677a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x668fc2...5059df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x672c13...ba6dae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x693d86...97ddf7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69bfcb...66067c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ab5d5...219796` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b2381...2de05e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ba7c6...4059c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ce969...3055b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6cf44d...2c2a1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ee42f...13debf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f8c5f...bd3713` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x722175...0d24fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x74e309...c7df98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76ff29...ebc6ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x77c44f...51c8ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x78f1c2...fcd1e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7a5ff6...0b1cb6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ba8ee...c8a5f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ca9c3...aea50b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d222a...c62635` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d558d...b11718` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f7fb5...99e70c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x809138...e991ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x82710d...4a2f90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84930a...d5c28a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84f5e5...d01238` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x867885...1d76a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a5cd8...a2c07d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8abf81...604d19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ef2d7...26de9a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f7788...ed543e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f8004...ed96ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90ea8c...bc929d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x912b42...37aa6a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x923ae0...16bbb7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x934ad5...b54cd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93cc9c...c89ed6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x952356...ba3dff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9543c3...4cb879` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x954522...da4420` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95ffbd...3e38c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9612ac...0299f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x979063...54e92b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9799fd...b265db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x986a4b...7b2039` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9915aa...94ec51` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9935e1...9c8333` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d7772...74892c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ea449...a8bdd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa50aa5...544e66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa63f69...acca2b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7f20c...d46b33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa82e83...ce5061` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa86d20...8ee1e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac8ab9...8cb8ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xae7645...59c9ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb14aa6...3d276d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb82fe9...6e08e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8a84f...8a172d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8f32a...0b312a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba7752...72533f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe7174...fcb05f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfe57a...c46f16` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2c991...387dfd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc415c9...4d4848` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc48790...dba4b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4b45b...43f285` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5ebe2...313497` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc65170...cc74f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6a02e...fff0d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6b830...ab058a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc757e4...26def7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc771c8...3f2137` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc61b4...14ce30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcdd4a9...b4cc33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd14da3...5ec61b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd192fb...a35946` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd282d7...0a7eac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd329f9...835ccf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd33431...79d9d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3e7aa...432cbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd55074...0597cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd575c5...2ccb94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6e336...418867` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde32a5...e1927e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde3428...7269be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe01fd6...9bca14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe02825...805c67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0d1d8...8fa6ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1fcdb...c9e844` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3c4ad...28c8be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4921a...4d4f17` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6c569...2d0ee4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6d86f...dd137f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8d7bd...bd5c4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9dd53...755e2a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb2c84...9ec779` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec3452...9de2d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec4a65...c65b41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeced50...c953dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee76f7...e1ee45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef657c...ec7234` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0e056...f470b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf1e0d2...39f3dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf36c62...9826c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf866d2...e5d272` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8a956...7b8313` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb55bd...2f4986` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfbb77a...e90c70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd0b88...254d86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfdcd3a...f6f474` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x006aa2...450484` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x00beb1...800d54` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x01030d...3f6f97` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x010a96...0b7d96` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x01ae56...189faa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x01b81a...fa5adb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | 2 deployments: sonic `0x02fedc...d248f0`; sonic `0xbe551a...3ddb6e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x034d9a...775401` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0abfb7...218fe5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0b233a...3e523e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0d7810...0b5300` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x10a8c6...9b991d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x123826...89754f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1792f7...c86009` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x17d9e7...b5264c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1a0291...068292` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1aaf9e...20fea8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1bfb6e...36d6d5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1c7c64...798f3f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1d8577...de646d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1ddc55...e54ba8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1e7906...f226c1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x20f6db...4802f4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x237c36...a0727f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x23c761...4ce0ed` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x242394...0b63d7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x275223...f4fe3d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x27fa65...760cb0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x27fea3...db6296` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x280a51...40b5eb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x286c9e...0db676` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x29d849...9a0bf6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x29d8f5...e9ca52` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x29e76c...b9cbe4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2a683c...2365da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2c4e3c...edc9cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | 2 deployments: sonic `0x2c60a5...75255d`; sonic `0xeb13f6...d3c5ed` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2e23e0...ab620d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2fbffb...4fedae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x310d06...fea699` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | 2 deployments: sonic `0x32631e...4751cc`; sonic `0x744766...7c7418` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x32ea22...45bf00` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x361d78...9ca0a0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x38d2ed...b5383e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3c0ffa...72ac75` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3cc19d...fe6067` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x443cf3...7ed5ed` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4497dd...88ebfc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x45f842...78dbef` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4a89d2...d58959` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4b0a82...13a7d5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4b9d58...7231d0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4cca03...599f20` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4e4084...3b1df7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5026a6...f0ed23` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x50a537...7e2064` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x50e834...34d96b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x51702d...f64a7c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x55825c...25e28e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x55b682...074a3d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x55b9c6...5d862d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x55bf28...97f6cb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x56552f...afc519` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x572e21...c30721` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x574745...270924` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5c78eb...7fcf50` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5c8d0c...7a8fa2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5f5130...b840af` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5f837c...28c52e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5f85a9...d1c2a2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5fea92...4a643a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x631da0...79cfd9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x656f38...4fd976` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x68b040...bdd2dc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x69a9ae...954d12` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6b4063...4cd37d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6b5c3d...f82d51` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6ce360...477982` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6da3f0...9fcfa9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6dd809...47b686` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x703a12...23c7ea` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x70e75d...933fc5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x713efc...5ddafb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x71565d...e44c59` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x769ab4...0f689d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x785767...82ba0b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x78a317...7495d8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x79cedd...b1f24f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7a2518...4b420c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7ab38f...5affca` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7b6f75...9674da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7d4eb8...3d68be` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7d558d...b11718` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7d5f42...b5525a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7d7d3d...216089` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8100f7...1981b4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8264e8...8c8e77` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8406ac...9801fd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8463bb...2cc308` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x85c315...807282` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x87adea...021be5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x88a1ef...a9a9e9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x898f3a...13302d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8a3766...70c506` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8ad33f...d2e962` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8b64b0...6608da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8be943...b75d88` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8d116e...d66783` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8f4d4f...5e3fff` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x910376...4dbc73` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x912b42...37aa6a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9273b6...7a2e84` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x93aa07...bf168e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x93d9c1...8410e3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x951e7e...fe689d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x954d92...c2a2b7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x959cc7...2aa84c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x99624a...072642` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9a3c2c...05fa79` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa0893d...1f57d6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa15c0c...9a50c3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa1977f...38deb6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa6751b...1c67c9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xacf480...c3d6f4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaf2054...07255f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xafb46b...bc7ea7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb16af8...673662` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb187f1...be1569` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb34968...456995` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb3d3ef...5fd5fd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb99efb...450bf2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbedc0d...9260a7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc0a25d...1171fd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc23b16...5863be` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc24bc2...373a38` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc2946a...d11817` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc2a439...d1dd1b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc2b1f7...7445ae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc5823a...f82609` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc5bcda...7ab2e3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcb404a...bfa933` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xccc39a...8d9190` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xce0460...4474f8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcfbdd5...16126e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd1b95a...57abad` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd7c5d9...2e7882` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd8c543...d93a1f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xda21ec...30f5f6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdb8cab...d1ca6e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdc826a...9b3f5e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdd9dc9...54284b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xddb3d4...9403c0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdf0291...aa8e0b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe0d1d8...8fa6ce` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe2bc6a...a24c09` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe5ec81...da2cbf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe67a8b...331f6a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe6ad9e...8010ea` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe6ba32...3a7e3c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe813de...f283e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe8b81d...abf083` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xea3b11...3bb0fd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xea6460...44b937` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xea8e3d...6d8896` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xeae13a...c30192` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xec0f60...c3ddc2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xef657c...ec7234` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xef6aac...537835` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf0d077...1e57ea` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf16bf1...d87001` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf1e0d2...39f3dd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf2c204...1b38cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf4517f...0b06ed` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf5aed8...96772e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf5f4ce...86a757` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf62240...e8f2f1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf6aa54...e5205d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf9af4b...440424` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfa128e...a350dc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfb7b42...4cc350` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfe52e2...262e56` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfea5fa...ca2b53` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x457158...80283d` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x809138...e991ab` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x882fca...68fb7b` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x93d9c1...8410e3` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xcb0f74...5058c0` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xdb8cab...d1ca6e` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xea8e3d...6d8896` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | 19 deployments: merlin `0x002481...df0a5e`; merlin `0x5f314b...9536ca`; merlin `0x623700...c4dda6`; merlin `0x6ab5d5...219796`; merlin `0x883cb2...405682`; merlin `0x898d0e...e4b234`; merlin `0x91b212...dfc070`; klaytn `0x100ac2...debc88`; klaytn `0x276c51...c486ea`; klaytn `0x2c4aeb...bd1966`; klaytn `0x43248d...2d81ec`; klaytn `0x4353b7...fe6d3b`; klaytn `0x45f842...78dbef`; klaytn `0x56552f...afc519`; klaytn `0x585e26...fae9b2`; klaytn `0xa34f1a...1fa20f`; klaytn `0xba8870...9a5e4a`; klaytn `0xdc3cf1...6a4ff6`; klaytn `0xddd3d4...daa076` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x867885...1d76a2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | 2 deployments: mantle `0x25db2b...93eca3`; mantle `0x8f7788...ed543e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x631da0...79cfd9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xa9be7e...6b6fca` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc757e4...26def7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd3e7aa...432cbd` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd6183c...dd8ced` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd9080e...acc909` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xef657c...ec7234` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1219f7...78ea84` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13b954...e29128` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x315577...67fdd6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x35bcab...d0d664` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3db4fb...e39543` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3fadcb...c78b95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x490f8f...75ca93` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x57bf2a...af5a71` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5dacf1...323c28` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69b0a9...98cfdd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x707b8c...2a6991` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x74dfd1...0cdff2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78f1c2...fcd1e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x79c69f...591ad5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d6363...bb6a2c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x82710d...4a2f90` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x84930a...d5c28a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3c5d5...cf60c6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaee883...f75b1d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb5ec04...293526` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb82fe9...6e08e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5e56b...b8a2ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdc041a...b5049e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe4d4da...0d6a1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf383a9...dfcb54` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6d959...200e56` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x100ac2...debc88` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x23bbdd...887263` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x28292e...3cb8cb` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5dacf1...323c28` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x74dfd1...0cdff2` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x82710d...4a2f90` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa3c5d5...cf60c6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa57089...81573b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa86d20...8ee1e0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa9d15c...8f7d50` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd5e56b...b8a2ab` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe91d67...826e27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b233a...3e523e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x100ac2...debc88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1792f7...c86009` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x242394...0b63d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x275223...f4fe3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2bdc20...34eb2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x322899...4027f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3697ad...49d155` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x42d147...245776` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4eca89...832527` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x535e53...3af910` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x55e225...4f9fc1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5a4435...b89d44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c8d0c...7a8fa2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d5c8a...5714a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f314b...9536ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x64d4d7...1b855c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ab5d5...219796` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x785767...82ba0b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x804ad8...c84643` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x867885...1d76a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87ed94...acab67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x904ce9...691496` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x916add...d7ab17` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x99c0fb...cd2e8e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc415c9...4d4848` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6a02e...fff0d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd329f9...835ccf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdb52dd...07a369` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xddb3d4...9403c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf0d077...1e57ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf48582...867f8e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x118e76...ea8a34` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x2840f9...8b304f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x631da0...79cfd9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | 2 deployments: berachain `0x69c1b1...e8efc3`; berachain `0x88065c...5aee8f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x86bdfe...c04415` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x9915aa...94ec51` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb24112...0e23bb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xd3e7aa...432cbd` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xba7752...72533f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Avalon-AVAF_audit_report_2024-06-11.pdf](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2024/Avalon-AVAF_audit_report_2024-06-11.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [Avalon_Finance-ORACLE_audit_report_2024-04-09.pdf](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2024/Avalon_Finance-ORACLE_audit_report_2024-04-09.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Terms and Conditions - Avalon Finance.docx.pdf](https://raw.githubusercontent.com/avalonfinancexyz/website-ts/bb035cea494cc098d4a26fe267d0b2aa2702406b/Terms%20and%20Conditions%20-%20Avalon%20Finance.docx.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/lcdCcIXgWo7dKoZEUxKp/uploads/1R2vC6XKZq24RHJcoH5R/Avalon Labs MiCAR White Paper.pdf](https://729569225-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FlcdCcIXgWo7dKoZEUxKp%2Fuploads%2F1R2vC6XKZq24RHJcoH5R%2FAvalon%20Labs%20MiCAR%20White%20Paper.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DeFi-Lending-audit-salus (GitHub directory)](https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Avalon-Finance_USDA_audit_report_2024-10-18.pdf](https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [AVL-audit-salus (GitHub directory)](https://github.com/avalonfinancexyz/AVL-audit-salus) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [USDa-audit-slowmist (GitHub directory)](https://github.com/avalonfinancexyz/USDa-audit-slowmist) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AVL-audit-slowmist (GitHub directory)](https://github.com/avalonfinancexyz/AVL-audit-slowmist) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [USDaMinter-audit-blocksec (GitHub directory)](https://github.com/avalonfinancexyz/USDaMinter-audit-blocksec) | BlockSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [USDaConvert-audit-slowmist (GitHub directory)](https://github.com/avalonfinancexyz/USDaConvert-audit-slowmist) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [USDa-audit-blocksec (GitHub directory)](https://github.com/avalonfinancexyz/USDa-audit-blocksec) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AVL-audit-blocksec (GitHub directory)](https://github.com/avalonfinancexyz/AVL-audit-blocksec) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [USDaConvert-audit-blocksec (GitHub directory)](https://github.com/avalonfinancexyz/USDaConvert-audit-blocksec) | BlockSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf](https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | contract_name | 4 | high |
| [Avalon Finance - SlowMist Audit Report.pdf](https://github.com/avalonfinancexyz/USDa-audit-slowmist/blob/main/Avalon%20Finance%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | contract_name | 2 | n/a |
| [blocksec_avalon_v1.0-signed.pdf](https://github.com/avalonfinancexyz/USDa-audit-blocksec/blob/main/blocksec_avalon_v1.0-signed.pdf) | BlockSec | Audit | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [blocksec_avalon_v1.1-signed.pdf](https://github.com/avalonfinancexyz/USDa-audit-blocksec/blob/main/blocksec_avalon_v1.1-signed.pdf) | BlockSec | Audit | 2024-10 | aging | Direct | contract_name | 3 | n/a |
| [blocksec_avalon_v1.3-signed.pdf](https://github.com/avalonfinancexyz/USDa-audit-blocksec/blob/main/blocksec_avalon_v1.3-signed.pdf) | BlockSec | Audit | 2024-10 | aging | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x7788a3...d87d92`](./contracts/bsc-56/0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92/) | StakedUSDX | token | $1,990,093.28 | Verified native implementation with $1,990,093.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9124b9...400330`](./contracts/bsc-56/0x9124b9b7517387937e07078db5a2620860400330/) | Avalon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e93f3...2b603f`](./contracts/bsc-56/0x1e93f31dab711d36b263d0b8ae3a6730792b603f/) | AvalonTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1c961a...69ec3b`](./contracts/bsc-56/0x1c961a18882661dc2aea540108a1165dfa69ec3b/) | AVLStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x002481...df0a5e`](./contracts/bsc-56/0x0024818043d04b1cc9685233d47ef7eea6df0a5e/) | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x266f93...116cc3`](./contracts/ethereum-1/0x266f93db3771ab1459ef19cfe5cae37107116cc3/) | EmptyContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5e2a06...c0d300`](./contracts/bsc-56/0x5e2a06121b2cc7e5ac30bb2d5a128bfbb0c0d300/) | sAVL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x00ad0e...f4100f`](./contracts/sonic-146/0x00ad0e3d7daba4092be35741ff1f92d571f4100f/) | UiPoolDataProviderV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf3527e...a66cef`](./contracts/bsc-56/0xf3527ef8de265eaa3716fb312c12847bfba66cef/) | USDX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0eaf6f...d82f7b`](./contracts/bsc-56/0x0eaf6fe1aed8631114d1de78317982ce73d82f7b/) | USDXRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb45c42...0a56d1`](./contracts/bsc-56/0xb45c42fbf8af8df5a1fa080a351e9b2f8e0a56d1/) | USDXSales | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 113 |
| upstream | 2 |
| standard_library | 12 |
| needs_review | 444 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=10, extraction_exact=4

Zero-match audit list:

- [12714] Avalon-AVAF_audit_report_2024-06-11.pdf
- [12715] Avalon_Finance-ORACLE_audit_report_2024-04-09.pdf
- [12716] Terms and Conditions - Avalon Finance.docx.pdf
- [12717] spaces/lcdCcIXgWo7dKoZEUxKp/uploads/1R2vC6XKZq24RHJcoH5R/Avalon Labs MiCAR White Paper.pdf
- [12718] DeFi-Lending-audit-salus (GitHub directory)
- [12720] AVL-audit-salus (GitHub directory)
- [12721] USDa-audit-slowmist (GitHub directory)
- [12722] AVL-audit-slowmist (GitHub directory)
- [12723] USDaMinter-audit-blocksec (GitHub directory)
- [12724] USDaConvert-audit-slowmist (GitHub directory)
- [12725] USDa-audit-blocksec (GitHub directory)
- [12726] AVL-audit-blocksec (GitHub directory)
- [12727] USDaConvert-audit-blocksec (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
