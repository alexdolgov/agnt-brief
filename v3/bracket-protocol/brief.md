# Agentic Audit Brief: Bracket Protocol

## Project Overview

- Project: Bracket Protocol (`bracket-protocol`)
- Website: [https://www.bracket.fi/](https://www.bracket.fi/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:36.986Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, ethereum
- Contract surface: 97 unique implementations (158 raw deployments)
- DeFi Llama TVL: $2,921,478.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 148 project-authored contract(s) across 2 chain(s); 60 ERC20 tokens, 1 ERC721 NFT, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 34 common project-authored base contract(s) (ethvault, vaultimmutables, vaultadmin). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 299; live-surface contracts included: 152 (113 live, 39 unknown).
- Excluded by liveness: 147 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 10/60 (16.7%)
- Deployed-live implementations: 60 of 97 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 10/60
- Verified + Unaudited implementations: 50
- Verified by bytecode match: 0
- Unverified implementations: 37
- Unique implementations: 97
- Raw deployments: 158
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian | Tier 2 | 10 | 16.7% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BracketVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4eeec6...5ecef2`](./contracts/ethereum-1/0x4eeec646460b6fef19af46bf4e97bdd9335ecef2/); ethereum `0x8c24dd...5c00d1` | ✅ Audited |
| BracketVault | unknown | ethereum | n/a | [`0x6f0732...8b965d`](./contracts/ethereum-1/0x6f0732ac12118b05abd546d004a40a07f98b965d/) | ✅ Audited |
| BracketVaultV2 | core_logic | ethereum | n/a | 7 deployments: ethereum [`0x3ce19f...d318cb`](./contracts/ethereum-1/0x3ce19f1ce4ae4ce942292ac6c37b0ec35cd318cb/); ethereum `0x4d8d05...9e1b00`; ethereum `0x72de68...480a8a`; ethereum `0x7abf0a...68b7f2`; ethereum `0x80aa12...a5331e`; ethereum `0xa298b8...af43d5`; ethereum `0xa99f01...3a0f52` | ✅ Audited |
| BracketWrappedVault | core_logic | ethereum | n/a | [`0x2a5e0e...e8a6c2`](./contracts/ethereum-1/0x2a5e0e5a5a11be269ee94be6dda8bd9379e8a6c2/) | ✅ Audited |
| BrktETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x22ad51...dc0640`](./contracts/ethereum-1/0x22ad51adcb087ed283f05173e1db478c0bdc0640/); ethereum `0x6c8550...1accd6` | ✅ Audited |
| BrktETH | unknown | ethereum | n/a | [`0xe4f104...2d145a`](./contracts/ethereum-1/0xe4f104694bec6d9b1745ea0c945826d3132d145a/) | ✅ Audited |
| BrktETHRouter | adapter | ethereum | n/a | [`0xcb3358...0397cc`](./contracts/ethereum-1/0xcb3358afef9bd888d8bfed436c4ef072600397cc/) | ✅ Audited |
| KYCWhitelist | unknown | ethereum | n/a | [`0xe9cb91...07f7ac`](./contracts/ethereum-1/0xe9cb91a72f1b99a771b57244feb8851abd07f7ac/) | ✅ Audited |
| NavUpdater | unknown | ethereum | n/a | [`0xaacf9f...d7a425`](./contracts/ethereum-1/0xaacf9f4fde46e98b4e0d32ede3d4609547d7a425/) | ✅ Audited |
| VaultRouter | adapter | ethereum | n/a | [`0xb737f5...a3c4e3`](./contracts/ethereum-1/0xb737f54637c5c66f47c6818c80ccc7a9a3a3c4e3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (50)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2d8ba0...aafc4f`](./contracts/ethereum-1/0x2d8ba08c19ae55bb785ca5b3c720f78917aafc4f/); ethereum `0x3bfce3...d18c4f`; ethereum `0xb70f12...06bc74`; ethereum `0xe7e39d...b294ce` | ⚠️ Unaudited |
| AETH_R21 | unknown | ethereum | n/a | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| aMATICb_R7 | unknown | ethereum | n/a | [`0x99534e...38ebfe`](./contracts/ethereum-1/0x99534ef705df1fff4e4bd7bbaaf9b0dff038ebfe/) | ⚠️ Unaudited |
| aMATICc_R4 | unknown | ethereum | n/a | [`0x26dcfb...c5480c`](./contracts/ethereum-1/0x26dcfbfa8bc267b250432c01c982eaf81cc5480c/) | ⚠️ Unaudited |
| AnkrTokenStaking | unknown | ethereum | n/a | [`0x5c87cc...85408c`](./contracts/ethereum-1/0x5c87cc2153d25f8d8b95ea3c04ab22583285408c/) | ⚠️ Unaudited |
| AnkrTokenStaking | unknown | ethereum | n/a | [`0xab15b0...1f9e7f`](./contracts/ethereum-1/0xab15b0bddc012092cb23f53953149a7f8c1f9e7f/) | ⚠️ Unaudited |
| Beacon_R0 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27ccac...37beb3`](./contracts/ethereum-1/0x27ccacc5eb28625d2be45c4ac29e5f1c3637beb3/); ethereum `0x429ce3...180ead` | ⚠️ Unaudited |
| BracketVaultLens | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x0072e8...fa7085`](./contracts/ethereum-1/0x0072e80b04c17bfd6c6d0a21a17ae118defa7085/); ethereum `0xcdc3a8...29082c` | ⚠️ Unaudited |
| BracketVaultV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3a77cd...aab7f6`](./contracts/ethereum-1/0x3a77cd78c21f5b0c7d33a8fab4a0c6f91aaab7f6/); ethereum `0x661011...c587d8` | ⚠️ Unaudited |
| BracketVaultV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b3c48...2dbb4d`](./contracts/ethereum-1/0x6b3c487662d58fb15d8dede46be20a77a92dbb4d/); ethereum `0xf29de9...fb6e9c` | ⚠️ Unaudited |
| BracketWrappedVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x3ebfa3...23c1ee`](./contracts/ethereum-1/0x3ebfa39649efb8aa0b4e8dcccd25884d8223c1ee/); ethereum `0x6fe42a...ad62d0`; ethereum `0x7309e1...97d5ff`; ethereum `0x91094d...131b5f`; ethereum `0xa4f059...52d4f4` | ⚠️ Unaudited |
| Config | unknown | ethereum | n/a | 2 deployments: ethereum [`0xcd3a6c...d1a42e`](./contracts/ethereum-1/0xcd3a6c3e9e823e7c13fb0ee71f9360bacdd1a42e/); ethereum `0xfaf36e...022886` | ⚠️ Unaudited |
| CrossChainBridge_R2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x00a7ac...605f3d`](./contracts/ethereum-1/0x00a7ac37c6b9a10e0c68051390695546a5605f3d/); ethereum `0xe7ac51...10b795` | ⚠️ Unaudited |
| DepositDataRegistry | registry | ethereum | n/a | [`0x75ab6d...35223e`](./contracts/ethereum-1/0x75ab6ddce07556639333d3df1eaa684f5735223e/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x574952...42139a`](./contracts/ethereum-1/0x574952ec88b2fc271d0c0db130794c86ea42139a/); ethereum `0x5c4606...f59219` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe3c02a...9a20fe`](./contracts/ethereum-1/0xe3c02a1a282ec597538f946bc2f41108fd9a20fe/); ethereum `0xecec1a...59b90f` | ⚠️ Unaudited |
| EthBlocklistErc20Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0b4f6b...099556`](./contracts/ethereum-1/0x0b4f6bfb694790051e0203db83edbb5888099556/); ethereum `0x5f31ed...058988` | ⚠️ Unaudited |
| EthErc20Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6ddc10...26cb53`](./contracts/ethereum-1/0x6ddc10eeeebbbcf00e784ba44fe4b038af26cb53/); ethereum `0x8ee00c...6773de` | ⚠️ Unaudited |
| EthGenesisVault | core_logic | ethereum | n/a | [`0xac0f90...652885`](./contracts/ethereum-1/0xac0f906e433d58fa868f936e8a43230473652885/) | ⚠️ Unaudited |
| EthRestakeBlocklistErc20Vault | unknown | ethereum | n/a | [`0x5fcd8b...d49e4e`](./contracts/ethereum-1/0x5fcd8bb2e3dde5809b2106039b741c041bd49e4e/) | ⚠️ Unaudited |
| EthRestakeBlocklistVault | unknown | ethereum | n/a | [`0x3e3037...addb67`](./contracts/ethereum-1/0x3e30370cabd4b4d95be17706d840ff9de1addb67/) | ⚠️ Unaudited |
| EthRestakeErc20Vault | unknown | ethereum | n/a | [`0x215f4c...b0eee4`](./contracts/ethereum-1/0x215f4c69c3d1461c7aa38c9c73c27e10cfb0eee4/) | ⚠️ Unaudited |
| EthRestakePrivErc20Vault | unknown | ethereum | n/a | [`0xedebe7...c36ee5`](./contracts/ethereum-1/0xedebe792c6190be612cbe97f628137faa8c36ee5/) | ⚠️ Unaudited |
| EthRestakePrivVault | unknown | ethereum | n/a | [`0x792ff3...25e353`](./contracts/ethereum-1/0x792ff341e1db4ab20fbfb93c0fc071501525e353/) | ⚠️ Unaudited |
| EthRestakeVault | unknown | ethereum | n/a | [`0x59adb4...e073bb`](./contracts/ethereum-1/0x59adb46407ebf4cba923f91f2c06acc4b2e073bb/) | ⚠️ Unaudited |
| EthRestakeVaultFactory | unknown | ethereum | n/a | 6 deployments: ethereum [`0x026df3...d11b2c`](./contracts/ethereum-1/0x026df36ec050e7f473cbfc30aa42946d3ed11b2c/); ethereum `0x32634d...4c9fce`; ethereum `0x44ecc3...c565e1`; ethereum `0x6a2835...cc31e1`; ethereum `0x807305...d6f0af`; ethereum `0xf63666...6bf3a2` | ⚠️ Unaudited |
| EthVaultFactory | unknown | ethereum | n/a | 18 deployments: ethereum [`0x170618...8dfe5e`](./contracts/ethereum-1/0x170618936cd96b1ed8112ec3d3778374b38dfe5e/); ethereum `0x1be3ad...41b07c`; ethereum `0x2a0335...667960`; ethereum `0x42fe3b...07f699`; ethereum `0x4e3d81...774017`; ethereum `0x551805...e2ee7d`; ethereum `0x58fdd3...3a2949`; ethereum `0x7a4f99...1cba4a`; ethereum `0x875059...5f1bb8`; ethereum `0x96fff3...e175ee`; ethereum `0xb7832c...f4c896`; ethereum `0xd2468d...8f2cba`; ethereum `0xdada5a...659fcc`; ethereum `0xe84183...b5bb11`; ethereum `0xe9f3e6...27ba0f`; ethereum `0xf3c94c...daf3b8`; ethereum `0xfaa059...715d53`; ethereum `0xff0650...9362ca` | ⚠️ Unaudited |
| FETH_R20 | unknown | ethereum | n/a | [`0xd01ef7...62e5c6`](./contracts/ethereum-1/0xd01ef7c0a5d8c432fc2d1a85c66cf2327362e5c6/) | ⚠️ Unaudited |
| FutureBondAVAX_R2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x30176c...b12216`](./contracts/ethereum-1/0x30176cecb6dbf0869d59493142925a0287b12216/); ethereum `0x53fbd9...44c725` | ⚠️ Unaudited |
| GlobalPool_R46 | unknown | ethereum | n/a | [`0x84db6e...936670`](./contracts/ethereum-1/0x84db6ee82b7cf3b47e8f19270abde5718b936670/) | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | [`0x40d6fc...dad0a5`](./contracts/ethereum-1/0x40d6fc59fe5c3ecb045f9d7fe0bb5e18e7dad0a5/) | ⚠️ Unaudited |
| Governance_R1 | unknown | ethereum | n/a | [`0x2d3640...ae501a`](./contracts/ethereum-1/0x2d3640a5a98e0fb865d63a1ecb7fb6bc78ae501a/) | ⚠️ Unaudited |
| Governance_R2 | unknown | ethereum | n/a | [`0x9e6616...600871`](./contracts/ethereum-1/0x9e6616089e3d78faa9b6a1361b67e562c1600871/) | ⚠️ Unaudited |
| Governance_R3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc12ebc...109dae`](./contracts/ethereum-1/0xc12ebcedc914b3f52022cda98c92e3b95e109dae/); ethereum `0xed06c6...196a3a` | ⚠️ Unaudited |
| Keeper | operational_periphery | ethereum | n/a | [`0x6b5815...b487b5`](./contracts/ethereum-1/0x6b5815467da09daa7dc83db21c9239d98bb487b5/) | ⚠️ Unaudited |
| KYCWhitelist | unknown | ethereum | n/a | 2 deployments: ethereum [`0x153ae1...44fb21`](./contracts/ethereum-1/0x153ae19301bdb53627bba296195270115b44fb21/); ethereum `0x162f86...e11183` | ⚠️ Unaudited |
| KYCWhitelist | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1925c3...3e2f97`](./contracts/ethereum-1/0x1925c36b0c09eec3a40303a3500c6594ea3e2f97/); ethereum `0x6a3bab...3256d3` | ⚠️ Unaudited |
| KYCWhitelist | unknown | ethereum | n/a | 2 deployments: ethereum [`0x599aa7...455bc3`](./contracts/ethereum-1/0x599aa75908d32d01a5ae41692cadf24d89455bc3/); ethereum `0x90e3f7...539feb` | ⚠️ Unaudited |
| NavUpdater | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5fac6b...318e8b`](./contracts/ethereum-1/0x5fac6bc8646bb345178d7156153ae58ba3318e8b/); ethereum `0xfe7aad...2c3788` | ⚠️ Unaudited |
| OsTokenVaultController | core_logic | ethereum | n/a | [`0x2a261e...000306`](./contracts/ethereum-1/0x2a261e60fb14586b474c208b1b7ac6d0f5000306/) | ⚠️ Unaudited |
| PolkadotPool_R1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x59f767...0f208e`](./contracts/ethereum-1/0x59f767ec659e9fe01ebcf930465e2ad4cc0f208e/); ethereum `0x88b44e...65d2b9` | ⚠️ Unaudited |
| PolygonPool_R8 | unknown | ethereum | n/a | [`0xcfd4b4...b3ce89`](./contracts/ethereum-1/0xcfd4b4bc15c8bf0fd820b0d4558c725727b3ce89/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 6 deployments: ethereum [`0x0232fa...edf413`](./contracts/ethereum-1/0x0232fabaf9c6812534207ed34c5650b089edf413/); ethereum `0x06bc82...88b13c`; ethereum `0x105dde...ab0548`; ethereum `0x5e6bb1...2378f2`; ethereum `0xcc4e08...2cb392`; ethereum `0xf807b7...fbad30` | ⚠️ Unaudited |
| RewardSplitterFactory | operational_periphery | ethereum | n/a | [`0x256af2...6cc5f8`](./contracts/ethereum-1/0x256af27ce81282a0491a5361172c1db08f6cc5f8/) | ⚠️ Unaudited |
| RSETH | token | ethereum | n/a | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ⚠️ Unaudited |
| SharedMevEscrow | operational_periphery | ethereum | n/a | [`0x48319f...20ff86`](./contracts/ethereum-1/0x48319f97e5da1233c21c48b80097c0fb7a20ff86/) | ⚠️ Unaudited |
| StakingConfig | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2d3f89...ce6aae`](./contracts/ethereum-1/0x2d3f893c7c45c2be3ec63cf5385deafd7ece6aae/); ethereum `0xd4f5ff...7c06d1` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0xec70dc...a5ffa8`](./contracts/arbitrum-42161/0xec70dcb4a1efa46b8f2d97c310c9c4790ba5ffa8/) | ⚠️ Unaudited |
| VaultFactoryV2 | registry | ethereum | n/a | 2 deployments: ethereum [`0x01323e...59c256`](./contracts/ethereum-1/0x01323e0054651adf2c10ce90351439840559c256/); ethereum `0x20249e...9207e1` | ⚠️ Unaudited |
| VaultsRegistry | registry | ethereum | n/a | [`0x3a0008...4fc20e`](./contracts/ethereum-1/0x3a0008a588772446f6e656133c2d5029cc4fc20e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (37)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnkrProtocol | unknown | ethereum | n/a | `0x4432fa...f1d784` | ❓ Unverified |
| EarnConfig | unknown | ethereum | n/a | `0x1edf13...2de12e` | ❓ Unverified |
| PayAsYouGo | unknown | ethereum | n/a | `0x3d0bb8...3cb70f` | ❓ Unverified |
| Proxy (impl: 0x093448dec118b189069e5e1dc37171888a5a2786) | unknown | ethereum | n/a | `0x77fca8...bdae14` | ❓ Unverified |
| Proxy (impl: 0x91b00b13368a807dda768fe20420641904cfb15b) | unknown | ethereum | n/a | `0x417449...627b05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x033464...725ebc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08a0c5...64e123` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11e6ec...df6618` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18db91...08a8d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1af808...112765` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c9e85...bb76c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x315654...18a069` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a0a9c...32592f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e2cc1...76dc65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ffff1...47f02e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b0737...c21939` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e5c32...c62783` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x618772...39886d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x630f27...5294de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63ad7c...488c78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65e9ab...041154` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x676777...2ed09a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x766bdb...0082d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7baa1e...0a836d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a2f83...2ce27a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f6b9e...a2ea4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x932f09...b936fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97dc5b...cfc367` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2ecc7...49579a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce4315...2f66ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd20670...f97485` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6239d...66190e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7207f...ff18b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd99955...b14ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7902e...fd8eba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf89516...b40351` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd0f61...6c34d6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf](https://2747094502-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FU4cJWTpKt8p39EIBK6mR%2Fuploads%2FLZIojAWw6TSs5Wl4cKl1%2FBracket_Bracket_Wrapped_Vault_Updates_report.pdf) | Guardian | Audit | 2025-09 | fresh | Direct | contract_name | 5 | n/a |
| [spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf](https://2747094502-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FU4cJWTpKt8p39EIBK6mR%2Fuploads%2FzV05dwewKc7DXdBR3StG%2FBracket%20-%20KYC%20Whitelist_report%20(1).pdf) | Guardian | Audit | 2025-03 | aging | Direct | contract_name | 2 | n/a |
| [Bracket Rd.2 - LST Vault_report.pdf](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/AKOHIS45wGCYVmmPep7K/Bracket%20Rd.2%20-%20LST%20Vault_report.pdf) | Guardian | Audit | 2025-03 | aging | Direct | contract_name | 6 | high |
| [2024-01-20_Bracket.pdf](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/M58MmJtnx3aIcLSaocbO/2024-01-20_Bracket.pdf) | Guardian | Audit | 2024-01 | stale | Direct | contract_name | 6 | high |
| [Bracket Fi Escrow - Zellic Audit Report.pdf](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/RyVLVPDnszgXoTEA7sbU/Bracket%20Fi%20Escrow%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 97 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=7, extraction_exact=12

Zero-match audit list:

- [2757] Bracket Fi Escrow - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
