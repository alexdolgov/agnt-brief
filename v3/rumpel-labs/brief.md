# Agentic Audit Brief: Rumpel Labs

## Project Overview

- Project: Rumpel Labs (`rumpel-labs`)
- Website: [https://www.rumpel.xyz](https://www.rumpel.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:46.481Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: ethereum
- Contract surface: 134 unique implementations (289 raw deployments)
- DeFi Llama TVL: $1,428,121.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Synthetics. Structurally: 161 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 30 ERC20 tokens, 3 ERC721 NFTs, 3 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 68 common project-authored base contract(s) (ethvault, vaultimmutables, vaultadmin). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 361; live-surface contracts included: 263 (239 live, 24 unknown).
- Excluded by liveness: 98 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/115 (0.9%)
- Deployed-live implementations: 115 of 134 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/116
- Verified + Unaudited implementations: 115
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 134
- Raw deployments: 289
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Darklinear | Tier 2 | 1 | 0.9% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RumpelWalletFactory | registry | ethereum | n/a | [`0x5774ab...db2937`](./contracts/ethereum-1/0x5774abcf415f34592514698eb075051e97db2937/) | ✅ Audited |

### ⚠️ Verified + Unaudited (115)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3TreasuryConnector | operational_periphery | ethereum | n/a | [`0x91eda2...03c8ca`](./contracts/ethereum-1/0x91eda28735ce089a8b5133476263c3fb8303c8ca/) | ⚠️ Unaudited |
| AccessControlManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4195ed...b6bc56`](./contracts/ethereum-1/0x4195ed6e112cbddc1adf7271047dba4e6bb6bc56/); ethereum `0x796592...e3333f` | ⚠️ Unaudited |
| AccessControlManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x527d6d...855d23`](./contracts/ethereum-1/0x527d6db79bff473b8dd722429bdb3b0c8b855d23/); ethereum `0x52b5f5...8a7d11` | ⚠️ Unaudited |
| AccessControlManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x625087...b95eac`](./contracts/ethereum-1/0x625087d72c762254a72cb22cc2eca40da6b95eac/); ethereum `0xbb7b99...593e64` | ⚠️ Unaudited |
| AnchorageTokenUSDtb | token | ethereum | n/a | [`0xc13919...18ac1c`](./contracts/ethereum-1/0xc139190f447e929f090edeb554d95abb8b18ac1c/) | ⚠️ Unaudited |
| AuraSwEthBbAWethSYV2 | unknown | ethereum | n/a | [`0xcb6ea7...27b96b`](./contracts/ethereum-1/0xcb6ea7fddfdf2afc2bc6bf715185a33f8e27b96b/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | [`0x917cee...909d88`](./contracts/ethereum-1/0x917cee801a67f933f2e6b33fc0cd1ed2d5909d88/) | ⚠️ Unaudited |
| DefaultCollateral | unknown | ethereum | n/a | 14 deployments: ethereum [`0x03bf48...ffa5ac`](./contracts/ethereum-1/0x03bf48b8a1b37fbead1ecabcf15b98b924ffa5ac/); ethereum `0x0c969c...99032c`; ethereum `0x19d0d8...91939a`; ethereum `0x21dbba...1d2c7c`; ethereum `0x422f5a...695f85`; ethereum `0x475d3e...7c304a`; ethereum `0x5198cb...2769d2`; ethereum `0x52cb8a...b8ab2a`; ethereum `0x594380...17bd4d`; ethereum `0x940750...0843fa`; ethereum `0x971e5b...f82618`; ethereum `0x9c0823...64f448`; ethereum `0xb09a50...9bad1c`; ethereum `0xe39b5f...9fcc84` | ⚠️ Unaudited |
| DepositDataRegistry | registry | ethereum | n/a | [`0x75ab6d...35223e`](./contracts/ethereum-1/0x75ab6ddce07556639333d3df1eaa684f5735223e/) | ⚠️ Unaudited |
| DepositManager | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2a41d5...92ea28`](./contracts/ethereum-1/0x2a41d539d5a599a6ea6a79e32bd047277892ea28/); ethereum `0x38956b...8d80a7`; ethereum `0xb987fa...370df6` | ⚠️ Unaudited |
| DepositManager | unknown | ethereum | n/a | [`0x5e6342...9a4889`](./contracts/ethereum-1/0x5e6342d8090665be14eeb8154c8a87b7249a4889/) | ⚠️ Unaudited |
| DepositManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb3d9cf...5b8f39`](./contracts/ethereum-1/0xb3d9cf8e163bbc840195a97e81f8a34e295b8f39/); ethereum `0xeee620...f4524b` | ⚠️ Unaudited |
| DineroTreasuryConnector | unknown | ethereum | n/a | 2 deployments: ethereum [`0x75ec06...493c70`](./contracts/ethereum-1/0x75ec066efb238cf211baa73b28db539541493c70/); ethereum `0x9971f7...0af812` | ⚠️ Unaudited |
| DVV | unknown | ethereum | n/a | [`0x5e362e...85430b`](./contracts/ethereum-1/0x5e362eb2c0706bd1d134689ec75176018385430b/) | ⚠️ Unaudited |
| EigenLayerManager | unknown | ethereum | n/a | [`0xc94cff...6d0936`](./contracts/ethereum-1/0xc94cffd5249df4008a043ee61e13f19af16d0936/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x574952...42139a`](./contracts/ethereum-1/0x574952ec88b2fc271d0c0db130794c86ea42139a/); ethereum `0x5c4606...f59219` | ⚠️ Unaudited |
| EthBlocklistErc20Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0b4f6b...099556`](./contracts/ethereum-1/0x0b4f6bfb694790051e0203db83edbb5888099556/); ethereum `0x5f31ed...058988` | ⚠️ Unaudited |
| EthBlocklistErc20Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x84d44a...311e9e`](./contracts/ethereum-1/0x84d44a696539b3ef4162184fb8ab97596a311e9e/); ethereum `0xc25529...30f14a` | ⚠️ Unaudited |
| EthBlocklistVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x00e3af...d4cd3c`](./contracts/ethereum-1/0x00e3af59e2496d030e5b2c629784db284fd4cd3c/); ethereum `0x2d29f3...d4bcad`; ethereum `0xd19e4b...9c8478` | ⚠️ Unaudited |
| EthenaLPStaking | unknown | ethereum | n/a | [`0x8707f2...cfc512`](./contracts/ethereum-1/0x8707f238936c12c309bfc2b9959c35828acfc512/) | ⚠️ Unaudited |
| EthErc20Vault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3acdbd...7646e9`](./contracts/ethereum-1/0x3acdbdbf0459d376df9378c02af50c83dc7646e9/); ethereum `0x7e5198...ceb5d5`; ethereum `0xca8665...d98207` | ⚠️ Unaudited |
| EthErc20Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6ddc10...26cb53`](./contracts/ethereum-1/0x6ddc10eeeebbbcf00e784ba44fe4b038af26cb53/); ethereum `0x8ee00c...6773de` | ⚠️ Unaudited |
| EthGenesisVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0x124c33...510928`](./contracts/ethereum-1/0x124c33d07f94b31adf87c12f7ca3a586d3510928/); ethereum `0x2d491b...135f31`; ethereum `0x7aa02b...549733`; ethereum `0x9481a4...2fabd7` | ⚠️ Unaudited |
| EthGenesisVault | core_logic | ethereum | n/a | [`0xac0f90...652885`](./contracts/ethereum-1/0xac0f906e433d58fa868f936e8a43230473652885/) | ⚠️ Unaudited |
| EthOsTokenVaultEscrow | unknown | ethereum | n/a | [`0x09e842...763605`](./contracts/ethereum-1/0x09e84205df7c68907e619d07afd90143c5763605/) | ⚠️ Unaudited |
| EthPrivErc20Vault | unknown | ethereum | n/a | 4 deployments: ethereum [`0x28f325...429e71`](./contracts/ethereum-1/0x28f325dd287a5984b754d34cfca38af3a8429e71/); ethereum `0x453056...668e3e`; ethereum `0x9488a7...558c88`; ethereum `0xf5f205...1ba69a` | ⚠️ Unaudited |
| EthPrivVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0x135f45...47a035`](./contracts/ethereum-1/0x135f45e0179dd928e73422b40bdc6c5d7047a035/); ethereum `0x81ab00...57798c`; ethereum `0xb1bfaf...8197fb`; ethereum `0xb53a6c...fbf3bc` | ⚠️ Unaudited |
| EthRestakeBlocklistErc20Vault | unknown | ethereum | n/a | [`0x5fcd8b...d49e4e`](./contracts/ethereum-1/0x5fcd8bb2e3dde5809b2106039b741c041bd49e4e/) | ⚠️ Unaudited |
| EthRestakeBlocklistVault | unknown | ethereum | n/a | [`0x3e3037...addb67`](./contracts/ethereum-1/0x3e30370cabd4b4d95be17706d840ff9de1addb67/) | ⚠️ Unaudited |
| EthRestakeErc20Vault | unknown | ethereum | n/a | [`0x215f4c...b0eee4`](./contracts/ethereum-1/0x215f4c69c3d1461c7aa38c9c73c27e10cfb0eee4/) | ⚠️ Unaudited |
| EthRestakePrivErc20Vault | unknown | ethereum | n/a | [`0xedebe7...c36ee5`](./contracts/ethereum-1/0xedebe792c6190be612cbe97f628137faa8c36ee5/) | ⚠️ Unaudited |
| EthRestakePrivVault | unknown | ethereum | n/a | [`0x792ff3...25e353`](./contracts/ethereum-1/0x792ff341e1db4ab20fbfb93c0fc071501525e353/) | ⚠️ Unaudited |
| EthRestakeVault | unknown | ethereum | n/a | [`0x59adb4...e073bb`](./contracts/ethereum-1/0x59adb46407ebf4cba923f91f2c06acc4b2e073bb/) | ⚠️ Unaudited |
| EthRestakeVaultFactory | unknown | ethereum | n/a | 6 deployments: ethereum [`0x026df3...d11b2c`](./contracts/ethereum-1/0x026df36ec050e7f473cbfc30aa42946d3ed11b2c/); ethereum `0x32634d...4c9fce`; ethereum `0x44ecc3...c565e1`; ethereum `0x6a2835...cc31e1`; ethereum `0x807305...d6f0af`; ethereum `0xf63666...6bf3a2` | ⚠️ Unaudited |
| EthVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0cb2cb...5cae78`](./contracts/ethereum-1/0x0cb2cbdf9a030ffbdea6f20a019f1feaca5cae78/); ethereum `0x35dc75...2ca6cf`; ethereum `0xba0b5b...ccff23`; ethereum `0xdecb60...610f8f` | ⚠️ Unaudited |
| EthVaultFactory | unknown | ethereum | n/a | 18 deployments: ethereum [`0x170618...8dfe5e`](./contracts/ethereum-1/0x170618936cd96b1ed8112ec3d3778374b38dfe5e/); ethereum `0x1be3ad...41b07c`; ethereum `0x2a0335...667960`; ethereum `0x42fe3b...07f699`; ethereum `0x4e3d81...774017`; ethereum `0x551805...e2ee7d`; ethereum `0x58fdd3...3a2949`; ethereum `0x7a4f99...1cba4a`; ethereum `0x875059...5f1bb8`; ethereum `0x96fff3...e175ee`; ethereum `0xb7832c...f4c896`; ethereum `0xd2468d...8f2cba`; ethereum `0xdada5a...659fcc`; ethereum `0xe84183...b5bb11`; ethereum `0xe9f3e6...27ba0f`; ethereum `0xf3c94c...daf3b8`; ethereum `0xfaa059...715d53`; ethereum `0xff0650...9362ca` | ⚠️ Unaudited |
| EVault | core_logic | ethereum | n/a | [`0x9f12d2...1f9899`](./contracts/ethereum-1/0x9f12d29c7cc72bb3d237e2d042a6d890421f9899/) | ⚠️ Unaudited |
| ExternalRequestsCoordinator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x36c9b5...76c043`](./contracts/ethereum-1/0x36c9b5e8f039381d1da79b94a206af8bc076c043/); ethereum `0xf47af3...82ba80` | ⚠️ Unaudited |
| ExternalRequestsManager | governance | ethereum | n/a | [`0x10f4d4...dfc872`](./contracts/ethereum-1/0x10f4d4ead6bcd4de7849898403d88528e3dfc872/) | ⚠️ Unaudited |
| FluidDexReservesResolver | unknown | ethereum | n/a | [`0xc93876...81a27c`](./contracts/ethereum-1/0xc93876c0eed99645dd53937b25433e311881a27c/) | ⚠️ Unaudited |
| FluidDexResolver | unknown | ethereum | n/a | [`0x71783f...af9a3d`](./contracts/ethereum-1/0x71783f64719899319b56bda4f27e1219d9af9a3d/) | ⚠️ Unaudited |
| FluidDexT1 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1dd125...61fa9b`](./contracts/ethereum-1/0x1dd125c32e4b5086c63cc13b3ca02c4a2a61fa9b/); ethereum `0xde632c...8fee45`; ethereum `0xf063bd...645d4a` | ⚠️ Unaudited |
| FluidVaultPositionsResolver | core_logic | ethereum | n/a | [`0x3e3dae...76801c`](./contracts/ethereum-1/0x3e3dae4f30347782089d398d462546eb5276801c/) | ⚠️ Unaudited |
| FluidVaultT1 | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x1c6068...644278`](./contracts/ethereum-1/0x1c6068ec051f0ac1688ca1fe76810fa9c8644278/); ethereum `0x2f3780...04dffa`; ethereum `0x399646...8744dd`; ethereum `0xbc3452...a38da5` | ⚠️ Unaudited |
| FluidVaultT2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x43d1ca...1f428d`](./contracts/ethereum-1/0x43d1ca906c72f09d96291b4913d7255e241f428d/); ethereum `0x989a44...90f881` | ⚠️ Unaudited |
| FluidVaultT2Operate | core_logic | ethereum | n/a | [`0x7503b5...bea6d0`](./contracts/ethereum-1/0x7503b58bb29937e7e2980f70d3fd021b7ebea6d0/) | ⚠️ Unaudited |
| FluidVaultT3 | core_logic | ethereum | n/a | [`0xe210d8...8d0034`](./contracts/ethereum-1/0xe210d8ded13abe836a10e8aa956dd424658d0034/) | ⚠️ Unaudited |
| FluidVaultT4 | core_logic | ethereum | n/a | [`0xe3cac7...cb5acc`](./contracts/ethereum-1/0xe3cac7cc6b0eed28e16331f08be7948bbfcb5acc/) | ⚠️ Unaudited |
| GhoToken | token | ethereum | n/a | [`0x40d16f...ae6c2f`](./contracts/ethereum-1/0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xd9db27...709552`](./contracts/ethereum-1/0xd9db270c1b5e3bd161e8c8503c55ceabee709552/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | registry | ethereum | n/a | [`0xa6b71e...896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | ⚠️ Unaudited |
| Groth16Verifier | periphery | ethereum | n/a | [`0x8a526f...005234`](./contracts/ethereum-1/0x8a526f919c391105ef251ddede15067027005234/) | ⚠️ Unaudited |
| Keeper | operational_periphery | ethereum | n/a | [`0x6b5815...b487b5`](./contracts/ethereum-1/0x6b5815467da09daa7dc83db21c9239d98bb487b5/) | ⚠️ Unaudited |
| LendingPool | core_logic | ethereum | n/a | [`0xe1b4d3...8e6c2e`](./contracts/ethereum-1/0xe1b4d34e8754600962cd944b535180bd758e6c2e/) | ⚠️ Unaudited |
| LidoTreasuryConnector | unknown | ethereum | n/a | [`0xb63a5e...b048a7`](./contracts/ethereum-1/0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7/) | ⚠️ Unaudited |
| MellowSymbioticVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x08f39b...152547`](./contracts/ethereum-1/0x08f39b3d75712148dacdb2669c3eacc7f1152547/); ethereum `0xe4357b...bf125d` | ⚠️ Unaudited |
| MellowVaultCompat | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x3a828c...45b4c7`](./contracts/ethereum-1/0x3a828c183b3f382d030136c824844ea30145b4c7/); ethereum `0x64047d...3f877f`; ethereum `0x7f43fd...9ce444`; ethereum `0x82f510...9e0b26`; ethereum `0xc65433...c47bd8` | ⚠️ Unaudited |
| MockToken | unknown | ethereum | n/a | [`0xe90ec1...58d16b`](./contracts/ethereum-1/0xe90ec12369fbbcbcdaaa320da59134281458d16b/) | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| Multicall | periphery | ethereum | n/a | [`0xba610d...8df947`](./contracts/ethereum-1/0xba610d8c8c93580c19fb8800fc406227de8df947/) | ⚠️ Unaudited |
| MultiVault | core_logic | ethereum | n/a | 13 deployments: ethereum [`0x241835...fab696`](./contracts/ethereum-1/0x24183535a24cf0272841b05047a26e200ffab696/); ethereum `0x375a8e...ebeba0`; ethereum `0x49cd58...8232a9`; ethereum `0x4f3cc6...5dc961`; ethereum `0x7a4eff...327e3a`; ethereum `0x7b31f0...855249`; ethereum `0x82dc32...07163b`; ethereum `0x84631c...a9f93a`; ethereum `0x8c9532...3e9811`; ethereum `0xb908c9...26c72d`; ethereum `0xbeef69...2e6abc`; ethereum `0xcc36e5...82ebad`; ethereum `0xd6e09a...37931b` | ⚠️ Unaudited |
| NodeOperatorRegistry | unknown | ethereum | n/a | [`0x46ddc3...1a1a1d`](./contracts/ethereum-1/0x46ddc39e780088b1b146aba8cbbe15dc321a1a1d/) | ⚠️ Unaudited |
| NodeOperatorRegistry | unknown | ethereum | n/a | [`0xaae0b3...a1c524`](./contracts/ethereum-1/0xaae0b305b3f1edde7b11b680d4fa9252f7a1c524/) | ⚠️ Unaudited |
| OsToken | token | ethereum | n/a | [`0xf1c9ac...190e38`](./contracts/ethereum-1/0xf1c9acdc66974dfb6decb12aa385b9cd01190e38/) | ⚠️ Unaudited |
| OsTokenVaultController | core_logic | ethereum | n/a | [`0x2a261e...000306`](./contracts/ethereum-1/0x2a261e60fb14586b474c208b1b7ac6d0f5000306/) | ⚠️ Unaudited |
| PendleMarketV3 | core_logic | ethereum | n/a | [`0x09fa04...6d4fb9`](./contracts/ethereum-1/0x09fa04aac9c6d1c6131352ee950cd67ecc6d4fb9/) | ⚠️ Unaudited |
| PendleYieldToken | token | ethereum | n/a | 27 deployments: ethereum [`0x029d62...9c1840`](./contracts/ethereum-1/0x029d6247adb0a57138c62e3019c92d3dfc9c1840/); ethereum `0x0310a8...7fcbcb`; ethereum `0x03722c...ea3987`; ethereum `0x079f21...542e32`; ethereum `0x08aefe...b7d2b0`; ethereum `0x11ccff...064aba`; ethereum `0x1de6ff...52abbe`; ethereum `0x1e24b0...aebf6f`; ethereum `0x27f6f2...9877f7`; ethereum `0x3568f1...c83978`; ethereum `0x48bbbe...f165da`; ethereum `0x4a8036...b0c9ee`; ethereum `0x5d8b3c...09b3ed`; ethereum `0x5db8a2...29f988`; ethereum `0x708dd9...3eb868`; ethereum `0x719b51...8f1d7a`; ethereum `0x733ee9...322464`; ethereum `0x77de4b...d2cc39`; ethereum `0x7b64b9...916ce1`; ethereum `0x89e7f4...ce9971`; ethereum `0x946934...906264`; ethereum `0x965122...cd2b9f`; ethereum `0xaac7db...43ea02`; ethereum `0xb7e51d...27272b`; ethereum `0xbe0553...937427`; ethereum `0xe8ef80...391712`; ethereum `0xeb993b...1f368e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 4 deployments: ethereum [`0x25eaf5...5b8846`](./contracts/ethereum-1/0x25eaf579ca2255faa5463c635eec28697b5b8846/); ethereum `0x3c405f...9acd68`; ethereum `0x63a11f...a8d7fe`; ethereum `0xd750b8...9bfd14` | ⚠️ Unaudited |
| RepricingOracle | unknown | ethereum | n/a | [`0x289d60...2d2d71`](./contracts/ethereum-1/0x289d600447a74b952ad16f0bd53b8eaaac2d2d71/) | ⚠️ Unaudited |
| RepricingOracle | unknown | ethereum | n/a | [`0xd5a73c...d2e959`](./contracts/ethereum-1/0xd5a73c748449a45cc7d9f21c7ed3ab9eb3d2e959/) | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0xbf1762...1649df`](./contracts/ethereum-1/0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df/); ethereum `0xd10625...99705a`; ethereum `0xeef363...4acdd3` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | ethereum | n/a | [`0x9f805f...fdad12`](./contracts/ethereum-1/0x9f805fc8679e5f81a0683c3203ad48417efdad12/) | ⚠️ Unaudited |
| RewardSplitter | unknown | ethereum | n/a | 3 deployments: ethereum [`0x439b60...febcd9`](./contracts/ethereum-1/0x439b60d3c886e711dad30cf23a2bbd5388febcd9/); ethereum `0x67561c...6aca9b`; ethereum `0xe00512...5b1902` | ⚠️ Unaudited |
| RewardSplitterFactory | operational_periphery | ethereum | n/a | [`0x256af2...6cc5f8`](./contracts/ethereum-1/0x256af27ce81282a0491a5361172c1db08f6cc5f8/) | ⚠️ Unaudited |
| RlpPriceAggregatorV3Interface | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e35e7...474ecb`](./contracts/ethereum-1/0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb/); ethereum `0xadb2c1...4e66b2` | ⚠️ Unaudited |
| RlpPriceStorage | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5e90b0...8e1aa1`](./contracts/ethereum-1/0x5e90b0a657643c08a45cbd6a06337b37c98e1aa1/); ethereum `0xae2364...f3574d` | ⚠️ Unaudited |
| RlpUpOnlyPriceStorage | unknown | ethereum | n/a | 3 deployments: ethereum [`0x093285...ab0dc6`](./contracts/ethereum-1/0x093285c34515c01a55e15a25812bcf87e7ab0dc6/); ethereum `0x2d748a...82a2c0`; ethereum `0x40b988...aa0580` | ⚠️ Unaudited |
| RswETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4796d9...4e2362`](./contracts/ethereum-1/0x4796d939b22027c2876d5ce9fde52da9ec4e2362/); ethereum `0xfae103...afa6c0` | ⚠️ Unaudited |
| RswEXIT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x58749c...56f064`](./contracts/ethereum-1/0x58749c46ffe97e4d79508a2c781c440f4756f064/); ethereum `0xbd6a5e...e06479` | ⚠️ Unaudited |
| SharedMevEscrow | operational_periphery | ethereum | n/a | [`0x48319f...20ff86`](./contracts/ethereum-1/0x48319f97e5da1233c21c48b80097c0fb7a20ff86/) | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x142198...69de32`](./contracts/ethereum-1/0x14219845c6b7984aa5ec0a39754dcc327169de32/); ethereum `0xab17c1...451978` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1fc1bc...ffdeaf`](./contracts/ethereum-1/0x1fc1bc7ef87ace92a3f2eed44581111eb1ffdeaf/); ethereum `0x5daa06...62084b` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x234c90...1ad06c`](./contracts/ethereum-1/0x234c908e749961d0329a0ed5916d55a99d1ad06c/); ethereum `0x271872...26b654` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc45430...30eb28`](./contracts/ethereum-1/0xc4543073bfaba77781b46dfb4d43b5ae4e30eb28/); ethereum `0xd2ee27...d4be0e` | ⚠️ Unaudited |
| SimpleToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x35533f...16868b`](./contracts/ethereum-1/0x35533f54740f1f1aa4179e57ba37039dfa16868b/); ethereum `0x46c1c1...caeaab`; ethereum `0xb1b385...99f15c` | ⚠️ Unaudited |
| SimpleToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x35e5db...e8a4b9`](./contracts/ethereum-1/0x35e5db674d8e93a03d814fa0ada70731efe8a4b9/); ethereum `0xc31389...aa5fdc` | ⚠️ Unaudited |
| SimpleToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4956b5...528f96`](./contracts/ethereum-1/0x4956b52ae2ff65d74ca2d61207523288e4528f96/); ethereum `0x66a1e3...f3e110`; ethereum `0xef4c4b...a1fabe` | ⚠️ Unaudited |
| StakedTokenDistributor | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x53c5b7...08031e`](./contracts/ethereum-1/0x53c5b703465234f97c5a7b17b602c6224a08031e/); ethereum `0x6ac1f6...04dbaf`; ethereum `0xbac23e...72ac69`; ethereum `0xbb2213...85e32c` | ⚠️ Unaudited |
| StakerProxy | unknown | ethereum | n/a | [`0xb68b12...df17a0`](./contracts/ethereum-1/0xb68b125e5b0f2600841b2bba484e76a495df17a0/) | ⚠️ Unaudited |
| StakerProxy | unknown | ethereum | n/a | [`0xe19466...06e8ae`](./contracts/ethereum-1/0xe194661251877a69a1282bd0b2d344ccba06e8ae/) | ⚠️ Unaudited |
| StUSR | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0da21d...cabf61`](./contracts/ethereum-1/0x0da21d330f3f75d730a1b5f1535ca75061cabf61/); ethereum `0x56abf7...32ecc2` | ⚠️ Unaudited |
| StUSR | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6c8984...10aab4`](./contracts/ethereum-1/0x6c8984bc7dbbedaf4f6b2fd766f16ebb7d10aab4/); ethereum `0xba1600...973da7` | ⚠️ Unaudited |
| StUSR | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcf3e9d...5678bd`](./contracts/ethereum-1/0xcf3e9da6190997ca7b1f46a2568caa29575678bd/); ethereum `0xf8391a...84c46b` | ⚠️ Unaudited |
| swETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0xce95ba...affbfc`](./contracts/ethereum-1/0xce95ba824ae9a4df9b303c0bbf4d605ba2affbfc/); ethereum `0xf951e3...7ded78` | ⚠️ Unaudited |
| swEXIT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x02454d...6c8f78`](./contracts/ethereum-1/0x02454d649054276e3ed8b9f17f8d5f49ac6c8f78/); ethereum `0x48c11b...251663` | ⚠️ Unaudited |
| TestnetERC20 | token | ethereum | n/a | [`0xabb158...3cbea7`](./contracts/ethereum-1/0xabb15848b98d3ef7ad20a69127b003c7613cbea7/) | ⚠️ Unaudited |
| TheCounter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa27a69...e55861`](./contracts/ethereum-1/0xa27a69ae180e202fde5d38189a3f24fe24e55861/); ethereum `0xc7ab90...1eafa0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0795ab...aa28c3`](./contracts/ethereum-1/0x0795ab0dc75497a2c3f6345f2de0feef0eaa28c3/); ethereum `0x2998d4...51c670` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x47ebb0...11b8ed`](./contracts/ethereum-1/0x47ebb00945bfb1e85d2e00f3f7d9633ca611b8ed/); ethereum `0x58ca83...3e9a16` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa411cc...c94f9c`](./contracts/ethereum-1/0xa411cc80837b0400cd7781977dfdfa30a5c94f9c/); ethereum `0xad64a5...84cf2e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb713c3...d9d914`](./contracts/ethereum-1/0xb713c3eca7e1e7d8d5c62d131677b4905cd9d914/); ethereum `0xdc876a...3cef1b` | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | 2 deployments: ethereum [`0xacb702...d62b8e`](./contracts/ethereum-1/0xacb7027f271b03b502d65feba617a0d817d62b8e/); ethereum `0xc657b2...428691` | ⚠️ Unaudited |
| TreasuryIntermediateEscrow | operational_periphery | ethereum | n/a | [`0x84b883...acfed6`](./contracts/ethereum-1/0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6/) | ⚠️ Unaudited |
| UniswapV3PointSellingController | governance | ethereum | n/a | [`0x027d52...7ad581`](./contracts/ethereum-1/0x027d523cf78be66840b39576613ccdf9747ad581/) | ⚠️ Unaudited |
| USDtbMinting | token | ethereum | n/a | [`0xa3ddbf...48416a`](./contracts/ethereum-1/0xa3ddbf92077b850e29c4805df0a2459ae048416a/) | ⚠️ Unaudited |
| UsrExternalRequestsManager | governance | ethereum | n/a | [`0xac85ef...a95f2e`](./contracts/ethereum-1/0xac85ef29192487e0a109b7f9e40c267a9ea95f2e/) | ⚠️ Unaudited |
| USRPriceAggregatorV3Interface | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8a9341...c46f64`](./contracts/ethereum-1/0x8a93414f88f597922a9829df5f7c94b81bc46f64/); ethereum `0xf9c7c2...7ce88c` | ⚠️ Unaudited |
| UsrPriceStorage | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7f4518...9c261c`](./contracts/ethereum-1/0x7f45180d6ffd0435d8dd695fd01320e6999c261c/); ethereum `0xc16b2a...c2785d` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x2dabce...68adac`](./contracts/ethereum-1/0x2dabcea55a12d73191aece59f508b191fb68adac/); ethereum `0xbe3ca3...9aff4e` | ⚠️ Unaudited |
| VaultsRegistry | registry | ethereum | n/a | [`0x3a0008...4fc20e`](./contracts/ethereum-1/0x3a0008a588772446f6e656133c2d5029cc4fc20e/) | ⚠️ Unaudited |
| VaultTokenized | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x65b560...d69d63`](./contracts/ethereum-1/0x65b560d887c010c4993c8f8b36e595c171d69d63/); ethereum `0xb8fd82...ff056c`; ethereum `0xc10a7f...e3a1da` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5c9960...945778`](./contracts/ethereum-1/0x5c996059b9ce40c236d24c2e49464d852a945778/); ethereum `0xd1a6c3...7b6e32` | ⚠️ Unaudited |
| WstUSR | unknown | ethereum | n/a | [`0x1202f5...c75055`](./contracts/ethereum-1/0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055/) | ⚠️ Unaudited |
| WstUSR | unknown | ethereum | n/a | 2 deployments: ethereum [`0x878943...43dd34`](./contracts/ethereum-1/0x878943125019b86aeb0e97f36fb4f1dc5c43dd34/); ethereum `0x8b480b...c44ee6` | ⚠️ Unaudited |
| ZtakingPool | core_logic | ethereum | n/a | [`0xf047ab...aeafa6`](./contracts/ethereum-1/0xf047ab4c75cebf0eb9ed34ae2c186f3611aeafa6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x25e426...0888ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35af40...a7d593` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e2cc1...76dc65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x630f27...5294de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x932f09...b936fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa35f12...240a14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa42ef8...ad593e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad0627...a1f6fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf8268...9fed29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2ecc7...49579a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe7f6a...fe6763` | ❓ Unverified |
| WrappedDollarVault | unknown | ethereum | n/a | `0x057d76...be1cde` | ❓ Unverified |
| WrappedDollarVault | unknown | ethereum | n/a | `0x09dcfa...d860c6` | ❓ Unverified |
| WrappedDollarVault | unknown | ethereum | n/a | `0x7d5305...1b5dda` | ❓ Unverified |
| WrappedDollarVault | unknown | ethereum | n/a | `0x7e59b4...abfa7b` | ❓ Unverified |
| WrappedDollarVault | unknown | ethereum | n/a | `0xd961c8...f9b5cd` | ❓ Unverified |
| WrappedDollarVault | unknown | ethereum | n/a | `0xdb46cc...a955c7` | ❓ Unverified |
| WrappedDollarVault | unknown | ethereum | n/a | `0xfad078...975005` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024.04.25 FPS Points Tokenization.pdf](https://github.com/sense-finance/point-tokenization-vault/blob/main/audits/2024.04.25%20FPS%20Points%20Tokenization.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [2024.07.22 Darklinear Rumpel Wallet.pdf](https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.22%20Darklinear%20Rumpel%20Wallet.pdf) | Darklinear | Audit | 2024-07 | stale | Direct | contract_name | 1 | n/a |
| [2024.07.15 FPS Rumpel Wallet.pdf](https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.15%20FPS%20Rumpel%20Wallet.pdf) | FPS | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [audits.sherlock.xyz/contests/494](https://audits.sherlock.xyz/contests/494) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 134 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [2953] 2024.04.25 FPS Points Tokenization.pdf
- [2955] 2024.07.15 FPS Rumpel Wallet.pdf
- [2956] audits.sherlock.xyz/contests/494

Fork inheritance lineage and inherited audits are included when available.
