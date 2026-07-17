# Agentic Audit Brief: RociFi

## Project Overview

- Project: RociFi (`rocifi`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:47.121Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: polygon
- Contract surface: 43 unique implementations (67 raw deployments)
- DeFi Llama TVL: $45,831.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 21 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 6 functional families. Its contracts share 2 common project-authored base contract(s) (selectivepausable, version). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 77; live-surface contracts included: 56 (40 live, 16 unknown).
- Excluded by liveness: 21 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/24 (16.7%)
- Deployed-live implementations: 30 of 43 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/30
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 43
- Raw deployments: 67
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hexens | Tier 2 | 4 | 13.3% | 2022-12 |
| CertiK | Tier 2 | 1 | 3.3% | 2022-02 |
| Chainsulting | Tier 2 | 1 | 3.3% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CollateralManager | governance | polygon | n/a | [`0x98ccf35738527389d935c8eaaf4604bdacd544c4`](./contracts/polygon-137/0x98ccf35738527389d935c8eaaf4604bdacd544c4/) | ✅ Audited |
| LoanManager | governance | polygon | n/a | 2 deployments: polygon [`0xad8899a7e3d45c7967e430ca3ff6fd21686a9e20`](./contracts/polygon-137/0xad8899a7e3d45c7967e430ca3ff6fd21686a9e20/); polygon `0xaeebff0a4fedaf2ea66848dfb1295667217451b7` | ✅ Audited |
| NFCS | unknown | polygon | n/a | [`0xd4f05951102cad5f1f47baa48efad8e0304a0678`](./contracts/polygon-137/0xd4f05951102cad5f1f47baa48efad8e0304a0678/) | ✅ Audited |
| Pool | core_logic | polygon | n/a | 2 deployments: polygon [`0xcde0fde0638227363847fa763fd53c11cecc6c28`](./contracts/polygon-137/0xcde0fde0638227363847fa763fd53c11cecc6c28/); polygon `0xe2920b4ec1b6ca560e076f922ab5706f0d9fce25` | ✅ Audited |

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CollateralManager | unknown | polygon | n/a | 3 deployments: polygon [`0x493153513d0cb74988558cba576eb1639f83f982`](./contracts/polygon-137/0x493153513d0cb74988558cba576eb1639f83f982/); polygon `0xd85af14c32cc98be9fe5195edb797773af8bb609`; polygon `0xf8420d21ffc15a2b3cde1454c48e306eb8e14861` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | [`0x03d14e673525adb192639d77e2ca0289932f5a23`](./contracts/polygon-137/0x03d14e673525adb192639d77e2ca0289932f5a23/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | 2 deployments: polygon [`0x18fc671d5cf3c9bd971048b340bb8731da971167`](./contracts/polygon-137/0x18fc671d5cf3c9bd971048b340bb8731da971167/); polygon `0x3ae1ba3904501922b80f8f059c0762fe698da322` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | [`0x5de6d10e65405c97c3868fd6bf9a2f1ac5e0bf1e`](./contracts/polygon-137/0x5de6d10e65405c97c3868fd6bf9a2f1ac5e0bf1e/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | 2 deployments: polygon [`0x73154de5a15722295020dafeec4752939836ad3d`](./contracts/polygon-137/0x73154de5a15722295020dafeec4752939836ad3d/); polygon `0xa7cc4a016abcddd5f0fe278a08b4fcd3f4f6ae28` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | 2 deployments: polygon [`0x752fbf8d090ca02fee105eb2d734d58c5cd31acf`](./contracts/polygon-137/0x752fbf8d090ca02fee105eb2d734d58c5cd31acf/); polygon `0x8e3d06977f2aff738f4ce9f739ec52374cec5b03` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | [`0xae9cbca1d6c90b86bd437ca0c3a3e07dbf7b1bbb`](./contracts/polygon-137/0xae9cbca1d6c90b86bd437ca0c3a3e07dbf7b1bbb/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | [`0xb12f7407f823b9c712f4cb7c173ef73a7f2a781e`](./contracts/polygon-137/0xb12f7407f823b9c712f4cb7c173ef73a7f2a781e/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | [`0xe19e96dbc247822d3dc857e11e35aea6f9e8f19b`](./contracts/polygon-137/0xe19e96dbc247822d3dc857e11e35aea6f9e8f19b/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | polygon | n/a | [`0xf70abbfc37fd0c21cce6d3369ea1bef7395c7185`](./contracts/polygon-137/0xf70abbfc37fd0c21cce6d3369ea1bef7395c7185/) | ⚠️ Unaudited |
| LimitManager | unknown | polygon | n/a | 2 deployments: polygon [`0x347892c2c0c230f0803127f4e1137b3e975f57e4`](./contracts/polygon-137/0x347892c2c0c230f0803127f4e1137b3e975f57e4/); polygon `0xc9686ae6aab678a42a12cdd0bc28b6f04a963873` | ⚠️ Unaudited |
| Liquidator | unknown | polygon | n/a | 2 deployments: polygon [`0x130035b6289de638c58b2ff865e69923545321b9`](./contracts/polygon-137/0x130035b6289de638c58b2ff865e69923545321b9/); polygon `0x8f29bc4670907da0afafae9e32af3c6193479723` | ⚠️ Unaudited |
| Liquidator | unknown | polygon | n/a | [`0xbf2ea1480081ec1abac5c4d06b0971435acbdb82`](./contracts/polygon-137/0xbf2ea1480081ec1abac5c4d06b0971435acbdb82/) | ⚠️ Unaudited |
| Liquidator | operational_periphery | polygon | n/a | [`0xdcd617649099aae438ee27cfc8bafd10e49276e0`](./contracts/polygon-137/0xdcd617649099aae438ee27cfc8bafd10e49276e0/) | ⚠️ Unaudited |
| LoanManager | unknown | polygon | n/a | 2 deployments: polygon [`0x60ade7ec42f3907474d5d6008eb36aeb2627bd41`](./contracts/polygon-137/0x60ade7ec42f3907474d5d6008eb36aeb2627bd41/); polygon `0x94f62ca96fa06c065d8a2d3211c067100087221c` | ⚠️ Unaudited |
| NamedNFT | unknown | polygon | n/a | 2 deployments: polygon [`0x44ce4454ac39cafe4190ef47378b9c932ff17a00`](./contracts/polygon-137/0x44ce4454ac39cafe4190ef47378b9c932ff17a00/); polygon `0x58786528b868f3cd3ae4e713a573316af7c59f47` | ⚠️ Unaudited |
| NamedNFT | unknown | polygon | n/a | 2 deployments: polygon [`0x44d27327d662b9fbf019b56f7b1c6a5b33be2fae`](./contracts/polygon-137/0x44d27327d662b9fbf019b56f7b1c6a5b33be2fae/); polygon `0x99db03f5b4317b2242d7424a977feb6dab9de112` | ⚠️ Unaudited |
| NamedNFT | token | polygon | n/a | [`0xe49931f8103b11414c59ef85191261a5b64e39f0`](./contracts/polygon-137/0xe49931f8103b11414c59ef85191261a5b64e39f0/) | ⚠️ Unaudited |
| NFCS | unknown | polygon | n/a | 2 deployments: polygon [`0x0aa16c5537036edab0de09f28962bf2cf5e878f7`](./contracts/polygon-137/0x0aa16c5537036edab0de09f28962bf2cf5e878f7/); polygon `0x90da187baea926fa14386f12629b39488e1266eb` | ⚠️ Unaudited |
| NFCS | unknown | polygon | n/a | 2 deployments: polygon [`0x9414d2a642963d609a7a370c5156cc9e34435b90`](./contracts/polygon-137/0x9414d2a642963d609a7a370c5156cc9e34435b90/); polygon `0xd0a1ab922496390e133567f605981206d938172f` | ⚠️ Unaudited |
| Pool | unknown | polygon | n/a | 4 deployments: polygon [`0x4ebb81605f91c02827426e37001d402bf46a170d`](./contracts/polygon-137/0x4ebb81605f91c02827426e37001d402bf46a170d/); polygon `0x7fb02f1e343e2431fe27e326ad0d316a344d07b8`; polygon `0x94c29f381a65344d65bab80f321660a75c237815`; polygon `0xeeaab451d240b6bee41345a66f1a06585985ecc4` | ⚠️ Unaudited |
| PriceFeed | unknown | polygon | n/a | 3 deployments: polygon [`0x775233ec40b2907096e4d1affc0597bed52db8ac`](./contracts/polygon-137/0x775233ec40b2907096e4d1affc0597bed52db8ac/); polygon `0xae7ab28f17b2508e47c5584569d18f5387d8f04f`; polygon `0xbdf4f73941640960effc5d9ca57c18bbdf458cc1` | ⚠️ Unaudited |
| PriceFeed | operational_periphery | polygon | n/a | [`0xef5b158dd68607a3ce022e8beb75490e2a678159`](./contracts/polygon-137/0xef5b158dd68607a3ce022e8beb75490e2a678159/) | ⚠️ Unaudited |
| PriceFeedSettable | operational_periphery | polygon | n/a | 2 deployments: polygon [`0xb329c9dee4419781dade20e6adb6582ad3ea16ac`](./contracts/polygon-137/0xb329c9dee4419781dade20e6adb6582ad3ea16ac/); polygon `0xfdb2bda9997fbb1463ac4b797c3a37edb810b93a` | ⚠️ Unaudited |
| ScoreDB | unknown | polygon | n/a | 3 deployments: polygon [`0x2cd697f0ad24b2f79234829731eab659a09dc806`](./contracts/polygon-137/0x2cd697f0ad24b2f79234829731eab659a09dc806/); polygon `0xb5d6e051772c523c62ae1f59fc457780cf0a438f`; polygon `0xf32f8fec1559f829a2bae9d2b43e2b588857bcf5` | ⚠️ Unaudited |
| SettingsProvider | unknown | polygon | n/a | 3 deployments: polygon [`0x7ba893d3671e0f869382483caa5e2b5406f17ae8`](./contracts/polygon-137/0x7ba893d3671e0f869382483caa5e2b5406f17ae8/); polygon `0x9c43695e01042fc9962d13efcfaa263bf86130d0`; polygon `0xb2e577a112a6f2c6d3d511ade2ad512cea312a6d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x0ab5ce749c26426abc380261120845cbf5a0684f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4405359d51082685099d00bedfc94edd2cf9282e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9306badd8a7b416d03cf3019357959bdb0cc6aef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x987c35a0fea9b562da8c720c254f13438564c385` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9af987960ad876659b8cd31c902e8199a4b76314` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa832954a79fb493e98856578c333a9063c970f5f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb179e849b9c9ef562436a9cc7af03bfed47a3fc9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb709d3b6ec8947967a384655a27924687e6abdf2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd518fd579dc8c8bc9d8cb22d6f967bd2f38e50cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd525eb3263129d59d478e16d4934c5708d76a9de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1cc2e439dc3ae4bd68acdc720f8951332d1f9f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe980cb9e01da8f7ac9349f67da5650c9e6c1aa43` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xff0a9ad109ca9f0994d23e57366feb217cb176bf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Certik-PRE-RociFi-2022-02-10.pdf](https://github.com/rociFi/docs/blob/main/Certik-PRE-RociFi-2022-02-10.pdf) | CertiK | Audit | 2022-02 | stale | Direct | contract_name | 1 | n/a |
| [Chainsulting-02_Smart_Contract_Audit_RociFi_Protocol-Jan-2022.pdf](https://github.com/rociFi/docs/blob/main/Chainsulting-02_Smart_Contract_Audit_RociFi_Protocol-Jan-2022.pdf) | Chainsulting | Audit | 2021-12 | stale | Direct | contract_name | 1 | n/a |
| [RociFi_Hexens_Dec_2022_SMA_public.pdf](https://github.com/rociFi/docs/blob/main/RociFi_Hexens_Dec_2022_SMA_public.pdf) | Hexens | Audit | 2022-12 | stale | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x493153513d0cb74988558cba576eb1639f83f982`](./contracts/polygon-137/0x493153513d0cb74988558cba576eb1639f83f982/) | CollateralManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x347892c2c0c230f0803127f4e1137b3e975f57e4`](./contracts/polygon-137/0x347892c2c0c230f0803127f4e1137b3e975f57e4/) | LimitManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x130035b6289de638c58b2ff865e69923545321b9`](./contracts/polygon-137/0x130035b6289de638c58b2ff865e69923545321b9/) | Liquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbf2ea1480081ec1abac5c4d06b0971435acbdb82`](./contracts/polygon-137/0xbf2ea1480081ec1abac5c4d06b0971435acbdb82/) | Liquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xdcd617649099aae438ee27cfc8bafd10e49276e0`](./contracts/polygon-137/0xdcd617649099aae438ee27cfc8bafd10e49276e0/) | Liquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x60ade7ec42f3907474d5d6008eb36aeb2627bd41`](./contracts/polygon-137/0x60ade7ec42f3907474d5d6008eb36aeb2627bd41/) | LoanManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x44ce4454ac39cafe4190ef47378b9c932ff17a00`](./contracts/polygon-137/0x44ce4454ac39cafe4190ef47378b9c932ff17a00/) | NamedNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x44d27327d662b9fbf019b56f7b1c6a5b33be2fae`](./contracts/polygon-137/0x44d27327d662b9fbf019b56f7b1c6a5b33be2fae/) | NamedNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe49931f8103b11414c59ef85191261a5b64e39f0`](./contracts/polygon-137/0xe49931f8103b11414c59ef85191261a5b64e39f0/) | NamedNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0aa16c5537036edab0de09f28962bf2cf5e878f7`](./contracts/polygon-137/0x0aa16c5537036edab0de09f28962bf2cf5e878f7/) | NFCS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9414d2a642963d609a7a370c5156cc9e34435b90`](./contracts/polygon-137/0x9414d2a642963d609a7a370c5156cc9e34435b90/) | NFCS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4ebb81605f91c02827426e37001d402bf46a170d`](./contracts/polygon-137/0x4ebb81605f91c02827426e37001d402bf46a170d/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x775233ec40b2907096e4d1affc0597bed52db8ac`](./contracts/polygon-137/0x775233ec40b2907096e4d1affc0597bed52db8ac/) | PriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xef5b158dd68607a3ce022e8beb75490e2a678159`](./contracts/polygon-137/0xef5b158dd68607a3ce022e8beb75490e2a678159/) | PriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb329c9dee4419781dade20e6adb6582ad3ea16ac`](./contracts/polygon-137/0xb329c9dee4419781dade20e6adb6582ad3ea16ac/) | PriceFeedSettable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2cd697f0ad24b2f79234829731eab659a09dc806`](./contracts/polygon-137/0x2cd697f0ad24b2f79234829731eab659a09dc806/) | ScoreDB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ba893d3671e0f869382483caa5e2b5406f17ae8`](./contracts/polygon-137/0x7ba893d3671e0f869382483caa5e2b5406f17ae8/) | SettingsProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Fork inheritance lineage and inherited audits are included when available.
