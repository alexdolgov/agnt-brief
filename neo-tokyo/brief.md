# Agentic Audit Brief: Neo Tokyo

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Neo Tokyo (`neo-tokyo`)
- Website: [https://neotokyo.codes/](https://neotokyo.codes/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:01:00.812Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 23 unique implementations (23 raw deployments)
- DeFi Llama TVL: $882,260.50
- On-chain TVL (included contracts): $26,800.55
- TVL by chain: Ethereum $26,800.55

## Project Description

Neo Tokyo is a gaming ecosystem on Ethereum that combines staking, identity, and NFT-based assets. Users stake tokens to earn rewards and access a suite of NFTs representing citizens, items, land, and identities, which are used within the gaming metaverse.

### Architecture

The NeoTokyoStaker contract is the central hub, interacting with BYTES2 for staking and distributing rewards. It references NTConfig for protocol parameters and uses the various NFT contracts (citizens, items, land, identities) to manage in-game assets, while NTS1Vault_V2 likely holds or manages funds.

## Contract Surface Quality

- Indexed contracts: 109; live-surface contracts included: 23 (22 live, 1 unknown).
- Excluded by liveness: 74 inactive, 12 singleton, 0 uninitialized.
- Deployment units: 7/13 live.
- Detected codebases: uniswap-v3
- Dependencies extracted: 7; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/23 (0.0%)
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 23
- Raw deployments: 23
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $26,800.55
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $26,800.55 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniswapV3Pool | core_logic | ethereum | n/a | [`0xfeb09c...688b34`](./contracts/ethereum-1/0xfeb09c7e130a4b87b27ebd648ec485657b688b34/) | ⚠️ Unaudited |
| beckLoot | unknown | ethereum | n/a | [`0x86357a...3a66c0`](./contracts/ethereum-1/0x86357a19e5537a8fba9a004e555713bc943a66c0/) | ⚠️ Unaudited |
| boughtIdentity | unknown | ethereum | n/a | [`0x835a60...3a892e`](./contracts/ethereum-1/0x835a60cc60b808e47825daa79a9da6c9ff3a892e/) | ⚠️ Unaudited |
| BYTES2 | unknown | ethereum | n/a | [`0xa19f52...0bea86`](./contracts/ethereum-1/0xa19f5264f7d7be11c451c093d8f92592820bea86/) | ⚠️ Unaudited |
| BYTESContract | unknown | ethereum | n/a | [`0x7d647b...4f8c95`](./contracts/ethereum-1/0x7d647b1a0dcd5525e9c6b3d14be58f27674f8c95/) | ⚠️ Unaudited |
| NeoTokyoStaker | core_logic | ethereum | n/a | [`0x67e1ec...ca9e16`](./contracts/ethereum-1/0x67e1ecfa9232e27eaf3133b968a33a9a0dca9e16/) | ⚠️ Unaudited |
| NTChampionChips | unknown | ethereum | unit-32575 | [`0xf5205c...8428f5`](./contracts/ethereum-1/0xf5205c058adf284ba75420428b09c846c78428f5/) | ⚠️ Unaudited |
| NTCitizenDeploy | unknown | ethereum | n/a | [`0xb668be...3bdd65`](./contracts/ethereum-1/0xb668beb1fa440f6cf2da0399f8c28cab993bdd65/) | ⚠️ Unaudited |
| NTItems | unknown | ethereum | n/a | [`0x0938e3...da3af9`](./contracts/ethereum-1/0x0938e3f7ac6d7f674fed551c93f363109bda3af9/) | ⚠️ Unaudited |
| NTLandDeploy | unknown | ethereum | n/a | [`0x3c54b7...3019bb`](./contracts/ethereum-1/0x3c54b798b3aad4f6089533af3bdbd6ce233019bb/) | ⚠️ Unaudited |
| NTMigrator | periphery | ethereum | n/a | [`0x91a341...fd9e57`](./contracts/ethereum-1/0x91a341e5617070de70f4df6a83cceceea7fd9e57/) | ⚠️ Unaudited |
| NTOuterCitizenDeploy | unknown | ethereum | n/a | [`0x9b091d...932ec4`](./contracts/ethereum-1/0x9b091d2e0bb88ace4fe8f0fab87b93d8ba932ec4/) | ⚠️ Unaudited |
| NTOuterIdentity | unknown | ethereum | n/a | [`0x698fba...62cf54`](./contracts/ethereum-1/0x698fbaaca64944376e2cdc4cad86eaa91362cf54/) | ⚠️ Unaudited |
| NTS1Identity_V2 | unknown | ethereum | unit-32564 | [`0x059174...8f2f99`](./contracts/ethereum-1/0x059174c2fef43f06178d23572fe5556f078f2f99/) | ⚠️ Unaudited |
| NTS1Item | unknown | ethereum | unit-32574 | [`0xe7489e...13d249`](./contracts/ethereum-1/0xe7489ea1847395d7eead33e9c85fe327d513d249/) | ⚠️ Unaudited |
| NTS1Land | unknown | ethereum | unit-32572 | [`0xcfc6a1...62e21a`](./contracts/ethereum-1/0xcfc6a15b2952b6014a993a0c16c9d580d862e21a/) | ⚠️ Unaudited |
| NTS2Identity | unknown | ethereum | unit-32568 | [`0x8e9f3c...0ad6d3`](./contracts/ethereum-1/0x8e9f3c6883993a7a69c37213f2eb9a17450ad6d3/) | ⚠️ Unaudited |
| NTS2Item | unknown | ethereum | unit-32565 | [`0x0b8f04...9efad9`](./contracts/ethereum-1/0x0b8f04f2ca4f15d33274a27439412ab7639efad9/) | ⚠️ Unaudited |
| NTS2Items | unknown | ethereum | n/a | [`0x7ac66d...d69354`](./contracts/ethereum-1/0x7ac66d40d80d2d8d1e45d6b5b10a1c9d1fd69354/) | ⚠️ Unaudited |
| NTS2Land | unknown | ethereum | unit-32569 | [`0xb58ae9...bf4b4e`](./contracts/ethereum-1/0xb58ae9e93b8bee7d890ad87a2a70c135a3bf4b4e/) | ⚠️ Unaudited |
| NTS2LandDeploy | unknown | ethereum | n/a | [`0xf90980...1df639`](./contracts/ethereum-1/0xf90980ae7a44e2d18b9615396ff5e9252f1df639/) | ⚠️ Unaudited |
| royaltySplitter | operational_periphery | ethereum | n/a | [`0xdf9a7c...2fafaa`](./contracts/ethereum-1/0xdf9a7c4bad39cc914e204d1adab53da21e2fafaa/) | ⚠️ Unaudited |
| vaultBox | core_logic | ethereum | n/a | [`0xab0b0d...e80879`](./contracts/ethereum-1/0xab0b0dd7e4eab0f9e31a539074a03f1c1be80879/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x86357a...3a66c0`](./contracts/ethereum-1/0x86357a19e5537a8fba9a004e555713bc943a66c0/) | beckLoot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x835a60...3a892e`](./contracts/ethereum-1/0x835a60cc60b808e47825daa79a9da6c9ff3a892e/) | boughtIdentity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa19f52...0bea86`](./contracts/ethereum-1/0xa19f5264f7d7be11c451c093d8f92592820bea86/) | BYTES2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d647b...4f8c95`](./contracts/ethereum-1/0x7d647b1a0dcd5525e9c6b3d14be58f27674f8c95/) | BYTESContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67e1ec...ca9e16`](./contracts/ethereum-1/0x67e1ecfa9232e27eaf3133b968a33a9a0dca9e16/) | NeoTokyoStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb668be...3bdd65`](./contracts/ethereum-1/0xb668beb1fa440f6cf2da0399f8c28cab993bdd65/) | NTCitizenDeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0938e3...da3af9`](./contracts/ethereum-1/0x0938e3f7ac6d7f674fed551c93f363109bda3af9/) | NTItems | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c54b7...3019bb`](./contracts/ethereum-1/0x3c54b798b3aad4f6089533af3bdbd6ce233019bb/) | NTLandDeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x91a341...fd9e57`](./contracts/ethereum-1/0x91a341e5617070de70f4df6a83cceceea7fd9e57/) | NTMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b091d...932ec4`](./contracts/ethereum-1/0x9b091d2e0bb88ace4fe8f0fab87b93d8ba932ec4/) | NTOuterCitizenDeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x698fba...62cf54`](./contracts/ethereum-1/0x698fbaaca64944376e2cdc4cad86eaa91362cf54/) | NTOuterIdentity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ac66d...d69354`](./contracts/ethereum-1/0x7ac66d40d80d2d8d1e45d6b5b10a1c9d1fd69354/) | NTS2Items | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf90980...1df639`](./contracts/ethereum-1/0xf90980ae7a44e2d18b9615396ff5e9252f1df639/) | NTS2LandDeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf9a7c...2fafaa`](./contracts/ethereum-1/0xdf9a7c4bad39cc914e204d1adab53da21e2fafaa/) | royaltySplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab0b0d...e80879`](./contracts/ethereum-1/0xab0b0dd7e4eab0f9e31a539074a03f1c1be80879/) | vaultBox | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 1 |
| standard_library | 7 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
