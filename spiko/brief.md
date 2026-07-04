# Agentic Audit Brief: Spiko

## Project Overview

- Project: Spiko (`spiko`)
- Website: [https://www.spiko.io/](https://www.spiko.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.499Z
- Pipeline run: v2-pipeline-2026-06-30-2b719a-c3c3
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 161 unique implementations (279 raw deployments)
- DeFi Llama TVL: $1,099,799,782.47
- On-chain TVL (included contracts): $360,997,687.28
- TVL by chain: Polygon $166,349,603.73 | Ethereum $127,059,453.64 | Base $39,518,421.14 | Arbitrum $28,070,208.77

## Project Description

RWA. Structurally: 8 project-authored contract(s) across 4 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 285; live-surface contracts included: 273 (151 live, 122 unknown).
- Excluded by liveness: 12 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/56 (10.7%)
- Deployed-live implementations: 57 of 161 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/58
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 103
- Unique implementations: 161
- Raw deployments: 279
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $276,628,306.28
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 10.7% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 6 | 10.3% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | polygon | n/a | [`0x272ea7...58c8a2`](./contracts/polygon-137/0x272ea767712cc4839f4a27ee35eb73116158c8a2/) | ✅ Audited |
| Token | token | polygon | n/a | [`0x6f64f4...0b3dc5`](./contracts/polygon-137/0x6f64f47f95cf656f21b40e14798f6b49f80b3dc5/) | ✅ Audited |
| Token | token | polygon | n/a | [`0x4fe515...4fe774`](./contracts/polygon-137/0x4fe515c67eeeadb3282780325f09bb7c244fe774/) | ✅ Audited |
| Oracle | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x29503f...588a4e`](./contracts/arbitrum-42161/0x29503f31b73f0734455942eb888e13aca1588a4e/); arbitrum `0x4c3ba0...30bc87` | ✅ Audited |
| Token | token | ethereum | n/a | [`0xa2850a...355893`](./contracts/ethereum-1/0xa2850a72abe63d0c7258910564ed56fcfd355893/) | ✅ Audited |
| Token | token | polygon | n/a | [`0x9de2b2...18f089`](./contracts/polygon-137/0x9de2b2dcdcf43540e47143f28484b6d15118f089/) | ✅ Audited |

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | polygon | n/a | 8 deployments: polygon [`0x15ea0e...b95f74`](./contracts/polygon-137/0x15ea0ec460a0e6847ec0aa8d50a84b3a51b95f74/); polygon `0x75cb1b...77b05e`; polygon `0x7a16df...bb93db`; polygon `0x903d59...d19474`; polygon `0x970e2a...edfe3d`; polygon `0x99f70a...a5c6da`; polygon `0xa0769f...17fc80`; polygon `0xe48802...60e750` | ⚠️ Unaudited |
| Token | token | ethereum | n/a | 8 deployments: ethereum [`0x0183ac...7df7e0`](./contracts/ethereum-1/0x0183ace58bc8b8f1f84cc8b9ed1210e1c87df7e0/); ethereum `0x15ea0e...b95f74`; ethereum `0x3868d4...2e11cc`; ethereum `0x4f33ac...4c8d59`; ethereum `0x8513fc...112731`; ethereum `0xa0769f...17fc80`; ethereum `0xe48802...60e750`; ethereum `0xf695df...17734e` | ⚠️ Unaudited |
| Token | token | ethereum | n/a | 2 deployments: ethereum [`0xbf5fb9...4351be`](./contracts/ethereum-1/0xbf5fb9284c9cf2798d5f18a9702af620cd4351be/); ethereum `0xcbade7...036992` | ⚠️ Unaudited |
| Token | token | arbitrum | n/a | 2 deployments: arbitrum [`0x021289...8303f5`](./contracts/arbitrum-42161/0x021289588cd81dc1ac87ea91e91607eef68303f5/); arbitrum `0xa0769f...17fc80` | ⚠️ Unaudited |
| Token | token | base | n/a | 8 deployments: base [`0x0e389c...c03265`](./contracts/base-8453/0x0e389c83bc1d16d86412476f6103027555c03265/); base `0x15ea0e...b95f74`; base `0x4f33ac...4c8d59`; base `0xa0769f...17fc80`; base `0xa260d7...3be764`; base `0xa8de1f...079068`; base `0xe48802...60e750`; base `0xf695df...17734e` | ⚠️ Unaudited |
| Token | token | base | n/a | 2 deployments: base [`0xc32eca...8b5dda`](./contracts/base-8453/0xc32eca88b487365f9a6dff8346f7ef48048b5dda/); base `0xd87984...56ca47` | ⚠️ Unaudited |
| Token | token | ethereum | n/a | 2 deployments: ethereum [`0x0990b1...ddc8b0`](./contracts/ethereum-1/0x0990b149e915cb08e2143a5c6f669c907eddc8b0/); ethereum `0x13ae01...5aee71` | ⚠️ Unaudited |
| Token | token | base | n/a | 2 deployments: base [`0x0bb754...65c059`](./contracts/base-8453/0x0bb754d8940e283d9ff6855ab5dafbc14165c059/); base `0xd4324f...cefeb4` | ⚠️ Unaudited |
| Token | token | base | n/a | 2 deployments: base [`0x1e5932...d70708`](./contracts/base-8453/0x1e593293a0fd8b26104a6ce6a783a59cf6d70708/); base `0x2f6c0e...fe0ec3` | ⚠️ Unaudited |
| Token | token | ethereum | n/a | 2 deployments: ethereum [`0x60fcb8...18bff1`](./contracts/ethereum-1/0x60fcb8511db2a7b823cd0f3c6b08da456e18bff1/); ethereum `0xc27398...fb6cc0` | ⚠️ Unaudited |
| ATM | unknown | ethereum | n/a | [`0x75cb1b...77b05e`](./contracts/ethereum-1/0x75cb1bd539ee2cb22031603a7b437f1f7077b05e/) | ⚠️ Unaudited |
| ATM3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8226e9...bfd828`](./contracts/ethereum-1/0x8226e968efd24d9baf156eca15179d1cc1bfd828/); ethereum `0xf10890...bb2a93` | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | core_logic | base | n/a | 5 deployments: base [`0x02e871...03b88c`](./contracts/base-8453/0x02e87189512d1bdc3ca7795cab68a8311703b88c/); base `0x369036...05b8dc`; base `0x80e873...f2111b`; base `0xa1fdd4...c9424e`; base `0xa42baa...288767` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x192c8f...26861d`](./contracts/ethereum-1/0x192c8fdb3ab14d6a769f9bfd91e8823c6a26861d/); ethereum `0x7d6896...6ad192` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x480725...25403e`](./contracts/ethereum-1/0x480725c7e83ce6a0e0930bcc996977578925403e/); ethereum `0xafe719...41b2bb` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x78cc48...1d5e4a`](./contracts/ethereum-1/0x78cc4829c6c0238e5816c49519a7fd5f181d5e4a/); ethereum `0xb3b026...c1c4f5` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | n/a | 2 deployments: ethereum [`0x98b2c8...3fbfb2`](./contracts/ethereum-1/0x98b2c8c398350d9abadb772e4c3b2aadac3fbfb2/); ethereum `0xb20464...19cda3` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | n/a | 2 deployments: ethereum [`0xa6e60f...81ffac`](./contracts/ethereum-1/0xa6e60f540e76c6dd492be26829d0b8f0a981ffac/); ethereum `0xe2757d...751b82` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | polygon | n/a | 2 deployments: polygon [`0x033619...b90fc8`](./contracts/polygon-137/0x0336198d3c1ff92d6571f52765c8cac301b90fc8/); polygon `0x2a6d91...eefce4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | 2 deployments: polygon [`0x05d142...5ae7ac`](./contracts/polygon-137/0x05d142fc45a0a5c0e5ec84923d3bb2b7b15ae7ac/); polygon `0x17e2b2...7c447c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | 2 deployments: polygon [`0x4640a8...b23f39`](./contracts/polygon-137/0x4640a8bf08d5917dcaef42edb14d3e06e1b23f39/); polygon `0xa390a9...a6ddcd` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | polygon | n/a | 2 deployments: polygon [`0x4c3ba0...30bc87`](./contracts/polygon-137/0x4c3ba0eae5ab65c9510769a2877cf4d93330bc87/); polygon `0x8226e9...bfd828` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | polygon | n/a | 2 deployments: polygon [`0x86a3c5...53b9cb`](./contracts/polygon-137/0x86a3c5e18cf42a59d137f8b37105354e7f53b9cb/); polygon `0xaa6b63...5dc82d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | 2 deployments: polygon [`0x930f7f...9eaf55`](./contracts/polygon-137/0x930f7f3a9a235d27ae082add5b7d4635e59eaf55/); polygon `0xb114e0...0c393b` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | 2 deployments: base [`0x588252...10ed5e`](./contracts/base-8453/0x5882526ca6980491a7ebd878d822ffab5510ed5e/); base `0xd9a531...c86ff4` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | 2 deployments: base [`0x86a3c5...53b9cb`](./contracts/base-8453/0x86a3c5e18cf42a59d137f8b37105354e7f53b9cb/); base `0xaa6b63...5dc82d` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | n/a | 22 deployments: arbitrum [`0x0c7093...66479c`](./contracts/arbitrum-42161/0x0c709396739b9cfb72bcea6ac691ce0ddf66479c/); arbitrum `0x0e389c...c03265`; arbitrum `0x141263...1d7b76`; arbitrum `0x15ea0e...b95f74`; arbitrum `0x3868d4...2e11cc`; arbitrum `0x4640a8...b23f39`; arbitrum `0x4f33ac...4c8d59`; arbitrum `0x78f59a...501579`; arbitrum `0x7a16df...bb93db`; arbitrum `0x8226e9...bfd828`; arbitrum `0x8d18e2...66993e`; arbitrum `0x903d59...d19474`; arbitrum `0x970e2a...edfe3d`; arbitrum `0x97e796...53ac6e`; arbitrum `0x99f70a...a5c6da`; arbitrum `0xa260d7...3be764`; arbitrum `0xa8de1f...079068`; arbitrum `0xa925c2...2d829a`; arbitrum `0xb114e0...0c393b`; arbitrum `0xbe0233...342635`; arbitrum `0xcbeb19...216ce7`; arbitrum `0xe48802...60e750` | ⚠️ Unaudited |
| ERC2771Forwarder | unknown | ethereum | n/a | 3 deployments: ethereum [`0x42db5a...d923c3`](./contracts/ethereum-1/0x42db5a5af4d82e8ed42405dfa37278c360d923c3/); polygon [`0x42db5a...d923c3`](./contracts/polygon-137/0x42db5a5af4d82e8ed42405dfa37278c360d923c3/); base [`0x42db5a...d923c3`](./contracts/base-8453/0x42db5a5af4d82e8ed42405dfa37278c360d923c3/) | ⚠️ Unaudited |
| Minter | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x5ed5a7...331366`](./contracts/ethereum-1/0x5ed5a75eeed1934ea060186e35187eaa73331366/); ethereum `0xd4f4fb...0fe043` | ⚠️ Unaudited |
| Minter | operational_periphery | polygon | n/a | 2 deployments: polygon [`0x465bc3...55f37a`](./contracts/polygon-137/0x465bc3e57a76905699df6772ee2571058a55f37a/); polygon `0xaead1f...9084c2` | ⚠️ Unaudited |
| Minter | operational_periphery | base | n/a | 2 deployments: base [`0x465bc3...55f37a`](./contracts/base-8453/0x465bc3e57a76905699df6772ee2571058a55f37a/); base `0xaead1f...9084c2` | ⚠️ Unaudited |
| Minter | operational_periphery | arbitrum | n/a | [`0xaead1f...9084c2`](./contracts/arbitrum-42161/0xaead1f7c9b189816cb845363d142cfcf339084c2/) | ⚠️ Unaudited |
| MultiATM | unknown | ethereum | n/a | [`0xbd6ad9...55f605`](./contracts/ethereum-1/0xbd6ad96f51e8d732811587468d0e2f9efa55f605/) | ⚠️ Unaudited |
| MultiATMLinearInterpolated | unknown | ethereum | n/a | [`0xa40d89...2a1efa`](./contracts/ethereum-1/0xa40d89856520c246b503b814a06ebbfb3f2a1efa/) | ⚠️ Unaudited |
| Oracle | operational_periphery | ethereum | n/a | 8 deployments: ethereum [`0x021289...8303f5`](./contracts/ethereum-1/0x021289588cd81dc1ac87ea91e91607eef68303f5/); ethereum `0x0e389c...c03265`; ethereum `0x29503f...588a4e`; ethereum `0x77926a...f43218`; ethereum `0x903d59...d19474`; ethereum `0x99f70a...a5c6da`; ethereum `0xa8de1f...079068`; ethereum `0xcbeb19...216ce7` | ⚠️ Unaudited |
| Oracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x08698f...8d66de`](./contracts/ethereum-1/0x08698f783e394432f974840502b7b51ce78d66de/); ethereum `0x7a35c0...094291` | ⚠️ Unaudited |
| Oracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x3eedd9...2263e6`](./contracts/ethereum-1/0x3eedd93f46caba8ae44a6f0c706bc8d4012263e6/); ethereum `0xbb53aa...8740d3` | ⚠️ Unaudited |
| Oracle | operational_periphery | polygon | n/a | 8 deployments: polygon [`0x0183ac...7df7e0`](./contracts/polygon-137/0x0183ace58bc8b8f1f84cc8b9ed1210e1c87df7e0/); polygon `0x021289...8303f5`; polygon `0x29503f...588a4e`; polygon `0x3868d4...2e11cc`; polygon `0x4f33ac...4c8d59`; polygon `0xcbeb19...216ce7`; polygon `0xf10890...bb2a93`; polygon `0xf695df...17734e` | ⚠️ Unaudited |
| Oracle | operational_periphery | base | n/a | 8 deployments: base [`0x021289...8303f5`](./contracts/base-8453/0x021289588cd81dc1ac87ea91e91607eef68303f5/); base `0x27bb2b...32f492`; base `0x29503f...588a4e`; base `0x7a16df...bb93db`; base `0x903d59...d19474`; base `0x970e2a...edfe3d`; base `0x99f70a...a5c6da`; base `0xcbeb19...216ce7` | ⚠️ Unaudited |
| PermissionManager | governance | ethereum | n/a | 2 deployments: ethereum [`0x344278...608472`](./contracts/ethereum-1/0x344278aff344d6fb960705dc18a4912221608472/); ethereum `0xd3f5f1...5b658e` | ⚠️ Unaudited |
| PermissionManager | governance | polygon | n/a | 2 deployments: polygon [`0x344278...608472`](./contracts/polygon-137/0x344278aff344d6fb960705dc18a4912221608472/); polygon `0xd3f5f1...5b658e` | ⚠️ Unaudited |
| PermissionManager | governance | base | n/a | 2 deployments: base [`0x344278...608472`](./contracts/base-8453/0x344278aff344d6fb960705dc18a4912221608472/); base `0xd3f5f1...5b658e` | ⚠️ Unaudited |
| Redemption | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa925c2...2d829a`](./contracts/ethereum-1/0xa925c217e4c1c82ee721ebd496d3863d5c2d829a/); ethereum `0xda5599...6ebfe8` | ⚠️ Unaudited |
| Redemption | unknown | polygon | n/a | 2 deployments: polygon [`0xa925c2...2d829a`](./contracts/polygon-137/0xa925c217e4c1c82ee721ebd496d3863d5c2d829a/); polygon `0xda5599...6ebfe8` | ⚠️ Unaudited |
| Redemption | unknown | base | n/a | 2 deployments: base [`0xa925c2...2d829a`](./contracts/base-8453/0xa925c217e4c1c82ee721ebd496d3863d5c2d829a/); base `0xda5599...6ebfe8` | ⚠️ Unaudited |
| Redemption | unknown | arbitrum | n/a | [`0xda5599...6ebfe8`](./contracts/arbitrum-42161/0xda5599f04e9b437c8394b0c2bc68b502a66ebfe8/) | ⚠️ Unaudited |
| SpikoDefensiveSenderReceiver | unknown | base | n/a | 2 deployments: base [`0x3d01f2...115f4d`](./contracts/base-8453/0x3d01f224e9cac1bfc2563a8da4162d044e115f4d/); base `0x8d18e2...66993e` | ⚠️ Unaudited |
| SpikoDefensiveSenderReceiver | unknown | base | n/a | 2 deployments: base [`0x64a3b7...aae947`](./contracts/base-8453/0x64a3b7922a7f005d7c97547f4d8b40275daae947/); base `0x91e2ed...31e5a6` | ⚠️ Unaudited |
| SpikoDefensiveSenderReceiver | unknown | base | n/a | 2 deployments: base [`0x77926a...f43218`](./contracts/base-8453/0x77926af72cadbc6d6a308c6a6b6aaa5fbdf43218/); base `0x8513fc...112731` | ⚠️ Unaudited |
| SpikoDefensiveSenderReceiver | unknown | arbitrum | n/a | 12 deployments: base `0x1b952b...689b1e`; base `0x4640a8...b23f39`; base `0x4c3ba0...30bc87`; base `0x8226e9...bfd828`; base `0xa390a9...a6ddcd`; base `0xe7bbab...d11d2a`; base `0xf10890...bb2a93`; arbitrum [`0x17e2b2...7c447c`](./contracts/arbitrum-42161/0x17e2b2eed8e07328302a7b4135ed1b2dc57c447c/); arbitrum `0x1b952b...689b1e`; arbitrum `0x77926a...f43218`; arbitrum `0x8513fc...112731`; arbitrum `0xa390a9...a6ddcd` | ⚠️ Unaudited |
| Token | token | ethereum | n/a | 2 deployments: ethereum [`0x18b5c1...4313fb`](./contracts/ethereum-1/0x18b5c15e5196a38a162b1787875295b76e4313fb/); ethereum `0x869dbf...d3e4e1` | ⚠️ Unaudited |
| Token | token | base | n/a | 2 deployments: base [`0xd9aa23...87f36b`](./contracts/base-8453/0xd9aa2300e126869182dfb6ecf54984e4c687f36b/); base `0xdcf337...687ea2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (103)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x02e871...03b88c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x033619...b90fc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05d142...5ae7ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17e2b2...7c447c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b952b...689b1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a6d91...eefce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x369036...05b8dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4640a8...b23f39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x465bc3...55f37a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fbfc2...84323e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57fa61...d7783d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64e31c...eb5fda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7430d9...00bbb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77d058...3d8b59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77d31b...69bc30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78f59a...501579` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ba5d8...b91423` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80e873...f2111b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d18e2...66993e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x930f7f...9eaf55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99f14c...f34496` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1fdd4...c9424e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa390a9...a6ddcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa42baa...288767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9c741...49a38a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaead1f...9084c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb114e0...0c393b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1b952b...689b1e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x21907b...fcb9c3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2fa1a7...4ab1b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x32416c...daf21a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x369036...05b8dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d01f2...115f4d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x57fa61...d7783d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x64a3b7...aae947` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7430d9...00bbb7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x77926a...f43218` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78cc48...1d5e4a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78f59a...501579` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ba5d8...b91423` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7fcd00...133347` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8513fc...112731` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d18e2...66993e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x91e2ed...31e5a6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9949ec...801341` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa1fdd4...c9424e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa42baa...288767` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb3b026...c1c4f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbb20d3...ecfa4c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc9d26a...a924fb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe7bbab...d11d2a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf9fd77...b27579` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1cd239...9a3896` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21907b...fcb9c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2fa1a7...4ab1b1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x480725...25403e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ff96d...b5583c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ca17d...c5fab2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x64e31c...eb5fda` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7f9f63...c46263` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7fcd00...133347` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x930f7f...9eaf55` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x98568f...75e7dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9949ec...801341` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d104a...5ee23e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2d05e...f5de0d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa71e40...1076ed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xafe719...41b2bb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb3b026...c1c4f5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb20d3...ecfa4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc44f58...6eec27` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd88110...d8e8b9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdb7004...7ab428` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb2e0f...816361` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf9fd77...b27579` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xffb84f...04ee79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x033619...b90fc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21907b...fcb9c3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f284a...d187ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2fa1a7...4ab1b1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x308f38...4e2370` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x32416c...daf21a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d01f2...115f4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x57fa61...d7783d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x64a3b7...aae947` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7430d9...00bbb7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78cc48...1d5e4a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ba5d8...b91423` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7fcd00...133347` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x86a3c5...53b9cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e8937...bb6c2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x91e2ed...31e5a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x930f7f...9eaf55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9949ec...801341` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa6b63...5dc82d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb3b026...c1c4f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb20d3...ecfa4c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc44f58...6eec27` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc9d26a...a924fb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3f5f1...5b658e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdb7004...7ab428` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7bbab...d11d2a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9fd77...b27579` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2023-10-spiko-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-10-spiko-securityreview.pdf) | Trail of Bits | Audit | 2023-10 | stale | Direct | contract_name | 6 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x15ea0e...b95f74`](./contracts/polygon-137/0x15ea0ec460a0e6847ec0aa8d50a84b3a51b95f74/) | Token | token | $81,980,222.73 | Verified native implementation with $81,980,222.73 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0183ac...7df7e0`](./contracts/ethereum-1/0x0183ace58bc8b8f1f84cc8b9ed1210e1c87df7e0/) | Token | token | $78,500,493.58 | Verified native implementation with $78,500,493.58 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf5fb9...4351be`](./contracts/ethereum-1/0xbf5fb9284c9cf2798d5f18a9702af620cd4351be/) | Token | token | $46,021,782.06 | Verified native implementation with $46,021,782.06 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x021289...8303f5`](./contracts/arbitrum-42161/0x021289588cd81dc1ac87ea91e91607eef68303f5/) | Token | token | $28,070,208.77 | Verified native implementation with $28,070,208.77 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e389c...c03265`](./contracts/base-8453/0x0e389c83bc1d16d86412476f6103027555c03265/) | Token | token | $23,748,398.07 | Verified native implementation with $23,748,398.07 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc32eca...8b5dda`](./contracts/base-8453/0xc32eca88b487365f9a6dff8346f7ef48048b5dda/) | Token | token | $14,653,324.46 | Verified native implementation with $14,653,324.46 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0990b1...ddc8b0`](./contracts/ethereum-1/0x0990b149e915cb08e2143a5c6f669c907eddc8b0/) | Token | token | $2,535,987.12 | Verified native implementation with $2,535,987.12 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0bb754...65c059`](./contracts/base-8453/0x0bb754d8940e283d9ff6855ab5dafbc14165c059/) | Token | token | $1,000,062.97 | Verified native implementation with $1,000,062.97 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1e5932...d70708`](./contracts/base-8453/0x1e593293a0fd8b26104a6ce6a783a59cf6d70708/) | Token | token | $116,635.64 | Verified native implementation with $116,635.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60fcb8...18bff1`](./contracts/ethereum-1/0x60fcb8511db2a7b823cd0f3c6b08da456e18bff1/) | Token | token | $1,190.88 | Verified native implementation with $1,190.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75cb1b...77b05e`](./contracts/ethereum-1/0x75cb1bd539ee2cb22031603a7b437f1f7077b05e/) | ATM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8226e9...bfd828`](./contracts/ethereum-1/0x8226e968efd24d9baf156eca15179d1cc1bfd828/) | ATM3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02e871...03b88c`](./contracts/base-8453/0x02e87189512d1bdc3ca7795cab68a8311703b88c/) | BurnWithFromMintTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42db5a...d923c3`](./contracts/ethereum-1/0x42db5a5af4d82e8ed42405dfa37278c360d923c3/) | ERC2771Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ed5a7...331366`](./contracts/ethereum-1/0x5ed5a75eeed1934ea060186e35187eaa73331366/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x465bc3...55f37a`](./contracts/polygon-137/0x465bc3e57a76905699df6772ee2571058a55f37a/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x465bc3...55f37a`](./contracts/base-8453/0x465bc3e57a76905699df6772ee2571058a55f37a/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaead1f...9084c2`](./contracts/arbitrum-42161/0xaead1f7c9b189816cb845363d142cfcf339084c2/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd6ad9...55f605`](./contracts/ethereum-1/0xbd6ad96f51e8d732811587468d0e2f9efa55f605/) | MultiATM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa40d89...2a1efa`](./contracts/ethereum-1/0xa40d89856520c246b503b814a06ebbfb3f2a1efa/) | MultiATMLinearInterpolated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x021289...8303f5`](./contracts/ethereum-1/0x021289588cd81dc1ac87ea91e91607eef68303f5/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08698f...8d66de`](./contracts/ethereum-1/0x08698f783e394432f974840502b7b51ce78d66de/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3eedd9...2263e6`](./contracts/ethereum-1/0x3eedd93f46caba8ae44a6f0c706bc8d4012263e6/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0183ac...7df7e0`](./contracts/polygon-137/0x0183ace58bc8b8f1f84cc8b9ed1210e1c87df7e0/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x021289...8303f5`](./contracts/base-8453/0x021289588cd81dc1ac87ea91e91607eef68303f5/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x344278...608472`](./contracts/ethereum-1/0x344278aff344d6fb960705dc18a4912221608472/) | PermissionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x344278...608472`](./contracts/polygon-137/0x344278aff344d6fb960705dc18a4912221608472/) | PermissionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x344278...608472`](./contracts/base-8453/0x344278aff344d6fb960705dc18a4912221608472/) | PermissionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa925c2...2d829a`](./contracts/ethereum-1/0xa925c217e4c1c82ee721ebd496d3863d5c2d829a/) | Redemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa925c2...2d829a`](./contracts/polygon-137/0xa925c217e4c1c82ee721ebd496d3863d5c2d829a/) | Redemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa925c2...2d829a`](./contracts/base-8453/0xa925c217e4c1c82ee721ebd496d3863d5c2d829a/) | Redemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xda5599...6ebfe8`](./contracts/arbitrum-42161/0xda5599f04e9b437c8394b0c2bc68b502a66ebfe8/) | Redemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3d01f2...115f4d`](./contracts/base-8453/0x3d01f224e9cac1bfc2563a8da4162d044e115f4d/) | SpikoDefensiveSenderReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x64a3b7...aae947`](./contracts/base-8453/0x64a3b7922a7f005d7c97547f4d8b40275daae947/) | SpikoDefensiveSenderReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x77926a...f43218`](./contracts/base-8453/0x77926af72cadbc6d6a308c6a6b6aaa5fbdf43218/) | SpikoDefensiveSenderReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x17e2b2...7c447c`](./contracts/arbitrum-42161/0x17e2b2eed8e07328302a7b4135ed1b2dc57c447c/) | SpikoDefensiveSenderReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18b5c1...4313fb`](./contracts/ethereum-1/0x18b5c15e5196a38a162b1787875295b76e4313fb/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd9aa23...87f36b`](./contracts/base-8453/0xd9aa2300e126869182dfb6ecf54984e4c687f36b/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 109 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Fork inheritance lineage and inherited audits are included when available.
