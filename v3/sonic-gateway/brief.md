# Agentic Audit Brief: Sonic Gateway

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Sonic Gateway (`sonic-gateway`)
- Website: [https://gateway.soniclabs.com/ethereum/sonic/s](https://gateway.soniclabs.com/ethereum/sonic/s)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, sonic
- Contract surface: 154 unique implementations (154 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $35,594,379.80
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sonic Gateway. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across sonic. Structural roles: 3 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: supporting (3)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xff4cd89f549432c312c497628748d4d76ac180f6`, chain 146)
- ERC1967Proxy (`0x1d3c99da3cef5c26f02a86dc7d685efa40176bb7`, chain 146)
- ERC1967Proxy (`0x9ef7629f9b930168b76283add7120777b3c895b3`, chain 146)
- MessageBus (`0xb5b371b75f9850ddd6ccb6c436db54972a925308`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 16 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 134 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 4 of 154 unique; 150 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 151
- Unique implementations: 154
- Raw deployments: 154
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2018-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Bridge | operational_periphery | project_anchor | own_supporting | 1 | sonic | unit-255286 | `0x9ef7629f9b930168b76283add7120777b3c895b3` | ⚠️ Unaudited |
| MessageBus | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-255284 | `0xb5b371b75f9850ddd6ccb6c436db54972a925308` | ⚠️ Unaudited |
| UpdateManager | governance | project_anchor | own_supporting | 1 | sonic | unit-255287 | `0x1d3c99da3cef5c26f02a86dc7d685efa40176bb7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (151)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x00ed801e03ff93476683d7a7a7152a2c15a26518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0350829608ed0564356fd3c9b82ed93d5d0a0cec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x039e2fb66102314ce7b64ce5ce3e5183bc94ad38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x04a11dca1419d8654071b2e3b88bb890cba488bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x04d84a31dad55df89e316d00fd8788562cb4488e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x06267b924104059fe673e97fd53196d9509930f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x072592cfdc99d8aefce6583df8ea1301d7a98721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x08bdf8c330c9f7b3ce9d5beb7be8d8e5d48b1422` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0ab8f3b709a52c096f33702fe8153776472305ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x0b3fe0c10c050270a9bc34271987989b6cf2107c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b5f073135df3f5671710f08b08c0c9258aecc35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0e8b5f7741402711dfad3787e6ca125998a32be5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x1071405a4736535c545580064039a235827ee6d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x12727d4169a42a9b5e3ecb11a6d2c95553d3f447` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x134e4c207ad5a13549de1ebf8d43c1f49b00ba94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x142c2227ef6872709e0d9b5d53bacc60b3a4f80a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x144293938b3deea7a70b47c023265667fe281120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x15c60b669f2bf07f35f7d08e05e0005ebb9da756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x16cc1bb219ca9448f0696754e979515a3e7fc4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1703685f9e45c36bd05172817f757a721f798b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x198f37de4f9fee430bb4aabacd8cb40ab6e8e61b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x19b3de15534da665df81953038729527f888b23c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1b04986b15f0cb8e0f70be3392bcaebdda7da929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1be0b11a17f0e06d15d6ad30773ccab541e8c3c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1e863a4ef81ac36cde16efde796715e9567ead3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1fd995fafeb89ec73961f8d4a2c15910f9e08804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1fef28887cf7e554b4cf4f6a58f5f99775d9698a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2110e7ab887b58d2bc47e4c3d8283465e311b627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x22323562e5b7113349260b87b03dd60a4a13a137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x22e7ba09915f1535e0777eaf83a0c84cebef9ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2607ee3d730404af19b17b56345186df5e6b99e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x29219dd400f2bf60e5a23d13be72b486d4038894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2d4313678769a16003674faec63f26e1f8137841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2f6cb7edb0211b55542dfc49f95ac5d14c83e189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2f6e3aa5a0ee65f9fd25d5248699225f733ade2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3016989ef9d08cd92c6b3521ad37fea4dd20da34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x333b79c352e0e8eca05e7d6c190875ff61381f64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x33c9ba6b8d5e80bf4f739f041eed35c37dabeb25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x34f70bac00c2b2647e49e24b5c49c55f01d8366c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x3561607590e28e0848ba3b67074c676d6d1c9953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x37f3e460702fc8b4c4a388079c936bff864c6d27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x391071fe567d609e4af9d32de726d4c33679c7e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3c02c4692013e65c4c965da19e5e1440de3f47f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3ce759878f6ee4d7ca21e1bff18af6a81c469f8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3e438a410ac57dd260c47c9922c0c4ad939b908e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3e893b96ae6faa71083c52b10cfad6344f57fe6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4a843aa35e1bcde5279fe642d511a0c77df725d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4c0118580606738e8a592c20ec45cb208581519e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4ff6fc932421004b8725f9d4358db8d279debb7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5079a821c22ba45900976f433fbb9b92d020c51e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x50c42deacd8fc9773493ed674b675be577f2634b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x521cadcaa816092edad313434194f78308f369b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5c616d69c736b9aac70aff75a9b20b98910d33f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5c7ba9b4a1dc9e708a71b7074a85277e2299bc3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x6047828dc181963ba44974801ff68e538da5eaf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6665784c2fcb07855ba659d35553b06a62c356d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x692102c148bc1525697e0d3bf2b13bf71a4a5bb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6a4ca6d606f54474754bafa6935b5c1e39c2f456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6bebf7935650efeb4ce1a3f81e28b31695eb7540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6cb5471e5210808e611b66da3981a503a7d1d3d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6e33536e00023ce9d6c1d4689f2d5f8da4bfda25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6e8f4f2e8ddaa23519514e7cab6b5bd3f6193db4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6f44ecf738d3cb07dda6658dd38d7f432970aec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6fc1a323f8a4eb67872e657ba71ac5ca40dc530f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x70dee2e673ed8c3d2e18445d58d2fd57abc163c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x710135d6832d721d2d371acb57dc26f402ca4b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x718cd2bb486bf0fe0f1ae25c7413c11d387f8f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x739403e5dd6aa85af7e2e0e922c9d86d168cb78f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7601ebe0d0baf3df0cd1dd0a060c06bdeda2aa64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7923966d8f92e526da3013f6aa6ff1a8fffdf02e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7aeb9fad31f27896d6c7baa52ae2457b14768804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8001d9b12a169df3267241d9f2455fa18266ae2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x836664b0c0cb29b7877bccf94159cc996528f2c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x84394511c60fa54931d5a1f165ebfb3be319e2f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x880e50533f79515c615cd9e1198aac282d87bf54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x894185a8215ec5c4d8715570107f84788d425841` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x897d37f040ec8deffd0ae1de743e1b1a14cf221f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8a432498b39969f1137007267f39df8a1c685d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8eb16b23032de6a306d239dfb262989faa6f4d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9198fcd77f9d4c4abff4d9d2d74a0c7bfee73ae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x92bf3d3cb023c4ffed90737357c01ab1132600d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x93930a5d35da1ae61ea7a08f5cd9e6de496d2d94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x93e8c00f1c9983312943860e1cfe748cba9ed1c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x94e9587c08d64b1cee97751702a8823712fe87fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x94ed1904006f7e53bea349f263beedda9d68f586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x950044be5657d91fc65661857a4fec212ad6a3aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa06272105a113269c74b2f9b20525e4957892031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa27c616c11396db3e6e53336337cabcd1879a506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa2dde9644277bbcc861ae4687962827e26d08862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa37e67f0d350e7bdd3e613be3c1e03cd143bf679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa395b3ab9304f73e848c9c62c223a9c840e83737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaa61e0627fe1eeff1a77c3768c38803ab53c4d7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xab7a4c592bce6f1f968fc3e470b996719411c665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xad82e421128d1866f0c8ad06a8b3db6a6bc9f84c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb1ab781703882f9cf5971a2601c10b8e0b6bc2c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb2b5879ec6870697339add0ca25f508791854f21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb3f03a1be7ca387970c656a8392fe6d01033c8d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb498d829b9b97173f50fdf9bfec9afa474472145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb4d158cc466966a82950b795dd00f2d380bdc674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbb5849690038e91ea1d169fc9e4e9c1acdd18fd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbc398d4a8527a07ab3a4b9529d1ac6fd5228bdab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbc472fb0cb3e9c2d6be7d47b405f32001c710ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbcf77b9d13820c4a0fea88099c65012d8bd1199d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbd13a2b71cc4c3cf1f77382668d9a7997ca1bc74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbf5196215915472e0688467bcc37e637e938dce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc3678788f87c554fe83c2b7419a6b82e59c12ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc3f3781bab991903da348e48ef94bc2fd03aa9fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc3fcb6b5925429485c2848921a110e49392ae807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc4278635c8ac9f2292effdf000e535a63bd8f5a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc5610888e96a32a68b7d2cc411af192f563bf8f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc6db38df0943919a60cd92b62ed8b6c1e7cd38d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc76a6fdc7bcd84ac772ebb02da52e097c55860a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xca11bde05977b3631167028862be2a173976ca11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcde2a17b5cc998808c933c96035c5b91ef84e9de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xce4635a92636ca027ed73d464afb9edcace6e6af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcf5dd694a8db07163c03ede566d6edf06e007112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd00f870f658c380955acd6bf21652af108ff8e39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd16e83508e2de4f90d5ca82712a8ecd3c6b97839` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xd2f1e904daf7446686f8057b7dfeb068c75d29a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd374ff12a8b80a93ac997b0dcfa07660172dc10b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd4b217737e74e56bdc7d7cab1d1b3b3f80826c60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd5d818fdbfc9ec618f83f98f3ac5c919e5b4fe95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd761c57489a1ca32dd6f12b02e56cb6a70b568d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdab75ad21d5b2bf2b5b477d9afda500ae2558ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdc2b0d2dd2b7759d97d50db4eabdc36973110830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xddad28dee14fb08817a405078421e7eaaf86a856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdfdc440d9a4b3a1627d35aa0741170193a2f7c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe0da44f015718f76ac478c9ed1776b10af78a60d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xe34e6851a4a3763e1d27aa7ac5980d2d33c2d315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe566e64d7e4d694745ea4f0144958e18218d1c56` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xe715cba7b5ccb33790cebff1436809d36cb17e57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe7dc357ae8472c2cd93d54394f0c9eba8592a116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe87955d1788d80ee0e6e1d5f506172c593958b12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe8a53802fc2b275feda5fdaaac5deee550c6565e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xeb2c4d6b9b9b6e565601098c2f425c3b0166e363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xed74b35cd0440b34b42fc8bda21d1be7d0bb8bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xee8fb1726782b336b51af37ec0fedafc04c9edeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xef4beebc483aaa75f2fdcd5e46db09931c6ff163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf1650c618c7056f8e5e1a879eb69749d4d652e78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf2169d8a17aa40cc31e1b43e4fbb2d19ca099310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf5d41db5a9af08fd8f73dde6f52c27b4b250aecb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf61465c1abf9c0dbbbfe7c58ca0cf592d5d0c7c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf6ebebbb7f507d60728e9f3b13cf3c7ccbc01ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf87dd3aa263bba2a340132b9a105cd187db47b84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf979d5c77dc093335c6433ae9079931826e72592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfa5db60fba7cd3f450c3534471b0757c2e648822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfbadc398b16f0f456c7348d564d17292b3d54c05` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xfc00face00000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfc18f0cf353204f59f8b9cb631f0deb0c42f6e03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfe6d05fa0222e2d095f7111ef88eff7f08c24c7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-255285 | `0xff4cd89f549432c312c497628748d4d76ac180f6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 134
- Live contracts: 0
- Unknown liveness contracts: 134
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=134

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x00ed801e03ff93476683d7a7a7152a2c15a26518` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x0350829608ed0564356fd3c9b82ed93d5d0a0cec` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x04a11dca1419d8654071b2e3b88bb890cba488bf` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x04d84a31dad55df89e316d00fd8788562cb4488e` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x06267b924104059fe673e97fd53196d9509930f1` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x072592cfdc99d8aefce6583df8ea1301d7a98721` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x08bdf8c330c9f7b3ce9d5beb7be8d8e5d48b1422` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x0ab8f3b709a52c096f33702fe8153776472305ed` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x0b5f073135df3f5671710f08b08c0c9258aecc35` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x0e8b5f7741402711dfad3787e6ca125998a32be5` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x142c2227ef6872709e0d9b5d53bacc60b3a4f80a` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x144293938b3deea7a70b47c023265667fe281120` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x15c60b669f2bf07f35f7d08e05e0005ebb9da756` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x16cc1bb219ca9448f0696754e979515a3e7fc4b0` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x1703685f9e45c36bd05172817f757a721f798b8a` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x198f37de4f9fee430bb4aabacd8cb40ab6e8e61b` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x19b3de15534da665df81953038729527f888b23c` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x1b04986b15f0cb8e0f70be3392bcaebdda7da929` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x1be0b11a17f0e06d15d6ad30773ccab541e8c3c2` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x1e863a4ef81ac36cde16efde796715e9567ead3a` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x1fd995fafeb89ec73961f8d4a2c15910f9e08804` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x1fef28887cf7e554b4cf4f6a58f5f99775d9698a` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x2110e7ab887b58d2bc47e4c3d8283465e311b627` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x22323562e5b7113349260b87b03dd60a4a13a137` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x22e7ba09915f1535e0777eaf83a0c84cebef9ad7` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x2607ee3d730404af19b17b56345186df5e6b99e7` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x2d4313678769a16003674faec63f26e1f8137841` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x2f6cb7edb0211b55542dfc49f95ac5d14c83e189` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x2f6e3aa5a0ee65f9fd25d5248699225f733ade2f` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x3016989ef9d08cd92c6b3521ad37fea4dd20da34` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x333b79c352e0e8eca05e7d6c190875ff61381f64` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x33c9ba6b8d5e80bf4f739f041eed35c37dabeb25` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x34f70bac00c2b2647e49e24b5c49c55f01d8366c` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x37f3e460702fc8b4c4a388079c936bff864c6d27` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x3c02c4692013e65c4c965da19e5e1440de3f47f5` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x3ce759878f6ee4d7ca21e1bff18af6a81c469f8f` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x3e438a410ac57dd260c47c9922c0c4ad939b908e` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x3e893b96ae6faa71083c52b10cfad6344f57fe6a` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x4a843aa35e1bcde5279fe642d511a0c77df725d6` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x4c0118580606738e8a592c20ec45cb208581519e` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x4ff6fc932421004b8725f9d4358db8d279debb7d` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x5079a821c22ba45900976f433fbb9b92d020c51e` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x521cadcaa816092edad313434194f78308f369b5` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x5c616d69c736b9aac70aff75a9b20b98910d33f7` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x5c7ba9b4a1dc9e708a71b7074a85277e2299bc3f` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x6665784c2fcb07855ba659d35553b06a62c356d6` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x692102c148bc1525697e0d3bf2b13bf71a4a5bb9` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x6a4ca6d606f54474754bafa6935b5c1e39c2f456` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x6bebf7935650efeb4ce1a3f81e28b31695eb7540` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x6cb5471e5210808e611b66da3981a503a7d1d3d0` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x6e33536e00023ce9d6c1d4689f2d5f8da4bfda25` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x6e8f4f2e8ddaa23519514e7cab6b5bd3f6193db4` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x6f44ecf738d3cb07dda6658dd38d7f432970aec8` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x6fc1a323f8a4eb67872e657ba71ac5ca40dc530f` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x70dee2e673ed8c3d2e18445d58d2fd57abc163c0` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x710135d6832d721d2d371acb57dc26f402ca4b79` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x718cd2bb486bf0fe0f1ae25c7413c11d387f8f63` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x739403e5dd6aa85af7e2e0e922c9d86d168cb78f` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x7601ebe0d0baf3df0cd1dd0a060c06bdeda2aa64` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x7923966d8f92e526da3013f6aa6ff1a8fffdf02e` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x7aeb9fad31f27896d6c7baa52ae2457b14768804` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x8001d9b12a169df3267241d9f2455fa18266ae2c` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x84394511c60fa54931d5a1f165ebfb3be319e2f3` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x880e50533f79515c615cd9e1198aac282d87bf54` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x894185a8215ec5c4d8715570107f84788d425841` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x897d37f040ec8deffd0ae1de743e1b1a14cf221f` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x8a432498b39969f1137007267f39df8a1c685d79` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x8eb16b23032de6a306d239dfb262989faa6f4d0f` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x9198fcd77f9d4c4abff4d9d2d74a0c7bfee73ae8` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x92bf3d3cb023c4ffed90737357c01ab1132600d7` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x93930a5d35da1ae61ea7a08f5cd9e6de496d2d94` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x93e8c00f1c9983312943860e1cfe748cba9ed1c2` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x94e9587c08d64b1cee97751702a8823712fe87fc` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x94ed1904006f7e53bea349f263beedda9d68f586` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0x950044be5657d91fc65661857a4fec212ad6a3aa` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xa06272105a113269c74b2f9b20525e4957892031` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xa27c616c11396db3e6e53336337cabcd1879a506` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xa2dde9644277bbcc861ae4687962827e26d08862` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xa37e67f0d350e7bdd3e613be3c1e03cd143bf679` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xa395b3ab9304f73e848c9c62c223a9c840e83737` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xaa61e0627fe1eeff1a77c3768c38803ab53c4d7f` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xab7a4c592bce6f1f968fc3e470b996719411c665` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xad82e421128d1866f0c8ad06a8b3db6a6bc9f84c` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xb1ab781703882f9cf5971a2601c10b8e0b6bc2c0` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xb2b5879ec6870697339add0ca25f508791854f21` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xb3f03a1be7ca387970c656a8392fe6d01033c8d3` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xb498d829b9b97173f50fdf9bfec9afa474472145` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xb4d158cc466966a82950b795dd00f2d380bdc674` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xbb5849690038e91ea1d169fc9e4e9c1acdd18fd3` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xbc398d4a8527a07ab3a4b9529d1ac6fd5228bdab` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xbc472fb0cb3e9c2d6be7d47b405f32001c710ab1` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xbcf77b9d13820c4a0fea88099c65012d8bd1199d` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xbd13a2b71cc4c3cf1f77382668d9a7997ca1bc74` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xbf5196215915472e0688467bcc37e637e938dce3` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xc3678788f87c554fe83c2b7419a6b82e59c12ad6` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xc3f3781bab991903da348e48ef94bc2fd03aa9fd` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xc3fcb6b5925429485c2848921a110e49392ae807` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xc4278635c8ac9f2292effdf000e535a63bd8f5a5` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xc5610888e96a32a68b7d2cc411af192f563bf8f6` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xc6db38df0943919a60cd92b62ed8b6c1e7cd38d6` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xc76a6fdc7bcd84ac772ebb02da52e097c55860a0` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xcde2a17b5cc998808c933c96035c5b91ef84e9de` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xce4635a92636ca027ed73d464afb9edcace6e6af` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xcf5dd694a8db07163c03ede566d6edf06e007112` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xd00f870f658c380955acd6bf21652af108ff8e39` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xd16e83508e2de4f90d5ca82712a8ecd3c6b97839` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xd374ff12a8b80a93ac997b0dcfa07660172dc10b` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xd4b217737e74e56bdc7d7cab1d1b3b3f80826c60` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xd5d818fdbfc9ec618f83f98f3ac5c919e5b4fe95` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xd761c57489a1ca32dd6f12b02e56cb6a70b568d1` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xdab75ad21d5b2bf2b5b477d9afda500ae2558ee2` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xdc2b0d2dd2b7759d97d50db4eabdc36973110830` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xddad28dee14fb08817a405078421e7eaaf86a856` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xdfdc440d9a4b3a1627d35aa0741170193a2f7c9f` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xe0da44f015718f76ac478c9ed1776b10af78a60d` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xe566e64d7e4d694745ea4f0144958e18218d1c56` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xe7dc357ae8472c2cd93d54394f0c9eba8592a116` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xe87955d1788d80ee0e6e1d5f506172c593958b12` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xe8a53802fc2b275feda5fdaaac5deee550c6565e` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xeb2c4d6b9b9b6e565601098c2f425c3b0166e363` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xed74b35cd0440b34b42fc8bda21d1be7d0bb8bd4` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xee8fb1726782b336b51af37ec0fedafc04c9edeb` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xef4beebc483aaa75f2fdcd5e46db09931c6ff163` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xf1650c618c7056f8e5e1a879eb69749d4d652e78` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xf2169d8a17aa40cc31e1b43e4fbb2d19ca099310` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xf5d41db5a9af08fd8f73dde6f52c27b4b250aecb` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xf61465c1abf9c0dbbbfe7c58ca0cf592d5d0c7c4` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xf6ebebbb7f507d60728e9f3b13cf3c7ccbc01ba7` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xf87dd3aa263bba2a340132b9a105cd187db47b84` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xf979d5c77dc093335c6433ae9079931826e72592` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xfa5db60fba7cd3f450c3534471b0757c2e648822` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xfbadc398b16f0f456c7348d564d17292b3d54c05` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xfc18f0cf353204f59f8b9cb631f0deb0c42f6e03` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |
| unverified unclassified | UnnamedContract<br>`0xfe6d05fa0222e2d095f7111ef88eff7f08c24c7e` | non_address_book | unknown | unknown | unverified | n/a | `0x81cc72b2e1f861468408f9aaa1e5d0e0f9a77352` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [fantom-audit-first.pdf](https://github.com/Fantom-foundation/tokensale/blob/master/audits/fantom-audit-first.pdf) | unknown | Audit | 2018-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [fantom-audit-second.pdf](https://github.com/Fantom-foundation/tokensale/blob/master/audits/fantom-audit-second.pdf) | unknown | Audit | 2018-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11677] fantom-audit-first.pdf — no match: All contracts are in FantomToken.sol, listed explicitly in the Audit Summary section.
- [11678] fantom-audit-second.pdf — no match: All contracts are in FantomToken.sol; date is June 2018 (month only, last day used).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| fantom-audit-first.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| fantom-audit-first.pdf | Utils | unmatched — not counted | — | listed in scope | no |
| fantom-audit-first.pdf | Owned | unmatched — not counted | — | listed in scope | no |
| fantom-audit-first.pdf | Wallet | unmatched — not counted | — | listed in scope | no |
| fantom-audit-first.pdf | ERC20Interface | unmatched — not counted | — | listed in scope | no |
| fantom-audit-first.pdf | ERC20Token | unmatched — not counted | — | listed in scope | no |
| fantom-audit-first.pdf | LockSlots | unmatched — not counted | — | listed in scope | no |
| fantom-audit-first.pdf | FantomIcoDates | unmatched — not counted | — | listed in scope | no |
| fantom-audit-first.pdf | FantomToken | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | SafeMath | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | Utils | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | Owned | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | Wallet | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | ERC20Interface | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | ERC20Token | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | LockSlots | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | FantomIcoDates | unmatched — not counted | — | listed in scope | no |
| fantom-audit-second.pdf | FantomToken | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x9ef7629f9b930168b76283add7120777b3c895b3` | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb5b371b75f9850ddd6ccb6c436db54972a925308` | MessageBus | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x1d3c99da3cef5c26f02a86dc7d685efa40176bb7` | UpdateManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 151 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 18 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [11677] fantom-audit-first.pdf
- [11678] fantom-audit-second.pdf

Fork inheritance lineage and inherited audits are included when available.
