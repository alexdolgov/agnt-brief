# Agentic Audit Brief: Bracket Protocol

## Project Overview

- Project: Bracket Protocol (`bracket-protocol`)
- Website: [https://www.bracket.fi/](https://www.bracket.fi/)
- Lifecycle: active (Tier 0, 83.1% below peak)
- Generated: 2026-05-24T07:39:17.677Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, ethereum
- Contract surface: 182 unique implementations (303 raw deployments)
- DeFi Llama TVL: $3,088,501.00
- On-chain TVL (included contracts): $923,663,481.46
- TVL by chain: Ethereum $912,013,697.52 | Arbitrum $11,649,783.94

## Project Description

Bracket Protocol is a multi-chain DeFi platform offering liquid staking, structured vaults, and escrow staking. It enables users to earn yield through automated strategies, stake assets for derivative tokens, and participate in governance-driven capital allocation.

### Architecture

Bracket Escrow Staking mints derivative tokens that can be used within Bracket Vaults for additional yield strategies. The BrktETH liquid staking token may serve as a deposit asset in vaults, creating a unified ecosystem where staked assets flow between escrow, LST, and vault products.

## Audit Coverage Summary

- Verified implementations audited: 9/146 (6.2%)
- Verified + Unaudited implementations: 137
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 182
- Raw deployments: 303
- Audits discovered: 5
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $920,582,399.59
- Latest audit: 2025-09 (fresh)
- Staleness: 1 fresh, 2 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian | Tier 2 | 9 | 6.2% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BracketVaultV2 | core_logic | ethereum | 14 deployments: ethereum [`0x3588e6...65e71b`](./contracts/ethereum-1/0x3588e6cb5dca99e35ba2e2a5d42cddb46365e71b/); ethereum `0x3a77cd...aab7f6`; ethereum `0x3ce19f...d318cb`; ethereum `0x4d8d05...9e1b00`; ethereum `0x661011...c587d8`; ethereum `0x6b3c48...2dbb4d`; ethereum `0x72de68...480a8a`; ethereum `0x7abf0a...68b7f2`; ethereum `0x80aa12...a5331e`; ethereum `0x9f96e4...567533`; ethereum `0xa298b8...af43d5`; ethereum `0xa99f01...3a0f52`; ethereum `0xb8ca40...f7a5eb`; ethereum `0xf29de9...fb6e9c` | ✅ Audited |
| BracketVault | core_logic | ethereum | 3 deployments: ethereum [`0x4eeec6...5ecef2`](./contracts/ethereum-1/0x4eeec646460b6fef19af46bf4e97bdd9335ecef2/); ethereum `0x6f0732...8b965d`; ethereum `0x8c24dd...5c00d1` | ✅ Audited |
| BracketWrappedVault | core_logic | ethereum | 6 deployments: ethereum [`0x2a5e0e...e8a6c2`](./contracts/ethereum-1/0x2a5e0e5a5a11be269ee94be6dda8bd9379e8a6c2/); ethereum `0x3ebfa3...23c1ee`; ethereum `0x6fe42a...ad62d0`; ethereum `0x7309e1...97d5ff`; ethereum `0x91094d...131b5f`; ethereum `0xa4f059...52d4f4` | ✅ Audited |
| BrktETH | unknown | ethereum | 3 deployments: ethereum [`0x22ad51...dc0640`](./contracts/ethereum-1/0x22ad51adcb087ed283f05173e1db478c0bdc0640/); ethereum `0x6c8550...1accd6`; ethereum `0xe4f104...2d145a` | ✅ Audited |
| BrktETHRouter | adapter | ethereum | [`0xcb3358...0397cc`](./contracts/ethereum-1/0xcb3358afef9bd888d8bfed436c4ef072600397cc/) | ✅ Audited |
| Config | governance | ethereum | 2 deployments: ethereum [`0xcd3a6c...d1a42e`](./contracts/ethereum-1/0xcd3a6c3e9e823e7c13fb0ee71f9360bacdd1a42e/); ethereum `0xfaf36e...022886` | ✅ Audited |
| KYCWhitelist | unknown | ethereum | 7 deployments: ethereum [`0x153ae1...44fb21`](./contracts/ethereum-1/0x153ae19301bdb53627bba296195270115b44fb21/); ethereum `0x162f86...e11183`; ethereum `0x1925c3...3e2f97`; ethereum `0x599aa7...455bc3`; ethereum `0x6a3bab...3256d3`; ethereum `0x90e3f7...539feb`; ethereum `0xe9cb91...07f7ac` | ✅ Audited |
| NavUpdater | unknown | ethereum | 3 deployments: ethereum [`0x5fac6b...318e8b`](./contracts/ethereum-1/0x5fac6bc8646bb345178d7156153ae58ba3318e8b/); ethereum `0xaacf9f...d7a425`; ethereum `0xfe7aad...2c3788` | ✅ Audited |
| VaultRouter | adapter | ethereum | [`0xb737f5...a3c4e3`](./contracts/ethereum-1/0xb737f54637c5c66f47c6818c80ccc7a9a3a3c4e3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (137)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| OsTokenVaultController | core_logic | ethereum | 2 deployments: ethereum [`0x2a261e...000306`](./contracts/ethereum-1/0x2a261e60fb14586b474c208b1b7ac6d0f5000306/); ethereum `0xfe7083...44b521` | ⚠️ Unaudited |
| OsToken | token | ethereum | 2 deployments: ethereum [`0x475e7d...b96702`](./contracts/ethereum-1/0x475e7d2bd7428deb68deaa933dbf0d5850b96702/); ethereum `0xf1c9ac...190e38` | ⚠️ Unaudited |
| EthGenesisVault | core_logic | ethereum | 5 deployments: ethereum [`0x124c33...510928`](./contracts/ethereum-1/0x124c33d07f94b31adf87c12f7ca3a586d3510928/); ethereum `0x2d491b...135f31`; ethereum `0x7aa02b...549733`; ethereum `0x9481a4...2fabd7`; ethereum `0xac0f90...652885` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | [`0xec70dc...a5ffa8`](./contracts/arbitrum-42161/0xec70dcb4a1efa46b8f2d97c310c9c4790ba5ffa8/) | ⚠️ Unaudited |
| GlobalPool_R46 | core_logic | ethereum | [`0x84db6e...936670`](./contracts/ethereum-1/0x84db6ee82b7cf3b47e8f19270abde5718b936670/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | 4 deployments: ethereum [`0x2d8ba0...aafc4f`](./contracts/ethereum-1/0x2d8ba08c19ae55bb785ca5b3c720f78917aafc4f/); ethereum `0x3bfce3...d18c4f`; ethereum `0xb70f12...06bc74`; ethereum `0xe7e39d...b294ce` | ⚠️ Unaudited |
| AETH_R1 | unknown | ethereum | 2 deployments: ethereum [`0x39b42a...02b6d5`](./contracts/ethereum-1/0x39b42a2008f35a36922389100d2c71c3b902b6d5/); ethereum `0x977803...ab6f3c` | ⚠️ Unaudited |
| AETH_R10 | unknown | ethereum | [`0xf1d675...4390f6`](./contracts/ethereum-1/0xf1d67526833263bb359a715e3e955bff864390f6/) | ⚠️ Unaudited |
| AETH_R11 | unknown | ethereum | [`0x6a6350...101e3b`](./contracts/ethereum-1/0x6a63503151acfe6d06a33cd41416b8594c101e3b/) | ⚠️ Unaudited |
| AETH_R12 | unknown | ethereum | [`0x0b9c04...f70300`](./contracts/ethereum-1/0x0b9c04c5f884ebfad7af7e0351bc03c080f70300/) | ⚠️ Unaudited |
| AETH_R13 | unknown | ethereum | [`0x0c906f...93d0f0`](./contracts/ethereum-1/0x0c906f8759e68899c487304246532fc4be93d0f0/) | ⚠️ Unaudited |
| AETH_R14 | unknown | ethereum | [`0x5835bf...828ccf`](./contracts/ethereum-1/0x5835bff99cfd43872ba6a90cd8a0a8cb24828ccf/) | ⚠️ Unaudited |
| AETH_R15 | unknown | ethereum | [`0x6a9366...7b641c`](./contracts/ethereum-1/0x6a9366f02b6e252e0cbe2e6b9cf0a8addd7b641c/) | ⚠️ Unaudited |
| AETH_R16 | unknown | ethereum | [`0x1e5e5c...5cb60f`](./contracts/ethereum-1/0x1e5e5cf3652989a57736901d95749a326f5cb60f/) | ⚠️ Unaudited |
| AETH_R21 | unknown | ethereum | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| AETH_R3 | unknown | ethereum | [`0x496b35...d8617d`](./contracts/ethereum-1/0x496b352514fabca14845651cfdf0b548f3d8617d/) | ⚠️ Unaudited |
| AETH_R4 | unknown | ethereum | [`0x23f7d0...c1181f`](./contracts/ethereum-1/0x23f7d037f5d02d0ba37571e717191776c4c1181f/) | ⚠️ Unaudited |
| AETH_R5 | unknown | ethereum | [`0x253f7e...03b8cc`](./contracts/ethereum-1/0x253f7e05d7f2cd1197d98fe8716e1ef5f803b8cc/) | ⚠️ Unaudited |
| AETH_R6 | unknown | ethereum | [`0xfe5dea...8e737f`](./contracts/ethereum-1/0xfe5dea3569e16d8a0a5449378087f1e80a8e737f/) | ⚠️ Unaudited |
| AETH_R7 | unknown | ethereum | [`0xb7c00d...d0784b`](./contracts/ethereum-1/0xb7c00d3ff2c9e6ceacfb206108f4661778d0784b/) | ⚠️ Unaudited |
| AETH_R8 | unknown | ethereum | [`0xf1e6e6...5b57a7`](./contracts/ethereum-1/0xf1e6e6247aaaf7e32850003c8e32d955e95b57a7/) | ⚠️ Unaudited |
| AETHF | unknown | ethereum | [`0x66bea5...071118`](./contracts/ethereum-1/0x66bea595aefd5a65799a920974b377ed20071118/) | ⚠️ Unaudited |
| aMATICb | unknown | ethereum | [`0xaef614...3cfeb7`](./contracts/ethereum-1/0xaef614270f356d20f9fc45910b34ef71383cfeb7/) | ⚠️ Unaudited |
| aMATICb_R1 | unknown | ethereum | [`0x7f9e9f...22c770`](./contracts/ethereum-1/0x7f9e9f51ac2ac8f1186ed1ae7264903d2122c770/) | ⚠️ Unaudited |
| aMATICb_R2 | unknown | ethereum | [`0xbc91be...89a0d8`](./contracts/ethereum-1/0xbc91bee07045e36b77c8aa3b6f51d9ec8a89a0d8/) | ⚠️ Unaudited |
| aMATICb_R3 | unknown | ethereum | [`0x6d6453...ccc5a7`](./contracts/ethereum-1/0x6d6453712c6758f548efc2277e8302588cccc5a7/) | ⚠️ Unaudited |
| aMATICb_R4 | unknown | ethereum | [`0x42f91d...eed868`](./contracts/ethereum-1/0x42f91df19b5bbeca0bc1ed488e282090dfeed868/) | ⚠️ Unaudited |
| aMATICb_R5 | unknown | ethereum | [`0xc6e395...800ac2`](./contracts/ethereum-1/0xc6e39571fa413b8d3e1b47ef907222c84f800ac2/) | ⚠️ Unaudited |
| aMATICb_R6 | unknown | ethereum | [`0xd45021...28ce3b`](./contracts/ethereum-1/0xd4502103dd36c5595dccedf33e7308c61428ce3b/) | ⚠️ Unaudited |
| aMATICb_R7 | unknown | ethereum | [`0x99534e...38ebfe`](./contracts/ethereum-1/0x99534ef705df1fff4e4bd7bbaaf9b0dff038ebfe/) | ⚠️ Unaudited |
| aMATICc | unknown | ethereum | [`0x46a0cc...1c9d8d`](./contracts/ethereum-1/0x46a0cc1ad0710e6fafd6b22395c5f3375a1c9d8d/) | ⚠️ Unaudited |
| aMATICc_R1 | unknown | ethereum | 3 deployments: ethereum [`0x887214...e301fd`](./contracts/ethereum-1/0x887214fcd6c29d99adb8dd9d225b2f85d3e301fd/); ethereum `0xb25db3...398e37`; ethereum `0xe259a9...1ef796` | ⚠️ Unaudited |
| aMATICc_R2 | unknown | ethereum | [`0x1352c4...43e6ef`](./contracts/ethereum-1/0x1352c426168895f3682becfa5821c9874a43e6ef/) | ⚠️ Unaudited |
| aMATICc_R4 | unknown | ethereum | [`0x26dcfb...c5480c`](./contracts/ethereum-1/0x26dcfbfa8bc267b250432c01c982eaf81cc5480c/) | ⚠️ Unaudited |
| AnkrBond_R1 | unknown | ethereum | [`0x4e56ec...3e3a9c`](./contracts/ethereum-1/0x4e56ec889e5a3f8771862dd765ec76bfed3e3a9c/) | ⚠️ Unaudited |
| AnkrFuture_R0 | unknown | ethereum | [`0x5184b6...115e7b`](./contracts/ethereum-1/0x5184b698c147202621b57878b4f5d1b661115e7b/) | ⚠️ Unaudited |
| AnkrProtocol | unknown | ethereum | 4 deployments: ethereum [`0x4432fa...f1d784`](./contracts/ethereum-1/0x4432faee427ae2ca961d5bfeefc2eed4e1f1d784/); ethereum `0x673ef4...704568`; ethereum `0xae4bff...f1e0f4`; ethereum `0xcdcdf4...a2f251` | ⚠️ Unaudited |
| AnkrTokenStaking | token | ethereum | 2 deployments: ethereum [`0x5c87cc...85408c`](./contracts/ethereum-1/0x5c87cc2153d25f8d8b95ea3c04ab22583285408c/); ethereum `0xab15b0...1f9e7f` | ⚠️ Unaudited |
| Beacon_R0 | registry | ethereum | 2 deployments: ethereum [`0x27ccac...37beb3`](./contracts/ethereum-1/0x27ccacc5eb28625d2be45c4ac29e5f1c3637beb3/); ethereum `0x429ce3...180ead` | ⚠️ Unaudited |
| BracketEscrow | operational_periphery | arbitrum | [`0x9b9d72...7970bc`](./contracts/arbitrum-42161/0x9b9d7297c3374dafa2a609d47c79904e467970bc/) | ⚠️ Unaudited |
| BracketVaultLens | core_logic | ethereum | 2 deployments: ethereum [`0x0072e8...fa7085`](./contracts/ethereum-1/0x0072e80b04c17bfd6c6d0a21a17ae118defa7085/); ethereum `0xcdc3a8...29082c` | ⚠️ Unaudited |
| CrossChainBridge | operational_periphery | ethereum | [`0xd6d4fe...c44ebd`](./contracts/ethereum-1/0xd6d4fe092bf124438eff841084ecedc575c44ebd/) | ⚠️ Unaudited |
| CrossChainBridge_R1 | operational_periphery | ethereum | [`0x8aeed0...97d21d`](./contracts/ethereum-1/0x8aeed0ce13064f6658ade6753b80af20f997d21d/) | ⚠️ Unaudited |
| CrossChainBridge_R2 | operational_periphery | ethereum | 2 deployments: ethereum [`0x00a7ac...605f3d`](./contracts/ethereum-1/0x00a7ac37c6b9a10e0c68051390695546a5605f3d/); ethereum `0xe7ac51...10b795` | ⚠️ Unaudited |
| CumulativeMerkleDrop | operational_periphery | ethereum | 2 deployments: ethereum [`0x849da6...02e540`](./contracts/ethereum-1/0x849da65afed8483152f8baa75f776c6f2c02e540/); ethereum `0xf6bbbc...ad5354` | ⚠️ Unaudited |
| DepositDataRegistry | registry | ethereum | [`0x75ab6d...35223e`](./contracts/ethereum-1/0x75ab6ddce07556639333d3df1eaa684f5735223e/) | ⚠️ Unaudited |
| EarnConfig | governance | ethereum | 2 deployments: ethereum [`0x1edf13...2de12e`](./contracts/ethereum-1/0x1edf13d931de4ffc1720fe902825f84c982de12e/); ethereum `0xe01f4f...d33a57` | ⚠️ Unaudited |
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
| FETH | unknown | ethereum | [`0x5ec209...7d0aee`](./contracts/ethereum-1/0x5ec2096e42634fe6971ba8a52460bf4ac87d0aee/) | ⚠️ Unaudited |
| FETH_R1 | unknown | ethereum | [`0x170da5...233934`](./contracts/ethereum-1/0x170da5efcf563e5a5445ca7685801913c4233934/) | ⚠️ Unaudited |
| FETH_R10 | unknown | ethereum | [`0xac2e0b...6f335c`](./contracts/ethereum-1/0xac2e0b6db96f345ee19fda8a9be5907e996f335c/) | ⚠️ Unaudited |
| FETH_R11 | unknown | ethereum | 2 deployments: ethereum [`0x5e3b11...1816ef`](./contracts/ethereum-1/0x5e3b11f36102be32edb4a1ad3cae4b9c2f1816ef/); ethereum `0xb7f3db...b24e4a` | ⚠️ Unaudited |
| FETH_R12 | unknown | ethereum | [`0xa1c7bb...168167`](./contracts/ethereum-1/0xa1c7bb5c6028eb5e81db3ddc13364231df168167/) | ⚠️ Unaudited |
| FETH_R13 | unknown | ethereum | [`0xb71305...979926`](./contracts/ethereum-1/0xb713053a8fe0becd69ef9cce4e24524133979926/) | ⚠️ Unaudited |
| FETH_R14 | unknown | ethereum | [`0x3facae...82f0fa`](./contracts/ethereum-1/0x3facaef31766a1a0dfb02d845ccf3e252182f0fa/) | ⚠️ Unaudited |
| FETH_R15 | unknown | ethereum | [`0xa7b212...8a9aa1`](./contracts/ethereum-1/0xa7b212a0d452cbbc89c25d6d7e388ad5898a9aa1/) | ⚠️ Unaudited |
| FETH_R16 | unknown | ethereum | [`0x10d0d4...43eabc`](./contracts/ethereum-1/0x10d0d468d350ab6c646f9d68e1f3b0cd6c43eabc/) | ⚠️ Unaudited |
| FETH_R2 | unknown | ethereum | [`0x243a57...9c29f7`](./contracts/ethereum-1/0x243a57d66968db226b47ed805cbb45ae279c29f7/) | ⚠️ Unaudited |
| FETH_R20 | unknown | ethereum | [`0xd01ef7...62e5c6`](./contracts/ethereum-1/0xd01ef7c0a5d8c432fc2d1a85c66cf2327362e5c6/) | ⚠️ Unaudited |
| FETH_R3 | unknown | ethereum | [`0x3f9a15...4fe4c1`](./contracts/ethereum-1/0x3f9a15446c3f34dff5e79f1ecb55d4059e4fe4c1/) | ⚠️ Unaudited |
| FETH_R4 | unknown | ethereum | [`0x3622f6...5dd1d7`](./contracts/ethereum-1/0x3622f64058e045b69a57bf5fc9d35162d45dd1d7/) | ⚠️ Unaudited |
| FETH_R5 | unknown | ethereum | [`0x4ed03a...9a2379`](./contracts/ethereum-1/0x4ed03acac0e5f07ec65cb2331e6546d7709a2379/) | ⚠️ Unaudited |
| FETH_R6 | unknown | ethereum | [`0xb1c25b...7e87a1`](./contracts/ethereum-1/0xb1c25b7d1de63a7535a533c75ce551949c7e87a1/) | ⚠️ Unaudited |
| FETH_R7 | unknown | ethereum | [`0x549ef3...629462`](./contracts/ethereum-1/0x549ef3149443ed0a6849ef554f4cf380a5629462/) | ⚠️ Unaudited |
| FETH_R8 | unknown | ethereum | [`0x566d98...1b2294`](./contracts/ethereum-1/0x566d9895e0b27df206a53cae67ad67064e1b2294/) | ⚠️ Unaudited |
| FETH_R9 | unknown | ethereum | [`0xc21fb8...10a6de`](./contracts/ethereum-1/0xc21fb8838fed54320d33a7b27541edd3c310a6de/) | ⚠️ Unaudited |
| FutureBondAVAX | unknown | ethereum | [`0xa8cb2c...e3bffc`](./contracts/ethereum-1/0xa8cb2c9f523c79e07582fe40f0677ef22fe3bffc/) | ⚠️ Unaudited |
| FutureBondAVAX_R1 | unknown | ethereum | [`0x9a8323...a4e2ec`](./contracts/ethereum-1/0x9a83238dc1b47e58705dbc7ab42ddfaac3a4e2ec/) | ⚠️ Unaudited |
| FutureBondAVAX_R2 | unknown | ethereum | 2 deployments: ethereum [`0x30176c...b12216`](./contracts/ethereum-1/0x30176cecb6dbf0869d59493142925a0287b12216/); ethereum `0x53fbd9...44c725` | ⚠️ Unaudited |
| GlobalPool_R21 | core_logic | ethereum | [`0xc33448...c727f6`](./contracts/ethereum-1/0xc3344870d52688874b06d844e0c36cc39fc727f6/) | ⚠️ Unaudited |
| GlobalPool_R22 | core_logic | ethereum | [`0x4748b6...cfce15`](./contracts/ethereum-1/0x4748b69634c7d807d0ea5aa3647267549ecfce15/) | ⚠️ Unaudited |
| GlobalPool_R24 | core_logic | ethereum | [`0x3f3358...2c3481`](./contracts/ethereum-1/0x3f33583f24307c1b64a893e1c41d9f256c2c3481/) | ⚠️ Unaudited |
| GlobalPool_R25 | core_logic | ethereum | [`0x71b804...c40a9b`](./contracts/ethereum-1/0x71b804ed58d6b3ba30d9b4776f87d54895c40a9b/) | ⚠️ Unaudited |
| GlobalPool_R26 | core_logic | ethereum | [`0x4017e2...31e64f`](./contracts/ethereum-1/0x4017e2484f1c6d91eb1c0f29ba8a44506131e64f/) | ⚠️ Unaudited |
| GlobalPool_R27 | core_logic | ethereum | [`0x3649b0...c90ee1`](./contracts/ethereum-1/0x3649b0c6e382890362fa021455a7052a54c90ee1/) | ⚠️ Unaudited |
| GlobalPool_R29 | core_logic | ethereum | [`0xed8103...d04f0b`](./contracts/ethereum-1/0xed81030ba249d99b71281aa78dd3046e6fd04f0b/) | ⚠️ Unaudited |
| GlobalPool_R30 | core_logic | ethereum | [`0xa6d62c...185fd9`](./contracts/ethereum-1/0xa6d62c8c8d094ea3da1160b66f94435a88185fd9/) | ⚠️ Unaudited |
| GlobalPool_R31 | core_logic | ethereum | [`0x1cfdf3...3a362f`](./contracts/ethereum-1/0x1cfdf3d3351bfb0e52175aecc3d435cfe93a362f/) | ⚠️ Unaudited |
| GlobalPool_R32 | core_logic | ethereum | [`0x7b31a2...c878d4`](./contracts/ethereum-1/0x7b31a26e8439fd4b435d8e3aa557c06acec878d4/) | ⚠️ Unaudited |
| GlobalPool_R33 | core_logic | ethereum | [`0xa40613...cfd374`](./contracts/ethereum-1/0xa406131ee1ced40de8cc937497c65f5ad5cfd374/) | ⚠️ Unaudited |
| GlobalPool_R34 | core_logic | ethereum | [`0x15fa1b...0113d6`](./contracts/ethereum-1/0x15fa1b6dc4eb5d42e427db1aeeac1294530113d6/) | ⚠️ Unaudited |
| GlobalPool_R35 | core_logic | ethereum | [`0x31e01a...be5091`](./contracts/ethereum-1/0x31e01ade5c54234c99c76fde83fe5c967abe5091/) | ⚠️ Unaudited |
| GlobalPool_R36 | core_logic | ethereum | [`0x03e0e6...0d9eed`](./contracts/ethereum-1/0x03e0e63b58d338f954ff0767bc71dff8240d9eed/) | ⚠️ Unaudited |
| GlobalPool_R37 | core_logic | ethereum | [`0x7df503...35e9e1`](./contracts/ethereum-1/0x7df5032aaf311a3d3747129ba39e6da68d35e9e1/) | ⚠️ Unaudited |
| GlobalPool_R38 | core_logic | ethereum | [`0x624d9a...db2fce`](./contracts/ethereum-1/0x624d9a92c766981c2e84020f344694cfd5db2fce/) | ⚠️ Unaudited |
| GlobalPool_R39 | core_logic | ethereum | [`0xd201a7...88c3e9`](./contracts/ethereum-1/0xd201a7df1d0f7e066efdd448cbc8433f0b88c3e9/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | [`0x40d6fc...dad0a5`](./contracts/ethereum-1/0x40d6fc59fe5c3ecb045f9d7fe0bb5e18e7dad0a5/) | ⚠️ Unaudited |
| Governance_R1 | unknown | ethereum | [`0x2d3640...ae501a`](./contracts/ethereum-1/0x2d3640a5a98e0fb865d63a1ecb7fb6bc78ae501a/) | ⚠️ Unaudited |
| Governance_R2 | unknown | ethereum | [`0x9e6616...600871`](./contracts/ethereum-1/0x9e6616089e3d78faa9b6a1361b67e562c1600871/) | ⚠️ Unaudited |
| Governance_R3 | unknown | ethereum | 2 deployments: ethereum [`0xc12ebc...109dae`](./contracts/ethereum-1/0xc12ebcedc914b3f52022cda98c92e3b95e109dae/); ethereum `0xed06c6...196a3a` | ⚠️ Unaudited |
| Keeper | operational_periphery | ethereum | 2 deployments: ethereum [`0x435192...ba3f7a`](./contracts/ethereum-1/0x435192a898a5ee86bbc8951471e5fbe721ba3f7a/); ethereum `0x6b5815...b487b5` | ⚠️ Unaudited |
| MaticStaking | unknown | ethereum | [`0x4b187b...67cca3`](./contracts/ethereum-1/0x4b187b46d358982f464ca1e0c071e050a367cca3/) | ⚠️ Unaudited |
| Migrations | operational_periphery | ethereum | 5 deployments: ethereum [`0x23261a...0630b0`](./contracts/ethereum-1/0x23261a2e70b8e1af37996ab0caf5a4ad5d0630b0/); ethereum `0x741ebe...54d63a`; ethereum `0xb93d56...c5b85c`; ethereum `0xc66063...424882`; ethereum `0xfc4601...e4f7e7` | ⚠️ Unaudited |
| Oracles | operational_periphery | ethereum | [`0xf0c167...c678d6`](./contracts/ethereum-1/0xf0c1670364d4b5c4e9dc8062cdd45068d9c678d6/) | ⚠️ Unaudited |
| OsTokenConfig | governance | ethereum | 3 deployments: ethereum [`0x287d1e...66eb59`](./contracts/ethereum-1/0x287d1e2a8de183a8bf8f2b09fa1340fbd766eb59/); ethereum `0x2aae83...a22120`; ethereum `0xe88222...fb1cd5` | ⚠️ Unaudited |
| OsTokenFlashLoans | token | ethereum | [`0xebe12d...fbf5d2`](./contracts/ethereum-1/0xebe12d858e55ddc5fc5a8153dc3e117824fbf5d2/) | ⚠️ Unaudited |
| PayAsYouGo | unknown | ethereum | 4 deployments: ethereum [`0x3d0bb8...3cb70f`](./contracts/ethereum-1/0x3d0bb8803a6c1fee1b3e8bf730534574623cb70f/); ethereum `0x4244e4...8821f3`; ethereum `0x63bcfd...250eaa`; ethereum `0x7fa0ed...c012dc` | ⚠️ Unaudited |
| PolkadotPool_R0 | core_logic | ethereum | [`0x2434fa...f4b2c0`](./contracts/ethereum-1/0x2434fa6793c62b8fbd8f44565a8cf2c1eaf4b2c0/) | ⚠️ Unaudited |
| PolkadotPool_R1 | core_logic | ethereum | 2 deployments: ethereum [`0x59f767...0f208e`](./contracts/ethereum-1/0x59f767ec659e9fe01ebcf930465e2ad4cc0f208e/); ethereum `0x88b44e...65d2b9` | ⚠️ Unaudited |
| PolygonPool | core_logic | ethereum | [`0x04f410...f976b0`](./contracts/ethereum-1/0x04f410c5158685db2e0775f42f4f676777f976b0/) | ⚠️ Unaudited |
| PolygonPool_R1 | core_logic | ethereum | [`0xaf8483...75a7f2`](./contracts/ethereum-1/0xaf84834407090c3b159f4f78d2d51bba3175a7f2/) | ⚠️ Unaudited |
| PolygonPool_R2 | core_logic | ethereum | [`0x691303...071f0a`](./contracts/ethereum-1/0x6913030b113f368b511d1ef13b53e817c6071f0a/) | ⚠️ Unaudited |
| PolygonPool_R3 | core_logic | ethereum | [`0x4f0793...635ff0`](./contracts/ethereum-1/0x4f07935a56686fb83def4a935d1248f2c1635ff0/) | ⚠️ Unaudited |
| PolygonPool_R4 | core_logic | ethereum | [`0x359e25...bdfe40`](./contracts/ethereum-1/0x359e25a9b4aad2960c413f5bcd56bca8fabdfe40/) | ⚠️ Unaudited |
| PolygonPool_R5 | core_logic | ethereum | [`0x9cc1e4...1a74f9`](./contracts/ethereum-1/0x9cc1e4e6bb2f2a9797e1314b7848f28e6e1a74f9/) | ⚠️ Unaudited |
| PolygonPool_R6 | core_logic | ethereum | [`0xcb6805...aba389`](./contracts/ethereum-1/0xcb6805e51ea42741d17d1c1f59e01fbe80aba389/) | ⚠️ Unaudited |
| PolygonPool_R8 | core_logic | ethereum | [`0xcfd4b4...b3ce89`](./contracts/ethereum-1/0xcfd4b4bc15c8bf0fd820b0d4558c725727b3ce89/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | [`0x481f28...799592`](./contracts/ethereum-1/0x481f28c0d733614af87897e43d0d52c451799592/) | ⚠️ Unaudited |
| PriceFeed | operational_periphery | ethereum | 2 deployments: ethereum [`0x802351...dfe471`](./contracts/ethereum-1/0x8023518b2192fb5384dadc596765b3dd1cdfe471/); ethereum `0xb31f53...11d702` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 6 deployments: ethereum [`0x0232fa...edf413`](./contracts/ethereum-1/0x0232fabaf9c6812534207ed34c5650b089edf413/); ethereum `0x06bc82...88b13c`; ethereum `0x105dde...ab0548`; ethereum `0x5e6bb1...2378f2`; ethereum `0xcc4e08...2cb392`; ethereum `0xf807b7...fbad30` | ⚠️ Unaudited |
| RewardEthToken | token | ethereum | [`0x01d34a...3ecee0`](./contracts/ethereum-1/0x01d34aee72325f1d4a748f13c2169404523ecee0/) | ⚠️ Unaudited |
| RewardPoolTemplate_R0 | core_logic | ethereum | [`0x901e55...f61fab`](./contracts/ethereum-1/0x901e5564f95f47bbcdc7536595a4922d56f61fab/) | ⚠️ Unaudited |
| RewardPoolTemplate_R1 | core_logic | ethereum | [`0x44bdc8...1cda2e`](./contracts/ethereum-1/0x44bdc8fde61ed210f872f7f7e5c9c0cf471cda2e/) | ⚠️ Unaudited |
| RewardSplitter | operational_periphery | ethereum | 3 deployments: ethereum [`0x439b60...febcd9`](./contracts/ethereum-1/0x439b60d3c886e711dad30cf23a2bbd5388febcd9/); ethereum `0x67561c...6aca9b`; ethereum `0xe00512...5b1902` | ⚠️ Unaudited |
| RewardSplitterFactory | operational_periphery | ethereum | 3 deployments: ethereum [`0x256af2...6cc5f8`](./contracts/ethereum-1/0x256af27ce81282a0491a5361172c1db08f6cc5f8/); ethereum `0x8c512f...8b1dba`; ethereum `0x90a942...797449` | ⚠️ Unaudited |
| RSETH | token | ethereum | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ⚠️ Unaudited |
| SharedMevEscrow | operational_periphery | ethereum | 2 deployments: ethereum [`0x07a98f...488a2f`](./contracts/ethereum-1/0x07a98f01f5a91043f1396f101a21e91e90488a2f/); ethereum `0x48319f...20ff86` | ⚠️ Unaudited |
| StakedEthToken | token | ethereum | [`0x82fe8c...baaa75`](./contracts/ethereum-1/0x82fe8c78cae0013471179e76224ef89941baaa75/) | ⚠️ Unaudited |
| StakingConfig | governance | ethereum | 2 deployments: ethereum [`0x2d3f89...ce6aae`](./contracts/ethereum-1/0x2d3f893c7c45c2be3ec63cf5385deafd7ece6aae/); ethereum `0xd4f5ff...7c06d1` | ⚠️ Unaudited |
| VaultFactoryV2 | registry | ethereum | 2 deployments: ethereum [`0x01323e...59c256`](./contracts/ethereum-1/0x01323e0054651adf2c10ce90351439840559c256/); ethereum `0x20249e...9207e1` | ⚠️ Unaudited |
| VaultsRegistry | registry | ethereum | 2 deployments: ethereum [`0x3a0008...4fc20e`](./contracts/ethereum-1/0x3a0008a588772446f6e656133c2d5029cc4fc20e/); ethereum `0xbbe532...ba0bc2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x093448dec118b189069e5e1dc37171888a5a2786) | proxy | ethereum | `0x77fca8...bdae14` | ❓ Unverified |
| Proxy (impl: 0x91b00b13368a807dda768fe20420641904cfb15b) | proxy | ethereum | `0x417449...627b05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x033464...725ebc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x08a0c5...64e123` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x11e6ec...df6618` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x18db91...08a8d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1af808...112765` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1c9e85...bb76c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x315654...18a069` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3a0a9c...32592f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3e2cc1...76dc65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3ffff1...47f02e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b0737...c21939` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x574952...42139a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5e5c32...c62783` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x618772...39886d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x630f27...5294de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x63ad7c...488c78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x65e9ab...041154` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x676777...2ed09a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x766bdb...0082d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7baa1e...0a836d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8a2f83...2ce27a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f6b9e...a2ea4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x932f09...b936fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97dc5b...cfc367` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2ecc7...49579a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xce4315...2f66ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd20670...f97485` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd6239d...66190e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd7207f...ff18b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd99955...b14ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe3c02a...9a20fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf7902e...fd8eba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf89516...b40351` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd0f61...6c34d6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://2747094502-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FU4cJWTpKt8p39EIBK6mR%2Fuploads%2FLZIojAWw6TSs5Wl4cKl1%2FBracket_Bracket_Wrapped_Vault_Updates_report.pdf) | Guardian | Audit | 2025-09 | fresh | Direct | contract_name | 34 | high |
| [Rendered PDF capture](https://2747094502-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FU4cJWTpKt8p39EIBK6mR%2Fuploads%2FzV05dwewKc7DXdBR3StG%2FBracket%20-%20KYC%20Whitelist_report%20(1).pdf) | Guardian | Audit | 2025-03 | aging | Direct | contract_name | 13 | high |
| [Rendered PDF capture](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/AKOHIS45wGCYVmmPep7K/Bracket%20Rd.2%20-%20LST%20Vault_report.pdf) | Guardian | Audit | 2025-03 | aging | Direct | contract_name | 6 | high |
| [Rendered PDF capture](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/M58MmJtnx3aIcLSaocbO/2024-01-20_Bracket.pdf) | Guardian | Audit | 2024-01 | stale | Direct | contract_name | 6 | high |
| [Rendered PDF capture](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/RyVLVPDnszgXoTEA7sbU/Bracket%20Fi%20Escrow%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2a261e...000306`](./contracts/ethereum-1/0x2a261e60fb14586b474c208b1b7ac6d0f5000306/) | OsTokenVaultController | core_logic | $308,378,070.07 | Verified native implementation with $308,378,070.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x475e7d...b96702`](./contracts/ethereum-1/0x475e7d2bd7428deb68deaa933dbf0d5850b96702/) | OsToken | token | $301,236,479.59 | Verified native implementation with $301,236,479.59 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x124c33...510928`](./contracts/ethereum-1/0x124c33d07f94b31adf87c12f7ca3a586d3510928/) | EthGenesisVault | core_logic | $299,318,065.98 | Verified native implementation with $299,318,065.98 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39b42a...02b6d5`](./contracts/ethereum-1/0x39b42a2008f35a36922389100d2c71c3b902b6d5/) | AETH_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1d675...4390f6`](./contracts/ethereum-1/0xf1d67526833263bb359a715e3e955bff864390f6/) | AETH_R10 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a6350...101e3b`](./contracts/ethereum-1/0x6a63503151acfe6d06a33cd41416b8594c101e3b/) | AETH_R11 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b9c04...f70300`](./contracts/ethereum-1/0x0b9c04c5f884ebfad7af7e0351bc03c080f70300/) | AETH_R12 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c906f...93d0f0`](./contracts/ethereum-1/0x0c906f8759e68899c487304246532fc4be93d0f0/) | AETH_R13 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5835bf...828ccf`](./contracts/ethereum-1/0x5835bff99cfd43872ba6a90cd8a0a8cb24828ccf/) | AETH_R14 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a9366...7b641c`](./contracts/ethereum-1/0x6a9366f02b6e252e0cbe2e6b9cf0a8addd7b641c/) | AETH_R15 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e5e5c...5cb60f`](./contracts/ethereum-1/0x1e5e5cf3652989a57736901d95749a326f5cb60f/) | AETH_R16 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x496b35...d8617d`](./contracts/ethereum-1/0x496b352514fabca14845651cfdf0b548f3d8617d/) | AETH_R3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23f7d0...c1181f`](./contracts/ethereum-1/0x23f7d037f5d02d0ba37571e717191776c4c1181f/) | AETH_R4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x253f7e...03b8cc`](./contracts/ethereum-1/0x253f7e05d7f2cd1197d98fe8716e1ef5f803b8cc/) | AETH_R5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe5dea...8e737f`](./contracts/ethereum-1/0xfe5dea3569e16d8a0a5449378087f1e80a8e737f/) | AETH_R6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb7c00d...d0784b`](./contracts/ethereum-1/0xb7c00d3ff2c9e6ceacfb206108f4661778d0784b/) | AETH_R7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1e6e6...5b57a7`](./contracts/ethereum-1/0xf1e6e6247aaaf7e32850003c8e32d955e95b57a7/) | AETH_R8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66bea5...071118`](./contracts/ethereum-1/0x66bea595aefd5a65799a920974b377ed20071118/) | AETHF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaef614...3cfeb7`](./contracts/ethereum-1/0xaef614270f356d20f9fc45910b34ef71383cfeb7/) | aMATICb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f9e9f...22c770`](./contracts/ethereum-1/0x7f9e9f51ac2ac8f1186ed1ae7264903d2122c770/) | aMATICb_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc91be...89a0d8`](./contracts/ethereum-1/0xbc91bee07045e36b77c8aa3b6f51d9ec8a89a0d8/) | aMATICb_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d6453...ccc5a7`](./contracts/ethereum-1/0x6d6453712c6758f548efc2277e8302588cccc5a7/) | aMATICb_R3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42f91d...eed868`](./contracts/ethereum-1/0x42f91df19b5bbeca0bc1ed488e282090dfeed868/) | aMATICb_R4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6e395...800ac2`](./contracts/ethereum-1/0xc6e39571fa413b8d3e1b47ef907222c84f800ac2/) | aMATICb_R5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd45021...28ce3b`](./contracts/ethereum-1/0xd4502103dd36c5595dccedf33e7308c61428ce3b/) | aMATICb_R6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46a0cc...1c9d8d`](./contracts/ethereum-1/0x46a0cc1ad0710e6fafd6b22395c5f3375a1c9d8d/) | aMATICc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x887214...e301fd`](./contracts/ethereum-1/0x887214fcd6c29d99adb8dd9d225b2f85d3e301fd/) | aMATICc_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1352c4...43e6ef`](./contracts/ethereum-1/0x1352c426168895f3682becfa5821c9874a43e6ef/) | aMATICc_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e56ec...3e3a9c`](./contracts/ethereum-1/0x4e56ec889e5a3f8771862dd765ec76bfed3e3a9c/) | AnkrBond_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5184b6...115e7b`](./contracts/ethereum-1/0x5184b698c147202621b57878b4f5d1b661115e7b/) | AnkrFuture_R0 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4432fa...f1d784`](./contracts/ethereum-1/0x4432faee427ae2ca961d5bfeefc2eed4e1f1d784/) | AnkrProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c87cc...85408c`](./contracts/ethereum-1/0x5c87cc2153d25f8d8b95ea3c04ab22583285408c/) | AnkrTokenStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0072e8...fa7085`](./contracts/ethereum-1/0x0072e80b04c17bfd6c6d0a21a17ae118defa7085/) | BracketVaultLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6d4fe...c44ebd`](./contracts/ethereum-1/0xd6d4fe092bf124438eff841084ecedc575c44ebd/) | CrossChainBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8aeed0...97d21d`](./contracts/ethereum-1/0x8aeed0ce13064f6658ade6753b80af20f997d21d/) | CrossChainBridge_R1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00a7ac...605f3d`](./contracts/ethereum-1/0x00a7ac37c6b9a10e0c68051390695546a5605f3d/) | CrossChainBridge_R2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x849da6...02e540`](./contracts/ethereum-1/0x849da65afed8483152f8baa75f776c6f2c02e540/) | CumulativeMerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75ab6d...35223e`](./contracts/ethereum-1/0x75ab6ddce07556639333d3df1eaa684f5735223e/) | DepositDataRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1edf13...2de12e`](./contracts/ethereum-1/0x1edf13d931de4ffc1720fe902825f84c982de12e/) | EarnConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| ethereum | [`0x5ec209...7d0aee`](./contracts/ethereum-1/0x5ec2096e42634fe6971ba8a52460bf4ac87d0aee/) | FETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x170da5...233934`](./contracts/ethereum-1/0x170da5efcf563e5a5445ca7685801913c4233934/) | FETH_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac2e0b...6f335c`](./contracts/ethereum-1/0xac2e0b6db96f345ee19fda8a9be5907e996f335c/) | FETH_R10 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e3b11...1816ef`](./contracts/ethereum-1/0x5e3b11f36102be32edb4a1ad3cae4b9c2f1816ef/) | FETH_R11 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1c7bb...168167`](./contracts/ethereum-1/0xa1c7bb5c6028eb5e81db3ddc13364231df168167/) | FETH_R12 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb71305...979926`](./contracts/ethereum-1/0xb713053a8fe0becd69ef9cce4e24524133979926/) | FETH_R13 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3facae...82f0fa`](./contracts/ethereum-1/0x3facaef31766a1a0dfb02d845ccf3e252182f0fa/) | FETH_R14 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa7b212...8a9aa1`](./contracts/ethereum-1/0xa7b212a0d452cbbc89c25d6d7e388ad5898a9aa1/) | FETH_R15 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10d0d4...43eabc`](./contracts/ethereum-1/0x10d0d468d350ab6c646f9d68e1f3b0cd6c43eabc/) | FETH_R16 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x243a57...9c29f7`](./contracts/ethereum-1/0x243a57d66968db226b47ed805cbb45ae279c29f7/) | FETH_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f9a15...4fe4c1`](./contracts/ethereum-1/0x3f9a15446c3f34dff5e79f1ecb55d4059e4fe4c1/) | FETH_R3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3622f6...5dd1d7`](./contracts/ethereum-1/0x3622f64058e045b69a57bf5fc9d35162d45dd1d7/) | FETH_R4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ed03a...9a2379`](./contracts/ethereum-1/0x4ed03acac0e5f07ec65cb2331e6546d7709a2379/) | FETH_R5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1c25b...7e87a1`](./contracts/ethereum-1/0xb1c25b7d1de63a7535a533c75ce551949c7e87a1/) | FETH_R6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x549ef3...629462`](./contracts/ethereum-1/0x549ef3149443ed0a6849ef554f4cf380a5629462/) | FETH_R7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x566d98...1b2294`](./contracts/ethereum-1/0x566d9895e0b27df206a53cae67ad67064e1b2294/) | FETH_R8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc21fb8...10a6de`](./contracts/ethereum-1/0xc21fb8838fed54320d33a7b27541edd3c310a6de/) | FETH_R9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8cb2c...e3bffc`](./contracts/ethereum-1/0xa8cb2c9f523c79e07582fe40f0677ef22fe3bffc/) | FutureBondAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a8323...a4e2ec`](./contracts/ethereum-1/0x9a83238dc1b47e58705dbc7ab42ddfaac3a4e2ec/) | FutureBondAVAX_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc33448...c727f6`](./contracts/ethereum-1/0xc3344870d52688874b06d844e0c36cc39fc727f6/) | GlobalPool_R21 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4748b6...cfce15`](./contracts/ethereum-1/0x4748b69634c7d807d0ea5aa3647267549ecfce15/) | GlobalPool_R22 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f3358...2c3481`](./contracts/ethereum-1/0x3f33583f24307c1b64a893e1c41d9f256c2c3481/) | GlobalPool_R24 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71b804...c40a9b`](./contracts/ethereum-1/0x71b804ed58d6b3ba30d9b4776f87d54895c40a9b/) | GlobalPool_R25 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4017e2...31e64f`](./contracts/ethereum-1/0x4017e2484f1c6d91eb1c0f29ba8a44506131e64f/) | GlobalPool_R26 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3649b0...c90ee1`](./contracts/ethereum-1/0x3649b0c6e382890362fa021455a7052a54c90ee1/) | GlobalPool_R27 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed8103...d04f0b`](./contracts/ethereum-1/0xed81030ba249d99b71281aa78dd3046e6fd04f0b/) | GlobalPool_R29 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6d62c...185fd9`](./contracts/ethereum-1/0xa6d62c8c8d094ea3da1160b66f94435a88185fd9/) | GlobalPool_R30 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cfdf3...3a362f`](./contracts/ethereum-1/0x1cfdf3d3351bfb0e52175aecc3d435cfe93a362f/) | GlobalPool_R31 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b31a2...c878d4`](./contracts/ethereum-1/0x7b31a26e8439fd4b435d8e3aa557c06acec878d4/) | GlobalPool_R32 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa40613...cfd374`](./contracts/ethereum-1/0xa406131ee1ced40de8cc937497c65f5ad5cfd374/) | GlobalPool_R33 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15fa1b...0113d6`](./contracts/ethereum-1/0x15fa1b6dc4eb5d42e427db1aeeac1294530113d6/) | GlobalPool_R34 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31e01a...be5091`](./contracts/ethereum-1/0x31e01ade5c54234c99c76fde83fe5c967abe5091/) | GlobalPool_R35 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03e0e6...0d9eed`](./contracts/ethereum-1/0x03e0e63b58d338f954ff0767bc71dff8240d9eed/) | GlobalPool_R36 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7df503...35e9e1`](./contracts/ethereum-1/0x7df5032aaf311a3d3747129ba39e6da68d35e9e1/) | GlobalPool_R37 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x624d9a...db2fce`](./contracts/ethereum-1/0x624d9a92c766981c2e84020f344694cfd5db2fce/) | GlobalPool_R38 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd201a7...88c3e9`](./contracts/ethereum-1/0xd201a7df1d0f7e066efdd448cbc8433f0b88c3e9/) | GlobalPool_R39 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40d6fc...dad0a5`](./contracts/ethereum-1/0x40d6fc59fe5c3ecb045f9d7fe0bb5e18e7dad0a5/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d3640...ae501a`](./contracts/ethereum-1/0x2d3640a5a98e0fb865d63a1ecb7fb6bc78ae501a/) | Governance_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e6616...600871`](./contracts/ethereum-1/0x9e6616089e3d78faa9b6a1361b67e562c1600871/) | Governance_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x435192...ba3f7a`](./contracts/ethereum-1/0x435192a898a5ee86bbc8951471e5fbe721ba3f7a/) | Keeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b187b...67cca3`](./contracts/ethereum-1/0x4b187b46d358982f464ca1e0c071e050a367cca3/) | MaticStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23261a...0630b0`](./contracts/ethereum-1/0x23261a2e70b8e1af37996ab0caf5a4ad5d0630b0/) | Migrations | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0c167...c678d6`](./contracts/ethereum-1/0xf0c1670364d4b5c4e9dc8062cdd45068d9c678d6/) | Oracles | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x287d1e...66eb59`](./contracts/ethereum-1/0x287d1e2a8de183a8bf8f2b09fa1340fbd766eb59/) | OsTokenConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebe12d...fbf5d2`](./contracts/ethereum-1/0xebe12d858e55ddc5fc5a8153dc3e117824fbf5d2/) | OsTokenFlashLoans | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d0bb8...3cb70f`](./contracts/ethereum-1/0x3d0bb8803a6c1fee1b3e8bf730534574623cb70f/) | PayAsYouGo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2434fa...f4b2c0`](./contracts/ethereum-1/0x2434fa6793c62b8fbd8f44565a8cf2c1eaf4b2c0/) | PolkadotPool_R0 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04f410...f976b0`](./contracts/ethereum-1/0x04f410c5158685db2e0775f42f4f676777f976b0/) | PolygonPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf8483...75a7f2`](./contracts/ethereum-1/0xaf84834407090c3b159f4f78d2d51bba3175a7f2/) | PolygonPool_R1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x691303...071f0a`](./contracts/ethereum-1/0x6913030b113f368b511d1ef13b53e817c6071f0a/) | PolygonPool_R2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f0793...635ff0`](./contracts/ethereum-1/0x4f07935a56686fb83def4a935d1248f2c1635ff0/) | PolygonPool_R3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x359e25...bdfe40`](./contracts/ethereum-1/0x359e25a9b4aad2960c413f5bcd56bca8fabdfe40/) | PolygonPool_R4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cc1e4...1a74f9`](./contracts/ethereum-1/0x9cc1e4e6bb2f2a9797e1314b7848f28e6e1a74f9/) | PolygonPool_R5 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb6805...aba389`](./contracts/ethereum-1/0xcb6805e51ea42741d17d1c1f59e01fbe80aba389/) | PolygonPool_R6 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x481f28...799592`](./contracts/ethereum-1/0x481f28c0d733614af87897e43d0d52c451799592/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d34a...3ecee0`](./contracts/ethereum-1/0x01d34aee72325f1d4a748f13c2169404523ecee0/) | RewardEthToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x901e55...f61fab`](./contracts/ethereum-1/0x901e5564f95f47bbcdc7536595a4922d56f61fab/) | RewardPoolTemplate_R0 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44bdc8...1cda2e`](./contracts/ethereum-1/0x44bdc8fde61ed210f872f7f7e5c9c0cf471cda2e/) | RewardPoolTemplate_R1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x439b60...febcd9`](./contracts/ethereum-1/0x439b60d3c886e711dad30cf23a2bbd5388febcd9/) | RewardSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x256af2...6cc5f8`](./contracts/ethereum-1/0x256af27ce81282a0491a5361172c1db08f6cc5f8/) | RewardSplitterFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07a98f...488a2f`](./contracts/ethereum-1/0x07a98f01f5a91043f1396f101a21e91e90488a2f/) | SharedMevEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82fe8c...baaa75`](./contracts/ethereum-1/0x82fe8c78cae0013471179e76224ef89941baaa75/) | StakedEthToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d3f89...ce6aae`](./contracts/ethereum-1/0x2d3f893c7c45c2be3ec63cf5385deafd7ece6aae/) | StakingConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01323e...59c256`](./contracts/ethereum-1/0x01323e0054651adf2c10ce90351439840559c256/) | VaultFactoryV2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a0008...4fc20e`](./contracts/ethereum-1/0x3a0008a588772446f6e656133c2d5029cc4fc20e/) | VaultsRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 156 |
| upstream | 0 |
| standard_library | 18 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=59

Zero-match audit list:

- [2757] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
