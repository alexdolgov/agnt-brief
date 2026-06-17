# Agentic Audit Brief: Rumpel Labs

⚠️ Lifecycle status: DECLINING - TVL dropped 14.7% over 90 days

## Project Overview

- Project: Rumpel Labs (`rumpel-labs`)
- Website: [https://www.rumpel.xyz](https://www.rumpel.xyz)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:43.669Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 52 unique implementations (124 raw deployments)
- DeFi Llama TVL: $1,503,642.68
- On-chain TVL (included contracts): $1,023,031,020.74
- TVL by chain: Ethereum $1,023,031,020.74

## Project Description

Rumpel Labs is a point-tokenization protocol that enables users to tokenize, mint, and trade exposure to offchain loyalty or reward points earned through supported integrations. Its products are focused on representing points and potential future rewards onchain, including possible redemption or settlement mechanics, rather than operating as a broad structured-yield or synthetic-asset exposure aggregator.

### Architecture

All contracts belong to a single product family, sharing infrastructure like proxy patterns (TransparentUpgradeableProxy, BeaconProxy) and token wrappers. Vaults interact with external protocols (Fluid, Pendle, Mellow) and use supporting resolvers and collateral contracts to manage positions and risk.

## Contract Surface Quality

- Indexed contracts: 316; live-surface contracts included: 124 (122 live, 2 unknown).
- Excluded by liveness: 123 inactive, 69 singleton, 0 uninitialized.
- Deployment units: 15/49 live.
- Detected codebases: none
- Unverified dependencies: 20/68.

## Audit Coverage Summary

- Verified implementations audited: 2/52 (3.8%)
- Verified + Unaudited implementations: 50
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 52
- Raw deployments: 124
- Audits discovered: 4
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $1,023,031,020.74
- Latest audit: 2024-07 (aging)
- Staleness: 0 fresh, 2 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,023,031,020.74 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Darklinear | Tier 2 | 2 | 3.8% | 2024-07 |
| unknown | Tier 2 | 1 | 1.9% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PointTokenVault | core_logic | ethereum | unit-26909 | [`0xe47f9d...45ba61`](./contracts/ethereum-1/0xe47f9dbbfe98d6930562017ee212c1a1ae45ba61/) | ✅ Audited |
| RumpelWalletFactory | registry | ethereum | n/a | [`0x5774ab...db2937`](./contracts/ethereum-1/0x5774abcf415f34592514698eb075051e97db2937/) | ✅ Audited |

### ⚠️ Verified + Unaudited (50)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OsTokenVaultController | core_logic | ethereum | n/a | [`0x2a261e...000306`](./contracts/ethereum-1/0x2a261e60fb14586b474c208b1b7ac6d0f5000306/) | ⚠️ Unaudited |
| OsToken | token | ethereum | n/a | [`0xf1c9ac...190e38`](./contracts/ethereum-1/0xf1c9acdc66974dfb6decb12aa385b9cd01190e38/) | ⚠️ Unaudited |
| EthGenesisVault | core_logic | ethereum | unit-26897 | [`0xac0f90...652885`](./contracts/ethereum-1/0xac0f906e433d58fa868f936e8a43230473652885/) | ⚠️ Unaudited |
| ZtakingPool | core_logic | ethereum | n/a | [`0xf047ab...aeafa6`](./contracts/ethereum-1/0xf047ab4c75cebf0eb9ed34ae2c186f3611aeafa6/) | ⚠️ Unaudited |
| swETH | token | ethereum | unit-26911 | [`0xf951e3...7ded78`](./contracts/ethereum-1/0xf951e335afb289353dc249e82926178eac7ded78/) | ⚠️ Unaudited |
| LendingPool | core_logic | ethereum | unit-26908 | [`0xe1b4d3...8e6c2e`](./contracts/ethereum-1/0xe1b4d34e8754600962cd944b535180bd758e6c2e/) | ⚠️ Unaudited |
| MultiVault | core_logic | ethereum | unit-26874 (13 proxies) | 13 deployments: ethereum [`0x241835...fab696`](./contracts/ethereum-1/0x24183535a24cf0272841b05047a26e200ffab696/); ethereum `0x375a8e...ebeba0`; ethereum `0x49cd58...8232a9`; ethereum `0x4f3cc6...5dc961`; ethereum `0x7a4eff...327e3a`; ethereum `0x7b31f0...855249`; ethereum `0x82dc32...07163b`; ethereum `0x84631c...a9f93a`; ethereum `0x8c9532...3e9811`; ethereum `0xb908c9...26c72d`; ethereum `0xbeef69...2e6abc`; ethereum `0xcc36e5...82ebad`; ethereum `0xd6e09a...37931b` | ⚠️ Unaudited |
| MellowSymbioticVault | core_logic | ethereum | unit-26867 (2 proxies) | 2 deployments: ethereum [`0x08f39b...152547`](./contracts/ethereum-1/0x08f39b3d75712148dacdb2669c3eacc7f1152547/); ethereum `0xe4357b...bf125d` | ⚠️ Unaudited |
| VaultTokenized | core_logic | ethereum | unit-26884 (3 proxies) | 3 deployments: ethereum [`0x65b560...d69d63`](./contracts/ethereum-1/0x65b560d887c010c4993c8f8b36e595c171d69d63/); ethereum `0xb8fd82...ff056c`; ethereum `0xc10a7f...e3a1da` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | unit-26875 (2 proxies) | 2 deployments: ethereum [`0x2dabce...68adac`](./contracts/ethereum-1/0x2dabcea55a12d73191aece59f508b191fb68adac/); ethereum `0xbe3ca3...9aff4e` | ⚠️ Unaudited |
| MellowVaultCompat | core_logic | ethereum | unit-26876 (5 proxies) | 5 deployments: ethereum [`0x3a828c...45b4c7`](./contracts/ethereum-1/0x3a828c183b3f382d030136c824844ea30145b4c7/); ethereum `0x64047d...3f877f`; ethereum `0x7f43fd...9ce444`; ethereum `0x82f510...9e0b26`; ethereum `0xc65433...c47bd8` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | [`0x917cee...909d88`](./contracts/ethereum-1/0x917cee801a67f933f2e6b33fc0cd1ed2d5909d88/) | ⚠️ Unaudited |
| PendleMarketV3 | core_logic | ethereum | n/a | [`0x09fa04...6d4fb9`](./contracts/ethereum-1/0x09fa04aac9c6d1c6131352ee950cd67ecc6d4fb9/) | ⚠️ Unaudited |
| EVault | core_logic | ethereum | unit-26894 | [`0x9f12d2...1f9899`](./contracts/ethereum-1/0x9f12d29c7cc72bb3d237e2d042a6d890421f9899/) | ⚠️ Unaudited |
| AaveV3TreasuryConnector | operational_periphery | ethereum | unit-26893 | [`0x91eda2...03c8ca`](./contracts/ethereum-1/0x91eda28735ce089a8b5133476263c3fb8303c8ca/) | ⚠️ Unaudited |
| AnchorageTokenUSDtb | token | ethereum | unit-26902 | [`0xc13919...18ac1c`](./contracts/ethereum-1/0xc139190f447e929f090edeb554d95abb8b18ac1c/) | ⚠️ Unaudited |
| DefaultCollateral | unknown | ethereum | n/a | 14 deployments: ethereum [`0x03bf48...ffa5ac`](./contracts/ethereum-1/0x03bf48b8a1b37fbead1ecabcf15b98b924ffa5ac/); ethereum `0x0c969c...99032c`; ethereum `0x19d0d8...91939a`; ethereum `0x21dbba...1d2c7c`; ethereum `0x422f5a...695f85`; ethereum `0x475d3e...7c304a`; ethereum `0x5198cb...2769d2`; ethereum `0x52cb8a...b8ab2a`; ethereum `0x594380...17bd4d`; ethereum `0x940750...0843fa`; ethereum `0x971e5b...f82618`; ethereum `0x9c0823...64f448`; ethereum `0xb09a50...9bad1c`; ethereum `0xe39b5f...9fcc84` | ⚠️ Unaudited |
| DepositDataRegistry | registry | ethereum | n/a | [`0x75ab6d...35223e`](./contracts/ethereum-1/0x75ab6ddce07556639333d3df1eaa684f5735223e/) | ⚠️ Unaudited |
| DVV | unknown | ethereum | unit-26882 | [`0x5e362e...85430b`](./contracts/ethereum-1/0x5e362eb2c0706bd1d134689ec75176018385430b/) | ⚠️ Unaudited |
| EthenaLPStaking | unknown | ethereum | n/a | [`0x8707f2...cfc512`](./contracts/ethereum-1/0x8707f238936c12c309bfc2b9959c35828acfc512/) | ⚠️ Unaudited |
| ExternalRequestsCoordinator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x36c9b5...76c043`](./contracts/ethereum-1/0x36c9b5e8f039381d1da79b94a206af8bc076c043/); ethereum `0xf47af3...82ba80` | ⚠️ Unaudited |
| ExternalRequestsManager | governance | ethereum | n/a | [`0x10f4d4...dfc872`](./contracts/ethereum-1/0x10f4d4ead6bcd4de7849898403d88528e3dfc872/) | ⚠️ Unaudited |
| FluidDexReservesResolver | unknown | ethereum | n/a | [`0xc93876...81a27c`](./contracts/ethereum-1/0xc93876c0eed99645dd53937b25433e311881a27c/) | ⚠️ Unaudited |
| FluidDexResolver | unknown | ethereum | n/a | [`0x71783f...af9a3d`](./contracts/ethereum-1/0x71783f64719899319b56bda4f27e1219d9af9a3d/) | ⚠️ Unaudited |
| FluidDexT1 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1dd125...61fa9b`](./contracts/ethereum-1/0x1dd125c32e4b5086c63cc13b3ca02c4a2a61fa9b/); ethereum `0xde632c...8fee45`; ethereum `0xf063bd...645d4a` | ⚠️ Unaudited |
| FluidVaultPositionsResolver | core_logic | ethereum | n/a | [`0x3e3dae...76801c`](./contracts/ethereum-1/0x3e3dae4f30347782089d398d462546eb5276801c/) | ⚠️ Unaudited |
| FluidVaultT1 | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x1c6068...644278`](./contracts/ethereum-1/0x1c6068ec051f0ac1688ca1fe76810fa9c8644278/); ethereum `0x2f3780...04dffa`; ethereum `0x399646...8744dd`; ethereum `0xbc3452...a38da5` | ⚠️ Unaudited |
| FluidVaultT2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x43d1ca...1f428d`](./contracts/ethereum-1/0x43d1ca906c72f09d96291b4913d7255e241f428d/); ethereum `0x989a44...90f881` | ⚠️ Unaudited |
| FluidVaultT2Operate | core_logic | ethereum | unit-26887 | [`0x7503b5...bea6d0`](./contracts/ethereum-1/0x7503b58bb29937e7e2980f70d3fd021b7ebea6d0/) | ⚠️ Unaudited |
| FluidVaultT3 | core_logic | ethereum | n/a | [`0xe210d8...8d0034`](./contracts/ethereum-1/0xe210d8ded13abe836a10e8aa956dd424658d0034/) | ⚠️ Unaudited |
| FluidVaultT4 | core_logic | ethereum | n/a | [`0xe3cac7...cb5acc`](./contracts/ethereum-1/0xe3cac7cc6b0eed28e16331f08be7948bbfcb5acc/) | ⚠️ Unaudited |
| GhoToken | token | ethereum | n/a | [`0x40d16f...ae6c2f`](./contracts/ethereum-1/0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f/) | ⚠️ Unaudited |
| Groth16Verifier | periphery | ethereum | n/a | [`0x8a526f...005234`](./contracts/ethereum-1/0x8a526f919c391105ef251ddede15067027005234/) | ⚠️ Unaudited |
| Keeper | operational_periphery | ethereum | n/a | [`0x6b5815...b487b5`](./contracts/ethereum-1/0x6b5815467da09daa7dc83db21c9239d98bb487b5/) | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| Multicall | periphery | ethereum | n/a | [`0xba610d...8df947`](./contracts/ethereum-1/0xba610d8c8c93580c19fb8800fc406227de8df947/) | ⚠️ Unaudited |
| PendleYieldToken | token | ethereum | n/a | 27 deployments: ethereum [`0x029d62...9c1840`](./contracts/ethereum-1/0x029d6247adb0a57138c62e3019c92d3dfc9c1840/); ethereum `0x0310a8...7fcbcb`; ethereum `0x03722c...ea3987`; ethereum `0x079f21...542e32`; ethereum `0x08aefe...b7d2b0`; ethereum `0x11ccff...064aba`; ethereum `0x1de6ff...52abbe`; ethereum `0x1e24b0...aebf6f`; ethereum `0x27f6f2...9877f7`; ethereum `0x3568f1...c83978`; ethereum `0x48bbbe...f165da`; ethereum `0x4a8036...b0c9ee`; ethereum `0x5d8b3c...09b3ed`; ethereum `0x5db8a2...29f988`; ethereum `0x708dd9...3eb868`; ethereum `0x719b51...8f1d7a`; ethereum `0x733ee9...322464`; ethereum `0x77de4b...d2cc39`; ethereum `0x7b64b9...916ce1`; ethereum `0x89e7f4...ce9971`; ethereum `0x946934...906264`; ethereum `0x965122...cd2b9f`; ethereum `0xaac7db...43ea02`; ethereum `0xb7e51d...27272b`; ethereum `0xbe0553...937427`; ethereum `0xe8ef80...391712`; ethereum `0xeb993b...1f368e` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | [`0x3c405f...9acd68`](./contracts/ethereum-1/0x3c405f68d5c6ece868e5646cac926679839acd68/) | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0xbf1762...1649df`](./contracts/ethereum-1/0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df/); ethereum `0xd10625...99705a`; ethereum `0xeef363...4acdd3` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | ethereum | n/a | [`0x9f805f...fdad12`](./contracts/ethereum-1/0x9f805fc8679e5f81a0683c3203ad48417efdad12/) | ⚠️ Unaudited |
| RewardSplitterFactory | operational_periphery | ethereum | n/a | [`0x256af2...6cc5f8`](./contracts/ethereum-1/0x256af27ce81282a0491a5361172c1db08f6cc5f8/) | ⚠️ Unaudited |
| SharedMevEscrow | operational_periphery | ethereum | n/a | [`0x48319f...20ff86`](./contracts/ethereum-1/0x48319f97e5da1233c21c48b80097c0fb7a20ff86/) | ⚠️ Unaudited |
| StakedTokenDistributor | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x53c5b7...08031e`](./contracts/ethereum-1/0x53c5b703465234f97c5a7b17b602c6224a08031e/); ethereum `0x6ac1f6...04dbaf`; ethereum `0xbac23e...72ac69`; ethereum `0xbb2213...85e32c` | ⚠️ Unaudited |
| TestnetERC20 | token | ethereum | n/a | [`0xabb158...3cbea7`](./contracts/ethereum-1/0xabb15848b98d3ef7ad20a69127b003c7613cbea7/) | ⚠️ Unaudited |
| TheCounter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa27a69...e55861`](./contracts/ethereum-1/0xa27a69ae180e202fde5d38189a3f24fe24e55861/); ethereum `0xc7ab90...1eafa0` | ⚠️ Unaudited |
| TreasuryIntermediateEscrow | operational_periphery | ethereum | n/a | [`0x84b883...acfed6`](./contracts/ethereum-1/0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6/) | ⚠️ Unaudited |
| USDtbMinting | token | ethereum | n/a | [`0xa3ddbf...48416a`](./contracts/ethereum-1/0xa3ddbf92077b850e29c4805df0a2459ae048416a/) | ⚠️ Unaudited |
| UsrExternalRequestsManager | governance | ethereum | n/a | [`0xac85ef...a95f2e`](./contracts/ethereum-1/0xac85ef29192487e0a109b7f9e40c267a9ea95f2e/) | ⚠️ Unaudited |
| VaultsRegistry | registry | ethereum | n/a | [`0x3a0008...4fc20e`](./contracts/ethereum-1/0x3a0008a588772446f6e656133c2d5029cc4fc20e/) | ⚠️ Unaudited |
| WstUSR | unknown | ethereum | unit-26871 | [`0x1202f5...c75055`](./contracts/ethereum-1/0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024.04.25 FPS Points Tokenization.pdf](https://github.com/sense-finance/point-tokenization-vault/blob/main/audits/2024.04.25%20FPS%20Points%20Tokenization.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [2024.07.22 Darklinear Rumpel Wallet.pdf](https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.22%20Darklinear%20Rumpel%20Wallet.pdf) | Darklinear | Audit | 2024-07 | aging | Direct | contract_name | 2 | high |
| [2024.07.15 FPS Rumpel Wallet.pdf](https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.15%20FPS%20Rumpel%20Wallet.pdf) | FPS | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [audits.sherlock.xyz/contests/494](https://audits.sherlock.xyz/contests/494) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2a261e...000306`](./contracts/ethereum-1/0x2a261e60fb14586b474c208b1b7ac6d0f5000306/) | OsTokenVaultController | core_logic | $304,912,474.90 | Verified native implementation with $304,912,474.90 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65b560...d69d63`](./contracts/ethereum-1/0x65b560d887c010c4993c8f8b36e595c171d69d63/) | VaultTokenized | core_logic | $1,827,941.60 | Verified native implementation with $1,827,941.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03bf48...ffa5ac`](./contracts/ethereum-1/0x03bf48b8a1b37fbead1ecabcf15b98b924ffa5ac/) | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75ab6d...35223e`](./contracts/ethereum-1/0x75ab6ddce07556639333d3df1eaa684f5735223e/) | DepositDataRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36c9b5...76c043`](./contracts/ethereum-1/0x36c9b5e8f039381d1da79b94a206af8bc076c043/) | ExternalRequestsCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10f4d4...dfc872`](./contracts/ethereum-1/0x10f4d4ead6bcd4de7849898403d88528e3dfc872/) | ExternalRequestsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b5815...b487b5`](./contracts/ethereum-1/0x6b5815467da09daa7dc83db21c9239d98bb487b5/) | Keeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf1762...1649df`](./contracts/ethereum-1/0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df/) | ResolvStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f805f...fdad12`](./contracts/ethereum-1/0x9f805fc8679e5f81a0683c3203ad48417efdad12/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x256af2...6cc5f8`](./contracts/ethereum-1/0x256af27ce81282a0491a5361172c1db08f6cc5f8/) | RewardSplitterFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48319f...20ff86`](./contracts/ethereum-1/0x48319f97e5da1233c21c48b80097c0fb7a20ff86/) | SharedMevEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53c5b7...08031e`](./contracts/ethereum-1/0x53c5b703465234f97c5a7b17b602c6224a08031e/) | StakedTokenDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabb158...3cbea7`](./contracts/ethereum-1/0xabb15848b98d3ef7ad20a69127b003c7613cbea7/) | TestnetERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa27a69...e55861`](./contracts/ethereum-1/0xa27a69ae180e202fde5d38189a3f24fe24e55861/) | TheCounter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84b883...acfed6`](./contracts/ethereum-1/0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6/) | TreasuryIntermediateEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac85ef...a95f2e`](./contracts/ethereum-1/0xac85ef29192487e0a109b7f9e40c267a9ea95f2e/) | UsrExternalRequestsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a0008...4fc20e`](./contracts/ethereum-1/0x3a0008a588772446f6e656133c2d5029cc4fc20e/) | VaultsRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 16 |
| standard_library | 16 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=3

Zero-match audit list:

- [2955] 2024.07.15 FPS Rumpel Wallet.pdf
- [2956] audits.sherlock.xyz/contests/494

Fork inheritance lineage and inherited audits are included when available.
