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
| AnyswapV5ERC20 | token | avalanche | n/a | [`0x264c13...04a493`](./contracts/avalanche-43114/0x264c1383ea520f73dd837f915ef3a732e204a493/) | ⚠️ Unaudited |
| BEP20TokenImplementation | token | bsc | n/a | 3 deployments: bsc [`0x1ce0c2...794041`](./contracts/bsc-56/0x1ce0c2827e2ef14d5c4f29a091d735a204794041/); bsc `0xad29ab...29dcfe`; bsc `0xcc4272...d682bd` | ⚠️ Unaudited |
| CroToken | token | ethereum | n/a | [`0xa0b73e...34450b`](./contracts/ethereum-1/0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b/) | ⚠️ Unaudited |
| DFYNToken | token | ethereum | n/a | [`0x9695e0...529023`](./contracts/ethereum-1/0x9695e0114e12c0d3a3636fab5a18e6b737529023/) | ⚠️ Unaudited |
| ERC20PresetMinterPauser | token | polygon | n/a | 9 deployments: polygon [`0x083c56...3399c9`](./contracts/polygon-137/0x083c56d87ead73d6231c165ec450c6e28f3399c9/); polygon `0x2c89bb...7f286b`; polygon `0x5c4b7c...17f03f`; polygon `0x80c0cb...0525f2`; polygon `0xa73134...80239e`; polygon `0xa86324...067334`; polygon `0xb85517...caa4e5`; polygon `0xdcdc86...8197d9`; polygon `0xf2d812...0c6638` | ⚠️ Unaudited |
| ERC20PresetMinterPauserLimiter | token | polygon | n/a | [`0x904371...d6bd0d`](./contracts/polygon-137/0x904371845bc56dcbbcf0225ef84a669b2fd6bd0d/) | ⚠️ Unaudited |
| QiStablecoin | token | polygon | n/a | [`0xa3fa99...6997f1`](./contracts/polygon-137/0xa3fa99a148fa48d14ed51d610c367c61876997f1/) | ⚠️ Unaudited |
| Route | unknown | ethereum | n/a | [`0x16eccf...753db4`](./contracts/ethereum-1/0x16eccfdbb4ee1a85a33f3a9b21175cd7ae753db4/) | ⚠️ Unaudited |
| TokenImplementation | token | ethereum | n/a | [`0x85f138...67eda3`](./contracts/ethereum-1/0x85f138bfee4ef8e540890cfb48f620571d67eda3/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0xc168e4...d66c97`](./contracts/polygon-137/0xc168e40227e4ebd8c1cae80f7a55a4f0e6d66c97/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0xc9c1c1...224ce1`](./contracts/polygon-137/0xc9c1c1c20b3658f8787cc2fd702267791f224ce1/) | ⚠️ Unaudited |
| WETH9 | token | polygon | n/a | [`0x4c28f4...dce1fa`](./contracts/polygon-137/0x4c28f48448720e9000907bc2611f73022fdce1fa/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0xee379e...766dde` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x081937...68c912` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0b5c2c...6a9b31` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x10b34b...e538e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1f534d...d77eaf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x205fa8...23c85a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x21d815...aab91f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2acdaa...e5cfae` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2fab07...ed57d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x317edd...738d98` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x336581...b1380b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x34207e...d591ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x344215...a92cc8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x34aa67...feb5e7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3ea1f6...e649d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3fc84b...49c141` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4022af...47b570` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x404ab8...ffada2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4801d3...020330` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4833b6...232c64` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x52abdb...f26eac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x52dd57...de6a47` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x577187...eeb15f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5b75ff...f50e25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6fd98c...d5443b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x791fd2...f67b7d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7c815b...6a2336` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7f7a17...6907f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x823ce9...0dbbe9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x838f9a...a791b9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x897379...6d7e48` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e1035...df896e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9894b0...5f8027` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e3561...92782f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xac6953...02b282` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaede1e...85e71c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb0dce4...603b58` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb2029f...06a828` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb67176...adfd4b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xba79bf...fbd224` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbfd095...836f95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc095c4...36ce8b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc2b5a4...8f0b15` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc33a42...a13778` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd02408...4ab6a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd70522...877687` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd80431...d06c07` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd9820a...3d64f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe9138c...a147d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe94687...0fe4f9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xea83fc...6a462b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf38971...29da02` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf82b6c...127876` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf9760c...417c0a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa2579...8c438c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfaef64...401169` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfda793...f33ab6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 16 deployments: cronos `0x6e14f4...0be64e`; cronos `0x765277...b39c61`; cronos `0xad79ac...3c2b40`; cronos `0xb44a9b...9c663c`; cronos `0xe44fd7...0c299a`; cronos `0xfa9343...f8a40f`; fantom `0x04068d...5d5b75`; fantom `0x27f26f...dccd45`; fantom `0x40df1a...6384f3`; fantom `0x511d35...d89212`; fantom `0x6e14f4...0be64e`; fantom `0x74b238...58c76d`; kava `0x6e14f4...0be64e`; kava `0xfa9343...f8a40f`; harmony `0x6e14f4...0be64e`; harmony `0x985458...9dfab4` | ❓ Unverified |

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
| bsc | [`0x1ce0c2...794041`](./contracts/bsc-56/0x1ce0c2827e2ef14d5c4f29a091d735a204794041/) | BEP20TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b73e...34450b`](./contracts/ethereum-1/0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b/) | CroToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9695e0...529023`](./contracts/ethereum-1/0x9695e0114e12c0d3a3636fab5a18e6b737529023/) | DFYNToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x083c56...3399c9`](./contracts/polygon-137/0x083c56d87ead73d6231c165ec450c6e28f3399c9/) | ERC20PresetMinterPauser | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x904371...d6bd0d`](./contracts/polygon-137/0x904371845bc56dcbbcf0225ef84a669b2fd6bd0d/) | ERC20PresetMinterPauserLimiter | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa3fa99...6997f1`](./contracts/polygon-137/0xa3fa99a148fa48d14ed51d610c367c61876997f1/) | QiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16eccf...753db4`](./contracts/ethereum-1/0x16eccfdbb4ee1a85a33f3a9b21175cd7ae753db4/) | Route | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85f138...67eda3`](./contracts/ethereum-1/0x85f138bfee4ef8e540890cfb48f620571d67eda3/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc168e4...d66c97`](./contracts/polygon-137/0xc168e40227e4ebd8c1cae80f7a55a4f0e6d66c97/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc9c1c1...224ce1`](./contracts/polygon-137/0xc9c1c1c20b3658f8787cc2fd702267791f224ce1/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4c28f4...dce1fa`](./contracts/polygon-137/0x4c28f48448720e9000907bc2611f73022fdce1fa/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
