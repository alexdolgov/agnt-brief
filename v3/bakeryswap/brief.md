# Agentic Audit Brief: BakerySwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: DECLINING - TVL dropped 17.1% over 90 days

## Project Overview

- Project: BakerySwap (`bakeryswap`)
- Website: [https://www.bakeryswap.org/](https://www.bakeryswap.org/)
- Lifecycle: declining (Tier 0, 98.7% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 103 unique implementations (192 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,768,926.96
- On-chain TVL (included contracts): $525,894.48
- TVL by chain: Bsc $525,894.48

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for BakerySwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BakeryToken (`0xe02df9e3e622debdd69fb838bb799e3f168902c5`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 102 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Confirmed-live implementations: 1 of 103 unique; 102 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/69
- Verified + Unaudited implementations: 69
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 103
- Raw deployments: 192
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

### ⚠️ Verified + Unaudited (69)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BakeryToken | token | project_anchor | own_supporting | 0 | bsc | unit-380102 | `0xe02df9e3e622debdd69fb838bb799e3f168902c5` | ⚠️ Unaudited |
| ArtworkBatchMintProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38ad969abc67644ceca1cf43f89a834474d435d7` | ⚠️ Unaudited |
| ArtworkNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bc94e9347f3b9be8415bdfd24af16666704e44f` | ⚠️ Unaudited |
| BakeBaseIdo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x005c66a027176e1adf14d7e09c19a065504559e2`; bsc `0x03f100c7ebe487d23f5adb4218e5eb7191000142`; bsc `0x1e7d519295065da7e836e5cc71f96ea39158a774`; bsc `0x37453bf4e9d697d4dbd4d8c4f65dbeee0c379e69`; bsc `0x9e38dfed96ce63984d532f94b0990ba3549f3070`; bsc `0xbe687e3ebcc3c9ef56d01f048000522759257256`; bsc `0xe9dcd922e37d7066e2767db77c5653d74f519a62` | ⚠️ Unaudited |
| BakeBaseIdo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x78ed8ca3f28f8c0b5f4038fd8e81df54c31bd07b`; bsc `0x792cc1257fad723203d12e94af43fc6b6d6d27e2` | ⚠️ Unaudited |
| BakeBaseIdo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8738204d9accd85770dd6534d3bc4abd8c7c1e65`; bsc `0xb535d44d16e7cdef51d568539e8da80cf4a0b6a1` | ⚠️ Unaudited |
| BakeBaseMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa1d32a36be24db1c7ae4bee451db14f089f2f235`; bsc `0xed8732d98adb5591e9fc9a15bba7a345b78b3e0e` | ⚠️ Unaudited |
| BakeryActivityToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95c420be059081a2bf8c310d23aae74f009b9a62` | ⚠️ Unaudited |
| BakeryAnniversary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d866e548392765982a5859e15725215f3175c2e` | ⚠️ Unaudited |
| BakeryDestroyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x732b6620d3469204bcc6f44c0b40cd8c4bafc747` | ⚠️ Unaudited |
| BakeryMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20ec291bb8459b6145317e7126532ce7ece5056f` | ⚠️ Unaudited |
| BakeryReserveToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x418c990067accb63357533e23def90af83169ed3` | ⚠️ Unaudited |
| BakerySwapFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01bf7c66c6bd861915cdaae475042d3c4bae16a7` | ⚠️ Unaudited |
| BakerySwapPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x2fc2ad3c28560c97caca6d2dcf9b38614f48769a`; bsc `0x559e3d9611e9cb8a77c11335bdac49621382188b`; bsc `0x5fef671df9718934fda164da289374f675745d86`; bsc `0x6e218ea042bef40a8baf706b00d0f0a7b4fce50a`; bsc `0xc2eed0f5a0dc28cfa895084bc0a9b8b8279ae492`; bsc `0xfb72d7c0f1643c96c197a98e5f36ebcf7597d0e3` | ⚠️ Unaudited |
| BakerySwapPairHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x091307ff8910713aaf2ff4ad3a5f6e1d2b7100c7` | ⚠️ Unaudited |
| BakerySwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcde540d7eafe93ac5fe6233bee57e1270d3e330f` | ⚠️ Unaudited |
| BakeryVoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x382d04194e3607dab5ebaa5b9f8011a4c06e8b17` | ⚠️ Unaudited |
| BidNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 17 deployments: bsc `0x01fa298fa3a507048d16dc6669a4ba22fd9f0e55`; bsc `0x055930e510a331c448ce92d2a85f984aba177fbb`; bsc `0x0c7ab53232da9a525ee93d20fd0be256f512cf8e`; bsc `0x1927203b5e516d40864f55474f6f3431fab442af`; bsc `0x2d01300340bf6bfad0d7f830102188d6291ddc15`; bsc `0x35996ad8844407f9ddd5d3dec8238f703364306f`; bsc `0x3bd857648da97f3c395546e4f7f9fad3af29da33`; bsc `0x437bf818ae0b62c0e1ad823877e2e5c25d07682b`; bsc `0x4ab5d6a60fab7603a9ea372f7721a2f6c931ba70`; bsc `0x585fd9d48ae08152beb0f001781cd20ca30184d4`; bsc `0x616ea437dfbf929ef49116614f6b2b610f48b0ae`; bsc `0x61e9181e7fece6e2a79e1abff71acb99bd98e3e3`; bsc `0xe84e73889cdf43dbb57ffee42dc0615eb244891e`; bsc `0xe98631ce5ccf1e9ef1638a76c78702a384a79e29`; bsc `0xea8683ed461ed504f08078903c2c89ee5f40a8a7`; bsc `0xebead42e26bd602b668135e329657239b866733a`; bsc `0xef44a8d2830dfac64a7493ae60850cfb950567e1` | ⚠️ Unaudited |
| CAR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x176a25637e5078519230a4d80a7a47350940264a` | ⚠️ Unaudited |
| CarBlindBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0628cfc88518ccee96ef7bdfed8b4ac8708cad88`; bsc `0x74db53381015ac19301eebdbd17e719655e32e40` | ⚠️ Unaudited |
| CarNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d09fc4b295a2fa6f0e2e64a345bae419eb04699` | ⚠️ Unaudited |
| CarNFTStakingPowerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0e90bdabb28908c9d9419e58c658f20e60ba3aa` | ⚠️ Unaudited |
| CommonMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 13 deployments: bsc `0x2560c6fcb1ee8ff76c512c366b1a9aba52a4e606`; bsc `0x4302b66b1b923171fbf44aea0ee5a21e687409ec`; bsc `0x4c496dd13c3ddfcee24657b655f047f528962e63`; bsc `0x4d6d2e3b419d324b77ddcaf3ff17a66c7d16e9f5`; bsc `0x62da74a42de360f1b5882d63e1e480fb80f0956f`; bsc `0x6a8dbbfbb5a57d07d14e63e757fb80b4a7494f81`; bsc `0x6bc509924953c7c7a5d433bcc0b4a96b6c7d61a4`; bsc `0x8d921e7dd43f3c567b6a814c796b9346c2d02eed`; bsc `0x99638fd577c22fc752b3734103933cf9835c5e02`; bsc `0x9c94e850db4371b38c00f60f9ce111694b212c30`; bsc `0xa9e34cb291b64d3ad56b365adde369f3ec04f7a8`; bsc `0xe6642f3de8c2efc7d2684cad7d9f010edbc4850b`; bsc `0xf5df2d28309095c5212f395a4b571cace5c2058c` | ⚠️ Unaudited |
| CommonMasterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1307c3c5e28d41cc1e8ff977fb9146b419a6dd9c`; bsc `0x6cf0c52888a3965580b762a20adc7773665ea3eb`; bsc `0x885d6c4e815ab079e07266110cf39558fd66c106`; bsc `0xdf2a7a6a2f2453f9b9ac5f7032d62cbc12b7fd93` | ⚠️ Unaudited |
| CommonNftMasterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03b3d5973cac451a63869714e56482d6c97f63c6` | ⚠️ Unaudited |
| CommonStakeERC721EarnBake | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x72bec5f02813b194bd549658e59d62e28458a621`; bsc `0xc137699f44f868f904d41db999d754ed2c135f51` | ⚠️ Unaudited |
| CommonStakeERC721EarnBake | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99cc4ec3a73b7191e5ad50811de3ff408d91b98d` | ⚠️ Unaudited |
| CommonStakeERC721EarnBakeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x596af07fb11f7ec4cd804ecc783064d28ec8b4ad`; bsc `0x87020ed337f452b989958c4b685e07947656c60f` | ⚠️ Unaudited |
| CommonStakeERC721EarnERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xb14b6c30ce2044e8e762170d985b510e983cc455`; bsc `0xf7f10bead8f9ab2299413002f1650099d4135635` | ⚠️ Unaudited |
| CommonStakeERC721EarnERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x543229590b6b6c7c7250ec19aad8bb2552b6196a`; bsc `0xe9d116fad148ace99e4ae081c4fcac1e62f1dd9b` | ⚠️ Unaudited |
| DefaultGetStakingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f0c92c93b23c6cee3e0744b420c525b932a8b99` | ⚠️ Unaudited |
| DishMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7145319189629afcf31754d8ac459265fca4cf91` | ⚠️ Unaudited |
| DishNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x51efe1de415115bbedd39771405e619ef3aa7e2e`; bsc `0xa7463c3163962b12aeb623147c2043bb54834962` | ⚠️ Unaudited |
| DishStakingPowerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x169895db3270b3df63782bd3c7f758710b886f65`; bsc `0x54f135a5fb523e467bcd6aa934939e1f25382275` | ⚠️ Unaudited |
| DogeMemeNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84d7fe5d949ea5fec5d84617badd7590275bfa72` | ⚠️ Unaudited |
| Doggy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x44beb847cc2a9d1166868bd139a919cc3329fb96`; bsc `0x74926b3d118a63f6958922d3dc05eb9c6e6e00c6` | ⚠️ Unaudited |
| ETH2Master | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xe627f00d5a5bfce0640e771af573c41e9a278a20`; bsc `0xe7cfe6241b8c54fa439f7c48b494f15fe24df729` | ⚠️ Unaudited |
| ExchangeNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 16 deployments: bsc `0x05b39c7f648f51153c65c770220bba001dac8a38`; bsc `0x05d189d22d9916837a82438d74f3837ac70b2831`; bsc `0x0f184442283f5bf8f1be742a6d36482cb959f3ac`; bsc `0x1f48ae3bcb24ddda1e2f5eea03b0c774eb3681c2`; bsc `0x26b82ab8269b2ad48fbdbbc9a08c78df7d68e814`; bsc `0x58e6e6e16a8fd619b6de1da4f614dfb31dcc07b2`; bsc `0x59dc5a288da642beaca7bd0016065609fc06df61`; bsc `0x615c0067bed4a1b2421ab3c3898cdb4a9ac13490`; bsc `0x7f67a8c7bc266b3ecc1d06b80925a40f71fa0e6c`; bsc `0x8443be845c3d03ac723411861025d0e8f453950f`; bsc `0x961985030bc6cb35a8bf2bfeff32ff0512f4d3b0`; bsc `0xa3514f8ee39ba80cd36b4aecfa2fe2eb5fd6b326`; bsc `0xa4c3a8f8465fddde98a440f8cf5e180e6e33f644`; bsc `0xc546014189cd734e475f2eb5bbe67eaf81b2cf11`; bsc `0xe590d8d25c525581dc41cccc3ebfefecb7e74b56`; bsc `0xf13015e5ab82c20fb0e6083d89dd1fd773badff1` | ⚠️ Unaudited |
| ExchangeNFTConfiguration | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5f8c0aa28ca6d3cad437fea8d76f2832c3d77b94`; bsc `0x611e6910b90fcac8a183e277d9930f3264fdecdd` | ⚠️ Unaudited |
| ExchangeNFTs | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x047c5ed6374bd9c73e6e1779d6769a967bb5c898`; bsc `0xb1d1253e0ec311f01724341620079f0b32d7fe2c` | ⚠️ Unaudited |
| ExchangeNFTs | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5cd94411fe83f81b639bee44bbb4c9f3bff218ef`; bsc `0x683a942cabe9e136ccfdaf4b0d4cb4bed8e56fbf` | ⚠️ Unaudited |
| ExchangeNFTs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce4129ebfcfa003d70530f3e67ded1e75211150e` | ⚠️ Unaudited |
| GetCarNFTStakingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38e90ad2e3fa7af9678a39d143e8fad39b989e5f` | ⚠️ Unaudited |
| GetComboStakingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba7e47d64ba87399da8a5e57eec010f4b9905ef3` | ⚠️ Unaudited |
| GetPokerCardStakingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaafb77447ceabe7d20f5ff03abb62143a961145` | ⚠️ Unaudited |
| IdoFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x8ad71503775f5a43303f8c22e2d84d6decf7bc80`; bsc `0xb673b01ab1887689682b308939c78d3ec94d6e28`; bsc `0xceb1c1058ed001be068710efe5c9f2fa52fd3a6f` | ⚠️ Unaudited |
| MuskDogeNFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1233b9f706cb9028a03b61af125cf1fe840cdbd3` | ⚠️ Unaudited |
| MysteryBox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x000fcc025797f976b5043de1b17a5d9734b54311`; bsc `0xe910adad7a54d0bbcce090c49824d618a05a8861` | ⚠️ Unaudited |
| NFTHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b6fb6d8e05b59bb24bf2a184a8f73bb390fbe50` | ⚠️ Unaudited |
| OneInchBAKENFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b843942edf0040012b12be2b3c197ef53cab7f9` | ⚠️ Unaudited |
| PetMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d2fe774032596d2c69dc441fd137a1f43725e08` | ⚠️ Unaudited |
| PetToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x829963c82f7040795f0e07c1f98544a82288bce4` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9cd8a72067930c778516898724f540d7bd472447` | ⚠️ Unaudited |
| SfpNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d0e5af3faee43b5cfff8f872f41d43b93ed964b` | ⚠️ Unaudited |
| SimpleStakeToysEarnERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x04c7987a4fdd2e7496daf833fb00035304499e3c`; bsc `0x735c9f9e03011a04c537fe7b4e839317ef64cf03` | ⚠️ Unaudited |
| SoccerPokerGameBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6a038119befe6c5ffbc8c030267a36d7b7297cf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x138d1472a7fa6cf9487654b240f7aba6dd4de315`; bsc `0xf6dae27ac841a4a66a631149cdd8c22cd0ece510` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x15c7160f82def33af05b7348843f3ad647b4d012`; bsc `0x45ac8b4f0aa8e363adff8b147d8dd303e7e29250` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1868e925afe27f9c0cc3e980e8a63002d3408df7`; bsc `0x43db8ea81074b31cf2665b600a4086cf36b59445` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x22631cdc909c406ca37eef547c05bd343ad57151`; bsc `0xb56f47e840beed958ea888eca7e6ddfda7b89a27` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x2299c1be61d1ffad49b324f5361255ddb3c185ef`; bsc `0x28a93d5076ed975407cc007373474d5cacbe5352`; bsc `0x45b2c743ee8aaab0cb692e206dfe2fcad5fb01a6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x2dca8804dca120085e9b511f18d8511f58faa64c`; bsc `0xecc2b7d0d338653482ca293261a14c447071f0b8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4120ee3d4749ef92f6643dc63a1fba49642ce568`; bsc `0xb3a47a8e6abec8a6502f069c16b768dca5b31799` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x6475270a858e0056e5afc9187c87507b01375890`; bsc `0x7f7b196a82eb555d20dea60a64d2d910ebfe9cf9`; bsc `0xe7fc8165e3c66454639124a0d9ff8424c35b1fe8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x97abe5735576f54f51c3e33e7139596f83a71957`; bsc `0xb6f8afbb1c23e7036f3a78690064a128f4396710` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa88b7c992e2aa3552fadc2f035767be76ea18400`; bsc `0xf99ee066b486f5bc9f6f5c8d94629916710ea422` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc3d0861db4e912f1280993e6ecffffff646de527`; bsc `0xca92d103259414018b7ea85cda66ebd53ae18c5b` | ⚠️ Unaudited |
| VoteForNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87b06e61e0346eec70fd34cd493b3e5e4ad2a92e` | ⚠️ Unaudited |
| VoteForNFTFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97e95cacbfbbdffe3e49511c3cdd1efb0faeb2d6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0276a023c74f02b83987b1a63c05ea70e8bf81b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0387d77eaaa60ca24e91371d9107337dd3b4a866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08bfbe694933a4e41c3ea641e693194837f201e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09da17ac6dd4d8f105a25b0d7317ae8cd1082d53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cd070e69b74bd3e3b2409d190e0223e1b0f9fe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12fc003d0af44e8bab0500e78e7bc200604f40f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x163454d6313dc09ed376da6760cbeea1efe2acf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19f8c3f6c3dfdb265770c23760960f5ffc349bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bb69841492a7542c8a7668efc7165e5198edc27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1f26880843297a3d55e6b9a24d75bcbf09681cbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cbb0e8743fadefc09c3bf7e0768896e7de53521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x498a5e8a34a85845ded8869d5638b2e2ff91d979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b23525c355b9bb6da019ef4ec03013de8d9d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5700dfdd0750aadf4803963865cb705300e388a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bb23390369451ddbd85379cfdcd4de9c14f4399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e860f81fcf6a655ce8daae944e35fef13422789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x773028cd87f93dfa67e2f5fec01db4ea82cc4b07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c9378d17534a476d8741f26a46cbae1a0788bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x888d8fdfec5f2321355cd91eb0a88047fa679d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8fb398be7acb7110436749a394e3d672b8ddb2ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a76f57cfb92435e7031654ac89892777e68ff6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaad7ec98a58ef510516d517e80d438facd3070aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad4f4d895eeed0be9a7700c861098289d01690b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb78976e42bfcc3613e511fd712bef56c0517acd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc15d077194d9db8206c9a80dc838183ce1ca7705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc32ea351feeff02f422eef11794fe9d640ad28fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc921239c1b5dead79c889af1d9e006ef560fffea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfb27c7f778780178e95fea84c45e5d79f0a0a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5c260316ca43da64bb782af650f434f1333c72a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9cd74b2ac3084859dcb9df36ea0c43342271e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda033c674bfd2d95e14b61ca2e6106528a848312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4d3299b1a3c268814c57394c2a729feca3b2b00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe56a84ad93146ecb6486ec9c43e5c345e1084e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf10970552a9b60afbff90d97e5dcaf7565e4700c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 175
- Live contracts: 0
- Unknown liveness contracts: 175
- Source-verified contracts: 130
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=18, source verified unclassified=112, unverified unclassified=45

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | candidate review | BidNFT<br>`0x3bd857648da97f3c395546e4f7f9fad3af29da33` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonMaster<br>`0x2560c6fcb1ee8ff76c512c366b1a9aba52a4e606` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonMaster<br>`0x4302b66b1b923171fbf44aea0ee5a21e687409ec` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonMaster<br>`0x4c496dd13c3ddfcee24657b655f047f528962e63` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonMaster<br>`0x4d6d2e3b419d324b77ddcaf3ff17a66c7d16e9f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonMaster<br>`0x62da74a42de360f1b5882d63e1e480fb80f0956f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonMaster<br>`0x6bc509924953c7c7a5d433bcc0b4a96b6c7d61a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonMaster<br>`0x8d921e7dd43f3c567b6a814c796b9346c2d02eed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonMaster<br>`0x99638fd577c22fc752b3734103933cf9835c5e02` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonMaster<br>`0x9c94e850db4371b38c00f60f9ce111694b212c30` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonMaster<br>`0xa9e34cb291b64d3ad56b365adde369f3ec04f7a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonMaster<br>`0xe6642f3de8c2efc7d2684cad7d9f010edbc4850b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonMaster<br>`0xf5df2d28309095c5212f395a4b571cace5c2058c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonMasterFactory<br>`0x885d6c4e815ab079e07266110cf39558fd66c106` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonMasterFactory<br>`0xdf2a7a6a2f2453f9b9ac5f7032d62cbc12b7fd93` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonStakeERC721EarnBake<br>`0x72bec5f02813b194bd549658e59d62e28458a621` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonStakeERC721EarnBakeFactory<br>`0x596af07fb11f7ec4cd804ecc783064d28ec8b4ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | candidate review | CommonStakeERC721EarnBakeFactory<br>`0x87020ed337f452b989958c4b685e07947656c60f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ArtworkBatchMintProxy<br>`0x38ad969abc67644ceca1cf43f89a834474d435d7` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BakeBaseIdo<br>`0x005c66a027176e1adf14d7e09c19a065504559e2` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BakeBaseIdo<br>`0x03f100c7ebe487d23f5adb4218e5eb7191000142` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BakeBaseIdo<br>`0x1e7d519295065da7e836e5cc71f96ea39158a774` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BakeBaseIdo<br>`0x37453bf4e9d697d4dbd4d8c4f65dbeee0c379e69` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BakeBaseIdo<br>`0x78ed8ca3f28f8c0b5f4038fd8e81df54c31bd07b` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BakeBaseIdo<br>`0x8738204d9accd85770dd6534d3bc4abd8c7c1e65` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BakeBaseIdo<br>`0x9e38dfed96ce63984d532f94b0990ba3549f3070` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BakeBaseIdo<br>`0xbe687e3ebcc3c9ef56d01f048000522759257256` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BakeBaseIdo<br>`0xe9dcd922e37d7066e2767db77c5653d74f519a62` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BakeBaseMaster<br>`0xa1d32a36be24db1c7ae4bee451db14f089f2f235` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BakeryActivityToken<br>`0x95c420be059081a2bf8c310d23aae74f009b9a62` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BakeryAnniversary<br>`0x1d866e548392765982a5859e15725215f3175c2e` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BakeryDestroyToken<br>`0x732b6620d3469204bcc6f44c0b40cd8c4bafc747` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BakeryReserveToken<br>`0x418c990067accb63357533e23def90af83169ed3` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BakerySwapPairHelper<br>`0x091307ff8910713aaf2ff4ad3a5f6e1d2b7100c7` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BakeryVoterProxy<br>`0x382d04194e3607dab5ebaa5b9f8011a4c06e8b17` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BidNFT<br>`0x01fa298fa3a507048d16dc6669a4ba22fd9f0e55` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BidNFT<br>`0x055930e510a331c448ce92d2a85f984aba177fbb` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BidNFT<br>`0x0c7ab53232da9a525ee93d20fd0be256f512cf8e` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BidNFT<br>`0x1927203b5e516d40864f55474f6f3431fab442af` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BidNFT<br>`0x2d01300340bf6bfad0d7f830102188d6291ddc15` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BidNFT<br>`0x35996ad8844407f9ddd5d3dec8238f703364306f` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BidNFT<br>`0x437bf818ae0b62c0e1ad823877e2e5c25d07682b` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BidNFT<br>`0x4ab5d6a60fab7603a9ea372f7721a2f6c931ba70` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BidNFT<br>`0x585fd9d48ae08152beb0f001781cd20ca30184d4` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BidNFT<br>`0x616ea437dfbf929ef49116614f6b2b610f48b0ae` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BidNFT<br>`0x61e9181e7fece6e2a79e1abff71acb99bd98e3e3` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BidNFT<br>`0xe84e73889cdf43dbb57ffee42dc0615eb244891e` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BidNFT<br>`0xe98631ce5ccf1e9ef1638a76c78702a384a79e29` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BidNFT<br>`0xea8683ed461ed504f08078903c2c89ee5f40a8a7` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BidNFT<br>`0xebead42e26bd602b668135e329657239b866733a` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | BidNFT<br>`0xef44a8d2830dfac64a7493ae60850cfb950567e1` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | CarBlindBox<br>`0x0628cfc88518ccee96ef7bdfed8b4ac8708cad88` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | CarBlindBox<br>`0x74db53381015ac19301eebdbd17e719655e32e40` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | CarNFTStakingPowerToken<br>`0xa0e90bdabb28908c9d9419e58c658f20e60ba3aa` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | CommonMasterFactory<br>`0x1307c3c5e28d41cc1e8ff977fb9146b419a6dd9c` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | CommonMasterFactory<br>`0x6cf0c52888a3965580b762a20adc7773665ea3eb` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | CommonNftMasterFactory<br>`0x03b3d5973cac451a63869714e56482d6c97f63c6` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | CommonStakeERC721EarnERC20<br>`0xb14b6c30ce2044e8e762170d985b510e983cc455` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | CommonStakeERC721EarnERC20<br>`0xf7f10bead8f9ab2299413002f1650099d4135635` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | CommonStakeERC721EarnERC20Factory<br>`0x543229590b6b6c7c7250ec19aad8bb2552b6196a` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | CommonStakeERC721EarnERC20Factory<br>`0xe9d116fad148ace99e4ae081c4fcac1e62f1dd9b` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | DefaultGetStakingPower<br>`0x4f0c92c93b23c6cee3e0744b420c525b932a8b99` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | DishMaster<br>`0x7145319189629afcf31754d8ac459265fca4cf91` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | DishNFT<br>`0x51efe1de415115bbedd39771405e619ef3aa7e2e` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | DishNFT<br>`0xa7463c3163962b12aeb623147c2043bb54834962` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | DishStakingPowerToken<br>`0x169895db3270b3df63782bd3c7f758710b886f65` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | DishStakingPowerToken<br>`0x54f135a5fb523e467bcd6aa934939e1f25382275` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | DogeMemeNFT<br>`0x84d7fe5d949ea5fec5d84617badd7590275bfa72` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | Doggy<br>`0x44beb847cc2a9d1166868bd139a919cc3329fb96` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ETH2Master<br>`0xe7cfe6241b8c54fa439f7c48b494f15fe24df729` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFT<br>`0x05b39c7f648f51153c65c770220bba001dac8a38` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFT<br>`0x05d189d22d9916837a82438d74f3837ac70b2831` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFT<br>`0x0f184442283f5bf8f1be742a6d36482cb959f3ac` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFT<br>`0x1f48ae3bcb24ddda1e2f5eea03b0c774eb3681c2` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFT<br>`0x26b82ab8269b2ad48fbdbbc9a08c78df7d68e814` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFT<br>`0x58e6e6e16a8fd619b6de1da4f614dfb31dcc07b2` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFT<br>`0x59dc5a288da642beaca7bd0016065609fc06df61` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFT<br>`0x615c0067bed4a1b2421ab3c3898cdb4a9ac13490` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFT<br>`0x7f67a8c7bc266b3ecc1d06b80925a40f71fa0e6c` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFT<br>`0x8443be845c3d03ac723411861025d0e8f453950f` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFT<br>`0x961985030bc6cb35a8bf2bfeff32ff0512f4d3b0` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFT<br>`0xa3514f8ee39ba80cd36b4aecfa2fe2eb5fd6b326` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFT<br>`0xa4c3a8f8465fddde98a440f8cf5e180e6e33f644` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFT<br>`0xc546014189cd734e475f2eb5bbe67eaf81b2cf11` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFT<br>`0xe590d8d25c525581dc41cccc3ebfefecb7e74b56` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFT<br>`0xf13015e5ab82c20fb0e6083d89dd1fd773badff1` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFTConfiguration<br>`0x611e6910b90fcac8a183e277d9930f3264fdecdd` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFTs<br>`0x683a942cabe9e136ccfdaf4b0d4cb4bed8e56fbf` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFTs<br>`0xb1d1253e0ec311f01724341620079f0b32d7fe2c` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ExchangeNFTs<br>`0xce4129ebfcfa003d70530f3e67ded1e75211150e` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | GetCarNFTStakingPower<br>`0x38e90ad2e3fa7af9678a39d143e8fad39b989e5f` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | GetComboStakingPower<br>`0xba7e47d64ba87399da8a5e57eec010f4b9905ef3` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | GetPokerCardStakingPower<br>`0xbaafb77447ceabe7d20f5ff03abb62143a961145` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | IdoFactory<br>`0x8ad71503775f5a43303f8c22e2d84d6decf7bc80` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | IdoFactory<br>`0xb673b01ab1887689682b308939c78d3ec94d6e28` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | IdoFactory<br>`0xceb1c1058ed001be068710efe5c9f2fa52fd3a6f` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | MysteryBox<br>`0x000fcc025797f976b5043de1b17a5d9734b54311` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | NFTHelper<br>`0x0b6fb6d8e05b59bb24bf2a184a8f73bb390fbe50` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | PetMaster<br>`0x5d2fe774032596d2c69dc441fd137a1f43725e08` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | PetToken<br>`0x829963c82f7040795f0e07c1f98544a82288bce4` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | ProxyAdmin<br>`0x9cd8a72067930c778516898724f540d7bd472447` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | SfpNFT<br>`0x1d0e5af3faee43b5cfff8f872f41d43b93ed964b` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | SimpleStakeToysEarnERC20<br>`0x04c7987a4fdd2e7496daf833fb00035304499e3c` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | SoccerPokerGameBox<br>`0xe6a038119befe6c5ffbc8c030267a36d7b7297cf` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0x047c5ed6374bd9c73e6e1779d6769a967bb5c898` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0x15c7160f82def33af05b7348843f3ad647b4d012` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0x2299c1be61d1ffad49b324f5361255ddb3c185ef` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0x2dca8804dca120085e9b511f18d8511f58faa64c` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0x4120ee3d4749ef92f6643dc63a1fba49642ce568` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0x43db8ea81074b31cf2665b600a4086cf36b59445` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0x45b2c743ee8aaab0cb692e206dfe2fcad5fb01a6` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0x5cd94411fe83f81b639bee44bbb4c9f3bff218ef` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0x5f8c0aa28ca6d3cad437fea8d76f2832c3d77b94` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0x6475270a858e0056e5afc9187c87507b01375890` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0x735c9f9e03011a04c537fe7b4e839317ef64cf03` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0x74926b3d118a63f6958922d3dc05eb9c6e6e00c6` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0x792cc1257fad723203d12e94af43fc6b6d6d27e2` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0x7f7b196a82eb555d20dea60a64d2d910ebfe9cf9` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0xb535d44d16e7cdef51d568539e8da80cf4a0b6a1` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0xb56f47e840beed958ea888eca7e6ddfda7b89a27` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0xb6f8afbb1c23e7036f3a78690064a128f4396710` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0xc137699f44f868f904d41db999d754ed2c135f51` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0xc3d0861db4e912f1280993e6ecffffff646de527` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0xe627f00d5a5bfce0640e771af573c41e9a278a20` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0xe910adad7a54d0bbcce090c49824d618a05a8861` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0xed8732d98adb5591e9fc9a15bba7a345b78b3e0e` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0xf6dae27ac841a4a66a631149cdd8c22cd0ece510` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | TransparentUpgradeableProxy<br>`0xf99ee066b486f5bc9f6f5c8d94629916710ea422` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | VoteForNFT<br>`0x87b06e61e0346eec70fd34cd493b3e5e4ad2a92e` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | source verified unclassified | VoteForNFTFactory<br>`0x97e95cacbfbbdffe3e49511c3cdd1efb0faeb2d6` | non_address_book | unknown | unknown | verified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0276a023c74f02b83987b1a63c05ea70e8bf81b6` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0387d77eaaa60ca24e91371d9107337dd3b4a866` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x08bfbe694933a4e41c3ea641e693194837f201e8` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x09da17ac6dd4d8f105a25b0d7317ae8cd1082d53` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0cd070e69b74bd3e3b2409d190e0223e1b0f9fe7` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x12fc003d0af44e8bab0500e78e7bc200604f40f7` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x138d1472a7fa6cf9487654b240f7aba6dd4de315` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x163454d6313dc09ed376da6760cbeea1efe2acf5` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1868e925afe27f9c0cc3e980e8a63002d3408df7` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x19f8c3f6c3dfdb265770c23760960f5ffc349bca` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1bb69841492a7542c8a7668efc7165e5198edc27` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1f26880843297a3d55e6b9a24d75bcbf09681cbd` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x22631cdc909c406ca37eef547c05bd343ad57151` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x28a93d5076ed975407cc007373474d5cacbe5352` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3cbb0e8743fadefc09c3bf7e0768896e7de53521` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x45ac8b4f0aa8e363adff8b147d8dd303e7e29250` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x498a5e8a34a85845ded8869d5638b2e2ff91d979` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x56b23525c355b9bb6da019ef4ec03013de8d9d3d` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5700dfdd0750aadf4803963865cb705300e388a8` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5bb23390369451ddbd85379cfdcd4de9c14f4399` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6e860f81fcf6a655ce8daae944e35fef13422789` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x773028cd87f93dfa67e2f5fec01db4ea82cc4b07` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7c9378d17534a476d8741f26a46cbae1a0788bd5` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x888d8fdfec5f2321355cd91eb0a88047fa679d4c` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8fb398be7acb7110436749a394e3d672b8ddb2ff` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x97abe5735576f54f51c3e33e7139596f83a71957` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9a76f57cfb92435e7031654ac89892777e68ff6b` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa88b7c992e2aa3552fadc2f035767be76ea18400` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaad7ec98a58ef510516d517e80d438facd3070aa` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xad4f4d895eeed0be9a7700c861098289d01690b6` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb3a47a8e6abec8a6502f069c16b768dca5b31799` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb78976e42bfcc3613e511fd712bef56c0517acd6` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc15d077194d9db8206c9a80dc838183ce1ca7705` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc32ea351feeff02f422eef11794fe9d640ad28fb` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc921239c1b5dead79c889af1d9e006ef560fffea` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xca92d103259414018b7ea85cda66ebd53ae18c5b` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcfb27c7f778780178e95fea84c45e5d79f0a0a4e` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd5c260316ca43da64bb782af650f434f1333c72a` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd9cd74b2ac3084859dcb9df36ea0c43342271e2f` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xda033c674bfd2d95e14b61ca2e6106528a848312` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe4d3299b1a3c268814c57394c2a729feca3b2b00` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe56a84ad93146ecb6486ec9c43e5c345e1084e70` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe7fc8165e3c66454639124a0d9ff8424c35b1fe8` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xecc2b7d0d338653482ca293261a14c447071f0b8` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf10970552a9b60afbff90d97e5dcaf7565e4700c` | non_address_book | unknown | unknown | unverified | n/a | `0xfea7747216ff0212cb21ae35578c17b60428e376` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/bakeryswap](https://skynet.certik.com/projects/bakeryswap) | CertiK | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2736] skynet.certik.com/projects/bakeryswap — no match: Extracted from 'Audited Files/SHA256' section; only two files explicitly listed. Audit date from 'Last Audit was delivered on 8/27/2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/bakeryswap | TransferHelper | unmatched — not counted | — | Audited Files/SHA256 list | no |
| skynet.certik.com/projects/bakeryswap | AddressStringUtil | unmatched — not counted | — | Audited Files/SHA256 list | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xe02df9e3e622debdd69fb838bb799e3f168902c5` | BakeryToken | token | $525,894.48 | Verified native implementation with $525,894.48 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 57 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 39 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [2736] skynet.certik.com/projects/bakeryswap

Fork inheritance lineage and inherited audits are included when available.
