# Agentic Audit Brief: Bracket Protocol

## Project Overview

- Project: Bracket Protocol (`bracket-protocol`)
- Website: [https://www.bracket.fi/](https://www.bracket.fi/)
- Lifecycle: active (Tier 0, 83.1% below peak)
- Generated: 2026-06-18T09:40:46.176Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-5311
- Chains: arbitrum, ethereum
- Contract surface: 19 unique implementations (24 raw deployments)
- DeFi Llama TVL: $3,040,356.00
- On-chain TVL (included contracts): $619,345,920.00
- TVL by chain: Ethereum $607,696,136.05 | Arbitrum $11,649,783.94

## Project Description

Bracket Protocol is an institutional digital asset vault infrastructure and managed DeFi strategy platform for allocators, issuers, and asset managers. Current product context should be aligned with DefiLlama child protocols including Bracket Vaults and Bracket LST, while legacy or zero-TVL products such as Bracket Escrow Staking and BracketX should be described only with their current status and TVL context. Unsupported claims about escrow derivative tokens flowing into Bracket Vaults or BrktETH serving as a vault deposit asset should be omitted unless directly evidenced.

### Architecture

Bracket Escrow Staking mints derivative tokens that can be used within Bracket Vaults for additional yield strategies. The BrktETH liquid staking token may serve as a deposit asset in vaults, creating a unified ecosystem where staked assets flow between escrow, LST, and vault products.

## Contract Surface Quality

- Indexed contracts: 146; live-surface contracts included: 24 (24 live, 0 unknown).
- Excluded by liveness: 90 inactive, 32 singleton, 0 uninitialized.
- Deployment units: 4/18 live.
- Detected codebases: none
- Unverified dependencies: 7/30.

## Audit Coverage Summary

- Verified implementations audited: 6/18 (33.3%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 19
- Raw deployments: 24
- Audits discovered: 5
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $619,345,920.00
- Latest audit: 2025-09 (fresh)
- Staleness: 1 fresh, 2 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian | Tier 2 | 6 | 33.3% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BracketVaultV2 | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x3ce19f...d318cb`](./contracts/ethereum-1/0x3ce19f1ce4ae4ce942292ac6c37b0ec35cd318cb/); ethereum `0x4d8d05...9e1b00`; ethereum `0x72de68...480a8a`; ethereum `0x80aa12...a5331e`; ethereum `0xa298b8...af43d5` | ✅ Audited |
| BracketWrappedVault | core_logic | ethereum | n/a | [`0x2a5e0e...e8a6c2`](./contracts/ethereum-1/0x2a5e0e5a5a11be269ee94be6dda8bd9379e8a6c2/) | ✅ Audited |
| BrktETHRouter | adapter | ethereum | n/a | [`0xcb3358...0397cc`](./contracts/ethereum-1/0xcb3358afef9bd888d8bfed436c4ef072600397cc/) | ✅ Audited |
| KYCWhitelist | unknown | ethereum | n/a | [`0xe9cb91...07f7ac`](./contracts/ethereum-1/0xe9cb91a72f1b99a771b57244feb8851abd07f7ac/) | ✅ Audited |
| NavUpdater | unknown | ethereum | n/a | [`0xaacf9f...d7a425`](./contracts/ethereum-1/0xaacf9f4fde46e98b4e0d32ede3d4609547d7a425/) | ✅ Audited |
| VaultRouter | adapter | ethereum | n/a | [`0xb737f5...a3c4e3`](./contracts/ethereum-1/0xb737f54637c5c66f47c6818c80ccc7a9a3a3c4e3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OsTokenVaultController | core_logic | ethereum | n/a | [`0x2a261e...000306`](./contracts/ethereum-1/0x2a261e60fb14586b474c208b1b7ac6d0f5000306/) | ⚠️ Unaudited |
| EthGenesisVault | core_logic | ethereum | unit-36309 | [`0xac0f90...652885`](./contracts/ethereum-1/0xac0f906e433d58fa868f936e8a43230473652885/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-36314 | [`0xec70dc...a5ffa8`](./contracts/arbitrum-42161/0xec70dcb4a1efa46b8f2d97c310c9c4790ba5ffa8/) | ⚠️ Unaudited |
| AETH_R21 | unknown | ethereum | unit-36310 | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| BracketVaultLens | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x0072e8...fa7085`](./contracts/ethereum-1/0x0072e80b04c17bfd6c6d0a21a17ae118defa7085/); ethereum `0xcdc3a8...29082c` | ⚠️ Unaudited |
| DepositDataRegistry | registry | ethereum | n/a | [`0x75ab6d...35223e`](./contracts/ethereum-1/0x75ab6ddce07556639333d3df1eaa684f5735223e/) | ⚠️ Unaudited |
| Keeper | operational_periphery | ethereum | n/a | [`0x6b5815...b487b5`](./contracts/ethereum-1/0x6b5815467da09daa7dc83db21c9239d98bb487b5/) | ⚠️ Unaudited |
| RewardSplitterFactory | operational_periphery | ethereum | n/a | [`0x256af2...6cc5f8`](./contracts/ethereum-1/0x256af27ce81282a0491a5361172c1db08f6cc5f8/) | ⚠️ Unaudited |
| RSETH | token | ethereum | unit-36308 | [`0xa1290d...99e5a7`](./contracts/ethereum-1/0xa1290d69c65a6fe4df752f95823fae25cb99e5a7/) | ⚠️ Unaudited |
| SharedMevEscrow | operational_periphery | ethereum | n/a | [`0x48319f...20ff86`](./contracts/ethereum-1/0x48319f97e5da1233c21c48b80097c0fb7a20ff86/) | ⚠️ Unaudited |
| VaultFactoryV2 | registry | ethereum | n/a | [`0x01323e...59c256`](./contracts/ethereum-1/0x01323e0054651adf2c10ce90351439840559c256/) | ⚠️ Unaudited |
| VaultsRegistry | registry | ethereum | n/a | [`0x3a0008...4fc20e`](./contracts/ethereum-1/0x3a0008a588772446f6e656133c2d5029cc4fc20e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x63ad7c...488c78` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://2747094502-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FU4cJWTpKt8p39EIBK6mR%2Fuploads%2FLZIojAWw6TSs5Wl4cKl1%2FBracket_Bracket_Wrapped_Vault_Updates_report.pdf) | Guardian | Audit | 2025-09 | fresh | Direct | contract_name | 9 | high |
| [Rendered PDF capture](https://2747094502-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FU4cJWTpKt8p39EIBK6mR%2Fuploads%2FzV05dwewKc7DXdBR3StG%2FBracket%20-%20KYC%20Whitelist_report%20(1).pdf) | Guardian | Audit | 2025-03 | aging | Direct | contract_name | 2 | high |
| [Rendered PDF capture](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/AKOHIS45wGCYVmmPep7K/Bracket%20Rd.2%20-%20LST%20Vault_report.pdf) | Guardian | Audit | 2025-03 | aging | Direct | contract_name | 0 | n/a |
| [Rendered PDF capture](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/M58MmJtnx3aIcLSaocbO/2024-01-20_Bracket.pdf) | Guardian | Audit | 2024-01 | stale | Direct | contract_name | 0 | n/a |
| [Rendered PDF capture](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/RyVLVPDnszgXoTEA7sbU/Bracket%20Fi%20Escrow%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2a261e...000306`](./contracts/ethereum-1/0x2a261e60fb14586b474c208b1b7ac6d0f5000306/) | OsTokenVaultController | core_logic | $308,378,070.07 | Verified native implementation with $308,378,070.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0072e8...fa7085`](./contracts/ethereum-1/0x0072e80b04c17bfd6c6d0a21a17ae118defa7085/) | BracketVaultLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75ab6d...35223e`](./contracts/ethereum-1/0x75ab6ddce07556639333d3df1eaa684f5735223e/) | DepositDataRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b5815...b487b5`](./contracts/ethereum-1/0x6b5815467da09daa7dc83db21c9239d98bb487b5/) | Keeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x256af2...6cc5f8`](./contracts/ethereum-1/0x256af27ce81282a0491a5361172c1db08f6cc5f8/) | RewardSplitterFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48319f...20ff86`](./contracts/ethereum-1/0x48319f97e5da1233c21c48b80097c0fb7a20ff86/) | SharedMevEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01323e...59c256`](./contracts/ethereum-1/0x01323e0054651adf2c10ce90351439840559c256/) | VaultFactoryV2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a0008...4fc20e`](./contracts/ethereum-1/0x3a0008a588772446f6e656133c2d5029cc4fc20e/) | VaultsRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=57

Zero-match audit list:

- [2755] Rendered PDF capture
- [2756] Rendered PDF capture
- [2757] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
