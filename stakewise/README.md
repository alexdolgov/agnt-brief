# Agentic Audit Brief: StakeWise

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 14 (0 matched; 14 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: StakeWise (`stakewise`)
- Website: [https://stakewise.io/](https://stakewise.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, gnosis
- Contract surface: 203 unique implementations (207 raw deployments)
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
- Outside the address book: 141 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/49
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 154
- Unique implementations: 203
- Raw deployments: 207
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
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x574952ec88b2fc271d0c0db130794c86ea42139a`; ethereum `0x5c4606cb0ee50fdc4fad8722c99e8d6d49f59219` | ⚠️ Unaudited |
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
| Oracles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2f1c5e86b13a74f5a6e7b4b35dd77fe29aa47514`; ethereum `0xd3ea5bf3bb42542b5b64358c12f06233704e9b99` | ⚠️ Unaudited |
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
| StakeWiseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x48c3399719b582dd63eb5aadf12a40b4c3f52fa2`; ethereum `0xa28c2d79f0c5b78cec699dab0303008179815396` | ⚠️ Unaudited |
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

### ❓ Unverified (154)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x033e5bae5bdc459cbb7d388b41a9d62020be810f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a2e6a50ccd23406f2f08281ad21f102d32a0d86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x154628ac72533aad39abdcae2055dced0b4eef4d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1831834dc4bf88b9d9183015e1285b105ec2fdc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1be3ad178d85ce1b6a7fcf5baefe68f26541b07c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1e86e620567bb877f5ed13607a1a7b7dbcb6be66` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x20bc832ca081b91433ff6c17f85701b6e92486c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a0335fb13cbf86a76a7f9d9d038389788667960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aae8335b7b24e83ecdd52588435a13ea7a22120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d29f3f4228fcaa9238201362ace42821ed4bcad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d491bb32610a0ef1de017e49f949b3799135f31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32634dec69d4523d2f980be92494dc03bd4c9fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35dc754f157b32ba0941ffcd89d16d3d0b2ca6cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x39c6eef5f955bcc280966504bc5c82f2394fa368` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x3cc1bde89640e0d32b2d2d66d3098d9bc11b17ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e2cc1584a2fb4fb2d4f4af68ae47b57be76dc65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3eb0175dcd67d3ab139aa03165e24aa2188a4c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42fe3bf8c18b87007e8c100daccb7fe4ea07f699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ecc30bcc64b832a2cb5d1ff44260b1fcc565e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x453056f0bc4631abb15eec656139f88067668e3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46b7232bc7392b157371ebfcd4618ca9ceedb1bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x481f28c0d733614af87897e43d0d52c451799592` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x48319f97e5da1233c21c48b80097c0fb7a20ff86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4c958642f1cd735f13aed02a4fb015153eddf8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e3d8197c2cb9bcd29e3dceae3670d3d5e774017` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4e3de90882b3d10d067b8954909d4a4b0bb390d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4fef9d741011476750a243ac70b9789a63dd47df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x508e82b5119ccfb923c387d62d2ae7b56df79906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5518052f2d898f062ee59964004a560f24e2ee7d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x5674848102d29d0652f03acdc548c342eca13592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58fdd303ab66722130c01533e7a1177f2b3a2949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f31ed13ebf81b67a9f9498f3d1d2da553058988` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x608d8ca6916b96edf63dd429e62fe1366ae6f3b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x610b58583642610967727fe4fadd125a92d6f678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x630f27632762ae7f7a91eaca4c3949cc765294de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67561ca10e0c03600fc78bb7ba19ec32886aca9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a2835087c6809902a2f39b86fe64ef5dacc31e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a8a1716a44f700af56ea52d44b916a50333a369` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6b5815467da09daa7dc83db21c9239d98bb487b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ddc10eeeebbbcf00e784ba44fe4b038af26cb53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x749dcce12e8337dfb44635082519e656d44a2672` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x76d90928645065b4d4212ee62ce1ba8f90718f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a4f9912a812d932da57d73cb5e5784b2c1cba4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7a8cbbf690084e43de778173cfacf7313c9122dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aa02b4cf39f98ffeb324325775f840d18549733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b910cc3d4b42feff056218bd56d7700e4ea7dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e5198df09fed891e7aecd623cd2231443ceb5d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x807305c086a99cbdbff07cb4256ce556d9d6f0af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81ab00dd782492d62105b8fa9b03e82d4b57798c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82fe8c78cae0013471179e76224ef89941baaa75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84d44a696539b3ef4162184fb8ab97596a311e9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8750594b33516232e751c8b9c350a660cd5f1bb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c512fc12bd55a074444ce3e0b2e1dd0638b1dba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ee00c149299dd1b051a7ca9cc2a7a1d706773de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90a9428b8c58ca80b28aaf46b936d42e87797449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x932f09367e7e52b6ab812d8825fa764730b936fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9481a47c5650a868839c6511f0eef8bf962fabd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9488a7dd178f0d927707eec61a7d8c0ae9558c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96fff3a26b29bf7700dbb475730b373afee175ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x97795da27138bd8d79204d37f3a2e80fa4d30488` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa23f7c8d25f4503ca4ced84d9cc2428e8745933c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3f21010e8b9a3930996c8849df38f9ca3647c20` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa9dc250df4ee9273d09cfa455da41fb1cac78d34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaac73d4a26ae6906aa115118b7840b1f19fcd3a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xac0f906e433d58fa868f936e8a43230473652885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae678d2a911400a55e06f4a1f0c0b363f3ee2e42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1bfaf188a6ce50f21486fcbd77c1a8e908197fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb31f53e30b9a033661e33b87c101c58ccf11d702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb53a6c402b0d4fb6c7aa59b7d8fbd2e884fbf3bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7832c9e93e54661354c8b88f3ce7c0915f4c896` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba0b5ba961b108bff8d761a256e9763a4fccff23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbe532578979b8cb4ebb077b46442fc420ba0bc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbee3eb97cfd94ace6b66e606b8088c57c5f78fbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc25529b4ee01cc6262146433b6509e9e6e30f14a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2ecc7620416bd65bfab7010b0db955a0e49579a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc43a7b16a7a167c0318390cba16787c11e9e1fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc874b064f465bdd6411d45734b56fac750cda29a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8970e7c07c251625f9f93ce510b1d9c1a08d299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca866585ecfdfcc98348ef2717b811626ed98207` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd12df8543e0522ccbf12d231e822b7264c634775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd19e4b1d680a6aa672b08ebf483381bc0c9c8478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2468daaeb6f2d4b354dbd74593f4ac8c58f2cba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdada5a8e3703b1e3ea2bae5ab704627eb2659fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdecb606ee9140f229df78f9e40041ead61610f8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdefd18dd4f59b2f763853d8d216cd09540fee1d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe00512e3f38ec4f4e79152474da215506b5b1902` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe01351f866c118fbd04d222f9262a470f1d44d90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe14fa9bbdb7813025309f71ddc0fa8faae1b9141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84183effbcc76d022cccc31b95eaa332bb5bb11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8822246f8864da92015813a39ae776087fb1cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9f3e6115fed87f36bf10c8c111fb7b20b27ba0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c1670364d4b5c4e9dc8062cdd45068d9c678d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf1c9acdc66974dfb6decb12aa385b9cd01190e38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3c94c38b4def16a20715b90918052c34adaf3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5f20572186d2fab233dadd753c053ab581ba69a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf63666399aa1af203bfc9171147edcb21a6bf3a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6a519699dd2f66a8aa1f49b81c73690f104647f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6bbbc05536ab198d4b7ab74a93f8e2d4cad5354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaa05900019f6e465086bce16bb3f06992715d53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdec24bb3055be9578300f1541d5e0ee4eda6261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe2e637202056d30016725477c5da089ab0a043a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7083e5f1002471cf6fcb19b17770625a44b521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff0650ba2387843f567e6962f1b7c96dc99362ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x033e5bae5bdc459cbb7d388b41a9d62020be810f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x052b1e04f490518004f472b6e4f1053289403645` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x1831834dc4bf88b9d9183015e1285b105ec2fdc9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x28f325dd287a5984b754d34cfca38af3a8429e71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x30db0d10d3774e78f8cb214b9e8b72d4b402488a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x37bf0883c27365cffcd0c4202918df930989891f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x39c6eef5f955bcc280966504bc5c82f2394fa368` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x4b4406ed8659d03423490d8b62a1639206da0a7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4c63cdf87cdc21971a75f859903355bed7d3ef01` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x4c958642f1cd735f13aed02a4fb015153eddf8fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x58e16621b5c0786d6667d2d54e28a20940269e16` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x5dd9e7e355509bd5d29018d0af4927251d82ab9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6000abee0c1a1fcb755c0306f83776f04947e72e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x608d8ca6916b96edf63dd429e62fe1366ae6f3b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x60b2053d7f2a0bba70fe6cdd88fb47b579b9179a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x6ac78efae880282396a335ca2f79863a1e6831d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6ffa613ed41585b1c1e517a78d140cfbd68be639` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x75e6f7640137c128c91de4ee62f6f30b542e5f1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x7a8cbbf690084e43de778173cfacf7313c9122dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x7d014b3c6ee446563d4e0cb6fbd8c3d0419867cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7dc30953ce236665d032329f6a922d67f0a33a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7feae196f74d524abfb55465c56581f07a9084a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x80353898b72417ac5701a9809a9ef63f691bde86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x822f08eaaf73156fe255d49827d048b8ef7b86b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8c8f5bf28081984527dd94c627f591e28db7e7a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x972b98dce8ad32d1cbb0514a2115217066b0ee41` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x97795da27138bd8d79204d37f3a2e80fa4d30488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9aebd2322d3d5fb69324a3cfe380dd11bc3694d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x9b1b13afa6a57e54c03ad0428a4766c39707d272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9b23e05aefb37d5ea9b525016d19eb82b65f255c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9e6631d118c28b3d61c68f14ff30a99f7e91963a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xa23f7c8d25f4503ca4ced84d9cc2428e8745933c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa6d123620ea004cc5158b0ec260e934bd45c78c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb5230ebe5b1a9299a5c44f459ed2e8eb7496f581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb6b491c4e2b5ab7390833cf6c43fe5359493c399` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xb790391ee99b9193ebb80022bf127d24bac586c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc8d8b1d8c37925cdf106c955ac330739ef4e9362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xca43380e7f73fadbf56a0b91420381350b911f5b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xcac0e3e35d3ba271cd2aabe688ac9db1898c26aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xccce9ddb87b57b589b6208ff14714cd44e4f330d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcf2c1a38f59400e8ea2afd74c3ac4adf97526e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd0f5ddaed2d8bae1f451d2a11ffae1806f2ee1a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd12df8543e0522ccbf12d231e822b7264c634775` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd6672fbe1d28877db598dc0ac2559a15745fc3ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xda5df5e0b44e80ab356708e35970c193ce04c7c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdada6461fd59e793085b5d9f282825bced72af53` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xe84183effbcc76d022cccc31b95eaa332bb5bb11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xf490c80aae5f2616d3e3bda2483e30c4cb21d1a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfb7848790a4ec81e2404a279315a4d44c16125b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xfbceefdbb0ca25a4043b35ef49c2810425243710` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xfc9b67b6034f6b306ea9bd8ec1baf3efa2490394` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 110
- Live contracts: 0
- Unknown liveness contracts: 110
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: exact address book overlap=7, unverified unclassified=103

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | exact address book overlap | UnnamedContract<br>`0x20bc832ca081b91433ff6c17f85701b6e92486c5` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a2e6a50ccd23406f2f08281ad21f102d32a0d86` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3eb0175dcd67d3ab139aa03165e24aa2188a4c22` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x46b7232bc7392b157371ebfcd4618ca9ceedb1bd` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x610b58583642610967727fe4fadd125a92d6f678` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a8a1716a44f700af56ea52d44b916a50333a369` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x749dcce12e8337dfb44635082519e656d44a2672` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b910cc3d4b42feff056218bd56d7700e4ea7dd5` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa28c2d79f0c5b78cec699dab0303008179815396` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa3f21010e8b9a3930996c8849df38f9ca3647c20` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaac73d4a26ae6906aa115118b7840b1f19fcd3a5` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xae678d2a911400a55e06f4a1f0c0b363f3ee2e42` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbee3eb97cfd94ace6b66e606b8088c57c5f78fbf` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc874b064f465bdd6411d45734b56fac750cda29a` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8970e7c07c251625f9f93ce510b1d9c1a08d299` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3ea5bf3bb42542b5b64358c12f06233704e9b99` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdefd18dd4f59b2f763853d8d216cd09540fee1d6` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6a519699dd2f66a8aa1f49b81c73690f104647f` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfdec24bb3055be9578300f1541d5e0ee4eda6261` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe2e637202056d30016725477c5da089ab0a043a` | non_address_book | unknown | unknown | unverified | n/a | `0x1867c96601bc5fe24f685d112314b8f3fe228d5a` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x48319f97e5da1233c21c48b80097c0fb7a20ff86` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x6b5815467da09daa7dc83db21c9239d98bb487b5` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | exact address book overlap | UnnamedContract<br>`0xac0f906e433d58fa868f936e8a43230473652885` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | exact address book overlap | UnnamedContract<br>`0xf1c9acdc66974dfb6decb12aa385b9cd01190e38` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1be3ad178d85ce1b6a7fcf5baefe68f26541b07c` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2a0335fb13cbf86a76a7f9d9d038389788667960` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2aae8335b7b24e83ecdd52588435a13ea7a22120` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d29f3f4228fcaa9238201362ace42821ed4bcad` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d491bb32610a0ef1de017e49f949b3799135f31` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x32634dec69d4523d2f980be92494dc03bd4c9fce` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x35dc754f157b32ba0941ffcd89d16d3d0b2ca6cf` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e2cc1584a2fb4fb2d4f4af68ae47b57be76dc65` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42fe3bf8c18b87007e8c100daccb7fe4ea07f699` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x44ecc30bcc64b832a2cb5d1ff44260b1fcc565e1` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x453056f0bc4631abb15eec656139f88067668e3e` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x481f28c0d733614af87897e43d0d52c451799592` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4e3d8197c2cb9bcd29e3dceae3670d3d5e774017` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5518052f2d898f062ee59964004a560f24e2ee7d` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x574952ec88b2fc271d0c0db130794c86ea42139a` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58fdd303ab66722130c01533e7a1177f2b3a2949` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f31ed13ebf81b67a9f9498f3d1d2da553058988` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x630f27632762ae7f7a91eaca4c3949cc765294de` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67561ca10e0c03600fc78bb7ba19ec32886aca9b` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a2835087c6809902a2f39b86fe64ef5dacc31e1` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ddc10eeeebbbcf00e784ba44fe4b038af26cb53` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a4f9912a812d932da57d73cb5e5784b2c1cba4a` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7aa02b4cf39f98ffeb324325775f840d18549733` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e5198df09fed891e7aecd623cd2231443ceb5d5` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x807305c086a99cbdbff07cb4256ce556d9d6f0af` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81ab00dd782492d62105b8fa9b03e82d4b57798c` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82fe8c78cae0013471179e76224ef89941baaa75` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84d44a696539b3ef4162184fb8ab97596a311e9e` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8750594b33516232e751c8b9c350a660cd5f1bb8` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8c512fc12bd55a074444ce3e0b2e1dd0638b1dba` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8ee00c149299dd1b051a7ca9cc2a7a1d706773de` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90a9428b8c58ca80b28aaf46b936d42e87797449` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x932f09367e7e52b6ab812d8825fa764730b936fe` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9481a47c5650a868839c6511f0eef8bf962fabd7` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9488a7dd178f0d927707eec61a7d8c0ae9558c88` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x96fff3a26b29bf7700dbb475730b373afee175ee` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1bfaf188a6ce50f21486fcbd77c1a8e908197fb` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb31f53e30b9a033661e33b87c101c58ccf11d702` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb53a6c402b0d4fb6c7aa59b7d8fbd2e884fbf3bc` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb7832c9e93e54661354c8b88f3ce7c0915f4c896` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba0b5ba961b108bff8d761a256e9763a4fccff23` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbbe532578979b8cb4ebb077b46442fc420ba0bc2` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc25529b4ee01cc6262146433b6509e9e6e30f14a` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2ecc7620416bd65bfab7010b0db955a0e49579a` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca866585ecfdfcc98348ef2717b811626ed98207` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd19e4b1d680a6aa672b08ebf483381bc0c9c8478` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2468daaeb6f2d4b354dbd74593f4ac8c58f2cba` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdada5a8e3703b1e3ea2bae5ab704627eb2659fcc` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdecb606ee9140f229df78f9e40041ead61610f8f` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe00512e3f38ec4f4e79152474da215506b5b1902` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe84183effbcc76d022cccc31b95eaa332bb5bb11` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe8822246f8864da92015813a39ae776087fb1cd5` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe9f3e6115fed87f36bf10c8c111fb7b20b27ba0f` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf0c1670364d4b5c4e9dc8062cdd45068d9c678d6` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf3c94c38b4def16a20715b90918052c34adaf3b8` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf5f20572186d2fab233dadd753c053ab581ba69a` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf63666399aa1af203bfc9171147edcb21a6bf3a2` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6bbbc05536ab198d4b7ab74a93f8e2d4cad5354` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfaa05900019f6e465086bce16bb3f06992715d53` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe7083e5f1002471cf6fcb19b17770625a44b521` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff0650ba2387843f567e6962f1b7c96dc99362ca` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| gnosis | exact address book overlap | UnnamedContract<br>`0x6ac78efae880282396a335ca2f79863a1e6831d4` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | exact address book overlap | UnnamedContract<br>`0xfc9b67b6034f6b306ea9bd8ec1baf3efa2490394` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x052b1e04f490518004f472b6e4f1053289403645` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x4c63cdf87cdc21971a75f859903355bed7d3ef01` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x6000abee0c1a1fcb755c0306f83776f04947e72e` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x6ffa613ed41585b1c1e517a78d140cfbd68be639` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x7dc30953ce236665d032329f6a922d67f0a33a2b` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x7feae196f74d524abfb55465c56581f07a9084a3` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x822f08eaaf73156fe255d49827d048b8ef7b86b2` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x8c8f5bf28081984527dd94c627f591e28db7e7a0` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x972b98dce8ad32d1cbb0514a2115217066b0ee41` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x9aebd2322d3d5fb69324a3cfe380dd11bc3694d2` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x9b23e05aefb37d5ea9b525016d19eb82b65f255c` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0x9e6631d118c28b3d61c68f14ff30a99f7e91963a` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xa6d123620ea004cc5158b0ec260e934bd45c78c1` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xb5230ebe5b1a9299a5c44f459ed2e8eb7496f581` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xb6b491c4e2b5ab7390833cf6c43fe5359493c399` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xc8d8b1d8c37925cdf106c955ac330739ef4e9362` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xca43380e7f73fadbf56a0b91420381350b911f5b` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xccce9ddb87b57b589b6208ff14714cd44e4f330d` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xcf2c1a38f59400e8ea2afd74c3ac4adf97526e18` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xd0f5ddaed2d8bae1f451d2a11ffae1806f2ee1a5` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xda5df5e0b44e80ab356708e35970c193ce04c7c1` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xdada6461fd59e793085b5d9f282825bced72af53` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |
| gnosis | unverified unclassified | UnnamedContract<br>`0xfb7848790a4ec81e2404a279315a4d44c16125b1` | non_address_book | unknown | unknown | unverified | n/a | `0xaf8550495da9aa999e8894fb596426ab2d32ca5c` |

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
| standard_library | 2 |
| needs_review | 155 |

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
