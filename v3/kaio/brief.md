# Agentic Audit Brief: KAIO

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: KAIO (`kaio`)
- Website: [https://www.kaio.xyz/](https://www.kaio.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, ethereum, polygon, sei
- Contract surface: 57 unique implementations (187 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $60,798,378.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for KAIO in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 57 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 130
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/52
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 57
- Raw deployments: 187
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

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 3 deployments: sei `0x000a71e5a0014dff449fcd3146af4f2e26c65839`; sei `0x56e95aa43488737c2a93aa5d1c0d9d62db6e2212`; sei `0xd2bc19cb4a2797de5ad3e832926a92f98ee75913` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 3 deployments: sei `0x03c660e694046cabacbe8b787f83ffd9cbd125d3`; sei `0x867625c5facd41505d50448a3d58b3314a554d3e`; sei `0xcccb6a38b5229886f2dff66fe9e2f411b446ca7a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x07c923e3633cb2666e300a6de0af8e71ed4daa3c`; sei `0x757625563d9e0a608acb99a38d2fee3590d3bf20` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x07e19c3e88f7b61138647b0b8913ac15ff3d7c3f`; sei `0xd0d23565355c97cc3384cd89f577294fa03438f7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x1bf0b6f244ee2c535d6742eabee9e05928bb10cc`; sei `0x93afe5f30e7b7b2aedd64417e9f642b03eb34139` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x2ec750a087299f91e4565183ad23ce8fe630aba0`; sei `0x45da24addb821b0b6947a800fdcd6a67145530ae` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x3246d4593128712e26cca6953f02370c55fe0443`; sei `0x7a35f5728578de4e38135da5fd518d2c1e662c1c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x3b42bb63a9b37a08c8c5bdc1538cf847dc378cba`; sei `0x4e0d47bd8c8efc320fbb1e901012218b63a608dc` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x3f606ac7eafdc0d9d7ec69cfa0517596aa8fd181`; sei `0x8184f5a76598053e9b6532d46717302878ba9b47` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x42ef2053783611b984ca6acb19e673e2a97323de`; sei `0xa1f01914e1a7e9232dd9f5c0ebb105d5f16f9882` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x48b8226f7160b75f53efff2f2b2bcefeeb657331`; sei `0x65f4fc116b8f7880bcda7336917e57da3c373f74` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x4d1b4e60c10d40dd775c084948db05f2423f4711`; sei `0xf36bd0c2fb6d9e479a85306041824da1a932b0da` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x570cb1a138583a345c6e69535705ece5251de6ca`; sei `0x6b8d62dc1cdf58cf66810848a2996e29e029bdd4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 3 deployments: sei `0x5bd5405e6a841e4c29a5a133f50e7c72d5addcc4`; sei `0x88227d3a7eed07f83d92d85910154044a7a60af3`; sei `0x9a6f097fce80290165b5a5f13a51d92fb1b0b329` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x5e581d54374ef56c522264664b8df6214e8aeb37`; sei `0xa2029ade9986f1c46a715492bced844c5ada0715` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x7b6b75d04be44959f844c118b578ee5d194ae74d`; sei `0xeb2fac2cdd86574c9f245ee852e93eca8aebd19e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x7bb2a73e7e938756bd72e125bf642b745004f714`; sei `0xa99e643844c25647d4c3a603b379c12888d33623` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x87f0140af52ccbb5ecbacaa5d47ff844564ca5db`; sei `0xfdedd7558e7028e35bf87e0fb742d926fce9294c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x8aabbb34391b332b49b335b9448583b40e452bd4`; sei `0x8fb15f58bbc37e0356bcde5e3814a623d675c5de` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x91f723dcdd6dcef03f2cf81474505e4d7dec0f9d`; sei `0xe328f75b8ac26280315c0c405eb889a8382f323d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sei | n/a | 3 deployments: sei `0x940d979f945b0777c3dd75832631e802cfe73aff`; sei `0xd2029c1566dbedfd38660bc72bb414e2a123c3de`; sei `0xd7c70a8f7ca491e46a0d0d8f6638ba9198efceee` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x9752aa46dc34dbf2e55a32d74d6e1ef062efe898`; sei `0xc30a7960a8c18eb9884f0d04213d9b77d9b7fc6a` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x9e453e9b7d5ad9f41593af74802c4c6cb4990cbe`; sei `0xb3e349df7b9c9780ed930e77886fc8ec2e254485` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0xc5306f915d25aa73da9d93fb7fe09904aef58200`; sei `0xf8543267e09f6ed14083f2f86144e537449dddc7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0xde9ad8446d77c44583e7f5c4218cbe4af63c2446`; sei `0xeecf64a8f17cb1d85e27dc503646494328781852` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x1f981b595adb59be43cf346d5583c228f30d825c`; sei `0xa90074146b9f7bf75dd21d95c81c022043308132` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x3a884d0e4cf4b065bf9aa65b3444c314f68258e3`; sei `0xfe3fb14a7a9e653292fdf17e6f45aad431880bc8` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x42fb3983c9cca8980ceb924f7139ad1ba7ec86cb`; sei `0x70fc327632ae01e64adcea7c0aee76af4ce9b5b3` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x64dacec6b66c2a09e27b09d79ba0b4cd30c2c132`; sei `0xe9eb36f1b8a280130c290a5d346652c9ac4fdea5` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x78ec2eeec066c0706257a23c5c36d32adae70ee5`; sei `0xdb06aab7c02663cae6a86a0d46ce07304df25ef9` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x790273d26a7e3af5565ec54d35ee84c705d75450`; sei `0x8342f80ef440888257fdf42d2214af17e0d074db` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x7e35ce0bbbef6b1cb874bb288dd2482bd79855a5`; sei `0xa92a259235ef5ca5724332137d11185119b86b45` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x85353ec701edf201dae3c893158daec56c086a31`; sei `0xf1cc6737c0ef81335c7f03a134591f1f3fdf9f1a` | ⚠️ Unaudited |
| InvestorRegistryMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0xe06b3073a51685e11a0290dc44d00cb3e6a6efc6`; sei `0xf938e33bfc8ddc2ef85b5982000daa4f1eff03ca` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x0029c9d040a51985c07b1e7d1eaa343e8c1177c4`; sei `0xedbb6270e4311d8dbffcdd79b3aa3391d8c730dc` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x22d0bc2cba78e9b3f9ca17584975ead9667886f7`; sei `0x358524fe389625f3627cd1f267c76ed3ebd850ff` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x295aa4e452da2ec78a3c729d6e47aa96d98353f2`; sei `0xb315f9053b1e96018d3db2f0fb9ded39ab79f440` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x36a2e6c41d8fda6885426f35eca93172a9632401`; sei `0xb5d1aa9a7c6ea44233e696ff13cf4b024cad6255` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x3a1b86db258970036d9be76e2988c3e360e9ea18`; sei `0x5e7cda3b1463fb7e0165e3b3d16b95d2d3469d1a` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x3bb6452b9afdffcda5b71938930930900178f994`; sei `0x7ea8560c4166531af3c9b75cdaebdb865dbee71d` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x6ad7985733a11337b286c23ed55c8e1427b25f79`; sei `0x6af926854ca89f301b99f18bade3d2b7c125ace3` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0x97e95af286972b81c8ddac6c84433a2058d77e3f`; sei `0xc95004472b0ecb19ac56bb9cffbc6cd8fbabb096` | ⚠️ Unaudited |
| LibreEdgeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | 2 deployments: sei `0xe5751043247798abec45126ce837f448bcb5e495`; sei `0xfebdabd9bcc512a272105b310d311c999f2f0231` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 10 | sei | n/a | 11 deployments: sei `0x00b6e8cecf14e808cb6244d8222031069c392568`; sei `0x0e7dce3f8fc3cd9872d924b22eab017857b8bade`; sei `0x0f7614b8697936176c64d6872d285651fac3d2d9`; sei `0x14fcd20ae7666d289a3c02165a3d64093b3e21c3`; sei `0x59f0d52318f808549c402775d9fd292038d0d1db`; sei `0x5fc70fa4106032f01e7ccd904a151f138acd6cf0`; sei `0x8d31da4340075d2888ed554332e0a5ab1220a49f`; sei `0xa41647e83c502d8cb3bb5780f27dfd470061b84a`; sei `0xd213f4ebca3247c77349e09cb803c7ebec0072cd`; sei `0xe28272dc762f8d6633697f68ea4850985b697b74`; sei `0xe9c75263f91f45ccb3119ce875a0e1d1662860eb` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | sei | n/a | 10 deployments: sei `0x0a887bd141b249349bfadf28a62b63543fd5abdf`; sei `0x24c33b3fae422203f434956fb9ae726e7adb187d`; sei `0x304bbf53d4d75fe032f3a72b528b73f7f15b35cf`; sei `0x37d5df138f0a369815c69eea052823b3ea71fa6c`; sei `0x6df85acf0084a825b1ad4ac159c73f5fa315a757`; sei `0x706a93deea8c5bcc3bb8abda52786d95d843107a`; sei `0x8d969e2039a3d42b7ef1176892953429f1e5a1eb`; sei `0xb4c6373850ceb3f86889e27d9fa1c81e1a324997`; sei `0xcbf5bc14b0ccb505f61ff6139467baf1987d1045`; sei `0xf4609484a418826a2a646314726305592c042df5` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | sei | n/a | 10 deployments: sei `0x0f931771b98ee5f38c9a1fbc4c1a7058dfea7912`; sei `0x19411c11aa345a11a36f73fb047d3a6527e8a204`; sei `0x279998eb5d2f7f1497c65217c937979a18880ebd`; sei `0x2915e6fae1ca50f56aac84e651dc89f42d05010b`; sei `0x32796cde216957d29aba3bb23e1a12dcba6998a4`; sei `0x71a03ce4dd8c678e6fdd6115afdf95bcf4495e31`; sei `0x9e0597f9583b129bd2393f747c396572453bdb51`; sei `0xa82bf6c49d43a6d5c77f2e5cb6f2b698077d513b`; sei `0xaaf737ccec9ba1e7bfc1d3426e9509a9c88d78ee`; sei `0xffd20defb08289c4473d80087ae0f2055ae6cb3b` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 10 | sei | n/a | 11 deployments: sei `0x102bb2d81b888c795a339d032b343c327ddf1d8c`; sei `0x4264c56c4a4f71483fce220a172961410310f495`; sei `0x7fb059646c12bd87231786e7afca0d7a7e057924`; sei `0x9cb11877aaa89e3e1c79d320327ab101e8de52a8`; sei `0xb36e94249e3a4a1e82133c8c0589c1e0e548a7b8`; sei `0xb7769067b29e7c0fdf477ada8cb9b07965c99e54`; sei `0xbda516cd6227029bb1a35a4612ddd1648f93e85b`; sei `0xc47013ca02bfacb1a83ab52e0ee875c4f8017a66`; sei `0xc7e35550e6ce2ea11870c9d12270e5eff6187e2e`; sei `0xca47210a0da45997e1ac70a58d155c24c115fc83`; sei `0xe5e6c6d19311b65589aa5bdcd720ff9020efa700` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | sei | n/a | 10 deployments: sei `0x1778c5bc08972941c8c5108ad6a76b1ff27776d4`; sei `0x1a304f0c2818888829b479c73e1724591566e601`; sei `0x2549884025fd460623538f23fcfc26c94e162be5`; sei `0x436ad77efd4095ea1216eff0e5fb7f58e4235a3e`; sei `0x8186d941649d998630fbb93367b960621536959e`; sei `0x88645ce603e6a91608f0ff3eae17f5a53f6d7162`; sei `0xacac3b20ff8fe6e03083589d4f842e34ba5edb3b`; sei `0xe5cebf91caac59b4d09bc4cefcad8ddf713f98c2`; sei `0xedf5e90e76c7e39a56ec737849b51589dda4789a`; sei `0xfb41de95140fd6b065f561402f163dd12555b5cc` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | sei | n/a | 10 deployments: sei `0x1f4c7a3a17c64f9c1ebd9e5ac62ba47533d8259e`; sei `0x39c1f9ac263c9d7bb9cc505c0d5bb7014a8a32cb`; sei `0x3ae9b07936fa88937610965b1b51da24f070e67a`; sei `0x40eb49428ea277078d7309daa59d2104c3e544f1`; sei `0x4f416e474b7bdf7b76dc6c5da0b50a765128f9e0`; sei `0xaebbcb5f7b9e030622b89634185e1472fd9e720d`; sei `0xb80f486165d9874b331d9359ba363ddefd462a1d`; sei `0xc2713e119a3be344bc352349448336582c6b3bd7`; sei `0xc8b90e733b38f6527dbfc1fa839904f961e92bd3`; sei `0xd440c34420fda3e7b2add506e2a63154803f3f7d` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | sei | n/a | 10 deployments: sei `0x2002fa7e0173e8e2ec5dd359f84b504a004f95d2`; sei `0x42f9ce2544a4275cf66a92e03ac73d4e3ac17a2f`; sei `0x442086f6ec2ea59dc62a4f3f497ec7852b025a1f`; sei `0x54441904650e4872dd78b8d56d5fe6ab850f0252`; sei `0x6f0519ed3bbe2d1e5797647f06766b2eef1f6f19`; sei `0x74d718c6e96fe8aeb3d8d1b2644f7c733e71a621`; sei `0x75732d2e96f1bd2bb5c9cb3db31b7736cb250a92`; sei `0x894564d5fd0974da23ea423c965cf2a2ff7cb8f9`; sei `0xdb0ca7e5c5cb5c662935ce41624078b5843579af`; sei `0xfa71cf00c924d96771391664a9c58ef26dd21f25` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | sei | n/a | 10 deployments: sei `0x25224107e9df38830db50d1ef0abae213a88b824`; sei `0x2de3f43978928b10c26efd30b47fa42a9814938b`; sei `0x36961ae0760ff248539b831ff9712e241b88b60c`; sei `0x3aad9712caf28cafbf73f01d01788634cfb3f534`; sei `0x7243fc729b7e8bf80e18a44c478fb64fbbacbd86`; sei `0x9c78befca50f7b94d1c6d543a6f88cda7380fdaf`; sei `0x9e19d80ebf4a49fe8cbb649769f9c8cc1ca72e25`; sei `0xaa9da59e88b3b0e40da4967048479b3a83b92320`; sei `0xd12ac3fcb2ba54505dd6117346b3557340432408`; sei `0xfd343faf4b778224b60d3bb6d30e93115c796b43` | ⚠️ Unaudited |
| SecurityTokenMirror | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | sei | n/a | 10 deployments: sei `0x2dc00dc699d08bf28bfa7607e3ee157888942956`; sei `0x4b87a0d2f0d90b643f19d62c389f8a186d499f45`; sei `0x7c016c7c36f324b1e10fbe1513772e39506926aa`; sei `0x842e668f08ff153b3919a71eb51e84e71b726548`; sei `0x8dc8f1b645211ee6913378775d60aa7581c8e031`; sei `0x938d6e2c5a4ab4dd58a8bb430d77d12dae012e2f`; sei `0x97c254a66d0cceb24635ef04aef1e5f8a3860bb4`; sei `0xb5c2ddaecc5375011ee38735fa1870e5f66a62f2`; sei `0xdd38458d929f7bdafc057def5f1645663f7634b1`; sei `0xe2e54445ade15da4a56bed5081420b0de1b78c2f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x2018a61e711c3c822cf818c1b599f05c7e804e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x34c424b186914d7f2e0fe82a403081fee977d4e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x39cc01770ca3e02436253a0a16c9f90d7e6b26e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x8fe9d10d244abaf3e7b2646f34f30988b4ff748a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x9998eeee329f9008b29add4b78209e778d0b078a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 182
- Live contracts: 0
- Unknown liveness contracts: 182
- Source-verified contracts: 157
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: source verified unclassified=157, unverified unclassified=25

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| sei | source verified unclassified | ERC1967Proxy<br>`0x000a71e5a0014dff449fcd3146af4f2e26c65839` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x0029c9d040a51985c07b1e7d1eaa343e8c1177c4` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x00b6e8cecf14e808cb6244d8222031069c392568` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x03c660e694046cabacbe8b787f83ffd9cbd125d3` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x07e19c3e88f7b61138647b0b8913ac15ff3d7c3f` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x0a887bd141b249349bfadf28a62b63543fd5abdf` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x0e7dce3f8fc3cd9872d924b22eab017857b8bade` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x0f7614b8697936176c64d6872d285651fac3d2d9` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x0f931771b98ee5f38c9a1fbc4c1a7058dfea7912` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x102bb2d81b888c795a339d032b343c327ddf1d8c` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x14fcd20ae7666d289a3c02165a3d64093b3e21c3` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x1778c5bc08972941c8c5108ad6a76b1ff27776d4` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x19411c11aa345a11a36f73fb047d3a6527e8a204` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x1a304f0c2818888829b479c73e1724591566e601` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x1f4c7a3a17c64f9c1ebd9e5ac62ba47533d8259e` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x2002fa7e0173e8e2ec5dd359f84b504a004f95d2` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x22d0bc2cba78e9b3f9ca17584975ead9667886f7` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x24c33b3fae422203f434956fb9ae726e7adb187d` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x25224107e9df38830db50d1ef0abae213a88b824` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x2549884025fd460623538f23fcfc26c94e162be5` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x279998eb5d2f7f1497c65217c937979a18880ebd` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x2915e6fae1ca50f56aac84e651dc89f42d05010b` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x295aa4e452da2ec78a3c729d6e47aa96d98353f2` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x2de3f43978928b10c26efd30b47fa42a9814938b` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x304bbf53d4d75fe032f3a72b528b73f7f15b35cf` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x3246d4593128712e26cca6953f02370c55fe0443` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x36961ae0760ff248539b831ff9712e241b88b60c` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x37d5df138f0a369815c69eea052823b3ea71fa6c` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x39c1f9ac263c9d7bb9cc505c0d5bb7014a8a32cb` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x3aad9712caf28cafbf73f01d01788634cfb3f534` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x3ae9b07936fa88937610965b1b51da24f070e67a` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x3bb6452b9afdffcda5b71938930930900178f994` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x3f606ac7eafdc0d9d7ec69cfa0517596aa8fd181` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x40eb49428ea277078d7309daa59d2104c3e544f1` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x4264c56c4a4f71483fce220a172961410310f495` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x42ef2053783611b984ca6acb19e673e2a97323de` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x42f9ce2544a4275cf66a92e03ac73d4e3ac17a2f` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x42fb3983c9cca8980ceb924f7139ad1ba7ec86cb` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x436ad77efd4095ea1216eff0e5fb7f58e4235a3e` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x442086f6ec2ea59dc62a4f3f497ec7852b025a1f` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x45da24addb821b0b6947a800fdcd6a67145530ae` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x48b8226f7160b75f53efff2f2b2bcefeeb657331` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x4b87a0d2f0d90b643f19d62c389f8a186d499f45` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x4e0d47bd8c8efc320fbb1e901012218b63a608dc` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x4f416e474b7bdf7b76dc6c5da0b50a765128f9e0` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x56e95aa43488737c2a93aa5d1c0d9d62db6e2212` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x570cb1a138583a345c6e69535705ece5251de6ca` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x5bd5405e6a841e4c29a5a133f50e7c72d5addcc4` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x5e581d54374ef56c522264664b8df6214e8aeb37` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x5e7cda3b1463fb7e0165e3b3d16b95d2d3469d1a` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x5fc70fa4106032f01e7ccd904a151f138acd6cf0` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x6af926854ca89f301b99f18bade3d2b7c125ace3` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x6df85acf0084a825b1ad4ac159c73f5fa315a757` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x6f0519ed3bbe2d1e5797647f06766b2eef1f6f19` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x706a93deea8c5bcc3bb8abda52786d95d843107a` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x71a03ce4dd8c678e6fdd6115afdf95bcf4495e31` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x74d718c6e96fe8aeb3d8d1b2644f7c733e71a621` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x75732d2e96f1bd2bb5c9cb3db31b7736cb250a92` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x757625563d9e0a608acb99a38d2fee3590d3bf20` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x78ec2eeec066c0706257a23c5c36d32adae70ee5` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x7c016c7c36f324b1e10fbe1513772e39506926aa` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x7fb059646c12bd87231786e7afca0d7a7e057924` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x8186d941649d998630fbb93367b960621536959e` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x8342f80ef440888257fdf42d2214af17e0d074db` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x842e668f08ff153b3919a71eb51e84e71b726548` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x85353ec701edf201dae3c893158daec56c086a31` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x867625c5facd41505d50448a3d58b3314a554d3e` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x88227d3a7eed07f83d92d85910154044a7a60af3` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x88645ce603e6a91608f0ff3eae17f5a53f6d7162` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x894564d5fd0974da23ea423c965cf2a2ff7cb8f9` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x8aabbb34391b332b49b335b9448583b40e452bd4` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x8d31da4340075d2888ed554332e0a5ab1220a49f` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x8d969e2039a3d42b7ef1176892953429f1e5a1eb` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x8dc8f1b645211ee6913378775d60aa7581c8e031` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x91f723dcdd6dcef03f2cf81474505e4d7dec0f9d` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x938d6e2c5a4ab4dd58a8bb430d77d12dae012e2f` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x93afe5f30e7b7b2aedd64417e9f642b03eb34139` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x940d979f945b0777c3dd75832631e802cfe73aff` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x97c254a66d0cceb24635ef04aef1e5f8a3860bb4` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x97e95af286972b81c8ddac6c84433a2058d77e3f` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x9c78befca50f7b94d1c6d543a6f88cda7380fdaf` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x9cb11877aaa89e3e1c79d320327ab101e8de52a8` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x9e0597f9583b129bd2393f747c396572453bdb51` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x9e19d80ebf4a49fe8cbb649769f9c8cc1ca72e25` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0x9e453e9b7d5ad9f41593af74802c4c6cb4990cbe` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xa41647e83c502d8cb3bb5780f27dfd470061b84a` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xa82bf6c49d43a6d5c77f2e5cb6f2b698077d513b` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xa90074146b9f7bf75dd21d95c81c022043308132` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xa92a259235ef5ca5724332137d11185119b86b45` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xa99e643844c25647d4c3a603b379c12888d33623` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xaa9da59e88b3b0e40da4967048479b3a83b92320` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xaaf737ccec9ba1e7bfc1d3426e9509a9c88d78ee` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xacac3b20ff8fe6e03083589d4f842e34ba5edb3b` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xaebbcb5f7b9e030622b89634185e1472fd9e720d` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xb36e94249e3a4a1e82133c8c0589c1e0e548a7b8` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xb5c2ddaecc5375011ee38735fa1870e5f66a62f2` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xb5d1aa9a7c6ea44233e696ff13cf4b024cad6255` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xb7769067b29e7c0fdf477ada8cb9b07965c99e54` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xb80f486165d9874b331d9359ba363ddefd462a1d` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xbda516cd6227029bb1a35a4612ddd1648f93e85b` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xc30a7960a8c18eb9884f0d04213d9b77d9b7fc6a` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xc47013ca02bfacb1a83ab52e0ee875c4f8017a66` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xc7e35550e6ce2ea11870c9d12270e5eff6187e2e` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xc8b90e733b38f6527dbfc1fa839904f961e92bd3` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xca47210a0da45997e1ac70a58d155c24c115fc83` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xcbf5bc14b0ccb505f61ff6139467baf1987d1045` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xd12ac3fcb2ba54505dd6117346b3557340432408` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xd213f4ebca3247c77349e09cb803c7ebec0072cd` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xd440c34420fda3e7b2add506e2a63154803f3f7d` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xd7c70a8f7ca491e46a0d0d8f6638ba9198efceee` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xdb0ca7e5c5cb5c662935ce41624078b5843579af` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xdd38458d929f7bdafc057def5f1645663f7634b1` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xe06b3073a51685e11a0290dc44d00cb3e6a6efc6` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xe28272dc762f8d6633697f68ea4850985b697b74` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xe2e54445ade15da4a56bed5081420b0de1b78c2f` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xe5cebf91caac59b4d09bc4cefcad8ddf713f98c2` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xe9c75263f91f45ccb3119ce875a0e1d1662860eb` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xe9eb36f1b8a280130c290a5d346652c9ac4fdea5` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xeb2fac2cdd86574c9f245ee852e93eca8aebd19e` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xeecf64a8f17cb1d85e27dc503646494328781852` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xf36bd0c2fb6d9e479a85306041824da1a932b0da` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xf4609484a418826a2a646314726305592c042df5` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xf8543267e09f6ed14083f2f86144e537449dddc7` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xfa71cf00c924d96771391664a9c58ef26dd21f25` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xfb41de95140fd6b065f561402f163dd12555b5cc` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xfd343faf4b778224b60d3bb6d30e93115c796b43` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xfdedd7558e7028e35bf87e0fb742d926fce9294c` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xfe3fb14a7a9e653292fdf17e6f45aad431880bc8` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xfebdabd9bcc512a272105b310d311c999f2f0231` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | ERC1967Proxy<br>`0xffd20defb08289c4473d80087ae0f2055ae6cb3b` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | InvestorRegistryMirror<br>`0x1f981b595adb59be43cf346d5583c228f30d825c` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | InvestorRegistryMirror<br>`0x3a884d0e4cf4b065bf9aa65b3444c314f68258e3` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | InvestorRegistryMirror<br>`0x64dacec6b66c2a09e27b09d79ba0b4cd30c2c132` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | InvestorRegistryMirror<br>`0x70fc327632ae01e64adcea7c0aee76af4ce9b5b3` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | InvestorRegistryMirror<br>`0x790273d26a7e3af5565ec54d35ee84c705d75450` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | InvestorRegistryMirror<br>`0x7e35ce0bbbef6b1cb874bb288dd2482bd79855a5` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | InvestorRegistryMirror<br>`0xdb06aab7c02663cae6a86a0d46ce07304df25ef9` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | InvestorRegistryMirror<br>`0xf1cc6737c0ef81335c7f03a134591f1f3fdf9f1a` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | InvestorRegistryMirror<br>`0xf938e33bfc8ddc2ef85b5982000daa4f1eff03ca` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | LibreEdgeGateway<br>`0x358524fe389625f3627cd1f267c76ed3ebd850ff` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | LibreEdgeGateway<br>`0x36a2e6c41d8fda6885426f35eca93172a9632401` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | LibreEdgeGateway<br>`0x3a1b86db258970036d9be76e2988c3e360e9ea18` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | LibreEdgeGateway<br>`0x6ad7985733a11337b286c23ed55c8e1427b25f79` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | LibreEdgeGateway<br>`0x7ea8560c4166531af3c9b75cdaebdb865dbee71d` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | LibreEdgeGateway<br>`0xb315f9053b1e96018d3db2f0fb9ded39ab79f440` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | LibreEdgeGateway<br>`0xc95004472b0ecb19ac56bb9cffbc6cd8fbabb096` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | LibreEdgeGateway<br>`0xe5751043247798abec45126ce837f448bcb5e495` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | LibreEdgeGateway<br>`0xedbb6270e4311d8dbffcdd79b3aa3391d8c730dc` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | SecurityTokenMirror<br>`0x2dc00dc699d08bf28bfa7607e3ee157888942956` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | SecurityTokenMirror<br>`0x32796cde216957d29aba3bb23e1a12dcba6998a4` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | SecurityTokenMirror<br>`0x54441904650e4872dd78b8d56d5fe6ab850f0252` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | SecurityTokenMirror<br>`0x59f0d52318f808549c402775d9fd292038d0d1db` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | SecurityTokenMirror<br>`0x7243fc729b7e8bf80e18a44c478fb64fbbacbd86` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | SecurityTokenMirror<br>`0xb4c6373850ceb3f86889e27d9fa1c81e1a324997` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | SecurityTokenMirror<br>`0xc2713e119a3be344bc352349448336582c6b3bd7` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | SecurityTokenMirror<br>`0xe5e6c6d19311b65589aa5bdcd720ff9020efa700` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | source verified unclassified | SecurityTokenMirror<br>`0xedf5e90e76c7e39a56ec737849b51589dda4789a` | non_address_book | unknown | unknown | verified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0x07c923e3633cb2666e300a6de0af8e71ed4daa3c` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0x1bf0b6f244ee2c535d6742eabee9e05928bb10cc` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0x2ec750a087299f91e4565183ad23ce8fe630aba0` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0x3b42bb63a9b37a08c8c5bdc1538cf847dc378cba` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0x4d1b4e60c10d40dd775c084948db05f2423f4711` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0x65f4fc116b8f7880bcda7336917e57da3c373f74` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0x6b8d62dc1cdf58cf66810848a2996e29e029bdd4` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0x7a35f5728578de4e38135da5fd518d2c1e662c1c` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0x7b6b75d04be44959f844c118b578ee5d194ae74d` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0x7bb2a73e7e938756bd72e125bf642b745004f714` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0x8184f5a76598053e9b6532d46717302878ba9b47` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0x87f0140af52ccbb5ecbacaa5d47ff844564ca5db` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0x8fb15f58bbc37e0356bcde5e3814a623d675c5de` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0x9752aa46dc34dbf2e55a32d74d6e1ef062efe898` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0x9a6f097fce80290165b5a5f13a51d92fb1b0b329` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0xa1f01914e1a7e9232dd9f5c0ebb105d5f16f9882` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0xa2029ade9986f1c46a715492bced844c5ada0715` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0xb3e349df7b9c9780ed930e77886fc8ec2e254485` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0xc5306f915d25aa73da9d93fb7fe09904aef58200` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0xcccb6a38b5229886f2dff66fe9e2f411b446ca7a` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0xd0d23565355c97cc3384cd89f577294fa03438f7` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0xd2029c1566dbedfd38660bc72bb414e2a123c3de` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0xd2bc19cb4a2797de5ad3e832926a92f98ee75913` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0xde9ad8446d77c44583e7f5c4218cbe4af63c2446` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |
| sei | unverified unclassified | UnnamedContract<br>`0xe328f75b8ac26280315c0c405eb889a8382f323d` | non_address_book | unknown | unknown | unverified | n/a | `0x1c0c123de8e6c089ac83d3bfc961849b2df4e466` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 14 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
