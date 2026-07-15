# Agentic Audit Brief: Rumpel Labs

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Rumpel Labs (`rumpel-labs`)
- Website: [https://www.rumpel.xyz](https://www.rumpel.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 134 unique implementations (315 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,428,121.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Rumpel Labs in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 134 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 71
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/124
- Verified + Unaudited implementations: 124
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 134
- Raw deployments: 315
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (124)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3TreasuryConnector | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x91eda2...03c8ca` | ⚠️ Unaudited |
| AddressesWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2d0049...6b0f77`; ethereum `0x594302...311255`; ethereum `0xfff167...c01ad6` | ⚠️ Unaudited |
| AnchorageTokenUSDtb | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc13919...18ac1c` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x917cee...909d88` | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x849da6...02e540`; ethereum `0xf6bbbc...ad5354` | ⚠️ Unaudited |
| DefaultCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x03bf48...ffa5ac`; ethereum `0x0c969c...99032c`; ethereum `0x19d0d8...91939a`; ethereum `0x21dbba...1d2c7c`; ethereum `0x422f5a...695f85`; ethereum `0x475d3e...7c304a`; ethereum `0x5198cb...2769d2`; ethereum `0x52cb8a...b8ab2a`; ethereum `0x594380...17bd4d`; ethereum `0x940750...0843fa`; ethereum `0x971e5b...f82618`; ethereum `0x9c0823...64f448`; ethereum `0xb09a50...9bad1c`; ethereum `0xe39b5f...9fcc84` | ⚠️ Unaudited |
| DepositDataRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75ab6d...35223e` | ⚠️ Unaudited |
| DineroTreasuryConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x75ec06...493c70`; ethereum `0x9971f7...0af812` | ⚠️ Unaudited |
| DVV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5e362e...85430b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x574952...42139a`; ethereum `0x5c4606...f59219` | ⚠️ Unaudited |
| EthBlocklistErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0b4f6b...099556`; ethereum `0x5f31ed...058988` | ⚠️ Unaudited |
| EthBlocklistErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x84d44a...311e9e`; ethereum `0xc25529...30f14a` | ⚠️ Unaudited |
| EthBlocklistVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x00e3af...d4cd3c`; ethereum `0x2d29f3...d4bcad`; ethereum `0xd19e4b...9c8478` | ⚠️ Unaudited |
| EthenaLPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8707f2...cfc512` | ⚠️ Unaudited |
| EthErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3acdbd...7646e9`; ethereum `0x7e5198...ceb5d5`; ethereum `0xca8665...d98207` | ⚠️ Unaudited |
| EthErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6ddc10...26cb53`; ethereum `0x8ee00c...6773de` | ⚠️ Unaudited |
| EthGenesisVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x124c33...510928`; ethereum `0x2d491b...135f31`; ethereum `0x7aa02b...549733`; ethereum `0x9481a4...2fabd7` | ⚠️ Unaudited |
| EthGenesisVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xac0f90...652885` | ⚠️ Unaudited |
| EthOsTokenVaultEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e842...763605` | ⚠️ Unaudited |
| EthPrivErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x28f325...429e71`; ethereum `0x453056...668e3e`; ethereum `0x9488a7...558c88`; ethereum `0xf5f205...1ba69a` | ⚠️ Unaudited |
| EthPrivVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x135f45...47a035`; ethereum `0x81ab00...57798c`; ethereum `0xb1bfaf...8197fb`; ethereum `0xb53a6c...fbf3bc` | ⚠️ Unaudited |
| EthRestakeBlocklistErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fcd8b...d49e4e` | ⚠️ Unaudited |
| EthRestakeBlocklistVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e3037...addb67` | ⚠️ Unaudited |
| EthRestakeErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x215f4c...b0eee4` | ⚠️ Unaudited |
| EthRestakePrivErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedebe7...c36ee5` | ⚠️ Unaudited |
| EthRestakePrivVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x792ff3...25e353` | ⚠️ Unaudited |
| EthRestakeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59adb4...e073bb` | ⚠️ Unaudited |
| EthRestakeVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x026df3...d11b2c`; ethereum `0x32634d...4c9fce`; ethereum `0x44ecc3...c565e1`; ethereum `0x6a2835...cc31e1`; ethereum `0x807305...d6f0af`; ethereum `0xf63666...6bf3a2` | ⚠️ Unaudited |
| EthValidatorsChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac9125...fafc84` | ⚠️ Unaudited |
| EthVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0cb2cb...5cae78`; ethereum `0x35dc75...2ca6cf`; ethereum `0xba0b5b...ccff23`; ethereum `0xdecb60...610f8f` | ⚠️ Unaudited |
| EthVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x170618...8dfe5e`; ethereum `0x1be3ad...41b07c`; ethereum `0x2a0335...667960`; ethereum `0x42fe3b...07f699`; ethereum `0x4e3d81...774017`; ethereum `0x551805...e2ee7d`; ethereum `0x58fdd3...3a2949`; ethereum `0x7a4f99...1cba4a`; ethereum `0x875059...5f1bb8`; ethereum `0x96fff3...e175ee`; ethereum `0xb7832c...f4c896`; ethereum `0xd2468d...8f2cba`; ethereum `0xdada5a...659fcc`; ethereum `0xe84183...b5bb11`; ethereum `0xe9f3e6...27ba0f`; ethereum `0xf3c94c...daf3b8`; ethereum `0xfaa059...715d53`; ethereum `0xff0650...9362ca` | ⚠️ Unaudited |
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9f12d2...1f9899` | ⚠️ Unaudited |
| ExternalRequestsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x36c9b5...76c043`; ethereum `0xf47af3...82ba80` | ⚠️ Unaudited |
| ExternalRequestsManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x10f4d4...dfc872`; ethereum `0x1de327...6c8ea9` | ⚠️ Unaudited |
| ExternalRequestsManagerBetaV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x052b1c...0fda1b`; ethereum `0x3ed5dc...9bd45d`; ethereum `0x8ade71...6e86e9`; ethereum `0xda6cef...c6b360` | ⚠️ Unaudited |
| FluidDexReservesResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc93876...81a27c` | ⚠️ Unaudited |
| FluidDexResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71783f...af9a3d` | ⚠️ Unaudited |
| FluidDexT1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1dd125...61fa9b`; ethereum `0xde632c...8fee45`; ethereum `0xf063bd...645d4a` | ⚠️ Unaudited |
| FluidVaultPositionsResolver | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e3dae...76801c` | ⚠️ Unaudited |
| FluidVaultT1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1c6068...644278`; ethereum `0x2f3780...04dffa`; ethereum `0x399646...8744dd`; ethereum `0xbc3452...a38da5` | ⚠️ Unaudited |
| FluidVaultT2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x43d1ca...1f428d`; ethereum `0x989a44...90f881` | ⚠️ Unaudited |
| FluidVaultT2Operate | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7503b5...bea6d0` | ⚠️ Unaudited |
| FluidVaultT3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe210d8...8d0034` | ⚠️ Unaudited |
| FluidVaultT4 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3cac7...cb5acc` | ⚠️ Unaudited |
| GhoToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40d16f...ae6c2f` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9db27...709552` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6b71e...896ab2` | ⚠️ Unaudited |
| Groth16Verifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a526f...005234` | ⚠️ Unaudited |
| Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x435192...ba3f7a`; ethereum `0x6b5815...b487b5` | ⚠️ Unaudited |
| LendingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe1b4d3...8e6c2e` | ⚠️ Unaudited |
| LidoTreasuryConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb63a5e...b048a7` | ⚠️ Unaudited |
| MellowSymbioticVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x08f39b...152547`; ethereum `0xe4357b...bf125d` | ⚠️ Unaudited |
| MellowVaultCompat | core_logic | non_address_book | non_address_book_inventory (excluded) | 5 | ethereum | n/a | 5 deployments: ethereum `0x3a828c...45b4c7`; ethereum `0x64047d...3f877f`; ethereum `0x7f43fd...9ce444`; ethereum `0x82f510...9e0b26`; ethereum `0xc65433...c47bd8` | ⚠️ Unaudited |
| MockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe90ec1...58d16b` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbbb...eeffcb` | ⚠️ Unaudited |
| Multicall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba610d...8df947` | ⚠️ Unaudited |
| MultiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 13 | ethereum | n/a | 13 deployments: ethereum `0x241835...fab696`; ethereum `0x375a8e...ebeba0`; ethereum `0x49cd58...8232a9`; ethereum `0x4f3cc6...5dc961`; ethereum `0x7a4eff...327e3a`; ethereum `0x7b31f0...855249`; ethereum `0x82dc32...07163b`; ethereum `0x84631c...a9f93a`; ethereum `0x8c9532...3e9811`; ethereum `0xb908c9...26c72d`; ethereum `0xbeef69...2e6abc`; ethereum `0xcc36e5...82ebad`; ethereum `0xd6e09a...37931b` | ⚠️ Unaudited |
| Oracles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c167...c678d6` | ⚠️ Unaudited |
| OsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x475e7d...b96702`; ethereum `0xf1c9ac...190e38` | ⚠️ Unaudited |
| OsTokenConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x287d1e...66eb59`; ethereum `0x2aae83...a22120`; ethereum `0xe88222...fb1cd5` | ⚠️ Unaudited |
| OsTokenFlashLoans | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebe12d...fbf5d2` | ⚠️ Unaudited |
| OsTokenVaultController | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2a261e...000306`; ethereum `0xfe7083...44b521` | ⚠️ Unaudited |
| PendleMarketV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09fa04...6d4fb9` | ⚠️ Unaudited |
| PendleYieldToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 27 deployments: ethereum `0x029d62...9c1840`; ethereum `0x0310a8...7fcbcb`; ethereum `0x03722c...ea3987`; ethereum `0x079f21...542e32`; ethereum `0x08aefe...b7d2b0`; ethereum `0x11ccff...064aba`; ethereum `0x1de6ff...52abbe`; ethereum `0x1e24b0...aebf6f`; ethereum `0x27f6f2...9877f7`; ethereum `0x3568f1...c83978`; ethereum `0x48bbbe...f165da`; ethereum `0x4a8036...b0c9ee`; ethereum `0x5d8b3c...09b3ed`; ethereum `0x5db8a2...29f988`; ethereum `0x708dd9...3eb868`; ethereum `0x719b51...8f1d7a`; ethereum `0x733ee9...322464`; ethereum `0x77de4b...d2cc39`; ethereum `0x7b64b9...916ce1`; ethereum `0x89e7f4...ce9971`; ethereum `0x946934...906264`; ethereum `0x965122...cd2b9f`; ethereum `0xaac7db...43ea02`; ethereum `0xb7e51d...27272b`; ethereum `0xbe0553...937427`; ethereum `0xe8ef80...391712`; ethereum `0xeb993b...1f368e` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x481f28...799592` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x802351...dfe471`; ethereum `0xb31f53...11d702` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3c405f...9acd68`; ethereum `0x63a11f...a8d7fe` | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xbf1762...1649df`; ethereum `0xd10625...99705a`; ethereum `0xeef363...4acdd3` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x32a07b...f39f7a`; ethereum `0x9ace20...1b4cf9`; ethereum `0x9f805f...fdad12`; ethereum `0xbe23bb...9c1ba9` | ⚠️ Unaudited |
| RewardEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d34a...3ecee0` | ⚠️ Unaudited |
| RewardSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x439b60...febcd9`; ethereum `0x67561c...6aca9b`; ethereum `0xe00512...5b1902` | ⚠️ Unaudited |
| RewardSplitterFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x256af2...6cc5f8`; ethereum `0x8c512f...8b1dba`; ethereum `0x90a942...797449` | ⚠️ Unaudited |
| RlpPriceAggregatorV3Interface | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4e35e7...474ecb`; ethereum `0xadb2c1...4e66b2` | ⚠️ Unaudited |
| RlpPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x03f75a...fff85c`; ethereum `0x313198...06371e`; ethereum `0xaa33e5...b2d565` | ⚠️ Unaudited |
| RlpPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5e90b0...8e1aa1`; ethereum `0xae2364...f3574d` | ⚠️ Unaudited |
| RlpUpOnlyPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x093285...ab0dc6`; ethereum `0x2d748a...82a2c0`; ethereum `0x40b988...aa0580` | ⚠️ Unaudited |
| RumpelWalletFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5774ab...db2937` | ⚠️ Unaudited |
| SharedMevEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x07a98f...488a2f`; ethereum `0x48319f...20ff86` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x142198...69de32`; ethereum `0xab17c1...451978` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1fc1bc...ffdeaf`; ethereum `0x5daa06...62084b` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x234c90...1ad06c`; ethereum `0x271872...26b654` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc45430...30eb28`; ethereum `0xd2ee27...d4be0e` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x35533f...16868b`; ethereum `0x46c1c1...caeaab`; ethereum `0xb1b385...99f15c` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x35e5db...e8a4b9`; ethereum `0xc31389...aa5fdc` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x4956b5...528f96`; ethereum `0x66a1e3...f3e110`; ethereum `0xef4c4b...a1fabe` | ⚠️ Unaudited |
| StakedEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82fe8c...baaa75` | ⚠️ Unaudited |
| StakedTokenDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x53c5b7...08031e`; ethereum `0x6ac1f6...04dbaf`; ethereum `0xbac23e...72ac69`; ethereum `0xbb2213...85e32c` | ⚠️ Unaudited |
| StakedUSDeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf967...bac41d` | ⚠️ Unaudited |
| StUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0da21d...cabf61`; ethereum `0x56abf7...32ecc2` | ⚠️ Unaudited |
| StUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6c8984...10aab4`; ethereum `0xba1600...973da7` | ⚠️ Unaudited |
| StUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcf3e9d...5678bd`; ethereum `0xf8391a...84c46b` | ⚠️ Unaudited |
| swETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf951e3...7ded78` | ⚠️ Unaudited |
| TestnetERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabb158...3cbea7` | ⚠️ Unaudited |
| TheCounter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa27a69...e55861`; ethereum `0xc7ab90...1eafa0` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290d95...f6ebee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0795ab...aa28c3`; ethereum `0x2998d4...51c670` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x47ebb0...11b8ed`; ethereum `0x58ca83...3e9a16` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa411cc...c94f9c`; ethereum `0xad64a5...84cf2e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb713c3...d9d914`; ethereum `0xdc876a...3cef1b` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xacb702...d62b8e`; ethereum `0xc657b2...428691` | ⚠️ Unaudited |
| TreasuryIntermediateEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x84b883...acfed6`; ethereum `0xdce795...6c76a8` | ⚠️ Unaudited |
| UniswapV3PointSellingController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x027d52...7ad581` | ⚠️ Unaudited |
| USDtb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea8a76...39e475` | ⚠️ Unaudited |
| USDtbMinting | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3ddbf...48416a` | ⚠️ Unaudited |
| UsrExternalRequestsManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac85ef...a95f2e` | ⚠️ Unaudited |
| USRPriceAggregatorV3Interface | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8a9341...c46f64`; ethereum `0xf9c7c2...7ce88c` | ⚠️ Unaudited |
| UsrPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7f4518...9c261c`; ethereum `0xc16b2a...c2785d` | ⚠️ Unaudited |
| UsrRedemptionExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x60a7b7...897c37`; ethereum `0x7078c8...d52489`; ethereum `0xb69b2e...c96be6` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x2dabce...68adac`; ethereum `0xbe3ca3...9aff4e` | ⚠️ Unaudited |
| VaultRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x231fa7...331c3c`; ethereum `0x414f02...17539a`; ethereum `0x4cbd14...7af11e`; ethereum `0x651ef8...a59890`; ethereum `0x7f8053...13d956`; ethereum `0xc13865...1784a2`; ethereum `0xe61f34...b7c87b` | ⚠️ Unaudited |
| VaultsRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3a0008...4fc20e`; ethereum `0xbbe532...ba0bc2` | ⚠️ Unaudited |
| VaultTokenized | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x65b560...d69d63`; ethereum `0xb8fd82...ff056c`; ethereum `0xc10a7f...e3a1da` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x057d76...be1cde`; ethereum `0xd27ff9...37411b` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x09dcfa...d860c6`; ethereum `0x68aa53...d60379` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x122ba9...b32ac6`; ethereum `0x7d5305...1b5dda` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1d56d2...851999`; ethereum `0xfad078...975005` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x253c2d...c5a65e`; ethereum `0x7e59b4...abfa7b` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5c9960...945778`; ethereum `0xd1a6c3...7b6e32` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcdfb1f...bc8253`; ethereum `0xdb46cc...a955c7` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd2de09...12d3b7`; ethereum `0xd961c8...f9b5cd` | ⚠️ Unaudited |
| WstUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1202f5...c75055` | ⚠️ Unaudited |
| WstUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ed548...359cc0` | ⚠️ Unaudited |
| WstUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x878943...43dd34`; ethereum `0x8b480b...c44ee6` | ⚠️ Unaudited |
| ZtakingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf047ab...aeafa6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e426...0888ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35af40...a7d593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e2cc1...76dc65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x630f27...5294de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x932f09...b936fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa42ef8...ad593e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad0627...a1f6fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf8268...9fed29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2ecc7...49579a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7f6a...fe6763` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024.04.25 FPS Points Tokenization.pdf](https://github.com/sense-finance/point-tokenization-vault/blob/main/audits/2024.04.25%20FPS%20Points%20Tokenization.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2024.07.22 Darklinear Rumpel Wallet.pdf](https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.22%20Darklinear%20Rumpel%20Wallet.pdf) | Darklinear | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [2024.07.15 FPS Rumpel Wallet.pdf](https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.15%20FPS%20Rumpel%20Wallet.pdf) | FPS | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [audits.sherlock.xyz/contests/494](https://audits.sherlock.xyz/contests/494) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2953] 2024.04.25 FPS Points Tokenization.pdf — no match: Scope section explicitly lists PToken.sol and PointTokenVault.sol as in-scope files.
- [2954] 2024.07.22 Darklinear Rumpel Wallet.pdf — no match: No reason recorded
- [2955] 2024.07.15 FPS Rumpel Wallet.pdf — no match: Only RumpelGuard.sol is explicitly named in scope; Gnosis Safe code is out of scope.
- [2956] audits.sherlock.xyz/contests/494 — no match: The provided text is a header snippet from a contest page, not a full audit report. No contract names, scope section, or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024.04.25 FPS Points Tokenization.pdf | PToken | unmatched — not counted | — | listed in scope | no |
| 2024.04.25 FPS Points Tokenization.pdf | PointTokenVault | unmatched — not counted | — | listed in scope | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | PToken | unmatched — not counted | — | — | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | PointTokenVault | unmatched — not counted | — | — | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | RumpelGuard | unmatched — not counted | — | — | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | RumpelModule | unmatched — not counted | — | — | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | RumpelWalletFactory | unmatched — not counted | — | — | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | SignMessageLib | unmatched — not counted | — | — | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | SignatureValidationBeacon | unmatched — not counted | — | — | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | SignatureValidationImplementation | unmatched — not counted | — | — | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | compatibilityFallbackHandler | unmatched — not counted | — | — | no |
| 2024.07.15 FPS Rumpel Wallet.pdf | RumpelGuard | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 107 |
| upstream | 7 |
| standard_library | 6 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: n/a

Zero-match audit list:

- [2953] 2024.04.25 FPS Points Tokenization.pdf
- [2954] 2024.07.22 Darklinear Rumpel Wallet.pdf
- [2955] 2024.07.15 FPS Rumpel Wallet.pdf
- [2956] audits.sherlock.xyz/contests/494

Fork inheritance lineage and inherited audits are included when available.
