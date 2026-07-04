# Agentic Audit Brief: InsurAce

## Project Overview

- Project: InsurAce (`insurace`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:01.339Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: avalanche, bsc, ethereum, polygon
- Contract surface: 23 unique implementations (23 raw deployments)
- DeFi Llama TVL: $129,198.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Insurance. Structurally: 23 project-authored contract(s) across 4 chain(s); 4 ERC20 tokens, 1 ERC721 NFT, 2 ERC1155 multi-tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (upgradeabilityproxy, proxy, accesscontrolmixin). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 23; live-surface contracts included: 23 (23 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/23 (0.0%)
- Deployed-live implementations: 23 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 23
- Raw deployments: 23
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0x077eb6...ab4ae4`](./contracts/ethereum-1/0x077eb6ccc4d42e4d9adec63fa103c7a528ab4ae4/) | ⚠️ Unaudited |
| CapitalPool | unknown | bsc | n/a | [`0x4f56f9...0d944c`](./contracts/bsc-56/0x4f56f984cdff3f1a3a5300ff4493e372290d944c/) | ⚠️ Unaudited |
| ChildERC1155 | unknown | polygon | n/a | [`0xd841b4...95e039`](./contracts/polygon-137/0xd841b4a74867a4e92c1627c8f99a717d0795e039/) | ⚠️ Unaudited |
| ChildERC721 | unknown | polygon | n/a | [`0x0119fd...d06dd5`](./contracts/polygon-137/0x0119fd9592d7acea88c9b0d04b794a82bed06dd5/) | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | polygon | n/a | [`0xbda641...3fdbb6`](./contracts/polygon-137/0xbda6415502b0ddab9eda1d09f4f16286273fdbb6/) | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | polygon | n/a | [`0x07280d...3952ea`](./contracts/polygon-137/0x07280d3143311b012ad268a74f2aa791713952ea/) | ⚠️ Unaudited |
| ClaimAssessor | unknown | ethereum | n/a | [`0x230648...edb988`](./contracts/ethereum-1/0x230648b346f96986712e81646fb8033432edb988/) | ⚠️ Unaudited |
| Cover | unknown | ethereum | n/a | [`0x05dc45...f520b3`](./contracts/ethereum-1/0x05dc45b1c03657d141696aae0211c84818f520b3/) | ⚠️ Unaudited |
| CoverCancellation | unknown | polygon | n/a | [`0x07b13a...a47c6f`](./contracts/polygon-137/0x07b13a8678a116c644f6359dcb9f2f17afa47c6f/) | ⚠️ Unaudited |
| CoverPurchase | unknown | avalanche | n/a | [`0x04fa84...de930a`](./contracts/avalanche-43114/0x04fa84ad4a37b159cc0a3a4a9385b5f0bcde930a/) | ⚠️ Unaudited |
| HelloWorld | unknown | polygon | n/a | [`0x04de5e...7d1f98`](./contracts/polygon-137/0x04de5e721ae1ecc1d637d29c2562c9700d7d1f98/) | ⚠️ Unaudited |
| InsurAceRenounceINSUROwnership | unknown | ethereum | n/a | [`0x4c702f...95a8e7`](./contracts/ethereum-1/0x4c702f586e3827f27f4cfd94c992bd61ad95a8e7/) | ⚠️ Unaudited |
| InsurAceToken | unknown | ethereum | n/a | [`0x1452b5...d91cbe`](./contracts/ethereum-1/0x1452b535ebeb212026f77511147dfdc821d91cbe/) | ⚠️ Unaudited |
| LPToken | unknown | ethereum | n/a | [`0x07d8d4...1ca00b`](./contracts/ethereum-1/0x07d8d49c5751566962a5169a9c8efdf64d1ca00b/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | [`0x031c83...b0f1aa`](./contracts/polygon-137/0x031c832caa8f91040374799528ec446017b0f1aa/) | ⚠️ Unaudited |
| RewardController | unknown | bsc | n/a | [`0x345518...ce98a0`](./contracts/bsc-56/0x345518162d4afd5bdcf73ee8175e2dbd6bce98a0/) | ⚠️ Unaudited |
| StakersPoolV2 | unknown | ethereum | n/a | [`0x136d84...b93209`](./contracts/ethereum-1/0x136d841d4bece3fc0e4debb94356d8b6b4b93209/) | ⚠️ Unaudited |
| StakingV2Controller | unknown | ethereum | n/a | [`0x05f787...577119`](./contracts/ethereum-1/0x05f787b1147b0a9eae5acdcdb2ae905ac0577119/) | ⚠️ Unaudited |
| Transfer | unknown | polygon | n/a | [`0xfa38b8...e50698`](./contracts/polygon-137/0xfa38b8632153b2d083a94590e577298c0ae50698/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0570d8...28c07d`](./contracts/ethereum-1/0x0570d8f9fa154b182a537798a2f5cd14c728c07d/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | [`0x002e97...5d8dbb`](./contracts/polygon-137/0x002e97b041e42697def62afab53c99c1dd5d8dbb/) | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | polygon | n/a | [`0x000de6...6ec08c`](./contracts/polygon-137/0x000de668684839f97d4845f32a43e913366ec08c/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x169bf7...16e33b`](./contracts/ethereum-1/0x169bf778a5eadab0209c0524ea5ce8e7a616e33b/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
