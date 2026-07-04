# Agentic Audit Brief: Bracket Protocol

## Project Overview

- Project: Bracket Protocol (`bracket-protocol`)
- Website: [https://www.bracket.fi/](https://www.bracket.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:08.543Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, ethereum
- Contract surface: 51 unique implementations (97 raw deployments)
- DeFi Llama TVL: $2,921,478.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 149 project-authored contract(s) across 2 chain(s); 60 ERC20 tokens, 1 ERC721 NFT, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 34 common project-authored base contract(s) (ethvault, vaultimmutables, vaultadmin). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 144; live-surface contracts included: 94 (82 live, 12 unknown).
- Excluded by liveness: 50 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 10/41 (24.4%)
- Deployed-live implementations: 41 of 51 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 10/41
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 51
- Raw deployments: 97
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
| Guardian | Tier 2 | 10 | 24.4% | 2025-09 |

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

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AETH_R21 | unknown | ethereum | n/a | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| BracketVaultLens | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x0072e8...fa7085`](./contracts/ethereum-1/0x0072e80b04c17bfd6c6d0a21a17ae118defa7085/); ethereum `0xcdc3a8...29082c` | ⚠️ Unaudited |
| BracketVaultV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3a77cd...aab7f6`](./contracts/ethereum-1/0x3a77cd78c21f5b0c7d33a8fab4a0c6f91aaab7f6/); ethereum `0x661011...c587d8` | ⚠️ Unaudited |
| BracketVaultV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b3c48...2dbb4d`](./contracts/ethereum-1/0x6b3c487662d58fb15d8dede46be20a77a92dbb4d/); ethereum `0xf29de9...fb6e9c` | ⚠️ Unaudited |
| BracketWrappedVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x3ebfa3...23c1ee`](./contracts/ethereum-1/0x3ebfa39649efb8aa0b4e8dcccd25884d8223c1ee/); ethereum `0x6fe42a...ad62d0`; ethereum `0x7309e1...97d5ff`; ethereum `0x91094d...131b5f`; ethereum `0xa4f059...52d4f4` | ⚠️ Unaudited |
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
| Keeper | operational_periphery | ethereum | n/a | [`0x6b5815...b487b5`](./contracts/ethereum-1/0x6b5815467da09daa7dc83db21c9239d98bb487b5/) | ⚠️ Unaudited |
| KYCWhitelist | unknown | ethereum | n/a | 2 deployments: ethereum [`0x153ae1...44fb21`](./contracts/ethereum-1/0x153ae19301bdb53627bba296195270115b44fb21/); ethereum `0x162f86...e11183` | ⚠️ Unaudited |
| KYCWhitelist | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1925c3...3e2f97`](./contracts/ethereum-1/0x1925c36b0c09eec3a40303a3500c6594ea3e2f97/); ethereum `0x6a3bab...3256d3` | ⚠️ Unaudited |
| KYCWhitelist | unknown | ethereum | n/a | 2 deployments: ethereum [`0x599aa7...455bc3`](./contracts/ethereum-1/0x599aa75908d32d01a5ae41692cadf24d89455bc3/); ethereum `0x90e3f7...539feb` | ⚠️ Unaudited |
| NavUpdater | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5fac6b...318e8b`](./contracts/ethereum-1/0x5fac6bc8646bb345178d7156153ae58ba3318e8b/); ethereum `0xfe7aad...2c3788` | ⚠️ Unaudited |
| OsTokenVaultController | core_logic | ethereum | n/a | [`0x2a261e...000306`](./contracts/ethereum-1/0x2a261e60fb14586b474c208b1b7ac6d0f5000306/) | ⚠️ Unaudited |
| RewardSplitterFactory | operational_periphery | ethereum | n/a | [`0x256af2...6cc5f8`](./contracts/ethereum-1/0x256af27ce81282a0491a5361172c1db08f6cc5f8/) | ⚠️ Unaudited |
| RSETH | token | ethereum | n/a | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ⚠️ Unaudited |
| SharedMevEscrow | operational_periphery | ethereum | n/a | [`0x48319f...20ff86`](./contracts/ethereum-1/0x48319f97e5da1233c21c48b80097c0fb7a20ff86/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0xec70dc...a5ffa8`](./contracts/arbitrum-42161/0xec70dcb4a1efa46b8f2d97c310c9c4790ba5ffa8/) | ⚠️ Unaudited |
| VaultFactoryV2 | registry | ethereum | n/a | 2 deployments: ethereum [`0x01323e...59c256`](./contracts/ethereum-1/0x01323e0054651adf2c10ce90351439840559c256/); ethereum `0x20249e...9207e1` | ⚠️ Unaudited |
| VaultsRegistry | registry | ethereum | n/a | [`0x3a0008...4fc20e`](./contracts/ethereum-1/0x3a0008a588772446f6e656133c2d5029cc4fc20e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x18db91...08a8d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e2cc1...76dc65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e5c32...c62783` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x630f27...5294de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63ad7c...488c78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65e9ab...041154` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x766bdb...0082d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x932f09...b936fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2ecc7...49579a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd20670...f97485` | ❓ Unverified |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | AETH_R21 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0072e8...fa7085`](./contracts/ethereum-1/0x0072e80b04c17bfd6c6d0a21a17ae118defa7085/) | BracketVaultLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a77cd...aab7f6`](./contracts/ethereum-1/0x3a77cd78c21f5b0c7d33a8fab4a0c6f91aaab7f6/) | BracketVaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b3c48...2dbb4d`](./contracts/ethereum-1/0x6b3c487662d58fb15d8dede46be20a77a92dbb4d/) | BracketVaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ebfa3...23c1ee`](./contracts/ethereum-1/0x3ebfa39649efb8aa0b4e8dcccd25884d8223c1ee/) | BracketWrappedVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75ab6d...35223e`](./contracts/ethereum-1/0x75ab6ddce07556639333d3df1eaa684f5735223e/) | DepositDataRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b4f6b...099556`](./contracts/ethereum-1/0x0b4f6bfb694790051e0203db83edbb5888099556/) | EthBlocklistErc20Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ddc10...26cb53`](./contracts/ethereum-1/0x6ddc10eeeebbbcf00e784ba44fe4b038af26cb53/) | EthErc20Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac0f90...652885`](./contracts/ethereum-1/0xac0f906e433d58fa868f936e8a43230473652885/) | EthGenesisVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fcd8b...d49e4e`](./contracts/ethereum-1/0x5fcd8bb2e3dde5809b2106039b741c041bd49e4e/) | EthRestakeBlocklistErc20Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e3037...addb67`](./contracts/ethereum-1/0x3e30370cabd4b4d95be17706d840ff9de1addb67/) | EthRestakeBlocklistVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x215f4c...b0eee4`](./contracts/ethereum-1/0x215f4c69c3d1461c7aa38c9c73c27e10cfb0eee4/) | EthRestakeErc20Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xedebe7...c36ee5`](./contracts/ethereum-1/0xedebe792c6190be612cbe97f628137faa8c36ee5/) | EthRestakePrivErc20Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x792ff3...25e353`](./contracts/ethereum-1/0x792ff341e1db4ab20fbfb93c0fc071501525e353/) | EthRestakePrivVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59adb4...e073bb`](./contracts/ethereum-1/0x59adb46407ebf4cba923f91f2c06acc4b2e073bb/) | EthRestakeVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x026df3...d11b2c`](./contracts/ethereum-1/0x026df36ec050e7f473cbfc30aa42946d3ed11b2c/) | EthRestakeVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x170618...8dfe5e`](./contracts/ethereum-1/0x170618936cd96b1ed8112ec3d3778374b38dfe5e/) | EthVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b5815...b487b5`](./contracts/ethereum-1/0x6b5815467da09daa7dc83db21c9239d98bb487b5/) | Keeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x153ae1...44fb21`](./contracts/ethereum-1/0x153ae19301bdb53627bba296195270115b44fb21/) | KYCWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1925c3...3e2f97`](./contracts/ethereum-1/0x1925c36b0c09eec3a40303a3500c6594ea3e2f97/) | KYCWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x599aa7...455bc3`](./contracts/ethereum-1/0x599aa75908d32d01a5ae41692cadf24d89455bc3/) | KYCWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fac6b...318e8b`](./contracts/ethereum-1/0x5fac6bc8646bb345178d7156153ae58ba3318e8b/) | NavUpdater | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a261e...000306`](./contracts/ethereum-1/0x2a261e60fb14586b474c208b1b7ac6d0f5000306/) | OsTokenVaultController | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x256af2...6cc5f8`](./contracts/ethereum-1/0x256af27ce81282a0491a5361172c1db08f6cc5f8/) | RewardSplitterFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | RSETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48319f...20ff86`](./contracts/ethereum-1/0x48319f97e5da1233c21c48b80097c0fb7a20ff86/) | SharedMevEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xec70dc...a5ffa8`](./contracts/arbitrum-42161/0xec70dcb4a1efa46b8f2d97c310c9c4790ba5ffa8/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01323e...59c256`](./contracts/ethereum-1/0x01323e0054651adf2c10ce90351439840559c256/) | VaultFactoryV2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a0008...4fc20e`](./contracts/ethereum-1/0x3a0008a588772446f6e656133c2d5029cc4fc20e/) | VaultsRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

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
