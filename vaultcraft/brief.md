# Agentic Audit Brief: VaultCraft

## Project Overview

- Project: VaultCraft (`vaultcraft`)
- Website: [https://vaultcraft.io/](https://vaultcraft.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.318Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: arbitrum, ethereum, optimism, polygon
- Contract surface: 220 unique implementations (238 raw deployments)
- DeFi Llama TVL: $542,645.98
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 20 project-authored contract(s) across 4 chain(s); 5 ERC4626 vaults, 8 ERC20 tokens, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 8 functional families. Its contracts share 7 common project-authored base contract(s) (owned, erc4626upgradeable, erc20upgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 238; live-surface contracts included: 238 (37 live, 201 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/18 (22.2%)
- Deployed-live implementations: 19 of 220 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/19
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 201
- Unique implementations: 220
- Raw deployments: 238
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 21.1% | 2023-04 |
| 0xRuhum | Tier 2 | 1 | 5.3% | 2023-04 |
| G0 Group | Tier 2 | 1 | 5.3% | 2022-06 |
| yAudit | Tier 2 | 1 | 5.3% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeRecipientProxy | operational_periphery | ethereum | n/a | [`0x74bb39...1afe3f`](./contracts/ethereum-1/0x74bb390786072ea1329f270ca6c0058b2d1afe3f/) | ✅ Audited |
| GenericVaultAdapter | adapter | arbitrum | n/a | [`0xd6dfe8...8cd828`](./contracts/arbitrum-42161/0xd6dfe8b986e89ce841331f833ba82dc12b8cd828/) | ✅ Audited |
| Vault | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x434e7e...c7ae02`](./contracts/ethereum-1/0x434e7ea9bc77c93c3f4680862281603338c7ae02/); ethereum `0xa48d49...9d9658`; optimism `0x4e93cc...46c412`; arbitrum `0xc9ed56...3c284c`; arbitrum `0xd11a31...dabf72`; arbitrum `0xd3a179...d538a4` | ✅ Audited |
| VaultRouter | adapter | optimism | n/a | 3 deployments: ethereum `0x4995f3...a243cd`; optimism [`0x382884...002919`](./contracts/optimism-10/0x3828845f4d7212b6a0dc3d67482aff4544002919/); arbitrum `0x48943f...1f777b` | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0x770f4e...99f9b6`](./contracts/ethereum-1/0x770f4e38615e24e9e438b30cfabf411ec499f9b6/); ethereum `0xb85e0d...21f5da` | ⚠️ Unaudited |
| LockVault | core_logic | ethereum | n/a | [`0xe5d383...367697`](./contracts/ethereum-1/0xe5d383fc43f6c370ddd3975cf9e363ad42367697/) | ⚠️ Unaudited |
| MiniMeToken | token | ethereum | n/a | [`0xd0cd46...8a78c4`](./contracts/ethereum-1/0xd0cd466b34a24fcb2f87676278af2005ca8a78c4/) | ⚠️ Unaudited |
| MultiStrategyVault | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0xcede40...138b93`](./contracts/arbitrum-42161/0xcede40b40f7af69f5aa6b12d75fd5ea9ce138b93/); arbitrum `0xe1543d...8f20f8` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | optimism | n/a | [`0xd41d34...a1be45`](./contracts/optimism-10/0xd41d34d6b50785fdc025cad971fe940b8aa1be45/) | ⚠️ Unaudited |
| OptionsToken | token | ethereum | n/a | [`0xafa52e...7c0ca2`](./contracts/ethereum-1/0xafa52e3860b4371ab9d8f08e801e9ea1027c0ca2/) | ⚠️ Unaudited |
| OracleVault | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x11eaa7...5366c8`](./contracts/ethereum-1/0x11eaa7a46afe1023f47040691071e174125366c8/); ethereum `0x54c551...9b7ccc`; ethereum `0x7b42e0...71498c`; ethereum `0xcf9273...f08edb`; ethereum `0xd13f3d...34c3ea`; ethereum `0xdb06a9...cb5554`; ethereum `0xdb435e...632a2a`; ethereum `0xe66f1a...aa4cbd` | ⚠️ Unaudited |
| PORExchangeRateFeed | unknown | ethereum | n/a | [`0x9d7d27...3dc3f3`](./contracts/ethereum-1/0x9d7d271ce727252053748f3c3adab5e7c33dc3f3/) | ⚠️ Unaudited |
| StakingVaultFactory | registry | arbitrum | n/a | [`0xdd0d13...a6d23a`](./contracts/arbitrum-42161/0xdd0d135b5b52b7edd90a83d4a4112c55a1a6d23a/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | 2 deployments: arbitrum [`0x59a696...94a230`](./contracts/arbitrum-42161/0x59a696bf34eae5ad8fd472020e3bed410694a230/); arbitrum `0x68ead5...b885be` | ⚠️ Unaudited |
| StringPoRAddressList | unknown | arbitrum | n/a | [`0x6b2091...5a3219`](./contracts/arbitrum-42161/0x6b2091c4eccb16756c2ade0a298fcc75c25a3219/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0xc5b57e...7ee50c`](./contracts/polygon-137/0xc5b57e9a1e7914fda753a88f24e5703e617ee50c/) | ⚠️ Unaudited |
| Voting Escrow | operational_periphery | ethereum | n/a | [`0x0ab4bc...819a1a`](./contracts/ethereum-1/0x0ab4bc35ef33089b9082ca7bb8657d7c4e819a1a/) | ⚠️ Unaudited |
| WeightedPool2Tokens | core_logic | ethereum | n/a | [`0x577a7f...3f1920`](./contracts/ethereum-1/0x577a7f7ee659aa14dc16fd384b3f8078e23f1920/) | ⚠️ Unaudited |
| Whitelist | unknown | ethereum | n/a | 2 deployments: ethereum [`0x788dbb...082a12`](./contracts/ethereum-1/0x788dbb1888a50e97837b9d06fd70db107b082a12/); ethereum `0xf8207f...12f04d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (201)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x007318...412864` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x008a18...efecc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x032f4d...3d192d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0989b0...36988d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0dd50a...050649` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0dfb88...974dc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x121936...6d90a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12c170...9d39c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x153515...97f4ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x194330...b72ab6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a48e2...2c1cae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1aaafe...b08d60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c9432...870f88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22b546...f29869` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2529a6...d2e6e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x268aef...09e6ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d5a6b...ceec8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31ccea...aaaac2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31f687...d62f5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x377dfc...067e01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b51bb...5aed49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d9dd8...dcc4a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e5936...0660a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x408338...900a13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4485b5...9438db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a2a63...abc111` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b2294...c2245c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dff3a...4407d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ec671...f88111` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f0c92...6aa015` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x502a30...deb171` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x508b2d...7139e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55a768...84c6be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x564fbe...6dcde5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57f0d2...f92f7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58722b...7d62d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59fd90...234f77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5af955...000778` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f7162...07d4bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6028ad...7e25fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62ee7d...122057` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x639177...1dca94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x645e14...4b68e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x658a94...89bd8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65e2e5...ef648c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x670326...faf8c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x724182...3a649c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x768ba3...415a38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x779fc2...d963fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77e88c...753e63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x782b9c...d89567` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78d884...95b3e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79e077...ab4e76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a33b5...b15cb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a6812...55f1ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d51ba...a7dbeb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8133ca...a92163` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x841af3...6840ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84aa5c...42fd6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x872418...c3c074` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87520b...6b831d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x877ff2...4af93b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a8a73...8d1ef4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b9481...5a2603` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c0069...5966b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d6e2c...04eaa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91b842...34624c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92f600...2947a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9495f3...90c5d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94c282...144d45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95ee89...e7ad6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x973f41...22bf0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99a53f...e94c38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a5b41...82286f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9daaa6...685dd3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e0c5d...6364e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ed1f8...8c1753` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0b22d...f56b27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa19940...70837d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5aef0...36988b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5f5e9...ce5d2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7604c...00527b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa76331...bbd197` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa84397...204822` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8c581...126bdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa733e...2d0467` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaadcad...555440` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf8106...f3bed5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0dde8...039b81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1804e...32f0b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3404f...bb99ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb64d29...cb8814` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb673c0...64aaf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7aadf...ab7483` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9e3db...7966f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb49b6...bd939c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb5b77...c00574` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd18c2...09fbfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd4458...a70f9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf8217...bcc8a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc59b7c...54583c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9b383...8f41ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca227f...8fbd10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca8a62...31a574` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce3ac6...78b887` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd158ec...50499e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1e538...7991a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd24844...d4c86b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3035e...6d3fa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3ffed...c25d32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd522ce...37d29b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd76f37...405f73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbb3a9...66c411` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdce45f...a22d8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd21bc...7522dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf9b9c...083110` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3514a...93c799` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5f464...3dac37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecee4b...a8cdec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecef1f...bb2668` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedfd61...f888fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef4e3a...1b4899` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0fe24...51fd67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2a89b...c2b566` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf76b7d...0598af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf82316...551854` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8e466...5e3df4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb398a...9e6de0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc1437...c163cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc90a1...5db30d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd2f65...c86f4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfdba40...49bcbe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe7ff5...0b722e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff30a5...876e20` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x05cf4e...838de3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x107105...44cc19` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x133d81...a308ee` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2732a8...da28f1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x276890...f8930b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3602c7...5e20be` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3b276e...f0414b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3fcc4e...883c05` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x41813a...e84397` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x432a97...29a68a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x504f82...3cb109` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x636204...f145eb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x64af9c...c212e6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7226f3...f761ee` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x757d95...e09c08` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x795d90...0ea5aa` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7b1987...27c15e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7d224f...bb457f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x81fdf8...bca9a2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x823033...eae7a8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8e69c9...c0fbb2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9854c6...f75d33` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x99470b...f57637` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9c45fe...c87675` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9f7628...48599c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa04f54...2ef5b1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa18735...9ec0a6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb0da5a...dc609a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb4cb04...ef410f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb9cc3e...57e5c6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcfe6b9...527162` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd0789c...737a0e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd84d5d...2d3c7a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd9869e...a54733` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdd0d13...a6d23a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xef2d4c...d773a9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf58624...3bfff0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf64f4f...a4c043` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfed46b...986d94` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xffc8b5...a9cc6a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b6420...0922f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1bd690...7e472a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1db17a...26cb9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ea65a...47d68c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x23dbbe...ae5fcd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x243331...78db9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25172c...dc2219` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3602c7...5e20be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x504f82...3cb109` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5769f1...b45ffd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x57c041...19fc73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x58a270...670f6a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b946b...bfc809` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x62ac43...0a9cb4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x69c529...2a6a41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x823033...eae7a8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87ebac...56936e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8ac3b6...24482b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x932249...cbe824` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x935c01...164552` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x99fdfc...17f460` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb205e9...a7a6cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb67c4c...90a8d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb3c6f...232c9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc09f5...65ecc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeff109...078739` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf40749...ca9393` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/DCUWGERi18R9emmxWwO2/uploads/gF4N9JVFD9kYVbxfqUOJ/blocksec_popcorn_v1.0-signed.pdf](https://1854965950-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDCUWGERi18R9emmxWwO2%2Fuploads%2FgF4N9JVFD9kYVbxfqUOJ%2Fblocksec_popcorn_v1.0-signed.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 11 | high |
| [f3d1e2410f6e52370c8f19e72b98ea5c (GitHub directory)](https://gist.github.com/gjaldon/f3d1e2410f6e52370c8f19e72b98ea5c) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | 1 | medium |
| [8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory)](https://gist.github.com/gjaldon/8d2067cd7b382a347c5ca4a5d01aa7c2) | yAudit | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [code4rena.com/audits/2023-01-popcorn-contest](https://code4rena.com/audits/2023-01-popcorn-contest) | Code4rena | Contest | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [4252cee7e84da6bb5b0a19ed00b5e34e (GitHub directory)](https://gist.github.com/0xruhum/4252cee7e84da6bb5b0a19ed00b5e34e) | 0xRuhum | Audit | 2023-04 | stale | Direct | contract_name | 1 | n/a |
| [spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf](https://938792658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDCUWGERi18R9emmxWwO2%2Fuploads%2FmBWIydyZzVeNBuK3u5an%2FZokyo%20Audit.pdf) | Zokyo | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [spaces/DCUWGERi18R9emmxWwO2/uploads/0NB6k44GVu1IW2B2mOcG/PopcornMay2022.pdf](https://938792658-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FDCUWGERi18R9emmxWwO2%2Fuploads%2F0NB6k44GVu1IW2B2mOcG%2FPopcornMay2022.pdf) | G0 Group | Audit | 2022-06 | stale | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe5d383...367697`](./contracts/ethereum-1/0xe5d383fc43f6c370ddd3975cf9e363ad42367697/) | LockVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0cd46...8a78c4`](./contracts/ethereum-1/0xd0cd466b34a24fcb2f87676278af2005ca8a78c4/) | MiniMeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcede40...138b93`](./contracts/arbitrum-42161/0xcede40b40f7af69f5aa6b12d75fd5ea9ce138b93/) | MultiStrategyVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd41d34...a1be45`](./contracts/optimism-10/0xd41d34d6b50785fdc025cad971fe940b8aa1be45/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xafa52e...7c0ca2`](./contracts/ethereum-1/0xafa52e3860b4371ab9d8f08e801e9ea1027c0ca2/) | OptionsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11eaa7...5366c8`](./contracts/ethereum-1/0x11eaa7a46afe1023f47040691071e174125366c8/) | OracleVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d7d27...3dc3f3`](./contracts/ethereum-1/0x9d7d271ce727252053748f3c3adab5e7c33dc3f3/) | PORExchangeRateFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdd0d13...a6d23a`](./contracts/arbitrum-42161/0xdd0d135b5b52b7edd90a83d4a4112c55a1a6d23a/) | StakingVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x59a696...94a230`](./contracts/arbitrum-42161/0x59a696bf34eae5ad8fd472020e3bed410694a230/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6b2091...5a3219`](./contracts/arbitrum-42161/0x6b2091c4eccb16756c2ade0a298fcc75c25a3219/) | StringPoRAddressList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc5b57e...7ee50c`](./contracts/polygon-137/0xc5b57e9a1e7914fda753a88f24e5703e617ee50c/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ab4bc...819a1a`](./contracts/ethereum-1/0x0ab4bc35ef33089b9082ca7bb8657d7c4e819a1a/) | Voting Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x577a7f...3f1920`](./contracts/ethereum-1/0x577a7f7ee659aa14dc16fd384b3f8078e23f1920/) | WeightedPool2Tokens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x788dbb...082a12`](./contracts/ethereum-1/0x788dbb1888a50e97837b9d06fd70db107b082a12/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 201 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: contract_name=1, extraction_exact=18

Zero-match audit list:

- [14101] 8d2067cd7b382a347c5ca4a5d01aa7c2 (GitHub directory)
- [14102] code4rena.com/audits/2023-01-popcorn-contest
- [14104] spaces/DCUWGERi18R9emmxWwO2/uploads/mBWIydyZzVeNBuK3u5an/Zokyo Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
