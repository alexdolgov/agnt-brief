# Agentic Audit Brief: WAGMI

## Project Overview

- Project: WAGMI (`wagmi`)
- Website: [https://wagmi.com/](https://wagmi.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:11.844Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, avalanche, base, bsc, ethereum, fantom, kava, metis, polygon, sonic, zksync-era
- Contract surface: 290 unique implementations (389 raw deployments)
- DeFi Llama TVL: $972,965.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 53 project-authored contract(s) across 8 chain(s); 5 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 20 common project-authored base contract(s) (erc20permit, eip712, peripheryimmutablestate). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 522; live-surface contracts included: 389 (41 live, 348 unknown).
- Excluded by liveness: 133 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/15 (13.3%)
- Deployed-live implementations: 15 of 290 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/31
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 259
- Unique implementations: 290
- Raw deployments: 389
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 12
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 13.3% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 2 | 6.5% | 2024-04 |
| Pashov Audit Group | Tier 2 | 2 | 6.5% | 2024-04 |
| Sherlock | Tier 1 | 2 | 6.5% | 2024-04 |
| AstraSec | Tier 2 | 1 | 3.2% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LiquidityBorrowingManager | unknown | metis | n/a | 13 deployments: sonic `0x78b796...05d5d9`; metis [`0x05d73f...3c4d2b`](./contracts/metis-1088/0x05d73f76689e4844581a9db03f82960cbf3c4d2b/); metis `0x07614a...b2e985`; metis `0x1bbce9...b3edf1`; metis `0x1eb13f...32efa1`; metis `0x20fa27...b6eabd`; metis `0x25a31a...aeb54e`; metis `0x3c4229...318104`; metis `0x3de5e3...4a4a2c`; metis `0x9ac33e...c6125c`; metis `0xadbc0c...1c7002`; metis `0xc33e12...832053`; metis `0xccf08f...d0c334` | ✅ Audited |
| Vault | core_logic | metis | n/a | 3 deployments: sonic `0xfb3efa...764132`; metis [`0x9cb36c...9e3630`](./contracts/metis-1088/0x9cb36c835f189c40bd9cd1cf298717b7bb9e3630/); base `0xb75c17...0c003f` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BellaDiceGame | unknown | metis | n/a | 10 deployments: metis [`0x08abfb...a33e2f`](./contracts/metis-1088/0x08abfbcb09f15dd00a828dce74c6693e0da33e2f/); metis `0x163b40...f97d2d`; metis `0x49a7a8...37c7ca`; metis `0x4a7d1b...24107b`; metis `0x6d5146...886aef`; metis `0x7bcaae...a7d67c`; metis `0x820663...372bc6`; metis `0x86aaec...5e12ee`; metis `0x9867c5...f2575b`; metis `0xab4bc4...85fda9` | ⚠️ Unaudited |
| FactoryLC | unknown | metis | n/a | [`0x07e1cf...89da57`](./contracts/metis-1088/0x07e1cf58c5e098f2c3acd3241e0f02d24d89da57/) | ⚠️ Unaudited |
| FlashLoanAggregator | unknown | metis | n/a | 3 deployments: metis [`0x056df3...6c8828`](./contracts/metis-1088/0x056df39ace357c1abf67fb090e36c9ec126c8828/); metis `0x071805...59e971`; metis `0xcc096c...850e1d` | ⚠️ Unaudited |
| InterfaceMulticallV2 | periphery | metis | n/a | [`0x16b413...e418fd`](./contracts/metis-1088/0x16b413526d062142eb9eda9d75312ca9f2e418fd/) | ⚠️ Unaudited |
| LightQuoterV3 | unknown | metis | n/a | 4 deployments: metis [`0x16cad8...b5788e`](./contracts/metis-1088/0x16cad8fbd9878d1ff86a12eb4a275c7f53b5788e/); metis `0x396379...e4ce98`; metis `0x5a9fd9...cabfe5`; metis `0xf3a538...825fdd` | ⚠️ Unaudited |
| Multicall2 | periphery | metis | n/a | [`0x576a13...418fd4`](./contracts/metis-1088/0x576a1301b42942537d38fb147895fe83fb418fd4/) | ⚠️ Unaudited |
| NFTDescriptor | token | metis | n/a | [`0x6372f4...2d8dd8`](./contracts/metis-1088/0x6372f4acf0a1e54fb5c3f48137e970a3df2d8dd8/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | n/a | 3 deployments: sonic [`0x77dcc9...18d690`](./contracts/sonic-146/0x77dcc9b09c6ae94cdc726540735682a38e18d690/); metis `0xa7e119...cb1b02`; base `0x818780...ac1f72` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | metis | n/a | [`0x1e6ef5...f59e8a`](./contracts/metis-1088/0x1e6ef5f8f589650b589e17ab15bc4ba42ef59e8a/) | ⚠️ Unaudited |
| OFT | unknown | polygon | n/a | 6 deployments: bsc `0xaf20f5...0de7d7`; polygon [`0x07ed33...5024da`](./contracts/polygon-137/0x07ed33a242bd9c08ca3c198e01189e35265024da/); sonic `0x0e0ce4...87d16b`; base `0xaf20f5...0de7d7`; arbitrum `0xaf20f5...0de7d7`; avalanche `0xaf20f5...0de7d7` | ⚠️ Unaudited |
| Permit2 | unknown | base | n/a | 3 deployments: sonic `0x7ac9e3...b22948`; metis `0xb1f795...d48297`; base [`0x16b413...e418fd`](./contracts/base-8453/0x16b413526d062142eb9eda9d75312ca9f2e418fd/) | ⚠️ Unaudited |
| PopsicleV3Optimizer | unknown | ethereum | n/a | 4 deployments: ethereum [`0x212aa0...81740b`](./contracts/ethereum-1/0x212aa024e25a9c9baf5b5397b558b7ccea81740b/); ethereum `0x5c08a6...97218d`; ethereum `0x9683d4...317f55`; ethereum `0xa1be64...943d0e` | ⚠️ Unaudited |
| PositionEffectivityChart | unknown | metis | n/a | 7 deployments: metis [`0x242c5f...f3cf17`](./contracts/metis-1088/0x242c5faaaa8a5fe49a66698fff7bcab85cf3cf17/); metis `0x2c8004...1a11cd`; metis `0x48cc6c...8dcee7`; metis `0x80f432...2020c3`; metis `0x846e4e...6c0ae0`; metis `0x896c78...29a7ca`; metis `0xbbf979...4a9bf9` | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | 7 deployments: ethereum `0xb5fa77...5bcd0e`; bsc `0xc5eda8...0335af`; polygon `0x7f4f24...e53986`; sonic `0xcb5cbc...7c9753`; metis `0xf914e1...97f966`; base [`0x428065...fdd649`](./contracts/base-8453/0x428065998a96f82bf66a0a427a157429a6fdd649/); arbitrum `0xab719a...f1bb51` | ⚠️ Unaudited |
| Quoter | periphery | metis | n/a | [`0x2dc123...710cea`](./contracts/metis-1088/0x2dc123ff6757fcea46c025758e93bd8b98710cea/) | ⚠️ Unaudited |
| QuoterV2 | periphery | metis | n/a | [`0xb9a14e...abde24`](./contracts/metis-1088/0xb9a14ee1cd3417f3acc988f61650895151abde24/) | ⚠️ Unaudited |
| sWagmi | unknown | sonic | n/a | [`0x4b5d9d...fa28aa`](./contracts/sonic-146/0x4b5d9db7910448e2f236509d9ee242673afa28aa/) | ⚠️ Unaudited |
| SwapRouter | adapter | bsc | n/a | 3 deployments: bsc [`0x7b2f96...f8fb44`](./contracts/bsc-56/0x7b2f96919cff07110feb0ec06130b33d70f8fb44/); sonic `0x9282a6...4cfd49`; metis `0x8fb7a8...7cfedc` | ⚠️ Unaudited |
| SwapRouter02 | adapter | sonic | n/a | [`0x1ac569...ccded5`](./contracts/sonic-146/0x1ac569879ef7eacb17cc373ef801cdce4accded5/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | metis | n/a | 2 deployments: ethereum `0xd8ac77...d65293`; metis [`0x8b741b...41f015`](./contracts/metis-1088/0x8b741b0d79be80e135c880f7583d427b4d41f015/) | ⚠️ Unaudited |
| TickLens | periphery | metis | n/a | [`0x428065...fdd649`](./contracts/metis-1088/0x428065998a96f82bf66a0a427a157429a6fdd649/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | 7 deployments: ethereum `0x08d6e1...d79ce8`; bsc `0x3d079b...007484`; polygon `0x11cd3b...8ce66c`; sonic [`0x07ed33...5024da`](./contracts/sonic-146/0x07ed33a242bd9c08ca3c198e01189e35265024da/); metis `0xa9af50...84d12c`; base `0xa7e119...cb1b02`; arbitrum `0x4389ee...e4955b` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | metis | n/a | [`0xb5fa77...5bcd0e`](./contracts/metis-1088/0xb5fa77e3929fe198a86aa40fd6c77886785bcd0e/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | metis | n/a | [`0x8112e1...fe5b8a`](./contracts/metis-1088/0x8112e18a34b63964388a3b2984037d6a2efe5b8a/) | ⚠️ Unaudited |
| UniversalRouter | adapter | base | n/a | 3 deployments: sonic `0xc81dae...626d19`; metis `0x730135...61ca48`; base [`0x08d6e1...d79ce8`](./contracts/base-8453/0x08d6e1ae0f91423ddbd16f083ca39ccdd1d79ce8/) | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | metis | n/a | [`0xe88b19...c9b6e2`](./contracts/metis-1088/0xe88b19885935b4be8dcf38e2c96b8c73cfc9b6e2/) | ⚠️ Unaudited |
| V3Migrator | periphery | metis | n/a | [`0x818780...ac1f72`](./contracts/metis-1088/0x8187808b163e7cbaccc4d0a9b138ae6196ac1f72/) | ⚠️ Unaudited |
| WagmiOFTV2Adapter | adapter | ethereum | n/a | [`0xf5ec00...22b4e4`](./contracts/ethereum-1/0xf5ec00e770de25aef156d290c2504e163b22b4e4/) | ⚠️ Unaudited |
| WagmiToken | token | ethereum | n/a | [`0x92cc36...b83a67`](./contracts/ethereum-1/0x92cc36d66e9d739d50673d1f27929a371fb83a67/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (259)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x058716...bd466f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c0ecf...6933f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13704d...4eb703` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16b413...e418fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1cc26a...a5322f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e6ef5...f59e8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x216961...3b7287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x216d15...73609d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22be52...ab191d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23a14a...5c5c9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26f5fd...d213b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2eb4b9...f8f015` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33810f...96ccbd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34ea70...877044` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x394d34...22dd17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c3dcf...d02682` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d3047...e2ec1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x462e21...c0a40e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b5d9d...fa28aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cae7c...049df0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e537a...6888cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f1bd9...388320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x519921...13081f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67cd21...49ccfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x680a41...0619ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6874e9...97149e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x726f7a...ba5ce7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72b01c...4ff431` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d6e19...d279be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88e4aa...8b48ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d819e...8be64f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fce34...dc32fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x942dd0...98ecf0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x970b92...df384e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98fe50...6532ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a9c79...8fb481` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c90c4...0e6270` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1fdc2...7929c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9af50...84d12c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad1724...59577e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad3d12...f3fa30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xada293...94b162` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb22cd4...a0e9f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb52c49...65a607` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6c97f...1cd75b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9a14e...abde24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc099a6...71931d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca6564...588f64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce7734...4c3804` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcef328...a40264` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd06235...593324` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd68573...11d4ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd74c1d...07fedb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe98e23...f37c72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea34e6...f8013c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4b95c...e8579f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa2651...f8a2ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa3d90...2b0cec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d288b...422deb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e0ce4...87d16b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fc61b...d5cd61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x576a13...418fd4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58a3d3...5e1e5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6372f4...2d8dd8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70eddf...c038b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7191dc...fef023` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f8bb8...35539a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8112e1...fe5b8a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92c9fa...58190f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92cc36...b83a67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb01510...260d8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe56f52...a3aea0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x209050...e7ac6c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x77dcc9...18d690` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x877cda...341b83` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8b741b...41f015` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x98fe50...6532ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaf20f5...0de7d7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1f795...d48297` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5fa77...5bcd0e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x001530...5b5ecb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x017277...a2a317` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x037f7b...74e473` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x09dae4...d9c79f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0ead6d...f18fc2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0fa78a...23346e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x11cd3b...8ce66c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1bbce9...b3edf1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1ed205...5b6f0b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1f1e91...12b61e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x227e1a...b4b874` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x242965...17c790` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2fc61b...d5cd61` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2ff4a8...fdb7fa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x303115...861444` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x314b72...8decf0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x37f0ad...03a3da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x38df1d...35f534` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x394048...972529` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x441047...573d5c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x495b37...f3bdfe` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4acc23...d2f6c9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4b388c...48258e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4e537a...6888cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x568abf...a12ed5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x569e81...26a062` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x58a3d3...5e1e5a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5ab34b...d387c8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5ff8cc...febefa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x67b319...7fd6bd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6c9946...89bf3c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6ea38b...3dc7df` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7189d6...06afa8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x721655...965c3c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x783295...fad285` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x78e7c9...3af78f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7dd9b4...b79c40` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x806408...deeaf9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x86fd61...4038fa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8a5fcc...6d8e62` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8bf365...2b2d38` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8f3ff8...e99c08` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x91d0ef...051711` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9492a0...3cb298` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x98174d...adb2e7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa0f185...799ed9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa46901...c98628` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xabc40e...f873c9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xadb036...468839` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaf20f5...0de7d7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb738da...4d3581` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb825fb...4a841f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb9235a...4adeae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb992e2...a51d23` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb9d99d...4cf554` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xba2848...3f507c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xba99f0...6c5aa8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc52fc7...f9a3f1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc56c21...cdd0cd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc6020e...101d5e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc8dbba...8ad9dd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc9a2e7...85c3eb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xca420d...29d8eb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd26fbd...27f150` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd6ea74...28dc55` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd7910d...dad2e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd80a12...823ee3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd878cc...28b217` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd8aa17...eccc8f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdf351e...d1afe5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdfc299...4eed3d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe07cdd...7ef4b1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe56f52...a3aea0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf0ce72...c961da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf81e0d...e62f82` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf8ff94...81494c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfa2144...93ee1b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfaed58...55a22f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfce985...b024ae` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 37 deployments: fantom `0x07ed33...5024da`; fantom `0x0834cf...089485`; fantom `0x209050...e7ac6c`; fantom `0x45c16c...cbe29a`; fantom `0x56cfc7...079aef`; fantom `0x5973c9...b5a2fe`; fantom `0x5db68a...c4d14e`; fantom `0x660fc6...d0ed6e`; fantom `0x77dcc9...18d690`; fantom `0x828825...308292`; fantom `0x877cda...341b83`; fantom `0x9282a6...4cfd49`; fantom `0x92cc36...b83a67`; fantom `0x98fe50...6532ed`; fantom `0xaf20f5...0de7d7`; fantom `0xb1f795...d48297`; fantom `0xcb5cbc...7c9753`; fantom `0xdb51cf...2d0d24`; kava `0x0e0ce4...87d16b`; kava `0x1e6ef5...f59e8a`; kava `0x2dc123...710cea`; kava `0x3690d1...c9630f`; kava `0x428065...fdd649`; kava `0x576a13...418fd4`; kava `0x6372f4...2d8dd8`; kava `0x8112e1...fe5b8a`; kava `0x818780...ac1f72`; kava `0x8b741b...41f015`; kava `0x8fb7a8...7cfedc`; kava `0xa7e119...cb1b02`; kava `0xa9af50...84d12c`; kava `0xaf20f5...0de7d7`; kava `0xb1f795...d48297`; kava `0xb5fa77...5bcd0e`; kava `0xb9a14e...abde24`; kava `0xe88b19...c9b6e2`; kava `0xf914e1...97f966` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x3613ad...c2dc9e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x01bd51...bee2ac` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x03d1ef...e27cd2` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0ae94f...503cb4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0d4e84...43738f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x0e6a9c...cde12c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x18213a...b8100e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x19eab1...740776` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1d8571...d416f0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2120eb...844e9a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x215c0e...4aec27` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x24a2cb...54a0c5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x259308...896442` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2668f4...545bf1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2931c9...77a732` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2c3918...8b4410` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2d1496...6c61b5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x30623f...032d9c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x348a1b...a2f301` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x400fe1...64bfa6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4948f0...2da2d9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x546d87...4fce31` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5873c1...7710ed` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5cb58c...7fa3d0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5f171e...71d54c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5fb398...352558` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5ff8cc...febefa` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6175b6...0585e6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6648ae...6b373e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x677290...7493ea` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x67b319...7fd6bd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x72e9b5...f07788` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x73e721...6d51d9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x836017...52aa67` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x83f7e7...b2e0d8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x86fd61...4038fa` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x92170f...618619` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x92ed88...84eb0d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9490a6...e9d026` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9adcae...ccb5e1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9cc313...629194` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa0f185...799ed9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa6e02c...9f4904` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xab120f...cd8d0c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xab719a...f1bb51` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xaf20f5...0de7d7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb33fc0...595ecd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xb9ba23...617b0e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xba99f0...6c5aa8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbd3c28...36692b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbf4b53...a37feb` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc49c17...5b1ec3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc78a18...fb2bca` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd55b48...ee709f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdb459e...87814b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdd9c5c...cbd1cf` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xde5803...dabf3d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xded75f...716e23` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe4d69a...74949c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe673a6...2ace5b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe67920...97a82f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xebdaf1...a098a5` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xec3739...c4e17a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf411fd...419ff7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfa26c7...70eb8b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d3047...e2ec1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ff8cc...febefa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x67b319...7fd6bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x86fd61...4038fa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa1fdc2...7929c7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd8bf6f...9558ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e0ce4...87d16b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2da5dd...a5ae41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8112e1...fe5b8a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x037f7b...74e473` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x089e07...debf6c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x08d6e1...d79ce8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e0ce4...87d16b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x16b413...e418fd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x394d34...22dd17` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4389ee...e4955b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x491d19...a1ab51` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b5d9d...fa28aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4e537a...6888cc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x576a13...418fd4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x66034b...9590f0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e892a...30ab29` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x721655...965c3c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7f4f24...e53986` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8112e1...fe5b8a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x834ddb...570b87` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8bb1be...472bac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x92cc36...b83a67` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa6d200...bcfc0d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xab719a...f1bb51` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd5b59c...b26544` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd6ea74...28dc55` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd74c1d...07fedb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd8ac77...d65293` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/f5b20449ff1a769af108c2b2fa6ee928a0c77232/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf) | Hacken | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [Wagmi-security-review.pdf](https://raw.githubusercontent.com/pashov/audits/bed0a845f5af0047206ce423d111673183dba1e9/team/pdf/Wagmi-security-review.pdf) | Hacken | Audit | 2024-04 | stale | Direct | contract_name | 2 | n/a |
| [2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf) | Sherlock | Contest | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [Wagmi-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Wagmi-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | contract_name | 2 | n/a |
| [Wagmi Leverage V1.0 0-V2.0 AstraSec.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.0%200-V2.0%20AstraSec.pdf) | AstraSec | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [Wagmi Leverage V1.0 Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.0%20Sherlock.pdf) | Sherlock | Contest | 2023-11 | stale | Direct | contract_name | 2 | n/a |
| [Wagmi Leverage V1.1 Hacken.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.1%20Hacken.pdf) | Hacken | Audit | 2023-12 | stale | Direct | contract_name | 2 | n/a |
| [Wagmi Leverage V1.5 Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V1.5%20Sherlock.pdf) | Sherlock | Contest | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [Wagmi Leverage V2.0 Pashov.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V2.0%20Pashov.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | contract_name | 2 | n/a |
| [Wagmi Leverage V2.0 Sherlock.pdf](https://github.com/RealWagmi/wagmi-leverage/blob/main/audit/Wagmi%20Leverage%20V2.0%20Sherlock.pdf) | Sherlock | Contest | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [Wagmi-security-review.pdf](https://raw.githubusercontent.com/pashov/audits/b60fc16f80b1291d36bd09a443e90f39bcb5d660/team/pdf/Wagmi-security-review.pdf) | Hacken | Audit | 2024-04 | stale | Direct | contract_name | 2 | n/a |
| [2024.03.23 - Final - WagmiLeverage V2 Audit Report.pdf](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/a58894ebc05005a80e945a2558d583b8e0e05ef2/audits/2024.03.23%20-%20Final%20-%20WagmiLeverage%20V2%20Audit%20Report.pdf) | Hacken | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 290 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=18

Fork inheritance lineage and inherited audits are included when available.
