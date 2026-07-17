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
| BakeryToken | token | bsc | n/a | [`0xe02df9e3e622debdd69fb838bb799e3f168902c5`](./contracts/bsc-56/0xe02df9e3e622debdd69fb838bb799e3f168902c5/) | ⚠️ Unaudited |
| ArtworkNFT | token | bsc | n/a | [`0x5bc94e9347f3b9be8415bdfd24af16666704e44f`](./contracts/bsc-56/0x5bc94e9347f3b9be8415bdfd24af16666704e44f/) | ⚠️ Unaudited |
| BakeryMaster | unknown | bsc | n/a | [`0x20ec291bb8459b6145317e7126532ce7ece5056f`](./contracts/bsc-56/0x20ec291bb8459b6145317e7126532ce7ece5056f/) | ⚠️ Unaudited |
| BakerySwapFactory | registry | bsc | n/a | [`0x01bf7c66c6bd861915cdaae475042d3c4bae16a7`](./contracts/bsc-56/0x01bf7c66c6bd861915cdaae475042d3c4bae16a7/) | ⚠️ Unaudited |
| BakerySwapPair | unknown | bsc | n/a | 6 deployments: bsc [`0x2fc2ad3c28560c97caca6d2dcf9b38614f48769a`](./contracts/bsc-56/0x2fc2ad3c28560c97caca6d2dcf9b38614f48769a/); bsc `0x559e3d9611e9cb8a77c11335bdac49621382188b`; bsc `0x5fef671df9718934fda164da289374f675745d86`; bsc `0x6e218ea042bef40a8baf706b00d0f0a7b4fce50a`; bsc `0xc2eed0f5a0dc28cfa895084bc0a9b8b8279ae492`; bsc `0xfb72d7c0f1643c96c197a98e5f36ebcf7597d0e3` | ⚠️ Unaudited |
| BakerySwapRouter | adapter | bsc | n/a | [`0xcde540d7eafe93ac5fe6233bee57e1270d3e330f`](./contracts/bsc-56/0xcde540d7eafe93ac5fe6233bee57e1270d3e330f/) | ⚠️ Unaudited |
| BidNFT | unknown | bsc | n/a | [`0x3bd857648da97f3c395546e4f7f9fad3af29da33`](./contracts/bsc-56/0x3bd857648da97f3c395546e4f7f9fad3af29da33/) | ⚠️ Unaudited |
| CAR | unknown | bsc | n/a | [`0x176a25637e5078519230a4d80a7a47350940264a`](./contracts/bsc-56/0x176a25637e5078519230a4d80a7a47350940264a/) | ⚠️ Unaudited |
| CarNFT | token | bsc | n/a | [`0x1d09fc4b295a2fa6f0e2e64a345bae419eb04699`](./contracts/bsc-56/0x1d09fc4b295a2fa6f0e2e64a345bae419eb04699/) | ⚠️ Unaudited |
| CommonMaster | unknown | bsc | n/a | 13 deployments: bsc [`0x2560c6fcb1ee8ff76c512c366b1a9aba52a4e606`](./contracts/bsc-56/0x2560c6fcb1ee8ff76c512c366b1a9aba52a4e606/); bsc `0x4302b66b1b923171fbf44aea0ee5a21e687409ec`; bsc `0x4c496dd13c3ddfcee24657b655f047f528962e63`; bsc `0x4d6d2e3b419d324b77ddcaf3ff17a66c7d16e9f5`; bsc `0x62da74a42de360f1b5882d63e1e480fb80f0956f`; bsc `0x6a8dbbfbb5a57d07d14e63e757fb80b4a7494f81`; bsc `0x6bc509924953c7c7a5d433bcc0b4a96b6c7d61a4`; bsc `0x8d921e7dd43f3c567b6a814c796b9346c2d02eed`; bsc `0x99638fd577c22fc752b3734103933cf9835c5e02`; bsc `0x9c94e850db4371b38c00f60f9ce111694b212c30`; bsc `0xa9e34cb291b64d3ad56b365adde369f3ec04f7a8`; bsc `0xe6642f3de8c2efc7d2684cad7d9f010edbc4850b`; bsc `0xf5df2d28309095c5212f395a4b571cace5c2058c` | ⚠️ Unaudited |
| CommonMasterFactory | unknown | bsc | n/a | 2 deployments: bsc [`0x885d6c4e815ab079e07266110cf39558fd66c106`](./contracts/bsc-56/0x885d6c4e815ab079e07266110cf39558fd66c106/); bsc `0xdf2a7a6a2f2453f9b9ac5f7032d62cbc12b7fd93` | ⚠️ Unaudited |
| CommonStakeERC721EarnBake | unknown | bsc | n/a | 2 deployments: bsc [`0x72bec5f02813b194bd549658e59d62e28458a621`](./contracts/bsc-56/0x72bec5f02813b194bd549658e59d62e28458a621/); bsc `0x99cc4ec3a73b7191e5ad50811de3ff408d91b98d` | ⚠️ Unaudited |
| CommonStakeERC721EarnBakeFactory | unknown | bsc | n/a | 2 deployments: bsc [`0x596af07fb11f7ec4cd804ecc783064d28ec8b4ad`](./contracts/bsc-56/0x596af07fb11f7ec4cd804ecc783064d28ec8b4ad/); bsc `0x87020ed337f452b989958c4b685e07947656c60f` | ⚠️ Unaudited |
| MuskDogeNFT | token | bsc | n/a | [`0x1233b9f706cb9028a03b61af125cf1fe840cdbd3`](./contracts/bsc-56/0x1233b9f706cb9028a03b61af125cf1fe840cdbd3/) | ⚠️ Unaudited |
| OneInchBAKENFT | token | bsc | n/a | [`0x2b843942edf0040012b12be2b3c197ef53cab7f9`](./contracts/bsc-56/0x2b843942edf0040012b12be2b3c197ef53cab7f9/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x0276a023c74f02b83987b1a63c05ea70e8bf81b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0387d77eaaa60ca24e91371d9107337dd3b4a866` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08bfbe694933a4e41c3ea641e693194837f201e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09da17ac6dd4d8f105a25b0d7317ae8cd1082d53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0cd070e69b74bd3e3b2409d190e0223e1b0f9fe7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12fc003d0af44e8bab0500e78e7bc200604f40f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x138d1472a7fa6cf9487654b240f7aba6dd4de315` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x163454d6313dc09ed376da6760cbeea1efe2acf5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1868e925afe27f9c0cc3e980e8a63002d3408df7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19f8c3f6c3dfdb265770c23760960f5ffc349bca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1bb69841492a7542c8a7668efc7165e5198edc27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f26880843297a3d55e6b9a24d75bcbf09681cbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22631cdc909c406ca37eef547c05bd343ad57151` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28a93d5076ed975407cc007373474d5cacbe5352` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3cbb0e8743fadefc09c3bf7e0768896e7de53521` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45ac8b4f0aa8e363adff8b147d8dd303e7e29250` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x498a5e8a34a85845ded8869d5638b2e2ff91d979` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56b23525c355b9bb6da019ef4ec03013de8d9d3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5700dfdd0750aadf4803963865cb705300e388a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5bb23390369451ddbd85379cfdcd4de9c14f4399` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e860f81fcf6a655ce8daae944e35fef13422789` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x773028cd87f93dfa67e2f5fec01db4ea82cc4b07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c9378d17534a476d8741f26a46cbae1a0788bd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x888d8fdfec5f2321355cd91eb0a88047fa679d4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8fb398be7acb7110436749a394e3d672b8ddb2ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97abe5735576f54f51c3e33e7139596f83a71957` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a76f57cfb92435e7031654ac89892777e68ff6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa88b7c992e2aa3552fadc2f035767be76ea18400` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaad7ec98a58ef510516d517e80d438facd3070aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad4f4d895eeed0be9a7700c861098289d01690b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3a47a8e6abec8a6502f069c16b768dca5b31799` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb78976e42bfcc3613e511fd712bef56c0517acd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc15d077194d9db8206c9a80dc838183ce1ca7705` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc32ea351feeff02f422eef11794fe9d640ad28fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc921239c1b5dead79c889af1d9e006ef560fffea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca92d103259414018b7ea85cda66ebd53ae18c5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfb27c7f778780178e95fea84c45e5d79f0a0a4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5c260316ca43da64bb782af650f434f1333c72a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9cd74b2ac3084859dcb9df36ea0c43342271e2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda033c674bfd2d95e14b61ca2e6106528a848312` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4d3299b1a3c268814c57394c2a729feca3b2b00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe56a84ad93146ecb6486ec9c43e5c345e1084e70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7fc8165e3c66454639124a0d9ff8424c35b1fe8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xecc2b7d0d338653482ca293261a14c447071f0b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf10970552a9b60afbff90d97e5dcaf7565e4700c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/bakeryswap](https://skynet.certik.com/projects/bakeryswap) | CertiK | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xe02df9e3e622debdd69fb838bb799e3f168902c5`](./contracts/bsc-56/0xe02df9e3e622debdd69fb838bb799e3f168902c5/) | BakeryToken | token | $525,894.48 | Verified native implementation with $525,894.48 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5bc94e9347f3b9be8415bdfd24af16666704e44f`](./contracts/bsc-56/0x5bc94e9347f3b9be8415bdfd24af16666704e44f/) | ArtworkNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x20ec291bb8459b6145317e7126532ce7ece5056f`](./contracts/bsc-56/0x20ec291bb8459b6145317e7126532ce7ece5056f/) | BakeryMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01bf7c66c6bd861915cdaae475042d3c4bae16a7`](./contracts/bsc-56/0x01bf7c66c6bd861915cdaae475042d3c4bae16a7/) | BakerySwapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2fc2ad3c28560c97caca6d2dcf9b38614f48769a`](./contracts/bsc-56/0x2fc2ad3c28560c97caca6d2dcf9b38614f48769a/) | BakerySwapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcde540d7eafe93ac5fe6233bee57e1270d3e330f`](./contracts/bsc-56/0xcde540d7eafe93ac5fe6233bee57e1270d3e330f/) | BakerySwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3bd857648da97f3c395546e4f7f9fad3af29da33`](./contracts/bsc-56/0x3bd857648da97f3c395546e4f7f9fad3af29da33/) | BidNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x176a25637e5078519230a4d80a7a47350940264a`](./contracts/bsc-56/0x176a25637e5078519230a4d80a7a47350940264a/) | CAR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d09fc4b295a2fa6f0e2e64a345bae419eb04699`](./contracts/bsc-56/0x1d09fc4b295a2fa6f0e2e64a345bae419eb04699/) | CarNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2560c6fcb1ee8ff76c512c366b1a9aba52a4e606`](./contracts/bsc-56/0x2560c6fcb1ee8ff76c512c366b1a9aba52a4e606/) | CommonMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x885d6c4e815ab079e07266110cf39558fd66c106`](./contracts/bsc-56/0x885d6c4e815ab079e07266110cf39558fd66c106/) | CommonMasterFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x72bec5f02813b194bd549658e59d62e28458a621`](./contracts/bsc-56/0x72bec5f02813b194bd549658e59d62e28458a621/) | CommonStakeERC721EarnBake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x596af07fb11f7ec4cd804ecc783064d28ec8b4ad`](./contracts/bsc-56/0x596af07fb11f7ec4cd804ecc783064d28ec8b4ad/) | CommonStakeERC721EarnBakeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1233b9f706cb9028a03b61af125cf1fe840cdbd3`](./contracts/bsc-56/0x1233b9f706cb9028a03b61af125cf1fe840cdbd3/) | MuskDogeNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2b843942edf0040012b12be2b3c197ef53cab7f9`](./contracts/bsc-56/0x2b843942edf0040012b12be2b3c197ef53cab7f9/) | OneInchBAKENFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
