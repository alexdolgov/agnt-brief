# Agentic Audit Brief: Drops

## Project Overview

- Project: Drops (`drops`)
- Website: [https://drops.co](https://drops.co)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.248Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: ethereum
- Contract surface: 56 unique implementations (82 raw deployments)
- DeFi Llama TVL: $2,697,771.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NFT Lending. Structurally: 86 project-authored contract(s) across 1 chain(s); 28 ERC20 tokens, 4 ERC721 NFTs, 1 ERC1155 multi-token, 3 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 34 common project-authored base contract(s) (ctoken, ctokeninterface, ctokenstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 272; live-surface contracts included: 82 (58 live, 24 unknown).
- Excluded by liveness: 190 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/32 (21.9%)
- Deployed-live implementations: 33 of 56 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/34
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 56
- Raw deployments: 82
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 7 | 20.6% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Immutable | token | ethereum | n/a | [`0x985297275e1c5404b3a557ae2bcb594a2338dd03`](./contracts/ethereum-1/0x985297275e1c5404b3a557ae2bcb594a2338dd03/) | ✅ Audited |
| CErc721SandboxDelegate | unknown | ethereum | n/a | [`0x1fa77fd6dfb5a188e047762a70f842a2c8ded09d`](./contracts/ethereum-1/0x1fa77fd6dfb5a188e047762a70f842a2c8ded09d/) | ✅ Audited |
| CEther | unknown | ethereum | n/a | 8 deployments: ethereum [`0x05231980914b702083b9ac08002325654f6eb95b`](./contracts/ethereum-1/0x05231980914b702083b9ac08002325654f6eb95b/); ethereum `0x0a1ef7fed1b691253f9367daf682ba08a9d2fd9c`; ethereum `0x4ae7413182849d062b72518928a4b2de87f0e411`; ethereum `0x588c13e685e44b22dc6647937481c816e5fee086`; ethereum `0x6b2a9d434caa7d5157d3b20bb0588f1148cb2140`; ethereum `0x777eccd3fcf4ffa3b12f45a384852608df2619a0`; ethereum `0xa56131d172e9a9668595a32791ef3ea136f3141b`; ethereum `0xd72929e284e8bc2f7458a6302be961b91bccb339` | ✅ Audited |
| Comptroller | unknown | ethereum | n/a | 3 deployments: ethereum [`0x48e29b9ddbf3fe6380d7d1ec5b415e97afd14abb`](./contracts/ethereum-1/0x48e29b9ddbf3fe6380d7d1ec5b415e97afd14abb/); ethereum `0x874ff8165b7be829708c70b377df8e3c25bfbe3d`; ethereum `0xc01c28bb029e1374be1f9a7607fb7bbb0d985113` | ✅ Audited |
| ComptrollerG1 | unknown | ethereum | n/a | [`0x69cb567ace32c016ca6a389fef8fcee55ab6bcdc`](./contracts/ethereum-1/0x69cb567ace32c016ca6a389fef8fcee55ab6bcdc/) | ✅ Audited |
| ComptrollerG1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x79b56cb219901dbf42bb5951a0edf27465f96206`](./contracts/ethereum-1/0x79b56cb219901dbf42bb5951a0edf27465f96206/); ethereum `0xcec075ff61916085e6a18d79141efcb45607596c` | ✅ Audited |
| Unitroller | unknown | ethereum | n/a | [`0x34abc88ac9a137531c7a3c91dff9e2dfb8e9b16e`](./contracts/ethereum-1/0x34abc88ac9a137531c7a3c91dff9e2dfb8e9b16e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgedOracle | operational_periphery | ethereum | n/a | [`0xda12a24515e4ba722103a8ff648ba11faf7992e1`](./contracts/ethereum-1/0xda12a24515e4ba722103a8ff648ba11faf7992e1/) | ⚠️ Unaudited |
| CErc20YearnDelegate | token | ethereum | n/a | [`0x72ab6843d4c988d74dd8d5cdf16ef49301d87952`](./contracts/ethereum-1/0x72ab6843d4c988d74dd8d5cdf16ef49301d87952/) | ⚠️ Unaudited |
| CErc20YearnDelegate | token | ethereum | n/a | [`0xf63f89f6463550ce4ce5b6ca6b1323b39c90e9cb`](./contracts/ethereum-1/0xf63f89f6463550ce4ce5b6ca6b1323b39c90e9cb/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | 5 deployments: ethereum [`0x2db94606a588ce2486600fa9fc287ec472d51981`](./contracts/ethereum-1/0x2db94606a588ce2486600fa9fc287ec472d51981/); ethereum `0x51eb9f2b2cce3cd315e26502d3a2a4a20f1b268e`; ethereum `0x65a32c35f537f7bdbfad198f5c50f5378002456b`; ethereum `0xb811670e5bd057800b2202fdcabf197340011d63`; ethereum `0xcf810239f6266316d4cfe2e478cd8d6be03ae1a6` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7674ccf96303c52dc4a9267be132e092b5915a00`](./contracts/ethereum-1/0x7674ccf96303c52dc4a9267be132e092b5915a00/); ethereum `0xd9c86de095dda44e6da12cf6adc2f6752c20902e` | ⚠️ Unaudited |
| ComptrollerG2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3903e6ecd8bc610d5a01061b1dc31affd21f81c6`](./contracts/ethereum-1/0x3903e6ecd8bc610d5a01061b1dc31affd21f81c6/); ethereum `0x7312a3bc8733b068989ef44bac6344f07cfcde7f`; ethereum `0xbe14172224892e8fd7ae2883e46883abf1ea949d` | ⚠️ Unaudited |
| ComptrollerG3 | unknown | ethereum | n/a | [`0x1e50dbce6c928888a80046ccace7c2a5fd9aff6e`](./contracts/ethereum-1/0x1e50dbce6c928888a80046ccace7c2a5fd9aff6e/) | ⚠️ Unaudited |
| ComptrollerG3LiquidationMain | unknown | ethereum | n/a | 2 deployments: ethereum [`0x50280672f1734893895f1aeb7d7db7bc1b811b40`](./contracts/ethereum-1/0x50280672f1734893895f1aeb7d7db7bc1b811b40/); ethereum `0xe99ef129649343c7cdf14d8febd86c811b8eb43a` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMain | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb70fb69a522ed8d4613c4c720f91f93a836ee2f5`](./contracts/ethereum-1/0xb70fb69a522ed8d4613c4c720f91f93a836ee2f5/); ethereum `0xbe36092d081b25be69777fa05c51f96fc6d91f23` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x35ae171dda486a77693f8b7c7898867c2f95f4a8`](./contracts/ethereum-1/0x35ae171dda486a77693f8b7c7898867c2f95f4a8/); ethereum `0x5ce3269a34741c67c6a364b7312f80dd984e1da8` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x32e41714dcce1c4be08cc1e896bbca56f93e89c9`](./contracts/ethereum-1/0x32e41714dcce1c4be08cc1e896bbca56f93e89c9/); ethereum `0xc5ecef9b0981d2834d2a83f2cfe85d4d97a19f65` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP4 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x42b747330b97b042b85ba5fbf3348e7966ee0f3d`](./contracts/ethereum-1/0x42b747330b97b042b85ba5fbf3348e7966ee0f3d/); ethereum `0xb6cdf387c607a1a1178a9e983f36aede65da57f1` | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP5 | unknown | ethereum | n/a | [`0x3ae03ee1abef401d74ae297fd883e0a06d8c8df5`](./contracts/ethereum-1/0x3ae03ee1abef401d74ae297fd883e0a06d8c8df5/) | ⚠️ Unaudited |
| ComptrollerG3LiquidationMainP5 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x896b8019f5ea3caaab23cda0a09b405ed8361e8b`](./contracts/ethereum-1/0x896b8019f5ea3caaab23cda0a09b405ed8361e8b/); ethereum `0x9ed0dc6218802bc4022a28ce3b35f0c063d3b5d2` | ⚠️ Unaudited |
| ComptrollerG3Migration | unknown | ethereum | n/a | 2 deployments: ethereum [`0x00635eeb0e3738e8a6d8c44a5dbdee32e0242571`](./contracts/ethereum-1/0x00635eeb0e3738e8a6d8c44a5dbdee32e0242571/); ethereum `0x9deb56b9dd04822924b90ad15d01ee50415f8bc7` | ⚠️ Unaudited |
| ComptrollerG3Paused | unknown | ethereum | n/a | [`0xb78bb3068d16803c3d643d166b69f084f46b98e4`](./contracts/ethereum-1/0xb78bb3068d16803c3d643d166b69f084f46b98e4/) | ⚠️ Unaudited |
| Dop | unknown | ethereum | n/a | [`0x6bb61215298f296c55b19ad842d3df69021da2ef`](./contracts/ethereum-1/0x6bb61215298f296c55b19ad842d3df69021da2ef/) | ⚠️ Unaudited |
| ERC20CustomStaking | token | ethereum | n/a | [`0xc4b73419265b9dfce7abdd0d8e33f99e565d0262`](./contracts/ethereum-1/0xc4b73419265b9dfce7abdd0d8e33f99e565d0262/) | ⚠️ Unaudited |
| LPStaking | unknown | ethereum | n/a | [`0x2c92744a0428e405e95dc3eb812e1b87872b22eb`](./contracts/ethereum-1/0x2c92744a0428e405e95dc3eb812e1b87872b22eb/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | n/a | [`0x8a78011bf2c42df82cc05f198109ea024b554df9`](./contracts/ethereum-1/0x8a78011bf2c42df82cc05f198109ea024b554df9/) | ⚠️ Unaudited |
| Maximillion | unknown | ethereum | n/a | 2 deployments: ethereum [`0x12846dd1a5c2ea001044429ab91a4037b16a8eb5`](./contracts/ethereum-1/0x12846dd1a5c2ea001044429ab91a4037b16a8eb5/); ethereum `0x408abe9a2f0086511a71703881fa9f54684b78a0` | ⚠️ Unaudited |
| NFTStaking | token | ethereum | n/a | [`0x81b6a8bf87817adca4874838560966957c3e01e5`](./contracts/ethereum-1/0x81b6a8bf87817adca4874838560966957c3e01e5/) | ⚠️ Unaudited |
| NodeRunnersNFT | token | ethereum | n/a | [`0x89ee76cc25fcbf1714ed575faa6a10202b71c26a`](./contracts/ethereum-1/0x89ee76cc25fcbf1714ed575faa6a10202b71c26a/) | ⚠️ Unaudited |
| NodeRunnersToken | token | ethereum | n/a | [`0x739763a258640919981f9ba610ae65492455be53`](./contracts/ethereum-1/0x739763a258640919981f9ba610ae65492455be53/) | ⚠️ Unaudited |
| Snapshot | unknown | ethereum | n/a | [`0xe701bb0290b26609e947d0e65591af0ac6d46af8`](./contracts/ethereum-1/0xe701bb0290b26609e947d0e65591af0ac6d46af8/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x00aa1c57e894c4010fe44cb840ae56432d7ea1d1`](./contracts/ethereum-1/0x00aa1c57e894c4010fe44cb840ae56432d7ea1d1/) | ⚠️ Unaudited |
| Unitroller | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd9193ac2eca2b29ef3d05bf536f7821041f48e4e`](./contracts/ethereum-1/0xd9193ac2eca2b29ef3d05bf536f7821041f48e4e/); ethereum `0xe35058fa4e34b660fdf10c903e8abfc35ea84892` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x089740e9fb36456554f384ef41dbf2c64e2c51d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09b3c0c6be19e9771a611730f1bad6272b8f1ed8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bfbfbb9de8ec3ea621a965ceb68779320391355` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d7711cfdb117e463378abda138d41e91f26aa85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x415a7aa9b4c3c5e0fe9fe35ee564e5f9d7eb4d3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52719dca4137e3e92cbb038242feb9c063e63635` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5551c7146bef4c4ae6a70bbdaed90349881d74fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7694617324d0b29f308d075967310b95ac91b40d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ec68694119b27905816530e9fd340226d16b813` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ff498491128181902619f1f98fe06457853b47d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa42035427a8dfdf87c01b4d7454f117d1a7d7590` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9cb5f983626a42d06f336c4fe5ce8aa68a2926d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab60612d4a9ed569e4ce8d9e5f2e4fed9faf87d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb48be140cc3b8f8e04b7438dd0b7378b222b31f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc183b6eebb8f553ff10eccc70f9c5b98efde059` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca59b7c5288e415fc044d017c8de50d869760481` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4d2fbd18e7301eee08b1605be05671245ab7b9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9d54557fb2ccbf552e0ea3e4eccbae942c408be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde26e8ef369dd5c1a08ef7fbf1e3873a69734713` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb8470c178748f2b9b98f0572c5f968aa4952ced` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef6e9d77409861363e5ed8c6abcf943e77134491` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5a514e5cc5d21b18b29e8a4c8820e1554b884fa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-DropsNFT-v1.0.pdf](https://18550138-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-McKlQwRyMZvSyjwnggp%2Fuploads%2FugSmroZsQBlElM4GiqQ3%2FPeckShield-Audit-Report-DropsNFT-v1.0.pdf) | PeckShield | Audit | 2021-01 | stale | Direct | contract_name | 15 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xda12a24515e4ba722103a8ff648ba11faf7992e1`](./contracts/ethereum-1/0xda12a24515e4ba722103a8ff648ba11faf7992e1/) | BridgedOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72ab6843d4c988d74dd8d5cdf16ef49301d87952`](./contracts/ethereum-1/0x72ab6843d4c988d74dd8d5cdf16ef49301d87952/) | CErc20YearnDelegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf63f89f6463550ce4ce5b6ca6b1323b39c90e9cb`](./contracts/ethereum-1/0xf63f89f6463550ce4ce5b6ca6b1323b39c90e9cb/) | CErc20YearnDelegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2db94606a588ce2486600fa9fc287ec472d51981`](./contracts/ethereum-1/0x2db94606a588ce2486600fa9fc287ec472d51981/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7674ccf96303c52dc4a9267be132e092b5915a00`](./contracts/ethereum-1/0x7674ccf96303c52dc4a9267be132e092b5915a00/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3903e6ecd8bc610d5a01061b1dc31affd21f81c6`](./contracts/ethereum-1/0x3903e6ecd8bc610d5a01061b1dc31affd21f81c6/) | ComptrollerG2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e50dbce6c928888a80046ccace7c2a5fd9aff6e`](./contracts/ethereum-1/0x1e50dbce6c928888a80046ccace7c2a5fd9aff6e/) | ComptrollerG3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50280672f1734893895f1aeb7d7db7bc1b811b40`](./contracts/ethereum-1/0x50280672f1734893895f1aeb7d7db7bc1b811b40/) | ComptrollerG3LiquidationMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb70fb69a522ed8d4613c4c720f91f93a836ee2f5`](./contracts/ethereum-1/0xb70fb69a522ed8d4613c4c720f91f93a836ee2f5/) | ComptrollerG3LiquidationMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35ae171dda486a77693f8b7c7898867c2f95f4a8`](./contracts/ethereum-1/0x35ae171dda486a77693f8b7c7898867c2f95f4a8/) | ComptrollerG3LiquidationMainP2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32e41714dcce1c4be08cc1e896bbca56f93e89c9`](./contracts/ethereum-1/0x32e41714dcce1c4be08cc1e896bbca56f93e89c9/) | ComptrollerG3LiquidationMainP3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42b747330b97b042b85ba5fbf3348e7966ee0f3d`](./contracts/ethereum-1/0x42b747330b97b042b85ba5fbf3348e7966ee0f3d/) | ComptrollerG3LiquidationMainP4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ae03ee1abef401d74ae297fd883e0a06d8c8df5`](./contracts/ethereum-1/0x3ae03ee1abef401d74ae297fd883e0a06d8c8df5/) | ComptrollerG3LiquidationMainP5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x896b8019f5ea3caaab23cda0a09b405ed8361e8b`](./contracts/ethereum-1/0x896b8019f5ea3caaab23cda0a09b405ed8361e8b/) | ComptrollerG3LiquidationMainP5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00635eeb0e3738e8a6d8c44a5dbdee32e0242571`](./contracts/ethereum-1/0x00635eeb0e3738e8a6d8c44a5dbdee32e0242571/) | ComptrollerG3Migration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb78bb3068d16803c3d643d166b69f084f46b98e4`](./contracts/ethereum-1/0xb78bb3068d16803c3d643d166b69f084f46b98e4/) | ComptrollerG3Paused | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bb61215298f296c55b19ad842d3df69021da2ef`](./contracts/ethereum-1/0x6bb61215298f296c55b19ad842d3df69021da2ef/) | Dop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4b73419265b9dfce7abdd0d8e33f99e565d0262`](./contracts/ethereum-1/0xc4b73419265b9dfce7abdd0d8e33f99e565d0262/) | ERC20CustomStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c92744a0428e405e95dc3eb812e1b87872b22eb`](./contracts/ethereum-1/0x2c92744a0428e405e95dc3eb812e1b87872b22eb/) | LPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a78011bf2c42df82cc05f198109ea024b554df9`](./contracts/ethereum-1/0x8a78011bf2c42df82cc05f198109ea024b554df9/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12846dd1a5c2ea001044429ab91a4037b16a8eb5`](./contracts/ethereum-1/0x12846dd1a5c2ea001044429ab91a4037b16a8eb5/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81b6a8bf87817adca4874838560966957c3e01e5`](./contracts/ethereum-1/0x81b6a8bf87817adca4874838560966957c3e01e5/) | NFTStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89ee76cc25fcbf1714ed575faa6a10202b71c26a`](./contracts/ethereum-1/0x89ee76cc25fcbf1714ed575faa6a10202b71c26a/) | NodeRunnersNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x739763a258640919981f9ba610ae65492455be53`](./contracts/ethereum-1/0x739763a258640919981f9ba610ae65492455be53/) | NodeRunnersToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe701bb0290b26609e947d0e65591af0ac6d46af8`](./contracts/ethereum-1/0xe701bb0290b26609e947d0e65591af0ac6d46af8/) | Snapshot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9193ac2eca2b29ef3d05bf536f7821041f48e4e`](./contracts/ethereum-1/0xd9193ac2eca2b29ef3d05bf536f7821041f48e4e/) | Unitroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=15

Fork inheritance lineage and inherited audits are included when available.
