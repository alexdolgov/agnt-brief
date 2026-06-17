# Agentic Audit Brief: Stout

⚠️ Lifecycle status: DECLINING - TVL dropped 10.7% over 90 days

## Project Overview

- Project: Stout (`stout`)
- Website: [https://stout.fi/](https://stout.fi/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:49.863Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: sonic
- Contract surface: 32 unique implementations (40 raw deployments)
- DeFi Llama TVL: $2,083,643.75
- On-chain TVL (included contracts): $12,613.58
- TVL by chain: Sonic $12,613.58

## Project Description

Stout is a Sonic-native collateralized debt position (CDP) and borrowing protocol offering low, quasi-fixed interest loans. Its ecosystem includes STTX/veSTTX-related collateral or staking, DUSX/staked DUSX, vault, lender, and PSM components.

### Architecture

The Stout family uses proxy contracts (WOSonicProxy, WrappedAnsProxy) to manage upgradeable logic for WOSonic and wanS tokens. These tokens interact with vaults and drippers to distribute rewards and manage collateral within the CDP system.

## Contract Surface Quality

- Indexed contracts: 215; live-surface contracts included: 40 (40 live, 0 unknown).
- Excluded by liveness: 169 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 2/8 live.
- Detected codebases: none
- Unverified dependencies: 2/117.

## Audit Coverage Summary

- Verified implementations audited: 0/18 (0.0%)
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 32
- Raw deployments: 40
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $12,613.58
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $12,613.58 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OSVault | core_logic | sonic | unit-30418 | [`0xa3c0ec...180186`](./contracts/sonic-146/0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186/) | ⚠️ Unaudited |
| StoutVault | core_logic | sonic | n/a | [`0x88d6d8...f7cabf`](./contracts/sonic-146/0x88d6d8547bcbd5366538cedccf424776f3f7cabf/) | ⚠️ Unaudited |
| DUSX | unknown | sonic | n/a | [`0xe30e73...76f854`](./contracts/sonic-146/0xe30e73cc52ef50a4e4a8b1a3dd0b002b2276f854/) | ⚠️ Unaudited |
| EGGS | unknown | sonic | n/a | [`0xf26ff7...f019bc`](./contracts/sonic-146/0xf26ff70573ddc8a90bd7865af8d7d70b8ff019bc/) | ⚠️ Unaudited |
| Lender | unknown | sonic | n/a | 9 deployments: sonic [`0x40e0fa...ad4c48`](./contracts/sonic-146/0x40e0faa1ff6e73e2955266c1b897fc3545ad4c48/); sonic `0x57c02e...5f2709`; sonic `0x669fd3...1dd198`; sonic `0x711de8...584a62`; sonic `0x94395f...8ed3f2`; sonic `0x9c1b02...0e10e1`; sonic `0xbf7104...45de13`; sonic `0xf49e97...a48b7a`; sonic `0xf55e1e...1c1a91` | ⚠️ Unaudited |
| LenderOwner | unknown | sonic | n/a | [`0xec7fa6...39a6a7`](./contracts/sonic-146/0xec7fa6ae97bcab9236696b24be8d55879f39a6a7/) | ⚠️ Unaudited |
| LiquidationHelper | periphery | sonic | n/a | [`0xef2d85...1aec75`](./contracts/sonic-146/0xef2d85c2b4dee15660cdfb0465c4bb0aac1aec75/) | ⚠️ Unaudited |
| Minter | operational_periphery | sonic | n/a | [`0x5ed2e9...64b28e`](./contracts/sonic-146/0x5ed2e91d451dcb4639d2057613cc542c2264b28e/) | ⚠️ Unaudited |
| MiscHelper | periphery | sonic | n/a | [`0xa1ba6e...52fd0a`](./contracts/sonic-146/0xa1ba6ee9ea1abb234281117a3e8ba0995252fd0a/) | ⚠️ Unaudited |
| OSonic | unknown | sonic | unit-30419 | [`0xb1e256...f8a794`](./contracts/sonic-146/0xb1e25689d55734fd3fffc939c4c3eb52dff8a794/) | ⚠️ Unaudited |
| OSonicVaultCore | core_logic | sonic | n/a | [`0xd66afa...836cf3`](./contracts/sonic-146/0xd66afaa7fe071162d055b3cc703cc1eaed836cf3/) | ⚠️ Unaudited |
| OSonicZapper | adapter | sonic | n/a | [`0xe25a2b...2fab21`](./contracts/sonic-146/0xe25a2b256ffb3ad73678d5e80de8d2f6022fab21/) | ⚠️ Unaudited |
| PoolBoosterFactorySwapxDouble | registry | sonic | n/a | [`0x840081...5a3b49`](./contracts/sonic-146/0x840081c97256d553a8f234d469d797b9535a3b49/) | ⚠️ Unaudited |
| RepayHelper | periphery | sonic | n/a | [`0x652427...dbb121`](./contracts/sonic-146/0x6524278eb519553f1d8c03e08b840de4d2dbb121/) | ⚠️ Unaudited |
| StakedDUSX | token | sonic | n/a | [`0xa0b0cb...d0cc6d`](./contracts/sonic-146/0xa0b0cbffed77e57e946fb1fb875b28edd0d0cc6d/) | ⚠️ Unaudited |
| StoutTimelock | governance | sonic | n/a | [`0xd3a6b1...21744b`](./contracts/sonic-146/0xd3a6b1a9026485bbd39a75a352e968711e21744b/) | ⚠️ Unaudited |
| STTX | unknown | sonic | n/a | [`0x97a10b...957dea`](./contracts/sonic-146/0x97a10beebb25e0ebfa55ca0a7d00e37afe957dea/) | ⚠️ Unaudited |
| VoteEscrowedSTTX | operational_periphery | sonic | n/a | [`0x822131...f1cf9e`](./contracts/sonic-146/0x8221312e9cf90a2b160ecdabf922408a5ef1cf9e/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | sonic | n/a | `0x1a436a...c8f901` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1f1d3b...858a06` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x50a68c...b7739a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5220ff...8ea29e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x55fefa...a44153` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5c9ad1...c49db4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x748ee7...05a4ae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x951881...0858a9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc4c732...baba48` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc9ec89...a1675e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcdcf8e...600846` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd1a9c3...3cee21` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd3001a...8c5121` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf22f28...4b13cc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0xa3c0ec...180186`](./contracts/sonic-146/0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186/) | OSVault | core_logic | $12,613.58 | Verified native implementation with $12,613.58 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x88d6d8...f7cabf`](./contracts/sonic-146/0x88d6d8547bcbd5366538cedccf424776f3f7cabf/) | StoutVault | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe30e73...76f854`](./contracts/sonic-146/0xe30e73cc52ef50a4e4a8b1a3dd0b002b2276f854/) | DUSX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x40e0fa...ad4c48`](./contracts/sonic-146/0x40e0faa1ff6e73e2955266c1b897fc3545ad4c48/) | Lender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xec7fa6...39a6a7`](./contracts/sonic-146/0xec7fa6ae97bcab9236696b24be8d55879f39a6a7/) | LenderOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xef2d85...1aec75`](./contracts/sonic-146/0xef2d85c2b4dee15660cdfb0465c4bb0aac1aec75/) | LiquidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5ed2e9...64b28e`](./contracts/sonic-146/0x5ed2e91d451dcb4639d2057613cc542c2264b28e/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa1ba6e...52fd0a`](./contracts/sonic-146/0xa1ba6ee9ea1abb234281117a3e8ba0995252fd0a/) | MiscHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb1e256...f8a794`](./contracts/sonic-146/0xb1e25689d55734fd3fffc939c4c3eb52dff8a794/) | OSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xd66afa...836cf3`](./contracts/sonic-146/0xd66afaa7fe071162d055b3cc703cc1eaed836cf3/) | OSonicVaultCore | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe25a2b...2fab21`](./contracts/sonic-146/0xe25a2b256ffb3ad73678d5e80de8d2f6022fab21/) | OSonicZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x840081...5a3b49`](./contracts/sonic-146/0x840081c97256d553a8f234d469d797b9535a3b49/) | PoolBoosterFactorySwapxDouble | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x652427...dbb121`](./contracts/sonic-146/0x6524278eb519553f1d8c03e08b840de4d2dbb121/) | RepayHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa0b0cb...d0cc6d`](./contracts/sonic-146/0xa0b0cbffed77e57e946fb1fb875b28edd0d0cc6d/) | StakedDUSX | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xd3a6b1...21744b`](./contracts/sonic-146/0xd3a6b1a9026485bbd39a75a352e968711e21744b/) | StoutTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x97a10b...957dea`](./contracts/sonic-146/0x97a10beebb25e0ebfa55ca0a7d00e37afe957dea/) | STTX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x822131...f1cf9e`](./contracts/sonic-146/0x8221312e9cf90a2b160ecdabf922408a5ef1cf9e/) | VoteEscrowedSTTX | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
