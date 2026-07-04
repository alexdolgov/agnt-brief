# Agentic Audit Brief: Falcon Finance

## Project Overview

- Project: Falcon Finance (`falcon-finance`)
- Website: [https://app.falcon.finance](https://app.falcon.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:13.750Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: bsc, ethereum
- Contract surface: 34 unique implementations (34 raw deployments)
- DeFi Llama TVL: $1,254,791,222.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 30 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 4 ERC20 tokens, 2 ERC721 NFTs, 3 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 11 common project-authored base contract(s) (owned, typeandversioninterface, simplereadaccesscontroller). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 34; live-surface contracts included: 34 (34 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/33 (24.2%)
- Deployed-live implementations: 34 of 34 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/34
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 34
- Raw deployments: 34
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 7 | 20.6% | 2025-02 |
| Zellic | Tier 2 | 7 | 20.6% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FalconBundler | unknown | ethereum | n/a | [`0x2919a6...9c043d`](./contracts/ethereum-1/0x2919a6255a697e9ba0550aa573a0c47e0c9c043d/) | ✅ Audited |
| FalconPosition | unknown | ethereum | n/a | [`0x2a382c...f5562e`](./contracts/ethereum-1/0x2a382c429668fcf4fd85371fc690fd27ddf5562e/) | ✅ Audited |
| FF | unknown | ethereum | n/a | [`0xfa1c09...b3f949`](./contracts/ethereum-1/0xfa1c09fc8b491b6a4d3ff53a10cad29381b3f949/) | ✅ Audited |
| PreCollateralizedMinter | unknown | ethereum | n/a | [`0x3a4f41...f4cc59`](./contracts/ethereum-1/0x3a4f41dac6000a59b79669b9356b5eb71bf4cc59/) | ✅ Audited |
| StakedUSDf | unknown | ethereum | n/a | [`0x0d132b...da3f34`](./contracts/ethereum-1/0x0d132bee412e6619a4863aeedad97541bfda3f34/) | ✅ Audited |
| StakingRewardsDistributor | unknown | ethereum | n/a | [`0x8af2ef...2fffea`](./contracts/ethereum-1/0x8af2efa47efb2095b80d82577c597186ea2fffea/) | ✅ Audited |
| USDf | unknown | ethereum | n/a | [`0x3adf34...c2b789`](./contracts/ethereum-1/0x3adf34c09dac24e4baefb1b1df4c2992edc2b789/) | ✅ Audited |
| USDfSilo | unknown | ethereum | n/a | [`0xeb1a55...0667e7`](./contracts/ethereum-1/0xeb1a55f406c1dc08f017ce8f424b178a5b0667e7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlledOCR2Aggregator | unknown | ethereum | n/a | [`0x00f0ef...65c382`](./contracts/ethereum-1/0x00f0efb3d9dbe7fe91fee44ae09dae5dfa65c382/) | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | ethereum | n/a | [`0x000bcf...d7e1bc`](./contracts/ethereum-1/0x000bcfdc448754b25f8e8afd5fc1fcc259d7e1bc/) | ⚠️ Unaudited |
| BurnMintERC20 | unknown | bsc | n/a | [`0xac23b9...3d4db2`](./contracts/bsc-56/0xac23b90a79504865d52b49b327328411a23d4db2/) | ⚠️ Unaudited |
| BurnMintERC677 | unknown | bsc | n/a | [`0x3e34bf...aeddfd`](./contracts/bsc-56/0x3e34bfc2872534c331b6db2e4b3593fa7eaeddfd/) | ⚠️ Unaudited |
| BurnMintTokenPool | unknown | bsc | n/a | [`0x470ed4...d6e51e`](./contracts/bsc-56/0x470ed414d305d2c784501cc68e086e3b59d6e51e/) | ⚠️ Unaudited |
| Claim | unknown | ethereum | n/a | [`0x1178c6...5f05e3`](./contracts/ethereum-1/0x1178c6a8e2600f0e9bafbc5e5677fe10805f05e3/) | ⚠️ Unaudited |
| ClaimNoVestFull | unknown | ethereum | n/a | [`0xc78d80...fdb2b4`](./contracts/ethereum-1/0xc78d8097862723a66baab6a84716745e2ffdb2b4/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | ethereum | n/a | [`0x04f840...56da11`](./contracts/ethereum-1/0x04f84020fdf10d9ee64d1dcc2986edf2f556da11/) | ⚠️ Unaudited |
| FFSilo | unknown | ethereum | n/a | [`0x25faec...17b1bd`](./contracts/ethereum-1/0x25faec314e00c9704d85c8a563355077bc17b1bd/) | ⚠️ Unaudited |
| FunctionsClientUpgradeHelper | unknown | ethereum | n/a | [`0x03b1b1...70d29f`](./contracts/ethereum-1/0x03b1b16e7c016f881783674aa6b24fc21d70d29f/) | ⚠️ Unaudited |
| FunctionsCoordinator | unknown | ethereum | n/a | [`0x3503b2...579acf`](./contracts/ethereum-1/0x3503b2a4692f62dd2c5d4c0a6546fb50ba579acf/) | ⚠️ Unaudited |
| HeartbeatRequester | unknown | ethereum | n/a | [`0x4822d7...f8c315`](./contracts/ethereum-1/0x4822d77a2d328115c4edebe1c82f313b28f8c315/) | ⚠️ Unaudited |
| Incubator | unknown | ethereum | n/a | [`0x9ffddd...184217`](./contracts/ethereum-1/0x9ffddd6f21d57f3949ba7a5e654b475d1d184217/) | ⚠️ Unaudited |
| LockReleaseTokenPool | unknown | ethereum | n/a | [`0x05ddab...77558e`](./contracts/ethereum-1/0x05ddab21b57d0dca8c3955c366526a229577558e/) | ⚠️ Unaudited |
| PerryEgg | unknown | ethereum | n/a | [`0x4ef9ec...e6724c`](./contracts/ethereum-1/0x4ef9ec92032b77f3da6fa066b046bcae7fe6724c/) | ⚠️ Unaudited |
| PerryShop | unknown | ethereum | n/a | [`0xf39a09...a7b40d`](./contracts/ethereum-1/0xf39a094bc84ac25a82b15f155916b40b5aa7b40d/) | ⚠️ Unaudited |
| StakedFF | unknown | ethereum | n/a | [`0x1a0c3f...8c4d72`](./contracts/ethereum-1/0x1a0c3ffcbd101c6f2f6650ded9964c4a568c4d72/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x1e7ffb...673cae`](./contracts/ethereum-1/0x1e7ffb2cc2b0d9672b3e615dd5669c06f8673cae/) | ⚠️ Unaudited |
| StakingRewardsDistributorFF | unknown | ethereum | n/a | [`0x0c3652...abb41f`](./contracts/ethereum-1/0x0c36526f412ea008994669b3406a856463abb41f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x383b51...fd2c5e`](./contracts/ethereum-1/0x383b5123b55f5ef823080c0c9e9bb58ffefd2c5e/) | ⚠️ Unaudited |
| VestingClaim | unknown | ethereum | n/a | [`0x8210c0...73c44b`](./contracts/ethereum-1/0x8210c0634ab8f273806e4b7866e9db353773c44b/) | ⚠️ Unaudited |
| VestingClaimV2 | unknown | ethereum | n/a | [`0x5c3acd...31d606`](./contracts/ethereum-1/0x5c3acd262ea9a91fb784394c26c93bc2ce31d606/) | ⚠️ Unaudited |
| ViewVestingClaim | unknown | ethereum | n/a | [`0x39f2e2...22a426`](./contracts/ethereum-1/0x39f2e28be7ccb03f99493a730be61cdd5122a426/) | ⚠️ Unaudited |
| ViewVestingClaimV2 | unknown | ethereum | n/a | [`0x45e229...6c7064`](./contracts/ethereum-1/0x45e229e9d958e8801d3c2d806efb8c785a6c7064/) | ⚠️ Unaudited |
| VRFV2PlusWrapper | unknown | ethereum | n/a | [`0x02aae1...ad910c`](./contracts/ethereum-1/0x02aae1a04f9828517b3007f83f6181900cad910c/) | ⚠️ Unaudited |
| Whitelist | unknown | ethereum | n/a | [`0xe31f2f...70d527`](./contracts/ethereum-1/0xe31f2f039c64a45bea475c47afa4a00b8a70d527/) | ⚠️ Unaudited |

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
| [View Report](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmRfqjzWAD6asMoqA8yG5%2Fuploads%2FdGS5gS3aRg3IbmdVoLq0%2FFalcon%20Finance%20-%20Zellic%20Audit%20Report%20(1).pdf?alt=media) | Zellic | Audit | 2025-03 | aging | Direct | contract_name | 6 | high |
| [View Report](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmRfqjzWAD6asMoqA8yG5%2Fuploads%2FM3kB8g0TJ84fBjjTO0uU%2FFalcon-security-review_2025-02-17%20(1).pdf?alt=media) | unknown | Audit | 2025-02 | aging | Direct | contract_name | 7 | high |
| [View Report](https://files.gitbook.com/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmRfqjzWAD6asMoqA8yG5%2Fuploads%2FEYu99VNf3cmaMs2u0yR2%2FFalcon%20Finance%20FF%20-%20Zellic%20Audit%20Report.pdf?alt=media) | Zellic | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x00f0ef...65c382`](./contracts/ethereum-1/0x00f0efb3d9dbe7fe91fee44ae09dae5dfa65c382/) | AccessControlledOCR2Aggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000bcf...d7e1bc`](./contracts/ethereum-1/0x000bcfdc448754b25f8e8afd5fc1fcc259d7e1bc/) | AccessControlledOffchainAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xac23b9...3d4db2`](./contracts/bsc-56/0xac23b90a79504865d52b49b327328411a23d4db2/) | BurnMintERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e34bf...aeddfd`](./contracts/bsc-56/0x3e34bfc2872534c331b6db2e4b3593fa7eaeddfd/) | BurnMintERC677 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x470ed4...d6e51e`](./contracts/bsc-56/0x470ed414d305d2c784501cc68e086e3b59d6e51e/) | BurnMintTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1178c6...5f05e3`](./contracts/ethereum-1/0x1178c6a8e2600f0e9bafbc5e5677fe10805f05e3/) | Claim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc78d80...fdb2b4`](./contracts/ethereum-1/0xc78d8097862723a66baab6a84716745e2ffdb2b4/) | ClaimNoVestFull | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04f840...56da11`](./contracts/ethereum-1/0x04f84020fdf10d9ee64d1dcc2986edf2f556da11/) | EACAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25faec...17b1bd`](./contracts/ethereum-1/0x25faec314e00c9704d85c8a563355077bc17b1bd/) | FFSilo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03b1b1...70d29f`](./contracts/ethereum-1/0x03b1b16e7c016f881783674aa6b24fc21d70d29f/) | FunctionsClientUpgradeHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3503b2...579acf`](./contracts/ethereum-1/0x3503b2a4692f62dd2c5d4c0a6546fb50ba579acf/) | FunctionsCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4822d7...f8c315`](./contracts/ethereum-1/0x4822d77a2d328115c4edebe1c82f313b28f8c315/) | HeartbeatRequester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ffddd...184217`](./contracts/ethereum-1/0x9ffddd6f21d57f3949ba7a5e654b475d1d184217/) | Incubator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05ddab...77558e`](./contracts/ethereum-1/0x05ddab21b57d0dca8c3955c366526a229577558e/) | LockReleaseTokenPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ef9ec...e6724c`](./contracts/ethereum-1/0x4ef9ec92032b77f3da6fa066b046bcae7fe6724c/) | PerryEgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf39a09...a7b40d`](./contracts/ethereum-1/0xf39a094bc84ac25a82b15f155916b40b5aa7b40d/) | PerryShop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a0c3f...8c4d72`](./contracts/ethereum-1/0x1a0c3ffcbd101c6f2f6650ded9964c4a568c4d72/) | StakedFF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e7ffb...673cae`](./contracts/ethereum-1/0x1e7ffb2cc2b0d9672b3e615dd5669c06f8673cae/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3652...abb41f`](./contracts/ethereum-1/0x0c36526f412ea008994669b3406a856463abb41f/) | StakingRewardsDistributorFF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8210c0...73c44b`](./contracts/ethereum-1/0x8210c0634ab8f273806e4b7866e9db353773c44b/) | VestingClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c3acd...31d606`](./contracts/ethereum-1/0x5c3acd262ea9a91fb784394c26c93bc2ce31d606/) | VestingClaimV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39f2e2...22a426`](./contracts/ethereum-1/0x39f2e28be7ccb03f99493a730be61cdd5122a426/) | ViewVestingClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45e229...6c7064`](./contracts/ethereum-1/0x45e229e9d958e8801d3c2d806efb8c785a6c7064/) | ViewVestingClaimV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02aae1...ad910c`](./contracts/ethereum-1/0x02aae1a04f9828517b3007f83f6181900cad910c/) | VRFV2PlusWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe31f2f...70d527`](./contracts/ethereum-1/0xe31f2f039c64a45bea475c47afa4a00b8a70d527/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=14

Fork inheritance lineage and inherited audits are included when available.
