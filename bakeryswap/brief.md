# Agentic Audit Brief: BakerySwap

⚠️ Lifecycle status: DECLINING - TVL dropped 17.1% over 90 days

## Project Overview

- Project: BakerySwap (`bakeryswap`)
- Lifecycle: declining (Tier 0, 98.7% below peak)
- Generated: 2026-07-04T14:53:05.191Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: bsc
- Contract surface: 60 unique implementations (80 raw deployments)
- DeFi Llama TVL: $2,768,926.96
- On-chain TVL (included contracts): $525,894.48
- TVL by chain: Bsc $525,894.48

## Project Description

Dexs. Structurally: 56 project-authored contract(s) across 1 chain(s); 12 ERC20 tokens, 11 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 11 common project-authored base contract(s) (erc721holder, proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 192; live-surface contracts included: 80 (34 live, 46 unknown).
- Excluded by liveness: 112 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/14 (0.0%)
- Deployed-live implementations: 14 of 60 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 45
- Unique implementations: 60
- Raw deployments: 80
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $525,894.48
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $525,894.48 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BakeryToken | token | bsc | n/a | [`0xe02df9...8902c5`](./contracts/bsc-56/0xe02df9e3e622debdd69fb838bb799e3f168902c5/) | ⚠️ Unaudited |
| ArtworkNFT | token | bsc | n/a | [`0x5bc94e...04e44f`](./contracts/bsc-56/0x5bc94e9347f3b9be8415bdfd24af16666704e44f/) | ⚠️ Unaudited |
| BakeryMaster | unknown | bsc | n/a | [`0x20ec29...e5056f`](./contracts/bsc-56/0x20ec291bb8459b6145317e7126532ce7ece5056f/) | ⚠️ Unaudited |
| BakerySwapFactory | registry | bsc | n/a | [`0x01bf7c...ae16a7`](./contracts/bsc-56/0x01bf7c66c6bd861915cdaae475042d3c4bae16a7/) | ⚠️ Unaudited |
| BakerySwapPair | unknown | bsc | n/a | 6 deployments: bsc [`0x2fc2ad...48769a`](./contracts/bsc-56/0x2fc2ad3c28560c97caca6d2dcf9b38614f48769a/); bsc `0x559e3d...82188b`; bsc `0x5fef67...745d86`; bsc `0x6e218e...fce50a`; bsc `0xc2eed0...9ae492`; bsc `0xfb72d7...97d0e3` | ⚠️ Unaudited |
| BakerySwapRouter | adapter | bsc | n/a | [`0xcde540...3e330f`](./contracts/bsc-56/0xcde540d7eafe93ac5fe6233bee57e1270d3e330f/) | ⚠️ Unaudited |
| BidNFT | unknown | bsc | n/a | [`0x3bd857...29da33`](./contracts/bsc-56/0x3bd857648da97f3c395546e4f7f9fad3af29da33/) | ⚠️ Unaudited |
| CAR | unknown | bsc | n/a | [`0x176a25...40264a`](./contracts/bsc-56/0x176a25637e5078519230a4d80a7a47350940264a/) | ⚠️ Unaudited |
| CarNFT | token | bsc | n/a | [`0x1d09fc...b04699`](./contracts/bsc-56/0x1d09fc4b295a2fa6f0e2e64a345bae419eb04699/) | ⚠️ Unaudited |
| CommonMaster | unknown | bsc | n/a | 13 deployments: bsc [`0x2560c6...a4e606`](./contracts/bsc-56/0x2560c6fcb1ee8ff76c512c366b1a9aba52a4e606/); bsc `0x4302b6...7409ec`; bsc `0x4c496d...962e63`; bsc `0x4d6d2e...16e9f5`; bsc `0x62da74...f0956f`; bsc `0x6a8dbb...494f81`; bsc `0x6bc509...7d61a4`; bsc `0x8d921e...d02eed`; bsc `0x99638f...5c5e02`; bsc `0x9c94e8...212c30`; bsc `0xa9e34c...04f7a8`; bsc `0xe6642f...c4850b`; bsc `0xf5df2d...c2058c` | ⚠️ Unaudited |
| CommonMasterFactory | unknown | bsc | n/a | 2 deployments: bsc [`0x885d6c...66c106`](./contracts/bsc-56/0x885d6c4e815ab079e07266110cf39558fd66c106/); bsc `0xdf2a7a...b7fd93` | ⚠️ Unaudited |
| CommonStakeERC721EarnBake | unknown | bsc | n/a | 2 deployments: bsc [`0x72bec5...58a621`](./contracts/bsc-56/0x72bec5f02813b194bd549658e59d62e28458a621/); bsc `0x99cc4e...91b98d` | ⚠️ Unaudited |
| CommonStakeERC721EarnBakeFactory | unknown | bsc | n/a | 2 deployments: bsc [`0x596af0...c8b4ad`](./contracts/bsc-56/0x596af07fb11f7ec4cd804ecc783064d28ec8b4ad/); bsc `0x87020e...56c60f` | ⚠️ Unaudited |
| MuskDogeNFT | token | bsc | n/a | [`0x1233b9...0cdbd3`](./contracts/bsc-56/0x1233b9f706cb9028a03b61af125cf1fe840cdbd3/) | ⚠️ Unaudited |
| OneInchBAKENFT | token | bsc | n/a | [`0x2b8439...cab7f9`](./contracts/bsc-56/0x2b843942edf0040012b12be2b3c197ef53cab7f9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (45)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0276a0...bf81b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0387d7...b4a866` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08bfbe...f201e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09da17...082d53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0cd070...0f9fe7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12fc00...4f40f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x138d14...4de315` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x163454...e2acf5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1868e9...408df7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19f8c3...349bca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1bb698...8edc27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f2688...681cbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22631c...d57151` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28a93d...be5352` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3cbb0e...e53521` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45ac8b...e29250` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x498a5e...91d979` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56b235...8d9d3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5700df...e388a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5bb233...4f4399` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e860f...422789` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x773028...cc4b07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c9378...788bd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x888d8f...679d4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8fb398...ddb2ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97abe5...a71957` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a76f5...68ff6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa88b7c...a18400` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaad7ec...3070aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad4f4d...1690b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3a47a...b31799` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb78976...17acd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc15d07...ca7705` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc32ea3...ad28fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc92123...0fffea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca92d1...e18c5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfb27c...0a0a4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5c260...33c72a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9cd74...271e2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda033c...848312` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4d329...3b2b00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe56a84...084e70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7fc81...5b1fe8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xecc2b7...71f0b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf10970...e4700c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/bakeryswap](https://skynet.certik.com/projects/bakeryswap) | CertiK | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xe02df9...8902c5`](./contracts/bsc-56/0xe02df9e3e622debdd69fb838bb799e3f168902c5/) | BakeryToken | token | $525,894.48 | Verified native implementation with $525,894.48 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5bc94e...04e44f`](./contracts/bsc-56/0x5bc94e9347f3b9be8415bdfd24af16666704e44f/) | ArtworkNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20ec29...e5056f`](./contracts/bsc-56/0x20ec291bb8459b6145317e7126532ce7ece5056f/) | BakeryMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01bf7c...ae16a7`](./contracts/bsc-56/0x01bf7c66c6bd861915cdaae475042d3c4bae16a7/) | BakerySwapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2fc2ad...48769a`](./contracts/bsc-56/0x2fc2ad3c28560c97caca6d2dcf9b38614f48769a/) | BakerySwapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcde540...3e330f`](./contracts/bsc-56/0xcde540d7eafe93ac5fe6233bee57e1270d3e330f/) | BakerySwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3bd857...29da33`](./contracts/bsc-56/0x3bd857648da97f3c395546e4f7f9fad3af29da33/) | BidNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x176a25...40264a`](./contracts/bsc-56/0x176a25637e5078519230a4d80a7a47350940264a/) | CAR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d09fc...b04699`](./contracts/bsc-56/0x1d09fc4b295a2fa6f0e2e64a345bae419eb04699/) | CarNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2560c6...a4e606`](./contracts/bsc-56/0x2560c6fcb1ee8ff76c512c366b1a9aba52a4e606/) | CommonMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x885d6c...66c106`](./contracts/bsc-56/0x885d6c4e815ab079e07266110cf39558fd66c106/) | CommonMasterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x72bec5...58a621`](./contracts/bsc-56/0x72bec5f02813b194bd549658e59d62e28458a621/) | CommonStakeERC721EarnBake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x596af0...c8b4ad`](./contracts/bsc-56/0x596af07fb11f7ec4cd804ecc783064d28ec8b4ad/) | CommonStakeERC721EarnBakeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1233b9...0cdbd3`](./contracts/bsc-56/0x1233b9f706cb9028a03b61af125cf1fe840cdbd3/) | MuskDogeNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2b8439...cab7f9`](./contracts/bsc-56/0x2b843942edf0040012b12be2b3c197ef53cab7f9/) | OneInchBAKENFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2736] skynet.certik.com/projects/bakeryswap

Fork inheritance lineage and inherited audits are included when available.
