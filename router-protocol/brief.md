# Agentic Audit Brief: Router Protocol

## Project Overview

- Project: Router Protocol (`router-protocol`)
- Website: [https://app.routerprotocol.com/](https://app.routerprotocol.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:53.750Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: avalanche, bsc, cronos, ethereum, fantom, harmony, kava, polygon
- Contract surface: 70 unique implementations (95 raw deployments)
- DeFi Llama TVL: $9,866.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Cross Chain Bridge. Structurally: 11 project-authored contract(s) across 4 chain(s); 7 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (erc20burnable, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 95; live-surface contracts included: 95 (22 live, 73 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/11 (0.0%)
- Deployed-live implementations: 12 of 70 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 58
- Unique implementations: 70
- Raw deployments: 95
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapV5ERC20 | token | avalanche | n/a | [`0x264c1383ea520f73dd837f915ef3a732e204a493`](./contracts/avalanche-43114/0x264c1383ea520f73dd837f915ef3a732e204a493/) | ⚠️ Unaudited |
| BEP20TokenImplementation | token | bsc | n/a | 3 deployments: bsc [`0x1ce0c2827e2ef14d5c4f29a091d735a204794041`](./contracts/bsc-56/0x1ce0c2827e2ef14d5c4f29a091d735a204794041/); bsc `0xad29abb318791d579433d831ed122afeaf29dcfe`; bsc `0xcc42724c6683b7e57334c4e856f4c9965ed682bd` | ⚠️ Unaudited |
| CroToken | token | ethereum | n/a | [`0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b`](./contracts/ethereum-1/0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b/) | ⚠️ Unaudited |
| DFYNToken | token | ethereum | n/a | [`0x9695e0114e12c0d3a3636fab5a18e6b737529023`](./contracts/ethereum-1/0x9695e0114e12c0d3a3636fab5a18e6b737529023/) | ⚠️ Unaudited |
| ERC20PresetMinterPauser | token | polygon | n/a | 9 deployments: polygon [`0x083c56d87ead73d6231c165ec450c6e28f3399c9`](./contracts/polygon-137/0x083c56d87ead73d6231c165ec450c6e28f3399c9/); polygon `0x2c89bbc92bd86f8075d1decc58c7f4e0107f286b`; polygon `0x5c4b7ccbf908e64f32e12c6650ec0c96d717f03f`; polygon `0x80c0cbdb8d0b190238795d376f0bd57fd40525f2`; polygon `0xa731349fa468614c1698fc46ebf06da6f380239e`; polygon `0xa863246658dea34111c3c1dcedb2cfd5d6067334`; polygon `0xb85517b87bf64942adf3a0b9e4c71e4bc5caa4e5`; polygon `0xdcdc86a38d1dda13eeb346eebf34d0148c8197d9`; polygon `0xf2d8124b8f9267dad61351c7ad252362880c6638` | ⚠️ Unaudited |
| ERC20PresetMinterPauserLimiter | token | polygon | n/a | [`0x904371845bc56dcbbcf0225ef84a669b2fd6bd0d`](./contracts/polygon-137/0x904371845bc56dcbbcf0225ef84a669b2fd6bd0d/) | ⚠️ Unaudited |
| QiStablecoin | token | polygon | n/a | [`0xa3fa99a148fa48d14ed51d610c367c61876997f1`](./contracts/polygon-137/0xa3fa99a148fa48d14ed51d610c367c61876997f1/) | ⚠️ Unaudited |
| Route | unknown | ethereum | n/a | [`0x16eccfdbb4ee1a85a33f3a9b21175cd7ae753db4`](./contracts/ethereum-1/0x16eccfdbb4ee1a85a33f3a9b21175cd7ae753db4/) | ⚠️ Unaudited |
| TokenImplementation | token | ethereum | n/a | [`0x85f138bfee4ef8e540890cfb48f620571d67eda3`](./contracts/ethereum-1/0x85f138bfee4ef8e540890cfb48f620571d67eda3/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0xc168e40227e4ebd8c1cae80f7a55a4f0e6d66c97`](./contracts/polygon-137/0xc168e40227e4ebd8c1cae80f7a55a4f0e6d66c97/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0xc9c1c1c20b3658f8787cc2fd702267791f224ce1`](./contracts/polygon-137/0xc9c1c1c20b3658f8787cc2fd702267791f224ce1/) | ⚠️ Unaudited |
| WETH9 | token | polygon | n/a | [`0x4c28f48448720e9000907bc2611f73022fdce1fa`](./contracts/polygon-137/0x4c28f48448720e9000907bc2611f73022fdce1fa/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (58)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xee379e7e2153fe66c89c8f43cb9234738b766dde` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x08193764bd81a742c15125e48f41b1232068c912` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0b5c2c80ec91caa336635d4bbf45c383b86a9b31` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x10b34bd0d3b4532be749b39aae4b01d229e538e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1f534d2b1ee2933f1fdf8e4b63a44b2249d77eaf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x205fa8a01383ab4a362dfef25b2f07f39423c85a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x21d815016bf0a24ca6e169bd1a32c50514aab91f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2acdaa5af60cfb352cbe81270c29aa3ec5e5cfae` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2fab07236d5e1f400568e475b21dbc6adfed57d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x317edd9783a712cb412806e6273d7c81c6738d98` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x33658140664e02814e6b0f32521498f03cb1380b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x34207e4228a30c9899a876f77fcd1af48dd591ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x34421517f71e1b888ef40d7f176469263fa92cc8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x34aa6755baad1c56a1fe24d2d14592146cfeb5e7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3ea1f65cf49297ea6d265291a2b09d0f2ae649d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3fc84b2b0f0cfa85a83f5215ec0a56930a49c141` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4022afeb287052e6e587d39ba99f79cafc47b570` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x404ab89684d499dbe864a1b9811feb9be2ffada2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4801d3057109758c3cc82859fe28c56928020330` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4833b63ab84d793b2b4d119690aca11fd8232c64` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x52abdb3536a3a966056e096f2572b2755df26eac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x52dd5771cd20fbb5b4b1e6fbd5e92f6290de6a47` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5771879f665e924a264f2fa4b99a0cc46feeb15f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5b75ff9e5c15bb94ab166a80dd5398b3b9f50e25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6fd98cf211134081fe02f551d64cf89671d5443b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x791fd27ef5ea8dee4746a1b2a1b95b6247f67b7d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7c815bbc21fed2b97ca163552991a5c30d6a2336` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7f7a17aa18ddeb9a281776f406f2ff6bd06907f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x823ce9cca0b9ee2bc4c2d764d304691d770dbbe9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x838f9ad418e032931ef28ed4a8799b3919a791b9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8973792d9e8ea794e546b62c0f2295e32a6d7e48` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e1035519567a2c260767f600471bc9ff3df896e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9894b0f28ccfa0f5c5f74eac88f161110c5f8027` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e3561e84ff87d405c1692903af2533e2392782f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xac6953d66e06eea69d0f7435c679ae0d0c02b282` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaede1efe768bd8a1663a7608c63290c60b85e71c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb0dce4ee2cf51b2e27a7c368ea36a4af16603b58` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb2029fd359270c1186a0917bd5e4579a4d06a828` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb67176655e7919a27aa34c279157124619adfd4b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xba79bf6d52934d3b55fe0c14565a083c74fbd224` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbfd09545075c04d0ca4d3209daccc29b22836f95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc095c481c27e1d8e3df69610d0d5a1cb8f36ce8b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc2b5a4ce98078f77bce83be8fecebb3da48f0b15` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc33a42c9d19f944fa12ff46f27b3b85e18a13778` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd02408a62ed3708429ccfb04d9dea302884ab6a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd705223747c7af3386a70abbe586d390a6877687` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd80431859766ee0cc7574f485121f5fa70d06c07` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd9820a17053d6314b20642e465a84bf01a3d64f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe9138c2101c517aa1a1c14fb07bfde1f34a147d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe94687a5d43151f23707018085f6daec920fe4f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xea83fcee5875c8f09b0a9b999cbbb1ced26a462b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf38971255ac45bb72dccd0597ac16efb9f29da02` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf82b6c89a1d3340733ea4f74f9d111b5d7127876` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf9760cfe0aa17cbcc584e5d7f4a9c1a370417c0a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa25795f7da372463ac90bed787f9437688c438c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfaef64930cdd15a19b24ea71efa14d37f2401169` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfda7939291b959a2336b20a789786c410bf33ab6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 16 deployments: cronos `0x6e14f48576265272b6caa3a7cc500a26050be64e`; cronos `0x765277eebeca2e31912c9946eae1021199b39c61`; cronos `0xad79ac3c5a5c15c6b9194f5568e451b3fc3c2b40`; cronos `0xb44a9b6905af7c801311e8f4e76932ee959c663c`; cronos `0xe44fd7fcb2b1581822d0c862b68222998a0c299a`; cronos `0xfa9343c3897324496a05fc75abed6bac29f8a40f`; fantom `0x04068da6c83afcfa0e13ba15a6696662335d5b75`; fantom `0x27f26f00e1605903645bbabc0a73e35027dccd45`; fantom `0x40df1ae6074c35047bff66675488aa2f9f6384f3`; fantom `0x511d35c52a3c244e7b8bd92c0c297755fbd89212`; fantom `0x6e14f48576265272b6caa3a7cc500a26050be64e`; fantom `0x74b23882a30290451a17c44f4f05243b6b58c76d`; kava `0x6e14f48576265272b6caa3a7cc500a26050be64e`; kava `0xfa9343c3897324496a05fc75abed6bac29f8a40f`; harmony `0x6e14f48576265272b6caa3a7cc500a26050be64e`; harmony `0x985458e523db3d53125813ed68c274899e9dfab4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/router](https://skynet.certik.com/projects/router) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spaces/2MOVWdZOYqYGCPk8rjiB/uploads/i6XLVeITHbGOpWc4ZNF3/Router Protocol Bridge Contract Audit.pdf](https://2030736250-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F2MOVWdZOYqYGCPk8rjiB%2Fuploads%2Fi6XLVeITHbGOpWc4ZNF3%2FRouter%20Protocol%20Bridge%20Contract%20Audit.pdf) | unknown | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [spaces/2MOVWdZOYqYGCPk8rjiB/uploads/F32FJ6GmvterrygKVJec/Router Protocol GoLang Bridge Audit.pdf](https://2030736250-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F2MOVWdZOYqYGCPk8rjiB%2Fuploads%2FF32FJ6GmvterrygKVJec%2FRouter%20Protocol%20GoLang%20Bridge%20Audit.pdf) | unknown | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [RouterProtocol_GoBridge_Audit_Report_Halborn.pdf](https://github.com/router-protocol/router-protocol-audit/blob/main/RouterProtocol_GoBridge_Audit_Report_Halborn.pdf) | Halborn | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [RouterProtocol_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/router-protocol/router-protocol-audit/blob/main/RouterProtocol_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x1ce0c2827e2ef14d5c4f29a091d735a204794041`](./contracts/bsc-56/0x1ce0c2827e2ef14d5c4f29a091d735a204794041/) | BEP20TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b`](./contracts/ethereum-1/0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b/) | CroToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9695e0114e12c0d3a3636fab5a18e6b737529023`](./contracts/ethereum-1/0x9695e0114e12c0d3a3636fab5a18e6b737529023/) | DFYNToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x083c56d87ead73d6231c165ec450c6e28f3399c9`](./contracts/polygon-137/0x083c56d87ead73d6231c165ec450c6e28f3399c9/) | ERC20PresetMinterPauser | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x904371845bc56dcbbcf0225ef84a669b2fd6bd0d`](./contracts/polygon-137/0x904371845bc56dcbbcf0225ef84a669b2fd6bd0d/) | ERC20PresetMinterPauserLimiter | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa3fa99a148fa48d14ed51d610c367c61876997f1`](./contracts/polygon-137/0xa3fa99a148fa48d14ed51d610c367c61876997f1/) | QiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16eccfdbb4ee1a85a33f3a9b21175cd7ae753db4`](./contracts/ethereum-1/0x16eccfdbb4ee1a85a33f3a9b21175cd7ae753db4/) | Route | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85f138bfee4ef8e540890cfb48f620571d67eda3`](./contracts/ethereum-1/0x85f138bfee4ef8e540890cfb48f620571d67eda3/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc168e40227e4ebd8c1cae80f7a55a4f0e6d66c97`](./contracts/polygon-137/0xc168e40227e4ebd8c1cae80f7a55a4f0e6d66c97/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc9c1c1c20b3658f8787cc2fd702267791f224ce1`](./contracts/polygon-137/0xc9c1c1c20b3658f8787cc2fd702267791f224ce1/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4c28f48448720e9000907bc2611f73022fdce1fa`](./contracts/polygon-137/0x4c28f48448720e9000907bc2611f73022fdce1fa/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 58 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13788] skynet.certik.com/projects/router
- [13789] spaces/2MOVWdZOYqYGCPk8rjiB/uploads/i6XLVeITHbGOpWc4ZNF3/Router Protocol Bridge Contract Audit.pdf
- [13790] spaces/2MOVWdZOYqYGCPk8rjiB/uploads/F32FJ6GmvterrygKVJec/Router Protocol GoLang Bridge Audit.pdf
- [13791] RouterProtocol_GoBridge_Audit_Report_Halborn.pdf
- [13792] RouterProtocol_Smart_Contract_Security_Audit_Report_Halborn.pdf

Fork inheritance lineage and inherited audits are included when available.
