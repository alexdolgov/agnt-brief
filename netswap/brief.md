# Agentic Audit Brief: NetSwap

## Project Overview

- Project: NetSwap (`netswap`)
- Website: [https://netswap.io/#/home](https://netswap.io/#/home)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.682Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: metis
- Contract surface: 53 unique implementations (101 raw deployments)
- DeFi Llama TVL: $1,229,900.75
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 28 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 2 common project-authored base contract(s) (ownableupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 101; live-surface contracts included: 101 (0 live, 101 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 53 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/29
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 53
- Raw deployments: 101
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 5 | 17.2% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Multicall | periphery | metis | n/a | [`0x0071ddb5a2e80b6b22317594a0307599836621cd`](./contracts/metis-1088/0x0071ddb5a2e80b6b22317594a0307599836621cd/) | ✅ Audited |
| NetswapFactory | registry | metis | n/a | [`0x70f51d68d16e8f9e418441280342bd43ac9dff9f`](./contracts/metis-1088/0x70f51d68d16e8f9e418441280342bd43ac9dff9f/) | ✅ Audited |
| NetswapRouter | adapter | metis | n/a | 2 deployments: metis [`0x1e876cce41b7b844fde09e38fa1cf00f213bff56`](./contracts/metis-1088/0x1e876cce41b7b844fde09e38fa1cf00f213bff56/); metis `0xf8c8c4b783651a6807742da5f724b465dd1efb25` | ✅ Audited |
| NETT | unknown | metis | n/a | 2 deployments: metis [`0x8196b259d309efe84d22e34ea76dc8547c99b7d2`](./contracts/metis-1088/0x8196b259d309efe84d22e34ea76dc8547c99b7d2/); metis `0x90fe084f877c65e1b577c7b2ea64b8d8dd1ab278` | ✅ Audited |
| NETTFarm | unknown | metis | n/a | [`0x9d1dbb49b2744a1555edbf1708d64dc71b0cb052`](./contracts/metis-1088/0x9d1dbb49b2744a1555edbf1708d64dc71b0cb052/) | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseOracle | unknown | metis | n/a | [`0xba34fc26ad8353b1f7e396b6129354bd1ee339c4`](./contracts/metis-1088/0xba34fc26ad8353b1f7e396b6129354bd1ee339c4/) | ⚠️ Unaudited |
| BasicModel | unknown | metis | n/a | [`0x846b62d627f07fe5e2804a32cd5a0cec408b98f7`](./contracts/metis-1088/0x846b62d627f07fe5e2804a32cd5a0cec408b98f7/) | ⚠️ Unaudited |
| BoostedNETTFarm | unknown | metis | n/a | [`0x0ecdc3d1747dc0ba37c9f7a0711501657136f553`](./contracts/metis-1088/0x0ecdc3d1747dc0ba37c9f7a0711501657136f553/) | ⚠️ Unaudited |
| Bricked | unknown | metis | n/a | [`0x1b3da69c93cb57e620a1cb6fd94d8421af14df3b`](./contracts/metis-1088/0x1b3da69c93cb57e620a1cb6fd94d8421af14df3b/) | ⚠️ Unaudited |
| CommunityTreasury | operational_periphery | metis | n/a | [`0x2dc348972df99dff6716007d19368eaaa6e75ed7`](./contracts/metis-1088/0x2dc348972df99dff6716007d19368eaaa6e75ed7/) | ⚠️ Unaudited |
| ERC20Mock | unknown | metis | n/a | [`0xe7491fd7ba7eb13c2346d55c4b32cb64d1c08be1`](./contracts/metis-1088/0xe7491fd7ba7eb13c2346d55c4b32cb64d1c08be1/) | ⚠️ Unaudited |
| FarmLens | periphery | metis | n/a | [`0x8d8be2b72515680f6c31dc5d9a3fb30f1366df60`](./contracts/metis-1088/0x8d8be2b72515680f6c31dc5d9a3fb30f1366df60/) | ⚠️ Unaudited |
| L2StandardTokenFactory | unknown | metis | n/a | [`0x4f2185589c43ab8e0ff91e6bba9921414ede8eae`](./contracts/metis-1088/0x4f2185589c43ab8e0ff91e6bba9921414ede8eae/) | ⚠️ Unaudited |
| LaunchpadHelper | periphery | metis | n/a | [`0x35c3123e3e274f05f921a792bd0d80414d50d07f`](./contracts/metis-1088/0x35c3123e3e274f05f921a792bd0d80414d50d07f/) | ⚠️ Unaudited |
| LPOracle | unknown | metis | n/a | [`0xdf4b248464ce2cda6f1a68aa2bff4b610f496076`](./contracts/metis-1088/0xdf4b248464ce2cda6f1a68aa2bff4b610f496076/) | ⚠️ Unaudited |
| Mining | unknown | metis | n/a | 2 deployments: metis [`0x3751a5b7b1f16d997776261555b0b9fbc702262a`](./contracts/metis-1088/0x3751a5b7b1f16d997776261555b0b9fbc702262a/); metis `0x7077f35063f17ee1b84678334d261ccf47980271` | ⚠️ Unaudited |
| NetswapPair | unknown | metis | n/a | 7 deployments: metis [`0x0724d37522585e87d27c802728e824862dc72861`](./contracts/metis-1088/0x0724d37522585e87d27c802728e824862dc72861/); metis `0x1cad5f8f5d4c0ad49646b2565cc0ca725e4280ea`; metis `0x3d60afecf67e6ba950b499137a72478b2ca7c5a1`; metis `0x59051b5f5172b69e66869048dc69d35db0b3610d`; metis `0x5ae3ee7fbb3cb28c17e7adc3a6ae605ae2465091`; metis `0x60312d4ebbf3617d3d33841906b5868a86931cbd`; metis `0xf5988809ac97c65121e2c34f5d49558e3d12c253` | ⚠️ Unaudited |
| PadFactory | registry | metis | n/a | [`0x587e879e48ae1753d44d9f33603141c6afb87f76`](./contracts/metis-1088/0x587e879e48ae1753d44d9f33603141c6afb87f76/) | ⚠️ Unaudited |
| ProxyAdmin | governance | metis | n/a | 3 deployments: metis [`0x31fb08c0c4d8b147a73f0be5e0e769721d0956ed`](./contracts/metis-1088/0x31fb08c0c4d8b147a73f0be5e0e769721d0956ed/); metis `0x4196aaf58c5bdd5d96571b77ed5562929e307873`; metis `0x757251f93e5f51d6c488b9ebd2c8386abae7e3cd` | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | metis | n/a | 25 deployments: metis [`0x1c5f80666406d528ca91c72cf8f0c536cf2fcadf`](./contracts/metis-1088/0x1c5f80666406d528ca91c72cf8f0c536cf2fcadf/); metis `0x1ddf972f2ccbf896b4df62befb434f7e9f553634`; metis `0x2bd9e5da0c3ccd017eacbe7420180faadfb5a0b7`; metis `0x38d283e53c6530dfa8ccf954fdb3419aaee530f6`; metis `0x4cccede3d5a6fc96ff921b8e765446c827f4b294`; metis `0x53ba27e838085db9c51b56b78a63fc9bfd37b146`; metis `0x579a5875055048a577416683a20f0cd8f5311261`; metis `0x66496b381c5806167d9526bb164caa632c6cbb6c`; metis `0x6770bc7a1eee5c3d792a5b90217cf31855b39c81`; metis `0x7c2551a7c6f415937b462d1b14077c5750a54f2e`; metis `0x82e7fb15c1c173013f67b677f967ecf0ca4838ce`; metis `0x876488d7beb48ede40e74346a70fe587e8f7da66`; metis `0xa0ffb3c304795a625b32bf7185ff8d2afc2ef762`; metis `0xa7c260c20a216ef4afeff4e3b113afdbfb78e284`; metis `0xa83a5658f217bb8cadb04cdc5e2db551ce871c8a`; metis `0xb7d2ab19798c9eb056e9a9aa1290d48e1af60f21`; metis `0xbedf6ea5f501b27e88882ec0e3dc0a58ea4ffe97`; metis `0xcae5caeb285379a6d35d71bd628e79421ea5eb1e`; metis `0xd56c7ff349596c7b3a0f0abf564b800a8ec6fba7`; metis `0xd5a3ea7d65d7b814c77d0d287c9ced8184bea7a1`; metis `0xd64894df18ca14d3fe051bec9ee9e0efd0a521e8`; metis `0xd8a5ee9c79f8b095653b60d19939bc7db4236e08`; metis `0xdd70c38e028e85624d85a12a560c9ebf8795ce64`; metis `0xe2bc435e91a8c2873469fd603f6e18a6817f2db5`; metis `0xfabe5ddb2f2a94ce31c2c93893d761921f879a33` | ⚠️ Unaudited |
| StakingRewards | unknown | metis | n/a | 7 deployments: metis [`0x2ac666026515acc3d8a29b99785c6cdd989c096b`](./contracts/metis-1088/0x2ac666026515acc3d8a29b99785c6cdd989c096b/); metis `0x35a316370da5dfcd6239290325cb38a00007b02c`; metis `0x4d2f0f5409b51172dc229b3c8dcaa1365a9c9c27`; metis `0x54f683cda2843a3bb55ab2d8ca97e2aaa784532b`; metis `0x551df44adcf37965760f959e0bc10dd170b63c33`; metis `0x7fe9f01dba45ae94c5fea8f448c1db1a9bf08300`; metis `0xb434526b76dd1c12ef4e93fe8be3cd58e9460329` | ⚠️ Unaudited |
| TestERC20 | unknown | metis | n/a | [`0xd6ceaed7621defe5ed564cc5700d4cdb25a2de4d`](./contracts/metis-1088/0xd6ceaed7621defe5ed564cc5700d4cdb25a2de4d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | metis | n/a | 7 deployments: metis [`0x045df90e045b33cebf756947d799d65a3729bfc3`](./contracts/metis-1088/0x045df90e045b33cebf756947d799d65a3729bfc3/); metis `0x276164cde2607ce3e45dd76fe7f4f31511d9db9d`; metis `0x3c13674ae82dac9fffe5d7f6e9ee555536bc9961`; metis `0x5e1f9cd1b9635506af6bc3b2414ac9c8b2840efa`; metis `0xa030a0983f3427bed5472435a347db334a1dc8e8`; metis `0xd365e36086f70d187e4f5b83c912e555e57110fa`; metis `0xef18f299d2134d1a9d34bfdf9da30d1347d0fbb4` | ⚠️ Unaudited |
| Unlimited | unknown | metis | n/a | 2 deployments: metis [`0x0f21d33f6f4fcab61e6c21539280c90a140def34`](./contracts/metis-1088/0x0f21d33f6f4fcab61e6c21539280c90a140def34/); metis `0xe5991f3b3d468e6c904f56a4d9c0613c3e3ab4db` | ⚠️ Unaudited |
| UnlimitedModel | unknown | metis | n/a | [`0x7b32acda3efaf549e4fca0f898cf280b40ba3342`](./contracts/metis-1088/0x7b32acda3efaf549e4fca0f898cf280b40ba3342/) | ⚠️ Unaudited |
| VeNETT | unknown | metis | n/a | [`0x6535db9e8ba2c4304fe45b25d866b37346cc2bd5`](./contracts/metis-1088/0x6535db9e8ba2c4304fe45b25d866b37346cc2bd5/) | ⚠️ Unaudited |
| VeNETTStaking | unknown | metis | n/a | [`0xa9d6748d1c3831a87c08a702d73adf4b306b31a3`](./contracts/metis-1088/0xa9d6748d1c3831a87c08a702d73adf4b306b31a3/) | ⚠️ Unaudited |
| wNETT | unknown | metis | n/a | [`0x8738e9e9a8263065b07ad460beb66815dd7b81a5`](./contracts/metis-1088/0x8738e9e9a8263065b07ad460beb66815dd7b81a5/) | ⚠️ Unaudited |
| wNETTStaking | unknown | metis | n/a | [`0x794a5108085fe5ee26add48181bce1a0cecd07cc`](./contracts/metis-1088/0x794a5108085fe5ee26add48181bce1a0cecd07cc/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | metis | n/a | `0x0cf4c49ecea4ef9732a02a2bd7f118284a921210` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1161231a53d65f23ebb82091793abdad9b8de045` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x12cd499009eb443ef8f378e271acc97d0543c0a7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x142f0f56a1c9600e7b2b034648134850c93e7238` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x18e7286019288215275682b3e39c001c004624b4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1cf24ba40399aed976353ad972a74ab3e0bd9d1a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1eefea9ddb5c2eb16d8422805db8834677b59425` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4492eed3468f616f725a00cabb4b0c575ca590c3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4912b4dff339d4437a801800b4c26176affaa85f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x574b3068a7f12c3962ab3fa592d4330ef9f05fff` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6a873fd43275362cd8c8ff976787a93c7fc63c97` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6aa0abd1323afc9d9cb6f795fcc6878a5268b279` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x966d65068a6a30f10fd1fa814258637a34e05908` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa6892310a5a5b7636858966ee50db49a2f2ba4b1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xaa74371193e506f69b0f11742ad662f51f245f00` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xaece9cd0a34e9911f004cd15f44d28f65dc68084` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc4a5f6b1d8b5f9aafa3ac87ff6da9622f72f6984` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd14bf854fd887673a912af208db2524c75889e7c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd332b8516667bb5b43210f4d04e86beda8e3e22b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd45ad4ee4ff123aab5649baf5081298372dcfe43` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe75aadb452471ccc70932809ac40055be6f81a1b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf39ce31b138d4fbac6a826105bcd8c31b7b7c865` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf720bab026696da11eb6a184984bbcb2c52694d3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf8cafa257658131bf781fd2e48c916ed690267ef` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/EbMkSj6wrVk9IfPEsOGH/uploads/9mkCS0SDBLKkPGAWCevh/NetSwap_audit.pdf](https://4122350423-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FEbMkSj6wrVk9IfPEsOGH%2Fuploads%2F9mkCS0SDBLKkPGAWCevh%2FNetSwap_audit.pdf) | yAudit | Audit | 2021-11 | stale | Direct | contract_name | 3 | n/a |
| [spaces/EbMkSj6wrVk9IfPEsOGH/uploads/lhV4zxJaCA5bczsO9uBu/Netswap Farm_audit.pdf](https://4122350423-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FEbMkSj6wrVk9IfPEsOGH%2Fuploads%2FlhV4zxJaCA5bczsO9uBu%2FNetswap%20Farm_audit.pdf) | yAudit | Audit | 2022-01 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | [`0xba34fc26ad8353b1f7e396b6129354bd1ee339c4`](./contracts/metis-1088/0xba34fc26ad8353b1f7e396b6129354bd1ee339c4/) | BaseOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x846b62d627f07fe5e2804a32cd5a0cec408b98f7`](./contracts/metis-1088/0x846b62d627f07fe5e2804a32cd5a0cec408b98f7/) | BasicModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x0ecdc3d1747dc0ba37c9f7a0711501657136f553`](./contracts/metis-1088/0x0ecdc3d1747dc0ba37c9f7a0711501657136f553/) | BoostedNETTFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1b3da69c93cb57e620a1cb6fd94d8421af14df3b`](./contracts/metis-1088/0x1b3da69c93cb57e620a1cb6fd94d8421af14df3b/) | Bricked | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x2dc348972df99dff6716007d19368eaaa6e75ed7`](./contracts/metis-1088/0x2dc348972df99dff6716007d19368eaaa6e75ed7/) | CommunityTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xe7491fd7ba7eb13c2346d55c4b32cb64d1c08be1`](./contracts/metis-1088/0xe7491fd7ba7eb13c2346d55c4b32cb64d1c08be1/) | ERC20Mock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x8d8be2b72515680f6c31dc5d9a3fb30f1366df60`](./contracts/metis-1088/0x8d8be2b72515680f6c31dc5d9a3fb30f1366df60/) | FarmLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x4f2185589c43ab8e0ff91e6bba9921414ede8eae`](./contracts/metis-1088/0x4f2185589c43ab8e0ff91e6bba9921414ede8eae/) | L2StandardTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x35c3123e3e274f05f921a792bd0d80414d50d07f`](./contracts/metis-1088/0x35c3123e3e274f05f921a792bd0d80414d50d07f/) | LaunchpadHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xdf4b248464ce2cda6f1a68aa2bff4b610f496076`](./contracts/metis-1088/0xdf4b248464ce2cda6f1a68aa2bff4b610f496076/) | LPOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x3751a5b7b1f16d997776261555b0b9fbc702262a`](./contracts/metis-1088/0x3751a5b7b1f16d997776261555b0b9fbc702262a/) | Mining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x0724d37522585e87d27c802728e824862dc72861`](./contracts/metis-1088/0x0724d37522585e87d27c802728e824862dc72861/) | NetswapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x587e879e48ae1753d44d9f33603141c6afb87f76`](./contracts/metis-1088/0x587e879e48ae1753d44d9f33603141c6afb87f76/) | PadFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1c5f80666406d528ca91c72cf8f0c536cf2fcadf`](./contracts/metis-1088/0x1c5f80666406d528ca91c72cf8f0c536cf2fcadf/) | SimpleRewarderPerSec | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x2ac666026515acc3d8a29b99785c6cdd989c096b`](./contracts/metis-1088/0x2ac666026515acc3d8a29b99785c6cdd989c096b/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xd6ceaed7621defe5ed564cc5700d4cdb25a2de4d`](./contracts/metis-1088/0xd6ceaed7621defe5ed564cc5700d4cdb25a2de4d/) | TestERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x0f21d33f6f4fcab61e6c21539280c90a140def34`](./contracts/metis-1088/0x0f21d33f6f4fcab61e6c21539280c90a140def34/) | Unlimited | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x7b32acda3efaf549e4fca0f898cf280b40ba3342`](./contracts/metis-1088/0x7b32acda3efaf549e4fca0f898cf280b40ba3342/) | UnlimitedModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x6535db9e8ba2c4304fe45b25d866b37346cc2bd5`](./contracts/metis-1088/0x6535db9e8ba2c4304fe45b25d866b37346cc2bd5/) | VeNETT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xa9d6748d1c3831a87c08a702d73adf4b306b31a3`](./contracts/metis-1088/0xa9d6748d1c3831a87c08a702d73adf4b306b31a3/) | VeNETTStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x8738e9e9a8263065b07ad460beb66815dd7b81a5`](./contracts/metis-1088/0x8738e9e9a8263065b07ad460beb66815dd7b81a5/) | wNETT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x794a5108085fe5ee26add48181bce1a0cecd07cc`](./contracts/metis-1088/0x794a5108085fe5ee26add48181bce1a0cecd07cc/) | wNETTStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=5

Fork inheritance lineage and inherited audits are included when available.
