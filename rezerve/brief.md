# Agentic Audit Brief: Rezerve

## Project Overview

- Project: Rezerve (`rezerve`)
- Website: [https://rezerve.money](https://rezerve.money)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:46.077Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: base, bsc, ethereum, sonic
- Contract surface: 105 unique implementations (370 raw deployments)
- DeFi Llama TVL: $2,425,835.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 92 project-authored contract(s) across 4 chain(s); 3 ERC4626 vaults, 9 ERC20 tokens, 4 ERC721 NFTs, 7 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 22 common project-authored base contract(s) (appaccesscontrolled, univ4positionhelper, baseadapter). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 533; live-surface contracts included: 370 (339 live, 31 unknown).
- Excluded by liveness: 163 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/72 (1.4%)
- Deployed-live implementations: 74 of 105 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/74
- Verified + Unaudited implementations: 73
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 105
- Raw deployments: 370
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 1 | 1.4% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AppTreasury | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x00ff05...70db99`](./contracts/ethereum-1/0x00ff05abab62c88d5fa50583b08e35908b70db99/); ethereum `0x41d1ce...c85585`; sonic `0x374fc8...ac1f0e`; sonic `0x5728b5...b2936d`; sonic `0x953142...23fa9a`; sonic `0x9ccab5...42e43f`; sonic `0xdbaffa...c1af58`; sonic `0xfb1143...d58a6d` | ✅ Audited |

### ⚠️ Verified + Unaudited (73)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Adapter4626Oracle | operational_periphery | sonic | n/a | 6 deployments: ethereum `0xb34d5f...8a871b`; sonic [`0x20bee5...8ed4c2`](./contracts/sonic-146/0x20bee53adb73440c7d4f9c9a015997ff548ed4c2/); sonic `0x7d2804...a6337f`; sonic `0xe8ee6a...0c07d7`; sonic `0xe90a0e...22537a`; sonic `0xf576c9...2d1ebc` | ⚠️ Unaudited |
| Adapter4626OracleModified | operational_periphery | sonic | n/a | 3 deployments: sonic [`0x4dbaf5...3ea4ec`](./contracts/sonic-146/0x4dbaf550e8865a88bbd4cee7800d5142f23ea4ec/); sonic `0xae494c...6a73a8`; sonic `0xbab9e6...8e6be8` | ⚠️ Unaudited |
| AggWithStalenessOracle | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x19e771...0827d3`](./contracts/sonic-146/0x19e771531621b9132b93dcefcef3d048650827d3/); sonic `0xd19fe4...eef229` | ⚠️ Unaudited |
| AppAuthority | governance | sonic | n/a | 5 deployments: ethereum `0x43a38a...45417d`; ethereum `0xd4f70c...03d8c0`; ethereum `0xd9af86...bed0a2`; sonic [`0x07249b...e28af2`](./contracts/sonic-146/0x07249bd92625641f9e3dba360967c3b18ee28af2/); sonic `0xf06b93...5ef309` | ⚠️ Unaudited |
| AppBondDepository | unknown | sonic | n/a | 4 deployments: sonic [`0x401d83...43bde8`](./contracts/sonic-146/0x401d83457951ef2c195d56e7d4a8f2d72c43bde8/); sonic `0x978c79...be7afe`; sonic `0xabb677...239ec5`; sonic `0xca3661...f2d993` | ⚠️ Unaudited |
| AppBurner | unknown | ethereum | n/a | 5 deployments: ethereum [`0x4b03e5...e0c91b`](./contracts/ethereum-1/0x4b03e57e3e6f31531e1fe08eb9588e43cee0c91b/); ethereum `0x864f47...ea2e1a`; ethereum `0x9e84ac...eb68a8`; sonic `0x635ad3...d87270`; sonic `0xb379b4...d2a9d4` | ⚠️ Unaudited |
| AppConvertibles | unknown | ethereum | n/a | [`0x7094f2...f351a3`](./contracts/ethereum-1/0x7094f229bb1828ed8ecd7c87e1b4111d6bf351a3/) | ⚠️ Unaudited |
| AppOptions | unknown | ethereum | n/a | 2 deployments: ethereum [`0x13eea2...9bb056`](./contracts/ethereum-1/0x13eea2582b9e3964a260452e08f580ce199bb056/); ethereum `0xf3590d...90090a` | ⚠️ Unaudited |
| AppOracle | unknown | ethereum | n/a | 5 deployments: ethereum [`0x220774...54f1fc`](./contracts/ethereum-1/0x220774755570147101bdcd995386f8f27654f1fc/); ethereum `0x438f98...f69b66`; bsc `0x953e6b...cfaa34`; sonic `0x2da785...9973ea`; sonic `0x828848...74b5cc` | ⚠️ Unaudited |
| AppProxy | unknown | sonic | n/a | 5 deployments: sonic [`0x2d7075...f1194e`](./contracts/sonic-146/0x2d707598b1541a6096adaedefdefdd5f33f1194e/); sonic `0x37dcfa...9e4c13`; sonic `0x56ee21...bc779a`; sonic `0x5ec084...5426c4`; sonic `0xf9fade...c0ae3e` | ⚠️ Unaudited |
| AppReferrals | unknown | sonic | n/a | 4 deployments: sonic [`0x076d21...8ef95b`](./contracts/sonic-146/0x076d210be0faf9df327f286822c93acfe38ef95b/); sonic `0x428686...d243fb`; sonic `0x53476a...8d7616`; sonic `0x62ed74...ba1802` | ⚠️ Unaudited |
| AppStaking | unknown | sonic | n/a | 10 deployments: ethereum `0x21dd4a...dae56c`; ethereum `0x47c9f3...373f1d`; ethereum `0x57d105...f97867`; sonic [`0x0088f5...bdec8a`](./contracts/sonic-146/0x0088f5d8e27bc971f8f2696f8507efaf51bdec8a/); sonic `0x0d0210...afe5e3`; sonic `0x2927f0...1b78bf`; sonic `0x5813a0...59b1df`; sonic `0x5da462...0a7443`; sonic `0xca0786...ab93e8`; sonic `0xccb2e9...4a19b7` | ⚠️ Unaudited |
| AppStakingMigrator | periphery | ethereum | n/a | 2 deployments: ethereum [`0x926680...59606a`](./contracts/ethereum-1/0x926680fac98c264f11f1d61849354f927a59606a/); ethereum `0xe7a577...fab1aa` | ⚠️ Unaudited |
| AppTimelock | governance | sonic | n/a | [`0x616634...ff0fc7`](./contracts/sonic-146/0x616634e975dbcf4c3bdf25a5e0f8f37c4fff0fc7/) | ⚠️ Unaudited |
| AppUIHelperRead | periphery | sonic | n/a | 39 deployments: ethereum `0x13173e...debaf3`; ethereum `0x1bb0c2...385298`; ethereum `0x1d5c9b...08aabd`; ethereum `0x2d7075...f1194e`; ethereum `0x2eafbc...35ebc2`; ethereum `0x344f23...f14379`; ethereum `0x45bc62...46d1e0`; ethereum `0x49a7ed...c4d34c`; ethereum `0x5b9223...4dd0eb`; ethereum `0x71f5df...c946a8`; ethereum `0x88cc35...338c68`; ethereum `0xab6a74...fc107c`; ethereum `0xaf6053...91aae2`; ethereum `0xb64c1a...b17f4a`; ethereum `0xc47d50...da2b4b`; sonic [`0x03658c...150ebf`](./contracts/sonic-146/0x03658cbe90390308b2fe946b6feaa9d2e3150ebf/); sonic `0x157b01...9ebd99`; sonic `0x36e1ad...87296f`; sonic `0x372e22...ea7722`; sonic `0x3df951...50195d`; sonic `0x4853cd...337e40`; sonic `0x4d5af9...c9aa5e`; sonic `0x5e6750...c70526`; sonic `0x6e984d...9e8720`; sonic `0x6f94b2...a061bb`; sonic `0x739119...384e3b`; sonic `0x77b220...97fdfd`; sonic `0x80ea1f...efe434`; sonic `0x831c2a...203899`; sonic `0x8763b7...38ae71`; sonic `0x9181a1...5ae96a`; sonic `0x9426ca...721003`; sonic `0x9fb8fb...29e52b`; sonic `0xa28066...860f44`; sonic `0xb377d3...b4eba9`; sonic `0xda2056...6fa9d6`; sonic `0xdaa857...72aa1b`; sonic `0xe70de1...d9b376`; sonic `0xfef330...117788` | ⚠️ Unaudited |
| AppUIHelperWrite | periphery | sonic | n/a | 37 deployments: ethereum `0x057dd3...1d2df3`; ethereum `0x1ebcc9...92d849`; ethereum `0x34b05b...b493bc`; ethereum `0x4e3e26...fe19bf`; ethereum `0x634f07...4ac479`; ethereum `0x66d7ce...1bab03`; ethereum `0x798c50...c297e1`; ethereum `0x82c874...2a9ef8`; ethereum `0x833bce...81e827`; ethereum `0x87fe4f...e34184`; ethereum `0x99a619...c3b42b`; ethereum `0xabb677...239ec5`; ethereum `0xcad00c...101849`; ethereum `0xce73b5...b94e69`; ethereum `0xe4c8c2...2d11d9`; ethereum `0xeaf227...698557`; sonic [`0x03a883...22e2e1`](./contracts/sonic-146/0x03a883e220bbca1d4f0c180a3b2c96994b22e2e1/); sonic `0x18162c...b49078`; sonic `0x3b9663...622f4a`; sonic `0x4eec8b...6e8da5`; sonic `0x5023a2...e7464f`; sonic `0x56e50c...157c18`; sonic `0x5ad701...e3f7e3`; sonic `0x66eea7...c0ba5d`; sonic `0x7f65db...d7799a`; sonic `0x84a0b5...7d6c5d`; sonic `0x9638ee...9d89be`; sonic `0x970df8...3e5dd3`; sonic `0x99a619...c3b42b`; sonic `0x99e50a...7925db`; sonic `0xa7dbf3...25ef27`; sonic `0xc5fcd9...d4e21c`; sonic `0xe236f3...5680ce`; sonic `0xeb6cde...808e25`; sonic `0xebb64c...029d65`; sonic `0xed8ab5...fadc39`; sonic `0xfd4ad1...e2412a` | ⚠️ Unaudited |
| BalancerBorrowAndAdd | core_logic | ethereum | n/a | [`0x03a33d...ed5cdc`](./contracts/ethereum-1/0x03a33ded69e1c154267f1e6082804e901ded5cdc/) | ⚠️ Unaudited |
| BeaconOracle | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x3df300...f2fdcb`](./contracts/ethereum-1/0x3df3004635eebd70644ae2c8e11e604d86f2fdcb/); ethereum `0xaa131b...9169e4`; ethereum `0xb6cb30...d0cb2d`; ethereum `0xc06091...5ee6f5` | ⚠️ Unaudited |
| BeaconOracleV2CL | operational_periphery | ethereum | n/a | [`0xc46e15...acaf10`](./contracts/ethereum-1/0xc46e157ef92cde37c0f8044b65d892cbcdacaf10/) | ⚠️ Unaudited |
| BlackholeLP | unknown | sonic | n/a | 2 deployments: sonic [`0x536913...d4839c`](./contracts/sonic-146/0x5369135d0f9e661d7647d3b24b906d5fe9d4839c/); sonic `0xa063f9...760878` | ⚠️ Unaudited |
| BlankProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa597e7...0b803c`](./contracts/ethereum-1/0xa597e758b25bd077dbab880c712f49df170b803c/); sonic `0xc80e1e...78f9fc` | ⚠️ Unaudited |
| BoostedBalanceChecker | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3a41ec...76b14a`](./contracts/ethereum-1/0x3a41ec2c6477fd7943397790ae5fc3a09876b14a/); ethereum `0x744123...0d0e7c` | ⚠️ Unaudited |
| BridgeL1 | operational_periphery | ethereum | n/a | [`0x507427...bf99df`](./contracts/ethereum-1/0x507427db12766d70445c85e683efd30143bf99df/) | ⚠️ Unaudited |
| BridgeL1Reader | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x53f996...2fa879`](./contracts/ethereum-1/0x53f996129f35c456f2d4993c66382b2cb02fa879/); ethereum `0x5aa0bd...be3a38`; ethereum `0x73fe95...82c1c1`; ethereum `0x9096e1...862f32`; ethereum `0xaae0f7...aac097`; ethereum `0xb0c897...79b51b`; ethereum `0xc38115...f92f56`; ethereum `0xf818d6...90be5b` | ⚠️ Unaudited |
| BridgeL2 | operational_periphery | sonic | n/a | 3 deployments: sonic [`0x56f24c...c73ff7`](./contracts/sonic-146/0x56f24c5614fdc98d2cc4ca699d9b76e779c73ff7/); sonic `0x978dd6...36f105`; sonic `0xa48b92...a2a036` | ⚠️ Unaudited |
| BridgeL2Reader | operational_periphery | sonic | n/a | 6 deployments: sonic [`0x008219...67af7a`](./contracts/sonic-146/0x0082191c9cb127f69411ca49286a7c5ced67af7a/); sonic `0x325301...e5c421`; sonic `0x4d1745...65975c`; sonic `0xb2bbdb...ecae6a`; sonic `0xb49dd7...c04328`; sonic `0xdcd067...a20506` | ⚠️ Unaudited |
| BridgeUpdateExecutor | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x2f0a48...790b2b`](./contracts/ethereum-1/0x2f0a4803811db8bf12d92e3322343d5e6e790b2b/); ethereum `0x406cd1...f12057`; ethereum `0xdb8668...3a9418` | ⚠️ Unaudited |
| CappedOracle | operational_periphery | sonic | n/a | 13 deployments: sonic [`0x25052e...c28c6b`](./contracts/sonic-146/0x25052ec1888c9c7e9b5c6c83c6860178f6c28c6b/); sonic `0x2c23ec...78be5d`; sonic `0x6cfbed...0fcbd2`; sonic `0x7c5245...2e872b`; sonic `0x88da96...b8e887`; sonic `0x894d52...723a73`; sonic `0x906a4e...a65897`; sonic `0x98f1af...bce929`; sonic `0x9e65fd...38296a`; sonic `0xa13584...274fd6`; sonic `0xbaeb58...c31fe4`; sonic `0xc5050f...4bcc4a`; sonic `0xe0c7ee...bc2423` | ⚠️ Unaudited |
| CrossAdapter | adapter | sonic | n/a | 5 deployments: ethereum `0x55b3e0...d74328`; ethereum `0x8d5c27...6c78cd`; sonic [`0x3fa46d...072dc4`](./contracts/sonic-146/0x3fa46d3ca0f5e595e774a451fd417cf2a1072dc4/); sonic `0xdbe800...465a48`; sonic `0xf83b91...395a21` | ⚠️ Unaudited |
| DiaAdapterOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x6bdd86...a84db9`](./contracts/ethereum-1/0x6bdd865c63f842aa0d8b5489ad9a4a2c14a84db9/); sonic `0xd38199...f066a1` | ⚠️ Unaudited |
| DiaAdapterOracleCapped | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x114fd4...cc77ee`](./contracts/ethereum-1/0x114fd46ca2e90ca723f578ffdb76023e27cc77ee/); ethereum `0xce849e...f7d373` | ⚠️ Unaudited |
| ERC4626RateProvider | unknown | ethereum | n/a | 3 deployments: ethereum [`0xc5ea4b...1c2cc9`](./contracts/ethereum-1/0xc5ea4b3fe030d6da69462d026e4475fe121c2cc9/); ethereum `0xe1fd04...fb6a51`; ethereum `0xfb1800...83702a` | ⚠️ Unaudited |
| Euler4626Oracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x57e677...906524`](./contracts/ethereum-1/0x57e67762c06b4ba665c6d93eac4d74bfb3906524/); ethereum `0x72545e...1a84f4` | ⚠️ Unaudited |
| EVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x303615...d2f3ad`](./contracts/ethereum-1/0x3036155a3ed3e7f6fff1e96e88f1fe51b6d2f3ad/); ethereum `0xbafc1a...547724`; ethereum `0xc42d33...b57e8a` | ⚠️ Unaudited |
| FixedOracle | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x05710c...1b24ff`](./contracts/ethereum-1/0x05710c203c00a0a1325436930deb4d1edf1b24ff/); ethereum `0x25d77a...e451a8`; ethereum `0x56fe1d...36a1d7`; sonic `0xa26e1e...7578ca` | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x2cd4bd...ec5e37`](./contracts/ethereum-1/0x2cd4bdb9f9381e1c72c9bbeaa874552025ec5e37/); ethereum `0x7cefd6...3a83b5`; sonic `0x6811c1...9e1749`; sonic `0xc3ff08...8af153`; sonic `0xdb7cb0...03367b` | ⚠️ Unaudited |
| HoldersAnalysis | unknown | ethereum | n/a | 4 deployments: ethereum [`0x62006c...b65345`](./contracts/ethereum-1/0x62006cf760bf38c00a0cabf8cef9b1d85fb65345/); ethereum `0x8d0e27...49dc01`; ethereum `0xa43f77...193f22`; sonic `0xc24c31...8a2a58` | ⚠️ Unaudited |
| LoyaltyList | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9ec2dd...7dcd2e`](./contracts/ethereum-1/0x9ec2dd4342f2d0840989277a7cb5c1ff557dcd2e/); sonic `0xf4254e...443318` | ⚠️ Unaudited |
| lstRZROFTAdapter | adapter | ethereum | n/a | [`0xd3e536...d74652`](./contracts/ethereum-1/0xd3e536636ac493b9bf1f80de59dacf120bd74652/) | ⚠️ Unaudited |
| lstRZRSpotAggregator | token | sonic | n/a | [`0x424229...3f12c0`](./contracts/sonic-146/0x424229c11707dbebb48d855d0fbaa8432f3f12c0/) | ⚠️ Unaudited |
| ManualOracle4626E18 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x149f01...375200`](./contracts/ethereum-1/0x149f01cb92a8291fea2d81a3f9eca31c4a375200/); ethereum `0xa34d67...cb606c` | ⚠️ Unaudited |
| ManualOracleE18 | operational_periphery | sonic | n/a | 15 deployments: ethereum `0x61e3af...3748ca`; ethereum `0x7ca024...588357`; ethereum `0xa54088...00c6f5`; ethereum `0xfedfea...17418b`; sonic [`0x13253a...375bc6`](./contracts/sonic-146/0x13253ad8239614e0aa9c3c876b5d7d1a17375bc6/); sonic `0x501e10...7fe84e`; sonic `0x55c06b...d65cbf`; sonic `0x5c2c88...97923f`; sonic `0x6fbd09...de00c6`; sonic `0x77b98a...f698ba`; sonic `0x7bb3e8...975f89`; sonic `0x8a6493...ed0ac7`; sonic `0xa08c57...438724`; sonic `0xb15a7e...4fb46c`; sonic `0xd693dc...bee79e` | ⚠️ Unaudited |
| MoveTreasuryPosition | operational_periphery | sonic | n/a | [`0x3568b8...77937e`](./contracts/sonic-146/0x3568b8a04611328ff525705a18e4f5ae2677937e/) | ⚠️ Unaudited |
| OracleV2CL | operational_periphery | ethereum | n/a | [`0x30c07f...265f75`](./contracts/ethereum-1/0x30c07fe9f0765163ad6cb3627fc5db2cf2265f75/) | ⚠️ Unaudited |
| PermissionedERC20 | token | ethereum | n/a | 10 deployments: ethereum [`0x00eec2...3dea69`](./contracts/ethereum-1/0x00eec211868718f67b1d414fb8607afb7e3dea69/); ethereum `0x34abce...3c7314`; ethereum `0x3ab51e...6686ce`; ethereum `0x45e5f6...26fb20`; ethereum `0x63e52e...337d10`; ethereum `0x70c52a...67ea14`; ethereum `0x9a7ba7...b2998c`; ethereum `0xa599be...649f16`; ethereum `0xc3a45e...45e1c6`; ethereum `0xda51cc...3df0d0` | ⚠️ Unaudited |
| PermissionedERC20Factory | registry | ethereum | n/a | 2 deployments: ethereum [`0x0df76f...74494f`](./contracts/ethereum-1/0x0df76fe19b0f9e1603df6f7381e57014dc74494f/); ethereum `0x26d6ed...f0f3c3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | 4 deployments: ethereum `0x33812b...e08982`; bsc `0x9e7a07...10772b`; sonic `0xd9af86...bed0a2`; base [`0x07249b...e28af2`](./contracts/base-8453/0x07249bd92625641f9e3dba360967c3b18ee28af2/) | ⚠️ Unaudited |
| RateProviderOracle | operational_periphery | sonic | n/a | 6 deployments: ethereum `0x3a6ab9...b9a176`; ethereum `0x51e1e5...42504b`; ethereum `0x7d2ed2...20fef4`; ethereum `0xe2fbda...bf33d0`; sonic [`0x379b70...e30805`](./contracts/sonic-146/0x379b70ef4af6cbb548b210730082841eeee30805/); sonic `0x5547ed...44caab` | ⚠️ Unaudited |
| RebaseController | governance | ethereum | n/a | 10 deployments: ethereum [`0x01c8af...948095`](./contracts/ethereum-1/0x01c8afb4dd61821f8ce88b3739493ffde6948095/); ethereum `0x096bb2...b53276`; ethereum `0x18162c...b49078`; ethereum `0x2aee5c...db66e6`; ethereum `0x4c7e55...00eb13`; ethereum `0x92a65e...78b563`; sonic `0x1be068...147440`; sonic `0x1ebcc9...92d849`; sonic `0x2f567c...a9ac54`; sonic `0xcad00c...101849` | ⚠️ Unaudited |
| RZR | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb44444...cbd1f5`](./contracts/ethereum-1/0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5/); sonic [`0xb44444...cbd1f5`](./contracts/sonic-146/0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5/) | ⚠️ Unaudited |
| RZROFTAdapter | adapter | sonic | n/a | 2 deployments: ethereum `0xe97493...f0b53c`; sonic [`0x6419f0...bb2f3a`](./contracts/sonic-146/0x6419f05d56944dd140954be8ad9907304abb2f3a/) | ⚠️ Unaudited |
| RZRSpotAggregator | unknown | sonic | n/a | [`0x617201...0847bb`](./contracts/sonic-146/0x61720115a507d7903e5b5cdf9d4644a6b90847bb/) | ⚠️ Unaudited |
| RZRTWAPOracle | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x81707a...800609`](./contracts/sonic-146/0x81707a5ce2139df7f7d768b4d581fd82bd800609/); sonic `0xb8cdaf...c75c99` | ⚠️ Unaudited |
| ShadowAdapter | adapter | sonic | n/a | 2 deployments: sonic [`0x13173e...debaf3`](./contracts/sonic-146/0x13173edbd7a290f593d70cfd4f4f8e6eafdebaf3/); sonic `0x641cac...e287cc` | ⚠️ Unaudited |
| ShadowLPOracleSecondary | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x41f145...cc8284`](./contracts/sonic-146/0x41f145701a711d87ddc07e210dff6d751dcc8284/); sonic `0xa1ef32...bf908d` | ⚠️ Unaudited |
| SpectraLPOracle | operational_periphery | sonic | n/a | 3 deployments: ethereum `0x8a3f01...0f9333`; sonic [`0x4825c5...3ebcaf`](./contracts/sonic-146/0x4825c54beeb5f4d6110126fa48025316723ebcaf/); sonic `0x69357b...8ffb37` | ⚠️ Unaudited |
| sRZR | unknown | sonic | n/a | 3 deployments: ethereum `0x5de77c...f70aaf`; sonic [`0x33812b...e08982`](./contracts/sonic-146/0x33812b28d85aaaf53e2661694199e512f3e08982/); sonic `0x470ce7...f96710` | ⚠️ Unaudited |
| Staking4626 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x3f76c1...6eb7bc`](./contracts/ethereum-1/0x3f76c1bcfe294004dc05306c6d3e35e7196eb7bc/); ethereum `0x5aac50...dfe3cc`; ethereum `0x6521fa...029f05`; sonic `0x73bc78...7cf0e6` | ⚠️ Unaudited |
| Staking4626L2 | unknown | sonic | n/a | 2 deployments: sonic [`0x5ed69d...92f7ba`](./contracts/sonic-146/0x5ed69d02b9675613e411b48dc9140bd31992f7ba/); sonic `0xa8a293...0defda` | ⚠️ Unaudited |
| StakingDistributionLogic | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3e4df7...b6e802`](./contracts/ethereum-1/0x3e4df75d89c21a76718b1613a2967a3cd9b6e802/); sonic `0x7c8b59...944552`; sonic `0x8ae837...8d2cb5` | ⚠️ Unaudited |
| TokenList | token | base | n/a | 6 deployments: ethereum `0xb68b2b...f67b5c`; bsc `0x3b3c53...1126e0`; sonic `0x09639d...2fe363`; sonic `0x1e3e7b...5ed9c7`; sonic `0xe8cb54...fd9917`; base [`0x06f961...dc03ae`](./contracts/base-8453/0x06f9617e604019af5e28c9e2e75f0886bbdc03ae/) | ⚠️ Unaudited |
| TotalReservesOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x7f65db...d7799a`](./contracts/ethereum-1/0x7f65db983bc52ff3fa126c5f2b121fb234d7799a/); ethereum `0xfeab18...9f9159` | ⚠️ Unaudited |
| TotalSupplyOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0000e2...d3ece1`](./contracts/ethereum-1/0x0000e24a95cbaa41d2772c349cba2ceeb0d3ece1/); ethereum `0x5deb69...ec79c0` | ⚠️ Unaudited |
| TwapOracleV3 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xbaeb58...c31fe4`](./contracts/ethereum-1/0xbaeb5800f47462283b2da273a5688246fdc31fe4/); ethereum `0xe90a0e...22537a` | ⚠️ Unaudited |
| UnbackedAccounting | unknown | sonic | n/a | [`0x44421a...98f423`](./contracts/sonic-146/0x44421a71a55b684c11b85880b61377df6598f423/) | ⚠️ Unaudited |
| UniV2LPOracle | operational_periphery | sonic | n/a | 12 deployments: ethereum `0x5d4dca...8f5137`; sonic [`0x1ec695...a84951`](./contracts/sonic-146/0x1ec695a8571140dfb35b28769b60ca7d8ea84951/); sonic `0x1fc91c...fea5bc`; sonic `0x273ac3...c8f4e0`; sonic `0x4cbe17...fb499e`; sonic `0x5e7c3e...e9ecd9`; sonic `0x8478a8...4ebf6f`; sonic `0x91cac1...73b8ce`; sonic `0xb05993...3953b0`; sonic `0xb0b59b...e37f00`; sonic `0xb17878...18e03d`; sonic `0xef6eb7...4d85aa` | ⚠️ Unaudited |
| UniV4LPOracle | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x097a20...246c59`](./contracts/ethereum-1/0x097a20fc1f4e604371ec85eaca10adaf77246c59/); ethereum `0x1e884f...021571`; ethereum `0xb0c7b4...0314d9` | ⚠️ Unaudited |
| UniV4LPPosOracle | operational_periphery | ethereum | n/a | [`0x1b9f57...dea03f`](./contracts/ethereum-1/0x1b9f57975ede2f8b99c5ca3cb79137be2cdea03f/) | ⚠️ Unaudited |
| UniV4LPSpotOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x4e91f8...b289d6`](./contracts/ethereum-1/0x4e91f8334833587c542e40d6f9a4c6590bb289d6/); ethereum `0x980288...d287bf` | ⚠️ Unaudited |
| USD69Treasury | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x0fd35f...3c7fe8`](./contracts/ethereum-1/0x0fd35fe4758ea1ab97a7fbec42f6f958c83c7fe8/); ethereum `0xf83b91...395a21` | ⚠️ Unaudited |
| USDTreasury | operational_periphery | ethereum | n/a | [`0xa70850...e85530`](./contracts/ethereum-1/0xa7085039fdba2c3c30af5dcc41465da027e85530/) | ⚠️ Unaudited |
| UserRoleChecker | unknown | sonic | n/a | 6 deployments: ethereum `0x1ae9d2...226bd4`; ethereum `0x1b5b67...e87af8`; ethereum `0xa4ca16...be2d77`; ethereum `0xdb4727...0372e3`; ethereum `0xfe64ec...233d92`; sonic [`0x11d3ad...de3b21`](./contracts/sonic-146/0x11d3ada3bc874500c1e4e15e79c4b924edde3b21/) | ⚠️ Unaudited |
| YieldLogic | unknown | sonic | n/a | 3 deployments: ethereum `0x739f49...dc1b2c`; sonic [`0x53bdc5...2662cd`](./contracts/sonic-146/0x53bdc57b2da05cd6047428b1e0fa573aa22662cd/); sonic `0xc47d50...da2b4b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x249219...6ac924` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8977f1...bee05d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa13584...274fd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa37518...9f7d7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf96a8...d5aea0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfe946...be1f9d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0d3e8...c3116f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb8922...2bb874` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x397c75...7d0b0d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b1fc5...47ea21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95186f...2f8383` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd05589...3f5513` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe10abd...fe885a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd3faa...37b404` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x00cf23...156a38` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1426ad...898db3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x14df43...9f94cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x17b58a...1b5392` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2ae19f...29ad3c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x34648a...c733ca` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x575406...5f52a1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x60b4e2...79916b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x67a2b9...8c96fb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7198f2...a81426` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8c7f6b...fa6b89` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb0946a...9d5a69` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb3e634...361c32` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xce78ca...e57412` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd57e1c...8462f1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf6a15f...283229` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe377bf...bb23c5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-06-21-halborn.pdf](https://github.com/rezervemoney/code/blob/main/audits/2025-06-21-halborn.pdf) | Halborn | Audit | 2025-06 | aging | Direct | contract_name | 1 | n/a |
| [PeckShield-Audit-Report-OlympusDAO-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-OlympusDAO-v1.0.pdf) | PeckShield | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [omniscia.io/reports/olympus-dao-protocol-v2](https://omniscia.io/reports/olympus-dao-protocol-v2) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x20bee5...8ed4c2`](./contracts/sonic-146/0x20bee53adb73440c7d4f9c9a015997ff548ed4c2/) | Adapter4626Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4dbaf5...3ea4ec`](./contracts/sonic-146/0x4dbaf550e8865a88bbd4cee7800d5142f23ea4ec/) | Adapter4626OracleModified | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x19e771...0827d3`](./contracts/sonic-146/0x19e771531621b9132b93dcefcef3d048650827d3/) | AggWithStalenessOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x07249b...e28af2`](./contracts/sonic-146/0x07249bd92625641f9e3dba360967c3b18ee28af2/) | AppAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x401d83...43bde8`](./contracts/sonic-146/0x401d83457951ef2c195d56e7d4a8f2d72c43bde8/) | AppBondDepository | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b03e5...e0c91b`](./contracts/ethereum-1/0x4b03e57e3e6f31531e1fe08eb9588e43cee0c91b/) | AppBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7094f2...f351a3`](./contracts/ethereum-1/0x7094f229bb1828ed8ecd7c87e1b4111d6bf351a3/) | AppConvertibles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13eea2...9bb056`](./contracts/ethereum-1/0x13eea2582b9e3964a260452e08f580ce199bb056/) | AppOptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x220774...54f1fc`](./contracts/ethereum-1/0x220774755570147101bdcd995386f8f27654f1fc/) | AppOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2d7075...f1194e`](./contracts/sonic-146/0x2d707598b1541a6096adaedefdefdd5f33f1194e/) | AppProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x076d21...8ef95b`](./contracts/sonic-146/0x076d210be0faf9df327f286822c93acfe38ef95b/) | AppReferrals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0088f5...bdec8a`](./contracts/sonic-146/0x0088f5d8e27bc971f8f2696f8507efaf51bdec8a/) | AppStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x926680...59606a`](./contracts/ethereum-1/0x926680fac98c264f11f1d61849354f927a59606a/) | AppStakingMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x616634...ff0fc7`](./contracts/sonic-146/0x616634e975dbcf4c3bdf25a5e0f8f37c4fff0fc7/) | AppTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x03658c...150ebf`](./contracts/sonic-146/0x03658cbe90390308b2fe946b6feaa9d2e3150ebf/) | AppUIHelperRead | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x03a883...22e2e1`](./contracts/sonic-146/0x03a883e220bbca1d4f0c180a3b2c96994b22e2e1/) | AppUIHelperWrite | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3df300...f2fdcb`](./contracts/ethereum-1/0x3df3004635eebd70644ae2c8e11e604d86f2fdcb/) | BeaconOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc46e15...acaf10`](./contracts/ethereum-1/0xc46e157ef92cde37c0f8044b65d892cbcdacaf10/) | BeaconOracleV2CL | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x536913...d4839c`](./contracts/sonic-146/0x5369135d0f9e661d7647d3b24b906d5fe9d4839c/) | BlackholeLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa597e7...0b803c`](./contracts/ethereum-1/0xa597e758b25bd077dbab880c712f49df170b803c/) | BlankProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a41ec...76b14a`](./contracts/ethereum-1/0x3a41ec2c6477fd7943397790ae5fc3a09876b14a/) | BoostedBalanceChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x507427...bf99df`](./contracts/ethereum-1/0x507427db12766d70445c85e683efd30143bf99df/) | BridgeL1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53f996...2fa879`](./contracts/ethereum-1/0x53f996129f35c456f2d4993c66382b2cb02fa879/) | BridgeL1Reader | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x56f24c...c73ff7`](./contracts/sonic-146/0x56f24c5614fdc98d2cc4ca699d9b76e779c73ff7/) | BridgeL2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x008219...67af7a`](./contracts/sonic-146/0x0082191c9cb127f69411ca49286a7c5ced67af7a/) | BridgeL2Reader | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f0a48...790b2b`](./contracts/ethereum-1/0x2f0a4803811db8bf12d92e3322343d5e6e790b2b/) | BridgeUpdateExecutor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x25052e...c28c6b`](./contracts/sonic-146/0x25052ec1888c9c7e9b5c6c83c6860178f6c28c6b/) | CappedOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3fa46d...072dc4`](./contracts/sonic-146/0x3fa46d3ca0f5e595e774a451fd417cf2a1072dc4/) | CrossAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bdd86...a84db9`](./contracts/ethereum-1/0x6bdd865c63f842aa0d8b5489ad9a4a2c14a84db9/) | DiaAdapterOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x114fd4...cc77ee`](./contracts/ethereum-1/0x114fd46ca2e90ca723f578ffdb76023e27cc77ee/) | DiaAdapterOracleCapped | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5ea4b...1c2cc9`](./contracts/ethereum-1/0xc5ea4b3fe030d6da69462d026e4475fe121c2cc9/) | ERC4626RateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57e677...906524`](./contracts/ethereum-1/0x57e67762c06b4ba665c6d93eac4d74bfb3906524/) | Euler4626Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x303615...d2f3ad`](./contracts/ethereum-1/0x3036155a3ed3e7f6fff1e96e88f1fe51b6d2f3ad/) | EVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05710c...1b24ff`](./contracts/ethereum-1/0x05710c203c00a0a1325436930deb4d1edf1b24ff/) | FixedOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cd4bd...ec5e37`](./contracts/ethereum-1/0x2cd4bdb9f9381e1c72c9bbeaa874552025ec5e37/) | FixedRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62006c...b65345`](./contracts/ethereum-1/0x62006cf760bf38c00a0cabf8cef9b1d85fb65345/) | HoldersAnalysis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ec2dd...7dcd2e`](./contracts/ethereum-1/0x9ec2dd4342f2d0840989277a7cb5c1ff557dcd2e/) | LoyaltyList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3e536...d74652`](./contracts/ethereum-1/0xd3e536636ac493b9bf1f80de59dacf120bd74652/) | lstRZROFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x424229...3f12c0`](./contracts/sonic-146/0x424229c11707dbebb48d855d0fbaa8432f3f12c0/) | lstRZRSpotAggregator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x149f01...375200`](./contracts/ethereum-1/0x149f01cb92a8291fea2d81a3f9eca31c4a375200/) | ManualOracle4626E18 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x13253a...375bc6`](./contracts/sonic-146/0x13253ad8239614e0aa9c3c876b5d7d1a17375bc6/) | ManualOracleE18 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3568b8...77937e`](./contracts/sonic-146/0x3568b8a04611328ff525705a18e4f5ae2677937e/) | MoveTreasuryPosition | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30c07f...265f75`](./contracts/ethereum-1/0x30c07fe9f0765163ad6cb3627fc5db2cf2265f75/) | OracleV2CL | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00eec2...3dea69`](./contracts/ethereum-1/0x00eec211868718f67b1d414fb8607afb7e3dea69/) | PermissionedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0df76f...74494f`](./contracts/ethereum-1/0x0df76fe19b0f9e1603df6f7381e57014dc74494f/) | PermissionedERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x379b70...e30805`](./contracts/sonic-146/0x379b70ef4af6cbb548b210730082841eeee30805/) | RateProviderOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01c8af...948095`](./contracts/ethereum-1/0x01c8afb4dd61821f8ce88b3739493ffde6948095/) | RebaseController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb44444...cbd1f5`](./contracts/ethereum-1/0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5/) | RZR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6419f0...bb2f3a`](./contracts/sonic-146/0x6419f05d56944dd140954be8ad9907304abb2f3a/) | RZROFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x617201...0847bb`](./contracts/sonic-146/0x61720115a507d7903e5b5cdf9d4644a6b90847bb/) | RZRSpotAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x81707a...800609`](./contracts/sonic-146/0x81707a5ce2139df7f7d768b4d581fd82bd800609/) | RZRTWAPOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x13173e...debaf3`](./contracts/sonic-146/0x13173edbd7a290f593d70cfd4f4f8e6eafdebaf3/) | ShadowAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x41f145...cc8284`](./contracts/sonic-146/0x41f145701a711d87ddc07e210dff6d751dcc8284/) | ShadowLPOracleSecondary | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4825c5...3ebcaf`](./contracts/sonic-146/0x4825c54beeb5f4d6110126fa48025316723ebcaf/) | SpectraLPOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x33812b...e08982`](./contracts/sonic-146/0x33812b28d85aaaf53e2661694199e512f3e08982/) | sRZR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f76c1...6eb7bc`](./contracts/ethereum-1/0x3f76c1bcfe294004dc05306c6d3e35e7196eb7bc/) | Staking4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5ed69d...92f7ba`](./contracts/sonic-146/0x5ed69d02b9675613e411b48dc9140bd31992f7ba/) | Staking4626L2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e4df7...b6e802`](./contracts/ethereum-1/0x3e4df75d89c21a76718b1613a2967a3cd9b6e802/) | StakingDistributionLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06f961...dc03ae`](./contracts/base-8453/0x06f9617e604019af5e28c9e2e75f0886bbdc03ae/) | TokenList | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f65db...d7799a`](./contracts/ethereum-1/0x7f65db983bc52ff3fa126c5f2b121fb234d7799a/) | TotalReservesOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0000e2...d3ece1`](./contracts/ethereum-1/0x0000e24a95cbaa41d2772c349cba2ceeb0d3ece1/) | TotalSupplyOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbaeb58...c31fe4`](./contracts/ethereum-1/0xbaeb5800f47462283b2da273a5688246fdc31fe4/) | TwapOracleV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x44421a...98f423`](./contracts/sonic-146/0x44421a71a55b684c11b85880b61377df6598f423/) | UnbackedAccounting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1ec695...a84951`](./contracts/sonic-146/0x1ec695a8571140dfb35b28769b60ca7d8ea84951/) | UniV2LPOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x097a20...246c59`](./contracts/ethereum-1/0x097a20fc1f4e604371ec85eaca10adaf77246c59/) | UniV4LPOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b9f57...dea03f`](./contracts/ethereum-1/0x1b9f57975ede2f8b99c5ca3cb79137be2cdea03f/) | UniV4LPPosOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e91f8...b289d6`](./contracts/ethereum-1/0x4e91f8334833587c542e40d6f9a4c6590bb289d6/) | UniV4LPSpotOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fd35f...3c7fe8`](./contracts/ethereum-1/0x0fd35fe4758ea1ab97a7fbec42f6f958c83c7fe8/) | USD69Treasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa70850...e85530`](./contracts/ethereum-1/0xa7085039fdba2c3c30af5dcc41465da027e85530/) | USDTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x11d3ad...de3b21`](./contracts/sonic-146/0x11d3ada3bc874500c1e4e15e79c4b924edde3b21/) | UserRoleChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x53bdc5...2662cd`](./contracts/sonic-146/0x53bdc57b2da05cd6047428b1e0fa573aa22662cd/) | YieldLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [2809] PeckShield-Audit-Report-OlympusDAO-v1.0.pdf
- [2810] omniscia.io/reports/olympus-dao-protocol-v2

Fork inheritance lineage and inherited audits are included when available.
