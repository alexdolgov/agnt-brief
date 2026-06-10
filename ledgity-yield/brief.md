# Agentic Audit Brief: Ledgity Yield

## Project Overview

- Project: Ledgity Yield (`ledgity-yield`)
- Website: [https://ledgity.finance/](https://ledgity.finance/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T20:59:06.907Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, base, ethereum, linea, sonic
- Contract surface: 107 unique implementations (335 raw deployments)
- DeFi Llama TVL: $3,188,691.69
- On-chain TVL (included contracts): $4,960,398.34
- TVL by chain: Base $4,872,769.37 | Ethereum $72,985.61 | Linea $8,174.64 | Arbitrum $6,391.49 | Sonic $77.25

## Project Description

Ledgity Yield is a multi-chain real-world-yield stablecoin protocol offering USDC/EURC vaults backed by institutional fixed-income and real-world asset strategies.

### Architecture

LTokens rely on Yield Vaults for yield generation and on Staking contracts for reward distribution. All families share a common governance and access control layer (GlobalAccessList, GlobalBlacklist, GlobalPause, GlobalOwner) that enforces security and administrative policies across chains.

## Audit Coverage Summary

- Verified implementations audited: 0/56 (0.0%)
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 1
- Unverified implementations: 51
- Unique implementations: 107
- Raw deployments: 335
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $4,960,398.34
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LedgityYieldVault | core_logic | arbitrum | 16 deployments: ethereum `0x209681...d44bc8`; ethereum `0x3c769d...ecb6d4`; ethereum `0x6ffc9a...21b411`; ethereum `0x8db842...bd3165`; ethereum `0x94ed3c...b03ed1`; base `0x76f1f8...983f00`; base `0x916f17...6a6e38`; base `0x9bb3be...c74361`; base `0xf9eece...a9b56f`; base `0xfaa1e3...33b134`; arbitrum [`0x0a1ba9...0df98a`](./contracts/arbitrum-42161/0x0a1ba9ff031dce2f0c228b572154fb367e0df98a/); arbitrum `0x283f35...e157ee`; arbitrum `0x5baf90...660933`; linea `0x209681...d44bc8`; linea `0x43b3c6...9e698f`; linea `0x57791d...b3b925` | ⚠️ Unaudited |
| LToken | token | arbitrum | 20 deployments: sonic `0x6cdb48...c3b2ca`; sonic `0xb05c62...e18da2`; sonic `0xc25030...c4a66b`; base `0x10ce08...2be5d4`; base `0x3c769d...ecb6d4`; base `0x77ce97...83708f`; base `0x94ed3c...b03ed1`; base `0x9cfbf9...ed0bce`; arbitrum [`0x0e7785...b7e9aa`](./contracts/arbitrum-42161/0x0e77850ac71e72f9c995a2f15b7cf1b528b7e9aa/); arbitrum `0x346245...98cd99`; arbitrum `0x41b0ee...cc70f0`; arbitrum `0x8584bc...d6aee3`; arbitrum `0xa3b0db...84a21f`; arbitrum `0xb5c691...f9e2de`; arbitrum `0xba4275...cbadfb`; arbitrum `0xd54d56...b77813`; arbitrum `0xeee2ca...39c331`; linea `0x4af215...b45b7a`; linea `0x768fa7...347d19`; linea `0xb644f3...11f667` | ⚠️ Unaudited |
| KrystalYieldVault | core_logic | ethereum | 2 deployments: ethereum [`0x06ff95...ab145b`](./contracts/ethereum-1/0x06ff95bd22769e4c7067b571d92918b066ab145b/); ethereum `0x7f9898...c59271` | ⚠️ Unaudited |
| LTokenSonic | token | sonic | 3 deployments: sonic [`0x88dc86...d6dc82`](./contracts/sonic-146/0x88dc8674339731a12a08624f455fd41fe2d6dc82/); sonic `0xd7ccab...e75e69`; sonic `0xedca8e...184cc6` | ⚠️ Unaudited |
| LedgityYieldVaultSonic | core_logic | sonic | 3 deployments: sonic [`0x22c32d...9ba165`](./contracts/sonic-146/0x22c32d67257d55c32d83c743e31da208d39ba165/); sonic `0x3afcd7...951f64`; sonic `0x65f75c...223001` | ⚠️ Unaudited |
| Address | unknown | base | [`0xf55dde...4bc429`](./contracts/base-8453/0xf55dde6c343cb893041fdcba386dbadffa4bc429/) | ⚠️ Unaudited |
| APRHistory | unknown | sonic | 6 deployments: sonic [`0x10ce08...2be5d4`](./contracts/sonic-146/0x10ce08736900e6e3a46dcd9f4ddb2b44b82be5d4/); sonic `0x8872b8...ed4bea`; sonic `0xe34603...737cbf`; base `0xe34603...737cbf`; arbitrum `0x3f0ff9...ad4ac5`; linea `0x3f0ff9...ad4ac5` | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | base | 5 deployments: ethereum `0xcc1bef...e4f6f0`; sonic `0xad4a00...b41028`; base [`0x70dee2...5b994f`](./contracts/base-8453/0x70dee24e016cc09d423490d3040759a71a5b994f/); arbitrum `0x7b25b4...23060b`; linea `0xe34603...737cbf` | ⚠️ Unaudited |
| BatchTokenSender | token | arbitrum | [`0x8aed5d...bd293e`](./contracts/arbitrum-42161/0x8aed5d3c5844d26671ae63be08ad2a6903bd293e/) | ⚠️ Unaudited |
| Bridge | operational_periphery | sonic | 4 deployments: sonic [`0x826c84...171d8e`](./contracts/sonic-146/0x826c8465b6e6a0ca6454cc15703b60101f171d8e/); sonic `0x9e70d1...2b56cd`; sonic `0xf06a64...2cd698`; sonic `0xf77146...a3e079` | ⚠️ Unaudited |
| CircleTokenAdapter | adapter | sonic | [`0xba2b70...b0e563`](./contracts/sonic-146/0xba2b70309db7ec370e68240cf1f05580cdb0e563/) | ⚠️ Unaudited |
| ConfigRegistry | registry | sonic | 2 deployments: sonic [`0x33e1cc...956b00`](./contracts/sonic-146/0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00/); sonic `0xffd7c8...b670f3` | ⚠️ Unaudited |
| CouncilMerkleDistributor | operational_periphery | base | 2 deployments: base [`0x236ae6...94b180`](./contracts/base-8453/0x236ae676cb5b107fa0cc545b181bc9166494b180/); base `0x99bc49...8c6c4b` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | sonic | 17 deployments: ethereum `0x2aedfb...6b5c5e`; sonic [`0x13e62b...56e955`](./contracts/sonic-146/0x13e62b8113590c46b273abe35bd86d4c7856e955/); sonic `0x4c0b5b...9e9ec7`; sonic `0x536e1c...6d9462`; sonic `0x613904...888b21`; sonic `0x65f235...7c3477`; sonic `0x68f3c6...6c2a63`; sonic `0xbea9da...18b05d`; base `0x833e36...44ee12`; base `0x891611...87d554`; base `0xa86d9b...f83e8e`; base `0xde1cd8...028370`; base `0xe78d6c...89529f`; arbitrum `0x154964...a1939a`; arbitrum `0x73b7ea...784a39`; arbitrum `0x98002b...f97137`; linea `0x154964...a1939a` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | 4 deployments: sonic `0xb070ad...47db87`; sonic `0xde95b3...9e09b3`; sonic `0xe715cb...b17e57`; base [`0x60a3e3...1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/) | ⚠️ Unaudited |
| GlobalAccessList | unknown | sonic | 13 deployments: ethereum `0x12d5c7...205c00`; ethereum `0x210482...ae1757`; ethereum `0x2aff77...6b5a59`; ethereum `0x43b3c6...9e698f`; ethereum `0x57791d...b3b925`; ethereum `0xf6cfb0...00d077`; sonic [`0x071c9d...4caf29`](./contracts/sonic-146/0x071c9d3ee88c1d22f931e87bc70da086de4caf29/); base `0x216648...3104e9`; base `0xac3433...26c67b`; arbitrum `0xb05c62...e18da2`; arbitrum `0xc25030...c4a66b`; linea `0x2aff77...6b5a59`; linea `0xf6cfb0...00d077` | ⚠️ Unaudited |
| GlobalBlacklist | unknown | sonic | 12 deployments: ethereum `0x1991a5...e34b50`; ethereum `0xfc7182...a2597e`; sonic [`0x06ff95...ab145b`](./contracts/sonic-146/0x06ff95bd22769e4c7067b571d92918b066ab145b/); sonic `0x210482...ae1757`; sonic `0x43b3c6...9e698f`; sonic `0x93aaa2...3a0d29`; base `0x210482...ae1757`; base `0x43b3c6...9e698f`; arbitrum `0x896e3b...4d3bca`; arbitrum `0xca55a2...9cf350`; linea `0x896e3b...4d3bca`; linea `0xca55a2...9cf350` | ⚠️ Unaudited |
| GlobalBlacklistSonic | unknown | sonic | 2 deployments: sonic [`0x61097f...7e39e0`](./contracts/sonic-146/0x61097ff065f498a2e4f6006c6a6c506bd17e39e0/); sonic `0xcafa29...fcc37e` | ⚠️ Unaudited |
| GlobalOwner | unknown | sonic | 12 deployments: ethereum `0x42bccb...7659fc`; ethereum `0x730c21...824900`; sonic [`0x2aff77...6b5a59`](./contracts/sonic-146/0x2aff7737dd64390f18e76e39c977b6b0736b5a59/); sonic `0xeb163b...c6d108`; sonic `0xf2663b...d93649`; sonic `0xf6cfb0...00d077`; base [`0x2aff77...6b5a59`](./contracts/base-8453/0x2aff7737dd64390f18e76e39c977b6b0736b5a59/); base `0xf6cfb0...00d077`; arbitrum `0x36811e...2dc05f`; arbitrum `0xe4af45...9f2462`; linea `0x36811e...2dc05f`; linea `0xe4af45...9f2462` | ⚠️ Unaudited |
| GlobalOwnerSonic | unknown | sonic | 2 deployments: sonic [`0x8ce2c4...1e9f5e`](./contracts/sonic-146/0x8ce2c4dadfda726a21b9f0f7064170ced31e9f5e/); sonic `0xbbb6f6...450011` | ⚠️ Unaudited |
| GlobalPause | unknown | sonic | 12 deployments: ethereum `0x6f6eb7...d46e8e`; ethereum `0xc27eec...8a8c0b`; sonic [`0x12d5c7...205c00`](./contracts/sonic-146/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/); sonic `0x57791d...b3b925`; sonic `0x7f9898...c59271`; sonic `0xa87d32...3dba6f`; base [`0x12d5c7...205c00`](./contracts/base-8453/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/); base `0x57791d...b3b925`; arbitrum `0xd4568d...552ddd`; arbitrum `0xd4d4c6...bdd4db`; linea `0xd4568d...552ddd`; linea `0xd4d4c6...bdd4db` | ⚠️ Unaudited |
| GlobalPauseSonic | unknown | sonic | 2 deployments: sonic [`0x18fe72...8f150c`](./contracts/sonic-146/0x18fe72e5ef539284edac573ecf9ce062788f150c/); sonic `0x8925a8...4a4e1b` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | 2 deployments: base [`0x972c17...809053`](./contracts/base-8453/0x972c17d0ada071db4a0395505dd3ad0a80809053/); base `0xf25a51...f491c3` | ⚠️ Unaudited |
| LDY | unknown | base | 6 deployments: ethereum `0x482df7...ddfdbc`; sonic `0x88d5dc...c0bb5b`; sonic `0x8db842...bd3165`; sonic `0x9cfbf9...ed0bce`; base [`0x055d20...dd8a13`](./contracts/base-8453/0x055d20a70efd45ab839ae1a39603d0cfdbdd8a13/); arbitrum `0x999faf...0d07e1` | ⚠️ Unaudited |
| LDYStaking | unknown | arbitrum | 14 deployments: ethereum `0xb56b28...2750ce`; sonic `0x53909d...430940`; sonic `0x77ce97...83708f`; sonic `0x891611...87d554`; sonic `0x94ed3c...b03ed1`; base `0x8db842...bd3165`; arbitrum [`0x06f54b...660ab4`](./contracts/arbitrum-42161/0x06f54b7f27eec56616b951598baa3b84d7660ab4/); arbitrum `0x0dff38...1ead61`; arbitrum `0x4e80be...be2d02`; arbitrum `0x4ef075...a166ab`; arbitrum `0x67efae...dc3e47`; arbitrum `0xd42b10...2c4e53`; linea [`0x06f54b...660ab4`](./contracts/linea-59144/0x06f54b7f27eec56616b951598baa3b84d7660ab4/); linea `0x627ff3...5d89d1` | ⚠️ Unaudited |
| LDYStakingSonic | unknown | sonic | 2 deployments: sonic [`0x51231e...9e05ea`](./contracts/sonic-146/0x51231eb81d7c63c39ca1c4fc5801ed7def9e05ea/); sonic `0xbee6eb...35a87f` | ⚠️ Unaudited |
| LedgityDataProvider | unknown | linea | 6 deployments: ethereum `0xe34603...737cbf`; sonic `0xac5da8...72ea0d`; base `0xab4655...aac126`; base `0xda106c...818a39`; arbitrum `0x6cdb48...c3b2ca`; linea [`0x12d5c7...205c00`](./contracts/linea-59144/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/) | ⚠️ Unaudited |
| LeverageFiller | unknown | sonic | 2 deployments: sonic [`0x053714...83f16a`](./contracts/sonic-146/0x053714a436ea716e14b3430f2ee8e2488c83f16a/); sonic `0xfe4a47...b31e7d` | ⚠️ Unaudited |
| LongTailIRM | unknown | sonic | [`0x12f407...10305a`](./contracts/sonic-146/0x12f407bfdbbe56ab19ecd389992f0f408810305a/) | ⚠️ Unaudited |
| LTokenSignaler | token | sonic | 16 deployments: sonic [`0x0a1ba9...0df98a`](./contracts/sonic-146/0x0a1ba9ff031dce2f0c228b572154fb367e0df98a/); sonic `0x283f35...e157ee`; sonic `0x4eec09...2fe877`; sonic `0x902982...f75144`; base `0x4eec09...2fe877`; base `0xcc1bef...e4f6f0`; arbitrum `0x3352b0...844398`; arbitrum `0x5bffc5...09985f`; arbitrum `0x627ff3...5d89d1`; arbitrum `0xd723df...dbca1d`; arbitrum `0xe8a6c4...08e806`; arbitrum `0xf97dfc...4bbaf4`; linea `0x5bffc5...09985f`; linea `0xba4275...cbadfb`; linea `0xe8a6c4...08e806`; linea `0xeee2ca...39c331` | ⚠️ Unaudited |
| LTokenSignalerSonic | token | sonic | 2 deployments: sonic [`0x5111c3...565544`](./contracts/sonic-146/0x5111c350e64692d914ae496166d54dfc0f565544/); sonic `0xf96af1...60a610` | ⚠️ Unaudited |
| MajorIRM | unknown | sonic | [`0x18fad5...5505fa`](./contracts/sonic-146/0x18fad5b72113497e1c92570b6f517328d05505fa/) | ⚠️ Unaudited |
| MasterMinter | unknown | base | 5 deployments: sonic `0xad9ed0...570393`; sonic `0xafcb4b...2002d0`; sonic `0xbe9f04...63b954`; sonic `0xc787a9...4f8be1`; base [`0x114b64...68726e`](./contracts/base-8453/0x114b64a8bf7bf0ab2a8a64a3e348307bd568726e/) | ⚠️ Unaudited |
| MessageBus | operational_periphery | sonic | 2 deployments: sonic [`0x63c379...f8c654`](./contracts/sonic-146/0x63c379522f8e56e4af9683fbcf53ee1093f8c654/); sonic `0xa71610...955006` | ⚠️ Unaudited |
| MPTProofVerifier | periphery | sonic | 2 deployments: sonic [`0x838e5d...5f8c3c`](./contracts/sonic-146/0x838e5d1d78d634fc43430dbd5ebb9319cf5f8c3c/); sonic `0xa13fc0...4da6d0` | ⚠️ Unaudited |
| OracleRouterChainlink | operational_periphery | sonic | [`0xfb0497...5a32e8`](./contracts/sonic-146/0xfb04979bda6546f114afcff2a78d35446d5a32e8/) | ⚠️ Unaudited |
| PositionsManager | governance | sonic | 2 deployments: sonic [`0x31b57e...749a4b`](./contracts/sonic-146/0x31b57e9dadc3227400bf1742fc9692ebb3749a4b/); sonic `0x31b68b...ef0303` | ⚠️ Unaudited |
| PreMining | unknown | arbitrum | 2 deployments: arbitrum [`0x9d7aed...5aa06c`](./contracts/arbitrum-42161/0x9d7aedefe90b880c5a9bed4fcbd3fad0ea5aa06c/); linea `0xd54d56...b77813` | ⚠️ Unaudited |
| PrizeToken | token | sonic | 2 deployments: sonic [`0x40dcf9...d267e3`](./contracts/sonic-146/0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3/); sonic `0x78d976...d94c69` | ⚠️ Unaudited |
| RfqEngine | unknown | sonic | [`0x201169...13e95b`](./contracts/sonic-146/0x20116919299625b1b3e474d5a594a5b4ed13e95b/) | ⚠️ Unaudited |
| SafeProxy | unknown | base | [`0xe7616e...42acac`](./contracts/base-8453/0xe7616e98d2506e571e8f6e38e7bfd0b55642acac/) | ⚠️ Unaudited |
| SignatureChecker | unknown | sonic | 2 deployments: sonic [`0xb4a197...2dd7cf`](./contracts/sonic-146/0xb4a197efc9f11b460e11ea7a819eeb2c902dd7cf/); sonic `0xb90f6a...b502fe` | ⚠️ Unaudited |
| StableIRM | unknown | sonic | [`0x4bd77b...edefd5`](./contracts/sonic-146/0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5/) | ⚠️ Unaudited |
| StakingPositions | unknown | base | 16 deployments: ethereum `0x4eec09...2fe877`; ethereum `0x902982...f75144`; ethereum `0xeb163b...c6d108`; ethereum `0xf2663b...d93649`; base [`0x0fcfdf...2d6d88`](./contracts/base-8453/0x0fcfdf9b6572116fa662a5cf8a074b51eb2d6d88/); base `0x4caee6...28fd2a`; base `0x54b36d...ef79ea`; base `0x7ce995...6f577b`; base `0x97ca5d...d379d6`; arbitrum `0x6e8361...eafd5b`; arbitrum `0x883108...2b1df5`; arbitrum `0xea7c3f...73982d`; linea `0x588eb8...287068`; linea `0x891611...87d554`; linea `0x8db842...bd3165`; linea `0xcc1bef...e4f6f0` | ⚠️ Unaudited |
| StakingPositionsSonic | unknown | sonic | 2 deployments: sonic [`0x655c94...767cc8`](./contracts/sonic-146/0x655c94df33d39a126f9260f4b795b51336767cc8/); sonic `0xd1ec72...c5c306` | ⚠️ Unaudited |
| StakingRewardsDistributor | operational_periphery | base | 15 deployments: ethereum `0x37eef1...a6c2bd`; ethereum `0xa87d32...3dba6f`; ethereum `0xd8fefe...35b6bf`; base [`0x2ab82b...c217c1`](./contracts/base-8453/0x2ab82b69ab88e6174425234c4da50b2edfc217c1/); base `0x4340b9...307528`; base `0x6ebbff...fd37c2`; base `0x7143e7...128d4f`; base `0xb5f875...f9a384`; arbitrum `0x2ed903...40fd7e`; arbitrum `0x841a13...e6c300`; arbitrum `0xeb4b05...6f7483`; linea `0x3c769d...ecb6d4`; linea `0x4eec09...2fe877`; linea `0x902982...f75144`; linea `0x94ed3c...b03ed1` | ⚠️ Unaudited |
| StakingRewardsDistributorSonic | operational_periphery | sonic | 2 deployments: sonic [`0x3bcb3c...b40e4c`](./contracts/sonic-146/0x3bcb3c2992a1a4c2c97010c6d6789f6abcb40e4c/); sonic `0xb91985...68640e` | ⚠️ Unaudited |
| StateOracle | operational_periphery | sonic | 2 deployments: sonic [`0x6494ce...66d684`](./contracts/sonic-146/0x6494ce4a3f9b3b765fbd07aa7ec2d3108e66d684/); sonic `0xad9f40...e150b9` | ⚠️ Unaudited |
| Storage | unknown | sonic | [`0x4fec0c...135d73`](./contracts/sonic-146/0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73/) | ⚠️ Unaudited |
| TicTacToe | unknown | sonic | 2 deployments: sonic [`0x882171...1dcb47`](./contracts/sonic-146/0x88217164e88201227c76a888d18ba507cd1dcb47/); sonic `0xaa0944...e02c14` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sonic | 5 deployments: sonic [`0x62a572...dcd70a`](./contracts/sonic-146/0x62a572120530a6cbbcafb7c6fb8c94fbdedcd70a/); sonic `0x89c312...11df5e`; sonic `0xc1883f...992748`; sonic `0xd89992...4de721`; sonic `0xfb7040...a993f8` | ⚠️ Unaudited |
| TSTTOKEN | token | arbitrum | [`0xc1f003...853009`](./contracts/arbitrum-42161/0xc1f003474705e229ed8ad5c9aee017bbda853009/) | ⚠️ Unaudited |
| UpdateManager | governance | sonic | 3 deployments: sonic [`0x5d3850...d3cf2b`](./contracts/sonic-146/0x5d3850377c22dd8b154161d07102b60ef4d3cf2b/); sonic `0xa432cf...20187a`; sonic `0xb63f4e...d5f0d3` | ⚠️ Unaudited |
| WrappedLToken | token | sonic | 13 deployments: sonic [`0x058a72...cdbdf1`](./contracts/sonic-146/0x058a726cca0a6235370262a802ea126a2ecdbdf1/); sonic `0x0b8133...0feaa5`; sonic `0x209681...d44bc8`; sonic `0x2ed903...40fd7e`; sonic `0x5baf90...660933`; sonic `0x5bb664...63c0b0`; sonic `0x6e8361...eafd5b`; sonic `0x6ffc9a...21b411`; sonic `0x841a13...e6c300`; sonic `0x883108...2b1df5`; sonic `0xa1f155...0d4870`; sonic `0xcc1bef...e4f6f0`; sonic `0xea7c3f...73982d` | ⚠️ Unaudited |
| WrappedLTokenSonic | token | sonic | 4 deployments: sonic [`0x2e6f1f...977045`](./contracts/sonic-146/0x2e6f1f4f364c8d115674fde3f1cce409d5977045/); sonic `0xbb86ba...331c01`; sonic `0xed758d...f68262`; sonic `0xff95be...5dd49e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TokenPairs | registry | sonic | 3 deployments: sonic [`0x1109f1...5c81db`](./contracts/sonic-146/0x1109f1a00fbe5c44555a543540bb2db2c15c81db/); sonic `0x36535d...f9cd43`; sonic `0x858657...8ce686` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (51)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x588eb8...287068` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb05c62...e18da2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x0ae71c...26f17c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x352866...b4c0e7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x3665a6...462a21` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x3c769d...ecb6d4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x3faf5b...5a4876` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x588eb8...287068` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5f9857...d9f3e8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x6697ee...e0e324` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x7779f5...313a11` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x78f6a7...7bb2e9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x910afa...d3caa5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x9522ba...d887c8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x9943af...b4e674` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xaecac5...3ca4b4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc57afd...56e6ce` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe8500a...17cd00` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xe85df5...7ef797` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x034b03...03e442` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x06ff95...ab145b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0ef8fc...e5d89f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1c72e6...d9fb4d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3c958e...ca7a15` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3ce42b...d295dd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5b013e...fa3ed2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x859b35...13a853` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8b72ec...bf5cb4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x93aaa2...3a0d29` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x95443a...bc79f1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xaa467e...9dcade` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd70b76...4fbab0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xeecc4c...48acf2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x061b0b...aa49a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x209681...d44bc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3308b5...9c14c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4eec09...2fe877` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x530b6b...ab2361` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x588eb8...287068` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x768fa7...347d19` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8b39bb...73a381` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x902982...f75144` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa2b648...78a64b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa3114c...b7dcc4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xadf8d7...49e683` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb644f3...11f667` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcc1bef...e4f6f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeb163b...c6d108` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf1f9e5...a6f257` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x210482...ae1757` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xadf8d7...49e683` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x0a1ba9...0df98a`](./contracts/arbitrum-42161/0x0a1ba9ff031dce2f0c228b572154fb367e0df98a/) | LedgityYieldVault | core_logic | $3,107,494.74 | Verified native implementation with $3,107,494.74 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e7785...b7e9aa`](./contracts/arbitrum-42161/0x0e77850ac71e72f9c995a2f15b7cf1b528b7e9aa/) | LToken | token | $1,837,520.82 | Verified native implementation with $1,837,520.82 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x22c32d...9ba165`](./contracts/sonic-146/0x22c32d67257d55c32d83c743e31da208d39ba165/) | LedgityYieldVaultSonic | core_logic | $6.54 | Verified native implementation with $6.54 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x10ce08...2be5d4`](./contracts/sonic-146/0x10ce08736900e6e3a46dcd9f4ddb2b44b82be5d4/) | APRHistory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x70dee2...5b994f`](./contracts/base-8453/0x70dee24e016cc09d423490d3040759a71a5b994f/) | BalanceLogicLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8aed5d...bd293e`](./contracts/arbitrum-42161/0x8aed5d3c5844d26671ae63be08ad2a6903bd293e/) | BatchTokenSender | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xba2b70...b0e563`](./contracts/sonic-146/0xba2b70309db7ec370e68240cf1f05580cdb0e563/) | CircleTokenAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x33e1cc...956b00`](./contracts/sonic-146/0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00/) | ConfigRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x60a3e3...1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x071c9d...4caf29`](./contracts/sonic-146/0x071c9d3ee88c1d22f931e87bc70da086de4caf29/) | GlobalAccessList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x06ff95...ab145b`](./contracts/sonic-146/0x06ff95bd22769e4c7067b571d92918b066ab145b/) | GlobalBlacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x61097f...7e39e0`](./contracts/sonic-146/0x61097ff065f498a2e4f6006c6a6c506bd17e39e0/) | GlobalBlacklistSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8ce2c4...1e9f5e`](./contracts/sonic-146/0x8ce2c4dadfda726a21b9f0f7064170ced31e9f5e/) | GlobalOwnerSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x12d5c7...205c00`](./contracts/sonic-146/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/) | GlobalPause | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x18fe72...8f150c`](./contracts/sonic-146/0x18fe72e5ef539284edac573ecf9ce062788f150c/) | GlobalPauseSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x055d20...dd8a13`](./contracts/base-8453/0x055d20a70efd45ab839ae1a39603d0cfdbdd8a13/) | LDY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06f54b...660ab4`](./contracts/arbitrum-42161/0x06f54b7f27eec56616b951598baa3b84d7660ab4/) | LDYStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x12d5c7...205c00`](./contracts/linea-59144/0x12d5c708ae229cae0f6c712cb8feb1c914205c00/) | LedgityDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x12f407...10305a`](./contracts/sonic-146/0x12f407bfdbbe56ab19ecd389992f0f408810305a/) | LongTailIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0a1ba9...0df98a`](./contracts/sonic-146/0x0a1ba9ff031dce2f0c228b572154fb367e0df98a/) | LTokenSignaler | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5111c3...565544`](./contracts/sonic-146/0x5111c350e64692d914ae496166d54dfc0f565544/) | LTokenSignalerSonic | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x18fad5...5505fa`](./contracts/sonic-146/0x18fad5b72113497e1c92570b6f517328d05505fa/) | MajorIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x114b64...68726e`](./contracts/base-8453/0x114b64a8bf7bf0ab2a8a64a3e348307bd568726e/) | MasterMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x838e5d...5f8c3c`](./contracts/sonic-146/0x838e5d1d78d634fc43430dbd5ebb9319cf5f8c3c/) | MPTProofVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x31b57e...749a4b`](./contracts/sonic-146/0x31b57e9dadc3227400bf1742fc9692ebb3749a4b/) | PositionsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9d7aed...5aa06c`](./contracts/arbitrum-42161/0x9d7aedefe90b880c5a9bed4fcbd3fad0ea5aa06c/) | PreMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x40dcf9...d267e3`](./contracts/sonic-146/0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3/) | PrizeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x201169...13e95b`](./contracts/sonic-146/0x20116919299625b1b3e474d5a594a5b4ed13e95b/) | RfqEngine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4bd77b...edefd5`](./contracts/sonic-146/0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5/) | StableIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x655c94...767cc8`](./contracts/sonic-146/0x655c94df33d39a126f9260f4b795b51336767cc8/) | StakingPositionsSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3bcb3c...b40e4c`](./contracts/sonic-146/0x3bcb3c2992a1a4c2c97010c6d6789f6abcb40e4c/) | StakingRewardsDistributorSonic | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4fec0c...135d73`](./contracts/sonic-146/0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73/) | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x882171...1dcb47`](./contracts/sonic-146/0x88217164e88201227c76a888d18ba507cd1dcb47/) | TicTacToe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc1f003...853009`](./contracts/arbitrum-42161/0xc1f003474705e229ed8ad5c9aee017bbda853009/) | TSTTOKEN | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2e6f1f...977045`](./contracts/sonic-146/0x2e6f1f4f364c8d115674fde3f1cce409d5977045/) | WrappedLTokenSonic | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 64 |
| upstream | 2 |
| standard_library | 10 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
