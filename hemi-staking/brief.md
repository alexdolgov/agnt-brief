# Agentic Audit Brief: Hemi Staking

## Project Overview

- Project: Hemi Staking (`hemi-staking`)
- Website: [https://app.hemi.xyz/en/stake/dashboard/](https://app.hemi.xyz/en/stake/dashboard/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.403Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: bsc, ethereum, optimism, swellchain
- Contract surface: 111 unique implementations (200 raw deployments)
- DeFi Llama TVL: $27,662,621.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 52 project-authored contract(s) across 3 chain(s); 1 ERC4626 vault, 7 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 15 common project-authored base contract(s) (accesscontrolinternal, ownableinternal, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 237; live-surface contracts included: 188 (102 live, 86 unknown).
- Excluded by liveness: 49 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/42 (2.4%)
- Deployed-live implementations: 42 of 111 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/43
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 68
- Unique implementations: 111
- Raw deployments: 200
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 2 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 2.3% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VeHemi | unknown | ethereum | n/a | 2 deployments: ethereum [`0x85c53e354f7a97c61330a6601c3d4faee2733999`](./contracts/ethereum-1/0x85c53e354f7a97c61330a6601c3d4faee2733999/); ethereum `0xe24b0f13825c7fcf34340918267c3ff012d06ef7` | ✅ Audited |

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BinanceHemiOFT | unknown | bsc | n/a | 4 deployments: bsc [`0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b`](./contracts/bsc-56/0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b/); bsc `0xb8dbff1e8dfa6a8cb2b6702f685e3fb73ba2c3c3`; bsc `0xd275f99dba63259466ef83abf1a9c2effc42506e`; bsc `0xfc553809c82ab0853e5d9e7dd168dd4454e91575` | ⚠️ Unaudited |
| CoreFacet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x90b9e5de5dbe8d5c882aac8c097fd5a235a0014f`](./contracts/ethereum-1/0x90b9e5de5dbe8d5c882aac8c097fd5a235a0014f/); ethereum `0xe16e1df1c023fc01795acade989f1d0e84d52301` | ⚠️ Unaudited |
| EnzoBTC | unknown | ethereum | n/a | [`0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a`](./contracts/ethereum-1/0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a/) | ⚠️ Unaudited |
| EnzoNetwork | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7efb3515d9ec4537fafca635a1de7da7a5c5c567`](./contracts/ethereum-1/0x7efb3515d9ec4537fafca635a1de7da7a5c5c567/); ethereum `0xdc2156498144f172746c4e6d4baab54d87950068` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1324285bb2ddadfc9bebc2f8fc5049d7985312c0`](./contracts/ethereum-1/0x1324285bb2ddadfc9bebc2f8fc5049d7985312c0/); ethereum `0x9760180786bdbc377b61dacd752f31f0d6377b61` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5cd923fb3a229813e53253a37dce0b1d8aee5296`](./contracts/ethereum-1/0x5cd923fb3a229813e53253a37dce0b1d8aee5296/); ethereum `0x87440b10b933ef4cac07f3b4b1e41f1d02e50338` | ⚠️ Unaudited |
| GasPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x627524aec280300dfa58ddb30709a0f3810400c9`](./contracts/ethereum-1/0x627524aec280300dfa58ddb30709a0f3810400c9/); ethereum `0xfe851a8614a97458bbb9dcdbfb28de9a7f1be184` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0xa6b71e26c5e0845f74c812102ca7114b6a896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/); optimism [`0xa6b71e26c5e0845f74c812102ca7114b6a896ab2`](./contracts/optimism-10/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | ⚠️ Unaudited |
| GovernanceToken | token | optimism | n/a | [`0x4200000000000000000000000000000000000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | ⚠️ Unaudited |
| HemiLock | unknown | bsc | n/a | 4 deployments: bsc [`0x0795a3c4898d823946f953bd1234c0e7b7ff1026`](./contracts/bsc-56/0x0795a3c4898d823946f953bd1234c0e7b7ff1026/); bsc `0x7070fa313d1514ada227f38a8afcc8e37cfb89f9`; bsc `0x86bb2b7ec923dc0f30a784de00f0737ec094046b`; bsc `0xfbe1baa283c3cdf96052e56eb979e3b01b6eae8b` | ⚠️ Unaudited |
| Initializer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x03d9c4e4bc5d3678a9076cac50db0251d8676872`](./contracts/ethereum-1/0x03d9c4e4bc5d3678a9076cac50db0251d8676872/); ethereum `0xfec7c4b379484a5310f7a4c9b38102b9d53d8d9c` | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e`](./contracts/ethereum-1/0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0x6daf3a3497d8abdfe12915add9829f83a79c0d51`](./contracts/ethereum-1/0x6daf3a3497d8abdfe12915add9829f83a79c0d51/) | ⚠️ Unaudited |
| LiquidationFacet | unknown | ethereum | n/a | 2 deployments: ethereum [`0x38e2a41ab14b382e0188c8368937ee392e852695`](./contracts/ethereum-1/0x38e2a41ab14b382e0188c8368937ee392e852695/); ethereum `0xde87146b00817fc265978424880646fb7b4fe7b8` | ⚠️ Unaudited |
| MintSecurity | unknown | ethereum | n/a | 2 deployments: ethereum [`0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302`](./contracts/ethereum-1/0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302/); ethereum `0x47c4ac7d1d0ff9594de5f3d2d07ff67253620a1c` | ⚠️ Unaudited |
| MintStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x81d7dab8b95085034d9ce90958038251726b2c59`](./contracts/ethereum-1/0x81d7dab8b95085034d9ce90958038251726b2c59/); ethereum `0xb3cf78f3e483b63280cfe19d52c9c1bdd03d02ab` | ⚠️ Unaudited |
| MIPS | unknown | ethereum | n/a | [`0x42ff661af011939f699d67bd021d237ebcba9c2a`](./contracts/ethereum-1/0x42ff661af011939f699d67bd021d237ebcba9c2a/) | ⚠️ Unaudited |
| MockDstOFT | unknown | bsc | n/a | 35 deployments: bsc [`0x04db2da16318e616d28f0da7aa59eeb12acec72c`](./contracts/bsc-56/0x04db2da16318e616d28f0da7aa59eeb12acec72c/); bsc `0x14c9bc56eff931ae8625899f1b747d4431298fba`; bsc `0x182c58c10fa565d9d9a3b929294b8803f38463a1`; bsc `0x25c304f15513e9c8054c84ed6a9927e8e677d608`; bsc `0x2dd5869c3d7d251e1e9a452bd7aa2e11c61142a8`; bsc `0x3a82a401a5834a32aa5f6268982805bbb69cd2f4`; bsc `0x3ea24e3727a85a479e29e02cc70e792936fbbcad`; bsc `0x4661407fc224e5432d7f528a20ef8906e453a8f3`; bsc `0x4f2acd70a590736bb6185a7aab503971e61bd83e`; bsc `0x4ff907f877e92ef39cdfba6d0db73e9e2ac0f538`; bsc `0x51bc603a29bef7181e9866ed27beaae215865761`; bsc `0x656f1f3a4df83a10afb2bd2ecad8ef4a96c9e4d0`; bsc `0x6e3ac56a1df60ada3b5563c3a609222045245365`; bsc `0x760c6622e94868f4e6df8e8d25c9c0c8dc4ba3b7`; bsc `0x790e5f103ab69122fc5d9a3d5216fad11fe36acb`; bsc `0x8e4f0e00904d03b2fa805c2b07c436e7a76110bf`; bsc `0x8f156189a3cd28dfc8fb7bbbace58f98f09c0bb3`; bsc `0x951f5d2593e0a678c1192fab4fa3dbbf867d2c1d`; bsc `0x9bfc2143b2729ede4a53b96379b36d6018722406`; bsc `0xa3ceec1740090b303a9682cd43f1f14d7bac4da2`; bsc `0xb908cadb1906b44c3d163486d8ceb9b4370c476e`; bsc `0xbd5caae9f1b73dce4e14790cfdf32de0d0128a66`; bsc `0xbf504a1eb823a0a2964cb043068472f479fb3735`; bsc `0xbf7d0f62b64b23053949b3a88a03da5bfd35b2e2`; bsc `0xc340d0a130663fa901a1bdb7a3ddb911de090657`; bsc `0xc9ffa23308d02dc9cffe955fcce5ffd117a03b46`; bsc `0xd86a00de186222a6720e0838b28ccf46c6df086b`; bsc `0xdb2d0baae78f1dc2a8504b471f3cea257b2c3766`; bsc `0xdbd9cfb0b54c08e75085f8c8844e8054d13bd39a`; bsc `0xe002c5c9ad8f533c17c25df21c453f31849e0ed9`; bsc `0xe2a466df120fb847520763461d99c22ea5ba8cc8`; bsc `0xe2adb496684eb9c43b5025f05b50ee492c77f938`; bsc `0xf228733daa7897dd728b11609b4382b9d69b7e0f`; bsc `0xf3b36c39dd2a5e0407fb3aee0dd444a88d5893e0`; bsc `0xffd74ecf5b4eec6eac2624764933fb5f2e2dfd09` | ⚠️ Unaudited |
| MockLock | unknown | bsc | n/a | 2 deployments: bsc [`0x32a21ec8ee93971d4b4093c0895fd841c7169a23`](./contracts/bsc-56/0x32a21ec8ee93971d4b4093c0895fd841c7169a23/); bsc `0xded54ce0e6724ffc3992939771e54a6dbcaad82e` | ⚠️ Unaudited |
| MultiCollateralHintHelpers | periphery | ethereum | n/a | 2 deployments: ethereum [`0x90d3b9982c2fbc9ebb583e9906ec4e3449b9a9a2`](./contracts/ethereum-1/0x90d3b9982c2fbc9ebb583e9906ec4e3449b9a9a2/); ethereum `0xca5ded5270666d65c70dad0bdc54c5d26befe8f2` | ⚠️ Unaudited |
| MultiTroveGetter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3e83fd30fb9df3cdceb07a834e890dc287d385ec`](./contracts/ethereum-1/0x3e83fd30fb9df3cdceb07a834e890dc287d385ec/); ethereum `0xd6a2335d570415355acc8554181be4932bc41d93` | ⚠️ Unaudited |
| OFT | unknown | bsc | n/a | 6 deployments: bsc [`0x10061d0593441ff74536158592e1be3f4c7b180c`](./contracts/bsc-56/0x10061d0593441ff74536158592e1be3f4c7b180c/); bsc `0x37d8c0afeef48aa9d925475cf6c73e4d8c74d931`; bsc `0x64b5bb3b7ef0267019fee5b826c60cb9b7609373`; bsc `0x707c243b59fedf29730cd3d1025fbeeea0412075`; bsc `0xa30e1a67026b9cb4dec0ea2338cc5cd34d076f30`; bsc `0xc141b66ee4262ba46ea29578955c274fd4a96515` | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0x39a0005415256b9863afe2d55edcf75ecc3a4d7e`](./contracts/ethereum-1/0x39a0005415256b9863afe2d55edcf75ecc3a4d7e/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | [`0x613f36be58ba712b37474f4b82484d680d24ed20`](./contracts/ethereum-1/0x613f36be58ba712b37474f4b82484d680d24ed20/) | ⚠️ Unaudited |
| PriceFeedAggregatorFacet | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xef5e87476c4ac90a0973a2bf114ac770c4e05c1e`](./contracts/ethereum-1/0xef5e87476c4ac90a0973a2bf114ac770c4e05c1e/); ethereum `0xefaa8b485355066fa0993a605466eef0ec026860` | ⚠️ Unaudited |
| PriceFeedChainlink | operational_periphery | ethereum | n/a | [`0xf64af34e614955760c331fc055b25bcf9dc1ac09`](./contracts/ethereum-1/0xf64af34e614955760c331fc055b25bcf9dc1ac09/) | ⚠️ Unaudited |
| RewardVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2863e3d0f29e2eec6adefc0df0d3171dad542c02`](./contracts/ethereum-1/0x2863e3d0f29e2eec6adefc0df0d3171dad542c02/); ethereum `0x583f89425edf276a178952ba413ff36bac18905d` | ⚠️ Unaudited |
| RewardVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x56cabed729121977c0c4a94231fc945fa3acf261`](./contracts/ethereum-1/0x56cabed729121977c0c4a94231fc945fa3acf261/); ethereum `0xd851910ea3e9246d1ddcebd06cd2e581776ac710` | ⚠️ Unaudited |
| RewardVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5f88f74f2474925df0be9ef93ca8c3671d9b935a`](./contracts/ethereum-1/0x5f88f74f2474925df0be9ef93ca8c3671d9b935a/); ethereum `0x84c59304aac67c65b31a30c7c0facb4c849dee22` | ⚠️ Unaudited |
| SatoshiXApp | unknown | ethereum | n/a | 2 deployments: ethereum [`0x07bbc5a83b83a5c440d1caedbf1081426d0aa4ec`](./contracts/ethereum-1/0x07bbc5a83b83a5c440d1caedbf1081426d0aa4ec/); ethereum `0xb8374e4dff99202292da2fe34425e1de665b67e6` | ⚠️ Unaudited |
| SmartVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x980963c8ebb2840708be935b197b83c71256ba45`](./contracts/ethereum-1/0x980963c8ebb2840708be935b197b83c71256ba45/); ethereum `0x980fe4cdc7a18932b2d958f33458b5b488ce4665` | ⚠️ Unaudited |
| SmartVaultManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x355961ace96134fe7ba72b24b24559e7ca4aed86`](./contracts/ethereum-1/0x355961ace96134fe7ba72b24b24559e7ca4aed86/); ethereum `0xf3d6913b6725d7812aacf9f4f9219106470c3e20` | ⚠️ Unaudited |
| StabilityPoolFacet | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x23e727e4919eb9f11200197014ab96d03008ccff`](./contracts/ethereum-1/0x23e727e4919eb9f11200197014ab96d03008ccff/); ethereum `0x9a3c724ee9603a7550499be73dc743b371811dd3` | ⚠️ Unaudited |
| TransferStrategy | core_logic | ethereum | n/a | [`0x26cfabb6548e744219fa4b8923efd51f7352bb9e`](./contracts/ethereum-1/0x26cfabb6548e744219fa4b8923efd51f7352bb9e/) | ⚠️ Unaudited |
| TroveHelper | periphery | ethereum | n/a | 2 deployments: ethereum [`0x00072c48501f53cb2bb9efcdd7a0ee569cf9428f`](./contracts/ethereum-1/0x00072c48501f53cb2bb9efcdd7a0ee569cf9428f/); ethereum `0x20563122f0229e4c31293485140b130e6e44ce59` | ⚠️ Unaudited |
| TroveManagerGetters | governance | ethereum | n/a | 2 deployments: ethereum [`0x8ab3cf1d5a8b8ec661eff615f2882c9938a34985`](./contracts/ethereum-1/0x8ab3cf1d5a8b8ec661eff615f2882c9938a34985/); ethereum `0xe673be5c058728b9c4cd0c514951023825b8b7a8` | ⚠️ Unaudited |
| VeHemi | unknown | ethereum | n/a | 2 deployments: ethereum [`0x03e77f120e5a36c5a6800a5731af37673d8e28db`](./contracts/ethereum-1/0x03e77f120e5a36c5a6800a5731af37673d8e28db/); ethereum `0x0934470106904dace59ac76d8a4cf065e6c91bba` | ⚠️ Unaudited |
| VeHemi | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0d1866b08a9cc2f3ecb927e10c838545f38457c3`](./contracts/ethereum-1/0x0d1866b08a9cc2f3ecb927e10c838545f38457c3/); ethereum `0x85872de946c00029c89b62c4ae1a5b00937b5fae` | ⚠️ Unaudited |
| VeHemi | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1770b9c7449369108b52dd3706cf373dcc2d3585`](./contracts/ethereum-1/0x1770b9c7449369108b52dd3706cf373dcc2d3585/); ethereum `0xf713137f81b0cb4b01c1ebbab56222916ff57771` | ⚠️ Unaudited |
| VeHemi | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17e42436446bc14094952b8dfa27dce8f01d8836`](./contracts/ethereum-1/0x17e42436446bc14094952b8dfa27dce8f01d8836/); ethereum `0x5caf9fb271f49b10ffff4603d6fc74b83e58f31d` | ⚠️ Unaudited |
| VeHemi | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1a6ec1f22b38c4c13cb79ab55494a9c86727b275`](./contracts/ethereum-1/0x1a6ec1f22b38c4c13cb79ab55494a9c86727b275/); ethereum `0x1ec7e65869c72f26e0e672ba7e92c80fa3d4baa8` | ⚠️ Unaudited |
| VeHemiAragonAdapter | adapter | ethereum | n/a | [`0xdee010e6f73e951de73484fc9dfffe12d7b9c5da`](./contracts/ethereum-1/0xdee010e6f73e951de73484fc9dfffe12d7b9c5da/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (68)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DebtTokenWithLz | unknown | ethereum | n/a | `0x1958853a8be062dc4f401750eb233f5850f0d0d2` | ❓ Unverified |
| DebtTokenWithLz | unknown | ethereum | n/a | `0xb4818bb69478730ef4e33cc068dd94278e2766cb` | ❓ Unverified |
| Proxy (impl: 0x350db6babcf9ff504c515517414110310572e953) | unknown | ethereum | n/a | 2 deployments: ethereum `0x1c238aba91ce5947c0eb45a14b53adc8e60d7e86`; ethereum `0x350db6babcf9ff504c515517414110310572e953` | ❓ Unverified |
| Proxy (impl: 0x4d4737312b7a33c7adc93f06cdd3ea3b29b0075f) | unknown | ethereum | n/a | 2 deployments: ethereum `0x256bd26fddc17a1d1a9b974bcd268f89bfe15789`; ethereum `0x4d4737312b7a33c7adc93f06cdd3ea3b29b0075f` | ❓ Unverified |
| Proxy (impl: 0x62a5ed526a5059f7567bc48cb226d636d110bdf3) | unknown | ethereum | n/a | 2 deployments: ethereum `0x0a1ca3190579504761a0efd0c94dfa2dede55be2`; ethereum `0x62a5ed526a5059f7567bc48cb226d636d110bdf3` | ❓ Unverified |
| Proxy (impl: 0x8056f157a92b1a78cdc221120dda461ac2f44640) | unknown | ethereum | n/a | 2 deployments: ethereum `0x6182ac22ecee4282119522309e70b52f0efceb92`; ethereum `0x8056f157a92b1a78cdc221120dda461ac2f44640` | ❓ Unverified |
| Proxy (impl: 0xba0df5f65dca3392b4673724b819a48df7132413) | unknown | ethereum | n/a | 2 deployments: ethereum `0x0920006d239e8612306435c4044a1be37349eb1b`; ethereum `0xba0df5f65dca3392b4673724b819a48df7132413` | ❓ Unverified |
| Proxy (impl: 0xea886242814ebe477644a451b7a33d3369fbe938) | unknown | ethereum | n/a | 2 deployments: ethereum `0x3258cfb186e3ffdc440222aece5fe9e79d5b6f52`; ethereum `0xea886242814ebe477644a451b7a33d3369fbe938` | ❓ Unverified |
| StakingVault | unknown | ethereum | n/a | `0xccfd19e331ffce8506718ec3dddddf9f23029825` | ❓ Unverified |
| StakingVault | unknown | ethereum | n/a | `0xcdace5073d9ca7379498ea8c728302e06d2f4f9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01cc29e063cc5c28c4e7a84bf1f565c83ba300a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0341e348db0f81fd6e425703d05b1ffb9a0835fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04dcfe50e43823a1d8f6e3fbb8af10bfb7ebb634` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x0f1331014273fd693e30692b2fb451d53dec7f7c`; ethereum `0x47c597877b17b87abd45f6a773d201cf1adc3748` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13760092c04641d9e03175f9d651867153aba8b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a98907b561af17071b92285f118340cd8d55635` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1af6626290b03803cedf7ef32e7adb7dae844663` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f1431e464d2e9cb679494655d6f3be5c6b33beb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x20299aeddb791c0d57dc17ec6c0aa964e4e99b35`; ethereum `0xbb49825892252f343835219ef6eca4a98d17fe2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x254653f0b36191215195ecc684a0c7eb26141e45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x2704b32aa7f8024f0ddb077deb5816002ae79037`; ethereum `0x503a01b5465de93a851ea36dae6ef82b39231378` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a0089f3cbda819ea07985962b4082f9eba1e6ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x2f7dd00ffeee5057e125bc1328e2ee18a6ebc3dc`; ethereum `0xc473754a6e35cc4f45316f9faaef0a3a86d90e4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32db5c3d64aa7e100b73786000704aee61072981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x34643cb136dac519aaa0b47e7490489208c8f4a5`; ethereum `0x7096321899f6788ec180ad7bd5bb9afd0a78ab78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3dd1424949bfeb3af52bc85d87370e8fab521e38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4182cdf52e5e6894fe01e7d73522a4aebbeb55b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44afcf491d9bca179f9f99d7b11ec5519895f317` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x50a8ad29787a80d753d68e22b435f905d793c760`; ethereum `0x53a19d48d1cfb1499aaf8e26420006de224d4b26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50be59668d6a88878db5ee969ac717ee287d6538` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x512122f8b4d8100548e584b71623fdf57a3e86e6`; ethereum `0x8df0452267d6a166cb51967df5188d83d29d14fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x613c82a30b25a5751bfe31896354637b4e47503f`; ethereum `0xa11c3cac45606c5b341b729332c2fa31be896eb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b3ae150d151a2164ecb90b34566bb6318605d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x779e9d74c766ccb320ef01ea98b6ee014c5d6a6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8309fc65bb9fc1c3374b12038ab2b1b44b81eda0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85e5fde7c8ed862dd29aaa02a02a8469aaddd911` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89a7e370514328f5c8204d68c75eb5e194b8f77e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8db2a3b9966cdf2a0fcbfffbf896a1986a07ea00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dd8b12d55c73c08294664a5915475ed1c8b1f6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x922b2618dbc660a7edfa2880f650d2ef5d2afd45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93736af88195abbe9c8e0abeb53cf6550f0747f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95e5b977c8c33de5b3b5d2216f1097c2017bdf71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a09b10ee3d9ad46f38c9431cd784122b169f835` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f36c8a5518706dc233fe0a2d26bb893a2f07825` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f45ea5eb54c4a23ad684c425736ddcaef318886` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae9c4160ac49f03a0b28927ed250f28704372f5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0fe760f651e4098cc0b11572a44e1d15cb3b5f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8405b3af92e5ed5842be38b02c3d85b06176922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba50ddac6b2f5482ca064efac621e0c7c0f6a783` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb861b993f0d8522df73ce5a46bba9ab35f5d880` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0xbdadcb1f8b0f827f0250e51544e223d7d68429fe`; ethereum `0xdc23b633c23a9d6e55cb454c673f767bf65f920c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc02d47f45bbc45385bc4d9a73a0204100ab153f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5de9087e90f23955fb2fd3c19ec51001528aac3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5e9b52556046a8aaf5776a65612adf9e8f02219` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9479b552451805aa9cddc3f394a336261436edf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd37dd064da405b6b4bfcf5fbf8c2d7e420bcbf3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4f20ca9e3f2bbce83cb96a7467d3fbea176a3f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd63c04fce66d3280f18eadc3fc5aa24938c6ba2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd736879728b4157cacd5d65e1ac4826ff6f438ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf53302cc87dcf1838da13964adfdd11e6f76c496` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8dc82f7a3ee44f51cde2c7bf7076899136ce89a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c3497c91291f6a8db73efa7565a83f89ccb67d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5687ba62088aa4cd6a8df1930798fe510fd1ee0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x963b5bc11950ab4852e9c60992ec21827ebd0a34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd744320abd3bd4445dc3c90c889391bd454d5b30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe38d19b2950a386f44052ddc07fcb4a6d6b3ca10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe55744ebb196d0e4ddea70204142eaf517ef005a` | ❓ Unverified |
| UnnamedContract | unknown | swellchain | n/a | `0x8970a6a9eae065aa81a94e86ebcaf4f3d4dd6da1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Report_HEMI-PRO_FINAL_22.pdf](https://github.com/hemilabs/audit-reports/blob/master/Bitcoin_Tunnel/Audit_Report_HEMI-PRO_FINAL_22.pdf) | HEMI-PRO | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Quantstamp - BTC Tunnel - FinalReport (1).pdf](https://github.com/hemilabs/audit-reports/blob/master/Bitcoin_Tunnel/Quantstamp%20-%20BTC%20Tunnel%20-%20FinalReport%20(1).pdf) | Quantstamp | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Audit_Report_HEMI-TOK_FINAL_21.pdf](https://github.com/hemilabs/audit-reports/blob/master/Hemi_Token/Audit_Report_HEMI-TOK_FINAL_21.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [HemiToken - Final Report.pdf](https://github.com/hemilabs/audit-reports/blob/master/Hemi_Token/HemiToken%20-%20Final%20Report.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Audit_Report_HEMI-VOT_FINAL_21.pdf](https://github.com/hemilabs/audit-reports/blob/master/veHEMI/Audit_Report_HEMI-VOT_FINAL_21.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b`](./contracts/bsc-56/0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b/) | BinanceHemiOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90b9e5de5dbe8d5c882aac8c097fd5a235a0014f`](./contracts/ethereum-1/0x90b9e5de5dbe8d5c882aac8c097fd5a235a0014f/) | CoreFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a`](./contracts/ethereum-1/0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a/) | EnzoBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7efb3515d9ec4537fafca635a1de7da7a5c5c567`](./contracts/ethereum-1/0x7efb3515d9ec4537fafca635a1de7da7a5c5c567/) | EnzoNetwork | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x627524aec280300dfa58ddb30709a0f3810400c9`](./contracts/ethereum-1/0x627524aec280300dfa58ddb30709a0f3810400c9/) | GasPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6b71e26c5e0845f74c812102ca7114b6a896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | GnosisSafeProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4200000000000000000000000000000000000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | GovernanceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0795a3c4898d823946f953bd1234c0e7b7ff1026`](./contracts/bsc-56/0x0795a3c4898d823946f953bd1234c0e7b7ff1026/) | HemiLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03d9c4e4bc5d3678a9076cac50db0251d8676872`](./contracts/ethereum-1/0x03d9c4e4bc5d3678a9076cac50db0251d8676872/) | Initializer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e`](./contracts/ethereum-1/0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6daf3a3497d8abdfe12915add9829f83a79c0d51`](./contracts/ethereum-1/0x6daf3a3497d8abdfe12915add9829f83a79c0d51/) | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38e2a41ab14b382e0188c8368937ee392e852695`](./contracts/ethereum-1/0x38e2a41ab14b382e0188c8368937ee392e852695/) | LiquidationFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302`](./contracts/ethereum-1/0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302/) | MintSecurity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81d7dab8b95085034d9ce90958038251726b2c59`](./contracts/ethereum-1/0x81d7dab8b95085034d9ce90958038251726b2c59/) | MintStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42ff661af011939f699d67bd021d237ebcba9c2a`](./contracts/ethereum-1/0x42ff661af011939f699d67bd021d237ebcba9c2a/) | MIPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04db2da16318e616d28f0da7aa59eeb12acec72c`](./contracts/bsc-56/0x04db2da16318e616d28f0da7aa59eeb12acec72c/) | MockDstOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x32a21ec8ee93971d4b4093c0895fd841c7169a23`](./contracts/bsc-56/0x32a21ec8ee93971d4b4093c0895fd841c7169a23/) | MockLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90d3b9982c2fbc9ebb583e9906ec4e3449b9a9a2`](./contracts/ethereum-1/0x90d3b9982c2fbc9ebb583e9906ec4e3449b9a9a2/) | MultiCollateralHintHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e83fd30fb9df3cdceb07a834e890dc287d385ec`](./contracts/ethereum-1/0x3e83fd30fb9df3cdceb07a834e890dc287d385ec/) | MultiTroveGetter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10061d0593441ff74536158592e1be3f4c7b180c`](./contracts/bsc-56/0x10061d0593441ff74536158592e1be3f4c7b180c/) | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39a0005415256b9863afe2d55edcf75ecc3a4d7e`](./contracts/ethereum-1/0x39a0005415256b9863afe2d55edcf75ecc3a4d7e/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x613f36be58ba712b37474f4b82484d680d24ed20`](./contracts/ethereum-1/0x613f36be58ba712b37474f4b82484d680d24ed20/) | PreimageOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef5e87476c4ac90a0973a2bf114ac770c4e05c1e`](./contracts/ethereum-1/0xef5e87476c4ac90a0973a2bf114ac770c4e05c1e/) | PriceFeedAggregatorFacet | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf64af34e614955760c331fc055b25bcf9dc1ac09`](./contracts/ethereum-1/0xf64af34e614955760c331fc055b25bcf9dc1ac09/) | PriceFeedChainlink | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2863e3d0f29e2eec6adefc0df0d3171dad542c02`](./contracts/ethereum-1/0x2863e3d0f29e2eec6adefc0df0d3171dad542c02/) | RewardVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x56cabed729121977c0c4a94231fc945fa3acf261`](./contracts/ethereum-1/0x56cabed729121977c0c4a94231fc945fa3acf261/) | RewardVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f88f74f2474925df0be9ef93ca8c3671d9b935a`](./contracts/ethereum-1/0x5f88f74f2474925df0be9ef93ca8c3671d9b935a/) | RewardVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07bbc5a83b83a5c440d1caedbf1081426d0aa4ec`](./contracts/ethereum-1/0x07bbc5a83b83a5c440d1caedbf1081426d0aa4ec/) | SatoshiXApp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x980963c8ebb2840708be935b197b83c71256ba45`](./contracts/ethereum-1/0x980963c8ebb2840708be935b197b83c71256ba45/) | SmartVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x355961ace96134fe7ba72b24b24559e7ca4aed86`](./contracts/ethereum-1/0x355961ace96134fe7ba72b24b24559e7ca4aed86/) | SmartVaultManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23e727e4919eb9f11200197014ab96d03008ccff`](./contracts/ethereum-1/0x23e727e4919eb9f11200197014ab96d03008ccff/) | StabilityPoolFacet | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26cfabb6548e744219fa4b8923efd51f7352bb9e`](./contracts/ethereum-1/0x26cfabb6548e744219fa4b8923efd51f7352bb9e/) | TransferStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00072c48501f53cb2bb9efcdd7a0ee569cf9428f`](./contracts/ethereum-1/0x00072c48501f53cb2bb9efcdd7a0ee569cf9428f/) | TroveHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ab3cf1d5a8b8ec661eff615f2882c9938a34985`](./contracts/ethereum-1/0x8ab3cf1d5a8b8ec661eff615f2882c9938a34985/) | TroveManagerGetters | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03e77f120e5a36c5a6800a5731af37673d8e28db`](./contracts/ethereum-1/0x03e77f120e5a36c5a6800a5731af37673d8e28db/) | VeHemi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d1866b08a9cc2f3ecb927e10c838545f38457c3`](./contracts/ethereum-1/0x0d1866b08a9cc2f3ecb927e10c838545f38457c3/) | VeHemi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1770b9c7449369108b52dd3706cf373dcc2d3585`](./contracts/ethereum-1/0x1770b9c7449369108b52dd3706cf373dcc2d3585/) | VeHemi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17e42436446bc14094952b8dfa27dce8f01d8836`](./contracts/ethereum-1/0x17e42436446bc14094952b8dfa27dce8f01d8836/) | VeHemi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a6ec1f22b38c4c13cb79ab55494a9c86727b275`](./contracts/ethereum-1/0x1a6ec1f22b38c4c13cb79ab55494a9c86727b275/) | VeHemi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdee010e6f73e951de73484fc9dfffe12d7b9c5da`](./contracts/ethereum-1/0xdee010e6f73e951de73484fc9dfffe12d7b9c5da/) | VeHemiAragonAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 68 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [3959] Audit_Report_HEMI-PRO_FINAL_22.pdf
- [3960] Quantstamp - BTC Tunnel - FinalReport (1).pdf
- [11922] Audit_Report_HEMI-TOK_FINAL_21.pdf
- [11923] HemiToken - Final Report.pdf

Fork inheritance lineage and inherited audits are included when available.
