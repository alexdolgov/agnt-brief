# Agentic Audit Brief: Ronin Bridge

## Project Overview

- Project: Ronin Bridge (`ronin-bridge`)
- Website: [https://app.roninchain.com/bridge](https://app.roninchain.com/bridge)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:48.132Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: ethereum
- Contract surface: 31 unique implementations (297 raw deployments)
- DeFi Llama TVL: $3,538,156.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 32 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 6 common project-authored base contract(s) (ocr2abstract, tokenpool, aggregateratelimiter). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **KEEP Network** (`keep-network`) in the CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN subsystem.
8 audits inherited from `keep-network`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 443; live-surface contracts included: 297 (274 live, 23 unknown).
- Excluded by liveness: 146 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/8 (50.0%)
- Deployed-live implementations: 8 of 31 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/8
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 31
- Raw deployments: 297
- Audits discovered: 13 (5 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 6 fresh, 1 aging, 3 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 50.0% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 4 | 50.0% | 2025-04 |
| Thesis Defense | Tier 2 | 4 | 50.0% | 2024-04 |
| unknown | Tier 2 | 4 | 50.0% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CommitStore | unknown | ethereum | n/a | 87 deployments: ethereum [`0x0428df...b587de`](./contracts/ethereum-1/0x0428df02c581e605aabf83005b427b1561b587de/); ethereum `0x0d26ba...052045`; ethereum `0x0f254e...a380d7`; ethereum `0x0f5552...2bbe75`; ethereum `0x0f89c7...c52959`; ethereum `0x10d561...945c75`; ethereum `0x118a93...6c6bfc`; ethereum `0x17f1ac...9166ba`; ethereum `0x180776...3f5633`; ethereum `0x1a3d58...e35a8d`; ethereum `0x1bddba...0533b9`; ethereum `0x20718e...411a6d`; ethereum `0x215a3a...861f0e`; ethereum `0x27a4e7...9926fb`; ethereum `0x2aa101...a007ce`; ethereum `0x2d1708...ba1c77`; ethereum `0x31f6ab...0a89ab`; ethereum `0x38a806...c43271`; ethereum `0x3cb2a8...56fc53`; ethereum `0x3d3467...23144c`; ethereum `0x3d8a95...b90466`; ethereum `0x3f1c35...4c4527`; ethereum `0x40c558...74417f`; ethereum `0x459154...f1e5d0`; ethereum `0x4af4b4...a79dc8`; ethereum `0x4b50cd...ee3282`; ethereum `0x52275d...01f694`; ethereum `0x53d196...c12b60`; ethereum `0x57117a...4e8787`; ethereum `0x57b548...3fb9b3`; ethereum `0x57d6cd...3dd114`; ethereum `0x5fd81c...2e15ff`; ethereum `0x607c09...8f128c`; ethereum `0x60f9b5...4b2c2a`; ethereum `0x67b972...a00b90`; ethereum `0x681827...703248`; ethereum `0x6c8b96...4bf4b9`; ethereum `0x6f4abc...c5bf75`; ethereum `0x6fe6f7...29d0a4`; ethereum `0x700b6a...794e02`; ethereum `0x70ac0f...27006a`; ethereum `0x762648...7f190e`; ethereum `0x7986c9...70a5fd`; ethereum `0x807dd6...799a04`; ethereum `0x831097...540c8f`; ethereum `0x83f3da...30250d`; ethereum `0x8705f7...646159`; ethereum `0x87c55d...793d75`; ethereum `0x8a1680...f8a2cf`; ethereum `0x8befca...dc11a0`; ethereum `0x8c3805...cf8555`; ethereum `0x8d846b...77b1ab`; ethereum `0x8dc27d...9bae04`; ethereum `0x8fc54e...e9e262`; ethereum `0x913a2a...ddc04b`; ethereum `0x95deb0...b82d64`; ethereum `0x98d0f8...a67ed9`; ethereum `0x9b2eed...1b7749`; ethereum `0x9b9ec8...83dcdb`; ethereum `0x9d93d5...794f8a`; ethereum `0x9f592c...d705cd`; ethereum `0xa4755c...110320`; ethereum `0xa48269...536d1c`; ethereum `0xa4d264...e3f194`; ethereum `0xa58818...3741b9`; ethereum `0xa9f9bf...a9a2b8`; ethereum `0xac0c6e...9cfd3e`; ethereum `0xaffa4f...643e46`; ethereum `0xbaf669...fc4cb7`; ethereum `0xc46890...56ad8d`; ethereum `0xc5164a...224f9f`; ethereum `0xd07926...d40235`; ethereum `0xd2428f...a6cd99`; ethereum `0xd37a60...beeb76`; ethereum `0xd8f93a...bff802`; ethereum `0xd9d3d9...c3da72`; ethereum `0xdac3a8...205ffe`; ethereum `0xdb156e...6e627c`; ethereum `0xdcf6f2...954110`; ethereum `0xe41677...7470a6`; ethereum `0xf19173...fd4793`; ethereum `0xf28f73...a6a62f`; ethereum `0xf7b343...e75ed3`; ethereum `0xf7d68c...bb8f02`; ethereum `0xfa94e5...7eb210`; ethereum `0xfacfe8...551fd6`; ethereum `0xfe73bc...fb0165` | ✅ Audited |
| EVM2EVMOffRamp | unknown | ethereum | n/a | 87 deployments: ethereum [`0x0ab48c...c44554`](./contracts/ethereum-1/0x0ab48c500abd8392620c3c4e4fdd5d7063c44554/); ethereum `0x0af338...0ee395`; ethereum `0x0f1b1a...2e4ba2`; ethereum `0x109c66...dcd9fe`; ethereum `0x1a904d...ed7599`; ethereum `0x1c207d...b2d12c`; ethereum `0x26a101...340fc3`; ethereum `0x310fdc...f73189`; ethereum `0x330349...f65e61`; ethereum `0x332761...cb2b26`; ethereum `0x34eec7...24a604`; ethereum `0x38ad72...e24286`; ethereum `0x3a129e...91c6c5`; ethereum `0x3b45dd...75ef58`; ethereum `0x3c5990...4210c1`; ethereum `0x3c672f...8edc09`; ethereum `0x41627a...7fdab5`; ethereum `0x418dcb...79fbb4`; ethereum `0x467653...4cf214`; ethereum `0x49aac6...1f8edd`; ethereum `0x4bc602...225419`; ethereum `0x4e4003...1950d6`; ethereum `0x559c32...a5f48d`; ethereum `0x562a20...6d1d3b`; ethereum `0x569940...f75c17`; ethereum `0x5b6d29...5eaca5`; ethereum `0x5b859e...1da7ec`; ethereum `0x5e24de...8c559f`; ethereum `0x5eda68...97c3f4`; ethereum `0x61135e...fbaae4`; ethereum `0x64a5c6...88578b`; ethereum `0x66114e...4cf0c9`; ethereum `0x66d84f...8d7c12`; ethereum `0x6868fe...563d69`; ethereum `0x6b4b63...5a9ebd`; ethereum `0x70c705...49c2ec`; ethereum `0x7115f0...5ea175`; ethereum `0x718672...d704a3`; ethereum `0x720ea8...b6ff81`; ethereum `0x794ae3...a5ce96`; ethereum `0x7a82d2...23666d`; ethereum `0x7afe70...b9171c`; ethereum `0x7e4c90...91f656`; ethereum `0x82dae1...d3a0fc`; ethereum `0x8693cd...6580c1`; ethereum `0x8b3eee...5018b8`; ethereum `0x8efae6...91f3e2`; ethereum `0x8fee86...594b28`; ethereum `0x92fbcf...9da04f`; ethereum `0x9a3ed7...20528d`; ethereum `0x9cbba1...18a90e`; ethereum `0x9de971...711988`; ethereum `0x9f0e81...d55181`; ethereum `0xa627f2...f758f0`; ethereum `0xa77c14...dc8f3b`; ethereum `0xa8c12a...992a14`; ethereum `0xaa0da3...b1769b`; ethereum `0xae2a2a...c437f0`; ethereum `0xb09590...f20bf7`; ethereum `0xb0f5b6...ec414f`; ethereum `0xb368c8...d143bf`; ethereum `0xb45cf8...b8d977`; ethereum `0xb57d52...56dd8f`; ethereum `0xbdd822...93fe72`; ethereum `0xc0c8d7...ef120d`; ethereum `0xc1ecce...9a1bf2`; ethereum `0xc71766...33ee94`; ethereum `0xc876d5...482f9c`; ethereum `0xcdca3f...96d7e4`; ethereum `0xce6364...f702e8`; ethereum `0xd50836...4dfd46`; ethereum `0xd98e80...19bfbb`; ethereum `0xde6608...bc8079`; ethereum `0xde81f1...ea57ac`; ethereum `0xdf615e...245ac9`; ethereum `0xdf85c8...cddfb3`; ethereum `0xdfd8c3...b768a4`; ethereum `0xe79705...962162`; ethereum `0xe8af3b...f09b92`; ethereum `0xe93ec2...7d47d4`; ethereum `0xefc4a1...286f4d`; ethereum `0xf2eb4c...a8656a`; ethereum `0xf3ac96...d3b7f9`; ethereum `0xf4468e...1ea9ae`; ethereum `0xfb0422...e28783`; ethereum `0xfc92c3...f0f0a3`; ethereum `0xff51c0...09cd24` | ✅ Audited |
| EVM2EVMOnRamp | unknown | ethereum | n/a | 94 deployments: ethereum [`0x03cb4c...b834d9`](./contracts/ethereum-1/0x03cb4c67d01a78f44289541281e57c33e6b834d9/); ethereum `0x0826b8...83d41b`; ethereum `0x08c798...95672d`; ethereum `0x093844...8cad63`; ethereum `0x0f27c8...d04b3c`; ethereum `0x15a9d7...a7149c`; ethereum `0x1b9605...7a195d`; ethereum `0x1d01e4...a7ef81`; ethereum `0x1fa3af...45f06b`; ethereum `0x20fd5a...b64432`; ethereum `0x266e52...717b8f`; ethereum `0x31ee10...2f8d37`; ethereum `0x333f97...f6264e`; ethereum `0x33417f...3691a4`; ethereum `0x3455d8...7b07bf`; ethereum `0x34748f...cb4094`; ethereum `0x35f0ca...5f1b8b`; ethereum `0x362a22...ba8187`; ethereum `0x3ac0d8...a8c6b1`; ethereum `0x3df8da...9dd630`; ethereum `0x4109d2...64d5b0`; ethereum `0x4545f9...9cbd27`; ethereum `0x466a07...4c9b65`; ethereum `0x486170...f2c44c`; ethereum `0x48f836...e21980`; ethereum `0x4cc3d9...5702c0`; ethereum `0x4fb540...8b05c5`; ethereum `0x4fdaad...595d6a`; ethereum `0x522f82...150fff`; ethereum `0x551390...5e6808`; ethereum `0x5739e5...2025e0`; ethereum `0x58821e...0949f1`; ethereum `0x5e7397...587e04`; ethereum `0x5f6e77...16eb3e`; ethereum `0x608d23...4ab9fa`; ethereum `0x61b4b8...3148a5`; ethereum `0x626189...1f78e9`; ethereum `0x62bfc5...9e0fbf`; ethereum `0x6715ea...4a6b49`; ethereum `0x6751ca...db4e36`; ethereum `0x69ecc4...f2c284`; ethereum `0x70b2b3...bca65d`; ethereum `0x741599...8e9f90`; ethereum `0x74cb66...e77931`; ethereum `0x75d536...49b84e`; ethereum `0x7b78f8...180a2b`; ethereum `0x7c32c6...e18bb2`; ethereum `0x7d7c49...2557b3`; ethereum `0x8469b5...a7d0df`; ethereum `0x86768e...c8d486`; ethereum `0x86b47d...5549d1`; ethereum `0x8b858e...f117ec`; ethereum `0x91d25a...ebfa69`; ethereum `0x925228...44a22c`; ethereum `0x948306...0b480d`; ethereum `0x9557b1...9aa1e0`; ethereum `0x992470...9946e7`; ethereum `0x9b14ae...8a365b`; ethereum `0x9cb0ff...9747d3`; ethereum `0xa32f81...0ebe94`; ethereum `0xa5ef33...8264ac`; ethereum `0xa6d806...8ccb48`; ethereum `0xab6066...4a10d0`; ethereum `0xafd31c...249d8a`; ethereum `0xb8a882...431937`; ethereum `0xba1aa2...653332`; ethereum `0xbeffef...886c42`; ethereum `0xc46e2f...4abf88`; ethereum `0xc5dbe2...ca3fc2`; ethereum `0xcaea22...d4b133`; ethereum `0xcb18b1...4be4c8`; ethereum `0xcbe7e5...a4e2c4`; ethereum `0xcc19bc...7780b0`; ethereum `0xccf971...f3672b`; ethereum `0xd0b5fc...282cf2`; ethereum `0xd1cc3a...cb2ac3`; ethereum `0xd54c93...95a89f`; ethereum `0xd8e872...b2e252`; ethereum `0xdaa386...016819`; ethereum `0xdb6ebb...4f19b6`; ethereum `0xdc5b57...b50844`; ethereum `0xddf4b4...0d234b`; ethereum `0xdefead...6423cc`; ethereum `0xdf1d7f...9f3b24`; ethereum `0xe2c2ab...4dadf7`; ethereum `0xe2eb22...60fe73`; ethereum `0xea6d4a...086f82`; ethereum `0xed5be9...2e3cfa`; ethereum `0xeee2ae...34a8e2`; ethereum `0xf50b9a...30f6f0`; ethereum `0xf538da...58cfd4`; ethereum `0xff31c8...a872db`; ethereum `0xffbd6b...2aa389`; ethereum `0xffbec4...bc4330` | ✅ Audited |
| RMN | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2c1c02...4948f3`](./contracts/ethereum-1/0x2c1c028aa39db7324a2d11333315efbea84948f3/); ethereum `0xdcd484...adf84f` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RegistryModuleOwnerCustom | unknown | ethereum | n/a | [`0x13022e...b2e533`](./contracts/ethereum-1/0x13022e3e6c77524308bd56aed716e88311b2e533/) | ⚠️ Unaudited |
| Router | adapter | ethereum | n/a | [`0x80226f...146f7d`](./contracts/ethereum-1/0x80226fc0ee2b096224eeac085bb9a8cba1146f7d/) | ⚠️ Unaudited |
| TokenAdminRegistry | registry | ethereum | n/a | [`0xb22764...c05cb6`](./contracts/ethereum-1/0xb22764f98dd05c789929716d677382df22c05cb6/) | ⚠️ Unaudited |
| TokenPoolFactory | registry | ethereum | n/a | [`0x17d8a4...28876e`](./contracts/ethereum-1/0x17d8a409fe2cef2d3808bcb61f14abeffc28876e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x021078...703679` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03af67...362daf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f2bfa...c83127` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x181314...4cd838` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40f20d...62de26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47b3c4...e2e116` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b440d...505b67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa70136...c96d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb006a3...5d33cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc14e40...e3e359` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4c956...740bf0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb2fff...7085ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5862a...521a7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe59b5b...a8e5a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe93cfa...3824cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe94b16...48c595` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9e353...7fbb3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed0add...0e1fbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1e3d7...1f2824` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9301b...a4c8e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa9061...76c1a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe0b8e...3938fe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) | unknown | Audit | 2025-11 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 270 | n/a |
| [drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 270 | n/a |
| [drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view](https://drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 270 | n/a |
| [drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view](https://drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view?usp=sharing) | unknown | Audit | 2025-10 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 270 | n/a |
| [drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view](https://drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 270 | n/a |
| [drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view](https://drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 270 | n/a |
| [www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760](https://www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760?source=copy_link) | Code4rena | Contest | 2025-04 | aging | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 270 | n/a |
| [240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf) | Thesis Defense | Audit | 2024-04 | stale | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 270 | n/a |
| [Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf](https://docs.roninchain.com/assets/files/Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf) | Code4rena | Contest | 2022 | stale | Direct | n/a | 0 | n/a |
| [Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf](https://docs.roninchain.com/assets/files/Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Beosin-Audit-Ronin-Bridge-August-24-cce7cef08749809d6353fe1443711e99.pdf](https://docs.roninchain.com/assets/files/Beosin-Audit-Ronin-Bridge-August-24-cce7cef08749809d6353fe1443711e99.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Verichains-Audit-Ronin-Bridge-August-24-cfabc8c3321442e4a84b25c22a08d20b.pdf](https://docs.roninchain.com/assets/files/Verichains-Audit-Ronin-Bridge-August-24-cfabc8c3321442e4a84b25c22a08d20b.pdf) | yAudit | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [CertiK-Audit-for-Ronin-DPoS-Contracts-6f67eca01db5b8756cd0a8aee93e8aa1.pdf](https://docs.roninchain.com/assets/files/CertiK-Audit-for-Ronin-DPoS-Contracts-6f67eca01db5b8756cd0a8aee93e8aa1.pdf) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=2160

Zero-match audit list:

- [20989] Verichains-Audit-Ronin-Bridge-v1.1-8d4913ed1f3197a108f80de1de4c4407.pdf
- [20990] Ronin-Bridge_202309081700-ee1bc04da378360c2ebeff337d8101e2.pdf
- [20991] Beosin-Audit-Ronin-Bridge-August-24-cce7cef08749809d6353fe1443711e99.pdf
- [20992] Verichains-Audit-Ronin-Bridge-August-24-cfabc8c3321442e4a84b25c22a08d20b.pdf
- [20993] CertiK-Audit-for-Ronin-DPoS-Contracts-6f67eca01db5b8756cd0a8aee93e8aa1.pdf

Fork inheritance lineage and inherited audits are included when available.
