# Agentic Audit Brief: Sperax

## Project Overview

- Project: Sperax (`sperax`)
- Website: [http://sperax.io](http://sperax.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.476Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, ethereum
- Contract surface: 118 unique implementations (125 raw deployments)
- DeFi Llama TVL: $1,765,659.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 24 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 6 common project-authored base contract(s) (ownableupgradeable, contextupgradeable, reentrancyguardupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 140; live-surface contracts included: 125 (21 live, 104 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/12 (33.3%)
- Deployed-live implementations: 18 of 118 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/18
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 100
- Unique implementations: 118
- Raw deployments: 125
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 9 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 8.3% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 11.1% | 2022-09 |
| unknown | Tier 2 | 2 | 11.1% | 2024-06 |
| Quantstamp | Tier 2 | 1 | 5.6% | 2023-12 |
| SlowMist | Tier 1 | 1 | 5.6% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Farm | unknown | arbitrum | n/a | [`0x39eb38cf2cc8b4ff77817e2ada6ba64e40a4d8ea`](./contracts/arbitrum-42161/0x39eb38cf2cc8b4ff77817e2ada6ba64e40a4d8ea/) | ✅ Audited |
| SperaxTokenL2 | token | arbitrum | n/a | [`0x5575552988a3a80504bbaeb1311674fcfd40ad4b`](./contracts/arbitrum-42161/0x5575552988a3a80504bbaeb1311674fcfd40ad4b/) | ✅ Audited |
| veSPA_v1 | unknown | arbitrum | n/a | [`0xd16f5343fddd2dcf6a8791e302a204c13069d165`](./contracts/arbitrum-42161/0xd16f5343fddd2dcf6a8791e302a204c13069d165/) | ✅ Audited |
| YieldReserve | unknown | arbitrum | n/a | [`0xfd14c8ef0993fd9409f7820ba8ba80370529d861`](./contracts/arbitrum-42161/0xfd14c8ef0993fd9409f7820ba8ba80370529d861/) | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Dynamic_APR_Farm | unknown | arbitrum | n/a | [`0x7775cd662acf952101ace08a7144c8bb7d5ef2be`](./contracts/arbitrum-42161/0x7775cd662acf952101ace08a7144c8bb7d5ef2be/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x5b12d9846f8612e439730d18e1c12634753b1bf1`](./contracts/arbitrum-42161/0x5b12d9846f8612e439730d18e1c12634753b1bf1/); arbitrum `0x6d5240f086637fb408c7f727010a10cf57d51b62` | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x00f2a6a5c20152afa76c05627a224af8fc96a825`](./contracts/arbitrum-42161/0x00f2a6a5c20152afa76c05627a224af8fc96a825/); arbitrum `0x3e49925a79cbfb68baa5bc9dfb4f7d955d1ddf25` | ⚠️ Unaudited |
| SperaxToken | token | ethereum | n/a | 2 deployments: ethereum [`0x9631483f28b7f5cbf7d435ab249be8f709215bc3`](./contracts/ethereum-1/0x9631483f28b7f5cbf7d435ab249be8f709215bc3/); ethereum `0xb4a3b0faf0ab53df58001804dda5bfc6a3d59008` | ⚠️ Unaudited |
| SperaxTokenL1 | token | ethereum | n/a | [`0x2a95fe4c7e64e09856989f9ea0b57b9ab5f770cb`](./contracts/ethereum-1/0x2a95fe4c7e64e09856989f9ea0b57b9ab5f770cb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x0390c6c7c320e41fce0e6f0b982d20a88660f473`](./contracts/arbitrum-42161/0x0390c6c7c320e41fce0e6f0b982d20a88660f473/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x457fa70f53f1e088f768c0c93a389b4c229c215b`](./contracts/arbitrum-42161/0x457fa70f53f1e088f768c0c93a389b4c229c215b/); arbitrum `0xf3f98086f7b61a32be4edf8d8a4b964ec886bbcd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9b8b924a2b95f9681a6445c839ff1429159850a4`](./contracts/arbitrum-42161/0x9b8b924a2b95f9681a6445c839ff1429159850a4/); arbitrum `0xc93f8a2c0c574c741190ea4f33639054d5e4ac42` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xbf82a3212e13b2d407d10f5107b5c8404de7f403`](./contracts/arbitrum-42161/0xbf82a3212e13b2d407d10f5107b5c8404de7f403/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xdc118f2f00812326fe0de5c9c74c1c0c609d1eb4`](./contracts/arbitrum-42161/0xdc118f2f00812326fe0de5c9c74c1c0c609d1eb4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xf783dd830a4650d2a8594423f123250652340e3f`](./contracts/arbitrum-42161/0xf783dd830a4650d2a8594423f123250652340e3f/) | ⚠️ Unaudited |
| USDs | unknown | arbitrum | n/a | [`0xd74f5255d557944cf7dd0e45ff521520002d5748`](./contracts/arbitrum-42161/0xd74f5255d557944cf7dd0e45ff521520002d5748/) | ⚠️ Unaudited |
| veSPA | unknown | arbitrum | n/a | [`0x2e2071180682ce6c247b1ef93d382d509f5f6a17`](./contracts/arbitrum-42161/0x2e2071180682ce6c247b1ef93d382d509f5f6a17/) | ⚠️ Unaudited |
| xSPA | unknown | arbitrum | n/a | [`0x0966e72256d6055145902f72f9d3b6a194b9ccc3`](./contracts/arbitrum-42161/0x0966e72256d6055145902f72f9d3b6a194b9ccc3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (100)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x3703a01804f05a3cf84be69627ce32f8c2b84151) | unknown | arbitrum | n/a | `0x886f2d09909caa489c745927e200afd5af198444` | ❓ Unverified |
| Proxy (impl: 0xb172d61f8682b977cf0888ce9337c41b50f94910) | unknown | arbitrum | n/a | `0xbc683dee915313b01deff10d29342e59e1d75c09` | ❓ Unverified |
| Proxy (impl: 0xed0544dea3300cebc5dff25cd9a189abde1862be) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x61dec207bb0deedcd7a56d7b76b2692580692fd5`; arbitrum `0xed0544dea3300cebc5dff25cd9a189abde1862be` | ❓ Unverified |
| SPABuyback | unknown | arbitrum | n/a | `0xfbc0d3ca777722d234fe01dba94dededb277afe3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe81574d75e94eac3701c65dd848a2c511e888ea9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x00b30951ec53903d8e6b98d8ab98635a4aa2894d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0247d4f8b7bd18eb21ca6aa90f0215f2d6da924b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03b35477cfd400dedfac06f40422491500cbc663` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x06910bd3ea422e6d6d8ebb4f9afe8302dc506b65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x06bba0902b1c08d16df36ba3f4626a0ee88677ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09983ff59f5e4831883f73ed0f6bd3738309bbc1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09fcea2a535ca9c5f757c2ad8ac394d66f5be5f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0addfb771e36a1d2c1691cf3131635a0462868d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0fb294f0fe05c186142811c3e17713bff987e7d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11629104766d83989dd7317827da837c0a38a3fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1285276889a226a6d4b1c18b85082db4dd51251e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x145ac78d46f64e793c0f11c664f699cdcab58e4a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x176dcf539fd1f263b3674a6f218eed42bfc5a57e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1820c075dba82a51a10a8deae98e34654aa61af9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a613166fd0dfe31824ff05cca41e56bbcc4ecc2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f6803ed9df57d664297186575d53648616aba26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x240db761844f5c68fb9cabb52dbc98a6bfadf2fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29524627cfd2cd27321513f1538a25e5151142c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b00efdfca499c75d0bd8d6e51c6455c352aaa10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d4b8afd0b28954abdb6bbe87990c8738c27c275` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3050269626b2ac515939c80ddaf80a88cb8760a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x322057f16e624a19226cbd3077e3e014e28e72a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3333a135f4d969eb9bb8b07c1014905edb9ecd41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x356d794b308311765399b22fb8d4e0c225236ab8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x374219676e859e8dd83e4408049c70f12264bd20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x386a295504403955a0d04597e0cd643b9ff83ec1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43dccbca39d8e84980f6bf735a0b0df38c291be1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46728c5b55ccb6f15d1865cb8cec62f44b0071b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4bc6be8d8d79720467127ca30b958753828e138a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4c58845bef21e772eee8b370e378df64fa660cd3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4fcbfc8c75f559e490162dc42549ad66c7dc1da1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x511c1b68bdc3b7a0650ae357661b3d6dabd14172` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x524b114e2c2f5f10e6244fc903abe9bffeaf8899` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x544350adf167914641200c7a03e8dbfa86cd4cab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x58464337ec4c3e016bb5869ac4e58334a3aef487` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x58735edec492bf49f115a40d769767d4f0804c9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5a96b1913c96f6848defb53c17b1c5b299764848` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b2da0d0b4ab38bbdef314bcb91f045e016a8a2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d2a5d67fd5c970a4a4ab60ba6cf9b438f869fb9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f6ac8c75e3ce38b5d803f67da2cd1fdd231185b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x638d76763de9492b609b0d8830d8f626c5933a4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x645ebedac530ac0b6ee99d7e3237ba84d5eae1af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67a798ba6d734dbdd3aa09002f5c2fecb1982ed9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ada84b88ba38eace0b574d9623ec2a31d6f039d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x754db85828a50335affd855552c92ef1e844da9c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x75ab2d8f109ca88268b0778f1b9b370d2f3b203d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77b6e3cbbc2ce5ba1ec11ed8cc17355e5d159714` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78b2a3a0b9af050daf2d5ffacc3e41c05f33d5bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b952a0f27c12b1b3ad8028b03e86d0d08d66047` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c859923d26e1ff8013fcd9d018b607a129635d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x81fb6454362a411a4ec6a19119264f90893a6d31` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x83db29edaed374076c2bed2cd8c4c04d59a10224` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x83fa5f636628697d2d612a6c6cc25a79969c354f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8dbfa19750d43497785e41f73132feab5dedebed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e5562724bccdb8e6df5749927ec28c2123e7d76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8fa1e51a4a7f74e411c986f6ac5d7cf322bbba6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9741d4605b6f16b7840e01ff6d279df0de30aed3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x974bf7cfc2a160048ce620a28b2dbf8d3e1de4c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97a7e6cf949114fe4711018485d757b9c4962307` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97b3e302b9c27338149fd5e59c6e194c499dc7c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x983fcc972f44fec62dd7d63aca743271f7eba210` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x992bcbbfaa70e920bc385daf6b6a8f5ba18babe2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b90802d7cc584e50a29c81dccde6d8ba3fc3b43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d89796366e49477fc5a18a21062abfb1c6828e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2255e689d1e4cc82a7cdc1f01cae603c93fd92d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa4d101efd2f57dd9e3767f2b850417e7744367e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa748711c7e5e28fbbcc8be58ac358c9bdbe05b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae3232490723132d260fdebcc659cbbf629eb5be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb1056ae1bffe94817dc8661da126b1b94cdf9430` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb3647b68d02ade635735daeeb98b5a68c924eff0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb38629b476ecbb6eb2d767cb6b4cad0b17b68944` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4a3b0faf0ab53df58001804dda5bfc6a3d59008` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4f9a869fcfdc8d301e5a8f2fcdb655addee3bcb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6b989a9647cfedc7d61ef494424a88777cb0b28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb74401ce681fc619c334a8dfd2e0cb99d5b9b4a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbe51b646bfc066e201d68f1768f1cf612650307d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc0f0484a216aff20e0ead1a1513ce40fe0afe0fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc92acb8d39dfbda26ec954f471979d8175c3633b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcb9b91716185d42f77ad9681b234fba8159e688c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbac4bb5e5008a8e86546f665262de76db627d75` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc12beac79143eef501181c7dd73f7b4d8e99fa8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf9761e950e51b8599256154a0f868d9a31e8004` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd0497f22e55bd457cda2712379883c678e61c370` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd06eca6b1c7f47f8848e96fd9c9ecb17c54e650c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd4e33aa638947b064cfdc781e783c7f535492cf3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdb46bfd53b7e2da347c2ff96fe35f933c16fa9b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe64ced03fdeaea1ab7756d6058a7e8d9915f45ba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7b284c08f3361a85775c8d0748543dafad423a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe8f75706f8d1811f87b2a42d372aa531e6e75c94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe91b6da105d1856f9211cd2282e60bf41f9169a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecc7fcfad6b9ec82892aaed1971892218d79f81b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xf1565d7e3a151632f9bca20dc8655542a9ab82b2`; arbitrum `0xf2badbb9817a40d29393fa88951415a4a334a898` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf30db0f56674b51050630e53043c403f8e162bf2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf403a6e15b42e8edf03546f73b971a0b28527e7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc074bd32f84add6fcf08abb380d67736fd791a0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Demeter_PeckShield_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/Demeter_PeckShield_1.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | contract_name | 1 | medium |
| [Sperax - USDs - Report (1).pdf](https://github.com/Sperax/Audit_Reports/blob/main/Sperax%20-%20USDs%20-%20Report%20(1).pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 1 | n/a |
| [Demeter Audit Final Report.pdf](https://github.com/Sperax/Audit_Reports/blob/main/Demeter%20Audit%20Final%20Report.pdf) | Unknown | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |
| [LM_Certik_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/LM_Certik_1.pdf) | CertiK | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [SPA_Certik_2.pdf](https://github.com/Sperax/Audit_Reports/blob/main/SPA_Certik_2.pdf) | CertiK | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [USDs_Quantstamp.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Quantstamp.pdf) | Quantstamp | Audit | 2023-12 | stale | Direct | contract_name | 1 | n/a |
| [USDs_Slowmist_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Slowmist_1.pdf) | SlowMist | Audit | 2021-12 | stale | Direct | contract_name | 1 | n/a |
| [USDs_Slowmist_2.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Slowmist_2.pdf) | SlowMist | Audit | 2021-12 | stale | Direct | contract_name | 1 | n/a |
| [veSPA_PeckShield_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/veSPA_PeckShield_1.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x7775cd662acf952101ace08a7144c8bb7d5ef2be`](./contracts/arbitrum-42161/0x7775cd662acf952101ace08a7144c8bb7d5ef2be/) | Dynamic_APR_Farm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9631483f28b7f5cbf7d435ab249be8f709215bc3`](./contracts/ethereum-1/0x9631483f28b7f5cbf7d435ab249be8f709215bc3/) | SperaxToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a95fe4c7e64e09856989f9ea0b57b9ab5f770cb`](./contracts/ethereum-1/0x2a95fe4c7e64e09856989f9ea0b57b9ab5f770cb/) | SperaxTokenL1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd74f5255d557944cf7dd0e45ff521520002d5748`](./contracts/arbitrum-42161/0xd74f5255d557944cf7dd0e45ff521520002d5748/) | USDs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2e2071180682ce6c247b1ef93d382d509f5f6a17`](./contracts/arbitrum-42161/0x2e2071180682ce6c247b1ef93d382d509f5f6a17/) | veSPA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0966e72256d6055145902f72f9d3b6a194b9ccc3`](./contracts/arbitrum-42161/0x0966e72256d6055145902f72f9d3b6a194b9ccc3/) | xSPA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 101 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: contract_name=5, extraction_exact=2

Zero-match audit list:

- [2891] LM_Certik_1.pdf
- [2892] SPA_Certik_2.pdf

Fork inheritance lineage and inherited audits are included when available.
