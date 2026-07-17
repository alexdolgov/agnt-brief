# Agentic Audit Brief: SOFA.org

## Project Overview

- Project: SOFA.org (`sofa.org`)
- Website: [https://www.sofa.org](https://www.sofa.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.461Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, bsc, ethereum, polygon, sei
- Contract surface: 65 unique implementations (235 raw deployments)
- DeFi Llama TVL: $1,882,136.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options. Structurally: 27 project-authored contract(s) across 5 chain(s); 5 ERC20 tokens, 4 ERC1155 multi-tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 1 common project-authored base contract(s) (signaturebitmap). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 271; live-surface contracts included: 208 (192 live, 16 unknown).
- Excluded by liveness: 63 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/35 (25.7%)
- Deployed-live implementations: 51 of 65 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/51
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 65
- Raw deployments: 235
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 14 match-unverified
- Tier 1 coverage: 11.4% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 15 | 29.4% | 2025-01 |
| Code4rena | Tier 1 | 7 | 13.7% | 2025-01 |
| PeckShield | Tier 2 | 4 | 7.8% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AAVEDNTVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x00aeca021d0f06c7dee54d58ee6af47b5645ab19`](./contracts/ethereum-1/0x00aeca021d0f06c7dee54d58ee6af47b5645ab19/); ethereum `0x989897f1d976ee0b59bf0a3172c170d8f3cb84e3` | ✅ Audited |
| AAVESmartTrendVault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x21f759bcb31739032a00b37e3560a216ae52efdc`](./contracts/ethereum-1/0x21f759bcb31739032a00b37e3560a216ae52efdc/); ethereum `0x3191a0008415deb5c5161c4b394ec46c8c703f8c`; ethereum `0xc9aa266e2e50ec2474cd881566845480f8dae931`; ethereum `0xe483d580664cd72b0a8cae0d65effa6587bd2263` | ✅ Audited |
| AAVESmartTrendVault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x62104e40fa81a19f2b7e17c78c3ffbf4aca4f212`](./contracts/ethereum-1/0x62104e40fa81a19f2b7e17c78c3ffbf4aca4f212/); ethereum `0x9377f17abde96887943e5fcc92db034c76820529`; ethereum `0x99c59d82b10c56950f6c031946656e6d0ad509ca`; ethereum `0xf6c70b5f034070001e833c9ebc6a3a0176b683a6` | ✅ Audited |
| AAVESmartTrendVault | unknown | bsc | n/a | 4 deployments: bsc [`0x4573382a9d101eb6dfa1c4b448f939c41ff3e81d`](./contracts/bsc-56/0x4573382a9d101eb6dfa1c4b448f939c41ff3e81d/); bsc `0x5dcefca5207c58dcbcf41ef017d1d0eb42d83701`; bsc `0x842e97baa96cfe1534f1a50da112c7800134656a`; bsc `0x89c82d1b7616b0a465311ff077db6bc21d43ea22` | ✅ Audited |
| AAVESmartTrendVault | core_logic | polygon | n/a | 4 deployments: polygon [`0x46706780749bc41e7ab99d13bc1b2a74df40a7da`](./contracts/polygon-137/0x46706780749bc41e7ab99d13bc1b2a74df40a7da/); polygon `0x4fd90c6b2a81d65a10e366dc5051d4d1a2a1c021`; polygon `0x842e97baa96cfe1534f1a50da112c7800134656a`; polygon `0x89c82d1b7616b0a465311ff077db6bc21d43ea22` | ✅ Audited |
| AAVESmartTrendVault | unknown | sei | n/a | 4 deployments: sei [`0x088dbbeec1489c557f8d4fd6146e0590e303d7d9`](./contracts/sei-1329/0x088dbbeec1489c557f8d4fd6146e0590e303d7d9/); sei `0x634b69cc4168cfc1c366078fdeb874affbb478b5`; sei `0x64bb275066e7275fb0803c3e617ae3ab2a882ff3`; sei `0xfff0d064b1cbf5d4c97d0af56a73a4c7e31dfb0d` | ✅ Audited |
| Automator | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0338c2d1908549f4fcbca9da84039de1bac5c6c1`](./contracts/arbitrum-42161/0x0338c2d1908549f4fcbca9da84039de1bac5c6c1/); arbitrum `0x4c241483b4a85e44c59bcecfe17a4e7d0a073cdb` | ✅ Audited |
| AutomatorFactory | registry | arbitrum | n/a | 3 deployments: ethereum `0x438b597bdc946db1bd62c2bb32ccec7742be720b`; sei `0x6417084b8df644e1d7e32be39b54f3a5bbea645b`; arbitrum [`0x1893b75a9711e1c84be86a81edc7f2929d6e5aff`](./contracts/arbitrum-42161/0x1893b75a9711e1c84be86a81edc7f2929d6e5aff/) | ✅ Audited |
| DNTVault | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x4140ab4afc36b93270a9659bd8387660cc6509b5`](./contracts/arbitrum-42161/0x4140ab4afc36b93270a9659bd8387660cc6509b5/); arbitrum `0x7ecd1b5255543f4c2d7d8e475afcd01699dbe2b0`; arbitrum `0xdfeb3460771148799b2d4344c369e2b2d6c26c42` | ✅ Audited |
| FeeCollector | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4140ab4afc36b93270a9659bd8387660cc6509b5`](./contracts/ethereum-1/0x4140ab4afc36b93270a9659bd8387660cc6509b5/); arbitrum `0x4bd6be959897631fbe5a8aae01707219850e032f` | ✅ Audited |
| LeverageDNTVault | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x1d2faad42cbf3dc121659d856a9a405ed1067873`](./contracts/arbitrum-42161/0x1d2faad42cbf3dc121659d856a9a405ed1067873/); arbitrum `0x3fe4fd33935bf189e39abb8b58fcdfd80daeede3`; arbitrum `0x6f4dbcfc81dd22ae3edec5f9724e43cba8c92e50`; arbitrum `0xa8fcc1ba1d4893a4894206986b65f652d5fe04ab`; arbitrum `0xbefb3aad1dfb1660444f0d76a91261ef755b2b86` | ✅ Audited |
| LeverageSmartTrendVault | unknown | arbitrum | n/a | 11 deployments: arbitrum [`0x0243cb49228c95dcb6cb13770417ab9528c51583`](./contracts/arbitrum-42161/0x0243cb49228c95dcb6cb13770417ab9528c51583/); arbitrum `0x08c57ae48a89b6876a76dc618972ef1602da7ed8`; arbitrum `0x262ba09cd0a08ccb6075576ad702a7e58200109e`; arbitrum `0x35383ce810dbc7b2d8788ceb7ba24ab9ebf3b431`; arbitrum `0x4a5b4049a4afae31278d36768704872f73da67d1`; arbitrum `0x7e11ce3e893081b111b720df29669def14e81cde`; arbitrum `0x8e882a56604f2b5735ea979bd6fa06c064d2f3f9`; arbitrum `0x94fe821e8adde08ab97530d432ff34a724fd7830`; arbitrum `0xa76ee91c6e51d248782d7c81826df91522a6ef96`; arbitrum `0xf7be091bcbbb79f3d9029a25dc94bc8fdd134eac`; arbitrum `0xfa49f859a012e8b1795a81b23b21db0bd40e7770` | ✅ Audited |
| MerkleAirdrop | operational_periphery | ethereum | n/a | [`0x5a8cdda6ca37b284b32ef8d513ef71ddac553270`](./contracts/ethereum-1/0x5a8cdda6ca37b284b32ef8d513ef71ddac553270/) | ✅ Audited |
| RCH | unknown | ethereum | n/a | [`0x57b96d4af698605563a4653d882635da59bf11af`](./contracts/ethereum-1/0x57b96d4af698605563a4653d882635da59bf11af/) | ✅ Audited |
| SmartTrendVault | core_logic | arbitrum | n/a | 5 deployments: arbitrum [`0x00aeca021d0f06c7dee54d58ee6af47b5645ab19`](./contracts/arbitrum-42161/0x00aeca021d0f06c7dee54d58ee6af47b5645ab19/); arbitrum `0x106825b71cce77a70b69f57a0acf9c4a6acf292a`; arbitrum `0x4f1b513f846821559d59e8324eaef201cb5b0479`; arbitrum `0x6e72c8726c71a4cbc6e31ff7d47b399fa983c7b8`; arbitrum `0x989897f1d976ee0b59bf0a3172c170d8f3cb84e3` | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AAVEDNTVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f519b172917cfd6b7a69ef9d37e13ac7dff5e39`](./contracts/ethereum-1/0x1f519b172917cfd6b7a69ef9d37e13ac7dff5e39/); ethereum `0x20a82619fcd300f3e0028db6353d38e3cc3b9e14` | ⚠️ Unaudited |
| AAVEDNTVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3a253838121b9ad9736fafc030cf4971615d68b2`](./contracts/arbitrum-42161/0x3a253838121b9ad9736fafc030cf4971615d68b2/); arbitrum `0xd9cff1bc89f705eab2579fa2dc86e9a6f971370a` | ⚠️ Unaudited |
| AAVEDNTVault | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x3abc7053ec29e26c1429195fd971f280422eca80`](./contracts/arbitrum-42161/0x3abc7053ec29e26c1429195fd971f280422eca80/); arbitrum `0x75809d59a9a69226972dbb84cb2d1851c5cd0cbf`; arbitrum `0x8f9259a355933737f8f11f95d32460ecd5ed0706`; arbitrum `0xa5492baf06692c0051d69d31458d536bacc08651` | ⚠️ Unaudited |
| AAVEDualVault | core_logic | ethereum | n/a | [`0x7df81fdd4b995b31624f3d6662d547ac313b32ad`](./contracts/ethereum-1/0x7df81fdd4b995b31624f3d6662d547ac313b32ad/) | ⚠️ Unaudited |
| AAVESmartTrendVault | unknown | sei | n/a | 4 deployments: sei [`0x00aeca021d0f06c7dee54d58ee6af47b5645ab19`](./contracts/sei-1329/0x00aeca021d0f06c7dee54d58ee6af47b5645ab19/); sei `0x4f1b513f846821559d59e8324eaef201cb5b0479`; sei `0x6e72c8726c71a4cbc6e31ff7d47b399fa983c7b8`; sei `0x989897f1d976ee0b59bf0a3172c170d8f3cb84e3` | ⚠️ Unaudited |
| AAVESmartTrendVault | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x1e5a684d263f42bac1f2bad6fb379277d4d6c28c`](./contracts/arbitrum-42161/0x1e5a684d263f42bac1f2bad6fb379277d4d6c28c/); arbitrum `0x770f7fcece69c68b208b80bbc4e3d1bf8f9c0672`; arbitrum `0x986fa0383c39dbda1b3a29ac536fe5df354ed160`; arbitrum `0xbf898c0c2e7d415de8fccc78d1200d029a060560` | ⚠️ Unaudited |
| AAVESmartTrendVault | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x2f1c60ba96ec6925fa9bbbfc9eb7908bd35bc224`](./contracts/arbitrum-42161/0x2f1c60ba96ec6925fa9bbbfc9eb7908bd35bc224/); arbitrum `0x72e0906558e4ee528974cd7803bff12d9f2869c3`; arbitrum `0x9377f17abde96887943e5fcc92db034c76820529`; arbitrum `0x9c5d3c3abd633b8ea68c5a51325f8630dc620ad9` | ⚠️ Unaudited |
| AAVESmartTrendVault | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x3d407e582aa504ac9e8417098807c1e10f2bb97c`](./contracts/arbitrum-42161/0x3d407e582aa504ac9e8417098807c1e10f2bb97c/); arbitrum `0x3f4dce54ff5f07f5907123eb678528f7c913c773`; arbitrum `0x4713584839e3cd8a76433f64318ee202501173cc`; arbitrum `0xbfd58c8150cf7048d5c149fa2baddd194b8416fe`; arbitrum `0xcb7c53dd726caaa129a2736aebecf1e5d5bc87ad`; arbitrum `0xddaa9d3a83e3db4f9a3cb593787db8d3063e3cc1`; arbitrum `0xf1485cdec97a334996913be68a0563ebe0c72ffc`; arbitrum `0xf82491af99d6eee7fb7a964bb8bf6edc67a230f0` | ⚠️ Unaudited |
| CrvUSDDualVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x060c233146eaed1eff8bef320aaa224377bf76d3`](./contracts/ethereum-1/0x060c233146eaed1eff8bef320aaa224377bf76d3/); ethereum `0xeecacc0d50f26fee5aa1afba83e8c4e77eba162c` | ⚠️ Unaudited |
| CrvUSDSmartTrendVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x9832e7e40d5a1495ca7bdbcd6a5c0a90d28f6cfa`](./contracts/ethereum-1/0x9832e7e40d5a1495ca7bdbcd6a5c0a90d28f6cfa/); ethereum `0x99595455ba95b286f8e2614470b865e34f034aa1`; ethereum `0xf421b050647cf6eb757de873f212e04a5e324487`; ethereum `0xf5bf8aa4b571ff2be9905289bfcebc1d46408d9f`; ethereum `0xfa19cf314cb0ddd21a9f993f4619ef4fc77e06e5` | ⚠️ Unaudited |
| DNTVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3a253838121b9ad9736fafc030cf4971615d68b2`](./contracts/ethereum-1/0x3a253838121b9ad9736fafc030cf4971615d68b2/); ethereum `0xd9cff1bc89f705eab2579fa2dc86e9a6f971370a`; ethereum `0xdfeb3460771148799b2d4344c369e2b2d6c26c42` | ⚠️ Unaudited |
| DNTVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0xbefb3aad1dfb1660444f0d76a91261ef755b2b86`](./contracts/ethereum-1/0xbefb3aad1dfb1660444f0d76a91261ef755b2b86/); ethereum `0xbfd58c8150cf7048d5c149fa2baddd194b8416fe`; ethereum `0xf1485cdec97a334996913be68a0563ebe0c72ffc`; ethereum `0xf82491af99d6eee7fb7a964bb8bf6edc67a230f0` | ⚠️ Unaudited |
| DualVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3400f3a1822e17db576fe9bba4774123a5febdbb`](./contracts/ethereum-1/0x3400f3a1822e17db576fe9bba4774123a5febdbb/); ethereum `0x4de9d93993c1d4944fb6044a2dd8877d945fd43c` | ⚠️ Unaudited |
| LeverageDNTVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x50752522d249230fe60c855098bb4a7a0974e746`](./contracts/ethereum-1/0x50752522d249230fe60c855098bb4a7a0974e746/); ethereum `0x8ea01d16882596863d215640451287b44077df0f`; ethereum `0xf4a60252b139e29a415c341a0d21261496d27d02` | ⚠️ Unaudited |
| LeverageSmartTrendVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x071e0c2be2b16c8b00173c6535ef8331b8e1feed`](./contracts/ethereum-1/0x071e0c2be2b16c8b00173c6535ef8331b8e1feed/); ethereum `0x3abc7053ec29e26c1429195fd971f280422eca80`; ethereum `0x57f841c0a9c22ef1f0d8a1604b6388bfa3536932`; ethereum `0x8ea9638f2587b20396ec8c45dd639deb115f5211`; ethereum `0x8f9259a355933737f8f11f95d32460ecd5ed0706` | ⚠️ Unaudited |
| LeverageSmartTrendVault | unknown | bsc | n/a | 5 deployments: bsc [`0x40144bc227f78a288fe9ae6f4c7389c92c5ad9cf`](./contracts/bsc-56/0x40144bc227f78a288fe9ae6f4c7389c92c5ad9cf/); bsc `0x41df07a5e58d551164fcaead4c1ee67b77a84776`; bsc `0x53b4b7312e543435f77f25648fa9b269d0918bc5`; bsc `0xab08ff5dd91636fe556f692825cadd7ba04a4c97`; bsc `0xd0fb7977df47d7fe946a21679dabce877f7a3a05` | ⚠️ Unaudited |
| LeverageSmartTrendVault | unknown | polygon | n/a | 6 deployments: polygon [`0x40144bc227f78a288fe9ae6f4c7389c92c5ad9cf`](./contracts/polygon-137/0x40144bc227f78a288fe9ae6f4c7389c92c5ad9cf/); polygon `0x41df07a5e58d551164fcaead4c1ee67b77a84776`; polygon `0x4573382a9d101eb6dfa1c4b448f939c41ff3e81d`; polygon `0x53b4b7312e543435f77f25648fa9b269d0918bc5`; polygon `0x5dcefca5207c58dcbcf41ef017d1d0eb42d83701`; polygon `0xd0fb7977df47d7fe946a21679dabce877f7a3a05` | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | 7 deployments: ethereum `0xfa24b9f8de8005c21fab37bda02c4989ebb70089`; bsc [`0x4fd90c6b2a81d65a10e366dc5051d4d1a2a1c021`](./contracts/bsc-56/0x4fd90c6b2a81d65a10e366dc5051d4d1a2a1c021/); polygon `0x57b96d4af698605563a4653d882635da59bf11af`; sei `0x89c82d1b7616b0a465311ff077db6bc21d43ea22`; sei `0xa9e233c3ad6d508525989c0a501e2d876cdf0942`; sei `0xd9cff1bc89f705eab2579fa2dc86e9a6f971370a`; arbitrum `0x5a8cdda6ca37b284b32ef8d513ef71ddac553270` | ⚠️ Unaudited |
| RCHAutomatorFactory | registry | ethereum | n/a | [`0x3079993b5be4d18d504a6e58939ac6637d47dc1a`](./contracts/ethereum-1/0x3079993b5be4d18d504a6e58939ac6637d47dc1a/) | ⚠️ Unaudited |
| RCHDNTVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x53ee67c562a7e933679425e6c0070e2b810387a3`](./contracts/ethereum-1/0x53ee67c562a7e933679425e6c0070e2b810387a3/); ethereum `0xcba5c0ffe525312ce1515c2587f3c64f8ae953b6`; ethereum `0xe517772fa1eedaf3f69917240da5f6dc3294499d` | ⚠️ Unaudited |
| RCHDualVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x51df98cbbc8173cd207597f9eca0f8f65ff2c395`](./contracts/ethereum-1/0x51df98cbbc8173cd207597f9eca0f8f65ff2c395/); ethereum `0x5354c5d057c73b24aa941ea57a07d0e1079be18b` | ⚠️ Unaudited |
| RCHSmartTrendVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x13ef7013e98197ef850969a21ef1b42e71dd6cfa`](./contracts/ethereum-1/0x13ef7013e98197ef850969a21ef1b42e71dd6cfa/); ethereum `0x4cfc3a41d652af5cd5f1c3e729048890b0173123`; ethereum `0xc0baa3440f14137e4af0c60cf181812ddf791f38`; ethereum `0xf07d6b83433876e79b656c008034c687509d77a7`; ethereum `0xfce59048fe68f07a9872a678332667a7d7c1749e` | ⚠️ Unaudited |
| RebaseSmartTrendVault | unknown | ethereum | n/a | 9 deployments: ethereum [`0x26e9aa240070d37c109e976b688e9b05c6bd946b`](./contracts/ethereum-1/0x26e9aa240070d37c109e976b688e9b05c6bd946b/); ethereum `0x4a42a325c5ec31f6a6eb547b00ce6bf6f2c057f2`; ethereum `0x550ccec27639e01c5d9ade39f75e1351f791d2c2`; ethereum `0x622ccb3c38502dd9175b347fd32bb327a7175ffd`; ethereum `0x69bd97280e3e3597b42b0c9e01000812ead5af6e`; ethereum `0x81ed11567b73043ad7f05d4531ba431811029452`; ethereum `0xa86dc0e47697d23469c1804a3a40021befcd89a2`; ethereum `0xbbd734583344d7cfdbdcac597e83486dfdf297f4`; ethereum `0xe8f4cef205adcae6521da662954ebc6fe4497968` | ⚠️ Unaudited |
| RebaseSmartTrendVault | unknown | bsc | n/a | 7 deployments: bsc [`0x084ca8e8690e3e8fe0bd4836c90b4107cd40e712`](./contracts/bsc-56/0x084ca8e8690e3e8fe0bd4836c90b4107cd40e712/); bsc `0x6779e7867cf63d6d78d5bbab7253450529514c65`; bsc `0x71a17099872d2fe4f2aa8d6dc95600a87d18381f`; bsc `0x72f25a7689ec614e0ff6376308af96bea110feca`; bsc `0x9b9b91081f2fb23f4872b7c0e50a6d30e5dd8a8b`; bsc `0xa0fa94f10907a8367d01061c1c80a3298dfbcc35`; bsc `0xcd0e489d8f83ba71130eef4d71264a6dbbbae742` | ⚠️ Unaudited |
| RebaseSmartTrendVault | unknown | arbitrum | n/a | 13 deployments: arbitrum [`0x091880b51225fb6b1935be8a71fb47502bff7e5f`](./contracts/arbitrum-42161/0x091880b51225fb6b1935be8a71fb47502bff7e5f/); arbitrum `0x09ccc21c7f914ce089cb3c512db0dc5a46aaad4e`; arbitrum `0x3a129bcd6a62dbc063bc7faaa97e750f765f0e86`; arbitrum `0x3d5489b9846cd3bc3e05d32d46c51d50fa37c049`; arbitrum `0x40e439cb71379ee5ff6b914313c11a792a385e93`; arbitrum `0x68c91df6ecba6c697217d747f04b72eedc6af1e7`; arbitrum `0x6c18e7879afc7b913b97fbcce49b159181460fb3`; arbitrum `0x8b80186105b982b79a90c0812610ed0fc6cbdbd3`; arbitrum `0xc914ba8f6393cc611bd1d207e317c68be27943eb`; arbitrum `0xd1c8522b723d625593f2920694e94e1d8ad1fbd1`; arbitrum `0xe05355c5a198508f4d896cb4039619379372d61c`; arbitrum `0xe4df808c3ab52ef62e3a953aa11957efefe75933`; arbitrum `0xe5e97358663022277a99d97f7bfcd33074c9dc94` | ⚠️ Unaudited |
| SimpleSmartTrendVault | unknown | ethereum | n/a | 13 deployments: ethereum [`0x2bdbdb994fb7e7772eaa16ccc41430e095d0706a`](./contracts/ethereum-1/0x2bdbdb994fb7e7772eaa16ccc41430e095d0706a/); ethereum `0x362950d5ebba5714ec78a5dc024b8386500379a0`; ethereum `0x397c32d2a635aee7b28188fd676dbd9cc47ff282`; ethereum `0x4a1bc9d8b2ed7bf9b9c1979037992cff064e4f40`; ethereum `0x5e5e689284a614127af9dea546b8d943b8b80e5c`; ethereum `0x6d05eba244fb40b4db1df9d66103735b90733f67`; ethereum `0x829f4309b664a8977cc325363454b87ce7dd1184`; ethereum `0x9c3386dbd53e593c0ee667d962aee41cee0cf043`; ethereum `0xce8ec0a440019d696b45a209c1fdb91a9f1edc51`; ethereum `0xd4c30ff19f2ffd23ba9b23548b1ac4b2c0c19da4`; ethereum `0xde417ea3a884a34a8f2dc32b4b0a1a9c3c9b61a0`; ethereum `0xe02a2ccadab3e071ec43c3ee350a79b7a09d8155`; ethereum `0xfeb0441ab16a26880955d43c8e63b90cd7b95fdf` | ⚠️ Unaudited |
| SmartTrendVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x08c57ae48a89b6876a76dc618972ef1602da7ed8`](./contracts/ethereum-1/0x08c57ae48a89b6876a76dc618972ef1602da7ed8/); ethereum `0x1d2faad42cbf3dc121659d856a9a405ed1067873`; ethereum `0x4a5b4049a4afae31278d36768704872f73da67d1`; ethereum `0x94fe821e8adde08ab97530d432ff34a724fd7830`; ethereum `0xfa49f859a012e8b1795a81b23b21db0bd40e7770` | ⚠️ Unaudited |
| SmartTrendVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x106825b71cce77a70b69f57a0acf9c4a6acf292a`](./contracts/ethereum-1/0x106825b71cce77a70b69f57a0acf9c4a6acf292a/); ethereum `0x2f1c60ba96ec6925fa9bbbfc9eb7908bd35bc224`; ethereum `0x5494855b98858ea4ef54d13e1d003197a387ce34`; ethereum `0x6e72c8726c71a4cbc6e31ff7d47b399fa983c7b8`; ethereum `0x9c5d3c3abd633b8ea68c5a51325f8630dc620ad9` | ⚠️ Unaudited |
| StETHDNTVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x141b893e4ae446e634e92116000e54d7fc72bc65`](./contracts/ethereum-1/0x141b893e4ae446e634e92116000e54d7fc72bc65/); ethereum `0x2b7b938717ca07970e9768db98f7e7541d3638b7`; ethereum `0xc0f6d3b7b4073df68db5897c0884264d03a780c1` | ⚠️ Unaudited |
| StETHLeverageDNTVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6014784fc074706ab810130f77135bfb24463f06`](./contracts/ethereum-1/0x6014784fc074706ab810130f77135bfb24463f06/); ethereum `0xa5a79cf343da9477fcea21a5910c154cb0271767`; ethereum `0xd94a2bb8059e3ba3041592deeaf2b2ef4ccdec71` | ⚠️ Unaudited |
| StETHLeverageSmartTrendVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x1361fa1398c22d6644dcc1aa619f1b84f6db4366`](./contracts/ethereum-1/0x1361fa1398c22d6644dcc1aa619f1b84f6db4366/); ethereum `0x36ac0331d03e40ab67af564bc453314cb58e0629`; ethereum `0x858af7297a3d20f61e0f7a2487c686e0a3353f2c`; ethereum `0xa065585ce98cab62c4f1aff3c26ef4316ee72178`; ethereum `0xb8610f07d25c3b0d7d589bde8be1b07ffae1a0a5` | ⚠️ Unaudited |
| StETHSmartTrendVault | unknown | ethereum | n/a | 7 deployments: ethereum [`0x09df1703f353a3345261359a43a210448ae4ff6f`](./contracts/ethereum-1/0x09df1703f353a3345261359a43a210448ae4ff6f/); ethereum `0x22d6201ff78854713ced5542658f16244335ae69`; ethereum `0x4f8abbc658338e4065acb154679931648195b793`; ethereum `0x5bbeb889339ce028dc57a1c9a721eaa085be2368`; ethereum `0xbeb059d623ac9817fc2f0414f1dcc61416da4540`; ethereum `0xe497ba440e2e878d6defd2d91683c52d45385aa3`; ethereum `0xf2a7d953b2d7d821cade13f8a3af257b092cfe71` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 3 deployments: bsc [`0x46706780749bc41e7ab99d13bc1b2a74df40a7da`](./contracts/bsc-56/0x46706780749bc41e7ab99d13bc1b2a74df40a7da/); bsc `0x4fbc6710b7c394a8cb19998c3dc541b3d25d36f5`; bsc `0x72ece83959a1621e1e2798198ab4cc2ecde6bf13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 5 deployments: sei [`0x0c11a73ae97a68388d1034662c914b022ed26257`](./contracts/sei-1329/0x0c11a73ae97a68388d1034662c914b022ed26257/); sei `0x4bd6be959897631fbe5a8aae01707219850e032f`; sei `0x898f1b78b2b49c5c8345797379460e770b4be286`; sei `0xaa7764bdd6ee88e2d59933cbb588144c5474503f`; sei `0xd812f221fa9bf01c1f475d03ae853d90ee91e79d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 5 deployments: sei [`0x4573382a9d101eb6dfa1c4b448f939c41ff3e81d`](./contracts/sei-1329/0x4573382a9d101eb6dfa1c4b448f939c41ff3e81d/); sei `0x46706780749bc41e7ab99d13bc1b2a74df40a7da`; sei `0x4fd90c6b2a81d65a10e366dc5051d4d1a2a1c021`; sei `0x5dcefca5207c58dcbcf41ef017d1d0eb42d83701`; sei `0x842e97baa96cfe1534f1a50da112c7800134656a` | ⚠️ Unaudited |
| ZenRCH | unknown | ethereum | n/a | [`0x893b33977395642039de1b04a0cc788b4af0ba08`](./contracts/ethereum-1/0x893b33977395642039de1b04a0cc788b4af0ba08/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x46706780749bc41e7ab99d13bc1b2a74df40a7da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x842e97baa96cfe1534f1a50da112c7800134656a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10b7d842492b5696eec5e73b924d098ff5215ab8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e270e575f928a002e9e4e4e574c570eab1f7170` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb71abee5cd4aec565744262090eabe9999567fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd54cc11b48e3da326fc2fee2649ee94a3c346444` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf43ebdcabe8910198d1683bc279faa551457226a` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x57b96d4af698605563a4653d882635da59bf11af` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x6a7f97ed710a162cf5f1eb8024e613fc9ce9d563` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x7930805cc8d406a275360e41539c57e0880f83e5` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x97e10bf110bc477f35334c6275b91b59c1c786ab` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xec722a53efee08ebff8d2c61622991a33705fa79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x05a60ae5705411ef03f162feab8fabde77fb4597` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97e10bf110bc477f35334c6275b91b59c1c786ab` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Sofa-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Sofa-v1.0.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | 4 | n/a |
| [Audit Report - Sofa (May 2024).pdf](https://github.com/zenith-security/reports/blob/main/reports/Audit%20Report%20-%20Sofa%20%28May%202024%29.pdf) | Code4rena | Contest | 2024-05 | stale | Direct | contract_name | 5 | n/a |
| [Audit Report - Sofa Automator(Oct 2024).pdf](https://github.com/zenith-security/reports/blob/main/reports/Audit%20Report%20-%20Sofa%20Automator%28Oct%202024%29.pdf) | Code4rena | Contest | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [Zenith Audit Report - Sofa Automator 2.0.pdf](https://github.com/zenith-security/reports/blob/main/reports/Zenith%20Audit%20Report%20-%20Sofa%20Automator%202.0.pdf) | Code4rena | Contest | 2025-01 | aging | Direct | contract_name | 3 | high |
| [Audit Report - Sofa Automator(Oct 2024).pdf](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Audit%20Report%20-%20Sofa%20Automator(Oct%202024).pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [Zenith Audit Report - Sofa Automator 2.0.pdf](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Zenith%20Audit%20Report%20-%20Sofa%20Automator%202.0.pdf) | yAudit | Audit | 2025-01 | aging | Direct | contract_name | 3 | high |
| [Audit Report - Sofa (May 2024).pdf](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Audit%20Report%20-%20Sofa%20(May%202024).pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | 5 | n/a |
| [review.pdf](https://raw.githubusercontent.com/sigp/public-audits/48f7de362df66942a77e1dd5954b580f28ed367f/reports/sofa/review.pdf) | yAudit | Audit | 2024-06 | stale | Direct | contract_name | 12 | n/a |
| [Audit Report - Sofa Automator(Oct 2024).pdf](https://raw.githubusercontent.com/zenith-security/reports/84cd8bcd63d6a9e9f4385fa3f7aa87dca4c8c2fa/reports/Audit%20Report%20-%20Sofa%20Automator(Oct%202024).pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [Zenith Audit Report - Sofa Automator 2.0.pdf](https://raw.githubusercontent.com/zenith-security/reports/84cd8bcd63d6a9e9f4385fa3f7aa87dca4c8c2fa/reports/Zenith%20Audit%20Report%20-%20Sofa%20Automator%202.0.pdf) | yAudit | Audit | 2025-01 | aging | Direct | contract_name | 1 | n/a |
| [Audit Report - Sofa (May 2024).pdf](https://raw.githubusercontent.com/zenith-security/reports/84cd8bcd63d6a9e9f4385fa3f7aa87dca4c8c2fa/reports/Audit%20Report%20-%20Sofa%20(May%202024).pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | 12 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x060c233146eaed1eff8bef320aaa224377bf76d3`](./contracts/ethereum-1/0x060c233146eaed1eff8bef320aaa224377bf76d3/) | CrvUSDDualVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9832e7e40d5a1495ca7bdbcd6a5c0a90d28f6cfa`](./contracts/ethereum-1/0x9832e7e40d5a1495ca7bdbcd6a5c0a90d28f6cfa/) | CrvUSDSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a253838121b9ad9736fafc030cf4971615d68b2`](./contracts/ethereum-1/0x3a253838121b9ad9736fafc030cf4971615d68b2/) | DNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbefb3aad1dfb1660444f0d76a91261ef755b2b86`](./contracts/ethereum-1/0xbefb3aad1dfb1660444f0d76a91261ef755b2b86/) | DNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3400f3a1822e17db576fe9bba4774123a5febdbb`](./contracts/ethereum-1/0x3400f3a1822e17db576fe9bba4774123a5febdbb/) | DualVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50752522d249230fe60c855098bb4a7a0974e746`](./contracts/ethereum-1/0x50752522d249230fe60c855098bb4a7a0974e746/) | LeverageDNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x071e0c2be2b16c8b00173c6535ef8331b8e1feed`](./contracts/ethereum-1/0x071e0c2be2b16c8b00173c6535ef8331b8e1feed/) | LeverageSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x40144bc227f78a288fe9ae6f4c7389c92c5ad9cf`](./contracts/bsc-56/0x40144bc227f78a288fe9ae6f4c7389c92c5ad9cf/) | LeverageSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x40144bc227f78a288fe9ae6f4c7389c92c5ad9cf`](./contracts/polygon-137/0x40144bc227f78a288fe9ae6f4c7389c92c5ad9cf/) | LeverageSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3079993b5be4d18d504a6e58939ac6637d47dc1a`](./contracts/ethereum-1/0x3079993b5be4d18d504a6e58939ac6637d47dc1a/) | RCHAutomatorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53ee67c562a7e933679425e6c0070e2b810387a3`](./contracts/ethereum-1/0x53ee67c562a7e933679425e6c0070e2b810387a3/) | RCHDNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51df98cbbc8173cd207597f9eca0f8f65ff2c395`](./contracts/ethereum-1/0x51df98cbbc8173cd207597f9eca0f8f65ff2c395/) | RCHDualVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13ef7013e98197ef850969a21ef1b42e71dd6cfa`](./contracts/ethereum-1/0x13ef7013e98197ef850969a21ef1b42e71dd6cfa/) | RCHSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26e9aa240070d37c109e976b688e9b05c6bd946b`](./contracts/ethereum-1/0x26e9aa240070d37c109e976b688e9b05c6bd946b/) | RebaseSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x084ca8e8690e3e8fe0bd4836c90b4107cd40e712`](./contracts/bsc-56/0x084ca8e8690e3e8fe0bd4836c90b4107cd40e712/) | RebaseSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x091880b51225fb6b1935be8a71fb47502bff7e5f`](./contracts/arbitrum-42161/0x091880b51225fb6b1935be8a71fb47502bff7e5f/) | RebaseSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bdbdb994fb7e7772eaa16ccc41430e095d0706a`](./contracts/ethereum-1/0x2bdbdb994fb7e7772eaa16ccc41430e095d0706a/) | SimpleSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08c57ae48a89b6876a76dc618972ef1602da7ed8`](./contracts/ethereum-1/0x08c57ae48a89b6876a76dc618972ef1602da7ed8/) | SmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x106825b71cce77a70b69f57a0acf9c4a6acf292a`](./contracts/ethereum-1/0x106825b71cce77a70b69f57a0acf9c4a6acf292a/) | SmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x141b893e4ae446e634e92116000e54d7fc72bc65`](./contracts/ethereum-1/0x141b893e4ae446e634e92116000e54d7fc72bc65/) | StETHDNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6014784fc074706ab810130f77135bfb24463f06`](./contracts/ethereum-1/0x6014784fc074706ab810130f77135bfb24463f06/) | StETHLeverageDNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1361fa1398c22d6644dcc1aa619f1b84f6db4366`](./contracts/ethereum-1/0x1361fa1398c22d6644dcc1aa619f1b84f6db4366/) | StETHLeverageSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09df1703f353a3345261359a43a210448ae4ff6f`](./contracts/ethereum-1/0x09df1703f353a3345261359a43a210448ae4ff6f/) | StETHSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x893b33977395642039de1b04a0cc788b4af0ba08`](./contracts/ethereum-1/0x893b33977395642039de1b04a0cc788b4af0ba08/) | ZenRCH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 14 |
| standard_library | 4 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=42, extraction_exact=6

Fork inheritance lineage and inherited audits are included when available.
