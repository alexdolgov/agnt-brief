# Agentic Audit Brief: StakeWise

## Project Overview

- Project: StakeWise (`stakewise`)
- Website: [https://stakewise.io/](https://stakewise.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.870Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: ethereum, gnosis
- Contract surface: 49 unique implementations (50 raw deployments)
- DeFi Llama TVL: $584,758,883.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 49 project-authored contract(s) across 2 chain(s); 10 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 24 common project-authored base contract(s) (ethvault, vaultimmutables, vaultadmin). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 50 (50 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 42/47 (89.4%)
- Deployed-live implementations: 49 of 49 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 43/49
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 49
- Raw deployments: 50
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 2 fresh, 1 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 43 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 12.8% (ConsenSys Diligence)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sigma Prime | Tier 2 | 23 | 46.9% | 2024-09 |
| ABDK | Tier 2 | 21 | 42.9% | 2025-09 |
| CertiK | Tier 2 | 14 | 28.6% | 2021-06 |
| Halborn | Tier 2 | 13 | 26.5% | 2023-08 |
| Quantstamp | Tier 2 | 13 | 26.5% | 2022-05 |
| Omniscia | Tier 2 | 11 | 22.4% | 2021-11 |
| Runtime Verification | Tier 2 | 10 | 20.4% | 2021-01 |
| Consensys Diligence | Tier 1 | 7 | 14.3% | 2024-03 |
| Pessimistic | Tier 2 | 7 | 14.3% | 2022-09 |

## Contract Surface

### ✅ Verified + Audited (43)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ContractChecker | unknown | gnosis | n/a | [`0x814f9c8c0269f11996138c77cc16a3a7f0a36b0c`](./contracts/gnosis-100/0x814f9c8c0269f11996138c77cc16a3a7f0a36b0c/) | ✅ Audited |
| CumulativeMerkleDrop | unknown | ethereum | n/a | [`0x849da65afed8483152f8baa75f776c6f2c02e540`](./contracts/ethereum-1/0x849da65afed8483152f8baa75f776c6f2c02e540/) | ✅ Audited |
| DepositDataRegistry | unknown | ethereum | n/a | [`0x75ab6ddce07556639333d3df1eaa684f5735223e`](./contracts/ethereum-1/0x75ab6ddce07556639333d3df1eaa684f5735223e/) | ✅ Audited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x5c4606cb0ee50fdc4fad8722c99e8d6d49f59219`](./contracts/ethereum-1/0x5c4606cb0ee50fdc4fad8722c99e8d6d49f59219/) | ✅ Audited |
| EthBlocklistErc20Vault | unknown | ethereum | n/a | [`0x0b4f6bfb694790051e0203db83edbb5888099556`](./contracts/ethereum-1/0x0b4f6bfb694790051e0203db83edbb5888099556/) | ✅ Audited |
| EthBlocklistVault | unknown | ethereum | n/a | [`0x00e3af59e2496d030e5b2c629784db284fd4cd3c`](./contracts/ethereum-1/0x00e3af59e2496d030e5b2c629784db284fd4cd3c/) | ✅ Audited |
| EthErc20Vault | unknown | ethereum | n/a | [`0x3acdbdbf0459d376df9378c02af50c83dc7646e9`](./contracts/ethereum-1/0x3acdbdbf0459d376df9378c02af50c83dc7646e9/) | ✅ Audited |
| EthGenesisVault | unknown | ethereum | n/a | [`0x124c33d07f94b31adf87c12f7ca3a586d3510928`](./contracts/ethereum-1/0x124c33d07f94b31adf87c12f7ca3a586d3510928/) | ✅ Audited |
| EthOsTokenVaultEscrow | unknown | ethereum | n/a | [`0x09e84205df7c68907e619d07afd90143c5763605`](./contracts/ethereum-1/0x09e84205df7c68907e619d07afd90143c5763605/) | ✅ Audited |
| EthPrivErc20Vault | unknown | ethereum | n/a | [`0x28f325dd287a5984b754d34cfca38af3a8429e71`](./contracts/ethereum-1/0x28f325dd287a5984b754d34cfca38af3a8429e71/) | ✅ Audited |
| EthPrivVault | unknown | ethereum | n/a | [`0x135f45e0179dd928e73422b40bdc6c5d7047a035`](./contracts/ethereum-1/0x135f45e0179dd928e73422b40bdc6c5d7047a035/) | ✅ Audited |
| EthRestakeBlocklistErc20Vault | unknown | ethereum | n/a | [`0x5fcd8bb2e3dde5809b2106039b741c041bd49e4e`](./contracts/ethereum-1/0x5fcd8bb2e3dde5809b2106039b741c041bd49e4e/) | ✅ Audited |
| EthRestakeBlocklistVault | unknown | ethereum | n/a | [`0x3e30370cabd4b4d95be17706d840ff9de1addb67`](./contracts/ethereum-1/0x3e30370cabd4b4d95be17706d840ff9de1addb67/) | ✅ Audited |
| EthRestakeErc20Vault | unknown | ethereum | n/a | [`0x215f4c69c3d1461c7aa38c9c73c27e10cfb0eee4`](./contracts/ethereum-1/0x215f4c69c3d1461c7aa38c9c73c27e10cfb0eee4/) | ✅ Audited |
| EthRestakePrivErc20Vault | unknown | ethereum | n/a | [`0xedebe792c6190be612cbe97f628137faa8c36ee5`](./contracts/ethereum-1/0xedebe792c6190be612cbe97f628137faa8c36ee5/) | ✅ Audited |
| EthRestakeVault | unknown | ethereum | n/a | [`0x59adb46407ebf4cba923f91f2c06acc4b2e073bb`](./contracts/ethereum-1/0x59adb46407ebf4cba923f91f2c06acc4b2e073bb/) | ✅ Audited |
| EthVault | unknown | ethereum | n/a | [`0x0cb2cbdf9a030ffbdea6f20a019f1feaca5cae78`](./contracts/ethereum-1/0x0cb2cbdf9a030ffbdea6f20a019f1feaca5cae78/) | ✅ Audited |
| EthVaultFactory | unknown | ethereum | n/a | [`0x170618936cd96b1ed8112ec3d3778374b38dfe5e`](./contracts/ethereum-1/0x170618936cd96b1ed8112ec3d3778374b38dfe5e/) | ✅ Audited |
| Keeper | unknown | ethereum | n/a | [`0x435192a898a5ee86bbc8951471e5fbe721ba3f7a`](./contracts/ethereum-1/0x435192a898a5ee86bbc8951471e5fbe721ba3f7a/) | ✅ Audited |
| MerkleDistributor | unknown | ethereum | n/a | [`0x459beef3c5bd5d1e66de93ac908e278ee2488f14`](./contracts/ethereum-1/0x459beef3c5bd5d1e66de93ac908e278ee2488f14/) | ✅ Audited |
| MerkleDrop | unknown | ethereum | n/a | [`0x2aab6822a1a9f982fd7b0fe35a5a5b6148ecf4d5`](./contracts/ethereum-1/0x2aab6822a1a9f982fd7b0fe35a5a5b6148ecf4d5/) | ✅ Audited |
| Oracles | unknown | ethereum | n/a | [`0x2f1c5e86b13a74f5a6e7b4b35dd77fe29aa47514`](./contracts/ethereum-1/0x2f1c5e86b13a74f5a6e7b4b35dd77fe29aa47514/) | ✅ Audited |
| OsToken | unknown | ethereum | n/a | [`0x475e7d2bd7428deb68deaa933dbf0d5850b96702`](./contracts/ethereum-1/0x475e7d2bd7428deb68deaa933dbf0d5850b96702/) | ✅ Audited |
| OsTokenConfig | unknown | ethereum | n/a | [`0x287d1e2a8de183a8bf8f2b09fa1340fbd766eb59`](./contracts/ethereum-1/0x287d1e2a8de183a8bf8f2b09fa1340fbd766eb59/) | ✅ Audited |
| OsTokenFlashLoans | unknown | ethereum | n/a | [`0xebe12d858e55ddc5fc5a8153dc3e117824fbf5d2`](./contracts/ethereum-1/0xebe12d858e55ddc5fc5a8153dc3e117824fbf5d2/) | ✅ Audited |
| OsTokenVaultController | unknown | ethereum | n/a | [`0x2a261e60fb14586b474c208b1b7ac6d0f5000306`](./contracts/ethereum-1/0x2a261e60fb14586b474c208b1b7ac6d0f5000306/) | ✅ Audited |
| Pool | unknown | gnosis | n/a | [`0x2f99472b727e15eecf9b9eff9f7481b85d3b4444`](./contracts/gnosis-100/0x2f99472b727e15eecf9b9eff9f7481b85d3b4444/) | ✅ Audited |
| PoolEscrow | unknown | ethereum | n/a | [`0x2296e122c1a20fca3cac3371357bdad3be0df079`](./contracts/ethereum-1/0x2296e122c1a20fca3cac3371357bdad3be0df079/) | ✅ Audited |
| PoolValidators | unknown | gnosis | n/a | [`0x2e9ace6ae7281fbf19b0401609ce64536fc924b5`](./contracts/gnosis-100/0x2e9ace6ae7281fbf19b0401609ce64536fc924b5/) | ✅ Audited |
| PriceFeed | unknown | ethereum | n/a | [`0x8023518b2192fb5384dadc596765b3dd1cdfe471`](./contracts/ethereum-1/0x8023518b2192fb5384dadc596765b3dd1cdfe471/) | ✅ Audited |
| RewardEthToken | unknown | ethereum | n/a | [`0x01d34aee72325f1d4a748f13c2169404523ecee0`](./contracts/ethereum-1/0x01d34aee72325f1d4a748f13c2169404523ecee0/) | ✅ Audited |
| RewardSplitter | unknown | ethereum | n/a | [`0x439b60d3c886e711dad30cf23a2bbd5388febcd9`](./contracts/ethereum-1/0x439b60d3c886e711dad30cf23a2bbd5388febcd9/) | ✅ Audited |
| RewardSplitterFactory | unknown | ethereum | n/a | [`0x256af27ce81282a0491a5361172c1db08f6cc5f8`](./contracts/ethereum-1/0x256af27ce81282a0491a5361172c1db08f6cc5f8/) | ✅ Audited |
| RewardToken | unknown | gnosis | n/a | [`0x04f439c341221da7ae086b6f585e4cd7a7e54622`](./contracts/gnosis-100/0x04f439c341221da7ae086b6f585e4cd7a7e54622/) | ✅ Audited |
| SharedMevEscrow | unknown | ethereum | n/a | [`0x07a98f01f5a91043f1396f101a21e91e90488a2f`](./contracts/ethereum-1/0x07a98f01f5a91043f1396f101a21e91e90488a2f/) | ✅ Audited |
| Solos | unknown | ethereum | n/a | [`0xeadcba8bf9aca93f627f31fb05470f5a0686ceca`](./contracts/ethereum-1/0xeadcba8bf9aca93f627f31fb05470f5a0686ceca/) | ✅ Audited |
| StakedEthToken | unknown | ethereum | n/a | [`0x41bcac23e4db058d8d7aabe2fccdae5f01fe647a`](./contracts/ethereum-1/0x41bcac23e4db058d8d7aabe2fccdae5f01fe647a/) | ✅ Audited |
| StakeWiseToken | unknown | ethereum | n/a | [`0x48c3399719b582dd63eb5aadf12a40b4c3f52fa2`](./contracts/ethereum-1/0x48c3399719b582dd63eb5aadf12a40b4c3f52fa2/) | ✅ Audited |
| TransparentUpgradeableProxy | unknown | gnosis | n/a | 2 deployments: gnosis [`0x61975c09207c5dfe794b0a652c8caf8458159aae`](./contracts/gnosis-100/0x61975c09207c5dfe794b0a652c8caf8458159aae/); gnosis `0x6b333b20fbae3c5c0969dd02176e30802e2fbbdb` | ✅ Audited |
| Validators | unknown | ethereum | n/a | [`0xa34e1010e2b76abdf7399e6c88147d0fafe28e90`](./contracts/ethereum-1/0xa34e1010e2b76abdf7399e6c88147d0fafe28e90/) | ✅ Audited |
| VaultsRegistry | unknown | ethereum | n/a | [`0x3a0008a588772446f6e656133c2d5029cc4fc20e`](./contracts/ethereum-1/0x3a0008a588772446f6e656133c2d5029cc4fc20e/) | ✅ Audited |
| VestingEscrow | unknown | ethereum | n/a | [`0x1e6d872ce26c8711e7d47b8e0c47ab91d95a6df3`](./contracts/ethereum-1/0x1e6d872ce26c8711e7d47b8e0c47ab91d95a6df3/) | ✅ Audited |
| VestingEscrowFactory | unknown | ethereum | n/a | [`0x27356a244cd2a8bbd0a1f4e96e8fcd70bf926bc3`](./contracts/ethereum-1/0x27356a244cd2a8bbd0a1f4e96e8fcd70bf926bc3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DaoModule | unknown | ethereum | n/a | [`0x1df2ce448b082272dac9b6842a54f342cf4e614e`](./contracts/ethereum-1/0x1df2ce448b082272dac9b6842a54f342cf4e614e/) | ⚠️ Unaudited |
| EthRestakePrivVault | unknown | ethereum | n/a | [`0x792ff341e1db4ab20fbfb93c0fc071501525e353`](./contracts/ethereum-1/0x792ff341e1db4ab20fbfb93c0fc071501525e353/) | ⚠️ Unaudited |
| EthRestakeVaultFactory | unknown | ethereum | n/a | [`0x026df36ec050e7f473cbfc30aa42946d3ed11b2c`](./contracts/ethereum-1/0x026df36ec050e7f473cbfc30aa42946d3ed11b2c/) | ⚠️ Unaudited |
| EthValidatorsChecker | unknown | ethereum | n/a | [`0xac9125646185cb58e86e77d5f402efa3fafafc84`](./contracts/ethereum-1/0xac9125646185cb58e86e77d5f402efa3fafafc84/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | gnosis | n/a | [`0x35cb741e55330b4a0e1ae011417e6715e4bca0b1`](./contracts/gnosis-100/0x35cb741e55330b4a0e1ae011417e6715e4bca0b1/) | ⚠️ Unaudited |
| StakedToken | unknown | gnosis | n/a | [`0xa4ef9da5ba71cc0d2e5e877a910a37ec43420445`](./contracts/gnosis-100/0xa4ef9da5ba71cc0d2e5e877a910a37ec43420445/) | ⚠️ Unaudited |

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
| [2021-01-14-RuntimeVerification.pdf](https://github.com/stakewise/contracts/blob/master/audits/2021-01-14-RuntimeVerification.pdf) | Runtime Verification | Audit | 2021-01 | stale | Direct | contract_name | 10 | high |
| [2021-04-18-Certik.pdf](https://github.com/stakewise/contracts/blob/master/audits/2021-04-18-Certik.pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | 14 | high |
| [2021-06-01-Certik.pdf](https://github.com/stakewise/contracts/blob/master/audits/2021-06-01-Certik.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | 14 | high |
| [2021-11-25-Omniscia.pdf](https://github.com/stakewise/contracts/blob/master/audits/2021-11-25-Omniscia.pdf) | Omniscia | Audit | 2021-11 | stale | Direct | contract_name | 11 | high |
| [2022-05-06-Quantstamp.pdf](https://github.com/stakewise/contracts/blob/master/audits/2022-05-06-Quantstamp.pdf) | Quantstamp | Audit | 2022-05 | stale | Direct | contract_name | 13 | high |
| [2022-09-16-Pessimistic.pdf](https://github.com/stakewise/contracts/blob/master/audits/2022-09-16-Pessimistic.pdf) | Pessimistic | Audit | 2022-09 | stale | Direct | contract_name | 7 | high |
| [2023-05-Halborn.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2023-05-Halborn.pdf) | Halborn | Audit | 2023-05 | stale | Direct | contract_name | 7 | high |
| [2023-08-Halborn.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2023-08-Halborn.pdf) | Halborn | Audit | 2023-08 | stale | Direct | contract_name | 12 | high |
| [2023-08-Sigma-Prime.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2023-08-Sigma-Prime.pdf) | Sigma Prime | Audit | 2023-08 | stale | Direct | contract_name | 7 | high |
| [2024-03-Consensys-Diligence.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2024-03-Consensys-Diligence.pdf) | Consensys Diligence | Audit | 2024-03 | stale | Direct | contract_name | 7 | high |
| [2024-06-Sigma-Prime.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2024-06-Sigma-Prime.pdf) | Sigma Prime | Audit | 2024-06 | stale | Direct | contract_name | 20 | high |
| [2024-09-Sigma-Prime.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2024-09-Sigma-Prime.pdf) | Sigma Prime | Audit | 2024-09 | aging | Direct | contract_name | 2 | high |
| [2025-09-ABDK.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2025-09-ABDK.pdf) | ABDK | Audit | 2025-09 | fresh | Direct | contract_name | 21 | high |
| [2026-04-Statemind.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2026-04-Statemind.pdf) | Statemind | Audit | 2026-04 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1df2ce448b082272dac9b6842a54f342cf4e614e`](./contracts/ethereum-1/0x1df2ce448b082272dac9b6842a54f342cf4e614e/) | DaoModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x792ff341e1db4ab20fbfb93c0fc071501525e353`](./contracts/ethereum-1/0x792ff341e1db4ab20fbfb93c0fc071501525e353/) | EthRestakePrivVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x026df36ec050e7f473cbfc30aa42946d3ed11b2c`](./contracts/ethereum-1/0x026df36ec050e7f473cbfc30aa42946d3ed11b2c/) | EthRestakeVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac9125646185cb58e86e77d5f402efa3fafafc84`](./contracts/ethereum-1/0xac9125646185cb58e86e77d5f402efa3fafafc84/) | EthValidatorsChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xa4ef9da5ba71cc0d2e5e877a910a37ec43420445`](./contracts/gnosis-100/0xa4ef9da5ba71cc0d2e5e877a910a37ec43420445/) | StakedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=13
- Match method counts: extraction_exact=145

Zero-match audit list:

- [18260] 2026-04-Statemind.pdf

Fork inheritance lineage and inherited audits are included when available.
