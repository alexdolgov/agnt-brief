# Agentic Audit Brief: Falcon Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Falcon Finance (`falcon-finance`)
- Website: [https://app.falcon.finance](https://app.falcon.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum
- Contract surface: 106 unique implementations (107 raw deployments)
- Coverage basis: 1/6 confirmed own live verified implementations (16.7%); conservative 16.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,254,791,222.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Falcon Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across bsc, ethereum. Structural roles: 3 core, 2 supporting, 1 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (3), supporting (2), infra (1)
- Contract kinds: contract (5), abstract (1)
- Detected standards: accesscontrol (3), erc165 (3), erc1967proxy (2), erc20 (2), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (2), chainlink (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BurnMintERC20 (`0xac23b90a79504865d52b49b327328411a23d4db2`, chain 56)
- FF (`0xfa1c09fc8b491b6a4d3ff53a10cad29381b3f949`, chain 1)
- StakedFF (`0x1a0c3ffcbd101c6f2f6650ded9964c4a568c4d72`, chain 1)
- StakingRewards (`0x1e7ffb2cc2b0d9672b3e615dd5669c06f8673cae`, chain 1)
- StakingRewardsDistributor (`0x8af2efa47efb2095b80d82577c597186ea2fffea`, chain 1)
- TransparentUpgradeableProxy (`0x383b5123b55f5ef823080c0c9e9bb58ffefd2c5e`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/6 (16.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 92 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 6 of 106 unique; 100 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/34
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 72
- Unique implementations: 106
- Raw deployments: 107
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 2.9% | 2025-02 |
| Zellic | Tier 2 | 1 | 2.9% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StakingRewardsDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239780 | `0x8af2efa47efb2095b80d82577c597186ea2fffea` | ✅ Audited |

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlledOCR2Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00f0efb3d9dbe7fe91fee44ae09dae5dfa65c382` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000bcfdc448754b25f8e8afd5fc1fcc259d7e1bc` | ⚠️ Unaudited |
| BurnMintERC20 | unknown | project_anchor | own_supporting | 0 | bsc | unit-239782 | `0xac23b90a79504865d52b49b327328411a23d4db2` | ⚠️ Unaudited |
| BurnMintERC677 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e34bfc2872534c331b6db2e4b3593fa7eaeddfd` | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x470ed414d305d2c784501cc68e086e3b59d6e51e` | ⚠️ Unaudited |
| Claim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1178c6a8e2600f0e9bafbc5e5677fe10805f05e3` | ⚠️ Unaudited |
| ClaimNoVestFull | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc78d8097862723a66baab6a84716745e2ffdb2b4` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04f84020fdf10d9ee64d1dcc2986edf2f556da11` | ⚠️ Unaudited |
| FalconBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2919a6255a697e9ba0550aa573a0c47e0c9c043d` | ⚠️ Unaudited |
| FalconPosition | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2a382c429668fcf4fd85371fc690fd27ddf5562e`; ethereum `0x84f376d2d797b0ae19410c625aa0e12fc24e92f7` | ⚠️ Unaudited |
| FF | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239781 | `0xfa1c09fc8b491b6a4d3ff53a10cad29381b3f949` | ⚠️ Unaudited |
| FFSilo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25faec314e00c9704d85c8a563355077bc17b1bd` | ⚠️ Unaudited |
| FunctionsClientUpgradeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03b1b16e7c016f881783674aa6b24fc21d70d29f` | ⚠️ Unaudited |
| FunctionsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3503b2a4692f62dd2c5d4c0a6546fb50ba579acf` | ⚠️ Unaudited |
| HeartbeatRequester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4822d77a2d328115c4edebe1c82f313b28f8c315` | ⚠️ Unaudited |
| Incubator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ffddd6f21d57f3949ba7a5e654b475d1d184217` | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05ddab21b57d0dca8c3955c366526a229577558e` | ⚠️ Unaudited |
| PerryEgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ef9ec92032b77f3da6fa066b046bcae7fe6724c` | ⚠️ Unaudited |
| PerryShop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf39a094bc84ac25a82b15f155916b40b5aa7b40d` | ⚠️ Unaudited |
| PreCollateralizedMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a4f41dac6000a59b79669b9356b5eb71bf4cc59` | ⚠️ Unaudited |
| StakedFF | unknown | project_anchor | own_supporting | 1 | ethereum | unit-239783 | `0x1a0c3ffcbd101c6f2f6650ded9964c4a568c4d72` | ⚠️ Unaudited |
| StakedUSDf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d132bee412e6619a4863aeedad97541bfda3f34` | ⚠️ Unaudited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239779 | `0x1e7ffb2cc2b0d9672b3e615dd5669c06f8673cae` | ⚠️ Unaudited |
| StakingRewardsDistributorFF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c36526f412ea008994669b3406a856463abb41f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-239784 | `0x383b5123b55f5ef823080c0c9e9bb58ffefd2c5e` | ⚠️ Unaudited |
| USDf | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3adf34c09dac24e4baefb1b1df4c2992edc2b789` | ⚠️ Unaudited |
| USDfSilo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb1a55f406c1dc08f017ce8f424b178a5b0667e7` | ⚠️ Unaudited |
| VestingClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8210c0634ab8f273806e4b7866e9db353773c44b` | ⚠️ Unaudited |
| VestingClaimV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c3acd262ea9a91fb784394c26c93bc2ce31d606` | ⚠️ Unaudited |
| ViewVestingClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39f2e28be7ccb03f99493a730be61cdd5122a426` | ⚠️ Unaudited |
| ViewVestingClaimV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45e229e9d958e8801d3c2d806efb8c785a6c7064` | ⚠️ Unaudited |
| VRFV2PlusWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02aae1a04f9828517b3007f83f6181900cad910c` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe31f2f039c64a45bea475c47afa4a00b8a70d527` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (72)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04580be599d6ec1ff77125b724014e1e959bf0d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05581918dad3f026169593863f7a52bbbe08ef5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d27d9e1b74936d8e83c4ba118f09a4c4a897f62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31697852a68433dbcc2ff612c516d69e3d9bd08f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ad75691e25a8e9b681aaa85dbeb7ef6561b42c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c7db4d25deab7c89660512c5494dc9a3fc40f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e34bfc2872534c331b6db2e4b3593fa7eaeddfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4014f1f654a454785a6a97b9125fecfa88868192` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x41ff52dc7b12b18a65558962849187a2cc6ee6c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x461790bdaf5aed3df6a88cb97dec42dd0efa73c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bf80e78916e14b2c2154b5d7a754869a0646fa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50cf7ff706aa1eae8e4dad135d6ab1d9aacec4f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51864c574fe9d69eaba03b2cc3fa4d501978e74a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5effb9e0d6b472e48c542842b0306a1c12c9627c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x601009229b0215e4fc90c10c8145e066ae03d5f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62a897c3e81d809c7444bb63d7d51e1f2ebb6c3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x646772c691b2a84ca889f55253c560d38e3766e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a4a218d3cf2ecda6de219efd03eb6091b17432f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b12a8f73522dfc634f95ebc4cf819942e0942b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f96e328a106f2575c84a0a3bebfd8ff77780b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a0d3264a949c2c920d7f25df174af1faf73399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75c4b587ec408a4b5877f69f532221a0991d8e09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76f9fd81c5d199011b503e33843e4cb592ddd18a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78281937b869baadeddda3d62fc4b6fc0a196b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7daae95fabd079010915590b2c811dde58a924f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80216d0218d4cee3cbc65068ab29c0e973cd896c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80c1b1ee029f05889e3a693fd8c5f76f9b9fe194` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8407e9864f42374cb9dacfdede0e6962d634edcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x897cfe55bceb601d5bcbdd34dbdcaee033d5dabf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8deccbee3ae42901080632ef7e837aca555dc511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f2db4c80ea10eda3de2096892ad11944a2b346e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x909b2fb63536e22499ec81ef7ca1c66dbc62bfcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ef4d9e0cd6573029b39ca403693a0c8733316d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b4a96210bc8d9d55b1908b465d8b0de68b7ff83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c7cf045f964b45ffc6aa0ffbffd7bb6d1b470a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e330c463a5b576f63d4ac92c6d54711d180e108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e3aaba3b04264dd009437f48ebfd70713dd0667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa674a0fd742f37bd5077afc90d1e82485c91989c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa01a179a61f34f3f880c593c775192edd457df7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa20124f8a7250578777d371970463d38735a776` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab324a3b3602414c5fb43cbf68648e2a7507c5ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab63ad97b09241412f52fa6bb68f6f9876587620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacfcf155a0de611414c510d43446c27a4ee6a758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadeee0871b2bdd25bd69f0da736b001eef626334` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb0ae9dd22a2e1211f813b081098581dd0ff5b981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb177857a1799aa5f7feb5799fdf12cbe8fdf78b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb26fdff7bdfcbcace0b6e0a8ceedcd0a72fc2ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9e43b20962adffba088732ae194b7e91711924e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc707b7fd0dbd04f3fc92fd850435f5206551b6e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8cd82067ea907ea4af81b625d2bb653e21b5156` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc8cf6d7991f15525488b2a83df53468d682ba4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca89dd653ea2b2130d7918e08bff229e44c9123d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbe87dc0cf9d807848a3e703b01a90b28ecfb2a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb4fedd5b8fd533f18034610c207712ce5dcfbfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd34acfafec81eec1477a1889d3c23e887f38a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2ff7b6817cf71022b487703fd0ff35f374ddead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe471bc940aa9831a0aea21e6f40c1a1236eb4bb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe73ecf221261ca1468646e9c47bdf54e4d38fcc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecf61d6faa3b9fae7195af3bc9891450c1733f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0d9bb015cd7bfab877b7156146dc09bf461370d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf35a655213a9eb84dc88f07c642f20aff198f829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71608d5bbfae29308068189cbe9a69f01dc39fc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xfa2b947eec368f42195f24f36d2af29f7c24cec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfac0a7282a36327f88bd0a64ff57d64012750bc3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x2704b216a42b8ed40ae9f4ab4072151a8eb257a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b66431f9e5f5cd026ae48e617902207b43048d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x58895856a8996e1db467f91850043e5b2a304356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8e572d7b34d55681719f100067de18025ea1b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa20124f8a7250578777d371970463d38735a776` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xb3b02e4a9fb2bd28cc2ff97b0ab3f6b3ec1ee9d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbdeeb07066eca33902f39eeec866c9074f82b6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf79c8e371d9f138b5e6851f28ce996cb7dbe4206` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 71
- Live contracts: 0
- Unknown liveness contracts: 71
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: exact address book overlap=6, unverified unclassified=65

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | exact address book overlap | UnnamedContract<br>`0xb3b02e4a9fb2bd28cc2ff97b0ab3f6b3ec1ee9d2` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x50fad3de9f0c113312065cb50c267fceb59a76cb` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4b66431f9e5f5cd026ae48e617902207b43048d4` | non_address_book | unknown | unknown | unverified | n/a | `0x50fad3de9f0c113312065cb50c267fceb59a76cb` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa8e572d7b34d55681719f100067de18025ea1b28` | non_address_book | unknown | unknown | unverified | n/a | `0x50fad3de9f0c113312065cb50c267fceb59a76cb` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaa20124f8a7250578777d371970463d38735a776` | non_address_book | unknown | unknown | unverified | n/a | `0x50fad3de9f0c113312065cb50c267fceb59a76cb` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbdeeb07066eca33902f39eeec866c9074f82b6ee` | non_address_book | unknown | unknown | unverified | n/a | `0x50fad3de9f0c113312065cb50c267fceb59a76cb` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf79c8e371d9f138b5e6851f28ce996cb7dbe4206` | non_address_book | unknown | unknown | unverified | n/a | `0x50fad3de9f0c113312065cb50c267fceb59a76cb` |
| ethereum | exact address book overlap | UnnamedContract<br>`0xb0ae9dd22a2e1211f813b081098581dd0ff5b981` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x4a570d00c2036c5a6d2cf4264a9dfd3034ea165e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x95ef4d9e0cd6573029b39ca403693a0c8733316d` | non_address_book | unknown | unknown | unverified | n/a | `0x4a570d00c2036c5a6d2cf4264a9dfd3034ea165e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe73ecf221261ca1468646e9c47bdf54e4d38fcc4` | non_address_book | unknown | unknown | unverified | n/a | `0x4a570d00c2036c5a6d2cf4264a9dfd3034ea165e` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e34bfc2872534c331b6db2e4b3593fa7eaeddfd` | non_address_book | unknown | unknown | unverified | n/a | `0x50fad3de9f0c113312065cb50c267fceb59a76cb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa20124f8a7250578777d371970463d38735a776` | non_address_book | unknown | unknown | unverified | n/a | `0x50fad3de9f0c113312065cb50c267fceb59a76cb` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xecf61d6faa3b9fae7195af3bc9891450c1733f78` | non_address_book | unknown | unknown | unverified | n/a | `0x50fad3de9f0c113312065cb50c267fceb59a76cb` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x8407e9864f42374cb9dacfdede0e6962d634edcb` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x804016c31e52805eb00e0ef42126fd3e980a0b33` |
| ethereum | exact address book overlap | UnnamedContract<br>`0xc8cf6d7991f15525488b2a83df53468d682ba4b0` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x804016c31e52805eb00e0ef42126fd3e980a0b33` |
| ethereum | exact address book overlap | UnnamedContract<br>`0xfa2b947eec368f42195f24f36d2af29f7c24cec2` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x804016c31e52805eb00e0ef42126fd3e980a0b33` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x76f9fd81c5d199011b503e33843e4cb592ddd18a` | non_address_book | unknown | unknown | unverified | n/a | `0x804016c31e52805eb00e0ef42126fd3e980a0b33` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84f376d2d797b0ae19410c625aa0e12fc24e92f7` | non_address_book | unknown | unknown | unverified | n/a | `0x804016c31e52805eb00e0ef42126fd3e980a0b33` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb9e43b20962adffba088732ae194b7e91711924e` | non_address_book | unknown | unknown | unverified | n/a | `0x804016c31e52805eb00e0ef42126fd3e980a0b33` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x04580be599d6ec1ff77125b724014e1e959bf0d3` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x05581918dad3f026169593863f7a52bbbe08ef5e` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d27d9e1b74936d8e83c4ba118f09a4c4a897f62` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x31697852a68433dbcc2ff612c516d69e3d9bd08f` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x34ad75691e25a8e9b681aaa85dbeb7ef6561b42c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c7db4d25deab7c89660512c5494dc9a3fc40f78` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4014f1f654a454785a6a97b9125fecfa88868192` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x461790bdaf5aed3df6a88cb97dec42dd0efa73c0` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50cf7ff706aa1eae8e4dad135d6ab1d9aacec4f0` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51864c574fe9d69eaba03b2cc3fa4d501978e74a` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5effb9e0d6b472e48c542842b0306a1c12c9627c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x601009229b0215e4fc90c10c8145e066ae03d5f9` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62a897c3e81d809c7444bb63d7d51e1f2ebb6c3d` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x646772c691b2a84ca889f55253c560d38e3766e1` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a4a218d3cf2ecda6de219efd03eb6091b17432f` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6b12a8f73522dfc634f95ebc4cf819942e0942b4` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f96e328a106f2575c84a0a3bebfd8ff77780b0c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75a0d3264a949c2c920d7f25df174af1faf73399` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75c4b587ec408a4b5877f69f532221a0991d8e09` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x78281937b869baadeddda3d62fc4b6fc0a196b61` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80c1b1ee029f05889e3a693fd8c5f76f9b9fe194` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x897cfe55bceb601d5bcbdd34dbdcaee033d5dabf` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8deccbee3ae42901080632ef7e837aca555dc511` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f2db4c80ea10eda3de2096892ad11944a2b346e` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x909b2fb63536e22499ec81ef7ca1c66dbc62bfcc` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b4a96210bc8d9d55b1908b465d8b0de68b7ff83` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9c7cf045f964b45ffc6aa0ffbffd7bb6d1b470a3` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9e3aaba3b04264dd009437f48ebfd70713dd0667` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa674a0fd742f37bd5077afc90d1e82485c91989c` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa01a179a61f34f3f880c593c775192edd457df7` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab324a3b3602414c5fb43cbf68648e2a7507c5ca` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab63ad97b09241412f52fa6bb68f6f9876587620` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xacfcf155a0de611414c510d43446c27a4ee6a758` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb177857a1799aa5f7feb5799fdf12cbe8fdf78b1` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb26fdff7bdfcbcace0b6e0a8ceedcd0a72fc2ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc707b7fd0dbd04f3fc92fd850435f5206551b6e7` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc8cd82067ea907ea4af81b625d2bb653e21b5156` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca89dd653ea2b2130d7918e08bff229e44c9123d` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcbe87dc0cf9d807848a3e703b01a90b28ecfb2a7` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb4fedd5b8fd533f18034610c207712ce5dcfbfd` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdd34acfafec81eec1477a1889d3c23e887f38a67` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe2ff7b6817cf71022b487703fd0ff35f374ddead` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe471bc940aa9831a0aea21e6f40c1a1236eb4bb3` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf0d9bb015cd7bfab877b7156146dc09bf461370d` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf35a655213a9eb84dc88f07c642f20aff198f829` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf71608d5bbfae29308068189cbe9a69f01dc39fc` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfac0a7282a36327f88bd0a64ff57d64012750bc3` | non_address_book | unknown | unknown | unverified | n/a | `0x9f82e8eada0b305a1ea952ca00cc8910d560000b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x41ff52dc7b12b18a65558962849187a2cc6ee6c0` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xbb5e1337a2ac59f0f63120d38aa865cf12844153` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4bf80e78916e14b2c2154b5d7a754869a0646fa6` | non_address_book | unknown | unknown | unverified | n/a | `0xbb5e1337a2ac59f0f63120d38aa865cf12844153` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7daae95fabd079010915590b2c811dde58a924f7` | non_address_book | unknown | unknown | unverified | n/a | `0xbb5e1337a2ac59f0f63120d38aa865cf12844153` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80216d0218d4cee3cbc65068ab29c0e973cd896c` | non_address_book | unknown | unknown | unverified | n/a | `0xbb5e1337a2ac59f0f63120d38aa865cf12844153` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9e330c463a5b576f63d4ac92c6d54711d180e108` | non_address_book | unknown | unknown | unverified | n/a | `0xbb5e1337a2ac59f0f63120d38aa865cf12844153` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xadeee0871b2bdd25bd69f0da736b001eef626334` | non_address_book | unknown | unknown | unverified | n/a | `0xbb5e1337a2ac59f0f63120d38aa865cf12844153` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [View Report](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmRfqjzWAD6asMoqA8yG5%2Fuploads%2FdGS5gS3aRg3IbmdVoLq0%2FFalcon%20Finance%20-%20Zellic%20Audit%20Report%20(1).pdf?alt=media) | Zellic | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [View Report](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmRfqjzWAD6asMoqA8yG5%2Fuploads%2FM3kB8g0TJ84fBjjTO0uU%2FFalcon-security-review_2025-02-17%20(1).pdf?alt=media) | unknown | Audit | 2025-02 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [View Report](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmRfqjzWAD6asMoqA8yG5%2Fuploads%2FEYu99VNf3cmaMs2u0yR2%2FFalcon%20Finance%20FF%20-%20Zellic%20Audit%20Report.pdf?alt=media) | Zellic | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17205] View Report — matched: Scope section lists target 'falcon-contracts-evm' repository with 'src/*' programs. All contracts are in src/ directory. Audit date is March 7, 2025 from cover page.
- [17206] View Report — matched: Scope section explicitly lists 8 contracts. Audit date is the end date of the engagement period.
- [17207] View Report — no match: The audit scope is the Falcon Finance FF token contract, implemented using OpenZeppelin ERC20 with ERC20Permit. The contract name is 'FF' as per the scope table and system design section.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| View Report | ClassicMinterV1 | unmatched — not counted | — | Threat Model section lists module ClassicMinterV1.sol | no |
| View Report | FalconBundler | unmatched — not counted | — | Threat Model section lists module FalconBundler.sol | no |
| View Report | FalconPosition | unmatched — not counted | — | Threat Model section lists module FalconPosition.sol; findings target FalconPosition | no |
| View Report | PreCollateralizedMinter | unmatched — not counted | — | Threat Model section lists module PreCollateralizedMinter.sol | no |
| View Report | StakedUSDf | unmatched — not counted | — | Threat Model section lists module StakedUSDf.sol; findings target StakedUSDf | no |
| View Report | USDfSilo | unmatched — not counted | — | Threat Model section lists module USDfSilo.sol | no |
| View Report | StakingRewardsDistributor | own contract | StakingRewardsDistributor (selected) `0x8af2efa47efb2095b80d82577c597186ea2fffea` — deployed 2025-02-10 22:24:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Report | ClassicMinterV1 | unmatched — not counted | — | listed in scope | no |
| View Report | FalconBundler | unmatched — not counted | — | listed in scope | no |
| View Report | FalconPosition | unmatched — not counted | — | listed in scope | no |
| View Report | PreCollateralizedMinter | unmatched — not counted | — | listed in scope | no |
| View Report | StakedUSDf | unmatched — not counted | — | listed in scope | no |
| View Report | StakingRewardsDistributor | own contract | StakingRewardsDistributor (selected) `0x8af2efa47efb2095b80d82577c597186ea2fffea` — deployed 2025-02-10 22:24:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| View Report | USDf | unmatched — not counted | — | listed in scope | no |
| View Report | USDfSilo | unmatched — not counted | — | listed in scope | no |
| View Report | FF | ambiguous — not counted | FF (alternative) `0xfa1c09fc8b491b6a4d3ff53a10cad29381b3f949` — deployed 2025-09-19 21:15:47+03 — liveness: live (code_present_context)<br>BurnMintERC20 (alternative) `0xac23b90a79504865d52b49b327328411a23d4db2` — deployed 2025-09-23 15:52:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xac23b90a79504865d52b49b327328411a23d4db2` | BurnMintERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfa1c09fc8b491b6a4d3ff53a10cad29381b3f949` | FF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1a0c3ffcbd101c6f2f6650ded9964c4a568c4d72` | StakedFF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1e7ffb2cc2b0d9672b3e615dd5669c06f8673cae` | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 72 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 13 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=2

Zero-match audit list:

- [17207] View Report

Fork inheritance lineage and inherited audits are included when available.
