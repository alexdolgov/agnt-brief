# Agentic Audit Brief: MM Finance

## Project Overview

- Project: MM Finance (`mm-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:33.225Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, cronos, polygon
- Contract surface: 170 unique implementations (202 raw deployments)
- DeFi Llama TVL: $1,184,067.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 49 project-authored contract(s) across 2 chain(s); 16 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 16 common project-authored base contract(s) (governable, proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 292; live-surface contracts included: 202 (31 live, 171 unknown).
- Excluded by liveness: 90 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/13 (7.7%)
- Deployed-live implementations: 13 of 170 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/13
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 157
- Unique implementations: 170
- Raw deployments: 202
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 1 | 7.7% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MeerkatFactory | unknown | polygon | n/a | 2 deployments: polygon [`0x7cfb780010e9c861e03bcbc7ac12e013137d47a5`](./contracts/polygon-137/0x7cfb780010e9c861e03bcbc7ac12e013137d47a5/); arbitrum `0xfe3699303d3eb460638e8ada2bf1cff092c33f22` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AmplificationUtils | unknown | polygon | n/a | [`0xff89646fe7ee62ea96050379a7a8c532dd431d10`](./contracts/polygon-137/0xff89646fe7ee62ea96050379a7a8c532dd431d10/) | ⚠️ Unaudited |
| LPToken | unknown | polygon | n/a | [`0x07a9aaf9c3d4fc53f112dfe0edffd585fe70b5a0`](./contracts/polygon-137/0x07a9aaf9c3d4fc53f112dfe0edffd585fe70b5a0/) | ⚠️ Unaudited |
| MadMeerkatBurrowPoly | unknown | polygon | n/a | [`0x2f5b31d2b4891f0ed183d56dd6ebd55249ca1d0c`](./contracts/polygon-137/0x2f5b31d2b4891f0ed183d56dd6ebd55249ca1d0c/) | ⚠️ Unaudited |
| MasterMeerkat | unknown | polygon | n/a | 2 deployments: polygon [`0xa2b417088d63400d211a4d5eb3c4c5363f834764`](./contracts/polygon-137/0xa2b417088d63400d211a4d5eb3c4c5363f834764/); arbitrum `0xa73ae666ceb460d5e884a20fb30de2909604557a` | ⚠️ Unaudited |
| MeerkatPair | unknown | polygon | n/a | 13 deployments: polygon [`0x1aec8ff1c39c34338327a32bbb35011432614172`](./contracts/polygon-137/0x1aec8ff1c39c34338327a32bbb35011432614172/); polygon `0x384c1b95027b73a98fe31ea5b4b7b031b9ddd724`; polygon `0x8ab47799cb0d49aeb9e3a47c369813a3a3236790`; polygon `0x8c26252b14f9b071585b81b240c4ae2176e8cd3c`; polygon `0xa789324e64268c5385ea7678435fa83532705b0f`; polygon `0xb965c131f1c48d89b1760860b782d2acdf87273b`; polygon `0xd15eb8710e28c23993968e671807d572189cc86e`; arbitrum `0x1fba5288c108dfe673b4d8b3fe39fc6675bedb17`; arbitrum `0x32481a0466e66ee80e9d50a0da120f8d16041787`; arbitrum `0x4119fe7ef21809629239ed2496211d61af78546e`; arbitrum `0x446822663bc5a00798be82f5ceaff4cf10cf06bc`; arbitrum `0x590ff65633bb0cbdf323877d05539e47798786da`; arbitrum `0xc082398767ae77c73f0bc006b0efe460944177df` | ⚠️ Unaudited |
| MeerkatRouter02 | adapter | arbitrum | n/a | 2 deployments: polygon `0x51aba405de2b25e5506dea32a6697f450ceb1a17`; arbitrum [`0x4f879a9d95e01041ddaa607a65f04e0edbd04139`](./contracts/arbitrum-42161/0x4f879a9d95e01041ddaa607a65f04e0edbd04139/) | ⚠️ Unaudited |
| MeerkatRouter03 | adapter | polygon | n/a | [`0x7e5e5957de93d00c352df75159fbc37d5935f8bf`](./contracts/polygon-137/0x7e5e5957de93d00c352df75159fbc37d5935f8bf/) | ⚠️ Unaudited |
| MeerkatToken | token | polygon | n/a | 2 deployments: polygon [`0x22a31bd4cb694433b6de19e0acc2899e553e9481`](./contracts/polygon-137/0x22a31bd4cb694433b6de19e0acc2899e553e9481/); arbitrum `0x56b251d4b493ee3956e3f899d36b7290902d2326` | ⚠️ Unaudited |
| MMOToken | token | polygon | n/a | [`0x859a50979fdb2a2fd8ba1adcc66977c6f6b1cd5b`](./contracts/polygon-137/0x859a50979fdb2a2fd8ba1adcc66977c6f6b1cd5b/) | ⚠️ Unaudited |
| Swap | unknown | polygon | n/a | 3 deployments: polygon [`0x45e46c9dc647d0f89b8e692f327553e5bab22368`](./contracts/polygon-137/0x45e46c9dc647d0f89b8e692f327553e5bab22368/); polygon `0x690bbaa9edbb762542fd198763092eab2b2a5350`; polygon `0x9ee5794322ed1b53131459b44247cd0fe25dab56` | ⚠️ Unaudited |
| SwapUtils | unknown | polygon | n/a | [`0x855ccb701117dd34e30cfc0741c96cf8f56017a5`](./contracts/polygon-137/0x855ccb701117dd34e30cfc0741c96cf8f56017a5/) | ⚠️ Unaudited |
| xMeerkatToken | token | arbitrum | n/a | [`0xb8635f1644422e7ebca07c06b839075a74f57dbb`](./contracts/arbitrum-42161/0xb8635f1644422e7ebca07c06b839075a74f57dbb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (157)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | 15 deployments: cronos `0x1a6ad4bac521a98556a4c0da5946654c5dc7ce0a`; cronos `0x2ccbfd9598116cdf9b94ff734ece9dcaf4c9d471`; cronos `0x2d03bece6747adc00e1a131bba1469c15fd11e03`; cronos `0x3827caa33557304e1ca5d89c2f85919da171c44d`; cronos `0x50c0c5bda591bc7e89a342a3ed672fb59b3c46a7`; cronos `0x654bac3ec77d6db497892478f854cf6e8245dca9`; cronos `0x692db42f84bb6ce6a6ea62495c804c71aa6887a7`; cronos `0x97749c9b61f878a880dfe312d2594ae07aed7656`; cronos `0xa51054bdf0910e3ce9b233e6b5bddc0931b2e2ed`; cronos `0xb6e1705bfafcf1efee83c135c0f0210653bab8f0`; cronos `0xb8df27c687c6af9afe845a2afad2d01e199f4878`; cronos `0xc924da29d37f3b8c62c4c3e4e6958bf2b5ebf677`; cronos `0xd7385f46ffb877d8c8fe78e5f5a7c6b2f18c05a7`; cronos `0xe25737b093626233877ec0777755c5c4081580be`; cronos `0xf8b9facb7b4410f5703eb29093302f2933d6e1aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x01adf1b4a72b2c523f7f05e71a09ff103705c9b8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03c8e5b2f90e13e356a1fc51961fa258bcf631d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x095bc617b36ab227a379550633dfdcbf43f236f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0c617fc8fd80957bf3fd5e7ee26ca5143e90235d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0cec539edbae8dcbd3402978ddca8d08acd7ab2d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0dff219cf53bf64dc39d6a8551c9dc0e65b966dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0faf67d16da185b143a5946d0a1d34860a2e884c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x11ee70bf955203cc72d70bf8b9db73d4dece6ec7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x15ec65425cc38ca82fb76be1c090a655a50858f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x17ba3512a42373ef8fc8824cdd2374b4851180ea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x195ac6c9aa3ca737c51ea3bbbd639599e83b6159` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1fc85816583d73898e7a5d5ce4934bb589f80ad3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x295d8cfa5f9cdb102ae80f59d758e9a9f33fd0be` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2ba9e50c8a3b728052860b4e0f55780c3b6f300a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2c456d1011c51ff6f22e6bdba878da4b13e40824` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2c6978a0503e81e26e3aff6ade45ba1f5d12b4a2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2ef58fd24101619b33ba6b1c18199909fd1d38c2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x308c22454a9af006d409d900358cc8c16a5dccff` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3392fbe3ad85bc4798c86acfb6efde30cee692b7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x339f42cd876579e7ed31ebfd31d67a93a668f74b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x34b0bd5cc04ca6ae907ac1e07141c2ad948679b6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d03dbc66370acbeeacd1c821f02b2dfdef6e259` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3e1402ac0ef78390cac295c6713ae0b887d7749d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x443ec402bec44da7138a54413b6e09037cf9cf41` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x446e64a0a627c29df90eb7400a0e57d22f82e95e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4724adf1278ac1ecf7b70db7f551286d858356fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x47f6d98438026b23fb60706c3041e53cce45258a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x48f27475d0f7cb9c28a3161525b0e9c3d38280af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a114b600f19c599e77e6f1181c2fd8bbaf39a2c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4bca9cc1d6aa81fe295d51a30cd1dbf4c902f482` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4ed9beb8ee5987c1273d5fd3830e8d0d0ff1f526` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x567e7e01db38131d36267bcd5917c03863296b04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59044e92beecd12900a1b2cefe0f3b9388fb5c53` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a64e6c0b5b3e7653291aadcdaefa0a053760c56` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5c76583b78110a8d3fc149529793a8ada231d147` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x67b46290771c441eedbd1a040a3e0ebe1435f14e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x692db42f84bb6ce6a6ea62495c804c71aa6887a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6995860ce559d820fca1f5440524d8aa77add3e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6c563835b6208e0482336d404f5cad572bebe76b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6cc28c81fc9e387b6ed9fdeec32dd5cbac26b0bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6d4bed60fe9a3a3ab5e4a20807035dddeaa1fe88` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6d713b7fc4639d30503cd14c00039a31efaf0c72` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6e6175c993abd316090e8af94b74476fd92ce1a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7059137b388b2fd11bd863e6c8b80f4f19edd1a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78408511e0d81732970a44ebca4bacff96540dda` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x799b03df21f5027e2a0ddcfceb383b3fd2c4cc39` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ae5b1385faddf0db5af1834a63c3ba5ace22221` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7aebfcecec91a1d42ad0869d1dae396c96f93c40` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7bb98a0f7c366777e7d4832136c085e0205fc052` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7e41296cc8d695d9703fa99cbe1ce5f68fb69545` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8504f0c5bfe3cba5462d69a2e0bce8a65a92188d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8523e6cdc1c7f3c92d5ea13c9c9b9943732e30fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a3ae556e8108ae310be7888e2f136c611d75298` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8bb9cc60f830c1b78cdb94295fa756c28cfaa4d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e0170370401463024c3343fcbd21a5723c97873` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x91b50ec30ef0e403994dd5ee638512dcb5b4993b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x94ee0203fead86f7a00e908bfcf0e8b38b47e481` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x961c1d7005c9191b70e1cd505f80fc06a2d07494` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9629a082a638115c0867768e09ca78a02d5b8d01` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x979ed6507b81cd50f1273fb1f811734804449581` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x98c65fba93fb6a64e22cbc77a4584abbc83270e6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x996a3deb54775e87b0edb043d09130ba83a187bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9bfd18b597e69f38c326e4b898aa9699468341d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c5dc509425afd1deb21292b503089cd0c8badda` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e91eef8135e4c30d3c02a1f369284938804a694` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa4dab5a7a2304faa580a35f781e82bdfb4ab4253` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa5cf7dbd4d2f6f2f964be27d5ca048adaa5afd6c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa7896e6e9d701d85166a6ee7d298078aa184469b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa827b9cdfb366ae1822ed4f9853b2e9e42c8f275` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xab51cb53898e2b164c269c9955c2f03a684ff6e6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xac5c856ceb258b9128961c392b7ab04eac8f9f5d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb208c0e74318ca522a8a5a67d6c92ba01259fd84` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb36424da9f709dd3d3ddbd85a0e89d194c638116` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb64754d06d7fa94f443629717c6560d35680e6b4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb7e97cba2e86c8ccda81e1e9b0041914566a3ccb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb9c4dbe6caed88ca406cf2a395aeef49ac3ad137` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbc67c7c5d597714d0b55cd7e43e7c80d302abc71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbeb921f177b482cf1e6c935adffe97a1198a0bcd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc2e0cb53121293321bafc9ffc0d6a1aed72ebba4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc4ba95b0174c1512100c8ab5e7573b70e0e0d254` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc5a3be9a51060d10c9164fd7f24d332537eada5a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc664775f196838b63cd465f1335aa843263f3341` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc67aa9b90c5a72ca5bdc3d0fd2a70dfe82c849de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc821756abe653f7d221d25e9a27629318bf928ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce6c2b3f5c774b835c1e9dbd4c25921b0807306f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd0130f8a2e63d68e91366a45c6a27a7e87934d8c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd09fa8267f328e9b69aeed12f06aba04a5be2d06` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd32001f964405549951511063df11548b8b9e302` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd4cc2ca9836a3282abc63c7e0fe3a092db1a7612` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd6f8b2bb097158df4d5e3c048f40ace708a4f9bb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd751f694737bfb06b17d47e39a0fec83f7172252` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xda6605dad9293328aa9ce6097ace8dfb7b6b4887` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdfaf6fb7438605ef9a388f414be89e5377c42e02` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe0d6b2eab2d793b0320ff002e6477372afdb0e5f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe48105c589afde658aa14b8b5bad13d2b6b3437a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xed871d77bafb1bad042166e1bd69fa7c30984f6a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef71d267c97d0dd888de1285c4c965118f5945a9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef83cfac092bc5f53feebac962e397e610d3852f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf0364d0c610ebdb14060a3d47954630a7f64c55f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf42de8060280c6d8afbf54ff7d8789cf4113c80d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf4b8f645b713f7d6983f137fe7f9b100505af225` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf8eed914a0bacaf30c13420989bb7c81b75d833a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa461f2445503e2f3c0463033e4c1dedd2c2eac7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa4dd8b1b85804396b104b7b1961bfeae903e2a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfeece287b1c6389217c11f014fcf9761732e8047` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0c042a5db2e4a5fa20cd98378e24961edd9cfd51` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a4bc0e1000a267c1c9805116c15b2a01fc67cb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b1d67e7e56e22c1423523673d762ad39996a038` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20bcbf8f6af0ef374a7b2da8bdbb948b4f076517` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x302b819564ccb961c6b3605f3049031e97b5ad24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37e3529356c1b8c158e3a3a15c24982d1e2f94a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x39fe314d7080693086b3b00f0f1de89a2161fd19` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3b91d766c912f5488ca3a9def9493193936be6e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3cb6934bf0963fc77e0dfafb02f2d4e2f6936a8b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4325a5b6ca1fbd395cfb8b01f06379bf813a1915` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x48603ede60abe109d17f0d840530cb0147c8515d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x49650f30c5346f477f3d537c209d549c06fd977a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ac4e37e029bcdd83b507f08538e638e559a4f4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d90b96483bbe0a498dc8e9be287bac110051d8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4de75dd900072b951dda763e318468d1f0b2ea55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f0521537d55f1b4731ee5540d3c2273e0300a5e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c09596ffbe03d3f1fa62456696e2bd3b9a69e12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7438b5afd2f38e16322ba24bc9c13b121859c5ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x79f00fd2d43c54f833ce0f283ec512793b29b007` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b07d572ee081cdb2db04e6d7c4a66563cb8974c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84cab6fe1ffba4867a8b394ec97863a21ca9cd08` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x85b6b458ea75e733ebe7982c37e931fcdea65033` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8629cf1ae642bdb8015ed64137a14c0a719c8969` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c3302e7f776b9853ff008dedd7d20fc5dbf03ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9092d61f30bcea09b804c4a1f7e17db40913bb06` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x940d1402162a6c7e197d11271fb785f65c13dd7e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x974778e386afe448c7ed7813fcbd7b7c44f400a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2998f0d2c1e59cdce7521a726a169d611895ccd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa63c0fc35ce80674aa15fed2c9f306db6e9ebdd1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa739cd7e7e2e0834ef821f677a2582e1105b8985` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa761cb792a867156615b61cfbf213366d6d3f283` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa93dd64566b42adf4fd0db3a538d9856ba596e47` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb188e68236c82a791838228a0449b0b46a700bef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4e5e3ca5a7a314bdd3bce733a13a547d090d2bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce17f8ef13cf67da6eab86e31360102eea8609ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce8ef56996c2f9e20fbfed800bde0cc2ccadb095` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3545fd1c865a8cbb918db5edb03dfc91b5528db` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd7208749c35dbacf666f9fdc523f7256ac43449c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xda421250e7169db2d9c126852c82a88f053a5c02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xda9b153a1ab9ddbd34b442c2d846be1e5bd1849a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc7b23ce4ed494ceff31aa1bb5c2e3c687cbef81` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe1243fb6c08c924202aa3b02f48e590855c17c41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe3bb7c72674c643d69b2898848668a11e58a28bc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4e391a7a7d38b5ece0724e66b132a8c011c2b20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe77c4ad5469145d486e3fb02509e0bf257e15b83` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea660d16609fcf71ff020acf335d4cc6d9eee69b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1803683b99f6bb669905ad8c9b509960f61529d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf6099733607090f0d61ebf296f4873f3eafbffe3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfa1bdc88ba88c2ee93bddbe3a9d1e6aad47d687d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb3e47fbbf99d48aa8fe847925dac8e9b4974778` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfd9c608e05e62500670e658611885bfa161b3982` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/mmfinance](https://skynet.certik.com/projects/mmfinance) | CertiK | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [paladinsec.co/projects/mmfinance](https://paladinsec.co/projects/mmfinance) | Paladin | Audit | 2022-01 | stale | Direct | contract_name | 2 | high |
| [security-audit-certificate.html](https://www.slowmist.com/en/security-audit-certificate.html?id=765046458bfbfbdf114db4689625c2fd215c08f5175545d8b4bdc01cc4e140d3) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xff89646fe7ee62ea96050379a7a8c532dd431d10`](./contracts/polygon-137/0xff89646fe7ee62ea96050379a7a8c532dd431d10/) | AmplificationUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x07a9aaf9c3d4fc53f112dfe0edffd585fe70b5a0`](./contracts/polygon-137/0x07a9aaf9c3d4fc53f112dfe0edffd585fe70b5a0/) | LPToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2f5b31d2b4891f0ed183d56dd6ebd55249ca1d0c`](./contracts/polygon-137/0x2f5b31d2b4891f0ed183d56dd6ebd55249ca1d0c/) | MadMeerkatBurrowPoly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa2b417088d63400d211a4d5eb3c4c5363f834764`](./contracts/polygon-137/0xa2b417088d63400d211a4d5eb3c4c5363f834764/) | MasterMeerkat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1aec8ff1c39c34338327a32bbb35011432614172`](./contracts/polygon-137/0x1aec8ff1c39c34338327a32bbb35011432614172/) | MeerkatPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4f879a9d95e01041ddaa607a65f04e0edbd04139`](./contracts/arbitrum-42161/0x4f879a9d95e01041ddaa607a65f04e0edbd04139/) | MeerkatRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7e5e5957de93d00c352df75159fbc37d5935f8bf`](./contracts/polygon-137/0x7e5e5957de93d00c352df75159fbc37d5935f8bf/) | MeerkatRouter03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x22a31bd4cb694433b6de19e0acc2899e553e9481`](./contracts/polygon-137/0x22a31bd4cb694433b6de19e0acc2899e553e9481/) | MeerkatToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x859a50979fdb2a2fd8ba1adcc66977c6f6b1cd5b`](./contracts/polygon-137/0x859a50979fdb2a2fd8ba1adcc66977c6f6b1cd5b/) | MMOToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x45e46c9dc647d0f89b8e692f327553e5bab22368`](./contracts/polygon-137/0x45e46c9dc647d0f89b8e692f327553e5bab22368/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x855ccb701117dd34e30cfc0741c96cf8f56017a5`](./contracts/polygon-137/0x855ccb701117dd34e30cfc0741c96cf8f56017a5/) | SwapUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb8635f1644422e7ebca07c06b839075a74f57dbb`](./contracts/arbitrum-42161/0xb8635f1644422e7ebca07c06b839075a74f57dbb/) | xMeerkatToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 157 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [3064] skynet.certik.com/projects/mmfinance
- [3066] security-audit-certificate.html

Fork inheritance lineage and inherited audits are included when available.
