# Agentic Audit Brief: Bracket Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Bracket Protocol (`bracket-protocol`)
- Website: [https://www.bracket.fi/](https://www.bracket.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 70 unique implementations (146 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,921,478.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Bracket Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, ethereum. Structural roles: 1 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (2), accesscontrol (1), erc165 (1), erc20 (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 69 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Confirmed-live implementations: 1 of 70 unique; 69 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/60
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 70
- Raw deployments: 146
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian | Tier 2 | 1 | 1.7% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BrktETH | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381410 | 2 deployments: ethereum `0x22ad51...dc0640`; ethereum `0x6c8550...1accd6` | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AETH_R21 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe95a20...c2c3cb` | ⚠️ Unaudited |
| BracketVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4eeec6...5ecef2`; ethereum `0x8c24dd...5c00d1` | ⚠️ Unaudited |
| BracketVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f0732...8b965d` | ⚠️ Unaudited |
| BracketVaultLens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0072e8...fa7085`; ethereum `0xcdc3a8...29082c` | ⚠️ Unaudited |
| BracketVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3a77cd...aab7f6`; ethereum `0x661011...c587d8` | ⚠️ Unaudited |
| BracketVaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x3ce19f...d318cb`; ethereum `0x4d8d05...9e1b00`; ethereum `0x72de68...480a8a`; ethereum `0x7abf0a...68b7f2`; ethereum `0x80aa12...a5331e`; ethereum `0xa298b8...af43d5`; ethereum `0xa99f01...3a0f52` | ⚠️ Unaudited |
| BracketVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6b3c48...2dbb4d`; ethereum `0xf29de9...fb6e9c` | ⚠️ Unaudited |
| BracketWrappedVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a5e0e...e8a6c2` | ⚠️ Unaudited |
| BracketWrappedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 5 deployments: ethereum `0x3ebfa3...23c1ee`; ethereum `0x6fe42a...ad62d0`; ethereum `0x7309e1...97d5ff`; ethereum `0x91094d...131b5f`; ethereum `0xa4f059...52d4f4` | ⚠️ Unaudited |
| BrktETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4f104...2d145a` | ⚠️ Unaudited |
| BrktETHRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb3358...0397cc` | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x849da6...02e540`; ethereum `0xf6bbbc...ad5354` | ⚠️ Unaudited |
| DepositDataRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75ab6d...35223e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x574952...42139a`; ethereum `0x5c4606...f59219` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe3c02a...9a20fe`; ethereum `0xecec1a...59b90f` | ⚠️ Unaudited |
| EthBlocklistErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0b4f6b...099556`; ethereum `0x5f31ed...058988` | ⚠️ Unaudited |
| EthBlocklistErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x84d44a...311e9e`; ethereum `0xc25529...30f14a` | ⚠️ Unaudited |
| EthBlocklistVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x00e3af...d4cd3c`; ethereum `0x2d29f3...d4bcad`; ethereum `0xd19e4b...9c8478` | ⚠️ Unaudited |
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
| Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x435192...ba3f7a`; ethereum `0x6b5815...b487b5` | ⚠️ Unaudited |
| KYCWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x153ae1...44fb21`; ethereum `0x162f86...e11183` | ⚠️ Unaudited |
| KYCWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1925c3...3e2f97`; ethereum `0x6a3bab...3256d3` | ⚠️ Unaudited |
| KYCWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x599aa7...455bc3`; ethereum `0x90e3f7...539feb` | ⚠️ Unaudited |
| KYCWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9cb91...07f7ac` | ⚠️ Unaudited |
| NavUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5fac6b...318e8b`; ethereum `0xfe7aad...2c3788` | ⚠️ Unaudited |
| NavUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaacf9f...d7a425` | ⚠️ Unaudited |
| Oracles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c167...c678d6` | ⚠️ Unaudited |
| OsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x475e7d...b96702`; ethereum `0xf1c9ac...190e38` | ⚠️ Unaudited |
| OsTokenConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x287d1e...66eb59`; ethereum `0x2aae83...a22120`; ethereum `0xe88222...fb1cd5` | ⚠️ Unaudited |
| OsTokenFlashLoans | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebe12d...fbf5d2` | ⚠️ Unaudited |
| OsTokenVaultController | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2a261e...000306`; ethereum `0xfe7083...44b521` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x481f28...799592` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x802351...dfe471`; ethereum `0xb31f53...11d702` | ⚠️ Unaudited |
| RewardEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d34a...3ecee0` | ⚠️ Unaudited |
| RewardSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x439b60...febcd9`; ethereum `0x67561c...6aca9b`; ethereum `0xe00512...5b1902` | ⚠️ Unaudited |
| RewardSplitterFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x256af2...6cc5f8`; ethereum `0x8c512f...8b1dba`; ethereum `0x90a942...797449` | ⚠️ Unaudited |
| RSETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa1290d...99e5a7` | ⚠️ Unaudited |
| SharedMevEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x07a98f...488a2f`; ethereum `0x48319f...20ff86` | ⚠️ Unaudited |
| StakedEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82fe8c...baaa75` | ⚠️ Unaudited |
| StandardArbERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xec70dc...a5ffa8` | ⚠️ Unaudited |
| VaultFactoryV2 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x01323e...59c256`; ethereum `0x20249e...9207e1` | ⚠️ Unaudited |
| VaultRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb737f5...a3c4e3` | ⚠️ Unaudited |
| VaultsRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3a0008...4fc20e`; ethereum `0xbbe532...ba0bc2` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18db91...08a8d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e2cc1...76dc65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e5c32...c62783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x630f27...5294de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63ad7c...488c78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65e9ab...041154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x766bdb...0082d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x932f09...b936fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2ecc7...49579a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd20670...f97485` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf](https://2747094502-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FU4cJWTpKt8p39EIBK6mR%2Fuploads%2FLZIojAWw6TSs5Wl4cKl1%2FBracket_Bracket_Wrapped_Vault_Updates_report.pdf) | Guardian | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf](https://2747094502-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FU4cJWTpKt8p39EIBK6mR%2Fuploads%2FzV05dwewKc7DXdBR3StG%2FBracket%20-%20KYC%20Whitelist_report%20(1).pdf) | Guardian | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [Bracket Rd.2 - LST Vault_report.pdf](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/AKOHIS45wGCYVmmPep7K/Bracket%20Rd.2%20-%20LST%20Vault_report.pdf) | Guardian | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 5 | high |
| [2024-01-20_Bracket.pdf](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/M58MmJtnx3aIcLSaocbO/2024-01-20_Bracket.pdf) | Guardian | Audit | 2024-01 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [Bracket Fi Escrow - Zellic Audit Report.pdf](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/RyVLVPDnszgXoTEA7sbU/Bracket%20Fi%20Escrow%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2753] spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf — no match: No reason recorded
- [2754] spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf — no match: No reason recorded
- [2755] Bracket Rd.2 - LST Vault_report.pdf — matched: Extracted contract names from findings locations and scope description. The audit report covers Bracket's LST management system with contracts BracketVault, VaultFactory, BrktETH, BracketOracle, IBracketVault, and RebalancingToken.
- [2756] 2024-01-20_Bracket.pdf — matched: Extracted contract names from findings and scope sections. Audit date from cover page.
- [2757] Bracket Fi Escrow - Zellic Audit Report.pdf — no match: Scope section explicitly lists BridgeEscrow.sol, EscrowBase.sol, MainEscrow.sol. Audit date is April 19, 2024 from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | BracketVault | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | BracketVaultV2 | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | BracketWrappedVault | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | KYCWhitelist | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | NavUpdater | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | RebasingToken | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | VaultRouter | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf | BracketVault | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf | BrktETHRouter | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf | Config | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf | KYCWhitelist | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf | RebasingToken | unmatched — not counted | — | — | no |
| Bracket Rd.2 - LST Vault_report.pdf | BracketVault | unmatched — not counted | — | Listed in findings locations (e.g., BracketVault.sol:133) | no |
| Bracket Rd.2 - LST Vault_report.pdf | VaultFactory | unmatched — not counted | — | Listed in findings locations (e.g., VaultFactory.sol:32) | no |
| Bracket Rd.2 - LST Vault_report.pdf | BrktETH | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x6c8550...1accd6` — deployed 2025-01-20 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bracket Rd.2 - LST Vault_report.pdf | BracketOracle | unmatched — not counted | — | Listed in findings locations (e.g., BracketOracle.sol) | no |
| Bracket Rd.2 - LST Vault_report.pdf | IBracketVault | unmatched — not counted | — | Listed in findings locations (e.g., IBracketVault.sol) | no |
| Bracket Rd.2 - LST Vault_report.pdf | RebalancingToken | unmatched — not counted | — | Mentioned in L-18 finding as a contract with totalSupply() discrepancy | no |
| 2024-01-20_Bracket.pdf | BrktETH | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x6c8550...1accd6` — deployed 2025-01-20 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-20_Bracket.pdf | BracketVault | unmatched — not counted | — | Listed in findings and scope | no |
| 2024-01-20_Bracket.pdf | BracketOracle | unmatched — not counted | — | Listed in findings and scope | no |
| 2024-01-20_Bracket.pdf | RebasingToken | unmatched — not counted | — | Listed in finding L-11 | no |
| Bracket Fi Escrow - Zellic Audit Report.pdf | BridgeEscrow | unmatched — not counted | — | listed in scope section | no |
| Bracket Fi Escrow - Zellic Audit Report.pdf | EscrowBase | unmatched — not counted | — | listed in scope section | no |
| Bracket Fi Escrow - Zellic Audit Report.pdf | MainEscrow | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 23 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=2

Zero-match audit list:

- [2753] spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf
- [2754] spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf
- [2757] Bracket Fi Escrow - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
