# Agentic Audit Brief: BSCSwap

## Project Overview

- Project: BSCSwap (`bscswap`)
- Lifecycle: active (Tier 0, 50.6% below peak)
- Generated: 2026-06-14T06:52:35.675Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-9bd7
- Chains: bsc
- Contract surface: 24 unique implementations (103 raw deployments)
- DeFi Llama TVL: $4,576,413.26
- On-chain TVL (included contracts): $20,269.77
- TVL by chain: Bsc $20,269.77

## Project Description

BSCSwap is a BSC decentralized exchange/AMM, apparently based on a Uniswap V2-style model for token swaps and liquidity provision. Its reviewed surface should not be described as a single-core-contract, self-contained DEX only: the broader contract set includes multiple modules and product families such as factory/router-style DEX components, staking or pool contracts including BurnPool and DegenPool, LaunchField/IDO-related contracts, vault/strategy components, and other ancillary deployments. Scope should explicitly distinguish confirmed BSCSwap DEX/AMM contracts from non-DEX modules and any suspected contamination or excluded entries.

### Architecture

The project consists of a single product family with one core contract, indicating a simple, self-contained DEX architecture without shared infrastructure across multiple families.

## Audit Coverage Summary

- Verified implementations audited: 0/16 (0.0%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 24
- Raw deployments: 103
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $20,269.77
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BurnPool | core_logic | bsc | 17 deployments: bsc [`0x01f46a...415896`](./contracts/bsc-56/0x01f46acc8f739d635c9517077641b1b59c415896/); bsc `0x122957...bd046f`; bsc `0x3073ef...2b41b4`; bsc `0x354d80...f9ed39`; bsc `0x3e9e1e...e54393`; bsc `0x563d0e...1b93f6`; bsc `0x589bd7...c4fe2c`; bsc `0x65baa9...cb85a4`; bsc `0x750cd0...a36e13`; bsc `0x7d40f6...307c94`; bsc `0x8fdef9...41b373`; bsc `0x9ba67f...b969e0`; bsc `0x9bad51...e9519a`; bsc `0xa32cf5...25048f`; bsc `0xbeeb41...7e9a12`; bsc `0xd88a59...a99d33`; bsc `0xe8c3ae...e68b8d` | ⚠️ Unaudited |
| LFIVault | core_logic | bsc | 3 deployments: bsc [`0x2fd8ad...56fca8`](./contracts/bsc-56/0x2fd8ad2546db48cc0666d6f1a12aba3ca056fca8/); bsc `0x322b40...569994`; bsc `0x785987...036863` | ⚠️ Unaudited |
| BSCswap | unknown | bsc | [`0xacc234...d82584`](./contracts/bsc-56/0xacc234978a5eb941665fd051ca48765610d82584/) | ⚠️ Unaudited |
| BSCswapFactory | registry | bsc | [`0xce8fd6...d2b8d0`](./contracts/bsc-56/0xce8fd65646f2a2a897755a1188c04ace94d2b8d0/) | ⚠️ Unaudited |
| BSCswapRouter | adapter | bsc | [`0xd95455...21424a`](./contracts/bsc-56/0xd954551853f55deb4ae31407c423e67b1621424a/) | ⚠️ Unaudited |
| BSCswapV2 | unknown | bsc | [`0xcb7558...2a895a`](./contracts/bsc-56/0xcb75583a180b8b5f5ba6087ab8f47c15792a895a/) | ⚠️ Unaudited |
| BSWAPStaking | unknown | bsc | [`0x7b2dac...331e2d`](./contracts/bsc-56/0x7b2dac429df0b39390cd3d4e6a8b8bcceb331e2d/) | ⚠️ Unaudited |
| DegenPool | core_logic | bsc | 30 deployments: bsc [`0x0ccbc7...0ca044`](./contracts/bsc-56/0x0ccbc7e03fde545e3ed78bb8326adc414a0ca044/); bsc `0x0d08ce...b8bd43`; bsc `0x0ec061...d2e0e8`; bsc `0x151190...a3c8a0`; bsc `0x18da56...9a0f03`; bsc `0x23e961...35237a`; bsc `0x25f34e...b0c92b`; bsc `0x28a1b8...b04612`; bsc `0x2aeb47...ea65c1`; bsc `0x3973a1...1e65f0`; bsc `0x4b5a08...6c5be3`; bsc `0x4dfb8e...0e7160`; bsc `0x4ec299...397968`; bsc `0x553d0c...9ffb8f`; bsc `0x58d919...505e39`; bsc `0x729cea...c7c419`; bsc `0x84e012...4f1f45`; bsc `0x8a0725...bf3db4`; bsc `0x992c6d...437a8f`; bsc `0x9e17af...5d45da`; bsc `0xa2095d...8c1ba0`; bsc `0xa90d75...d37c5e`; bsc `0xb5986d...14d12f`; bsc `0xc24b12...35c0ec`; bsc `0xc6cbdf...0491e2`; bsc `0xc92e84...ee62d8`; bsc `0xccb983...da4ad4`; bsc `0xd1bd76...ee954d`; bsc `0xdccaca...3cea38`; bsc `0xe427f3...8fe782` | ⚠️ Unaudited |
| ExchangeProxy | unknown | bsc | [`0x4a4c55...7d98d6`](./contracts/bsc-56/0x4a4c55e4dd83f507e81186f317332abcff7d98d6/) | ⚠️ Unaudited |
| IDO | unknown | bsc | 11 deployments: bsc [`0x3e5619...7a329c`](./contracts/bsc-56/0x3e5619b262d1492c03c6388004493654e17a329c/); bsc `0x4526b1...220142`; bsc `0x552409...7bddca`; bsc `0x84798e...0ca18e`; bsc `0xa0e74f...a730c5`; bsc `0xd55aba...09c8a0`; bsc `0xd6319a...f475cd`; bsc `0xe3d301...6bf250`; bsc `0xec9392...8382de`; bsc `0xf319c3...ad350c`; bsc `0xf74417...2b61c7` | ⚠️ Unaudited |
| LaunchField | unknown | bsc | 16 deployments: bsc [`0x15c67f...90fa5c`](./contracts/bsc-56/0x15c67f69f0b99684e44d7e00fe64141b0b90fa5c/); bsc `0x1d98cb...4cd7fa`; bsc `0x43fcbe...ea6559`; bsc `0x589829...c2ae0d`; bsc `0x62d6ee...d4cb08`; bsc `0x73605b...28bb62`; bsc `0x8d2e3f...fdab12`; bsc `0x9b20a1...0889c4`; bsc `0xa56a3d...14069c`; bsc `0xdb9919...0ca680`; bsc `0xdd4090...97333d`; bsc `0xe394b0...c2682a`; bsc `0xe5e2d9...794e6a`; bsc `0xed0496...6d8ecb`; bsc `0xee3c30...aeee5d`; bsc `0xf5746b...78bd49` | ⚠️ Unaudited |
| LFIStaking | unknown | bsc | [`0xbf56ed...737a78`](./contracts/bsc-56/0xbf56ed686f70b8e82300e0d85d87f0afd5737a78/) | ⚠️ Unaudited |
| LFIStrategy | core_logic | bsc | 3 deployments: bsc [`0x67f6da...f597da`](./contracts/bsc-56/0x67f6da76ea5926baa823a539e7f6c93fbbf597da/); bsc `0x80b56f...fd238e`; bsc `0x92605e...94bd1a` | ⚠️ Unaudited |
| ProxyRegistry | registry | bsc | [`0x357d92...db2bc4`](./contracts/bsc-56/0x357d922c71a2db0ce4a7af07d3fb6c97a8db2bc4/) | ⚠️ Unaudited |
| Refunded | unknown | bsc | 5 deployments: bsc [`0x1326e3...7a9550`](./contracts/bsc-56/0x1326e30fd407e23067ffe0545078082e3b7a9550/); bsc `0x4642fa...bfb217`; bsc `0x82a574...9bc0c6`; bsc `0xc5a993...d677b6`; bsc `0xc851da...43618f` | ⚠️ Unaudited |
| Vyper_contract | unknown | bsc | 2 deployments: bsc [`0x15ea85...37e4a6`](./contracts/bsc-56/0x15ea853b07382dc2ac8f91933446ac459737e4a6/); bsc `0x39c56b...8abde2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x018e97...d134c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1e9c90...2fc1e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3b00cf...0c7d15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x587f50...9fd8e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8ef09f...7d666c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe112f5...e7394f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe4aea0...91347f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf6c797...81d63a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x01f46a...415896`](./contracts/bsc-56/0x01f46acc8f739d635c9517077641b1b59c415896/) | BurnPool | core_logic | $20,255.61 | Verified native implementation with $20,255.61 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2fd8ad...56fca8`](./contracts/bsc-56/0x2fd8ad2546db48cc0666d6f1a12aba3ca056fca8/) | LFIVault | core_logic | $14.16 | Verified native implementation with $14.16 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xacc234...d82584`](./contracts/bsc-56/0xacc234978a5eb941665fd051ca48765610d82584/) | BSCswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xce8fd6...d2b8d0`](./contracts/bsc-56/0xce8fd65646f2a2a897755a1188c04ace94d2b8d0/) | BSCswapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd95455...21424a`](./contracts/bsc-56/0xd954551853f55deb4ae31407c423e67b1621424a/) | BSCswapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcb7558...2a895a`](./contracts/bsc-56/0xcb75583a180b8b5f5ba6087ab8f47c15792a895a/) | BSCswapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7b2dac...331e2d`](./contracts/bsc-56/0x7b2dac429df0b39390cd3d4e6a8b8bcceb331e2d/) | BSWAPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0ccbc7...0ca044`](./contracts/bsc-56/0x0ccbc7e03fde545e3ed78bb8326adc414a0ca044/) | DegenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4a4c55...7d98d6`](./contracts/bsc-56/0x4a4c55e4dd83f507e81186f317332abcff7d98d6/) | ExchangeProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e5619...7a329c`](./contracts/bsc-56/0x3e5619b262d1492c03c6388004493654e17a329c/) | IDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15c67f...90fa5c`](./contracts/bsc-56/0x15c67f69f0b99684e44d7e00fe64141b0b90fa5c/) | LaunchField | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbf56ed...737a78`](./contracts/bsc-56/0xbf56ed686f70b8e82300e0d85d87f0afd5737a78/) | LFIStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x67f6da...f597da`](./contracts/bsc-56/0x67f6da76ea5926baa823a539e7f6c93fbbf597da/) | LFIStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x357d92...db2bc4`](./contracts/bsc-56/0x357d922c71a2db0ce4a7af07d3fb6c97a8db2bc4/) | ProxyRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1326e3...7a9550`](./contracts/bsc-56/0x1326e30fd407e23067ffe0545078082e3b7a9550/) | Refunded | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15ea85...37e4a6`](./contracts/bsc-56/0x15ea853b07382dc2ac8f91933446ac459737e4a6/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
