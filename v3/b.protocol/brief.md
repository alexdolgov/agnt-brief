# Agentic Audit Brief: B.Protocol

⚠️ Lifecycle status: DEAD - TVL dropped 1.3% over 90 days

## Project Overview

- Project: B.Protocol (`b.protocol`)
- Website: [https://app.bprotocol.org/](https://app.bprotocol.org/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-03T21:05:32.559Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, ethereum, fantom, polygon
- Contract surface: 101 unique implementations (150 raw deployments)
- DeFi Llama TVL: $1,754,312.88
- On-chain TVL (included contracts): $46,212,387.39
- TVL by chain: Ethereum $46,142,552.66 | Polygon $69,834.73

## Project Description

Liquidations. Structurally: 125 project-authored contract(s) across 3 chain(s); 14 ERC20 tokens, 3 Chainlink feeds; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 35 common project-authored base contract(s) (cropjoinadapter, cropjoin, priceformula). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 352; live-surface contracts included: 150 (76 live, 74 unknown).
- Excluded by liveness: 202 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/35 (20.0%)
- Deployed-live implementations: 35 of 101 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/35
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 1
- Unverified implementations: 66
- Unique implementations: 101
- Raw deployments: 150
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $46,212,387.39
- Latest audit: 2021-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 11.4% (Code4rena)
- Note: This protocol is classified as [dead]. ASD of $46,212,387.39 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Solidified | Tier 2 | 6 | 17.1% | 2021-02 |
| Code4rena | Tier 1 | 4 | 11.4% | 2021-02 |
| Fixed Point Solutions | Tier 2 | 1 | 2.9% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BAMM | unknown | ethereum | n/a | 8 deployments: ethereum [`0x00ff66...a0849a`](./contracts/ethereum-1/0x00ff66ab8699aafa050ee5ef5041d1503aa0849a/); ethereum `0x0d3aba...a8c598`; arbitrum `0x04208f...5eb719`; arbitrum `0x0a3096...034c41`; arbitrum `0x12c60b...24329e`; arbitrum `0x240990...29b168`; arbitrum `0xa00cdc...db2a79`; arbitrum `0xebf825...afe66b` | ✅ Audited |
| BCdpManager | governance | ethereum | n/a | 3 deployments: ethereum [`0x22d3fb...f051ae`](./contracts/ethereum-1/0x22d3fbe3afd0ffe8db1306eb857a2a8b21f051ae/); ethereum `0x3320f0...f7e147`; ethereum `0x3f30c2...24bbed` | ✅ Audited |
| BProxyActions | unknown | ethereum | n/a | 2 deployments: ethereum [`0x351626...c9e6a1`](./contracts/ethereum-1/0x351626387b5bb5408f97f8fd6b2ec415efc9e6a1/); ethereum `0x4bcad4...725ab0` | ✅ Audited |
| LiquidatorBalanceInfo | operational_periphery | ethereum | n/a | [`0xf0c02c...655ebe`](./contracts/ethereum-1/0xf0c02c4edc6b27fbec7ec57e2eac4e3445655ebe/) | ✅ Audited |
| LiquidatorInfo | operational_periphery | ethereum | n/a | [`0x5fd74c...a1064d`](./contracts/ethereum-1/0x5fd74c9eb05a11c148297d83febd8b4862a1064d/) | ✅ Audited |
| Pool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x3add75...186a2c`](./contracts/ethereum-1/0x3add75647681d3ba7a4ecfabf75d393936186a2c/); ethereum `0x84ff97...4faf23`; ethereum `0x912d19...362d4c`; ethereum `0xba791e...0aa47f` | ✅ Audited |
| Registry | registry | ethereum | n/a | [`0xbf698d...ed666a`](./contracts/ethereum-1/0xbf698df5591caf546a7e087f5806e216afed666a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LUSDToken | token | ethereum | n/a | [`0x5f9880...568ba0`](./contracts/ethereum-1/0x5f98805a4e8be255a32880fdec7f6728c6568ba0/) | ⚠️ Unaudited |
| LQTYToken | token | ethereum | n/a | [`0x6dea81...88c54d`](./contracts/ethereum-1/0x6dea81c8171d0ba574754ef6f8b412f2ed88c54d/) | ⚠️ Unaudited |
| CErc20Delegate | token | polygon | n/a | 4 deployments: polygon [`0x103f2c...4e9a27`](./contracts/polygon-137/0x103f2ca2148b863942397dbc50a425cc4f4e9a27/); polygon `0x607312...6e69d0`; polygon `0xbb93c7...a55807`; polygon `0xe4e438...ab7fcc` | ⚠️ Unaudited |
| StabilityPool | core_logic | ethereum | n/a | [`0x66017d...5a21bb`](./contracts/ethereum-1/0x66017d22b0f8556afdd19fc67041899eb65a21bb/) | ⚠️ Unaudited |
| BorrowerOperations | core_logic | ethereum | n/a | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | ⚠️ Unaudited |
| CErc20Delegator | token | polygon | n/a | [`0x2c7a9d...09be7c`](./contracts/polygon-137/0x2c7a9d9919f042c4c120199c69e126124d09be7c/) | ⚠️ Unaudited |
| ActivePool | core_logic | ethereum | n/a | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ⚠️ Unaudited |
| CollSurplusPool | core_logic | ethereum | n/a | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | ⚠️ Unaudited |
| BKeeper | operational_periphery | ethereum | n/a | [`0xeae019...bb5371`](./contracts/ethereum-1/0xeae019ef845a4ffdb8829210de5d30ac6fbb5371/) | ⚠️ Unaudited |
| BPRO | unknown | ethereum | n/a | [`0xbbbbbb...725f61`](./contracts/ethereum-1/0xbbbbbbb5aa847a2003fbc6b5c16df0bd1e725f61/) | ⚠️ Unaudited |
| BTVL | unknown | ethereum | n/a | [`0x60312e...9b20cf`](./contracts/ethereum-1/0x60312e01a2acd1dac68838c949c1d20c609b20cf/) | ⚠️ Unaudited |
| CErc20 | unknown | ethereum | n/a | 7 deployments: ethereum [`0x158079...ac95c1`](./contracts/ethereum-1/0x158079ee67fce2f58472a96584a73c7ab9ac95c1/); ethereum `0x39aa39...5e7563`; ethereum `0x6c8c6b...d90e4e`; ethereum `0xa4c993...eecd47`; ethereum `0xb3319f...66d407`; ethereum `0xc11b12...a3a7f4`; ethereum `0xf5dce5...c444dc` | ⚠️ Unaudited |
| CErc20Delegate | unknown | ethereum | n/a | [`0x99ee77...d521ec`](./contracts/ethereum-1/0x99ee778b9a6205657dd03b2b91415c8646d521ec/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/); polygon `0xebd7f3...b55e31` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | 6 deployments: ethereum [`0x178053...63df29`](./contracts/ethereum-1/0x178053c06006e67e09879c09ff012ff9d263df29/); ethereum `0x62f18c...bb8fcc`; ethereum `0xf592ef...56132c`; ethereum `0xf88c7e...6b0be0`; polygon `0x376020...078d8a`; polygon `0xa8cd5d...ea48f8` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x3d9819...c9cd3b`](./contracts/ethereum-1/0x3d9819210a31b4961b30ef54be2aed79b9c9cd3b/) | ⚠️ Unaudited |
| Comptroller | unknown | polygon | n/a | 2 deployments: polygon [`0x287072...f6fb79`](./contracts/polygon-137/0x28707252fdea41b72cf321d153a6c01fa9f6fb79/); polygon `0x8c6139...a0a831` | ⚠️ Unaudited |
| Comptroller | unknown | polygon | n/a | 2 deployments: polygon [`0xb426c1...c7df13`](./contracts/polygon-137/0xb426c1b7fabea9ea6a273e8427040568a8c7df13/); polygon `0xedba32...26e499` | ⚠️ Unaudited |
| FuseBAMM | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2227a0...26c70c`](./contracts/arbitrum-42161/0x2227a0bd08a73e44ea1c992d6b7734a8f026c70c/); arbitrum `0x94fd84...399ef4` | ⚠️ Unaudited |
| LQTYStaking | unknown | ethereum | n/a | [`0x4f9fbb...fc605d`](./contracts/ethereum-1/0x4f9fbb3f1e99b56e0fe2892e623ed36a76fc605d/) | ⚠️ Unaudited |
| Maximillion | unknown | polygon | n/a | [`0x89db3b...78ef02`](./contracts/polygon-137/0x89db3b59381bc06fe9bf74532afd777e5f78ef02/) | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | ethereum | n/a | [`0x4dbbbf...851e80`](./contracts/ethereum-1/0x4dbbbfb0e68be9d8f5a377a4654604a62e851e80/) | ⚠️ Unaudited |
| Pay | unknown | ethereum | n/a | [`0x0ab366...176bde`](./contracts/ethereum-1/0x0ab366dbbb03c84f581963a4cc0756eb66176bde/) | ⚠️ Unaudited |
| PBAMM | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2c6af4...54ea02`](./contracts/ethereum-1/0x2c6af48e01be6f96fb8ea19c76cb936bb554ea02/); ethereum `0x5123bf...31c70f`; ethereum `0x54bc91...f6d972`; ethereum `0xe4c3d5...43e6f3` | ⚠️ Unaudited |
| TroveManager | governance | ethereum | n/a | [`0xa39739...cf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | ⚠️ Unaudited |
| Unipool | core_logic | ethereum | n/a | [`0xd37a77...bdf0d5`](./contracts/ethereum-1/0xd37a77e71ddf3373a79be2ebb76b6c4808bdf0d5/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | [`0xc507a2...288880`](./contracts/ethereum-1/0xc507a27860c225aad8cb4a5a32a44d8892288880/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HundredBAMM | unknown | polygon | n/a | 15 deployments: polygon [`0x0f0dd6...b80d56`](./contracts/polygon-137/0x0f0dd66d2d6c1f3b140037018958164c6ab80d56/); polygon `0x1346e1...1e05ca`; polygon `0x1ecf1b...17b41d`; polygon `0x240b3e...810247`; polygon `0x2da135...0f9feb`; polygon `0x2ee900...4d64c7`; polygon `0x753c75...d0feac`; polygon `0x998bf3...078f49`; polygon `0xa5e148...85e0e4`; polygon `0xa8d60f...449e3d`; polygon `0xbdac31...5c7247`; polygon `0xcebdf1...b17e25`; polygon `0xda57c0...c00bdb`; polygon `0xedce1c...a440f1`; arbitrum `0x51fbf8...5d9565` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (66)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x04068d...5d5b75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04208f...5eb719` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ad1af...62fbf1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x183994...12e28a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f97df...c793dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29e7d0...80c3c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55e8be...bcacbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ad29d...c98865` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d444c...da8322` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d62d6...634d22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d11ec...8abf3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9247d4...c79c61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa42c5...bb3bb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc970e2...30570a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe574cc...e06545` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedc790...138a3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf06c81...9d2e79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc0898...a49200` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x028245...6f44b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0aed20...2bb039` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0ba89d...7ae2b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x138f5b...6aeee1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x17625a...15a086` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a1d74...361c6e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1cbdf5...27094e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x207a0b...d5dff7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x262175...1ac0bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x285e2e...592d90` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x288a38...0ded55` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x28da2d...1bb532` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4db1d2...eb1e71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x55fb2a...5c415e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x60d7de...4e7c42` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6f5e88...2d118e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x757ad8...26bd7b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7a0187...ff4a96` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a0d63...e82c28` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e15a2...ff0235` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9062d1...3fc27a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x94a64b...eb2a00` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a79a2...517a12` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a9e6e...9e4374` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d5680...7caf3f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9f99f6...423d92` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa2fa2b...81d8ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa8236e...e3db00` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xadeba4...e0bb27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae6277...bbfdf9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xafbc55...d542e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb04cc6...4868ee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1ace6...3e21a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb54f98...52521e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbe76cd...cba11c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcb6e2f...08b697` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcc2e62...fe937e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdbb8aa...723d36` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe539b9...e91186` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe8f12f...6c93bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf2feba...ab0252` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf426eb...feb8f8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf9c45c...511f45` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfacd20...75738c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xff6a0d...f238f1` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x240990...29b168` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 2 deployments: fantom `0x6d62d6...634d22`; fantom `0xedc790...138a3d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xbbbbbb...725f61` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit Report - Backstop Protocol [02.10.2020].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20Backstop%20Protocol%20%5B02.10.2020%5D.pdf) | Solidified | Audit | 2020-10 | stale | Direct | contract_name | 11 | high |
| [FPS_B.AMM_Liquity_Assessment_FINAL.pdf](https://github.com/Fixed-Point-Solutions/published-work/blob/master/SmartContractAudits/FPS_B.AMM_Liquity_Assessment_FINAL.pdf) | Fixed Point Solutions | Audit | 2021-07 | stale | Direct | contract_name | 1 | n/a |
| [FPS_B.AMM_Rari_Assessment_FINAL.pdf](https://github.com/Fixed-Point-Solutions/published-work/blob/master/SmartContractAudits/FPS_B.AMM_Rari_Assessment_FINAL.pdf) | Fixed Point Solutions | Audit | 2021-12 | stale | Direct | contract_name | 1 | n/a |
| [Audit Report - B-Protocol [16.02.2021].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20B-Protocol%20%5B16.02.2021%5D.pdf) | Solidified | Audit | 2021-02 | stale | Direct | contract_name | 7 | high |
| [Audit Report - B-Protocol [16.02.2021].pdf](https://github.com/solidified-platform/audits/blob/60778395ae2f78fc1caec0085bfa96c6f70c4573/Audit%20Report%20-%20B-Protocol%20%5B16.02.2021%5D.pdf) | Code4rena | Contest | 2021-02 | stale | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x24179c...83e007`](./contracts/ethereum-1/0x24179cd81c9e782a4096035f7ec97fb8b783e007/) | BorrowerOperations | core_logic | $4,002.72 | Verified native implementation with $4,002.72 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf9eb2...fe3d7f`](./contracts/ethereum-1/0xdf9eb223bafbe5c5271415c75aecd68c21fe3d7f/) | ActivePool | core_logic | $0.02 | Verified native implementation with $0.02 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d32e8...ce5521`](./contracts/ethereum-1/0x3d32e8b97ed5881324241cf03b2da5e2ebce5521/) | CollSurplusPool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeae019...bb5371`](./contracts/ethereum-1/0xeae019ef845a4ffdb8829210de5d30ac6fbb5371/) | BKeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbbbbbb...725f61`](./contracts/ethereum-1/0xbbbbbbb5aa847a2003fbc6b5c16df0bd1e725f61/) | BPRO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60312e...9b20cf`](./contracts/ethereum-1/0x60312e01a2acd1dac68838c949c1d20c609b20cf/) | BTVL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0f0dd6...b80d56`](./contracts/polygon-137/0x0f0dd66d2d6c1f3b140037018958164c6ab80d56/) | HundredBAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ab366...176bde`](./contracts/ethereum-1/0x0ab366dbbb03c84f581963a4cc0756eb66176bde/) | Pay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c6af4...54ea02`](./contracts/ethereum-1/0x2c6af48e01be6f96fb8ea19c76cb936bb554ea02/) | PBAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa39739...cf4bb2`](./contracts/ethereum-1/0xa39739ef8b0231dbfa0dcda07d7e29faabcf4bb2/) | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc507a2...288880`](./contracts/ethereum-1/0xc507a27860c225aad8cb4a5a32a44d8892288880/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 11 |
| standard_library | 1 |
| needs_review | 57 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=2, extraction_exact=25

Fork inheritance lineage and inherited audits are included when available.
