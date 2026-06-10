# Agentic Audit Brief: Bracket Protocol

## Project Overview

- Project: Bracket Protocol (`bracket-protocol`)
- Website: [https://www.bracket.fi/](https://www.bracket.fi/)
- Lifecycle: active (Tier 0, 83.1% below peak)
- Generated: 2026-06-10T20:59:01.113Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, ethereum
- Contract surface: 58 unique implementations (146 raw deployments)
- DeFi Llama TVL: $3,082,190.00
- On-chain TVL (included contracts): $622,427,001.87
- TVL by chain: Ethereum $610,777,217.93 | Arbitrum $11,649,783.94

## Project Description

Bracket Protocol is an institutional digital asset vault infrastructure and managed DeFi strategy platform for allocators, issuers, and asset managers. Current product context should be aligned with DefiLlama child protocols including Bracket Vaults and Bracket LST, while legacy or zero-TVL products such as Bracket Escrow Staking and BracketX should be described only with their current status and TVL context. Unsupported claims about escrow derivative tokens flowing into Bracket Vaults or BrktETH serving as a vault deposit asset should be omitted unless directly evidenced.

### Architecture

Bracket Escrow Staking mints derivative tokens that can be used within Bracket Vaults for additional yield strategies. The BrktETH liquid staking token may serve as a deposit asset in vaults, creating a unified ecosystem where staked assets flow between escrow, LST, and vault products.

## Audit Coverage Summary

- Verified implementations audited: 8/46 (17.4%)
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 58
- Raw deployments: 146
- Audits discovered: 5
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $619,345,920.00
- Latest audit: 2025-09 (fresh)
- Staleness: 1 fresh, 2 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian | Tier 2 | 8 | 17.4% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BracketVaultV2 | core_logic | ethereum | 14 deployments: ethereum [`0x3588e6...65e71b`](./contracts/ethereum-1/0x3588e6cb5dca99e35ba2e2a5d42cddb46365e71b/); ethereum `0x3a77cd...aab7f6`; ethereum `0x3ce19f...d318cb`; ethereum `0x4d8d05...9e1b00`; ethereum `0x661011...c587d8`; ethereum `0x6b3c48...2dbb4d`; ethereum `0x72de68...480a8a`; ethereum `0x7abf0a...68b7f2`; ethereum `0x80aa12...a5331e`; ethereum `0x9f96e4...567533`; ethereum `0xa298b8...af43d5`; ethereum `0xa99f01...3a0f52`; ethereum `0xb8ca40...f7a5eb`; ethereum `0xf29de9...fb6e9c` | ✅ Audited |
| BracketVault | core_logic | ethereum | 3 deployments: ethereum [`0x4eeec6...5ecef2`](./contracts/ethereum-1/0x4eeec646460b6fef19af46bf4e97bdd9335ecef2/); ethereum `0x6f0732...8b965d`; ethereum `0x8c24dd...5c00d1` | ✅ Audited |
| BracketWrappedVault | core_logic | ethereum | 6 deployments: ethereum [`0x2a5e0e...e8a6c2`](./contracts/ethereum-1/0x2a5e0e5a5a11be269ee94be6dda8bd9379e8a6c2/); ethereum `0x3ebfa3...23c1ee`; ethereum `0x6fe42a...ad62d0`; ethereum `0x7309e1...97d5ff`; ethereum `0x91094d...131b5f`; ethereum `0xa4f059...52d4f4` | ✅ Audited |
| BrktETH | unknown | ethereum | 3 deployments: ethereum [`0x22ad51...dc0640`](./contracts/ethereum-1/0x22ad51adcb087ed283f05173e1db478c0bdc0640/); ethereum `0x6c8550...1accd6`; ethereum `0xe4f104...2d145a` | ✅ Audited |
| BrktETHRouter | adapter | ethereum | [`0xcb3358...0397cc`](./contracts/ethereum-1/0xcb3358afef9bd888d8bfed436c4ef072600397cc/) | ✅ Audited |
| KYCWhitelist | unknown | ethereum | 7 deployments: ethereum [`0x153ae1...44fb21`](./contracts/ethereum-1/0x153ae19301bdb53627bba296195270115b44fb21/); ethereum `0x162f86...e11183`; ethereum `0x1925c3...3e2f97`; ethereum `0x599aa7...455bc3`; ethereum `0x6a3bab...3256d3`; ethereum `0x90e3f7...539feb`; ethereum `0xe9cb91...07f7ac` | ✅ Audited |
| NavUpdater | unknown | ethereum | 3 deployments: ethereum [`0x5fac6b...318e8b`](./contracts/ethereum-1/0x5fac6bc8646bb345178d7156153ae58ba3318e8b/); ethereum `0xaacf9f...d7a425`; ethereum `0xfe7aad...2c3788` | ✅ Audited |
| VaultRouter | adapter | ethereum | [`0xb737f5...a3c4e3`](./contracts/ethereum-1/0xb737f54637c5c66f47c6818c80ccc7a9a3a3c4e3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| OsTokenVaultController | core_logic | ethereum | 2 deployments: ethereum [`0x2a261e...000306`](./contracts/ethereum-1/0x2a261e60fb14586b474c208b1b7ac6d0f5000306/); ethereum `0xfe7083...44b521` | ⚠️ Unaudited |
| EthGenesisVault | core_logic | ethereum | 5 deployments: ethereum [`0x124c33...510928`](./contracts/ethereum-1/0x124c33d07f94b31adf87c12f7ca3a586d3510928/); ethereum `0x2d491b...135f31`; ethereum `0x7aa02b...549733`; ethereum `0x9481a4...2fabd7`; ethereum `0xac0f90...652885` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | [`0xec70dc...a5ffa8`](./contracts/arbitrum-42161/0xec70dcb4a1efa46b8f2d97c310c9c4790ba5ffa8/) | ⚠️ Unaudited |
| AETH_R21 | unknown | ethereum | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| BracketEscrow | operational_periphery | arbitrum | [`0x9b9d72...7970bc`](./contracts/arbitrum-42161/0x9b9d7297c3374dafa2a609d47c79904e467970bc/) | ⚠️ Unaudited |
| BracketVaultLens | core_logic | ethereum | 2 deployments: ethereum [`0x0072e8...fa7085`](./contracts/ethereum-1/0x0072e80b04c17bfd6c6d0a21a17ae118defa7085/); ethereum `0xcdc3a8...29082c` | ⚠️ Unaudited |
| CumulativeMerkleDrop | operational_periphery | ethereum | 2 deployments: ethereum [`0x849da6...02e540`](./contracts/ethereum-1/0x849da65afed8483152f8baa75f776c6f2c02e540/); ethereum `0xf6bbbc...ad5354` | ⚠️ Unaudited |
| DepositDataRegistry | registry | ethereum | [`0x75ab6d...35223e`](./contracts/ethereum-1/0x75ab6ddce07556639333d3df1eaa684f5735223e/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | 2 deployments: ethereum [`0x5c4606...f59219`](./contracts/ethereum-1/0x5c4606cb0ee50fdc4fad8722c99e8d6d49f59219/); ethereum `0xecec1a...59b90f` | ⚠️ Unaudited |
| EthBlocklistErc20Vault | core_logic | ethereum | 4 deployments: ethereum [`0x0b4f6b...099556`](./contracts/ethereum-1/0x0b4f6bfb694790051e0203db83edbb5888099556/); ethereum `0x5f31ed...058988`; ethereum `0x84d44a...311e9e`; ethereum `0xc25529...30f14a` | ⚠️ Unaudited |
| EthBlocklistVault | core_logic | ethereum | 3 deployments: ethereum [`0x00e3af...d4cd3c`](./contracts/ethereum-1/0x00e3af59e2496d030e5b2c629784db284fd4cd3c/); ethereum `0x2d29f3...d4bcad`; ethereum `0xd19e4b...9c8478` | ⚠️ Unaudited |
| EthErc20Vault | core_logic | ethereum | 5 deployments: ethereum [`0x3acdbd...7646e9`](./contracts/ethereum-1/0x3acdbdbf0459d376df9378c02af50c83dc7646e9/); ethereum `0x6ddc10...26cb53`; ethereum `0x7e5198...ceb5d5`; ethereum `0x8ee00c...6773de`; ethereum `0xca8665...d98207` | ⚠️ Unaudited |
| EthOsTokenVaultEscrow | operational_periphery | ethereum | [`0x09e842...763605`](./contracts/ethereum-1/0x09e84205df7c68907e619d07afd90143c5763605/) | ⚠️ Unaudited |
| EthPrivErc20Vault | core_logic | ethereum | 4 deployments: ethereum [`0x28f325...429e71`](./contracts/ethereum-1/0x28f325dd287a5984b754d34cfca38af3a8429e71/); ethereum `0x453056...668e3e`; ethereum `0x9488a7...558c88`; ethereum `0xf5f205...1ba69a` | ⚠️ Unaudited |
| EthPrivVault | core_logic | ethereum | 4 deployments: ethereum [`0x135f45...47a035`](./contracts/ethereum-1/0x135f45e0179dd928e73422b40bdc6c5d7047a035/); ethereum `0x81ab00...57798c`; ethereum `0xb1bfaf...8197fb`; ethereum `0xb53a6c...fbf3bc` | ⚠️ Unaudited |
| EthRestakeBlocklistErc20Vault | core_logic | ethereum | [`0x5fcd8b...d49e4e`](./contracts/ethereum-1/0x5fcd8bb2e3dde5809b2106039b741c041bd49e4e/) | ⚠️ Unaudited |
| EthRestakeBlocklistVault | core_logic | ethereum | [`0x3e3037...addb67`](./contracts/ethereum-1/0x3e30370cabd4b4d95be17706d840ff9de1addb67/) | ⚠️ Unaudited |
| EthRestakeErc20Vault | core_logic | ethereum | [`0x215f4c...b0eee4`](./contracts/ethereum-1/0x215f4c69c3d1461c7aa38c9c73c27e10cfb0eee4/) | ⚠️ Unaudited |
| EthRestakePrivErc20Vault | core_logic | ethereum | [`0xedebe7...c36ee5`](./contracts/ethereum-1/0xedebe792c6190be612cbe97f628137faa8c36ee5/) | ⚠️ Unaudited |
| EthRestakePrivVault | core_logic | ethereum | [`0x792ff3...25e353`](./contracts/ethereum-1/0x792ff341e1db4ab20fbfb93c0fc071501525e353/) | ⚠️ Unaudited |
| EthRestakeVault | core_logic | ethereum | [`0x59adb4...e073bb`](./contracts/ethereum-1/0x59adb46407ebf4cba923f91f2c06acc4b2e073bb/) | ⚠️ Unaudited |
| EthRestakeVaultFactory | registry | ethereum | 6 deployments: ethereum [`0x026df3...d11b2c`](./contracts/ethereum-1/0x026df36ec050e7f473cbfc30aa42946d3ed11b2c/); ethereum `0x32634d...4c9fce`; ethereum `0x44ecc3...c565e1`; ethereum `0x6a2835...cc31e1`; ethereum `0x807305...d6f0af`; ethereum `0xf63666...6bf3a2` | ⚠️ Unaudited |
| EthValidatorsChecker | unknown | ethereum | [`0xac9125...fafc84`](./contracts/ethereum-1/0xac9125646185cb58e86e77d5f402efa3fafafc84/) | ⚠️ Unaudited |
| EthVault | core_logic | ethereum | 4 deployments: ethereum [`0x0cb2cb...5cae78`](./contracts/ethereum-1/0x0cb2cbdf9a030ffbdea6f20a019f1feaca5cae78/); ethereum `0x35dc75...2ca6cf`; ethereum `0xba0b5b...ccff23`; ethereum `0xdecb60...610f8f` | ⚠️ Unaudited |
| EthVaultFactory | registry | ethereum | 18 deployments: ethereum [`0x170618...8dfe5e`](./contracts/ethereum-1/0x170618936cd96b1ed8112ec3d3778374b38dfe5e/); ethereum `0x1be3ad...41b07c`; ethereum `0x2a0335...667960`; ethereum `0x42fe3b...07f699`; ethereum `0x4e3d81...774017`; ethereum `0x551805...e2ee7d`; ethereum `0x58fdd3...3a2949`; ethereum `0x7a4f99...1cba4a`; ethereum `0x875059...5f1bb8`; ethereum `0x96fff3...e175ee`; ethereum `0xb7832c...f4c896`; ethereum `0xd2468d...8f2cba`; ethereum `0xdada5a...659fcc`; ethereum `0xe84183...b5bb11`; ethereum `0xe9f3e6...27ba0f`; ethereum `0xf3c94c...daf3b8`; ethereum `0xfaa059...715d53`; ethereum `0xff0650...9362ca` | ⚠️ Unaudited |
| Keeper | operational_periphery | ethereum | 2 deployments: ethereum [`0x435192...ba3f7a`](./contracts/ethereum-1/0x435192a898a5ee86bbc8951471e5fbe721ba3f7a/); ethereum `0x6b5815...b487b5` | ⚠️ Unaudited |
| Oracles | operational_periphery | ethereum | [`0xf0c167...c678d6`](./contracts/ethereum-1/0xf0c1670364d4b5c4e9dc8062cdd45068d9c678d6/) | ⚠️ Unaudited |
| OsTokenConfig | governance | ethereum | 3 deployments: ethereum [`0x287d1e...66eb59`](./contracts/ethereum-1/0x287d1e2a8de183a8bf8f2b09fa1340fbd766eb59/); ethereum `0x2aae83...a22120`; ethereum `0xe88222...fb1cd5` | ⚠️ Unaudited |
| OsTokenFlashLoans | token | ethereum | [`0xebe12d...fbf5d2`](./contracts/ethereum-1/0xebe12d858e55ddc5fc5a8153dc3e117824fbf5d2/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | [`0x481f28...799592`](./contracts/ethereum-1/0x481f28c0d733614af87897e43d0d52c451799592/) | ⚠️ Unaudited |
| RewardEthToken | token | ethereum | [`0x01d34a...3ecee0`](./contracts/ethereum-1/0x01d34aee72325f1d4a748f13c2169404523ecee0/) | ⚠️ Unaudited |
| RewardSplitter | operational_periphery | ethereum | 3 deployments: ethereum [`0x439b60...febcd9`](./contracts/ethereum-1/0x439b60d3c886e711dad30cf23a2bbd5388febcd9/); ethereum `0x67561c...6aca9b`; ethereum `0xe00512...5b1902` | ⚠️ Unaudited |
| RewardSplitterFactory | operational_periphery | ethereum | 3 deployments: ethereum [`0x256af2...6cc5f8`](./contracts/ethereum-1/0x256af27ce81282a0491a5361172c1db08f6cc5f8/); ethereum `0x8c512f...8b1dba`; ethereum `0x90a942...797449` | ⚠️ Unaudited |
| RSETH | token | ethereum | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ⚠️ Unaudited |
| SharedMevEscrow | operational_periphery | ethereum | 2 deployments: ethereum [`0x07a98f...488a2f`](./contracts/ethereum-1/0x07a98f01f5a91043f1396f101a21e91e90488a2f/); ethereum `0x48319f...20ff86` | ⚠️ Unaudited |
| StakedEthToken | token | ethereum | [`0x82fe8c...baaa75`](./contracts/ethereum-1/0x82fe8c78cae0013471179e76224ef89941baaa75/) | ⚠️ Unaudited |
| VaultFactoryV2 | registry | ethereum | 2 deployments: ethereum [`0x01323e...59c256`](./contracts/ethereum-1/0x01323e0054651adf2c10ce90351439840559c256/); ethereum `0x20249e...9207e1` | ⚠️ Unaudited |
| VaultsRegistry | registry | ethereum | 2 deployments: ethereum [`0x3a0008...4fc20e`](./contracts/ethereum-1/0x3a0008a588772446f6e656133c2d5029cc4fc20e/); ethereum `0xbbe532...ba0bc2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x18db91...08a8d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3e2cc1...76dc65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x574952...42139a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5e5c32...c62783` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x630f27...5294de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x63ad7c...488c78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x65e9ab...041154` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x766bdb...0082d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x932f09...b936fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2ecc7...49579a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd20670...f97485` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe3c02a...9a20fe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://2747094502-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FU4cJWTpKt8p39EIBK6mR%2Fuploads%2FLZIojAWw6TSs5Wl4cKl1%2FBracket_Bracket_Wrapped_Vault_Updates_report.pdf) | Guardian | Audit | 2025-09 | fresh | Direct | contract_name | 34 | high |
| [Rendered PDF capture](https://2747094502-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FU4cJWTpKt8p39EIBK6mR%2Fuploads%2FzV05dwewKc7DXdBR3StG%2FBracket%20-%20KYC%20Whitelist_report%20(1).pdf) | Guardian | Audit | 2025-03 | aging | Direct | contract_name | 11 | high |
| [Rendered PDF capture](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/AKOHIS45wGCYVmmPep7K/Bracket%20Rd.2%20-%20LST%20Vault_report.pdf) | Guardian | Audit | 2025-03 | aging | Direct | contract_name | 6 | high |
| [Rendered PDF capture](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/M58MmJtnx3aIcLSaocbO/2024-01-20_Bracket.pdf) | Guardian | Audit | 2024-01 | stale | Direct | contract_name | 6 | high |
| [Rendered PDF capture](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/RyVLVPDnszgXoTEA7sbU/Bracket%20Fi%20Escrow%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2a261e...000306`](./contracts/ethereum-1/0x2a261e60fb14586b474c208b1b7ac6d0f5000306/) | OsTokenVaultController | core_logic | $308,378,070.07 | Verified native implementation with $308,378,070.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x124c33...510928`](./contracts/ethereum-1/0x124c33d07f94b31adf87c12f7ca3a586d3510928/) | EthGenesisVault | core_logic | $299,318,065.98 | Verified native implementation with $299,318,065.98 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0072e8...fa7085`](./contracts/ethereum-1/0x0072e80b04c17bfd6c6d0a21a17ae118defa7085/) | BracketVaultLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x849da6...02e540`](./contracts/ethereum-1/0x849da65afed8483152f8baa75f776c6f2c02e540/) | CumulativeMerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75ab6d...35223e`](./contracts/ethereum-1/0x75ab6ddce07556639333d3df1eaa684f5735223e/) | DepositDataRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b4f6b...099556`](./contracts/ethereum-1/0x0b4f6bfb694790051e0203db83edbb5888099556/) | EthBlocklistErc20Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00e3af...d4cd3c`](./contracts/ethereum-1/0x00e3af59e2496d030e5b2c629784db284fd4cd3c/) | EthBlocklistVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3acdbd...7646e9`](./contracts/ethereum-1/0x3acdbdbf0459d376df9378c02af50c83dc7646e9/) | EthErc20Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09e842...763605`](./contracts/ethereum-1/0x09e84205df7c68907e619d07afd90143c5763605/) | EthOsTokenVaultEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28f325...429e71`](./contracts/ethereum-1/0x28f325dd287a5984b754d34cfca38af3a8429e71/) | EthPrivErc20Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x135f45...47a035`](./contracts/ethereum-1/0x135f45e0179dd928e73422b40bdc6c5d7047a035/) | EthPrivVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fcd8b...d49e4e`](./contracts/ethereum-1/0x5fcd8bb2e3dde5809b2106039b741c041bd49e4e/) | EthRestakeBlocklistErc20Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e3037...addb67`](./contracts/ethereum-1/0x3e30370cabd4b4d95be17706d840ff9de1addb67/) | EthRestakeBlocklistVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x215f4c...b0eee4`](./contracts/ethereum-1/0x215f4c69c3d1461c7aa38c9c73c27e10cfb0eee4/) | EthRestakeErc20Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xedebe7...c36ee5`](./contracts/ethereum-1/0xedebe792c6190be612cbe97f628137faa8c36ee5/) | EthRestakePrivErc20Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x792ff3...25e353`](./contracts/ethereum-1/0x792ff341e1db4ab20fbfb93c0fc071501525e353/) | EthRestakePrivVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59adb4...e073bb`](./contracts/ethereum-1/0x59adb46407ebf4cba923f91f2c06acc4b2e073bb/) | EthRestakeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x026df3...d11b2c`](./contracts/ethereum-1/0x026df36ec050e7f473cbfc30aa42946d3ed11b2c/) | EthRestakeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac9125...fafc84`](./contracts/ethereum-1/0xac9125646185cb58e86e77d5f402efa3fafafc84/) | EthValidatorsChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cb2cb...5cae78`](./contracts/ethereum-1/0x0cb2cbdf9a030ffbdea6f20a019f1feaca5cae78/) | EthVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x170618...8dfe5e`](./contracts/ethereum-1/0x170618936cd96b1ed8112ec3d3778374b38dfe5e/) | EthVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x435192...ba3f7a`](./contracts/ethereum-1/0x435192a898a5ee86bbc8951471e5fbe721ba3f7a/) | Keeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0c167...c678d6`](./contracts/ethereum-1/0xf0c1670364d4b5c4e9dc8062cdd45068d9c678d6/) | Oracles | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x287d1e...66eb59`](./contracts/ethereum-1/0x287d1e2a8de183a8bf8f2b09fa1340fbd766eb59/) | OsTokenConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebe12d...fbf5d2`](./contracts/ethereum-1/0xebe12d858e55ddc5fc5a8153dc3e117824fbf5d2/) | OsTokenFlashLoans | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x481f28...799592`](./contracts/ethereum-1/0x481f28c0d733614af87897e43d0d52c451799592/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d34a...3ecee0`](./contracts/ethereum-1/0x01d34aee72325f1d4a748f13c2169404523ecee0/) | RewardEthToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x439b60...febcd9`](./contracts/ethereum-1/0x439b60d3c886e711dad30cf23a2bbd5388febcd9/) | RewardSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x256af2...6cc5f8`](./contracts/ethereum-1/0x256af27ce81282a0491a5361172c1db08f6cc5f8/) | RewardSplitterFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07a98f...488a2f`](./contracts/ethereum-1/0x07a98f01f5a91043f1396f101a21e91e90488a2f/) | SharedMevEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82fe8c...baaa75`](./contracts/ethereum-1/0x82fe8c78cae0013471179e76224ef89941baaa75/) | StakedEthToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01323e...59c256`](./contracts/ethereum-1/0x01323e0054651adf2c10ce90351439840559c256/) | VaultFactoryV2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a0008...4fc20e`](./contracts/ethereum-1/0x3a0008a588772446f6e656133c2d5029cc4fc20e/) | VaultsRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=57

Zero-match audit list:

- [2757] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
