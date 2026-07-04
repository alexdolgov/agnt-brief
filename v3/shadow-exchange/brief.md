# Agentic Audit Brief: Shadow Exchange

## Project Overview

- Project: Shadow Exchange (`shadow-exchange`)
- Website: [https://www.shadow.so](https://www.shadow.so)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:53.585Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: sonic
- Contract surface: 66 unique implementations (144 raw deployments)
- DeFi Llama TVL: $3,440,156.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 81 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 10 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 20 common project-authored base contract(s) (peripheryimmutablestate, poolinitializer, liquiditymanagement). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 434; live-surface contracts included: 144 (111 live, 33 unknown).
- Excluded by liveness: 290 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/33 (36.4%)
- Deployed-live implementations: 33 of 66 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 12/33
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 66
- Raw deployments: 144
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 10 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 36.4% (Code4rena, ConsenSys Diligence, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 9 | 27.3% | 2024-10 |
| Spearbit | Tier 1 | 5 | 15.2% | 2025-10 |
| Consensys Diligence | Tier 1 | 4 | 12.1% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeCollector | unknown | sonic | n/a | 6 deployments: sonic [`0x6a4400...29c9c5`](./contracts/sonic-146/0x6a4400157291d1ff339188eca407011c7429c9c5/); sonic `0x949e7b...046c0e`; sonic `0xa3c90f...bdd8f7`; sonic `0xbf9ab1...2fa017`; sonic `0xcc0365...f8d27f`; sonic `0xf5228b...cb38a0` | ✅ Audited |
| GaugeV3 | unknown | sonic | n/a | 2 deployments: sonic [`0x3ff637...fbee12`](./contracts/sonic-146/0x3ff6378aee1b1c580bd345f74d7c2cdcd9fbee12/); sonic `0x553ad1...1bdb85` | ✅ Audited |
| GaugeV3 | unknown | sonic | n/a | [`0x452f37...b6968c`](./contracts/sonic-146/0x452f378db86f6ef98731cdeb8344d8c171b6968c/) | ✅ Audited |
| NonfungiblePositionManager | unknown | sonic | n/a | 13 deployments: sonic [`0x002ee6...b00985`](./contracts/sonic-146/0x002ee63dfec7bc83a2f5c0049929c04e60b00985/); sonic `0x10acce...0bb6d9`; sonic `0x20547b...5e925a`; sonic `0x3b3699...cee8ea`; sonic `0x5f477c...76f847`; sonic `0x8850a3...ad7176`; sonic `0xa3f3b8...4a5866`; sonic `0xa829e3...c87713`; sonic `0xb3154c...89f5df`; sonic `0xbca6a2...3930d7`; sonic `0xd3fdf8...589f2f`; sonic `0xd7e648...91ae8e`; sonic `0xf9f98b...543874` | ✅ Audited |
| NonfungiblePositionManager | governance | sonic | n/a | [`0x12e66c...0f4406`](./contracts/sonic-146/0x12e66c8f215ddd5d48d150c8f46ad0c6fb0f4406/) | ✅ Audited |
| NonfungiblePositionManager | governance | sonic | n/a | [`0xa57fa3...f1542e`](./contracts/sonic-146/0xa57fa38b3fd45922394e9e1077748a2383f1542e/) | ✅ Audited |
| Position | unknown | sonic | n/a | [`0x324963...649970`](./contracts/sonic-146/0x324963c267c354c7660ce8ca3f5f167e05649970/) | ✅ Audited |
| RamsesV3Factory | unknown | sonic | n/a | 12 deployments: sonic [`0x209345...6c7f75`](./contracts/sonic-146/0x209345d63c4629b46816d85c9e53f076036c7f75/); sonic `0x20b770...5d1f5a`; sonic `0x6a216e...fd09e8`; sonic `0x73e326...6297e1`; sonic `0x836821...90aa5b`; sonic `0x9d2dfb...8aeae5`; sonic `0xb24538...886e87`; sonic `0xbc2c66...7e8f7e`; sonic `0xcd2d06...8de6d7`; sonic `0xed147b...bb9bef`; sonic `0xed55fa...fdb2dc`; sonic `0xff1a32...7d6356` | ✅ Audited |
| RamsesV3Pool | core_logic | sonic | n/a | 2 deployments: sonic [`0x092c0b...c8799b`](./contracts/sonic-146/0x092c0b146201bb16d9a37cfc0a7310b05fc8799b/); sonic `0x9053fe...3ee8e7` | ✅ Audited |
| RamsesV3PoolDeployer | unknown | sonic | n/a | 12 deployments: sonic [`0x04cad8...131ab9`](./contracts/sonic-146/0x04cad83faa77098a1726fe7702d4b9935e131ab9/); sonic `0x2207b7...0854d7`; sonic `0x310e97...a2368c`; sonic `0x32f417...7a2344`; sonic `0x4c0a98...bea3b6`; sonic `0x737e6e...3e47da`; sonic `0x8bbdc1...142d59`; sonic `0x9e0115...efe671`; sonic `0xac8928...067a84`; sonic `0xc1747e...d77156`; sonic `0xe6e461...e63d7d`; sonic `0xf04581...0db8c8` | ✅ Audited |
| VoteModule | unknown | sonic | n/a | 4 deployments: sonic [`0x1bc016...d10f66`](./contracts/sonic-146/0x1bc0166f81bdfba98aa13493916895e169d10f66/); sonic `0x57f518...aca0ef`; sonic `0xdcb5a2...b666b4`; sonic `0xf7a585...13656c` | ✅ Audited |
| Voter | unknown | sonic | n/a | 18 deployments: sonic [`0x005a44...5ed32f`](./contracts/sonic-146/0x005a44fb100ebb756a8a14f439dda3ee465ed32f/); sonic `0x03171a...c644b5`; sonic `0x06d3c0...feca4e`; sonic `0x1172aa...af3513`; sonic `0x199619...6a320f`; sonic `0x1f4e37...4b9335`; sonic `0x27ffc8...f7fdf3`; sonic `0x348d9b...de4d6a`; sonic `0x3af1dd...838f4f`; sonic `0x3cd2ca...28df5d`; sonic `0x6393c8...807eca`; sonic `0x702c17...f53562`; sonic `0x80cde6...a507fb`; sonic `0x8d91c7...6f7777`; sonic `0xa3ce58...0d7d2d`; sonic `0xcbc6ff...17055d`; sonic `0xccfda4...c8fdbf`; sonic `0xdafd30...a5b83c` | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ClGaugeFactory | unknown | sonic | n/a | 5 deployments: sonic [`0x38bff9...243470`](./contracts/sonic-146/0x38bff9205ec1ded237c81110d4d73e814b243470/); sonic `0x9b7e62...2bea1c`; sonic `0x9caf8e...5686e0`; sonic `0xee3168...160116`; sonic `0xf914cc...e8a1a8` | ⚠️ Unaudited |
| DustSwapper | unknown | sonic | n/a | 2 deployments: sonic [`0x1817ec...b84965`](./contracts/sonic-146/0x1817ec37284f7d2104e9c11201d7f4c31cb84965/); sonic `0xa8d15f...60bc9f` | ⚠️ Unaudited |
| EqualizerPerpetualBuyOut | unknown | sonic | n/a | [`0x1d7fdd...46d5b4`](./contracts/sonic-146/0x1d7fdd57840fd2f2692f5d70a36f1b5afe46d5b4/) | ⚠️ Unaudited |
| Gems | unknown | sonic | n/a | [`0x5555b2...ee5555`](./contracts/sonic-146/0x5555b2733602ded58d47b8d3d989e631cbee5555/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | sonic | n/a | 2 deployments: sonic [`0x137f7c...dec218`](./contracts/sonic-146/0x137f7cb38f125ceafea48004cac24f6514dec218/); sonic `0x7fdf76...9f3d22` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | sonic | n/a | [`0xcc83a7...e2cd34`](./contracts/sonic-146/0xcc83a742af837919641b1c9a540c521976e2cd34/) | ⚠️ Unaudited |
| Pair | unknown | sonic | n/a | 2 deployments: sonic [`0x2735e2...238a7d`](./contracts/sonic-146/0x2735e2027d97e944cd7af0d0acbed24188238a7d/); sonic `0x99982a...7e00bb` | ⚠️ Unaudited |
| PairFactory | unknown | sonic | n/a | 8 deployments: sonic [`0x292da3...a69493`](./contracts/sonic-146/0x292da3cfb2dbcfc2cf1f404a95929d909fa69493/); sonic `0x2da25e...6374c8`; sonic `0x522f94...146b52`; sonic `0x60b7ec...03a8b6`; sonic `0x8d0f45...ff5c34`; sonic `0xaccf68...3ee652`; sonic `0xcb3e3c...2be924`; sonic `0xd54aa5...a8010c` | ⚠️ Unaudited |
| PythOracle | operational_periphery | sonic | n/a | [`0xf0367d...3bb4d2`](./contracts/sonic-146/0xf0367d2724e3f62fe151fa30e46b4d83253bb4d2/) | ⚠️ Unaudited |
| Quoter | periphery | sonic | n/a | [`0x3003b4...d79dc7`](./contracts/sonic-146/0x3003b4feaff95e09683feb7fc5d11b330cd79dc7/) | ⚠️ Unaudited |
| QuoterV2 | periphery | sonic | n/a | [`0x219b7a...07535a`](./contracts/sonic-146/0x219b7adebc0935a3ec889a148c6924d51a07535a/) | ⚠️ Unaudited |
| RewardClaimers | unknown | sonic | n/a | [`0x684667...ff4082`](./contracts/sonic-146/0x684667de9025329e1c2d3869b2a7631a91ff4082/) | ⚠️ Unaudited |
| RewardClaimers2 | unknown | sonic | n/a | 3 deployments: sonic [`0x1881fc...ba11d5`](./contracts/sonic-146/0x1881fcfe62782771c4315fd0a6a087ba6bba11d5/); sonic `0x54e6ec...c84b98`; sonic `0xf99693...a8b995` | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | [`0x1d3687...330cdc`](./contracts/sonic-146/0x1d368773735ee1e678950b7a97bca2cafb330cdc/) | ⚠️ Unaudited |
| SafeL2 | unknown | sonic | n/a | 2 deployments: sonic [`0x5be2e8...553432`](./contracts/sonic-146/0x5be2e859d0c2453c9aa062860ca27711ff553432/); sonic `0x600ad8...5b4de8` | ⚠️ Unaudited |
| Shadow | unknown | sonic | n/a | [`0x3333b9...a33333`](./contracts/sonic-146/0x3333b97138d4b086720b5ae8a7844b1345a33333/) | ⚠️ Unaudited |
| SwapRouter | adapter | sonic | n/a | [`0x5543c6...e2d695`](./contracts/sonic-146/0x5543c6176feb9b4b179078205d7c29eea2e2d695/) | ⚠️ Unaudited |
| UniversalRouter | adapter | sonic | n/a | [`0x92643d...04a9c2`](./contracts/sonic-146/0x92643dc4f75c374b689774160cdea09a0704a9c2/) | ⚠️ Unaudited |
| x33 | unknown | sonic | n/a | [`0x333311...333333`](./contracts/sonic-146/0x3333111a391cc08fa51353e9195526a70b333333/) | ⚠️ Unaudited |
| x33Adapter | adapter | sonic | n/a | [`0x9710e1...84548d`](./contracts/sonic-146/0x9710e10a8f6fba8c391606fee18614885684548d/) | ⚠️ Unaudited |
| XShadow | unknown | sonic | n/a | [`0x5050bc...4b2424`](./contracts/sonic-146/0x5050bc082ff4a74fb6b0b04385defddb114b2424/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x016bca...483570` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x035476...96d773` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x06a18e...e099ea` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x16f786...5f2829` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1ee369...9f7afe` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x24ad57...9546b2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x276e9c...ec77dc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x294098...a0a39d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2d619f...fc57a2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x35456f...7c46f9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4b96c9...c9e232` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4ce364...01c4cb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4e70f2...47f62d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x508a83...1e0fbd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x62e93a...088c29` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6369e8...47fa9f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6dc606...92f785` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x83489c...cdfe5c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x895377...128232` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa03dfc...c90b56` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa5cfbb...7574e6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaa4796...816b70` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb0fceb...676085` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb71fb3...b53ed5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xba62b2...5e8ee6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbfacb5...470325` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc1857e...b0155c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc66ca3...b92e67` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc9b0c7...40f160` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcf0d4c...61dd1e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd558d9...0236da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xda4329...d65fad` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xede959...fbfcbd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e](https://cantina.xyz/portfolio/48fc9b98-ded3-43fa-80a2-5aedb3a5a51e) | Spearbit | Audit | 2025-10 | fresh | Direct | contract_name | 5 | n/a |
| [cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c](https://cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c) | Spearbit | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [diligence.security/audits/2024/08/ramses-v3](https://diligence.security/audits/2024/08/ramses-v3) | Consensys Diligence | Audit | 2024-08 | aging | Direct | contract_name | 27 | high |
| [code4rena.com/reports/2024-10-ramses-exchange](https://code4rena.com/reports/2024-10-ramses-exchange) | Code4rena | Contest | 2024-10 | aging | Direct | contract_name | 39 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 66 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=5, extraction_exact=66

Zero-match audit list:

- [2502] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c

Fork inheritance lineage and inherited audits are included when available.
