# Agentic Audit Brief: StakeWise

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: StakeWise (`stakewise`)
- Website: [https://stakewise.io/](https://stakewise.io/)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, gnosis
- Contract surface: 103 unique implementations (104 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $584,758,883.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for StakeWise. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across ethereum, gnosis. Structural roles: 7 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (7), supporting (1)
- Contract kinds: contract (8)
- Detected standards: ownable (4), ownable2step (4), multicall (2), chainlinkaggregator (1)
- Frameworks: openzeppelin (7)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 8; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 62 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 41 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/49
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 54
- Unique implementations: 103
- Raw deployments: 104
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 2 fresh, 1 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ContractChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x814f9c8c0269f11996138c77cc16a3a7f0a36b0c` | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x849da65afed8483152f8baa75f776c6f2c02e540` | ⚠️ Unaudited |
| DaoModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1df2ce448b082272dac9b6842a54f342cf4e614e` | ⚠️ Unaudited |
| DepositDataRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257006 | `0x75ab6ddce07556639333d3df1eaa684f5735223e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5c4606cb0ee50fdc4fad8722c99e8d6d49f59219` | ⚠️ Unaudited |
| EthBlocklistErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b4f6bfb694790051e0203db83edbb5888099556` | ⚠️ Unaudited |
| EthBlocklistVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00e3af59e2496d030e5b2c629784db284fd4cd3c` | ⚠️ Unaudited |
| EthErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3acdbdbf0459d376df9378c02af50c83dc7646e9` | ⚠️ Unaudited |
| EthGenesisVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x124c33d07f94b31adf87c12f7ca3a586d3510928` | ⚠️ Unaudited |
| EthOsTokenVaultEscrow | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257001 | `0x09e84205df7c68907e619d07afd90143c5763605` | ⚠️ Unaudited |
| EthPrivErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28f325dd287a5984b754d34cfca38af3a8429e71` | ⚠️ Unaudited |
| EthPrivVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x135f45e0179dd928e73422b40bdc6c5d7047a035` | ⚠️ Unaudited |
| EthRestakeBlocklistErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fcd8bb2e3dde5809b2106039b741c041bd49e4e` | ⚠️ Unaudited |
| EthRestakeBlocklistVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e30370cabd4b4d95be17706d840ff9de1addb67` | ⚠️ Unaudited |
| EthRestakeErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x215f4c69c3d1461c7aa38c9c73c27e10cfb0eee4` | ⚠️ Unaudited |
| EthRestakePrivErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedebe792c6190be612cbe97f628137faa8c36ee5` | ⚠️ Unaudited |
| EthRestakePrivVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x792ff341e1db4ab20fbfb93c0fc071501525e353` | ⚠️ Unaudited |
| EthRestakeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59adb46407ebf4cba923f91f2c06acc4b2e073bb` | ⚠️ Unaudited |
| EthRestakeVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026df36ec050e7f473cbfc30aa42946d3ed11b2c` | ⚠️ Unaudited |
| EthValidatorsChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac9125646185cb58e86e77d5f402efa3fafafc84` | ⚠️ Unaudited |
| EthVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cb2cbdf9a030ffbdea6f20a019f1feaca5cae78` | ⚠️ Unaudited |
| EthVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170618936cd96b1ed8112ec3d3778374b38dfe5e` | ⚠️ Unaudited |
| Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x435192a898a5ee86bbc8951471e5fbe721ba3f7a` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x459beef3c5bd5d1e66de93ac908e278ee2488f14` | ⚠️ Unaudited |
| MerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aab6822a1a9f982fd7b0fe35a5a5b6148ecf4d5` | ⚠️ Unaudited |
| Oracles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2f1c5e86b13a74f5a6e7b4b35dd77fe29aa47514` | ⚠️ Unaudited |
| OsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x475e7d2bd7428deb68deaa933dbf0d5850b96702` | ⚠️ Unaudited |
| OsTokenConfig | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257003 | `0x287d1e2a8de183a8bf8f2b09fa1340fbd766eb59` | ⚠️ Unaudited |
| OsTokenFlashLoans | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257008 | `0xebe12d858e55ddc5fc5a8153dc3e117824fbf5d2` | ⚠️ Unaudited |
| OsTokenVaultController | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257004 | `0x2a261e60fb14586b474c208b1b7ac6d0f5000306` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | `0x2f99472b727e15eecf9b9eff9f7481b85d3b4444` | ⚠️ Unaudited |
| PoolEscrow | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257002 | `0x2296e122c1a20fca3cac3371357bdad3be0df079` | ⚠️ Unaudited |
| PoolValidators | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2e9ace6ae7281fbf19b0401609ce64536fc924b5` | ⚠️ Unaudited |
| PriceFeed | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257007 | `0x8023518b2192fb5384dadc596765b3dd1cdfe471` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x35cb741e55330b4a0e1ae011417e6715e4bca0b1` | ⚠️ Unaudited |
| RewardEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d34aee72325f1d4a748f13c2169404523ecee0` | ⚠️ Unaudited |
| RewardSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x439b60d3c886e711dad30cf23a2bbd5388febcd9` | ⚠️ Unaudited |
| RewardSplitterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x256af27ce81282a0491a5361172c1db08f6cc5f8` | ⚠️ Unaudited |
| RewardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x04f439c341221da7ae086b6f585e4cd7a7e54622` | ⚠️ Unaudited |
| SharedMevEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07a98f01f5a91043f1396f101a21e91e90488a2f` | ⚠️ Unaudited |
| Solos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeadcba8bf9aca93f627f31fb05470f5a0686ceca` | ⚠️ Unaudited |
| StakedEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41bcac23e4db058d8d7aabe2fccdae5f01fe647a` | ⚠️ Unaudited |
| StakedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | `0xa4ef9da5ba71cc0d2e5e877a910a37ec43420445` | ⚠️ Unaudited |
| StakeWiseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x48c3399719b582dd63eb5aadf12a40b4c3f52fa2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | gnosis | n/a | 2 deployments: gnosis `0x61975c09207c5dfe794b0a652c8caf8458159aae`; gnosis `0x6b333b20fbae3c5c0969dd02176e30802e2fbbdb` | ⚠️ Unaudited |
| Validators | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa34e1010e2b76abdf7399e6c88147d0fafe28e90` | ⚠️ Unaudited |
| VaultsRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257005 | `0x3a0008a588772446f6e656133c2d5029cc4fc20e` | ⚠️ Unaudited |
| VestingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e6d872ce26c8711e7d47b8e0c47ab91d95a6df3` | ⚠️ Unaudited |
| VestingEscrowFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27356a244cd2a8bbd0a1f4e96e8fcd70bf926bc3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (54)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x033e5bae5bdc459cbb7d388b41a9d62020be810f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x154628ac72533aad39abdcae2055dced0b4eef4d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1831834dc4bf88b9d9183015e1285b105ec2fdc9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1e86e620567bb877f5ed13607a1a7b7dbcb6be66` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x20bc832ca081b91433ff6c17f85701b6e92486c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x39c6eef5f955bcc280966504bc5c82f2394fa368` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x3cc1bde89640e0d32b2d2d66d3098d9bc11b17ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x48319f97e5da1233c21c48b80097c0fb7a20ff86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4c958642f1cd735f13aed02a4fb015153eddf8fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4e3de90882b3d10d067b8954909d4a4b0bb390d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4fef9d741011476750a243ac70b9789a63dd47df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x508e82b5119ccfb923c387d62d2ae7b56df79906` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x5674848102d29d0652f03acdc548c342eca13592` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x608d8ca6916b96edf63dd429e62fe1366ae6f3b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6b5815467da09daa7dc83db21c9239d98bb487b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x76d90928645065b4d4212ee62ce1ba8f90718f14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7a8cbbf690084e43de778173cfacf7313c9122dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x97795da27138bd8d79204d37f3a2e80fa4d30488` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa23f7c8d25f4503ca4ced84d9cc2428e8745933c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa9dc250df4ee9273d09cfa455da41fb1cac78d34` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xac0f906e433d58fa868f936e8a43230473652885` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc43a7b16a7a167c0318390cba16787c11e9e1fd0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd12df8543e0522ccbf12d231e822b7264c634775` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe01351f866c118fbd04d222f9262a470f1d44d90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe14fa9bbdb7813025309f71ddc0fa8faae1b9141` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf1c9acdc66974dfb6decb12aa385b9cd01190e38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x033e5bae5bdc459cbb7d388b41a9d62020be810f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x1831834dc4bf88b9d9183015e1285b105ec2fdc9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x28f325dd287a5984b754d34cfca38af3a8429e71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x30db0d10d3774e78f8cb214b9e8b72d4b402488a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x37bf0883c27365cffcd0c4202918df930989891f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x39c6eef5f955bcc280966504bc5c82f2394fa368` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x4b4406ed8659d03423490d8b62a1639206da0a7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x4c958642f1cd735f13aed02a4fb015153eddf8fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x58e16621b5c0786d6667d2d54e28a20940269e16` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x5dd9e7e355509bd5d29018d0af4927251d82ab9e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x608d8ca6916b96edf63dd429e62fe1366ae6f3b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x60b2053d7f2a0bba70fe6cdd88fb47b579b9179a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x6ac78efae880282396a335ca2f79863a1e6831d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x75e6f7640137c128c91de4ee62f6f30b542e5f1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x7a8cbbf690084e43de778173cfacf7313c9122dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x7d014b3c6ee446563d4e0cb6fbd8c3d0419867cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x80353898b72417ac5701a9809a9ef63f691bde86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x97795da27138bd8d79204d37f3a2e80fa4d30488` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x9b1b13afa6a57e54c03ad0428a4766c39707d272` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xa23f7c8d25f4503ca4ced84d9cc2428e8745933c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xb790391ee99b9193ebb80022bf127d24bac586c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xcac0e3e35d3ba271cd2aabe688ac9db1898c26aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd12df8543e0522ccbf12d231e822b7264c634775` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd6672fbe1d28877db598dc0ac2559a15745fc3ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xe84183effbcc76d022cccc31b95eaa332bb5bb11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xf490c80aae5f2616d3e3bda2483e30c4cb21d1a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xfbceefdbb0ca25a4043b35ef49c2810425243710` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xfc9b67b6034f6b306ea9bd8ec1baf3efa2490394` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2021-01-14-RuntimeVerification.pdf](https://github.com/stakewise/contracts/blob/master/audits/2021-01-14-RuntimeVerification.pdf) | Runtime Verification | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [2021-04-18-Certik.pdf](https://github.com/stakewise/contracts/blob/master/audits/2021-04-18-Certik.pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [2021-06-01-Certik.pdf](https://github.com/stakewise/contracts/blob/master/audits/2021-06-01-Certik.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [2021-11-25-Omniscia.pdf](https://github.com/stakewise/contracts/blob/master/audits/2021-11-25-Omniscia.pdf) | Omniscia | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [2022-05-06-Quantstamp.pdf](https://github.com/stakewise/contracts/blob/master/audits/2022-05-06-Quantstamp.pdf) | Quantstamp | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [2022-09-16-Pessimistic.pdf](https://github.com/stakewise/contracts/blob/master/audits/2022-09-16-Pessimistic.pdf) | Pessimistic | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [2023-05-Halborn.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2023-05-Halborn.pdf) | Halborn | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 52 | high |
| [2023-08-Halborn.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2023-08-Halborn.pdf) | Halborn | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 33 | high |
| [2023-08-Sigma-Prime.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2023-08-Sigma-Prime.pdf) | Sigma Prime | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |
| [2024-03-Consensys-Diligence.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2024-03-Consensys-Diligence.pdf) | Consensys Diligence | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 71 | high |
| [2024-06-Sigma-Prime.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2024-06-Sigma-Prime.pdf) | Sigma Prime | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 48 | high |
| [2024-09-Sigma-Prime.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2024-09-Sigma-Prime.pdf) | Sigma Prime | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2025-09-ABDK.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2025-09-ABDK.pdf) | ABDK | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |
| [2026-04-Statemind.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2026-04-Statemind.pdf) | Statemind | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18247] 2021-01-14-RuntimeVerification.pdf — no match: Scope section lists 10 Solidity source files; interfaces/*.sol are not extracted as they are interfaces, not contracts. Audit date is the updated date (January 14th, 2021) as the final delivery.
- [18248] 2021-04-18-Certik.pdf — no match: All contracts listed in the Audit Scope table are included. The audit date is explicitly given as 'Delivery Date Apr 18, 2021'.
- [18249] 2021-06-01-Certik.pdf — no match: All contracts listed in the Audit Scope table are included. The audit date is explicitly given as 'Jun 1st, 2021' and 'Delivery Date Jun 01, 2021'.
- [18250] 2021-11-25-Omniscia.pdf — no match: Extracted 11 contracts from the 'Files in Scope' table and the report header date.
- [18251] 2022-05-06-Quantstamp.pdf — no match: Extracted contract names from file signatures appendix and scope description. Audit date from cover page and changelog.
- [18252] 2022-09-16-Pessimistic.pdf — no match: Scope includes all contracts in the repository. Contract names extracted from findings and project description.
- [18253] 2023-05-Halborn.pdf — no match: Extracted all contracts listed in the Scope section (2.4) of the audit report. The audit date is the end date of the engagement: April 28th, 2023.
- [18254] 2023-08-Halborn.pdf — no match: Extracted all contracts listed in the Scope section (page 14-15) and the interfaces directory. Audit date from engagement end date (July 27th, 2023).
- [18255] 2023-08-Sigma-Prime.pdf — no match: Scope includes all files in directories: base, interfaces, keeper, libraries, vaults, OsToken. OpenZeppelin libraries excluded. Date from cover page: 'August, 2023' -> last day of month.
- [18256] 2024-03-Consensys-Diligence.pdf — no match: Extracted contract names from the scope table and system overview. Audit date inferred from 'DateMarch 2024' in header, using last day of month.
- [18257] 2024-06-Sigma-Prime.pdf — no match: Extracted contract names from scope section, findings assets, and test file names. Audit date inferred from 'June, 2024' on cover page.
- [18258] 2024-09-Sigma-Prime.pdf — no match: Scope limited to PR#97 changes; main contract is OsTokenVaultEscrow.sol; GnoGenesisVault and EthFoxVault mentioned in findings.
- [18259] 2025-09-ABDK.pdf — no match: No reason recorded
- [18260] 2026-04-Statemind.pdf — no match: Extracted 17 contract names from the 'Project Scope' section listing files. Audit date derived from the end date of the timeline '04-03-2026 - 20-04-2026'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2021-01-14-RuntimeVerification.pdf | BalanceReporters | unmatched — not counted | — | listed in scope | no |
| 2021-01-14-RuntimeVerification.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| 2021-01-14-RuntimeVerification.pdf | Solos | unmatched — not counted | — | listed in scope | no |
| 2021-01-14-RuntimeVerification.pdf | OwnablePausable | unmatched — not counted | — | listed in scope | no |
| 2021-01-14-RuntimeVerification.pdf | OwnablePausableUpgradeable | unmatched — not counted | — | listed in scope | no |
| 2021-01-14-RuntimeVerification.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| 2021-01-14-RuntimeVerification.pdf | RewardEthToken | unmatched — not counted | — | listed in scope | no |
| 2021-01-14-RuntimeVerification.pdf | StakedEthToken | unmatched — not counted | — | listed in scope | no |
| 2021-01-14-RuntimeVerification.pdf | StakedTokens | unmatched — not counted | — | listed in scope | no |
| 2021-01-14-RuntimeVerification.pdf | Validators | unmatched — not counted | — | listed in scope | no |
| 2021-04-18-Certik.pdf | Oracles | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | Validators | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | Pool | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | PoolEscrow | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | Solos | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | IDepositContract | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | IMerkleDrop | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | IOracles | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | IOwnablePausable | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | IPool | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | IPoolEscrow | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | IRewardEthToken | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | ISolos | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | IStakedEthToken | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | IValidators | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | IVestingEscrow | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | IVestingEscrowFactory | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | MerkleDrop | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | OwnablePausable | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | OwnablePausableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | ERC20PermitUpgradeable | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | ERC20Upgradeable | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | RewardEthToken | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | StakeWiseToken | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | StakedEthToken | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | VestingEscrow | unmatched — not counted | — | listed in scope table | no |
| 2021-04-18-Certik.pdf | VestingEscrowFactory | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | Oracles | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | Validators | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | Pool | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | PoolEscrow | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | Solos | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | IDepositContract | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | IMerkleDrop | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | IOracles | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | IOwnablePausable | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | IPool | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | IPoolEscrow | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | IRewardEthToken | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | ISolos | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | IStakedEthToken | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | IValidators | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | IVestingEscrow | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | IVestingEscrowFactory | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | MerkleDrop | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | OwnablePausable | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | OwnablePausableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | ERC20PermitUpgradeable | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | ERC20Upgradeable | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | RewardEthToken | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | StakeWiseToken | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | StakedEthToken | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | VestingEscrow | unmatched — not counted | — | listed in scope table | no |
| 2021-06-01-Certik.pdf | VestingEscrowFactory | unmatched — not counted | — | listed in scope table | no |
| 2021-11-25-Omniscia.pdf | ERC20Upgradeable | unmatched — not counted | — | listed in scope table | no |
| 2021-11-25-Omniscia.pdf | ERC20PermitUpgradeable | unmatched — not counted | — | listed in scope table | no |
| 2021-11-25-Omniscia.pdf | MerkleDistributor | unmatched — not counted | — | listed in scope table | no |
| 2021-11-25-Omniscia.pdf | Oracles | unmatched — not counted | — | listed in scope table | no |
| 2021-11-25-Omniscia.pdf | OwnablePausable | unmatched — not counted | — | listed in scope table | no |
| 2021-11-25-Omniscia.pdf | OwnablePausableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| 2021-11-25-Omniscia.pdf | Pool | unmatched — not counted | — | listed in scope table | no |
| 2021-11-25-Omniscia.pdf | PoolValidators | unmatched — not counted | — | listed in scope table | no |
| 2021-11-25-Omniscia.pdf | RewardEthToken | unmatched — not counted | — | listed in scope table | no |
| 2021-11-25-Omniscia.pdf | Roles | unmatched — not counted | — | listed in scope table | no |
| 2021-11-25-Omniscia.pdf | StakedEthToken | unmatched — not counted | — | listed in scope table | no |
| 2022-05-06-Quantstamp.pdf | ContractChecker | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | Oracles | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | Roles | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | WhiteListManager | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | ERC20PermitUpgradeable | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | ERC20Upgradeable | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | RewardEthToken | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | StakedEthToken | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | OwnablePausable | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | OwnablePausableUpgradeable | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | Pool | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | PoolEscrow | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | PoolValidators | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | MerkleDistributor | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | IDepositContract | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | IMerkleDistributor | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | IOracles | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | IOwnablePausable | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | IPool | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | IPoolEscrow | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | IPoolValidators | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | IRewardEthToken | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | IRoles | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | IStakedEthToken | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | IVestingEscrow | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | IVestingEscrowFactory | unmatched — not counted | — | listed in file signatures | no |
| 2022-05-06-Quantstamp.pdf | IWhiteListManager | unmatched — not counted | — | listed in file signatures | no |
| 2022-09-16-Pessimistic.pdf | VestingEscrow | unmatched — not counted | — | mentioned in finding M01 | no |
| 2022-09-16-Pessimistic.pdf | RewardEthToken | unmatched — not counted | — | mentioned in finding M02 and L01, L03, L06 | no |
| 2022-09-16-Pessimistic.pdf | FeesEscrow | unmatched — not counted | — | mentioned in finding M02 | no |
| 2022-09-16-Pessimistic.pdf | Pool | unmatched — not counted | — | mentioned in finding L02 | no |
| 2022-09-16-Pessimistic.pdf | Oracles | unmatched — not counted | — | mentioned in finding L04 | no |
| 2022-09-16-Pessimistic.pdf | MerkleDistributor | unmatched — not counted | — | mentioned in finding L05 | no |
| 2022-09-16-Pessimistic.pdf | ERC20PermitUpgradeable | unmatched — not counted | — | mentioned in finding L01 and L06 | no |
| 2022-09-16-Pessimistic.pdf | ERC20Upgradeable | unmatched — not counted | — | mentioned in finding L06 | no |
| 2022-09-16-Pessimistic.pdf | PoolEscrow | unmatched — not counted | — | mentioned in finding N01 | no |
| 2023-05-Halborn.pdf | ExitQueue | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultMev | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultValidators | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultWhitelist | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultImmutables | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultToken | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultAdmin | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultEthStaking | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultFee | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultVersion | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultEnterExit | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultState | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultsRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | EthPrivateVault | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | EthVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | EthVault | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | SharedMevEscrow | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | OwnMevEscrow | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | KeeperValidators | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | KeeperRewards | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | Oracles | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | Keeper | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | ERC20Upgradeable | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | Versioned | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IOracles | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultWhitelist | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IEthVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultState | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultValidators | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IMulticall | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IERC20Permit | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IKeeperRewards | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IEthPrivateVault | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultAdmin | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultFee | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | ISharedMevEscrow | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultImmutables | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IKeeperValidators | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultEthStaking | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IEthValidatorsRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IEthVault | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultToken | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultsRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IKeeper | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IOwnMevEscrow | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultMev | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultEnterExit | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultVersion | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IValidatorsRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVersioned | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | ExitQueue | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | OsToken | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | OsTokenConfig | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | PriceOracle | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultMev | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultValidators | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultWhitelist | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultImmutables | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultToken | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultAdmin | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultEthStaking | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultFee | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultVersion | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultOsToken | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultEnterExit | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultState | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultsRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | EthErc20Vault | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | EthGenesisVault | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | EthPrivErc20Vault | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | EthPrivVault | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | EthVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | EthVault | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | SharedMevEscrow | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | OwnMevEscrow | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | KeeperValidators | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | KeeperRewards | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | KeeperOracles | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | Keeper | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | ERC20Upgradeable | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| 2023-08-Sigma-Prime.pdf | EthGenesisVault | unmatched — not counted | — | Listed in scope directories and mentioned in findings STW-01, STW-02, STW-05, STW-06, STW-08, STW-14 | no |
| 2023-08-Sigma-Prime.pdf | VaultOsToken | unmatched — not counted | — | Listed in scope directories and mentioned in findings STW-03, STW-20 | no |
| 2023-08-Sigma-Prime.pdf | VaultMev | unmatched — not counted | — | Listed in scope directories and mentioned in finding STW-04 | no |
| 2023-08-Sigma-Prime.pdf | VaultValidators | unmatched — not counted | — | Listed in scope directories and mentioned in findings STW-07, STW-17, STW-18 | no |
| 2023-08-Sigma-Prime.pdf | EthVault | unmatched — not counted | — | Listed in scope directories and mentioned in finding STW-09 | no |
| 2023-08-Sigma-Prime.pdf | OsTokenConfig | unmatched — not counted | — | Listed in scope directories and mentioned in findings STW-10, STW-13 | no |
| 2023-08-Sigma-Prime.pdf | OsToken | unmatched — not counted | — | Listed in scope directories and mentioned in findings STW-11, STW-13 | no |
| 2023-08-Sigma-Prime.pdf | KeeperRewards | unmatched — not counted | — | Listed in scope directories and mentioned in findings STW-12, STW-19 | no |
| 2023-08-Sigma-Prime.pdf | KeeperValidators | unmatched — not counted | — | Listed in scope directories and mentioned in finding STW-12 | no |
| 2023-08-Sigma-Prime.pdf | OwnMevEscrow | unmatched — not counted | — | Listed in scope directories and mentioned in finding STW-15 | no |
| 2023-08-Sigma-Prime.pdf | SharedMevEscrow | unmatched — not counted | — | Listed in scope directories and mentioned in finding STW-15 | no |
| 2023-08-Sigma-Prime.pdf | EthPrivVault | unmatched — not counted | — | Listed in scope directories and mentioned in finding STW-15 | no |
| 2023-08-Sigma-Prime.pdf | PriceOracle | unmatched — not counted | — | Listed in scope directories and mentioned in finding STW-16 | no |
| 2023-08-Sigma-Prime.pdf | VaultEthStaking | unmatched — not counted | — | Listed in scope directories and mentioned in findings STW-18, STW-21 | no |
| 2023-08-Sigma-Prime.pdf | VaultState | unmatched — not counted | — | Listed in scope directories and mentioned in finding STW-21 | no |
| 2023-08-Sigma-Prime.pdf | VaultsRegistry | unmatched — not counted | — | Listed in scope directories and mentioned in finding STW-21 | no |
| 2023-08-Sigma-Prime.pdf | VaultEnterExit | unmatched — not counted | — | Listed in scope directories and mentioned in finding STW-21 | no |
| 2023-08-Sigma-Prime.pdf | ExitQueue | unmatched — not counted | — | Listed in scope directories (libraries) and mentioned in finding STW-21 | no |
| 2023-08-Sigma-Prime.pdf | ISharedMevEscrow | unmatched — not counted | — | Listed in scope directories (interfaces) and mentioned in finding STW-21 | no |
| 2023-08-Sigma-Prime.pdf | IKeeperRewards | unmatched — not counted | — | Listed in scope directories (interfaces) and mentioned in finding STW-21 | no |
| 2023-08-Sigma-Prime.pdf | IOwnMevEscrow | unmatched — not counted | — | Listed in scope directories (interfaces) and mentioned in finding STW-21 | no |
| 2023-08-Sigma-Prime.pdf | PriceFeed | unmatched — not counted | — | Mentioned in resolution of STW-16 as replacement for PriceOracle | no |
| 2024-03-Consensys-Diligence.pdf | EthFoxVault | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultImmutables | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | Initializable | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | VaultAdmin | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultVersion | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultFee | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultState | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultValidators | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultEnterExit | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultMev | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultEthStaking | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultBlocklist | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | Multicall | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IEthFoxVault | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultAdmin | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultVersion | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | UUPSUpgradeable | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IERC1822Proxiable | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultFee | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultState | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | ExitQueue | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultValidators | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultEnterExit | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultMev | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultEthStaking | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultBlocklist | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IMulticall | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | EthVaultFactory | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IEthVaultFactory | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | VaultsRegistry | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | Ownable2Step | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultsRegistry | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | ERC1967Proxy | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | OwnMevEscrow | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IOwnMevEscrow | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | KeeperRewards | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IKeeperRewards | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | VaultWhitelist | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IVaultWhitelist | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | EthGenesisVault | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IEthGenesisVault | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | EthPrivVault | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IEthPrivVault | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | EthErc20Vault | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IEthErc20Vault | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | EthPrivErc20Vault | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IEthPrivErc20Vault | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | VaultToken | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IVaultToken | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | VaultOsToken | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IVaultOsToken | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | KeeperValidators | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IKeeperValidators | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | KeeperOracles | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IKeeperOracles | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | Keeper | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IKeeper | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IValidatorsRegistry | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IEthValidatorsRegistry | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IRewardSplitter | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IRewardSplitterFactory | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IRewardEthToken | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IPoolEscrow | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IOsToken | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IOsTokenConfig | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IOsTokenVaultController | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IBalancerRateProvider | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IChainlinkAggregator | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IChainlinkV3Aggregator | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | ISharedMevEscrow | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | ICumulativeMerkleDrop | unmatched — not counted | — | — | no |
| 2024-06-Sigma-Prime.pdf | EigenPodOwner | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | OsToken | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | EthFoxVault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | XdaiExchange | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | RewardSplitter | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | VaultOsToken | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | KeeperRewards | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | KeeperOracles | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | DepositDataRegistry | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | CumulativeMerkleDrop | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | EthPrivErc20Vault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | EthRestakePrivErc20Vault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | GnoGenesisVault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | ICumulativeMerkleDrop | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | VaultFee | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | VaultState | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | VaultEnterExit | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | VaultEthStaking | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | VaultEthRestaking | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | VaultGnoStaking | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | OsTokenConfig | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | OsTokenVaultController | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | EthVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | IEthVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | IEthFoxVault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | KeeperValidators | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | VaultAdmin | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | VaultBlocklist | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | VaultWhitelist | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | VaultValidators | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | GnoBlocklistErc20Vault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | GnoPrivErc20Vault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | GnoBlocklistVault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | GnoPrivVault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | GnoErc20Vault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | GnoVault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | EthErc20Vault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | EthPrivVault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | EthBlocklistErc20Vault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | EthBlocklistVault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | EthVault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | EthGenesisVault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | EthRestakeVault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | EthRestakeBlocklistVault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | EthRestakeErc20Vault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | EthRestakeBlocklistErc20Vault | unmatched — not counted | — | listed in scope | no |
| 2024-06-Sigma-Prime.pdf | EthRestakePrivVault | unmatched — not counted | — | listed in scope | no |
| 2024-09-Sigma-Prime.pdf | OsTokenVaultEscrow | unmatched — not counted | — | listed in scope and findings | no |
| 2024-09-Sigma-Prime.pdf | GnoGenesisVault | unmatched — not counted | — | listed in findings | no |
| 2024-09-Sigma-Prime.pdf | EthFoxVault | unmatched — not counted | — | listed in findings | no |
| 2026-04-Statemind.pdf | EthMetaVault | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | GnoMetaVault | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | EthMetaVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | GnoMetaVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | EthErc20MetaVault | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | EthPrivMetaVault | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | EthPrivErc20MetaVault | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | VaultSubVaults | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | SubVaultsRegistry | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | SubVaultsRegistryFactory | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | OsTokenRedeemer | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | EthOsTokenRedeemer | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | GnoOsTokenRedeemer | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | NodesManager | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | EthNodesManager | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | EthCommunityVault | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | ExitPositions | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 54 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 357 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13
- Match method counts: n/a

Zero-match audit list:

- [18247] 2021-01-14-RuntimeVerification.pdf
- [18248] 2021-04-18-Certik.pdf
- [18249] 2021-06-01-Certik.pdf
- [18250] 2021-11-25-Omniscia.pdf
- [18251] 2022-05-06-Quantstamp.pdf
- [18252] 2022-09-16-Pessimistic.pdf
- [18253] 2023-05-Halborn.pdf
- [18254] 2023-08-Halborn.pdf
- [18255] 2023-08-Sigma-Prime.pdf
- [18256] 2024-03-Consensys-Diligence.pdf
- [18257] 2024-06-Sigma-Prime.pdf
- [18258] 2024-09-Sigma-Prime.pdf
- [18259] 2025-09-ABDK.pdf
- [18260] 2026-04-Statemind.pdf

Fork inheritance lineage and inherited audits are included when available.
