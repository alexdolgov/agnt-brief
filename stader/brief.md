# Agentic Audit Brief: Stader

## Project Overview

- Project: Stader (`stader`)
- Website: [https://staderlabs.com](https://staderlabs.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.647Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum
- Contract surface: 42 unique implementations (58 raw deployments)
- DeFi Llama TVL: $214,719,706.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 23 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Contracts are linked by 10 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 82; live-surface contracts included: 48 (29 live, 19 unknown).
- Excluded by liveness: 34 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/23 (0.0%)
- Deployed-live implementations: 26 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 42
- Raw deployments: 58
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Auction | unknown | ethereum | n/a | 2 deployments: ethereum [`0x85a22763f94d703d2ee39e9374616ae4c1612569`](./contracts/ethereum-1/0x85a22763f94d703d2ee39e9374616ae4c1612569/); ethereum `0xa2aa24e91a345b3dd8652f304390203d0e1c4d31` | ⚠️ Unaudited |
| ETHx | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4c22ffd479637ea0ed61d451cbe6355627283358`](./contracts/ethereum-1/0x4c22ffd479637ea0ed61d451cbe6355627283358/); ethereum `0xa35b1b31ce002fbf2058d22f30f95d405200a15b` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x45b977cecb9dfaa17dfcba88826ef684b8489ff6`](./contracts/ethereum-1/0x45b977cecb9dfaa17dfcba88826ef684b8489ff6/) | ⚠️ Unaudited |
| MaticX | unknown | ethereum | n/a | [`0xf03a7eb46d01d9ecaa104558c732cf82f6b6b645`](./contracts/ethereum-1/0xf03a7eb46d01d9ecaa104558c732cf82f6b6b645/) | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x07751eed17f4217cdceed078322cd220236d3754`](./contracts/ethereum-1/0x07751eed17f4217cdceed078322cd220236d3754/); ethereum `0x2eb1e29fb6078b0eaf3cfff2b6361f702011ebb6`; ethereum `0x525164a364f5eef4bf0ea8698ae46922f11386a2`; ethereum `0xefe048aded507b21cca84d295135652ef49cd04e` | ⚠️ Unaudited |
| OperatorRewardsCollector | unknown | ethereum | n/a | [`0x84ffdc9de310144d889540a49052f6d1adb2c335`](./contracts/ethereum-1/0x84ffdc9de310144d889540a49052f6d1adb2c335/) | ⚠️ Unaudited |
| Penalty | unknown | ethereum | n/a | 2 deployments: ethereum [`0x84645f1b80475992df2c65c28be6688d15dc6ed6`](./contracts/ethereum-1/0x84645f1b80475992df2c65c28be6688d15dc6ed6/); ethereum `0x8d80ad529f68b11c2492301ba4fb78e5a654c206` | ⚠️ Unaudited |
| PermissionedNodeRegistry | registry | ethereum | n/a | [`0xaf42d795a6d279e9dcc19dc0ee1ce3ecd4ecf5dd`](./contracts/ethereum-1/0xaf42d795a6d279e9dcc19dc0ee1ce3ecd4ecf5dd/) | ⚠️ Unaudited |
| PermissionedPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x09134c643a6b95d342bdaf081fa473338f066572`](./contracts/ethereum-1/0x09134c643a6b95d342bdaf081fa473338f066572/); ethereum `0xf393d241258164e9779972447284fc4d47c3b4d1` | ⚠️ Unaudited |
| PermissionlessNodeRegistry | registry | ethereum | n/a | [`0x4f4bfa0861f62309934a5551e0b2541ee82fdcf1`](./contracts/ethereum-1/0x4f4bfa0861f62309934a5551e0b2541ee82fdcf1/) | ⚠️ Unaudited |
| PermissionlessPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x30c2501b3b2031fba3000daa6f8ed0a42fbbb3f0`](./contracts/ethereum-1/0x30c2501b3b2031fba3000daa6f8ed0a42fbbb3f0/); ethereum `0xd1a72bd052e0d65b7c26d3dd97a98b74acbbb6c5` | ⚠️ Unaudited |
| PoolSelector | unknown | ethereum | n/a | 2 deployments: ethereum [`0x62e0b431990ea128fe685e764fb04e7d604603b0`](./contracts/ethereum-1/0x62e0b431990ea128fe685e764fb04e7d604603b0/); ethereum `0x8322793ceb2d8740ad83ed431e69ae87fa1a86ab` | ⚠️ Unaudited |
| PoolUtils | core_logic | ethereum | n/a | [`0xeda89ed8f89d786d816f8e14cf8d2f90c6bf763f`](./contracts/ethereum-1/0xeda89ed8f89d786d816f8e14cf8d2f90c6bf763f/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x67b12264ca3e0037fc7e22f2457b42643a04c86e`](./contracts/ethereum-1/0x67b12264ca3e0037fc7e22f2457b42643a04c86e/); ethereum `0x6cbd89a4919e39ad4c7718b04443cc1722b2cb2a` | ⚠️ Unaudited |
| SDCollateral | unknown | ethereum | n/a | [`0x7af4730cc8ebad1a050dcad5c03c33d2793ee91f`](./contracts/ethereum-1/0x7af4730cc8ebad1a050dcad5c03c33d2793ee91f/) | ⚠️ Unaudited |
| SocializingPool | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x1de458031bfbe5689ded5a8b9ed57e1e79eab2a4`](./contracts/ethereum-1/0x1de458031bfbe5689ded5a8b9ed57e1e79eab2a4/); ethereum `0x9d4c3166c59412cedbe7d901f5fde41903a1d6fc` | ⚠️ Unaudited |
| Stader | unknown | ethereum | n/a | [`0x30d20208d987713f46dfd34ef128bb16c404d10f`](./contracts/ethereum-1/0x30d20208d987713f46dfd34ef128bb16c404d10f/) | ⚠️ Unaudited |
| StaderConfig | unknown | ethereum | n/a | [`0x4abef2263d5a5ed582fc9a9789a41d85b68d69db`](./contracts/ethereum-1/0x4abef2263d5a5ed582fc9a9789a41d85b68d69db/) | ⚠️ Unaudited |
| StaderInsuranceFund | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2540939c846b8096534b0dcc6ebb6ebdf3ae1f3d`](./contracts/ethereum-1/0x2540939c846b8096534b0dcc6ebb6ebdf3ae1f3d/); ethereum `0xbe3781ce437cc3fc8c8167913b4d462347d11f20` | ⚠️ Unaudited |
| StaderOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0d4fefd3c9ba9214c2412c87bc140e1766ab584b`](./contracts/ethereum-1/0x0d4fefd3c9ba9214c2412c87bc140e1766ab584b/); ethereum `0x7d6dec1b09007d61f2d32df92433229df700924e` | ⚠️ Unaudited |
| StaderOracle | operational_periphery | ethereum | n/a | [`0xf64bae65f6f2a5277571143a24faafdfc0c2a737`](./contracts/ethereum-1/0xf64bae65f6f2a5277571143a24faafdfc0c2a737/) | ⚠️ Unaudited |
| StaderStakePoolsManager | core_logic | ethereum | n/a | [`0xcf5ea1b38380f6af39068375516daf40ed70d299`](./contracts/ethereum-1/0xcf5ea1b38380f6af39068375516daf40ed70d299/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | 2 deployments: ethereum [`0x1112d5c55670cb5144bf36114c20a122908068b9`](./contracts/ethereum-1/0x1112d5c55670cb5144bf36114c20a122908068b9/); ethereum `0x49bd9989e31ad35b0a62c20be86335196a3135b1` | ⚠️ Unaudited |
| UserWithdrawalManager | operational_periphery | ethereum | n/a | [`0x9f0491b32dbce587c50c4c43ab303b06478193a7`](./contracts/ethereum-1/0x9f0491b32dbce587c50c4c43ab303b06478193a7/) | ⚠️ Unaudited |
| ValidatorRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1da069eef40ed89b8ba327a520160c388caa2cc3`](./contracts/ethereum-1/0x1da069eef40ed89b8ba327a520160c388caa2cc3/); ethereum `0x5cb2a963a92bf5877d7cc8aaef9ca5f3c8d57666` | ⚠️ Unaudited |
| ValidatorRegistry | registry | ethereum | n/a | [`0xf556442d5b77a4b0252630e15d8bbe2160870d77`](./contracts/ethereum-1/0xf556442d5b77a4b0252630e15d8bbe2160870d77/) | ⚠️ Unaudited |
| VaultFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x03abeec03bf39ac5a5c8886cf3496326d8164e1e`](./contracts/ethereum-1/0x03abeec03bf39ac5a5c8886cf3496326d8164e1e/); ethereum `0x133e3cc259eaf5ddcf3684dff62965243fbb6150` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x02131a7e7e9c1a515e4fe106495cd1b091bf77e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12b3f71237f774c95ba8380a6f053f2ae21724af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b0cda940c3cac85f98c600ff0fccee4c478845c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d179245782806c2ea31d6327e32122b77cb8935` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3409caaa408e47f3157e649c07a1a9ebe3bd567c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49913f5ebdc0fd5675b7e0734737d54f2d08a0e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x512d03379c135b464b0c62847141eeed6ccb1bd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b32c2a2013e94a07929c083854e70eacc13bfae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3f26be0b2a16a938088f4df8a077ca4650c5244` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5101fd7bf008b0bd715b5940e12330427ab8666` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb95829d89b4917878ee8b9919ed0e50eb89e8a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce95a27333246adf18c666898b45df5468891d7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf05ddf0c0c3231c83b3067f7bb92458d8c5c36c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5a39717bed6e2417d8777c49611a6375e1e473e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3f8ae73c4c1817d552e3fd9e8506a189a80fe8b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [kp5hfcaxs2prkdoscwibtrbjjddvoov3huhezsxknanxfaucm76a.arweave.net/U_pyiBeWnxUN0hWQGcQpSMdXOrs9DkzK6mgbcoKCZ_w](https://kp5hfcaxs2prkdoscwibtrbjjddvoov3huhezsxknanxfaucm76a.arweave.net/U_pyiBeWnxUN0hWQGcQpSMdXOrs9DkzK6mgbcoKCZ_w) | unknown | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [Stader_Labs_LunaX_Contrracts_CosmWasm_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/CosmWasm%20Smart%20Contract%20Audits/Stader_Labs_LunaX_Contrracts_CosmWasm_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1_ORTCjtDX61LPIbijNm4podSKfj6jUfy/view](https://drive.google.com/file/d/1_ORTCjtDX61LPIbijNm4podSKfj6jUfy/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x85a22763f94d703d2ee39e9374616ae4c1612569`](./contracts/ethereum-1/0x85a22763f94d703d2ee39e9374616ae4c1612569/) | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c22ffd479637ea0ed61d451cbe6355627283358`](./contracts/ethereum-1/0x4c22ffd479637ea0ed61d451cbe6355627283358/) | ETHx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf03a7eb46d01d9ecaa104558c732cf82f6b6b645`](./contracts/ethereum-1/0xf03a7eb46d01d9ecaa104558c732cf82f6b6b645/) | MaticX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07751eed17f4217cdceed078322cd220236d3754`](./contracts/ethereum-1/0x07751eed17f4217cdceed078322cd220236d3754/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84ffdc9de310144d889540a49052f6d1adb2c335`](./contracts/ethereum-1/0x84ffdc9de310144d889540a49052f6d1adb2c335/) | OperatorRewardsCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84645f1b80475992df2c65c28be6688d15dc6ed6`](./contracts/ethereum-1/0x84645f1b80475992df2c65c28be6688d15dc6ed6/) | Penalty | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf42d795a6d279e9dcc19dc0ee1ce3ecd4ecf5dd`](./contracts/ethereum-1/0xaf42d795a6d279e9dcc19dc0ee1ce3ecd4ecf5dd/) | PermissionedNodeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09134c643a6b95d342bdaf081fa473338f066572`](./contracts/ethereum-1/0x09134c643a6b95d342bdaf081fa473338f066572/) | PermissionedPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f4bfa0861f62309934a5551e0b2541ee82fdcf1`](./contracts/ethereum-1/0x4f4bfa0861f62309934a5551e0b2541ee82fdcf1/) | PermissionlessNodeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30c2501b3b2031fba3000daa6f8ed0a42fbbb3f0`](./contracts/ethereum-1/0x30c2501b3b2031fba3000daa6f8ed0a42fbbb3f0/) | PermissionlessPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62e0b431990ea128fe685e764fb04e7d604603b0`](./contracts/ethereum-1/0x62e0b431990ea128fe685e764fb04e7d604603b0/) | PoolSelector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeda89ed8f89d786d816f8e14cf8d2f90c6bf763f`](./contracts/ethereum-1/0xeda89ed8f89d786d816f8e14cf8d2f90c6bf763f/) | PoolUtils | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7af4730cc8ebad1a050dcad5c03c33d2793ee91f`](./contracts/ethereum-1/0x7af4730cc8ebad1a050dcad5c03c33d2793ee91f/) | SDCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1de458031bfbe5689ded5a8b9ed57e1e79eab2a4`](./contracts/ethereum-1/0x1de458031bfbe5689ded5a8b9ed57e1e79eab2a4/) | SocializingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30d20208d987713f46dfd34ef128bb16c404d10f`](./contracts/ethereum-1/0x30d20208d987713f46dfd34ef128bb16c404d10f/) | Stader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4abef2263d5a5ed582fc9a9789a41d85b68d69db`](./contracts/ethereum-1/0x4abef2263d5a5ed582fc9a9789a41d85b68d69db/) | StaderConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2540939c846b8096534b0dcc6ebb6ebdf3ae1f3d`](./contracts/ethereum-1/0x2540939c846b8096534b0dcc6ebb6ebdf3ae1f3d/) | StaderInsuranceFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d4fefd3c9ba9214c2412c87bc140e1766ab584b`](./contracts/ethereum-1/0x0d4fefd3c9ba9214c2412c87bc140e1766ab584b/) | StaderOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf64bae65f6f2a5277571143a24faafdfc0c2a737`](./contracts/ethereum-1/0xf64bae65f6f2a5277571143a24faafdfc0c2a737/) | StaderOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf5ea1b38380f6af39068375516daf40ed70d299`](./contracts/ethereum-1/0xcf5ea1b38380f6af39068375516daf40ed70d299/) | StaderStakePoolsManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f0491b32dbce587c50c4c43ab303b06478193a7`](./contracts/ethereum-1/0x9f0491b32dbce587c50c4c43ab303b06478193a7/) | UserWithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1da069eef40ed89b8ba327a520160c388caa2cc3`](./contracts/ethereum-1/0x1da069eef40ed89b8ba327a520160c388caa2cc3/) | ValidatorRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf556442d5b77a4b0252630e15d8bbe2160870d77`](./contracts/ethereum-1/0xf556442d5b77a4b0252630e15d8bbe2160870d77/) | ValidatorRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03abeec03bf39ac5a5c8886cf3496326d8164e1e`](./contracts/ethereum-1/0x03abeec03bf39ac5a5c8886cf3496326d8164e1e/) | VaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13909] kp5hfcaxs2prkdoscwibtrbjjddvoov3huhezsxknanxfaucm76a.arweave.net/U_pyiBeWnxUN0hWQGcQpSMdXOrs9DkzK6mgbcoKCZ_w
- [13910] Stader_Labs_LunaX_Contrracts_CosmWasm_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [13911] drive.google.com/file/d/1_ORTCjtDX61LPIbijNm4podSKfj6jUfy/view

Fork inheritance lineage and inherited audits are included when available.
