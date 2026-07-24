# Agentic Audit Brief: OnX Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: OnX Finance (`onx-finance`)
- Website: [https://onx.finance/](https://onx.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, bsc, ethereum, fantom, polygon
- Contract surface: 367 unique implementations (375 raw deployments)
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
- Outside the address book: 355 discovered implementations shown in the inventory but excluded from coverage (8 third-party/infra; 10 standard proxy/library)
- Proxy deployments represented within implementation groups: 22
- Confirmed-live implementations: 12 of 367 unique; 355 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/142
- Verified + Unaudited implementations: 140
- Verified by bytecode match: 0
- Unverified implementations: 225
- Unique implementations: 367
- Raw deployments: 375
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
| ONB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3929122b2799b9f76ab908dc0b3c2b9fdafc30e1`; ethereum `0x810eaebf61be39e3c0c2921f025ea584edf5ff7a` | ⚠️ Unaudited |
| OneMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ebb421ab8f626b410ec81f56e71583f351b9972` | ⚠️ Unaudited |
| oneX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3d2f183eb5962b713ea7f53bfa8fb5da9a63d95` | ⚠️ Unaudited |
| ONS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9f0278b8a2913979564900be38d0ae551ae51fb` | ⚠️ Unaudited |
| OnxAlphaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x002bf57f92d671cff490deff976707f9a33d9f17`; ethereum `0xea58e5c9dbf9232c18e8c5124674d1888d3ae725` | ⚠️ Unaudited |
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
| StakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x19eb6536777713acdaca8dd9a3ad9843d74e9e3b`; ethereum `0x569c1e3e128893431449d2c6c0dc156f33f49b68` | ⚠️ Unaudited |
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
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x42a1485c9d5d16b778e2a0752654cbd5cc511c94`; ethereum `0xa955935faa6cd40e2ed779c090d4d1000e533fa1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x59f767ec659e9fe01ebcf930465e2ad4cc0f208e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x99534ef705df1fff4e4bd7bbaaf9b0dff038ebfe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xcfd4b4bc15c8bf0fd820b0d4558c725727b3ce89` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x008e6bf114d686713dc233487e360a158433e519`; polygon `0xcaec973ac0d242906621d31b9ea4d8bdef013e17` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x067e7586eb8733bf108167c15cbabee4c629c37a`; polygon `0x99e70914743d4fd560a22ebc9305132ebf63d392` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x008e6bf114d686713dc233487e360a158433e519`; avalanche `0xe7d244b3264a1453aa60d9e42c461102d05eca37` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x00ff188e1999bcce5863109c2521e9fa6d66d952`; avalanche `0x47c6f8949e26ba3d5e6b210aff546421c25a2439` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | n/a | `0x019ba0325f1988213d448b3472fa1cf8d07618d7` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-390222 | `0x3bdf1977d87edad8e0617efcea958f6d43a4c30e` | ⚠️ Unaudited |
| VaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe07f0adbef45104e937de41e2e5e267d1c7fa897` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (225)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07c0698b608cadac67aaf6a18f69ae80f1adb2d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a07b85cdbf363a131e67d08adfd5a064279a512` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a60206bcb81fd47e80df14d2312812f8e3dfe2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e624b12d2b842b5aeefb22a22f5188242007646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10a8dc3c0db7bdfe1db36d113c2685e60daafeb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121ef4eec2bb4d5ed91347166f02c0763af1c49a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18c14896de9cf39f7e9ebc15eb416eb5fbd46b1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19a3eab4e6675eb9888c4c6a188f32b4ca5eb6d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a84c14bcf82bd9a2a9164ab1d927876dbfdc165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b72255a11df705bb598e670830e03a19f2d242f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fa1b8d94b922e3c9821f66363a75237c36096af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2109923044d17ad2563917862d6f02c2172e4509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x245bac97ee59d36f9af6aaea5c924794a8ae485e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x284166fe39b365e6aac904ec637b56be161f6e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2abce7c4c77e215fccc189e02fc5d2a30b52a06a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x306447bcf6646ea3676074af2f9c8f96ef8d9a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31c58fced0152dad3bb21d1f0f10d804c9db1e99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33652302b33638f54fd2394a8198770fd3c3727c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x342ef3935b94c2156eaa38fcee303830884e219b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x347a65d3d0ce46746964b14c9399c113cc3ef312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3660315437a0be9d64517e98b9f5ffe8a896306d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x367aa5935c19250a7c4a1590a2dfd6faad06763d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3715fb1c92727a9f42f16aeb8315ce02e5387e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bd30d48cc4bb700edbb7cfe62fd05e91190a2e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e92baf90f03a0df688edcef04b02cb7ab806982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f0b56ff3e1243db160b7c30787304a163f3b199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40f8b8e6def11fe30aa1193611222ea748f4cacc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42066823508282b721406bc748b64b9b54dd51b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42e9aa655dff299c90e5b008527270182ad7f2e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431b1f5356ecac2d86b2313907b747b16d11066f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4501d7d28b8a086af283e5ce73c8d3091028d1fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4663dfc782e8da21b217e55dcaa9fc38ac73be90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53280ab1362a228b0d78b08ac949006fe024671d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54c532e367031f56c401c6024ac4abeff2b03534` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390212 | `0x5716749e23c94c0d03ed03b9ab951d6686d385e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x596d0d72e17f6cf7deddb2fdee7940c3a2a4308b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a78737a40eb416ec145dc2c4515b8e8223c2cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e60d73437accc3294a8edf59639c1dc1baf0d75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ea1b54c522f279ecc0182d9b35229d6435d42b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f16b9f5a0521bb49c1a7854f8d1f55e74e98f34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61a24e2ca23c789a3e33f3cc9930ab199ca93892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x637c871c559ade45b37074fcf3b8081ec81c55fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657b689df020cc9c4dea4bab984ea23dc5bacbdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x659217cda99658aeba399b4a79fb03d96b3c46bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65deef3a08eec203700116a8d474c98a7512d0ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6901aac9813f3efaae32f44e9b579f08a12707ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e88216162af2388509da76d844cf77931f86de7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7058ee5467edef417746aab0b8cabbbe36ef1798` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73453ba0337ce0b215852d07843e557a0ef3df98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734ffe152dd99523f9d35695b9ac7f1680cf4f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x741cfdba1eb4edda66f59163e66d7c1aaef4a0b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ac7d1d27b0934f936b015054807d55aeaf1983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ffe54b2357df4ddd6e769aa0c5dee15a2601d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81edcb05b70b67fe093ba5a6830810a71f4ff588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x827f6cbfe9230a7daa000057cdb5a26dcde77bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82a0b1ac2819a8db4f28560475ec5a52af6c38f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8578432f41118cff929c762adf170aef88e79b90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x895c8fa0360cb7d13ee4ace15f46e73db407e1a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8991314d7ac594b6ba91e590145adf9e7d5c8b20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d47f6fd4602b1ecf7928c0f1aef9c215e3596b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901037e4e90d380c99dac5c792bb9320a65a2345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x942c67f72ea0649afee85df4ea9c3c4a859879e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9469f2cf03148ab166cb31473ed400fa5323482f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96699b24f573c2cbb76c3872724556fda828765b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9792ee4c36a622a8cf9566b037c57519a9fe8a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d1b6bee57564834b351336791b2a7023a13102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d0bc1b5dea868cda4f01496f2fdcf39ad13122e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9db4afcabdb25c89424c88e720dd47d6be43bdbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dd6cb42d74117ad568658187fb9f0bc6ce7cd96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f6197388d38646dadc67787cf362eb1b9ab78d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5e9b40d8ea5752c2cbdc334cbbdebf4c873f7c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa527dd94bcbaf25998afc60a99e8a88cbc21cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabed1eb32d8c3750f52db4511366bb4c7ac9cc71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xace2e090bda4ead0eff2c4f71ca7ddda480e7401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadb6d1cb866a52c5e8c1e79ff8e0559c12f4d7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae0641257008749144bf68c291d93e6ad092069c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb761b8b588ff6b3c61613f094c988e78f59cc870` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8790c911fa32132eddcfd250454dff0448682b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8c92dc4c0e9936b44f124a87071b3d4b2db099c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc2346c3c7f3998a12a1c8e7be44734ecc832763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd3a37e3690ad4e145c39983d0aaf8bd5f5e2f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd852af274e5534b5c7e134b3535745680529fb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbdc6b0a1bd003eb9b6c72f5103e96466faa16739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbff8affc67ffbf7a624fc49f8e9ae428e04bd37d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc372ea6c4e0831dc639aefeee0c029f66dfeda83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcedb7921013a012c5538c0d2925a90aa817bef4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ca5db3f1075381a28b123b056aaccacc3aaad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd307560fd5c57521ace562388365368f5b6f4d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3ee142eac8ca1290ed2551a9d87ba7f0c42ac1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc6f222c4504c43225a89b84e3aae15ad0dfdf0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdee9279e9ea7588a5a9a1ad31e6a2f81a05fce03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390214 | `0xe0ad1806fd3e7edf6ff52fdb822432e847411033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2cd0606bd927b8ac9960f70322e494d307461fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe543dc30dc6921f937ef307830ab04b3a8749687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe64796fcc97c33a2193ba60f013f3fa5d4712d56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe659fa84e0c687760245046ba63329d44320997c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe72d387312fd477d0531ea5595ed9244b7e28c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaae5cefce1092eb3ea1da7622b3cf4fb20b8b81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee57addede0a2201505ba3cd4d5f86573b1615f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2982ea85a174e9b10361f499f4c0abb531a5a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb4dcd8b2011502bdf2ddf4cec5264ba31e5cf5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390215 | `0xfc97c0c12438b6e4cf246cd831b02fef4950dcad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd5ec4a9fd0975e00b1554790d6f15d42352bda5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff486de4f608fb016c0d125ad0e000774fcdd39b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-390219 | `0x50dfd52c9f6961bf94d1d5489ae4b3e37d2f1fe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07cb84c4c30f5809e5f15b5df2b51a27eb627bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0a1efaf7dd833f9d8ef9f2f095bf1d6c725ff110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d553115d2c1e2b734d66de1eba4bae1a88cb175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f16cbdaf6c8115cdde59876cf232903e95d488a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x185a1cfdb7173b224d08e61f1cb21fd5fd6ee8cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18e01422f6045e969d7bf11034fec350cea13854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18fb068f33666f2e30a82de47166b78388f686d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a130be9a0e9046936e5461d3e8727b6af7d0c2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x248eecc8286a8c6484b4a87e1f32f0bc2d7971d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2582e171e8c883a5d51e2dd818ef9bd3623244be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x260e6fb68c787cda2e9ea104f9e3a3923e4119f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2eb7eaa1a921b3c33dce214ca228578189783b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x32b750721ad93f62b21402526354d53ac46953c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x353856185fbb65a098b971b6d492cc3c245d9a59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x36d14424cc5a18893e93a0f8fdd42dc40562887e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3f789f805e0e82671e715af8675209be8c6970f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43be6849bc355735d77238acfdbceb7be8673f02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4eeb7d36474c2babceb0b3ae2224091b861abe4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x58bc3b5949c6784819a606645d616d8d2da7594b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5bfeee0db8a1e3f736e531e594f1fe58b3fbf4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c5533d3239bcc63d5f207679b709a4dda4e2862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x60b611a1315145bc76568db7bd1088e259deaf0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6cbd2d99ca3c06c2b87044467b59ca259d0cda70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6db0230310b83e0c93f7931f2768236e72fe72c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x70f25a138d8ff5d6091ce87e2af6ba4f846cdef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76c9e123969b9a768a5de44d145af2c19dd05bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7768690fe5988a9564cd5ac8ee3e46718fb76864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e51b2929e0d7a43840367935cbce071d20e5bef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e9da60002daf64778c78ac90dd5bdc9391acb00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8244523edb3f8ed603a4f890f35354c51fb35e2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x849031f78970639f8dc9dc3e962e0d0079d1051c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87c580dee8521b611e6144fac3d3740091b41b49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x897fb124acdf5a685d9258645ffee0058464817a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x89f36efd3ff08981c09a023e313bd8c95ca6a696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d20fb2f4f96e897fed7e3e50f8a403afc59da23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9767218525a443ae1b04a2a84cf2f6d646c2fa06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x99176b36795094e6527a0a52f160eeb0e2b0944e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9989dea94ecb5d872cd7d479ff17a567ef5efa47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d1c2b86d9ba7b6314caff6bbed81bf162dc3a3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6f73d525e206184189b870f082dd4bca0039cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa78a94e070643f077fca170cbf79d7c4e07afb6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xadd9a5acac22eea859c0d75bcc4e72ba4bc9b94b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb05784bfab4b38fb8ce7377864c5518d6bcaaa65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0e44b27ce440c07b54615c88ea516e4e63e2900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1cb85d2a0970f853d880cac32ad45b51413191d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb760a23924a23e5270c659349c753d16e7c1078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc033338f7605b1555b1d3fc2a3626b2b76a0e042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2c18c1c91cc24728f180626a13824b59256310f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc7d3b145c747147a259499db47b6c0cf7bd7b6a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc910b92c2573b8f617e43bf501ab58fe815806c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb3bed187fea28cf329be9e284d0f20c0455d2ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcfaa870ab0fd587733a7d7fbcb4eacd6f4a5262b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd1ba144d65e92b4d3c8a3cec96faee309ba985d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd87141d7cdc3eb77960d9fef1df24c12cc33e26b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd8c8a16d6ea480d811a4dc2006d6010c7255ce89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9f63cc588822cd3ef802d900808e946d13ce609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe020b38e5c6d22e5b489b714e9c396cf84357800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe1d4a0440874ce8f4f92e60f452e164b392550d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe663f7d6afb3a3ef458d5c4a068e29368a46eb87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-390216 | `0xeb94a5e2c643403e29fa1d7197e7e0708b09ad84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf020de990036d5ae107860592bde0e53892f1531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf1ba3ef65262ee4058462e65a3a09a7571193400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfc3aea89db74cea9811daab6020483d26fa6fdcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd307a25e06b73f56696f3694f756dbe5baf705d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfe51de20719d05152ace63a069446bb5c89511db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-390217 | `0x27749e79ad796c4251e0a0564aef45235493a0b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0240269d999301d03aae390104584f7517f52ecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x02e9bc3ef29a3f51ede6e4c4f70fdcb894cd6cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07cb84c4c30f5809e5f15b5df2b51a27eb627bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a1efaf7dd833f9d8ef9f2f095bf1d6c725ff110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13c6f4d1d9e54eda33ab97c951bfb8b24dbde15a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1cb60aa01c14275c94fd38ad1b22307ad3e0ca0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d9d715e4e79affaea49d1133b274a6c51de8c86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2071fd6779b701aa71c4a48b8f37970160e5fe75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22b674b138aee397688efec88a6eb89b6e826aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23bb6d41f5bc707de8c2eb0428a4fe33df7d0247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x276f74c24cc4443ecb4967db77572be50aed4117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c858e3181988f2e4458f14768ae204e5bf2ee0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2eb7eaa1a921b3c33dce214ca228578189783b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x352f14fc0198d5ed1c1414ea0c7e898995bc4488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x353856185fbb65a098b971b6d492cc3c245d9a59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-390218 | `0x3d8f74620857dd8ed6d0da02ceb13fd0ed8ba678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4285eaa14cf1bb7296146be771020e44d32e370c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a9ec15444838ca8808fdb6290741ffc30083754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4decafacd4591e52f85e8fe69f82f2400176bb33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f30358661783fe8e8c899cd343339debdd496ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54720637fa477ed87cd06f674247a649a5168eb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x55f42961b3ad4e2a08f1780c7434dd8ec5f7fce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x62ca6f1640776070eca70e09d9af27352a43a5d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b42a98af10c2e94a6951c94b8ac5b5eeb23c8af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x70f25a138d8ff5d6091ce87e2af6ba4f846cdef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a3b806619fa6839e5b149686e1d5499a89c2341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8025d4deda0c7512d44438a7dc597612b4108f07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x852bb92461df9595404e2b7a60ba7e7477a5527e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8922e41342c6160faf4dc40f2c1fcfcd94e98779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x897fb124acdf5a685d9258645ffee0058464817a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8af4451ddd67701107105b4413988979b144d649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x91fa114eacbae08d578449a8a27d53344f9670a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9230adfd82ab4cd33806d3bd540b5204c1697db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99724201a60f4bc78c67a379137e88893a63c037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x99e70914743d4fd560a22ebc9305132ebf63d392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ee877279dfe8e5f20614db88e50cd72b4efdead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb137afa138e9aa3842cb7cd0ff1a97b5f056b437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb465e29c0566bfc220a2698a3f3110ffd4217073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb4a805ad532bb92501507c9eac27fd0bae4d68a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc267b0f8166d358bf44f2f5fe4ded045d23beb47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcaec973ac0d242906621d31b9ea4d8bdef013e17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce7aa78c918e26c8c5a9bb7579e1dd01830a2e31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd9f63cc588822cd3ef802d900808e946d13ce609` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc2f3fb2d9df45202893571bac855d40395bd642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc6d71e4ff42409a8834a6b97024485c3e25501f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe1d4a0440874ce8f4f92e60f452e164b392550d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe3d7e4505c4e45eda2fd997d0b260fc42c0b1a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe7c34e1946a10a3a28bed4b0cb5b7f0d85f5368d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8348db201d53a67dab330d73b9105d50e678850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf020de990036d5ae107860592bde0e53892f1531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf0ee02d7a07ae227dc0f723696ff8f1114be91c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1ba3ef65262ee4058462e65a3a09a7571193400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf7aca362510b327bdaca693611353b6a837cbdb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd127bc3b6153b043ffd8d7f38272593700b124c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 226
- Live contracts: 0
- Unknown liveness contracts: 226
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=226

Showing first 200 of 226 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | unverified unclassified | UnnamedContract<br>`0x0240269d999301d03aae390104584f7517f52ecd` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x02e9bc3ef29a3f51ede6e4c4f70fdcb894cd6cf5` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x07cb84c4c30f5809e5f15b5df2b51a27eb627bd2` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x0a1efaf7dd833f9d8ef9f2f095bf1d6c725ff110` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x13c6f4d1d9e54eda33ab97c951bfb8b24dbde15a` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1cb60aa01c14275c94fd38ad1b22307ad3e0ca0c` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1d9d715e4e79affaea49d1133b274a6c51de8c86` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2071fd6779b701aa71c4a48b8f37970160e5fe75` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x22b674b138aee397688efec88a6eb89b6e826aed` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x23bb6d41f5bc707de8c2eb0428a4fe33df7d0247` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x276f74c24cc4443ecb4967db77572be50aed4117` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2c858e3181988f2e4458f14768ae204e5bf2ee0e` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2eb7eaa1a921b3c33dce214ca228578189783b8a` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x352f14fc0198d5ed1c1414ea0c7e898995bc4488` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x353856185fbb65a098b971b6d492cc3c245d9a59` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4285eaa14cf1bb7296146be771020e44d32e370c` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x47c6f8949e26ba3d5e6b210aff546421c25a2439` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4a9ec15444838ca8808fdb6290741ffc30083754` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4decafacd4591e52f85e8fe69f82f2400176bb33` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4f30358661783fe8e8c899cd343339debdd496ff` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x54720637fa477ed87cd06f674247a649a5168eb6` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x55f42961b3ad4e2a08f1780c7434dd8ec5f7fce4` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x62ca6f1640776070eca70e09d9af27352a43a5d8` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6b42a98af10c2e94a6951c94b8ac5b5eeb23c8af` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x70f25a138d8ff5d6091ce87e2af6ba4f846cdef5` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7a3b806619fa6839e5b149686e1d5499a89c2341` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8025d4deda0c7512d44438a7dc597612b4108f07` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x852bb92461df9595404e2b7a60ba7e7477a5527e` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8922e41342c6160faf4dc40f2c1fcfcd94e98779` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x897fb124acdf5a685d9258645ffee0058464817a` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x8af4451ddd67701107105b4413988979b144d649` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x91fa114eacbae08d578449a8a27d53344f9670a4` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9230adfd82ab4cd33806d3bd540b5204c1697db3` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x99724201a60f4bc78c67a379137e88893a63c037` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x99e70914743d4fd560a22ebc9305132ebf63d392` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9ee877279dfe8e5f20614db88e50cd72b4efdead` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb137afa138e9aa3842cb7cd0ff1a97b5f056b437` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb465e29c0566bfc220a2698a3f3110ffd4217073` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb4a805ad532bb92501507c9eac27fd0bae4d68a1` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc267b0f8166d358bf44f2f5fe4ded045d23beb47` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcaec973ac0d242906621d31b9ea4d8bdef013e17` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xce7aa78c918e26c8c5a9bb7579e1dd01830a2e31` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd9f63cc588822cd3ef802d900808e946d13ce609` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xdc2f3fb2d9df45202893571bac855d40395bd642` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xdc6d71e4ff42409a8834a6b97024485c3e25501f` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe1d4a0440874ce8f4f92e60f452e164b392550d6` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe3d7e4505c4e45eda2fd997d0b260fc42c0b1a77` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe7c34e1946a10a3a28bed4b0cb5b7f0d85f5368d` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe7d244b3264a1453aa60d9e42c461102d05eca37` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xe8348db201d53a67dab330d73b9105d50e678850` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf020de990036d5ae107860592bde0e53892f1531` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf0ee02d7a07ae227dc0f723696ff8f1114be91c9` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf1ba3ef65262ee4058462e65a3a09a7571193400` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf7aca362510b327bdaca693611353b6a837cbdb2` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfd127bc3b6153b043ffd8d7f38272593700b124c` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1fa1b8d94b922e3c9821f66363a75237c36096af` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x284166fe39b365e6aac904ec637b56be161f6e4d` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e92baf90f03a0df688edcef04b02cb7ab806982` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfd5ec4a9fd0975e00b1554790d6f15d42352bda5` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f16b9f5a0521bb49c1a7854f8d1f55e74e98f34` | non_address_book | unknown | unknown | unverified | n/a | `0x928224b059d3865ce383df29137b88b3698adf80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81edcb05b70b67fe093ba5a6830810a71f4ff588` | non_address_book | unknown | unknown | unverified | n/a | `0x928224b059d3865ce383df29137b88b3698adf80` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07c0698b608cadac67aaf6a18f69ae80f1adb2d4` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a07b85cdbf363a131e67d08adfd5a064279a512` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0a60206bcb81fd47e80df14d2312812f8e3dfe2f` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0e624b12d2b842b5aeefb22a22f5188242007646` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x10a8dc3c0db7bdfe1db36d113c2685e60daafeb8` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x121ef4eec2bb4d5ed91347166f02c0763af1c49a` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x18c14896de9cf39f7e9ebc15eb416eb5fbd46b1e` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x19a3eab4e6675eb9888c4c6a188f32b4ca5eb6d7` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a84c14bcf82bd9a2a9164ab1d927876dbfdc165` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2109923044d17ad2563917862d6f02c2172e4509` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x245bac97ee59d36f9af6aaea5c924794a8ae485e` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2abce7c4c77e215fccc189e02fc5d2a30b52a06a` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x306447bcf6646ea3676074af2f9c8f96ef8d9a9d` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x31c58fced0152dad3bb21d1f0f10d804c9db1e99` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x33652302b33638f54fd2394a8198770fd3c3727c` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x342ef3935b94c2156eaa38fcee303830884e219b` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x347a65d3d0ce46746964b14c9399c113cc3ef312` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3660315437a0be9d64517e98b9f5ffe8a896306d` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x367aa5935c19250a7c4a1590a2dfd6faad06763d` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3715fb1c92727a9f42f16aeb8315ce02e5387e1b` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f0b56ff3e1243db160b7c30787304a163f3b199` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42066823508282b721406bc748b64b9b54dd51b4` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42e9aa655dff299c90e5b008527270182ad7f2e9` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x431b1f5356ecac2d86b2313907b747b16d11066f` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4501d7d28b8a086af283e5ce73c8d3091028d1fa` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4663dfc782e8da21b217e55dcaa9fc38ac73be90` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x53280ab1362a228b0d78b08ac949006fe024671d` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x596d0d72e17f6cf7deddb2fdee7940c3a2a4308b` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a78737a40eb416ec145dc2c4515b8e8223c2cf5` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ea1b54c522f279ecc0182d9b35229d6435d42b7` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x637c871c559ade45b37074fcf3b8081ec81c55fc` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x659217cda99658aeba399b4a79fb03d96b3c46bc` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x65deef3a08eec203700116a8d474c98a7512d0ca` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6901aac9813f3efaae32f44e9b579f08a12707ad` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x734ffe152dd99523f9d35695b9ac7f1680cf4f72` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x741cfdba1eb4edda66f59163e66d7c1aaef4a0b6` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x78ac7d1d27b0934f936b015054807d55aeaf1983` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ffe54b2357df4ddd6e769aa0c5dee15a2601d96` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x827f6cbfe9230a7daa000057cdb5a26dcde77bec` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82a0b1ac2819a8db4f28560475ec5a52af6c38f5` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8578432f41118cff929c762adf170aef88e79b90` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x895c8fa0360cb7d13ee4ace15f46e73db407e1a8` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8991314d7ac594b6ba91e590145adf9e7d5c8b20` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8d47f6fd4602b1ecf7928c0f1aef9c215e3596b4` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x942c67f72ea0649afee85df4ea9c3c4a859879e0` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x96699b24f573c2cbb76c3872724556fda828765b` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99d1b6bee57564834b351336791b2a7023a13102` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9db4afcabdb25c89424c88e720dd47d6be43bdbe` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9dd6cb42d74117ad568658187fb9f0bc6ce7cd96` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9f6197388d38646dadc67787cf362eb1b9ab78d7` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa955935faa6cd40e2ed779c090d4d1000e533fa1` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa527dd94bcbaf25998afc60a99e8a88cbc21cf9` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xabed1eb32d8c3750f52db4511366bb4c7ac9cc71` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xace2e090bda4ead0eff2c4f71ca7ddda480e7401` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xadb6d1cb866a52c5e8c1e79ff8e0559c12f4d7a3` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xae0641257008749144bf68c291d93e6ad092069c` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb761b8b588ff6b3c61613f094c988e78f59cc870` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8c92dc4c0e9936b44f124a87071b3d4b2db099c` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd3a37e3690ad4e145c39983d0aaf8bd5f5e2f29` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbff8affc67ffbf7a624fc49f8e9ae428e04bd37d` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcedb7921013a012c5538c0d2925a90aa817bef4d` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0ca5db3f1075381a28b123b056aaccacc3aaad6` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd307560fd5c57521ace562388365368f5b6f4d28` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd3ee142eac8ca1290ed2551a9d87ba7f0c42ac1b` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdc6f222c4504c43225a89b84e3aae15ad0dfdf0f` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdee9279e9ea7588a5a9a1ad31e6a2f81a05fce03` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe2cd0606bd927b8ac9960f70322e494d307461fe` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe543dc30dc6921f937ef307830ab04b3a8749687` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe72d387312fd477d0531ea5595ed9244b7e28c5d` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xea58e5c9dbf9232c18e8c5124674d1888d3ae725` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeaae5cefce1092eb3ea1da7622b3cf4fb20b8b81` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf2982ea85a174e9b10361f499f4c0abb531a5a00` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfb4dcd8b2011502bdf2ddf4cec5264ba31e5cf5f` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xff486de4f608fb016c0d125ad0e000774fcdd39b` | non_address_book | unknown | unknown | unverified | n/a | `0xbd9aecf2c9c5f73938437baa91dfbc5e24bd384d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1b72255a11df705bb598e670830e03a19f2d242f` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3bd30d48cc4bb700edbb7cfe62fd05e91190a2e0` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x40f8b8e6def11fe30aa1193611222ea748f4cacc` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54c532e367031f56c401c6024ac4abeff2b03534` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x569c1e3e128893431449d2c6c0dc156f33f49b68` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e60d73437accc3294a8edf59639c1dc1baf0d75` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x61a24e2ca23c789a3e33f3cc9930ab199ca93892` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x657b689df020cc9c4dea4bab984ea23dc5bacbdb` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e88216162af2388509da76d844cf77931f86de7` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7058ee5467edef417746aab0b8cabbbe36ef1798` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x73453ba0337ce0b215852d07843e557a0ef3df98` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x810eaebf61be39e3c0c2921f025ea584edf5ff7a` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x901037e4e90d380c99dac5c792bb9320a65a2345` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9792ee4c36a622a8cf9566b037c57519a9fe8a56` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9d0bc1b5dea868cda4f01496f2fdcf39ad13122e` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5e9b40d8ea5752c2cbdc334cbbdebf4c873f7c9` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb8790c911fa32132eddcfd250454dff0448682b8` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc2346c3c7f3998a12a1c8e7be44734ecc832763` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbdc6b0a1bd003eb9b6c72f5103e96466faa16739` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc372ea6c4e0831dc639aefeee0c029f66dfeda83` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe64796fcc97c33a2193ba60f013f3fa5d4712d56` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe659fa84e0c687760245046ba63329d44320997c` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xee57addede0a2201505ba3cd4d5f86573b1615f3` | non_address_book | unknown | unknown | unverified | n/a | `0xce12fc9c64a188a184a54b79aa4d251de45d2173` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9469f2cf03148ab166cb31473ed400fa5323482f` | non_address_book | unknown | unknown | unverified | n/a | `0xcf8360e28cf312ef0c3642cb2c48c7539ff1db2a` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd852af274e5534b5c7e134b3535745680529fb6` | non_address_book | unknown | unknown | unverified | n/a | `0xcf8360e28cf312ef0c3642cb2c48c7539ff1db2a` |
| polygon | unverified unclassified | UnnamedContract<br>`0x07cb84c4c30f5809e5f15b5df2b51a27eb627bd2` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0a1efaf7dd833f9d8ef9f2f095bf1d6c725ff110` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0d553115d2c1e2b734d66de1eba4bae1a88cb175` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0f16cbdaf6c8115cdde59876cf232903e95d488a` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x185a1cfdb7173b224d08e61f1cb21fd5fd6ee8cd` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x18e01422f6045e969d7bf11034fec350cea13854` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x18fb068f33666f2e30a82de47166b78388f686d5` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1a130be9a0e9046936e5461d3e8727b6af7d0c2c` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x248eecc8286a8c6484b4a87e1f32f0bc2d7971d4` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2582e171e8c883a5d51e2dd818ef9bd3623244be` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x260e6fb68c787cda2e9ea104f9e3a3923e4119f6` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2eb7eaa1a921b3c33dce214ca228578189783b8a` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x32b750721ad93f62b21402526354d53ac46953c2` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x353856185fbb65a098b971b6d492cc3c245d9a59` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x36d14424cc5a18893e93a0f8fdd42dc40562887e` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3f789f805e0e82671e715af8675209be8c6970f0` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x43be6849bc355735d77238acfdbceb7be8673f02` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x4eeb7d36474c2babceb0b3ae2224091b861abe4e` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x58bc3b5949c6784819a606645d616d8d2da7594b` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5bfeee0db8a1e3f736e531e594f1fe58b3fbf4cf` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5c5533d3239bcc63d5f207679b709a4dda4e2862` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x60b611a1315145bc76568db7bd1088e259deaf0c` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6cbd2d99ca3c06c2b87044467b59ca259d0cda70` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6db0230310b83e0c93f7931f2768236e72fe72c6` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x70f25a138d8ff5d6091ce87e2af6ba4f846cdef5` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x76c9e123969b9a768a5de44d145af2c19dd05bd2` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7768690fe5988a9564cd5ac8ee3e46718fb76864` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7e51b2929e0d7a43840367935cbce071d20e5bef` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7e9da60002daf64778c78ac90dd5bdc9391acb00` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8244523edb3f8ed603a4f890f35354c51fb35e2d` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x849031f78970639f8dc9dc3e962e0d0079d1051c` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x87c580dee8521b611e6144fac3d3740091b41b49` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x897fb124acdf5a685d9258645ffee0058464817a` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x89f36efd3ff08981c09a023e313bd8c95ca6a696` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x8d20fb2f4f96e897fed7e3e50f8a403afc59da23` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9767218525a443ae1b04a2a84cf2f6d646c2fa06` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x99176b36795094e6527a0a52f160eeb0e2b0944e` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9989dea94ecb5d872cd7d479ff17a567ef5efa47` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x99e70914743d4fd560a22ebc9305132ebf63d392` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9d1c2b86d9ba7b6314caff6bbed81bf162dc3a3e` | non_address_book | unknown | unknown | unverified | n/a | `0x4122691b0dd344b3ccd13f4eb8a71ad22c8cce5c` |

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
| needs_review | 225 |

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
