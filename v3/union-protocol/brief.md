# Agentic Audit Brief: Union Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 46 across 9 audit(s)
- Eligible audit results: 10 (9 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Union Protocol (`union-protocol`)
- Website: [https://union.finance](https://union.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 140 unique implementations (146 raw deployments)
- Coverage basis: 2/3 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $398,973.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Union Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across arbitrum, base, ethereum, optimism. Structural roles: 2 infra, 1 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: infra (2), core (1)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (2), erc20permit (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6d44e3b49a6e85cc316ef19b423e84a63f7c6d0c`, chain 10)
- UnnamedContract (`0x8e195d65b9932185fcc76db5144534e0f3597628`, chain 10)
- UnnamedContract (`0x946a2c918f3d928b918c01d813644f27bcd29d96`, chain 10)
- UnnamedContract (`0x9b8d609ecce72d6f71c026539370f7b5e55a1343`, chain 10)
- UnnamedContract (`0xb025ee78b54b5348bd638fe4a6d77ec2f813f4f9`, chain 10)
- UnnamedContract (`0xe478b5e7a423d7cdb224692d0a816ca146a744b2`, chain 10)
- UnnamedContract (`0xe4addfdf5641eb4e15f60a81f63ced4884b49823`, chain 10)
- AaveV3Adapter (`0x9c69fc4edcce8d3410ab59e9f9d9e65e5f41350b`, chain 10)
- Comptroller (`0x06a31efa04453c5f9c0a711cdb96075308c9d6e3`, chain 10)
- Dai (`0xda10009cbd5d07dd0cecc66161fc93d7c9000da1`, chain 10)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/19 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/3 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 130 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 10 of 140 unique; 130 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/38
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 102
- Unique implementations: 140
- Raw deployments: 146
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 66.7% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 2 | 5.3% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3Adapter | unknown | project_anchor | own_supporting | 1 | optimism | unit-395305 | `0x9c69fc4edcce8d3410ab59e9f9d9e65e5f41350b` | ✅ Audited |
| Comptroller | unknown | project_anchor | own_supporting | 1 | optimism | unit-395307 | `0x06a31efa04453c5f9c0a711cdb96075308c9d6e3` | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe8c77a541c933aa1320aa2f89a61f91130e4012d` | ⚠️ Unaudited |
| ArbConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x307ed81138ca91637e432dbabac6e3a42699032a` | ⚠️ Unaudited |
| ArbUnion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x125e905185198edb3eeb6c8a5baf5b64adc4abc4` | ⚠️ Unaudited |
| ArbUnionWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fed524867348ecea0a4d9aeae989794dbf8f631` | ⚠️ Unaudited |
| AssetManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35abd14ad2058f99d551c5b8b7182f9663948542` | ⚠️ Unaudited |
| ClubMemberNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a0fe2d0afed6d645f726d6a25c9f9a47050cc87` | ⚠️ Unaudited |
| ClubMemberNFTV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x27be7878ec75291b84e36f2d17f5b47f0dab211b`; optimism `0x6642a55feffd6ef24aafbb292e0514cbafa7f3a0` | ⚠️ Unaudited |
| CompoundAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x303cbdadf370f6bba79651f680498e829cb860d5` | ⚠️ Unaudited |
| Dai | unknown | project_anchor | own_supporting | 0 | optimism | unit-395281 | `0xda10009cbd5d07dd0cecc66161fc93d7c9000da1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x46a48d1e81f6002501251ad563a0e16655525e85`; base `0x6d44e3b49a6e85cc316ef19b423e84a63f7c6d0c` | ⚠️ Unaudited |
| FixedInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x051e2514e3fe8da88caa2951442a21042bce99ea` | ⚠️ Unaudited |
| MarketRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1ddb9a1f6bc0de1d05ebb0fda61a7398641ae6be`; ethereum `0xb9e958fdc190b069cc941fdd2a4f9b2d88db0c4c` | ⚠️ Unaudited |
| OpOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20473af81162b3e79f0333a2d8d64c88a71b88e8` | ⚠️ Unaudited |
| OpUNION | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c613ecf0966b84562d3a083227c753b4d5abf12` | ⚠️ Unaudited |
| PureTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x62dd06026f5f8e874eeff362b1280cd9a2057b7d`; ethereum `0xff290a447737c8c9f1717e4704334fd11981cdfb` | ⚠️ Unaudited |
| Referral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x50fe90134c5c7baf7a84584655db093f4d12e6da` | ⚠️ Unaudited |
| RegisterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2683666a3004c553b3a40ed13c32678ed11d9b49` | ⚠️ Unaudited |
| RewardsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0bea69fac75fc8c4a5b648421b916d1ba3a11894`; base `0x3c91cb715bffb25b38fe23e2bed3c15059d43e51` | ⚠️ Unaudited |
| SumOfTrust | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x754ae2ec8127080c63694162941ea2be725a90a2` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02ca192c72fb21f5ff64954d897f138ef3c70b08` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbd3321f377742c4b3fe458b270c2f271d3294d8` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dbde0e7e563e34a53b1130d6b779ec8ed34b4b9` | ⚠️ Unaudited |
| TreasuryVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x641dd6258cb3e948121b10ee51594dc2a8549fe1` | ⚠️ Unaudited |
| UDai | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x109b00a3473366f24c0d0103498d8d75d1ae40ae`; arbitrum `0x4c156cfa17a1bfd1c7d6a8f09f6af97676654671` | ⚠️ Unaudited |
| UErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x46a260f40e6b2332ec204d82daca6b9031103e65` | ⚠️ Unaudited |
| UnionClubPlugin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1b16886c5264ad7459db566a432df14779187004` | ⚠️ Unaudited |
| UnionClubPluginV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b362f0f5c7f2d65dffb8b098f769c45d1792e18` | ⚠️ Unaudited |
| UnionClubPluginV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x60659aa7caeb9ddcd7ddf3fd902e8268fbfae7e5` | ⚠️ Unaudited |
| UnionClubPluginV3_5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x180ae93f80aae0acf162be09077064fa9cc8b6f1` | ⚠️ Unaudited |
| UnionGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x011e5846975c6463a8c6337eecf3cbf64e328884` | ⚠️ Unaudited |
| UnionLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97f8903177300addf7b92431de104ce610768b19` | ⚠️ Unaudited |
| UnionToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dfe42eea70a3e6f93ee54ed9c321af07a85535c` | ⚠️ Unaudited |
| UserManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x49c910ba694789b58f53bff80633f90b8631c195` | ⚠️ Unaudited |
| UserManagerArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x011e5846975c6463a8c6337eecf3cbf64e328884` | ⚠️ Unaudited |
| UserManagerOp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x13cacaadd4379f1984cd69b744ebe7dae8528690` | ⚠️ Unaudited |
| VouchNote | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4c52c9e49aa6a5029c0f94753c533dfebcf8aaba` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (102)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20c375e822b6264e22941b74943f940a1cfe5f25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x216de4089dcdd7b95bc34bdce809669c788a9a5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29d5cd7f428f91d4253fcfc767f17e216a613620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x954f20df58347b71bbc10c94827be9ebc8706887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6b478d89babc966b13b7238424f20dabb98f7cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab1bad428017c0f077d7e61c3524842ae5bc2e3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb71f3d4342aae0b8d531e14d2cf2f45d6e458a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb91a874d9aa8ff7e478ba61286ecc77c1a3e384d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb920bc6bda2f67c383f871ce1ac1eb56bdcee3a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca208daa9804edae726d37b3cf838b9c5d03a92c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8ca7c410b5780bda6425d43869e5bec19233850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1b3f07a9032f0d3dedf3e96c395a4da74130f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5477cd6423602909c2f6f0dd469ce7709c143ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb567aa515273f9ba92c90764ce8ac9575ee7c4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfdd998ce04ab8f48b473ce4c9af1c2f8f8e264eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x01cc03de0742df77b934c3afa848ae2bb73576ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x036cbd53842c5426634e7929541ec2318f3dcf7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0d25131e098dfb65746ecc3c527865a7bba71886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x20473af81162b3e79f0333a2d8d64c88a71b88e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x206b0053f2435abe8e2bf974acbfc37e8f98b0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x311b84a6ca1196efd1cec7e4fa09d8c2c171492a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3670d190ba74795bebf7728a34c8948ce461edae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x376f47c5966dcda5c3d54b8cbf8b918777b8ff13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4aa4868189e2a650b8423d3a36f6c044005cc8c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ed1532de62bc0492a1868cf5523ff248252a646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5f77cfa883e310699e6324c9da71be97a6574b38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x61a937c0b1717cf86f805324158a427264c53599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x62ac29befda2cf4accf753c233c0b026ee7f3632` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395271 | `0x6d44e3b49a6e85cc316ef19b423e84a63f7c6d0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x737836a3348e36fb40c9358607c778fd508d8fb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x799fcddea2033aac93aa744ff8afefe95bc4e5ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8177fba1f43410fd666c60939de0aea914ee2efe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x84cee16a05c48268724f11512cb405097f96edb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8a21ed7272988e43912318718286722acc2f737e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395273 | `0x8e195d65b9932185fcc76db5144534e0f3597628` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395275 | `0x946a2c918f3d928b918c01d813644f27bcd29d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x95bb25c0a11347c8de402904dce3be628a4521c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9848b6de18ecc1829ef8796250f4ddf3a2ee5757` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395277 | `0x9b8d609ecce72d6f71c026539370f7b5e55a1343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9dfce58215a34be5bc7d958ec45d0c928b4dddaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa05584a9cec2ae466840c96f5028c3440b7f3055` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa07bc1f762b7db885c01e2a4babfa3126590d1d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395279 | `0xb025ee78b54b5348bd638fe4a6d77ec2f813f4f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb56d126d7dd740246a64ee1ef109fb34282c9deb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbf2c23b958edd132fa53a50e117173fa3f9bc80c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc124047253c87ef90af9f4efc12c281b479c4769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd3664e708972c0d1848de9a916eb440458b68e01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd559c581cba5eb2ba463c17c7e6243894eb17719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd7a59e3409713b67cb3da54f9053f07fe7580012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xda2c8b9f14e1f20a637a7b9f86d4aa78dfbdb3cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe0e9d0260ebb1a54a9b293165e3fb9bec7bd8686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe19f474ae2196217a2a4a4355676fcc2dc0f3bb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395283 | `0xe478b5e7a423d7cdb224692d0a816ca146a744b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-395285 | `0xe4addfdf5641eb4e15f60a81f63ced4884b49823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe7d93b94eac2d3e49bfcc222d07a39e44ebbe934` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xecb110116917bfcd6e350276055662afa372ed05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf5690129bf7ad35358eb2304f4f5b10e0a9b9d65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf693d82dc96cbcd5e0f3cb43d3be949f79e78f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfa0bd360cf3b3b2bbab921b73c44337c861b8b29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x06a31efa04453c5f9c0a711cdb96075308c9d6e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x155f33ddd41a973050aec1b9bc5fdad426bab7df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2683666a3004c553b3a40ed13c32678ed11d9b49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x37c092d275e48e3c9001059d9b7d55802cbdbe04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x393d7299c2caa940b777b014a094c3b2ea45ee2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b67ef4c66d4ea16c2443cfc1a162dac0a86a36a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x42b03ce748a66e6163d69514ba96de8c661ead6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x55d690ffc50f73401d170fbabefe754f4ee1460e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5dd90d3ca8b699a9058a69ac41fb80e3b33dc61c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x61a937c0b1717cf86f805324158a427264c53599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x799fcddea2033aac93aa744ff8afefe95bc4e5ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b5d037ff6f28574b2aecffc9e4dedeabcb55f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ca72f17e07df9e1271205cba3cfba80956fb3f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e195d65b9932185fcc76db5144534e0f3597628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x946a2c918f3d928b918c01d813644f27bcd29d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9b8d609ecce72d6f71c026539370f7b5e55a1343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9c69fc4edcce8d3410ab59e9f9d9e65e5f41350b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb793792b2358ee27022acf92a527f3f182637a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc2447f36ffda08e278d25d08ea91d942f0c2d6ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc89f1eef026c29d0b600694a72fe973b338452a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5a9e13e70634c7567121681a74039638a0a3f75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdfc2ea9f6aced5582063d5c210e9a0b5983a1f81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe478b5e7a423d7cdb224692d0a816ca146a744b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe4addfdf5641eb4e15f60a81f63ced4884b49823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2fcfc7364c8ccda3272974be62d53dffbd04815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5604a3d88333dc6c0c21586743f75f64b314895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa870961efaf4b3ebd46080b06c3108e38659268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbb5c34b07793caaea7b359edc5142db42c58992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd745a1e2a220c6ac327ec55d2cb404cd939f56b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2234d1d1a22442fa99add84dd15478eaba3019db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x641dd6258cb3e948121b10ee51594dc2a8549fe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6dbde0e7e563e34a53b1130d6b779ec8ed34b4b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7aecd107cb022e1dfd42cc43e9ba94c38bc83275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82c7ca392644a6c66fcaf9d4eff89e6d875d58d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9369d97cf580d95f41f4d9ee1e0d81364edac7e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x954f20df58347b71bbc10c94827be9ebc8706887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9610d516779f5ce55e9facba703b9fd84d7d59ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb07bb7d95c8c57d0ac284957d56b62751a7e98b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb71f3d4342aae0b8d531e14d2cf2f45d6e458a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb920bc6bda2f67c383f871ce1ac1eb56bdcee3a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc3c984f2ecb7ee2540bb0b9efe9540204cdab57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1a3c94c89cca99edfd9ca48ddf8f220e24e08f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf2c08aac824c3f452467ca505ef621f7e99e0d0a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 93
- Live contracts: 0
- Unknown liveness contracts: 93
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=93

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x20c375e822b6264e22941b74943f940a1cfe5f25` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0x216de4089dcdd7b95bc34bdce809669c788a9a5d` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0x29d5cd7f428f91d4253fcfc767f17e216a613620` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0x954f20df58347b71bbc10c94827be9ebc8706887` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xa6b478d89babc966b13b7238424f20dabb98f7cd` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xab1bad428017c0f077d7e61c3524842ae5bc2e3c` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xb71f3d4342aae0b8d531e14d2cf2f45d6e458a5f` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xb91a874d9aa8ff7e478ba61286ecc77c1a3e384d` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xb920bc6bda2f67c383f871ce1ac1eb56bdcee3a2` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xb9e958fdc190b069cc941fdd2a4f9b2d88db0c4c` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xca208daa9804edae726d37b3cf838b9c5d03a92c` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xd8ca7c410b5780bda6425d43869e5bec19233850` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xe1b3f07a9032f0d3dedf3e96c395a4da74130f6e` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xe5477cd6423602909c2f6f0dd469ce7709c143ab` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xfb567aa515273f9ba92c90764ce8ac9575ee7c4e` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xfdd998ce04ab8f48b473ce4c9af1c2f8f8e264eb` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xff290a447737c8c9f1717e4704334fd11981cdfb` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0x20473af81162b3e79f0333a2d8d64c88a71b88e8` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x206b0053f2435abe8e2bf974acbfc37e8f98b0a9` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x3670d190ba74795bebf7728a34c8948ce461edae` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x376f47c5966dcda5c3d54b8cbf8b918777b8ff13` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x5ed1532de62bc0492a1868cf5523ff248252a646` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x5f77cfa883e310699e6324c9da71be97a6574b38` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x61a937c0b1717cf86f805324158a427264c53599` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x62ac29befda2cf4accf753c233c0b026ee7f3632` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x6642a55feffd6ef24aafbb292e0514cbafa7f3a0` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x737836a3348e36fb40c9358607c778fd508d8fb3` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x799fcddea2033aac93aa744ff8afefe95bc4e5ae` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x8177fba1f43410fd666c60939de0aea914ee2efe` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x8a21ed7272988e43912318718286722acc2f737e` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x9848b6de18ecc1829ef8796250f4ddf3a2ee5757` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x9dfce58215a34be5bc7d958ec45d0c928b4dddaa` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xa05584a9cec2ae466840c96f5028c3440b7f3055` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xa07bc1f762b7db885c01e2a4babfa3126590d1d9` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xb56d126d7dd740246a64ee1ef109fb34282c9deb` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xbf2c23b958edd132fa53a50e117173fa3f9bc80c` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xd3664e708972c0d1848de9a916eb440458b68e01` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xd559c581cba5eb2ba463c17c7e6243894eb17719` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xd7a59e3409713b67cb3da54f9053f07fe7580012` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xda2c8b9f14e1f20a637a7b9f86d4aa78dfbdb3cf` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xe0e9d0260ebb1a54a9b293165e3fb9bec7bd8686` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xe19f474ae2196217a2a4a4355676fcc2dc0f3bb0` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xe7d93b94eac2d3e49bfcc222d07a39e44ebbe934` | non_address_book | unknown | unknown | unverified | n/a | `0x7a0c61edd8b5c0c5c1437aeb571d7ddbf8022be4` |
| unverified unclassified | UnnamedContract<br>`0xecb110116917bfcd6e350276055662afa372ed05` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xf5690129bf7ad35358eb2304f4f5b10e0a9b9d65` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xf693d82dc96cbcd5e0f3cb43d3be949f79e78f2d` | non_address_book | unknown | unknown | unverified | n/a | `0x7a0c61edd8b5c0c5c1437aeb571d7ddbf8022be4` |
| unverified unclassified | UnnamedContract<br>`0xfa0bd360cf3b3b2bbab921b73c44337c861b8b29` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x06a31efa04453c5f9c0a711cdb96075308c9d6e3` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x155f33ddd41a973050aec1b9bc5fdad426bab7df` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x2683666a3004c553b3a40ed13c32678ed11d9b49` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x37c092d275e48e3c9001059d9b7d55802cbdbe04` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x393d7299c2caa940b777b014a094c3b2ea45ee2b` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x3b67ef4c66d4ea16c2443cfc1a162dac0a86a36a` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x3c91cb715bffb25b38fe23e2bed3c15059d43e51` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x42b03ce748a66e6163d69514ba96de8c661ead6c` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x55d690ffc50f73401d170fbabefe754f4ee1460e` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x5dd90d3ca8b699a9058a69ac41fb80e3b33dc61c` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x61a937c0b1717cf86f805324158a427264c53599` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x6d44e3b49a6e85cc316ef19b423e84a63f7c6d0c` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x799fcddea2033aac93aa744ff8afefe95bc4e5ae` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x8b5d037ff6f28574b2aecffc9e4dedeabcb55f23` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x8ca72f17e07df9e1271205cba3cfba80956fb3f5` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x8e195d65b9932185fcc76db5144534e0f3597628` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x946a2c918f3d928b918c01d813644f27bcd29d96` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x9b8d609ecce72d6f71c026539370f7b5e55a1343` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x9c69fc4edcce8d3410ab59e9f9d9e65e5f41350b` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xb793792b2358ee27022acf92a527f3f182637a30` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xc2447f36ffda08e278d25d08ea91d942f0c2d6ea` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xcc89f1eef026c29d0b600694a72fe973b338452a` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xd5a9e13e70634c7567121681a74039638a0a3f75` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xdfc2ea9f6aced5582063d5c210e9a0b5983a1f81` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xe478b5e7a423d7cdb224692d0a816ca146a744b2` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xe4addfdf5641eb4e15f60a81f63ced4884b49823` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xf2fcfc7364c8ccda3272974be62d53dffbd04815` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xf5604a3d88333dc6c0c21586743f75f64b314895` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xfa870961efaf4b3ebd46080b06c3108e38659268` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xfbb5c34b07793caaea7b359edc5142db42c58992` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0xfd745a1e2a220c6ac327ec55d2cb404cd939f56b` | non_address_book | unknown | unknown | unverified | n/a | `0xcbd1c32a1b3961cc43868b8bae431ab0da65beeb` |
| unverified unclassified | UnnamedContract<br>`0x2234d1d1a22442fa99add84dd15478eaba3019db` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0x4c156cfa17a1bfd1c7d6a8f09f6af97676654671` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0x641dd6258cb3e948121b10ee51594dc2a8549fe1` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0x6dbde0e7e563e34a53b1130d6b779ec8ed34b4b9` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0x7aecd107cb022e1dfd42cc43e9ba94c38bc83275` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0x82c7ca392644a6c66fcaf9d4eff89e6d875d58d9` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0x9369d97cf580d95f41f4d9ee1e0d81364edac7e1` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0x954f20df58347b71bbc10c94827be9ebc8706887` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0x9610d516779f5ce55e9facba703b9fd84d7d59ce` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xb07bb7d95c8c57d0ac284957d56b62751a7e98b4` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xb71f3d4342aae0b8d531e14d2cf2f45d6e458a5f` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xb920bc6bda2f67c383f871ce1ac1eb56bdcee3a2` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xdc3c984f2ecb7ee2540bb0b9efe9540204cdab57` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xf1a3c94c89cca99edfd9ca48ddf8f220e24e08f7` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |
| unverified unclassified | UnnamedContract<br>`0xf2c08aac824c3f452467ca505ef621f7e99e0d0a` | non_address_book | unknown | unknown | unverified | n/a | `0x497c20fed24d61c7506ef2500065e4fd662f3779` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2023.03.21 - Final - Union Finance Update Audit Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/main/audits/2023.03.21%20-%20Final%20-%20Union%20Finance%20Update%20Audit%20Report.pdf) | Sherlock | Contest | 2023-03 | stale | Direct | contract_name | matched | 8 | 2 | 0 | 22 | high |
| [2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/main/audits/2024.07.13%20-%20Final%20-%20Union%20Finance%20Update%202%20Audit%20Report.pdf) | Sherlock | Contest | 2024-07 | stale | Direct | contract_name | matched | 3 | 1 | 0 | 5 | high |
| [2022-10-union-finance-judging (GitHub directory)](https://github.com/sherlock-audit/2022-10-union-finance-judging) | Sherlock | Contest | 2022-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2023-02-union-judging (GitHub directory)](https://github.com/sherlock-audit/2023-02-union-judging) | Sherlock | Contest | 2023-02 | stale | Direct | contract_name | matched | 3 | 1 | 0 | 1 | medium |
| [2024-06-union-finance-update-2-judging (GitHub directory)](https://github.com/sherlock-audit/2024-06-union-finance-update-2-judging) | Sherlock | Contest | 2024-06 | stale | Direct | contract_name | matched | 3 | 1 | 0 | 5 | medium |
| [Audit_Report.pdf (also discovered via alternate URL)](https://github.com/sherlock-audit/2023-02-union-judging/blob/main/Audit_Report.pdf) | Sherlock | Contest | 2023-03 | stale | Direct | contract_name | matched | 8 | 2 | 0 | 27 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21467] 2023.03.21 - Final - Union Finance Update Audit Report.pdf — matched: Scope section lists all contract file names. Audit date is 'Prepared on: March 20, 2023'.
- [21468] 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf — matched: Extracted from the audit report header and findings. The report states 'Prepared on: September17,2024' as the date. Contracts in scope are identified from the repository and branch mentioned, and from the findings which reference specific contract files.
- [21469] 2022-10-union-finance-judging (GitHub directory) — no match: The provided text is a GitHub repository page for a Sherlock audit judging repo, not the actual audit report. No contract names or audit date are present.
- [21470] 2023-02-union-judging (GitHub directory) — matched: No explicit scope section found; contracts extracted from findings and file paths in the audit report.
- [21471] 2024-06-union-finance-update-2-judging (GitHub directory) — matched: Extracted contract names from findings and file paths in the audit report. No explicit scope section found; date inferred from repository name '2024-06-union-finance-update-2-judging' as end of June 2024.
- [28560] Audit_Report.pdf — matched: Scope section lists all contract file names. Audit date is 'Prepared on: March20,2023'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IAssetManager | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IDai | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IMarketRegistry | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IUDai | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IUnionToken | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | Controller | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | OpOwner | own contract | 0x946a2c… (selected) `0x946a2c918f3d928b918c01d813644f27bcd29d96` — deployed 2023-04-25 07:01:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | UnionLens | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | AaveV3Adapter | own proxy deployment | AaveV3Adapter (proxy) (selected) `0x9c69fc4edcce8d3410ab59e9f9d9e65e5f41350b` — deployed 2023-04-25 07:07:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | AssetManager | own contract | 0xe4addf… (selected) `0xe4addfdf5641eb4e15f60a81f63ced4884b49823` — deployed 2023-04-25 07:03:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | PureTokenAdapter | own contract | 0x9b8d60… (selected) `0x9b8d609ecce72d6f71c026539370f7b5e55a1343` — deployed 2023-04-25 07:06:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IComptroller | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IInterestRateModel | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IMoneyMarketAdapter | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IUToken | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | IUserManager | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | FixedInterestRateModel | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | MarketRegistry | own contract | 0x6d44e3… (selected) `0x6d44e3b49a6e85cc316ef19b423e84a63f7c6d0c` — deployed 2023-04-25 07:02:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | UDai | own contract | 0xe478b5… (selected) `0xe478b5e7a423d7cdb224692d0a816ca146a744b2` — deployed 2023-04-25 07:05:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | UErc20 | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | UToken | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | Comptroller | own proxy deployment | Comptroller (proxy) (selected) `0x06a31efa04453c5f9c0a711cdb96075308c9d6e3` — deployed 2023-04-25 07:02:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | OpConnector | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | OpUNION | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | Whitelistable | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | UserManager | own contract | 0x8e195d… (selected) `0x8e195d65b9932185fcc76db5144534e0f3597628` — deployed 2023-04-25 07:04:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | UserManagerDAI | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | UserManagerERC20 | unmatched — not counted | — | listed in scope | no |
| 2023.03.21 - Final - Union Finance Update Audit Report.pdf | UserManagerOp | unmatched — not counted | — | listed in scope | no |
| 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf | Comptroller | own proxy deployment | Comptroller (proxy) (selected) `0x06a31efa04453c5f9c0a711cdb96075308c9d6e3` — deployed 2023-04-25 07:02:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf | UserManager | own contract | 0x8e195d… (selected) `0x8e195d65b9932185fcc76db5144534e0f3597628` — deployed 2023-04-25 07:04:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf | VouchFaucet | unmatched — not counted | — | listed in scope and findings | no |
| 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf | UErc20 | unmatched — not counted | — | listed in scope and findings | no |
| 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf | UToken | unmatched — not counted | — | listed in scope and findings | no |
| 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf | UDai | own contract | 0xe478b5… (selected) `0xe478b5e7a423d7cdb224692d0a816ca146a744b2` — deployed 2023-04-25 07:05:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf | ERC1155Voucher | unmatched — not counted | — | listed in scope and findings | no |
| 2024.07.13 - Final - Union Finance Update 2 Audit Report.pdf | ScaledDecimalBase | unmatched — not counted | — | mentioned in finding M-5 | no |
| 2023-02-union-judging (GitHub directory) | UserManager | own contract | 0x8e195d… (selected) `0x8e195d65b9932185fcc76db5144534e0f3597628` — deployed 2023-04-25 07:04:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-02-union-judging (GitHub directory) | UToken | unmatched — not counted | — | mentioned in findings H-2, H-3, M-4, M-5 | no |
| 2023-02-union-judging (GitHub directory) | Comptroller | own proxy deployment | Comptroller (proxy) (selected) `0x06a31efa04453c5f9c0a711cdb96075308c9d6e3` — deployed 2023-04-25 07:02:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-02-union-judging (GitHub directory) | AssetManager | own contract | 0xe4addf… (selected) `0xe4addfdf5641eb4e15f60a81f63ced4884b49823` — deployed 2023-04-25 07:03:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-union-finance-update-2-judging (GitHub directory) | Comptroller | own proxy deployment | Comptroller (proxy) (selected) `0x06a31efa04453c5f9c0a711cdb96075308c9d6e3` — deployed 2023-04-25 07:02:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-union-finance-update-2-judging (GitHub directory) | UserManager | own contract | 0x8e195d… (selected) `0x8e195d65b9932185fcc76db5144534e0f3597628` — deployed 2023-04-25 07:04:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-union-finance-update-2-judging (GitHub directory) | VouchFaucet | unmatched — not counted | — | mentioned in findings H-2, M-1, M-3 | no |
| 2024-06-union-finance-update-2-judging (GitHub directory) | UErc20 | unmatched — not counted | — | mentioned in finding H-3 | no |
| 2024-06-union-finance-update-2-judging (GitHub directory) | UToken | unmatched — not counted | — | mentioned in findings H-3, M-4, M-5 | no |
| 2024-06-union-finance-update-2-judging (GitHub directory) | UDai | own contract | 0xe478b5… (selected) `0xe478b5e7a423d7cdb224692d0a816ca146a744b2` — deployed 2023-04-25 07:05:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-union-finance-update-2-judging (GitHub directory) | ERC1155Voucher | unmatched — not counted | — | mentioned in findings M-1, M-2 | no |
| 2024-06-union-finance-update-2-judging (GitHub directory) | ScaledDecimalBase | unmatched — not counted | — | mentioned in finding M-5 | no |
| Audit_Report.pdf | Comptroller | own proxy deployment | Comptroller (proxy) (selected) `0x06a31efa04453c5f9c0a711cdb96075308c9d6e3` — deployed 2023-04-25 07:02:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | UserManager | own contract | 0x8e195d… (selected) `0x8e195d65b9932185fcc76db5144534e0f3597628` — deployed 2023-04-25 07:04:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | VouchFaucet | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | UErc20 | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | UToken | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | UDai | own contract | 0xe478b5… (selected) `0xe478b5e7a423d7cdb224692d0a816ca146a744b2` — deployed 2023-04-25 07:05:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | ERC1155Voucher | unmatched — not counted | — | listed in scope and findings | no |
| Audit_Report.pdf | ScaledDecimalBase | unmatched — not counted | — | mentioned in findings | no |
| Audit_Report.pdf | Controller | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | UnionLens | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | AaveV3Adapter | own proxy deployment | AaveV3Adapter (proxy) (selected) `0x9c69fc4edcce8d3410ab59e9f9d9e65e5f41350b` — deployed 2023-04-25 07:07:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | AssetManager | own contract | 0xe4addf… (selected) `0xe4addfdf5641eb4e15f60a81f63ced4884b49823` — deployed 2023-04-25 07:03:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | PureTokenAdapter | own contract | 0x9b8d60… (selected) `0x9b8d609ecce72d6f71c026539370f7b5e55a1343` — deployed 2023-04-25 07:06:30+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | IAssetManager | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IComptroller | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IDai | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IInterestRateModel | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IMarketRegistry | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IMoneyMarketAdapter | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IUDai | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IUToken | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IUnionToken | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | IUserManager | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | AMarket3 | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | LendingPool3 | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | FixedInterestRateModel | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | MarketRegistry | own contract | 0x6d44e3… (selected) `0x6d44e3b49a6e85cc316ef19b423e84a63f7c6d0c` — deployed 2023-04-25 07:02:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | UserManagerDAI | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | UserManagerERC20 | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | OpOwner | own contract | 0x946a2c… (selected) `0x946a2c918f3d928b918c01d813644f27bcd29d96` — deployed 2023-04-25 07:01:44+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit_Report.pdf | OpConnector | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | OpUNION | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | Whitelistable | unmatched — not counted | — | listed in scope | no |
| Audit_Report.pdf | UserManagerOp | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0xda10009cbd5d07dd0cecc66161fc93d7c9000da1` | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 102 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 25 own (7 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 60 unmatched
- Matched-own operational status: 25 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=2
- Match method counts: unique_name=46

Zero-match audit list:

- [21469] 2022-10-union-finance-judging (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
