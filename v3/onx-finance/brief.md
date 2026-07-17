# Agentic Audit Brief: OnX Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: OnX Finance (`onx-finance`)
- Website: [https://onx.finance/](https://onx.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, bsc, ethereum, fantom, polygon
- Contract surface: 149 unique implementations (149 raw deployments)
- Coverage basis: 2/5 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $198,399.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for OnX Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across avalanche, bsc, ethereum, fantom, polygon. Structural roles: 3 core, 1 infra, 1 supporting. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (3), infra (1), supporting (1)
- Contract kinds: contract (5)
- Detected standards: erc1967proxy (3), erc20 (1), ownable (1)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x5716749e23c94c0d03ed03b9ab951d6686d385e1`, chain 1)
- UnnamedContract (`0xe0ad1806fd3e7edf6ff52fdb822432e847411033`, chain 1)
- UnnamedContract (`0xfc97c0c12438b6e4cf246cd831b02fef4950dcad`, chain 1)
- UnnamedContract (`0x50dfd52c9f6961bf94d1d5489ae4b3e37d2f1fe7`, chain 56)
- UnnamedContract (`0xeb94a5e2c643403e29fa1d7197e7e0708b09ad84`, chain 137)
- UnnamedContract (`0x27749e79ad796c4251e0a0564aef45235493a0b6`, chain 250)
- UnnamedContract (`0x3d8f74620857dd8ed6d0da02ceb13fd0ed8ba678`, chain 43114)
- ONE (`0xc1330acbbce97cb9695b7ee161c0f95b875a8b0f`, chain 1)
- ONXFarm (`0x168f8469ac17dd39cd9a2c2ead647f814a488ce9`, chain 1)
- StakedONX (`0xa99f0ad2a539b2867fcfea47f7e71f240940b47c`, chain 1)
- Team (`0x424b1ae0af693d4577dde25081e970cb656013c7`, chain 1)
- Vault (`0x3bdf1977d87edad8e0617efcea958f6d43a4c30e`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/5 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 137 discovered implementations shown in the inventory but excluded from coverage (3 third-party/infra; 15 standard proxy/library)
- Proxy deployments represented within implementation groups: 22
- Confirmed-live implementations: 12 of 149 unique; 137 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/142
- Verified + Unaudited implementations: 140
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 149
- Raw deployments: 149
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 1.4% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ONE | unknown | project_anchor | own_supporting | 1 | ethereum | unit-390220 | `0xc1330acbbce97cb9695b7ee161c0f95b875a8b0f` | ✅ Audited |
| ONXFarm | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390210 | `0x168f8469ac17dd39cd9a2c2ead647f814a488ce9` | ✅ Audited |

### ⚠️ Verified + Unaudited (140)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x2d8ba08c19ae55bb785ca5b3c720f78917aafc4f` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x84db6ee82b7cf3b47e8f19270abde5718b936670` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xc12ebcedc914b3f52022cda98c92e3b95e109dae` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd01ef7c0a5d8c432fc2d1a85c66cf2327362e5c6` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xe95a203b1a91a908f9b9ce46459d101078c2c3cb` | ⚠️ Unaudited |
| AETH_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39b42a2008f35a36922389100d2c71c3b902b6d5` | ⚠️ Unaudited |
| AETH_R10 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1d67526833263bb359a715e3e955bff864390f6` | ⚠️ Unaudited |
| AETH_R11 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a63503151acfe6d06a33cd41416b8594c101e3b` | ⚠️ Unaudited |
| AETH_R12 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b9c04c5f884ebfad7af7e0351bc03c080f70300` | ⚠️ Unaudited |
| AETH_R13 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c906f8759e68899c487304246532fc4be93d0f0` | ⚠️ Unaudited |
| AETH_R14 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5835bff99cfd43872ba6a90cd8a0a8cb24828ccf` | ⚠️ Unaudited |
| AETH_R15 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a9366f02b6e252e0cbe2e6b9cf0a8addd7b641c` | ⚠️ Unaudited |
| AETH_R16 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e5e5cf3652989a57736901d95749a326f5cb60f` | ⚠️ Unaudited |
| AETH_R3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x496b352514fabca14845651cfdf0b548f3d8617d` | ⚠️ Unaudited |
| AETH_R4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23f7d037f5d02d0ba37571e717191776c4c1181f` | ⚠️ Unaudited |
| AETH_R5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x253f7e05d7f2cd1197d98fe8716e1ef5f803b8cc` | ⚠️ Unaudited |
| AETH_R6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe5dea3569e16d8a0a5449378087f1e80a8e737f` | ⚠️ Unaudited |
| AETH_R7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7c00d3ff2c9e6ceacfb206108f4661778d0784b` | ⚠️ Unaudited |
| AETH_R8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1e6e6247aaaf7e32850003c8e32d955e95b57a7` | ⚠️ Unaudited |
| AETHF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66bea595aefd5a65799a920974b377ed20071118` | ⚠️ Unaudited |
| aMATICb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef614270f356d20f9fc45910b34ef71383cfeb7` | ⚠️ Unaudited |
| aMATICb_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f9e9f51ac2ac8f1186ed1ae7264903d2122c770` | ⚠️ Unaudited |
| aMATICb_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc91bee07045e36b77c8aa3b6f51d9ec8a89a0d8` | ⚠️ Unaudited |
| aMATICb_R3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6453712c6758f548efc2277e8302588cccc5a7` | ⚠️ Unaudited |
| aMATICb_R4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42f91df19b5bbeca0bc1ed488e282090dfeed868` | ⚠️ Unaudited |
| aMATICb_R5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6e39571fa413b8d3e1b47ef907222c84f800ac2` | ⚠️ Unaudited |
| aMATICb_R6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4502103dd36c5595dccedf33e7308c61428ce3b` | ⚠️ Unaudited |
| aMATICc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46a0cc1ad0710e6fafd6b22395c5f3375a1c9d8d` | ⚠️ Unaudited |
| aMATICc_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x887214fcd6c29d99adb8dd9d225b2f85d3e301fd` | ⚠️ Unaudited |
| aMATICc_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1352c426168895f3682becfa5821c9874a43e6ef` | ⚠️ Unaudited |
| AnkrBond_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e56ec889e5a3f8771862dd765ec76bfed3e3a9c` | ⚠️ Unaudited |
| AnkrFuture_R0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5184b698c147202621b57878b4f5d1b661115e7b` | ⚠️ Unaudited |
| AnkrTokenStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c87cc2153d25f8d8b95ea3c04ab22583285408c` | ⚠️ Unaudited |
| Config | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd3a6c3e9e823e7c13fb0ee71f9360bacdd1a42e` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34641ffa430833ce88599d3bd4d80299b33b0020` | ⚠️ Unaudited |
| CrossChainBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6d4fe092bf124438eff841084ecedc575c44ebd` | ⚠️ Unaudited |
| CrossChainBridge_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aeed0ce13064f6658ade6753b80af20f997d21d` | ⚠️ Unaudited |
| CrossChainBridge_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a7ac37c6b9a10e0c68051390695546a5605f3d` | ⚠️ Unaudited |
| DualMaticStrategyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x13c6f4d1d9e54eda33ab97c951bfb8b24dbde15a` | ⚠️ Unaudited |
| DualMaticStrategyPolygon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6b42a98af10c2e94a6951c94b8ac5b5eeb23c8af` | ⚠️ Unaudited |
| EthPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x497338112ea688109203629311b78e537d7949dc` | ⚠️ Unaudited |
| FETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ec2096e42634fe6971ba8a52460bf4ac87d0aee` | ⚠️ Unaudited |
| FETH_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170da5efcf563e5a5445ca7685801913c4233934` | ⚠️ Unaudited |
| FETH_R10 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac2e0b6db96f345ee19fda8a9be5907e996f335c` | ⚠️ Unaudited |
| FETH_R11 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e3b11f36102be32edb4a1ad3cae4b9c2f1816ef` | ⚠️ Unaudited |
| FETH_R12 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1c7bb5c6028eb5e81db3ddc13364231df168167` | ⚠️ Unaudited |
| FETH_R13 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb713053a8fe0becd69ef9cce4e24524133979926` | ⚠️ Unaudited |
| FETH_R14 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3facaef31766a1a0dfb02d845ccf3e252182f0fa` | ⚠️ Unaudited |
| FETH_R15 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7b212a0d452cbbc89c25d6d7e388ad5898a9aa1` | ⚠️ Unaudited |
| FETH_R16 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d0d468d350ab6c646f9d68e1f3b0cd6c43eabc` | ⚠️ Unaudited |
| FETH_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x243a57d66968db226b47ed805cbb45ae279c29f7` | ⚠️ Unaudited |
| FETH_R3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f9a15446c3f34dff5e79f1ecb55d4059e4fe4c1` | ⚠️ Unaudited |
| FETH_R4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3622f64058e045b69a57bf5fc9d35162d45dd1d7` | ⚠️ Unaudited |
| FETH_R5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ed03acac0e5f07ec65cb2331e6546d7709a2379` | ⚠️ Unaudited |
| FETH_R6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1c25b7d1de63a7535a533c75ce551949c7e87a1` | ⚠️ Unaudited |
| FETH_R7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x549ef3149443ed0a6849ef554f4cf380a5629462` | ⚠️ Unaudited |
| FETH_R8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566d9895e0b27df206a53cae67ad67064e1b2294` | ⚠️ Unaudited |
| FETH_R9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc21fb8838fed54320d33a7b27541edd3c310a6de` | ⚠️ Unaudited |
| FutureBondAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8cb2c9f523c79e07582fe40f0677ef22fe3bffc` | ⚠️ Unaudited |
| FutureBondAVAX_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a83238dc1b47e58705dbc7ab42ddfaac3a4e2ec` | ⚠️ Unaudited |
| GlobalPool_R21 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3344870d52688874b06d844e0c36cc39fc727f6` | ⚠️ Unaudited |
| GlobalPool_R22 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4748b69634c7d807d0ea5aa3647267549ecfce15` | ⚠️ Unaudited |
| GlobalPool_R24 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f33583f24307c1b64a893e1c41d9f256c2c3481` | ⚠️ Unaudited |
| GlobalPool_R25 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b804ed58d6b3ba30d9b4776f87d54895c40a9b` | ⚠️ Unaudited |
| GlobalPool_R26 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4017e2484f1c6d91eb1c0f29ba8a44506131e64f` | ⚠️ Unaudited |
| GlobalPool_R27 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3649b0c6e382890362fa021455a7052a54c90ee1` | ⚠️ Unaudited |
| GlobalPool_R29 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed81030ba249d99b71281aa78dd3046e6fd04f0b` | ⚠️ Unaudited |
| GlobalPool_R30 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6d62c8c8d094ea3da1160b66f94435a88185fd9` | ⚠️ Unaudited |
| GlobalPool_R31 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cfdf3d3351bfb0e52175aecc3d435cfe93a362f` | ⚠️ Unaudited |
| GlobalPool_R32 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b31a26e8439fd4b435d8e3aa557c06acec878d4` | ⚠️ Unaudited |
| GlobalPool_R33 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa406131ee1ced40de8cc937497c65f5ad5cfd374` | ⚠️ Unaudited |
| GlobalPool_R34 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15fa1b6dc4eb5d42e427db1aeeac1294530113d6` | ⚠️ Unaudited |
| GlobalPool_R35 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31e01ade5c54234c99c76fde83fe5c967abe5091` | ⚠️ Unaudited |
| GlobalPool_R36 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03e0e63b58d338f954ff0767bc71dff8240d9eed` | ⚠️ Unaudited |
| GlobalPool_R37 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7df5032aaf311a3d3747129ba39e6da68d35e9e1` | ⚠️ Unaudited |
| GlobalPool_R38 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x624d9a92c766981c2e84020f344694cfd5db2fce` | ⚠️ Unaudited |
| GlobalPool_R39 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd201a7df1d0f7e066efdd448cbc8433f0b88c3e9` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40d6fc59fe5c3ecb045f9d7fe0bb5e18e7dad0a5` | ⚠️ Unaudited |
| Governance_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d3640a5a98e0fb865d63a1ecb7fb6bc78ae501a` | ⚠️ Unaudited |
| Governance_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e6616089e3d78faa9b6a1361b67e562c1600871` | ⚠️ Unaudited |
| JoePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x454e67025631c065d3cfad6d71e6892f74487a15` | ⚠️ Unaudited |
| MaticStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b187b46d358982f464ca1e0c071e050a367cca3` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23261a2e70b8e1af37996ab0caf5a4ad5d0630b0` | ⚠️ Unaudited |
| Mine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd89b146aa0de195cc94ed9cdc4b52155a98b2c` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30d1a19ea928ccf46634cbc2944d2d89be636f22` | ⚠️ Unaudited |
| Offering | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42ee6669183bd26a45a249d57efdcc18a2a794f3` | ⚠️ Unaudited |
| ONB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x3929122b2799b9f76ab908dc0b3c2b9fdafc30e1` | ⚠️ Unaudited |
| OneMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ebb421ab8f626b410ec81f56e71583f351b9972` | ⚠️ Unaudited |
| oneX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3d2f183eb5962b713ea7f53bfa8fb5da9a63d95` | ⚠️ Unaudited |
| ONS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9f0278b8a2913979564900be38d0ae551ae51fb` | ⚠️ Unaudited |
| OnxAlphaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x002bf57f92d671cff490deff976707f9a33d9f17` | ⚠️ Unaudited |
| ONXConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c153938d19d4d21a8033621b6d1dc9760f7c083` | ⚠️ Unaudited |
| ONXFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2583c7e6a0391e6029e6b88bccb1364a8d8505c9` | ⚠️ Unaudited |
| OnxLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0413a7ccc50b3c4fea967aaa9cc4233e224f94af` | ⚠️ Unaudited |
| ONXPlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72c40ef11c61f91d579a67e653b9ed5197bc9d46` | ⚠️ Unaudited |
| ONXPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47f3e6c1ef0cbe69502167095b592e61de108baa` | ⚠️ Unaudited |
| ONXStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45d866a51d76d7288a316a9095430828b0137d6f` | ⚠️ Unaudited |
| ONXSupplyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2091b4e8e0c52405096c5087fba692655bb1e2f8` | ⚠️ Unaudited |
| ONXTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51f3a15b0effe703dea9b4627deea5400ad49d66` | ⚠️ Unaudited |
| ONXToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8438c3115d90b6d0b21be5718c773c7258dfcf39` | ⚠️ Unaudited |
| PolkadotPool_R0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2434fa6793c62b8fbd8f44565a8cf2c1eaf4b2c0` | ⚠️ Unaudited |
| PolygonPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04f410c5158685db2e0775f42f4f676777f976b0` | ⚠️ Unaudited |
| PolygonPool_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf84834407090c3b159f4f78d2d51bba3175a7f2` | ⚠️ Unaudited |
| PolygonPool_R2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6913030b113f368b511d1ef13b53e817c6071f0a` | ⚠️ Unaudited |
| PolygonPool_R3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f07935a56686fb83def4a935d1248f2c1635ff0` | ⚠️ Unaudited |
| PolygonPool_R4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x359e25a9b4aad2960c413f5bcd56bca8fabdfe40` | ⚠️ Unaudited |
| PolygonPool_R5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc1e4e6bb2f2a9797e1314b7848f28e6e1a74f9` | ⚠️ Unaudited |
| PolygonPool_R6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb6805e51ea42741d17d1c1f59e01fbe80aba389` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0232fabaf9c6812534207ed34c5650b089edf413` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8025d4deda0c7512d44438a7dc597612b4108f07` | ⚠️ Unaudited |
| RewardPoolTemplate_R0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901e5564f95f47bbcdc7536595a4922d56f61fab` | ⚠️ Unaudited |
| RewardPoolTemplate_R1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44bdc8fde61ed210f872f7f7e5c9c0cf471cda2e` | ⚠️ Unaudited |
| slpONX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x815476972492fdc3ece86e843531531b7fff6b18` | ⚠️ Unaudited |
| StakedONX | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390213 | `0xa99f0ad2a539b2867fcfea47f7e71f240940b47c` | ⚠️ Unaudited |
| StakingConfigProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2d3f893c7c45c2be3ec63cf5385deafd7ece6aae` | ⚠️ Unaudited |
| StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x19eb6536777713acdaca8dd9a3ad9843d74e9e3b` | ⚠️ Unaudited |
| Storage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8773ce4853d2bbc6244c7933b786e0d6d851abcf` | ⚠️ Unaudited |
| Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d0a486c7ffdbea510b73f2135f3064a9cc8500f` | ⚠️ Unaudited |
| StrategyAdapterAvalancheV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x077a52a60e61451f3de6ce4722feb2fe0acf1696` | ⚠️ Unaudited |
| StrategyCommon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03811232c83c85e2fe7776913400868534f142b2` | ⚠️ Unaudited |
| StrategyEthOnx | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0592311414e3478dca7e1cdc89e6c23fd6b59abe` | ⚠️ Unaudited |
| StrategyEthUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ccb0b288695c98dc23ab72ed4c49306bf8c3edd` | ⚠️ Unaudited |
| StrategyEthUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22ca8bfbe55b88109ae8f5b26e7d2223caff6f1d` | ⚠️ Unaudited |
| TAlphaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d0b92ecd58864441be4cad41926af2d24030724` | ⚠️ Unaudited |
| Team | unknown | project_anchor | own_supporting | 1 | ethereum | unit-390221 | `0x424b1ae0af693d4577dde25081e970cb656013c7` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60cb590669f9d3a66e8f563dcda03a1519281539` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x26dcfbfa8bc267b250432c01c982eaf81cc5480c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x27ccacc5eb28625d2be45c4ac29e5f1c3637beb3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x30176cecb6dbf0869d59493142925a0287b12216` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x42a1485c9d5d16b778e2a0752654cbd5cc511c94` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x59f767ec659e9fe01ebcf930465e2ad4cc0f208e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x99534ef705df1fff4e4bd7bbaaf9b0dff038ebfe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xcfd4b4bc15c8bf0fd820b0d4558c725727b3ce89` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x008e6bf114d686713dc233487e360a158433e519` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x067e7586eb8733bf108167c15cbabee4c629c37a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x008e6bf114d686713dc233487e360a158433e519` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x00ff188e1999bcce5863109c2521e9fa6d66d952` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x019ba0325f1988213d448b3472fa1cf8d07618d7` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-390222 | `0x3bdf1977d87edad8e0617efcea958f6d43a4c30e` | ⚠️ Unaudited |
| VaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe07f0adbef45104e937de41e2e5e267d1c7fa897` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390212 | `0x5716749e23c94c0d03ed03b9ab951d6686d385e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390214 | `0xe0ad1806fd3e7edf6ff52fdb822432e847411033` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390215 | `0xfc97c0c12438b6e4cf246cd831b02fef4950dcad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-390219 | `0x50dfd52c9f6961bf94d1d5489ae4b3e37d2f1fe7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-390216 | `0xeb94a5e2c643403e29fa1d7197e7e0708b09ad84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-390217 | `0x27749e79ad796c4251e0a0564aef45235493a0b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-390218 | `0x3d8f74620857dd8ed6d0da02ceb13fd0ed8ba678` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Token and Farming Contract Audit](https://onx-finance.gitbook.io/docs/audits-and-contracts/audit.md) | unknown | Audit | 2020-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [onSynthetics Audit](https://onx-finance.gitbook.io/docs/audits-and-contracts/audit-1.md) | unknown | Audit | 2021-02 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 6 | high |
| [Lending Audit](https://onx-finance.gitbook.io/docs/audits-and-contracts/lending-audit.md) | unknown | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Alpha Audit](https://onx-finance.gitbook.io/docs/audits-and-contracts/alpha-audit.md) | unknown | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17873] Token and Farming Contract Audit — matched: The report explicitly states 'The OnXFarm contract pass all audit items' and discusses functions of OnXFarm. No other contract names are mentioned in scope.
- [17874] onSynthetics Audit — matched: Scope table lists 7 contracts; OneMinter and Vault explicitly excluded from scope.
- [17875] Lending Audit — no match: Contracts are described in the Business Security section; no explicit scope table but clearly the audited contracts.
- [17876] Alpha Audit — no match: The report explicitly lists four main business contracts: AlphaStrategy, OnxAlphaVault, Controller, TAlphaToken. No file paths provided. Audit completion date is 2021.08.03.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Token and Farming Contract Audit | OnXFarm | own contract | ONXFarm (selected) `0x168f8469ac17dd39cd9a2c2ead647f814a488ce9` — deployed 2020-12-17 18:55:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| onSynthetics Audit | ONE | own proxy deployment | ONE (proxy) (selected) `0xc1330acbbce97cb9695b7ee161c0f95b875a8b0f` — deployed 2021-02-04 11:42:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| onSynthetics Audit | ONS | unmatched — not counted | — | listed in scope table | no |
| onSynthetics Audit | ONB | unmatched — not counted | — | listed in scope table | no |
| onSynthetics Audit | Offering | unmatched — not counted | — | listed in scope table | no |
| onSynthetics Audit | Timelock | unmatched — not counted | — | listed in scope table | no |
| onSynthetics Audit | Mine | unmatched — not counted | — | listed in scope table | no |
| onSynthetics Audit | StakingPool | unmatched — not counted | — | listed in scope table | no |
| Lending Audit | ONXPlatform | unmatched — not counted | — | described in Business Security section | no |
| Lending Audit | ONXConfig | unmatched — not counted | — | described in Business Security section | no |
| Lending Audit | ONXFactory | unmatched — not counted | — | described in Business Security section | no |
| Lending Audit | ONXStrategyCollateral | unmatched — not counted | — | described in Business Security section | no |
| Lending Audit | ONXPool | unmatched — not counted | — | described in Business Security section | no |
| Alpha Audit | AlphaStrategy | unmatched — not counted | — | listed as main business contract in Business Security section | no |
| Alpha Audit | OnxAlphaVault | unmatched — not counted | — | listed as main business contract in Business Security section | no |
| Alpha Audit | Controller | unmatched — not counted | — | listed as main business contract in Business Security section | no |
| Alpha Audit | TAlphaToken | unmatched — not counted | — | listed as main business contract in Business Security section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xa99f0ad2a539b2867fcfea47f7e71f240940b47c` | StakedONX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x424b1ae0af693d4577dde25081e970cb656013c7` | Team | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3bdf1977d87edad8e0617efcea958f6d43a4c30e` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 124 |
| upstream | 1 |
| standard_library | 17 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=2

Zero-match audit list:

- [17875] Lending Audit
- [17876] Alpha Audit

Fork inheritance lineage and inherited audits are included when available.
