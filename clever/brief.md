# Agentic Audit Brief: CLever

## Project Overview

- Project: CLever (`clever`)
- Website: [https://clever.aladdin.club/](https://clever.aladdin.club/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.301Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-1bf2
- Chains: ethereum
- Contract surface: 21 unique implementations (37 raw deployments)
- DeFi Llama TVL: $3,507,907.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 72 project-authored contract(s) across 1 chain(s); 4 ERC4626 vaults, 9 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 9 common project-authored base contract(s) (concentratorgeneralvault, feecustomization, concentratorbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 37; live-surface contracts included: 37 (37 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/20 (20.0%)
- Deployed-live implementations: 21 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/21
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 37
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 19.0% | 2022-04 |
| SECBIT | Tier 2 | 3 | 14.3% | 2022-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CLeverCVXLocker | unknown | ethereum | n/a | [`0x96c68d861ada016ed98c30c810879f9df7c64154`](./contracts/ethereum-1/0x96c68d861ada016ed98c30c810879f9df7c64154/) | ✅ Audited |
| CLeverToken | token | ethereum | n/a | 2 deployments: ethereum [`0x3c20ac688410be8f391be1fb00afc5c212972f86`](./contracts/ethereum-1/0x3c20ac688410be8f391be1fb00afc5c212972f86/); ethereum `0xf05e58fcea29ab4da01a495140b349f8410ba904` | ✅ Audited |
| Furnace | unknown | ethereum | n/a | [`0xce4dcc5028588377e279255c0335effe2d7ab72a`](./contracts/ethereum-1/0xce4dcc5028588377e279255c0335effe2d7ab72a/) | ✅ Audited |
| Vesting | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x592e353c5b97356e99eaf6a72b971ba1c9695593`](./contracts/ethereum-1/0x592e353c5b97356e99eaf6a72b971ba1c9695593/); ethereum `0x8341889905bdef85b87cb7644a93f7a482f28742`; ethereum `0x84c82d43f1cc64730849f3e389fe3f6d776f7a4e` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AladdinConvexVault | core_logic | ethereum | n/a | [`0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8`](./contracts/ethereum-1/0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8/) | ⚠️ Unaudited |
| AladdinCRVV2 | unknown | ethereum | n/a | [`0x2b95a1dcc3d405535f9ed33c219ab38e8d7e0884`](./contracts/ethereum-1/0x2b95a1dcc3d405535f9ed33c219ab38e8d7e0884/) | ⚠️ Unaudited |
| AladdinFXSConvexVault | core_logic | ethereum | n/a | [`0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1`](./contracts/ethereum-1/0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1/) | ⚠️ Unaudited |
| CompounderGateway | adapter | ethereum | n/a | [`0x883fd355debf417f82aa9a3e2936971487f7df1f`](./contracts/ethereum-1/0x883fd355debf417f82aa9a3e2936971487f7df1f/) | ⚠️ Unaudited |
| FxUSDFacet | unknown | ethereum | n/a | [`0xa5e2ec4682a32605b9098ddd7204fe84ab932fe4`](./contracts/ethereum-1/0xa5e2ec4682a32605b9098ddd7204fe84ab932fe4/) | ⚠️ Unaudited |
| GeneralTokenConverter | token | ethereum | n/a | [`0x11c907b3aedbd863e551c37f21dd3f36b28a6784`](./contracts/ethereum-1/0x11c907b3aedbd863e551c37f21dd3f36b28a6784/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0xc40549aa1d05c30af23a1c4a5af6ba11fcafe23f`](./contracts/ethereum-1/0xc40549aa1d05c30af23a1c4a5af6ba11fcafe23f/); ethereum `0xfc08757c505ea28709df66e54870fb6de09f0c5e` | ⚠️ Unaudited |
| Market | unknown | ethereum | n/a | [`0xe7b9c7c9ca85340b8c06fb805f7775e3015108db`](./contracts/ethereum-1/0xe7b9c7c9ca85340b8c06fb805f7775e3015108db/) | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | ethereum | n/a | [`0x695eb50a92ad2aebb89c6dd1f3c7546a28411403`](./contracts/ethereum-1/0x695eb50a92ad2aebb89c6dd1f3c7546a28411403/) | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | ethereum | n/a | [`0x32366846354db5c08e92b4ab0d2a510b2a2380c8`](./contracts/ethereum-1/0x32366846354db5c08e92b4ab0d2a510b2a2380c8/) | ⚠️ Unaudited |
| RebalancePool | core_logic | ethereum | n/a | [`0xa677d95b91530d56791fba72c01a862f1b01a49e`](./contracts/ethereum-1/0xa677d95b91530d56791fba72c01a862f1b01a49e/) | ⚠️ Unaudited |
| RewardClaimHelper | periphery | ethereum | n/a | [`0xaf59d144357dcc8a852ad601f27bf6310b657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | ⚠️ Unaudited |
| SdCrvCompounder | adapter | ethereum | n/a | [`0x43e54c2e7b3e294de3a155785f52ab49d87b9922`](./contracts/ethereum-1/0x43e54c2e7b3e294de3a155785f52ab49d87b9922/) | ⚠️ Unaudited |
| stETHTreasury | operational_periphery | ethereum | n/a | [`0x0e5caa5c889bdf053c9a76395f62267e653afbb0`](./contracts/ethereum-1/0x0e5caa5c889bdf053c9a76395f62267e653afbb0/) | ⚠️ Unaudited |
| VeFeeGateway | unknown | ethereum | n/a | [`0x8fc7906fc6047679dad53c0c3b40e135486421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 13 deployments: ethereum [`0x261e3aeb4cd1ebfd0fa532d6acdd4b21ebdcd2de`](./contracts/ethereum-1/0x261e3aeb4cd1ebfd0fa532d6acdd4b21ebdcd2de/); ethereum `0x4aa2afd5616beec2321a9efd7349400d4f18566a`; ethereum `0x6c280db098db673d30d5b34ec04b6387185d3620`; ethereum `0x72953a5c32413614d24c29c84a66ae4b59581bbf`; ethereum `0x86e917ad6cb44f9e6c8d9fa012acf0d0cfcf114f`; ethereum `0x94be07d45d57c7973a535c1c517bd79e602e051e`; ethereum `0x9b02548de409d7aaee228bfa3ff2bca70e7a2fe8`; ethereum `0xa5d9358c60fc9bd2b508eda17c78c67a43a4458c`; ethereum `0xb3ad645db386d7f6d753b2b9c3f4b853da6890b8`; ethereum `0xb5e7f9cb9d3897808658f1991ad32912959b42e2`; ethereum `0xc5022291ca8281745d173bb855dcd34dda67f2f0`; ethereum `0xe4c09928d834cd58d233cd77b5af3545484b4968`; ethereum `0xf9078fb962a7d13f55d40d49c8aa6472abd1a5a6` | ⚠️ Unaudited |
| WeightedPool | core_logic | ethereum | n/a | [`0x69671c808c8f1c1490a4c9e0145884dfb5631378`](./contracts/ethereum-1/0x69671c808c8f1c1490a4c9e0145884dfb5631378/) | ⚠️ Unaudited |

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
| [SECBIT_CLever_Report_v1.1.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_CLever_Report_v1.1.pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | 4 | n/a |
| [SECBIT_CLever_Furnace_Update_20221111.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_CLever_Furnace_Update_20221111.pdf) | SECBIT | Audit | 2022-11 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf) | SECBIT | Audit | 2022-09 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8`](./contracts/ethereum-1/0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8/) | AladdinConvexVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b95a1dcc3d405535f9ed33c219ab38e8d7e0884`](./contracts/ethereum-1/0x2b95a1dcc3d405535f9ed33c219ab38e8d7e0884/) | AladdinCRVV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1`](./contracts/ethereum-1/0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1/) | AladdinFXSConvexVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x883fd355debf417f82aa9a3e2936971487f7df1f`](./contracts/ethereum-1/0x883fd355debf417f82aa9a3e2936971487f7df1f/) | CompounderGateway | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5e2ec4682a32605b9098ddd7204fe84ab932fe4`](./contracts/ethereum-1/0xa5e2ec4682a32605b9098ddd7204fe84ab932fe4/) | FxUSDFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11c907b3aedbd863e551c37f21dd3f36b28a6784`](./contracts/ethereum-1/0x11c907b3aedbd863e551c37f21dd3f36b28a6784/) | GeneralTokenConverter | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7b9c7c9ca85340b8c06fb805f7775e3015108db`](./contracts/ethereum-1/0xe7b9c7c9ca85340b8c06fb805f7775e3015108db/) | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x695eb50a92ad2aebb89c6dd1f3c7546a28411403`](./contracts/ethereum-1/0x695eb50a92ad2aebb89c6dd1f3c7546a28411403/) | PlatformFeeBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32366846354db5c08e92b4ab0d2a510b2a2380c8`](./contracts/ethereum-1/0x32366846354db5c08e92b4ab0d2a510b2a2380c8/) | PlatformFeeSpliter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa677d95b91530d56791fba72c01a862f1b01a49e`](./contracts/ethereum-1/0xa677d95b91530d56791fba72c01a862f1b01a49e/) | RebalancePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf59d144357dcc8a852ad601f27bf6310b657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | RewardClaimHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43e54c2e7b3e294de3a155785f52ab49d87b9922`](./contracts/ethereum-1/0x43e54c2e7b3e294de3a155785f52ab49d87b9922/) | SdCrvCompounder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e5caa5c889bdf053c9a76395f62267e653afbb0`](./contracts/ethereum-1/0x0e5caa5c889bdf053c9a76395f62267e653afbb0/) | stETHTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fc7906fc6047679dad53c0c3b40e135486421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | VeFeeGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x261e3aeb4cd1ebfd0fa532d6acdd4b21ebdcd2de`](./contracts/ethereum-1/0x261e3aeb4cd1ebfd0fa532d6acdd4b21ebdcd2de/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69671c808c8f1c1490a4c9e0145884dfb5631378`](./contracts/ethereum-1/0x69671c808c8f1c1490a4c9e0145884dfb5631378/) | WeightedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=7

Fork inheritance lineage and inherited audits are included when available.
