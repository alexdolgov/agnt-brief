# Agentic Audit Brief: XSY

## Project Overview

- Project: XSY (`xsy`)
- Website: [https://xsy.fi](https://xsy.fi)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:13.661Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: avalanche, base
- Contract surface: 41 unique implementations (66 raw deployments)
- DeFi Llama TVL: $20,971,047.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Basis Trading. Structurally: 11 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 6 functional families. Its contracts share 1 common project-authored base contract(s) (proxy). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 69; live-surface contracts included: 47 (31 live, 16 unknown).
- Excluded by liveness: 22 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/25 (4.0%)
- Deployed-live implementations: 28 of 41 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/28
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 41
- Raw deployments: 66
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 1 | 3.6% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Unity | unknown | avalanche | n/a | 2 deployments: avalanche [`0x639c72eea35e50f5e2911891389fc4e8422587c4`](./contracts/avalanche-43114/0x639c72eea35e50f5e2911891389fc4e8422587c4/); avalanche `0xdbc5192a6b6ffee7451301bb4ec312f844f02b4a` | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeaconProxy | registry | avalanche | n/a | 2 deployments: avalanche [`0x76de251bee4a3b902857f6a0fce8a320c4167e40`](./contracts/avalanche-43114/0x76de251bee4a3b902857f6a0fce8a320c4167e40/); avalanche `0x902714c7661697c873c76dec426b63b2593ecc0a` | ⚠️ Unaudited |
| ClPool | core_logic | avalanche | n/a | [`0xca7bd86983a2474f3c7cb45207bc16760cee07cf`](./contracts/avalanche-43114/0xca7bd86983a2474f3c7cb45207bc16760cee07cf/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | 3 deployments: avalanche [`0x2d2fbf1c72410c2d633986deb9262e0e201ffecf`](./contracts/avalanche-43114/0x2d2fbf1c72410c2d633986deb9262e0e201ffecf/); avalanche `0x3183236cdce208888c1857c2f718e3628c063b73`; avalanche `0x65a83c6a678f7849d3d3aeab6bbabe9ad1d33b6e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x495b2335367121e370ac13df6c656714660a4179`](./contracts/avalanche-43114/0x495b2335367121e370ac13df6c656714660a4179/); avalanche `0x9b9cf4f6255f6b451132bdf7a3682c7299d4c77a` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | avalanche | n/a | [`0x580d5e1399157fd0d58218b7a514b60974f2ab01`](./contracts/avalanche-43114/0x580d5e1399157fd0d58218b7a514b60974f2ab01/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x8b06453428d60c69bf4b55c0c556d67944a18924`](./contracts/avalanche-43114/0x8b06453428d60c69bf4b55c0c556d67944a18924/); avalanche `0xf8adf3fc13b50d840ad586490072ecbce7a401a9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | [`0x9cf467e119750e64dbe473aea83633019def51f8`](./contracts/avalanche-43114/0x9cf467e119750e64dbe473aea83633019def51f8/) | ⚠️ Unaudited |
| OFTExtended | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0df9b7e7573f301a21abdfa07b44790e9a0a0926`](./contracts/avalanche-43114/0x0df9b7e7573f301a21abdfa07b44790e9a0a0926/); avalanche `0x386cdf40bc7a2262769f2a5bbe5de4ee630737cd` | ⚠️ Unaudited |
| OFTExtended | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3c6594cc722df7c5517518aca90d04742d37587a`](./contracts/avalanche-43114/0x3c6594cc722df7c5517518aca90d04742d37587a/); avalanche `0xa6c1ba278406bae69b1eb77c95f0afc7ba59ce61` | ⚠️ Unaudited |
| OFTExtended | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3f64ed68e4cf48b36fad98b2534ea3719e025127`](./contracts/avalanche-43114/0x3f64ed68e4cf48b36fad98b2534ea3719e025127/); avalanche `0x5c5864c283e53caca9fe2488dd82948b04dadfcb` | ⚠️ Unaudited |
| OFTExtended | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6fc9da5039e336a99c47afceccd8bd276a16688f`](./contracts/avalanche-43114/0x6fc9da5039e336a99c47afceccd8bd276a16688f/); avalanche `0x94b639eb528b6076a8f10739c74849bd8692b950` | ⚠️ Unaudited |
| ShareOFTAdapter | unknown | base | n/a | 2 deployments: base [`0x163f7b2a5bc41ef60de77b0f3692225adceeb735`](./contracts/base-8453/0x163f7b2a5bc41ef60de77b0f3692225adceeb735/); base `0xa099f7e42c0cb56e24cc4d45f9c4f278b1d9f9bc` | ⚠️ Unaudited |
| ShareOFTAdapter | unknown | base | n/a | 2 deployments: base [`0x195edea3c7e1900eaffa9300cb7d55c8bfa6caa0`](./contracts/base-8453/0x195edea3c7e1900eaffa9300cb7d55c8bfa6caa0/); base `0xcfd564bbf4e50a248835ace8ca889f73217162d4` | ⚠️ Unaudited |
| ShareOFTAdapter | unknown | base | n/a | 2 deployments: base [`0x386cdf40bc7a2262769f2a5bbe5de4ee630737cd`](./contracts/base-8453/0x386cdf40bc7a2262769f2a5bbe5de4ee630737cd/); base `0x94b639eb528b6076a8f10739c74849bd8692b950` | ⚠️ Unaudited |
| ShareOFTAdapter | unknown | base | n/a | 2 deployments: base [`0x3f64ed68e4cf48b36fad98b2534ea3719e025127`](./contracts/base-8453/0x3f64ed68e4cf48b36fad98b2534ea3719e025127/); base `0x4906887b2702ced2a218b70c26045e376b17494d` | ⚠️ Unaudited |
| ShareOFTAdapter | unknown | base | n/a | 2 deployments: base [`0x8b6d04b43b908c5deaa7637c29ab0fbe6e00cc7d`](./contracts/base-8453/0x8b6d04b43b908c5deaa7637c29ab0fbe6e00cc7d/); base `0xc6fe7c5010621ab3ca5f4c018fad632f78b4d3f1` | ⚠️ Unaudited |
| ShareOFTAdapter | unknown | base | n/a | 2 deployments: base [`0xcdf104a5c87110052a82eeb4bd37dda7dff430ef`](./contracts/base-8453/0xcdf104a5c87110052a82eeb4bd37dda7dff430ef/); base `0xd4c4efa40ff8e5e8f46c43ad1daa69ff7d1bf132` | ⚠️ Unaudited |
| UTY | unknown | base | n/a | 2 deployments: base [`0x0df9b7e7573f301a21abdfa07b44790e9a0a0926`](./contracts/base-8453/0x0df9b7e7573f301a21abdfa07b44790e9a0a0926/); base `0x58803c3d2a237a8c0c9954381f7dedf8138f4d93` | ⚠️ Unaudited |
| UTY | unknown | base | n/a | 2 deployments: base [`0x3c6594cc722df7c5517518aca90d04742d37587a`](./contracts/base-8453/0x3c6594cc722df7c5517518aca90d04742d37587a/); base `0xa6c1ba278406bae69b1eb77c95f0afc7ba59ce61` | ⚠️ Unaudited |
| UTY | unknown | base | n/a | 2 deployments: base [`0xba515304d8153c4b162dc79f867e152df9c127eb`](./contracts/base-8453/0xba515304d8153c4b162dc79f867e152df9c127eb/); base `0xf2f6e1a62d3d1f0efb01c28e485f1dc8b173ce2b` | ⚠️ Unaudited |
| UTYVaultComposer | core_logic | base | n/a | [`0x2ef787561f3a79371ee1165b7bee6dc6ffb09832`](./contracts/base-8453/0x2ef787561f3a79371ee1165b7bee6dc6ffb09832/) | ⚠️ Unaudited |
| UTYVaultInterface | core_logic | avalanche | n/a | 2 deployments: avalanche [`0x110d9c781d30a99f61154b5d696772acc941a7fc`](./contracts/avalanche-43114/0x110d9c781d30a99f61154b5d696772acc941a7fc/); avalanche `0x6ee31bd34f28f3ecc4790c58ca50920af0b4d1d0` | ⚠️ Unaudited |
| UTYVaultInterface | unknown | avalanche | n/a | 2 deployments: avalanche [`0x163f7b2a5bc41ef60de77b0f3692225adceeb735`](./contracts/avalanche-43114/0x163f7b2a5bc41ef60de77b0f3692225adceeb735/); avalanche `0xa099f7e42c0cb56e24cc4d45f9c4f278b1d9f9bc` | ⚠️ Unaudited |
| UTYVaultInterface | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4906887b2702ced2a218b70c26045e376b17494d`](./contracts/avalanche-43114/0x4906887b2702ced2a218b70c26045e376b17494d/); avalanche `0xb422df4b86289a15913c035445a0754178c6f8ce` | ⚠️ Unaudited |
| yUTY | unknown | base | n/a | 2 deployments: base [`0x26e3b466395f47ed7529be5cfde46d106f83ce0c`](./contracts/base-8453/0x26e3b466395f47ed7529be5cfde46d106f83ce0c/); base `0xd84fdffd8e82c407b51ff2a763eb324014f61bbc` | ⚠️ Unaudited |
| yUTY | unknown | base | n/a | 2 deployments: base [`0x6fc9da5039e336a99c47afceccd8bd276a16688f`](./contracts/base-8453/0x6fc9da5039e336a99c47afceccd8bd276a16688f/); base `0xb422df4b86289a15913c035445a0754178c6f8ce` | ⚠️ Unaudited |
| yUTY | unknown | base | n/a | 2 deployments: base [`0xba515eed0119acb7cfe8fab3acd6b362f3ed5319`](./contracts/base-8453/0xba515eed0119acb7cfe8fab3acd6b362f3ed5319/); base `0xd41421777c9ddd46e29fd4180ae6e51b05c6063a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x00092f9869e8d06ba9429dd6cd14d381d87d42aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1694e3ca0da4a7834be1c36a90ea9c7a880326b1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x343ec8aeff5f1d7585d2ed593a354af5b39e27a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x35c590498df8e1efaed0b1b17f41994ce2dc7bc4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8d0652651d3e22f89dd2c2ecff46ad7dbfb4848e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb733ba2f92749f7f06150ec8dd7c58b1e0114173` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe352dc4e039a78dc25525c423e48a87178af9116` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb6d7d260b3b4dc01d71c6944702e8111c2e563b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdf290efb7c94328d58151539a54d0e820d8b23a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0a006ee1f6d72fa7d050ab6b841d8d17bccd359e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5c1b144d757fc0b24c48914d80fe7137f07df411` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x617777ffb344f385a9df922a37a8a4b67e4e0a23` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe67348d5517aa09c84daffbbd1028769fd344310` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/y666pAtApydsTORD7kHB/uploads/RdDHIS3o9qNSygkgXgcM/XSY x Quantstamp - Audit.pdf](https://1728001657-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fy666pAtApydsTORD7kHB%2Fuploads%2FRdDHIS3o9qNSygkgXgcM%2FXSY%20x%20Quantstamp%20-%20Audit.pdf) | Quantstamp | Audit | 2025-03 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xca7bd86983a2474f3c7cb45207bc16760cee07cf`](./contracts/avalanche-43114/0xca7bd86983a2474f3c7cb45207bc16760cee07cf/) | ClPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0df9b7e7573f301a21abdfa07b44790e9a0a0926`](./contracts/avalanche-43114/0x0df9b7e7573f301a21abdfa07b44790e9a0a0926/) | OFTExtended | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3c6594cc722df7c5517518aca90d04742d37587a`](./contracts/avalanche-43114/0x3c6594cc722df7c5517518aca90d04742d37587a/) | OFTExtended | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3f64ed68e4cf48b36fad98b2534ea3719e025127`](./contracts/avalanche-43114/0x3f64ed68e4cf48b36fad98b2534ea3719e025127/) | OFTExtended | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6fc9da5039e336a99c47afceccd8bd276a16688f`](./contracts/avalanche-43114/0x6fc9da5039e336a99c47afceccd8bd276a16688f/) | OFTExtended | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x163f7b2a5bc41ef60de77b0f3692225adceeb735`](./contracts/base-8453/0x163f7b2a5bc41ef60de77b0f3692225adceeb735/) | ShareOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x195edea3c7e1900eaffa9300cb7d55c8bfa6caa0`](./contracts/base-8453/0x195edea3c7e1900eaffa9300cb7d55c8bfa6caa0/) | ShareOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x386cdf40bc7a2262769f2a5bbe5de4ee630737cd`](./contracts/base-8453/0x386cdf40bc7a2262769f2a5bbe5de4ee630737cd/) | ShareOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3f64ed68e4cf48b36fad98b2534ea3719e025127`](./contracts/base-8453/0x3f64ed68e4cf48b36fad98b2534ea3719e025127/) | ShareOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8b6d04b43b908c5deaa7637c29ab0fbe6e00cc7d`](./contracts/base-8453/0x8b6d04b43b908c5deaa7637c29ab0fbe6e00cc7d/) | ShareOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcdf104a5c87110052a82eeb4bd37dda7dff430ef`](./contracts/base-8453/0xcdf104a5c87110052a82eeb4bd37dda7dff430ef/) | ShareOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0df9b7e7573f301a21abdfa07b44790e9a0a0926`](./contracts/base-8453/0x0df9b7e7573f301a21abdfa07b44790e9a0a0926/) | UTY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3c6594cc722df7c5517518aca90d04742d37587a`](./contracts/base-8453/0x3c6594cc722df7c5517518aca90d04742d37587a/) | UTY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xba515304d8153c4b162dc79f867e152df9c127eb`](./contracts/base-8453/0xba515304d8153c4b162dc79f867e152df9c127eb/) | UTY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ef787561f3a79371ee1165b7bee6dc6ffb09832`](./contracts/base-8453/0x2ef787561f3a79371ee1165b7bee6dc6ffb09832/) | UTYVaultComposer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x110d9c781d30a99f61154b5d696772acc941a7fc`](./contracts/avalanche-43114/0x110d9c781d30a99f61154b5d696772acc941a7fc/) | UTYVaultInterface | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x163f7b2a5bc41ef60de77b0f3692225adceeb735`](./contracts/avalanche-43114/0x163f7b2a5bc41ef60de77b0f3692225adceeb735/) | UTYVaultInterface | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4906887b2702ced2a218b70c26045e376b17494d`](./contracts/avalanche-43114/0x4906887b2702ced2a218b70c26045e376b17494d/) | UTYVaultInterface | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x26e3b466395f47ed7529be5cfde46d106f83ce0c`](./contracts/base-8453/0x26e3b466395f47ed7529be5cfde46d106f83ce0c/) | yUTY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6fc9da5039e336a99c47afceccd8bd276a16688f`](./contracts/base-8453/0x6fc9da5039e336a99c47afceccd8bd276a16688f/) | yUTY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xba515eed0119acb7cfe8fab3acd6b362f3ed5319`](./contracts/base-8453/0xba515eed0119acb7cfe8fab3acd6b362f3ed5319/) | yUTY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
