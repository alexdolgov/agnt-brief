# Agentic Audit Brief: bounce-finance

## Project Overview

- Project: bounce-finance (`bounce-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:07.799Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 19 unique implementations (19 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 19 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 7 common project-authored base contract(s) (proxy, erc1967upgrade, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/11 (18.2%)
- Deployed-live implementations: 19 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/19
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 19
- Raw deployments: 19
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 10.5% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BounceDutchAuction | unknown | ethereum | n/a | [`0xf9b72d...ed88d1`](./contracts/ethereum-1/0xf9b72d232a7493b9ea352df0d0f2ee6f85ed88d1/) | ✅ Audited |
| BounceFixedSwap | unknown | ethereum | n/a | [`0x9706b1...e96701`](./contracts/ethereum-1/0x9706b14828dae737cdcb1231d1ce499598e96701/) | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x175e04...b3defe`](./contracts/ethereum-1/0x175e04bcb90c8744903307517a9812b408b3defe/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x2b251f...a418eb`](./contracts/ethereum-1/0x2b251f570614d8e11a77e539e0d38955cda418eb/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x2da357...591844`](./contracts/ethereum-1/0x2da357e40db4544f2f5bf6541a82f0b02b591844/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x315eb3...02541a`](./contracts/ethereum-1/0x315eb39921f2499ef698de3ddeec63219c02541a/) | ⚠️ Unaudited |
| BounceAuctionToken | unknown | ethereum | n/a | [`0xa9b1eb...009096`](./contracts/ethereum-1/0xa9b1eb5908cfc3cdf91f9b8b3a74108598009096/) | ⚠️ Unaudited |
| BounceERC1155WithSign | unknown | ethereum | n/a | [`0x2b7cd7...4fe60a`](./contracts/ethereum-1/0x2b7cd781b2dff89cdcf3067015f2f961a84fe60a/) | ⚠️ Unaudited |
| BounceERC20 | unknown | ethereum | n/a | [`0x25a836...017325`](./contracts/ethereum-1/0x25a836dcbd78dcc9d29feb8010424c2e56017325/) | ⚠️ Unaudited |
| BounceERC721WithSign | unknown | ethereum | n/a | [`0x03c9fe...95eeb0`](./contracts/ethereum-1/0x03c9fea061d38482e7a908ed7d99017d3a95eeb0/) | ⚠️ Unaudited |
| BounceFixedEndEnglishAuctionNFT | unknown | ethereum | n/a | [`0x74853b...019c1d`](./contracts/ethereum-1/0x74853b64b97b36637f9e47057eac530396019c1d/) | ⚠️ Unaudited |
| BounceFixedEndEnglishAuctionNFTV2 | unknown | ethereum | n/a | [`0x2a732e...03ce52`](./contracts/ethereum-1/0x2a732eb3296d0c6668555ced40f98b747e03ce52/) | ⚠️ Unaudited |
| BounceNFT | unknown | ethereum | n/a | [`0x342007...572d3e`](./contracts/ethereum-1/0x342007dfd25f7affa5dfc740a9f62dcdde572d3e/) | ⚠️ Unaudited |
| BounceNFTFactoryV2 | unknown | ethereum | n/a | [`0x8b7dc3...e785f9`](./contracts/ethereum-1/0x8b7dc331e25763dccfa077c96f6e6e9626e785f9/) | ⚠️ Unaudited |
| LiquidityPool | unknown | ethereum | n/a | [`0x931091...db1470`](./contracts/ethereum-1/0x9310919982e4a330f4ea04515e56651985db1470/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x075879...cc13c9`](./contracts/ethereum-1/0x075879e395ac48712471f3d9db26f64ccdcc13c9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x00b206...12ad74`](./contracts/ethereum-1/0x00b206d351c2c40a69865fd0f53f9530d412ad74/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x06b42a...667484`](./contracts/ethereum-1/0x06b42a41c766b1e1278b2525b27948e52d667484/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xab2b1a...d75d52`](./contracts/ethereum-1/0xab2b1acd09da1b31971ef3c4045f7e9a39d75d52/) | ⚠️ Unaudited |

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
| [spaces/NyEMlVfYL7xZhAA9xrd7/uploads/bZOK42RG1dNO02xiChbT/BOUNCE _AuditReport V2.pdf](https://2710409920-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FNyEMlVfYL7xZhAA9xrd7%2Fuploads%2FbZOK42RG1dNO02xiChbT%2FBOUNCE%20_AuditReport%20V2.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa9b1eb...009096`](./contracts/ethereum-1/0xa9b1eb5908cfc3cdf91f9b8b3a74108598009096/) | BounceAuctionToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b7cd7...4fe60a`](./contracts/ethereum-1/0x2b7cd781b2dff89cdcf3067015f2f961a84fe60a/) | BounceERC1155WithSign | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25a836...017325`](./contracts/ethereum-1/0x25a836dcbd78dcc9d29feb8010424c2e56017325/) | BounceERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03c9fe...95eeb0`](./contracts/ethereum-1/0x03c9fea061d38482e7a908ed7d99017d3a95eeb0/) | BounceERC721WithSign | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74853b...019c1d`](./contracts/ethereum-1/0x74853b64b97b36637f9e47057eac530396019c1d/) | BounceFixedEndEnglishAuctionNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a732e...03ce52`](./contracts/ethereum-1/0x2a732eb3296d0c6668555ced40f98b747e03ce52/) | BounceFixedEndEnglishAuctionNFTV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x342007...572d3e`](./contracts/ethereum-1/0x342007dfd25f7affa5dfc740a9f62dcdde572d3e/) | BounceNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b7dc3...e785f9`](./contracts/ethereum-1/0x8b7dc331e25763dccfa077c96f6e6e9626e785f9/) | BounceNFTFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x931091...db1470`](./contracts/ethereum-1/0x9310919982e4a330f4ea04515e56651985db1470/) | LiquidityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
