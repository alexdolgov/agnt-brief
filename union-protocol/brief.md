# Agentic Audit Brief: Union Protocol

## Project Overview

- Project: Union Protocol (`union-protocol`)
- Website: [https://union.finance](https://union.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.829Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 38 unique implementations (38 raw deployments)
- DeFi Llama TVL: $398,973.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Uncollateralized Lending. Structurally: 36 project-authored contract(s) across 4 chain(s); 4 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 5 common project-authored base contract(s) (whitelistable, controller, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 38 (38 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 14/36 (38.9%)
- Deployed-live implementations: 38 of 38 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 14/38
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 38
- Raw deployments: 38
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 14 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 38.9% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 14 | 36.8% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveV3Adapter | unknown | optimism | n/a | [`0x9c69fc4edcce8d3410ab59e9f9d9e65e5f41350b`](./contracts/optimism-10/0x9c69fc4edcce8d3410ab59e9f9d9e65e5f41350b/) | ✅ Audited |
| AssetManager | unknown | arbitrum | n/a | [`0x35abd14ad2058f99d551c5b8b7182f9663948542`](./contracts/arbitrum-42161/0x35abd14ad2058f99d551c5b8b7182f9663948542/) | ✅ Audited |
| Comptroller | unknown | optimism | n/a | [`0x06a31efa04453c5f9c0a711cdb96075308c9d6e3`](./contracts/optimism-10/0x06a31efa04453c5f9c0a711cdb96075308c9d6e3/) | ✅ Audited |
| FixedInterestRateModel | unknown | arbitrum | n/a | [`0x051e2514e3fe8da88caa2951442a21042bce99ea`](./contracts/arbitrum-42161/0x051e2514e3fe8da88caa2951442a21042bce99ea/) | ✅ Audited |
| MarketRegistry | unknown | ethereum | n/a | [`0x1ddb9a1f6bc0de1d05ebb0fda61a7398641ae6be`](./contracts/ethereum-1/0x1ddb9a1f6bc0de1d05ebb0fda61a7398641ae6be/) | ✅ Audited |
| OpOwner | unknown | base | n/a | [`0x20473af81162b3e79f0333a2d8d64c88a71b88e8`](./contracts/base-8453/0x20473af81162b3e79f0333a2d8d64c88a71b88e8/) | ✅ Audited |
| OpUNION | unknown | base | n/a | [`0x2c613ecf0966b84562d3a083227c753b4d5abf12`](./contracts/base-8453/0x2c613ecf0966b84562d3a083227c753b4d5abf12/) | ✅ Audited |
| PureTokenAdapter | unknown | ethereum | n/a | [`0x62dd06026f5f8e874eeff362b1280cd9a2057b7d`](./contracts/ethereum-1/0x62dd06026f5f8e874eeff362b1280cd9a2057b7d/) | ✅ Audited |
| UDai | unknown | arbitrum | n/a | [`0x109b00a3473366f24c0d0103498d8d75d1ae40ae`](./contracts/arbitrum-42161/0x109b00a3473366f24c0d0103498d8d75d1ae40ae/) | ✅ Audited |
| UErc20 | unknown | base | n/a | [`0x46a260f40e6b2332ec204d82daca6b9031103e65`](./contracts/base-8453/0x46a260f40e6b2332ec204d82daca6b9031103e65/) | ✅ Audited |
| UnionLens | unknown | base | n/a | [`0x97f8903177300addf7b92431de104ce610768b19`](./contracts/base-8453/0x97f8903177300addf7b92431de104ce610768b19/) | ✅ Audited |
| UserManager | unknown | ethereum | n/a | [`0x49c910ba694789b58f53bff80633f90b8631c195`](./contracts/ethereum-1/0x49c910ba694789b58f53bff80633f90b8631c195/) | ✅ Audited |
| UserManagerArb | unknown | arbitrum | n/a | [`0x011e5846975c6463a8c6337eecf3cbf64e328884`](./contracts/arbitrum-42161/0x011e5846975c6463a8c6337eecf3cbf64e328884/) | ✅ Audited |
| UserManagerOp | unknown | optimism | n/a | [`0x13cacaadd4379f1984cd69b744ebe7dae8528690`](./contracts/optimism-10/0x13cacaadd4379f1984cd69b744ebe7dae8528690/) | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveAdapter | unknown | ethereum | n/a | [`0xe8c77a541c933aa1320aa2f89a61f91130e4012d`](./contracts/ethereum-1/0xe8c77a541c933aa1320aa2f89a61f91130e4012d/) | ⚠️ Unaudited |
| ArbConnector | unknown | ethereum | n/a | [`0x307ed81138ca91637e432dbabac6e3a42699032a`](./contracts/ethereum-1/0x307ed81138ca91637e432dbabac6e3a42699032a/) | ⚠️ Unaudited |
| ArbUnion | unknown | arbitrum | n/a | [`0x125e905185198edb3eeb6c8a5baf5b64adc4abc4`](./contracts/arbitrum-42161/0x125e905185198edb3eeb6c8a5baf5b64adc4abc4/) | ⚠️ Unaudited |
| ArbUnionWrapper | unknown | ethereum | n/a | [`0x1fed524867348ecea0a4d9aeae989794dbf8f631`](./contracts/ethereum-1/0x1fed524867348ecea0a4d9aeae989794dbf8f631/) | ⚠️ Unaudited |
| ClubMemberNFT | unknown | optimism | n/a | [`0x1a0fe2d0afed6d645f726d6a25c9f9a47050cc87`](./contracts/optimism-10/0x1a0fe2d0afed6d645f726d6a25c9f9a47050cc87/) | ⚠️ Unaudited |
| ClubMemberNFTV3 | unknown | optimism | n/a | [`0x27be7878ec75291b84e36f2d17f5b47f0dab211b`](./contracts/optimism-10/0x27be7878ec75291b84e36f2d17f5b47f0dab211b/) | ⚠️ Unaudited |
| CompoundAdapter | unknown | ethereum | n/a | [`0x303cbdadf370f6bba79651f680498e829cb860d5`](./contracts/ethereum-1/0x303cbdadf370f6bba79651f680498e829cb860d5/) | ⚠️ Unaudited |
| Dai | unknown | optimism | n/a | [`0xda10009cbd5d07dd0cecc66161fc93d7c9000da1`](./contracts/optimism-10/0xda10009cbd5d07dd0cecc66161fc93d7c9000da1/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | [`0x46a48d1e81f6002501251ad563a0e16655525e85`](./contracts/base-8453/0x46a48d1e81f6002501251ad563a0e16655525e85/) | ⚠️ Unaudited |
| Referral | unknown | base | n/a | [`0x50fe90134c5c7baf7a84584655db093f4d12e6da`](./contracts/base-8453/0x50fe90134c5c7baf7a84584655db093f4d12e6da/) | ⚠️ Unaudited |
| RegisterHelper | unknown | optimism | n/a | [`0x2683666a3004c553b3a40ed13c32678ed11d9b49`](./contracts/optimism-10/0x2683666a3004c553b3a40ed13c32678ed11d9b49/) | ⚠️ Unaudited |
| RewardsManager | unknown | base | n/a | [`0x0bea69fac75fc8c4a5b648421b916d1ba3a11894`](./contracts/base-8453/0x0bea69fac75fc8c4a5b648421b916d1ba3a11894/) | ⚠️ Unaudited |
| SumOfTrust | unknown | arbitrum | n/a | [`0x754ae2ec8127080c63694162941ea2be725a90a2`](./contracts/arbitrum-42161/0x754ae2ec8127080c63694162941ea2be725a90a2/) | ⚠️ Unaudited |
| SwapRouter | unknown | base | n/a | [`0x02ca192c72fb21f5ff64954d897f138ef3c70b08`](./contracts/base-8453/0x02ca192c72fb21f5ff64954d897f138ef3c70b08/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0xbbd3321f377742c4b3fe458b270c2f271d3294d8`](./contracts/ethereum-1/0xbbd3321f377742c4b3fe458b270c2f271d3294d8/) | ⚠️ Unaudited |
| Treasury | unknown | ethereum | n/a | [`0x6dbde0e7e563e34a53b1130d6b779ec8ed34b4b9`](./contracts/ethereum-1/0x6dbde0e7e563e34a53b1130d6b779ec8ed34b4b9/) | ⚠️ Unaudited |
| TreasuryVester | unknown | ethereum | n/a | [`0x641dd6258cb3e948121b10ee51594dc2a8549fe1`](./contracts/ethereum-1/0x641dd6258cb3e948121b10ee51594dc2a8549fe1/) | ⚠️ Unaudited |
| UnionClubPlugin | unknown | optimism | n/a | [`0x1b16886c5264ad7459db566a432df14779187004`](./contracts/optimism-10/0x1b16886c5264ad7459db566a432df14779187004/) | ⚠️ Unaudited |
| UnionClubPluginV2 | unknown | optimism | n/a | [`0x3b362f0f5c7f2d65dffb8b098f769c45d1792e18`](./contracts/optimism-10/0x3b362f0f5c7f2d65dffb8b098f769c45d1792e18/) | ⚠️ Unaudited |
| UnionClubPluginV3 | unknown | optimism | n/a | [`0x60659aa7caeb9ddcd7ddf3fd902e8268fbfae7e5`](./contracts/optimism-10/0x60659aa7caeb9ddcd7ddf3fd902e8268fbfae7e5/) | ⚠️ Unaudited |
| UnionClubPluginV3_5 | unknown | base | n/a | [`0x180ae93f80aae0acf162be09077064fa9cc8b6f1`](./contracts/base-8453/0x180ae93f80aae0acf162be09077064fa9cc8b6f1/) | ⚠️ Unaudited |
| UnionGovernor | unknown | ethereum | n/a | [`0x011e5846975c6463a8c6337eecf3cbf64e328884`](./contracts/ethereum-1/0x011e5846975c6463a8c6337eecf3cbf64e328884/) | ⚠️ Unaudited |
| UnionToken | unknown | ethereum | n/a | [`0x5dfe42eea70a3e6f93ee54ed9c321af07a85535c`](./contracts/ethereum-1/0x5dfe42eea70a3e6f93ee54ed9c321af07a85535c/) | ⚠️ Unaudited |
| VouchNote | unknown | optimism | n/a | [`0x4c52c9e49aa6a5029c0f94753c533dfebcf8aaba`](./contracts/optimism-10/0x4c52c9e49aa6a5029c0f94753c533dfebcf8aaba/) | ⚠️ Unaudited |

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
| [2023.03.21 - Final - Union Finance Update Audit Report.pdf](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/main/audits/2023.03.21%20-%20Final%20-%20Union%20Finance%20Update%20Audit%20Report.pdf) | Sherlock | Contest | 2023-03 | stale | Direct | contract_name | 14 | high |
| [2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/main/audits/2024.07.13%20-%20Final%20-%20Union%20Finance%20Update%202%20Audit%20Report.pdf) | Sherlock | Contest | 2024-07 | stale | Direct | contract_name | 6 | high |
| [2022-10-union-finance-judging (GitHub directory)](https://github.com/sherlock-audit/2022-10-union-finance-judging) | Sherlock | Contest | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [2023-02-union-judging (GitHub directory)](https://github.com/sherlock-audit/2023-02-union-judging) | Sherlock | Contest | 2023-02 | stale | Direct | contract_name | 6 | medium |
| [2024-06-union-finance-update-2-judging (GitHub directory)](https://github.com/sherlock-audit/2024-06-union-finance-update-2-judging) | Sherlock | Contest | 2024-06 | stale | Direct | contract_name | 6 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe8c77a541c933aa1320aa2f89a61f91130e4012d`](./contracts/ethereum-1/0xe8c77a541c933aa1320aa2f89a61f91130e4012d/) | AaveAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x307ed81138ca91637e432dbabac6e3a42699032a`](./contracts/ethereum-1/0x307ed81138ca91637e432dbabac6e3a42699032a/) | ArbConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x125e905185198edb3eeb6c8a5baf5b64adc4abc4`](./contracts/arbitrum-42161/0x125e905185198edb3eeb6c8a5baf5b64adc4abc4/) | ArbUnion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fed524867348ecea0a4d9aeae989794dbf8f631`](./contracts/ethereum-1/0x1fed524867348ecea0a4d9aeae989794dbf8f631/) | ArbUnionWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1a0fe2d0afed6d645f726d6a25c9f9a47050cc87`](./contracts/optimism-10/0x1a0fe2d0afed6d645f726d6a25c9f9a47050cc87/) | ClubMemberNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x27be7878ec75291b84e36f2d17f5b47f0dab211b`](./contracts/optimism-10/0x27be7878ec75291b84e36f2d17f5b47f0dab211b/) | ClubMemberNFTV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x303cbdadf370f6bba79651f680498e829cb860d5`](./contracts/ethereum-1/0x303cbdadf370f6bba79651f680498e829cb860d5/) | CompoundAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xda10009cbd5d07dd0cecc66161fc93d7c9000da1`](./contracts/optimism-10/0xda10009cbd5d07dd0cecc66161fc93d7c9000da1/) | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x50fe90134c5c7baf7a84584655db093f4d12e6da`](./contracts/base-8453/0x50fe90134c5c7baf7a84584655db093f4d12e6da/) | Referral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2683666a3004c553b3a40ed13c32678ed11d9b49`](./contracts/optimism-10/0x2683666a3004c553b3a40ed13c32678ed11d9b49/) | RegisterHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0bea69fac75fc8c4a5b648421b916d1ba3a11894`](./contracts/base-8453/0x0bea69fac75fc8c4a5b648421b916d1ba3a11894/) | RewardsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x754ae2ec8127080c63694162941ea2be725a90a2`](./contracts/arbitrum-42161/0x754ae2ec8127080c63694162941ea2be725a90a2/) | SumOfTrust | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02ca192c72fb21f5ff64954d897f138ef3c70b08`](./contracts/base-8453/0x02ca192c72fb21f5ff64954d897f138ef3c70b08/) | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dbde0e7e563e34a53b1130d6b779ec8ed34b4b9`](./contracts/ethereum-1/0x6dbde0e7e563e34a53b1130d6b779ec8ed34b4b9/) | Treasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x641dd6258cb3e948121b10ee51594dc2a8549fe1`](./contracts/ethereum-1/0x641dd6258cb3e948121b10ee51594dc2a8549fe1/) | TreasuryVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1b16886c5264ad7459db566a432df14779187004`](./contracts/optimism-10/0x1b16886c5264ad7459db566a432df14779187004/) | UnionClubPlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3b362f0f5c7f2d65dffb8b098f769c45d1792e18`](./contracts/optimism-10/0x3b362f0f5c7f2d65dffb8b098f769c45d1792e18/) | UnionClubPluginV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x60659aa7caeb9ddcd7ddf3fd902e8268fbfae7e5`](./contracts/optimism-10/0x60659aa7caeb9ddcd7ddf3fd902e8268fbfae7e5/) | UnionClubPluginV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x180ae93f80aae0acf162be09077064fa9cc8b6f1`](./contracts/base-8453/0x180ae93f80aae0acf162be09077064fa9cc8b6f1/) | UnionClubPluginV3_5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x011e5846975c6463a8c6337eecf3cbf64e328884`](./contracts/ethereum-1/0x011e5846975c6463a8c6337eecf3cbf64e328884/) | UnionGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dfe42eea70a3e6f93ee54ed9c321af07a85535c`](./contracts/ethereum-1/0x5dfe42eea70a3e6f93ee54ed9c321af07a85535c/) | UnionToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4c52c9e49aa6a5029c0f94753c533dfebcf8aaba`](./contracts/optimism-10/0x4c52c9e49aa6a5029c0f94753c533dfebcf8aaba/) | VouchNote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, medium=2
- Match method counts: extraction_exact=32

Zero-match audit list:

- [21469] 2022-10-union-finance-judging (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
