# Agentic Audit Brief: ZEROBASE CeDeFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: ZEROBASE CeDeFi (`zerobase-cedefi`)
- Website: [https://app.zerobase.pro/](https://app.zerobase.pro/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 62 unique implementations (111 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $55,728,979.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for ZEROBASE CeDeFi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, optimism, polygon. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: abstract (1)
- Detected standards: ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xfab99fcf605fd8f4593edb70a43ba56542777777`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 61 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 1 of 62 unique; 61 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 54
- Unique implementations: 62
- Raw deployments: 111
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 2 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x1bd704634a64654c2ff203823772561b2c49157d`; bsc `0x1bd704634a64654c2ff203823772561b2c49157d`; polygon `0x1bd704634a64654c2ff203823772561b2c49157d`; base `0x1bd704634a64654c2ff203823772561b2c49157d`; base `0xa6c17e2c8a3ad6307ae159d1cbc9e33b4d53958e`; arbitrum `0x1bd704634a64654c2ff203823772561b2c49157d`; arbitrum `0xd2c7cb9ce342cc2ff5f6f97545265404033eee77`; arbitrum `0xfba9a6623d4fb1ad7f2c277e91c20b6452003dfa` | ⚠️ Unaudited |
| MockERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x1a5f8fd6892132c4a297d353a49601148bd7aae8`; arbitrum `0x29da6400df2fcb389228edec172d67e468d44311`; arbitrum `0x8e99c0d406435bda93dd9ee0fa4c23e2967933d0`; arbitrum `0x982521492faa51da81c81d9bad2c0d95c3093370` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | ethereum | unit-398190 | `0xfab99fcf605fd8f4593edb70a43ba56542777777` | ⚠️ Unaudited |
| Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa07f347eaad1ba229dc913eda646b5f17d0661ac`; bsc `0xcc5df5c68d8c991035b6a437d4e00a99875228e4` | ⚠️ Unaudited |
| Utils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0x8724d1b62ddf87d830811c9dcb2e1a6494c9c117`; ethereum `0xa07f347eaad1ba229dc913eda646b5f17d0661ac`; ethereum `0xa6c17e2c8a3ad6307ae159d1cbc9e33b4d53958e`; optimism `0xa07f347eaad1ba229dc913eda646b5f17d0661ac`; polygon `0xa07f347eaad1ba229dc913eda646b5f17d0661ac`; base `0xa07f347eaad1ba229dc913eda646b5f17d0661ac`; arbitrum `0x254bd92fae14e595ad2cf6652941684aa01045dd`; arbitrum `0x887b00e38031c7d4e0cac2a7cd46a6aa30d13f19`; arbitrum `0xa07f347eaad1ba229dc913eda646b5f17d0661ac` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0x9ef52d8953d184840f2c69096b7b3a7da7093685`; optimism `0xcc5df5c68d8c991035b6a437d4e00a99875228e4`; polygon `0xcc5df5c68d8c991035b6a437d4e00a99875228e4`; base `0xcc5df5c68d8c991035b6a437d4e00a99875228e4`; arbitrum `0x75c6a251b422606bb132cae39526d3efed8e0d99`; arbitrum `0xcc5df5c68d8c991035b6a437d4e00a99875228e4`; arbitrum `0xd0f3db630d275ba26c9b91a5d2d21bff2a40532b` | ⚠️ Unaudited |
| WithdrawVault | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0xc4a718735f0783e81fdcaa999773199c2d1498d4`; ethereum `0xe2c7925b1173013a59b8573daa3eda6c613ded45`; optimism `0xe2c7925b1173013a59b8573daa3eda6c613ded45`; bsc `0xe2c7925b1173013a59b8573daa3eda6c613ded45`; polygon `0xe2c7925b1173013a59b8573daa3eda6c613ded45`; base `0xe2c7925b1173013a59b8573daa3eda6c613ded45`; arbitrum `0x6562d6dcfa8e7e3c6772a4d619eec2029f11c21f`; arbitrum `0xa541a6a25e98605a23e5428bb0a2d6f97a2b8528`; arbitrum `0xe2c7925b1173013a59b8573daa3eda6c613ded45` | ⚠️ Unaudited |
| zkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 17 deployments: ethereum `0x1ee6e93134aee641bdbe470df2417af476bb917f`; ethereum `0x7336c89ff7af86131d336d504e677db0eb338a16`; ethereum `0xdfdaa3b21234ecece29d84a885d29180a47c3f2d`; optimism `0xa6c17e2c8a3ad6307ae159d1cbc9e33b4d53958e`; optimism `0xdfdaa3b21234ecece29d84a885d29180a47c3f2d`; bsc `0xa6c17e2c8a3ad6307ae159d1cbc9e33b4d53958e`; bsc `0xdfdaa3b21234ecece29d84a885d29180a47c3f2d`; polygon `0xa6c17e2c8a3ad6307ae159d1cbc9e33b4d53958e`; polygon `0xdfdaa3b21234ecece29d84a885d29180a47c3f2d`; base `0xdfdaa3b21234ecece29d84a885d29180a47c3f2d`; arbitrum `0x3f80a2628104ffdfd207daa06203c55f4aad2232`; arbitrum `0x443d48c2c0b709b05a21d94bc85b561b4c657978`; arbitrum `0x804a5ecfcd547cbd0e90514f116e2a94152054ae`; arbitrum `0x90d0d2b0d054aa0a6575cd50a3a2d6e737960d2f`; arbitrum `0xa6c17e2c8a3ad6307ae159d1cbc9e33b4d53958e`; arbitrum `0xc683ddbeedfe419373cddf239238b838ae89ffc6`; arbitrum `0xdfdaa3b21234ecece29d84a885d29180a47c3f2d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (54)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bd704634a64654c2ff203823772561b2c49157d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb60b1d1f6399e2177ef60df7ae9312940a5e543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc5df5c68d8c991035b6a437d4e00a99875228e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x034049f439901f7035de9a2bba3d6ebcafb4e1b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03472107c1aa8eb40ff02417406c6353bd8eb61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x075a9fe036d997bcb80761aaebaf7d017930f1dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11587f1d2dcd3bb14415bcc8fabfd54e63550e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1386225f29dccf1b24aa1adc487613a27bee39bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19e270ab53e23c88209c2c22880532d7fa5889e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a33c7d30915dfbbf24ef291c002a7d0be5daf0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b9a2a883d07b4fbf79fb09b9fa2b20b449da7fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d5cbcc2cff51123d91d24bdb33c179379de397d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x219a8d1e051d1dc7d789c385b5de0a23931cf7fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x21bfa705cc2e82c6833b1b6eae3a134af5efc0ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22a190fb6a77ba2a4ecb7cb553dcf38b156d75b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26492749cf1302062f9c35b1a0632f619bb4b93a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26feeca3280df39764aac54d85ed3a4b321729d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a447358e273555a9eced1106b0cba5dfb6a99a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x38512d6e62296f2d1aee9fe6690b3d5b81a5117f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c601f4571c7e42b5faa7927a557fdbcd91580f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f44201f3d2ba0c2611db3761f8c48ab0ee7cabb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f9d757d49e476e76e60fb2d8eea4a8a5384002e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x500ca194ceac60be73b693ee96a1dc2c3735ccf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x596b1fdafa7d26229e40a2c7cb083bcef6ff1af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5ddb3d0f37b0879a854c1d8768c52dce45a987fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x64addcee9193d2f637c388c0eecb86e65794c06e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65d616afcd1888e46f8599ef13bdca19f7d03869` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c050ca6c2642fd2e85d558e07d6642c3e8a8f3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6decd57699628a68f88d52d858f22aa828bf7770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x751af3acbde7b103007202a2eab409d74975f6cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81a33b729fddc1fb46ea79e1943b0d683346a9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89ced520ac8fc549f9191aee5edf95e524779839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8a9a074298941604527209598dc7a3719b5b64a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8d147ce9f6ea1232b914fc70ac67f2e2c3572c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x902fb44d48796da6087778275605af2e5d9bb5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa350be7aef0753f4f84af0646f502e7aa0090795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3f3587958041cefac79ce83cc9901e3546bf67a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa7159b7d10d46521df30fd7e6357edb6e201ed93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaaf459fac2fb4df8115fef5c910e6197e45bd254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf652bb771bb63f8463987585cc876d547782088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc39e527d1d8b8f5a893587744c2dbbc770b8a90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc28af0650a080402b4e47fe6632dea943db6b222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc3e9006559cb209a987e99257986aa5ce324f829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbc3016e5d1d46e1d7c8deacfc4a28626e24097c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc2608a0fa5f06b2406e45cc426a6dd84b36b490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6a6e056c581be696ada9c2ec62020260da02ea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7ca3239ba2f1a38168d7b72c0053a1537612338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7699c0a66976aa016d3a219e62bdca13fda73e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1f278d4bb1073cd44159fa275cc0ed0b0461093` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf527bda1dace0a27b9a10b4f8d0584d742512da5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf879888aabcb2eca93b85aed8928721b19124da9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf893439fcb0d111ca1f32982159a9c5ceac3e9e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd5f0727f652b4425cda1f5453adeade8194333d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff60b79f86edbce76f7e113182cee7c64758f4fc` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 70
- Live contracts: 0
- Unknown liveness contracts: 70
- Source-verified contracts: 21
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=6, contamination review=1, source verified unclassified=14, unverified unclassified=49

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | unverified unclassified | UnnamedContract<br>`0x034049f439901f7035de9a2bba3d6ebcafb4e1b6` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x03472107c1aa8eb40ff02417406c6353bd8eb61f` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x075a9fe036d997bcb80761aaebaf7d017930f1dc` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x11587f1d2dcd3bb14415bcc8fabfd54e63550e9f` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1386225f29dccf1b24aa1adc487613a27bee39bc` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x19e270ab53e23c88209c2c22880532d7fa5889e2` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1a33c7d30915dfbbf24ef291c002a7d0be5daf0b` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1b9a2a883d07b4fbf79fb09b9fa2b20b449da7fb` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x219a8d1e051d1dc7d789c385b5de0a23931cf7fb` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x21bfa705cc2e82c6833b1b6eae3a134af5efc0ec` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x22a190fb6a77ba2a4ecb7cb553dcf38b156d75b1` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x26492749cf1302062f9c35b1a0632f619bb4b93a` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x26feeca3280df39764aac54d85ed3a4b321729d3` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x38512d6e62296f2d1aee9fe6690b3d5b81a5117f` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3c601f4571c7e42b5faa7927a557fdbcd91580f0` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4f44201f3d2ba0c2611db3761f8c48ab0ee7cabb` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4f9d757d49e476e76e60fb2d8eea4a8a5384002e` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x500ca194ceac60be73b693ee96a1dc2c3735ccf1` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x596b1fdafa7d26229e40a2c7cb083bcef6ff1af7` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5ddb3d0f37b0879a854c1d8768c52dce45a987fb` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x64addcee9193d2f637c388c0eecb86e65794c06e` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x65d616afcd1888e46f8599ef13bdca19f7d03869` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6c050ca6c2642fd2e85d558e07d6642c3e8a8f3c` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6decd57699628a68f88d52d858f22aa828bf7770` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x751af3acbde7b103007202a2eab409d74975f6cf` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x81a33b729fddc1fb46ea79e1943b0d683346a9a8` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x89ced520ac8fc549f9191aee5edf95e524779839` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8d147ce9f6ea1232b914fc70ac67f2e2c3572c41` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x902fb44d48796da6087778275605af2e5d9bb5b0` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa350be7aef0753f4f84af0646f502e7aa0090795` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa3f3587958041cefac79ce83cc9901e3546bf67a` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa7159b7d10d46521df30fd7e6357edb6e201ed93` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xaaf459fac2fb4df8115fef5c910e6197e45bd254` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbc39e527d1d8b8f5a893587744c2dbbc770b8a90` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc28af0650a080402b4e47fe6632dea943db6b222` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcbc3016e5d1d46e1d7c8deacfc4a28626e24097c` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcc2608a0fa5f06b2406e45cc426a6dd84b36b490` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd6a6e056c581be696ada9c2ec62020260da02ea1` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd7ca3239ba2f1a38168d7b72c0053a1537612338` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe7699c0a66976aa016d3a219e62bdca13fda73e1` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf1f278d4bb1073cd44159fa275cc0ed0b0461093` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf527bda1dace0a27b9a10b4f8d0584d742512da5` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf879888aabcb2eca93b85aed8928721b19124da9` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf893439fcb0d111ca1f32982159a9c5ceac3e9e9` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfd5f0727f652b4425cda1f5453adeade8194333d` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xff60b79f86edbce76f7e113182cee7c64758f4fc` | non_address_book | unknown | unknown | unverified | n/a | `0xf36e5a9a749ea13d8a9453f4a3ba1fa312340797` |
| base | candidate review | Utils<br>`0xa07f347eaad1ba229dc913eda646b5f17d0661ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| base | source verified unclassified | Airdrop<br>`0x1bd704634a64654c2ff203823772561b2c49157d` | non_address_book | unknown | unknown | verified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| base | source verified unclassified | Airdrop<br>`0xa6c17e2c8a3ad6307ae159d1cbc9e33b4d53958e` | non_address_book | unknown | unknown | verified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| base | source verified unclassified | WithdrawVault<br>`0xe2c7925b1173013a59b8573daa3eda6c613ded45` | non_address_book | unknown | unknown | verified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| bsc | candidate review | Utils<br>`0xa07f347eaad1ba229dc913eda646b5f17d0661ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| bsc | source verified unclassified | Airdrop<br>`0x1bd704634a64654c2ff203823772561b2c49157d` | non_address_book | unknown | unknown | verified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| bsc | source verified unclassified | WithdrawVault<br>`0xe2c7925b1173013a59b8573daa3eda6c613ded45` | non_address_book | unknown | unknown | verified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| bsc | source verified unclassified | zkToken<br>`0xa6c17e2c8a3ad6307ae159d1cbc9e33b4d53958e` | non_address_book | unknown | unknown | verified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| bsc | source verified unclassified | zkToken<br>`0xdfdaa3b21234ecece29d84a885d29180a47c3f2d` | non_address_book | unknown | unknown | verified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| ethereum | candidate review | Utils<br>`0x8724d1b62ddf87d830811c9dcb2e1a6494c9c117` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| ethereum | candidate review | Utils<br>`0xa07f347eaad1ba229dc913eda646b5f17d0661ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| ethereum | candidate review | Utils<br>`0xa6c17e2c8a3ad6307ae159d1cbc9e33b4d53958e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| ethereum | source verified unclassified | WithdrawVault<br>`0xc4a718735f0783e81fdcaa999773199c2d1498d4` | non_address_book | unknown | unknown | verified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| ethereum | source verified unclassified | WithdrawVault<br>`0xe2c7925b1173013a59b8573daa3eda6c613ded45` | non_address_book | unknown | unknown | verified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| ethereum | source verified unclassified | zkToken<br>`0x1ee6e93134aee641bdbe470df2417af476bb917f` | non_address_book | unknown | unknown | verified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| ethereum | source verified unclassified | zkToken<br>`0xdfdaa3b21234ecece29d84a885d29180a47c3f2d` | non_address_book | unknown | unknown | verified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1bd704634a64654c2ff203823772561b2c49157d` | non_address_book | unknown | unknown | unverified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcb60b1d1f6399e2177ef60df7ae9312940a5e543` | non_address_book | unknown | unknown | unverified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc5df5c68d8c991035b6a437d4e00a99875228e4` | non_address_book | unknown | unknown | unverified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| optimism | candidate review | Utils<br>`0xa07f347eaad1ba229dc913eda646b5f17d0661ac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| optimism | contamination review | Airdrop<br>`0x1bd704634a64654c2ff203823772561b2c49157d` | non_address_book | unknown | unknown | verified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| optimism | source verified unclassified | WithdrawVault<br>`0xe2c7925b1173013a59b8573daa3eda6c613ded45` | non_address_book | unknown | unknown | verified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| optimism | source verified unclassified | zkToken<br>`0xa6c17e2c8a3ad6307ae159d1cbc9e33b4d53958e` | non_address_book | unknown | unknown | verified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |
| optimism | source verified unclassified | zkToken<br>`0xdfdaa3b21234ecece29d84a885d29180a47c3f2d` | non_address_book | unknown | unknown | verified | n/a | `0x2be116ea7339943c40c3195f29ee55c418e9e797` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.openzeppelin.com/news/zerobase-token-audit](https://www.openzeppelin.com/news/zerobase-token-audit) | OpenZeppelin | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [ZeroBase_V2_audit_report_2025-09-16.pdf](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2025/ZeroBase_V2_audit_report_2025-09-16.pdf) | Salus Security | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [PeckShield-Audit-Report-ZKFI-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ZKFI-v1.0.pdf) | PeckShield | Audit | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [PeckShield-Audit-Report-ZeroBase-Vault-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ZeroBase-Vault-v1.0.pdf) | PeckShield | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [ZeroBase_report_2024-12-24.pdf](https://github.com/Salusec/Salus-audit/blob/main/2024/ZeroBase_report_2024-12-24.pdf) | unknown | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4681] www.openzeppelin.com/news/zerobase-token-audit — no match: Extracted 4 contracts from scope section. Audit date from title: September 8, 2025.
- [4682] ZeroBase_V2_audit_report_2025-09-16.pdf — no match: No reason recorded
- [4683] PeckShield-Audit-Report-ZKFI-v1.0.pdf — no match: No reason recorded
- [14359] PeckShield-Audit-Report-ZeroBase-Vault-v1.0.pdf — no match: No reason recorded
- [14360] ZeroBase_report_2024-12-24.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.openzeppelin.com/news/zerobase-token-audit | ZEROBASE | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zerobase-token-audit | CrossChainTransfer | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zerobase-token-audit | SetTrustedRemote | unmatched — not counted | — | listed in scope | no |
| ZeroBase_V2_audit_report_2025-09-16.pdf | IVault | unmatched — not counted | — | — | no |
| ZeroBase_V2_audit_report_2025-09-16.pdf | IWithdrawVault | unmatched — not counted | — | — | no |
| ZeroBase_V2_audit_report_2025-09-16.pdf | IzkToken | unmatched — not counted | — | — | no |
| ZeroBase_V2_audit_report_2025-09-16.pdf | Vault | unmatched — not counted | — | — | no |
| ZeroBase_V2_audit_report_2025-09-16.pdf | WithdrawVault | unmatched — not counted | — | — | no |
| ZeroBase_V2_audit_report_2025-09-16.pdf | utils | unmatched — not counted | — | — | no |
| ZeroBase_V2_audit_report_2025-09-16.pdf | zkToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-ZKFI-v1.0.pdf | Vault | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-ZeroBase-Vault-v1.0.pdf | Vault | unmatched — not counted | — | — | no |
| ZeroBase_report_2024-12-24.pdf | Vault | unmatched — not counted | — | — | no |
| ZeroBase_report_2024-12-24.pdf | utils | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 55 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 14 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [4681] www.openzeppelin.com/news/zerobase-token-audit
- [4682] ZeroBase_V2_audit_report_2025-09-16.pdf
- [4683] PeckShield-Audit-Report-ZKFI-v1.0.pdf
- [14359] PeckShield-Audit-Report-ZeroBase-Vault-v1.0.pdf
- [14360] ZeroBase_report_2024-12-24.pdf

Fork inheritance lineage and inherited audits are included when available.
