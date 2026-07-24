# Agentic Audit Brief: Hord

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Hord (`hord`)
- Website: [https://www.hord.fi/](https://www.hord.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 58 unique implementations (59 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $302,051.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Hord in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x086a6d9fd61758096cf4f394ae7c1f9b6b4eec14`, chain 1)
- UnnamedContract (`0x29a5f08a38c79a2dd1df055792822eb1e163d574`, chain 1)
- UnnamedContract (`0x51b2f83aac13adb9ed826c4cdb593c88e6b61c92`, chain 1)
- UnnamedContract (`0x8b7819135fe97abfdc0c88596509c00fa727eadc`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 4 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 53 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 4 of 58 unique; 54 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 58
- Raw deployments: 59
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03b93c3bcbc5422a3d9deadad764ce55a7c4f03b` | ⚠️ Unaudited |
| Farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32c2cae23209e8b75e76d6aeac995a596a1d3ac8` | ⚠️ Unaudited |
| HordCongress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x604fab7ce497059eb87c86399ed7467d1a82517f` | ⚠️ Unaudited |
| HordCongressMembersRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb3be996a28fc3ba9f7fd21a40f66d225e1312ef` | ⚠️ Unaudited |
| HordTicketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b063cef5906259b0bd494c56e3db8c18a487007` | ⚠️ Unaudited |
| HordTicketManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3083f888a3b9fd334dbe230c9aee5555da754f04`; ethereum `0xd9f4f990744b26b2ac315afbbd85f0f345330f84` | ⚠️ Unaudited |
| HordToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43a96962254855f16b925556f9e97be436a43448` | ⚠️ Unaudited |
| MaintainersRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aedfb4ff4817ba52e77e9682f028a34f6bfc31c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b3558b725e941dad8f587a40e86721cb3082125` | ⚠️ Unaudited |
| TokensFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c8e7f26692d374afc63474dd69411a7d883373` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241982 | `0x086a6d9fd61758096cf4f394ae7c1f9b6b4eec14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x176379afdb27b6cc5eecc88ec90a2c68ec6acd05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dac04367ecb03dc745404c3d80836a74c7011c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2138fde69026b288433e6822bf9bf571bd5a4721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21efe92aef99afcff57dbe4b98ba9e708bb724bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241983 | `0x29a5f08a38c79a2dd1df055792822eb1e163d574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30767bd206c0a38ab2e933dfb95596ae3b2d77aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32aa07e6ebf2340eef1f717197ade6982b815536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d355b5f8d4def7bcafe4d2fd54f933cd71d313b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x400e7c9ff315d63d508499788a12efbf1da709bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1dcf69cdc5e897e5440ee903a36c13a2541025` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4deebb678ab3a6e8da63309b6dce368d343c552a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fdc295580287b1e3c8fa8875f0fbdc688d8e8a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50085e7e3ae297ca1894bbb11cf2829568dfa013` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241984 | `0x51b2f83aac13adb9ed826c4cdb593c88e6b61c92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a2295f0b8a1f2b9bf26b9549ce808c68e1a3f5f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x5bbe36152d3cd3eb7183a82470b39b29eedf068b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6868b7baec4026e8c04de41752ee9b06b476c57c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69ac5af75d8f7bfbdd990ba19c74a4b3186ca8df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a36c9a4c6d758dd1147d1902c7ceaffeabf1c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72b8669dc62746e27073c726e55d9062005ab45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76fec984cd5cf860916a182899b878ff24bdedd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f1befb226e90613ac32ad9e499b53e7106c3858` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241985 | `0x8b7819135fe97abfdc0c88596509c00fa727eadc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e4af5f932922962612d0ddba7c2e31cbf1c4a0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96b90f7065e5fd7251dd1b649de20918ae0f3ab7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x981b0d6cf24415be359d99f458a4041a1fa61f47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aad99ae3e2e1f1169144dbf3a969e6d9e5838ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa09c744117f2aca714f0ca6fa26260afa972fa65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa06c1cdefc8ec7e6d205798fcc5b93574f5d1f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaae1cd84600a00c0a0a192d46531d900f8cc1ca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabc172d4c9f701e80195149257bcaa3e319cf335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8a2b7d128b7b7390e6209679ecdad45d18ec340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba5a8324c125b426bccac8403365165833fd06e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbde6bb525b0e9877fbf6a588fb0be6b6c397ecbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc01e449a0ea5ecd68668e0e7e914f425044764c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1e887a3fa7c1413f8ae0a9947a363f8865d387f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9700e4cb19b9a8d9d82016f22cf881a210b8374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd10b535c0019c06a37cab485b300b85c438fd8b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4c0d7a5ca850a4f57bfc232351ebed18d066d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe011d9bf7dc9138ed67e1ff2e4dda0dda82f0fe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe37b378917ee67166c7b91a28535650aa34682e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9c8e180ef6abdc33262f204c323db7b0a048c36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef9767ab19acea7622aa2f3ef2747e792505f55e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefc02eae6438c3db7ef1aab7bb667e063cfdcb76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6736cb10534460a339a115196af3c4f99bad4ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7bda9cad0d5895c69619ff4a4618f3c68995828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfef01c6e425affee8d94898655358c71028eb75c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 45
- Live contracts: 0
- Unknown liveness contracts: 45
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: exact address book overlap=1, unverified unclassified=44

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x32aa07e6ebf2340eef1f717197ade6982b815536` | non_address_book | unknown | unknown | unverified | n/a | `0x6567d655953f38d29f57b1ebd55ca6cae4daa12b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4deebb678ab3a6e8da63309b6dce368d343c552a` | non_address_book | unknown | unknown | unverified | n/a | `0x6567d655953f38d29f57b1ebd55ca6cae4daa12b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50085e7e3ae297ca1894bbb11cf2829568dfa013` | non_address_book | unknown | unknown | unverified | n/a | `0x6567d655953f38d29f57b1ebd55ca6cae4daa12b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6868b7baec4026e8c04de41752ee9b06b476c57c` | non_address_book | unknown | unknown | unverified | n/a | `0x6567d655953f38d29f57b1ebd55ca6cae4daa12b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69ac5af75d8f7bfbdd990ba19c74a4b3186ca8df` | non_address_book | unknown | unknown | unverified | n/a | `0x6567d655953f38d29f57b1ebd55ca6cae4daa12b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x76fec984cd5cf860916a182899b878ff24bdedd4` | non_address_book | unknown | unknown | unverified | n/a | `0x6567d655953f38d29f57b1ebd55ca6cae4daa12b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9aad99ae3e2e1f1169144dbf3a969e6d9e5838ac` | non_address_book | unknown | unknown | unverified | n/a | `0x6567d655953f38d29f57b1ebd55ca6cae4daa12b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xabc172d4c9f701e80195149257bcaa3e319cf335` | non_address_book | unknown | unknown | unverified | n/a | `0x6567d655953f38d29f57b1ebd55ca6cae4daa12b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8a2b7d128b7b7390e6209679ecdad45d18ec340` | non_address_book | unknown | unknown | unverified | n/a | `0x6567d655953f38d29f57b1ebd55ca6cae4daa12b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd10b535c0019c06a37cab485b300b85c438fd8b3` | non_address_book | unknown | unknown | unverified | n/a | `0x6567d655953f38d29f57b1ebd55ca6cae4daa12b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd9f4f990744b26b2ac315afbbd85f0f345330f84` | non_address_book | unknown | unknown | unverified | n/a | `0x6567d655953f38d29f57b1ebd55ca6cae4daa12b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe011d9bf7dc9138ed67e1ff2e4dda0dda82f0fe1` | non_address_book | unknown | unknown | unverified | n/a | `0x6567d655953f38d29f57b1ebd55ca6cae4daa12b` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6736cb10534460a339a115196af3c4f99bad4ed` | non_address_book | unknown | unknown | unverified | n/a | `0x6567d655953f38d29f57b1ebd55ca6cae4daa12b` |
| ethereum | exact address book overlap | UnnamedContract<br>`0x5bbe36152d3cd3eb7183a82470b39b29eedf068b` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x176379afdb27b6cc5eecc88ec90a2c68ec6acd05` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1dac04367ecb03dc745404c3d80836a74c7011c4` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2138fde69026b288433e6822bf9bf571bd5a4721` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x21efe92aef99afcff57dbe4b98ba9e708bb724bb` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x30767bd206c0a38ab2e933dfb95596ae3b2d77aa` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d355b5f8d4def7bcafe4d2fd54f933cd71d313b` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x400e7c9ff315d63d508499788a12efbf1da709bb` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c1dcf69cdc5e897e5440ee903a36c13a2541025` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4fdc295580287b1e3c8fa8875f0fbdc688d8e8a5` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a2295f0b8a1f2b9bf26b9549ce808c68e1a3f5f` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a36c9a4c6d758dd1147d1902c7ceaffeabf1c14` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72b8669dc62746e27073c726e55d9062005ab45d` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f1befb226e90613ac32ad9e499b53e7106c3858` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e4af5f932922962612d0ddba7c2e31cbf1c4a0b` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x96b90f7065e5fd7251dd1b649de20918ae0f3ab7` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x981b0d6cf24415be359d99f458a4041a1fa61f47` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa09c744117f2aca714f0ca6fa26260afa972fa65` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa06c1cdefc8ec7e6d205798fcc5b93574f5d1f0` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaae1cd84600a00c0a0a192d46531d900f8cc1ca6` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba5a8324c125b426bccac8403365165833fd06e0` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbde6bb525b0e9877fbf6a588fb0be6b6c397ecbd` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc01e449a0ea5ecd68668e0e7e914f425044764c6` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc1e887a3fa7c1413f8ae0a9947a363f8865d387f` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc9700e4cb19b9a8d9d82016f22cf881a210b8374` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd4c0d7a5ca850a4f57bfc232351ebed18d066d78` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe37b378917ee67166c7b91a28535650aa34682e4` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe9c8e180ef6abdc33262f204c323db7b0a048c36` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef9767ab19acea7622aa2f3ef2747e792505f55e` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xefc02eae6438c3db7ef1aab7bb667e063cfdcb76` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7bda9cad0d5895c69619ff4a4618f3c68995828` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfef01c6e425affee8d94898655358c71028eb75c` | non_address_book | unknown | unknown | unverified | n/a | `0xd2fd442a68cc17a967e31b4712df110a6d0ff513` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[Zokyo]() 22.2.2023](https://github.com/zokyo-sec/audit-reports/blob/main/Hord/Zokyo_Hord%20audit%20report.pdf) | Zokyo | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [[Diligence Audit]() 23.2.2023](https://uploads-ssl.webflow.com/6048790ad5157f01d7437c77/64526aa73efdd91541f426a9_644438e70d01ac4d026eff8c_Hord%20audit%20report.pdf) | Code4rena | Contest | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [[Zokyo]() 19.9.2023](https://github.com/zokyo-sec/audit-reports/blob/main/Hord/Hord_Zokyo_audit_report_Sep19_2023.pdf) | Zokyo | Audit | 2023-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29739] [Zokyo]() 22.2.2023 — no match: Scope explicitly lists HETH.sol and HordETHStakingManager.sol. TokensFarmSDK.sol is mentioned as an external dependency, not in scope.
- [29740] [Diligence Audit]() 23.2.2023 — no match: Contracts explicitly listed in 'Contracts Audited' section: HETH and HordETHStakingManager.
- [29741] [Zokyo]() 19.9.2023 — matched: Three contracts explicitly listed in scope: StakingConfiguration.sol, HordETHStakingManager.sol, HordETHStakingWithdrawalManager.sol. Audit date from cover page: September 19th 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [Zokyo]() 22.2.2023 | HETH | unmatched — not counted | — | listed in scope | no |
| [Zokyo]() 22.2.2023 | HordETHStakingManager | unmatched — not counted | — | listed in scope | no |
| [Diligence Audit]() 23.2.2023 | HETH | unmatched — not counted | — | listed in 'Contracts Audited' section | no |
| [Diligence Audit]() 23.2.2023 | HordETHStakingManager | unmatched — not counted | — | listed in 'Contracts Audited' section | no |
| [Zokyo]() 19.9.2023 | StakingConfiguration | own contract | 0x51b2f8… (selected) `0x51b2f83aac13adb9ed826c4cdb593c88e6b61c92` — deployed 2023-02-08 13:49:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [Zokyo]() 19.9.2023 | HordETHStakingManager | unmatched — not counted | — | listed in scope | no |
| [Zokyo]() 19.9.2023 | HordETHStakingWithdrawalManager | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=1

Zero-match audit list:

- [29739] [Zokyo]() 22.2.2023
- [29740] [Diligence Audit]() 23.2.2023

Fork inheritance lineage and inherited audits are included when available.
