# Agentic Audit Brief: Fuji Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Fuji Finance (`fuji-finance`)
- Website: [https://fuji.finance/](https://fuji.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, fantom, gnosis, goerli, optimism, polygon
- Contract surface: 213 unique implementations (240 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $139,604.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Fuji Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 181 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 32 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 185
- Unique implementations: 213
- Raw deployments: 240
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddrMapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2430ab56fb46bcac05e39aa947d26e8eef4a881a` | ⚠️ Unaudited |
| AlphaWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a44888292c570f6ae414ca9ca2d878f5eced83b` | ⚠️ Unaudited |
| ChainlinkComputedFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1e06fc0f61c3aaacabb6f016281e569399ba8fe5`; ethereum `0x53c641d390c6a7b0cb8a3b202e8db12d72bebb60` | ⚠️ Unaudited |
| ChainlinkComputedFeedLido | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8601ff6abfa65e1970f95701522bbf5249a4d0a2` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x30c591b64c39ad8e9f5139521cedb077d27a724a`; ethereum `0x3f366802f4e7576fc5daa82890cc6e04c85f3736`; ethereum `0xb24f1011d255a83093776ba8a8c4cd1d4ec3dab7` | ⚠️ Unaudited |
| Flasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x01267e6b6ec2196c6e21a64a7f3e3211f10cccae`; ethereum `0x15d2f1f6e1bc3abfa284698b3337cbf98c9cb64e`; ethereum `0x3067fed80acc37e3f018b9c37181aadc0af9cfb1`; ethereum `0x54f72175c40c3f4857b18fe539a85ddb92f6d985`; ethereum `0x68c3dfecc475e51c8c3e67d676cb41d81b84ed83`; ethereum `0x7b28716a339e33b9d42f927196016458aca55947`; ethereum `0x845f591778d05112d4d9709366d4d26f3cae62f5`; ethereum `0xd13e1da292432d06f65479f62d1ef4280125010a`; ethereum `0xf45f46c2c0521c8921447132edcbadb628d3b9d3` | ⚠️ Unaudited |
| Fliquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x53032dc4dd5c85efee772b1fe38de05ed27d9cd2`; ethereum `0xd43e4be9125de772237f0bc9701e5ca3afae6268`; ethereum `0xe3a2df184c021b8cbdfe2e89f7d3f495473b2be0` | ⚠️ Unaudited |
| FujiAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1eede44b91750933c96d2125b6757c4f89e63e20`; ethereum `0x4cb46032e2790d8ca10be6d0001e8c6362a76ada` | ⚠️ Unaudited |
| FujiAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7d84e2f09a26efbf669616d907321004c4bb4dad`; ethereum `0x8a9680a599a11fa9cbeb824351417764f2cb80b2` | ⚠️ Unaudited |
| FujiERC1155 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cf24e4ec41da581bee223e1affebb62a5a95484` | ⚠️ Unaudited |
| FujiERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8779c084adff0effc54dbd701c21848a1d21bcd7`; ethereum `0xa2d62f8b02225fbfa1cf8bf206c8106bdf4c692b` | ⚠️ Unaudited |
| FujiFlops | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x376c0aa9150095cb36adcd472be390d31c6bef8f`; ethereum `0x528f3c5dfac849f51492f4b8b23ed4b20f458f3c` | ⚠️ Unaudited |
| FujiMapping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x03bd587fe413d59a20f32fc75f31bde1dd1cd6c9`; ethereum `0x17525afdb24d24abff18108e7319b93012f3ad24` | ⚠️ Unaudited |
| FujiOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadf849079d415157cbbdb21bb7542b47077734a8` | ⚠️ Unaudited |
| FujiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x4f86e118c594c5daf24f1725922bae249ddd79e4`; ethereum `0x5bcadd3d7e4e0cd44b9e34fd865c286a7ed75526`; ethereum `0x73af71612aab4d18d55344dba95ea8d6dee78b80`; ethereum `0xf3caa27dd9926b391f50849bdfdb8a06fb489b67` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4186e7fd0a76bdf82cc28a5251cea2bf87bc4172`; ethereum `0x51407a073fb7c703185f47c3fbb1b915678221b8` | ⚠️ Unaudited |
| MockAddrMapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x529ee84bfe4f37132f5f9599d4cc4ff16ee6d0d2` | ⚠️ Unaudited |
| ProviderAave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x10bd459b45fe083cb0bbe673066467bf7a760c43`; ethereum `0xf7358a994c7cc37af2116b03ec7b1af190e2cf7c` | ⚠️ Unaudited |
| ProviderCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63e978f8c647baa71184b9eccb39e0509c09d681` | ⚠️ Unaudited |
| ProviderCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x6e16394cbf840fc599fa3d9e5d1e90949c32a4f5`; ethereum `0xca26d96b45111a130af78d69e1db283975547d67`; ethereum `0xd0dc4cc10fcf3fee2bf5310c0e4e097b60f097d3`; ethereum `0xdc6d91bab56ccc708b4b217148016bc7ca568468` | ⚠️ Unaudited |
| ProviderDYDX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd59574e9203f5e532a2894a56c31286416c0ac9` | ⚠️ Unaudited |
| ProviderFuse18 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17934d0a9b1007501403cd9ec70f21898655ccba` | ⚠️ Unaudited |
| ProviderFuse3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ecbcf7a4bae2d2931962dd749a974d3ef76899b` | ⚠️ Unaudited |
| ProviderFuse6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c71bdcc2a9069fac036b842de0cf6550757326e` | ⚠️ Unaudited |
| ProviderFuse7 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfee7a10f9eb16cb1b13d6aa0aab042ddf3c36ad8` | ⚠️ Unaudited |
| ProviderFuse8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfc244134788584d3272f3994cd779635c4282ba` | ⚠️ Unaudited |
| ProviderIronBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc68e5868a3b74f575956bd1668b77b3f1b2cdc6a` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8ae7bf329ff6bc5acc187b7b9d6919c95537cd4a`; ethereum `0xc528a2e10cc82b973723a0621fc924d572d24d69` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (185)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x17744b586a6e47a45fa98d080141139f87314e82` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1aa960084ba2ad046db652c9a7169e3bf6dcdb72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x22b6251935da74a69b63a52d993924904559b76a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x24e72207a078558bf9018dcf97d7f580e79b9221` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x26cb668f87fff93f2c3f1865124d51dd900a77e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x288465d0385aed5971467e84718bdce553e24498` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x314cfa1ba6e88b2b2118ed0becd30d040da232bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x333631b036bbfa4ae2ff1ce64ac5bea1a76b7b94` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x337688b46da29a3b47b3c88941d26754898faa99` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x47949980636697aebf93111097db2537e8eb317f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x52b23b09ff03669fbd2203902d83f4c4d2dee0d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x62a790a77df54cc75c899a3b27d118958c279a37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x63d20c47901f6cae61aa3c19a21ed5f08f8c5112` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x69612f144e7b6933d26ea6e254b3e76a47a0b4d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76e77921341e4414e60bde4a3f56822c70e3adf6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x77f535f7b2785fe0fd310dd97d30c5a4e020019a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x87874d8eab4e9a9867d30d100f54c6cb59252563` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x88ed3b8d03e5a70bf23286872b24cffd76e91922` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9907f34fba2336c3ce8758dd80c301bff921dec2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9a24dfdad9ce5b709e4beefd8af72c5b339452ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9de0ce8aaa2772f9db00d223ce9ca17fc430943b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e2b7c84ebc915f848ba69ba44cf75044cf10951` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa2a7c7dc114765b21e7d167d9665d3992152e6d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xad65e95e16da8901c575337bd9a641c7b00908a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb2a57d48a1553b071b99353cc07dcc1a2d2730c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb2f151d71bd0396891a68c15bf608445a6ac835e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb71073364b78debe996d041bb340ff4f03ff23d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbf2b58b962cb951fcea3f32e3afd54661aa2a78e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc349fd29aed02ec862dfc03af16e786798d8aa1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc5a93f0eeab26ef8f6be7d35451e2f4b55dfd25d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc79fcb669b505b5217c477974a1a8f5c86c3de66` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc99ae261f812eba639aca0d35f6bffb0b14185aa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xce9b49b0d4fe456ad6e4a1b7e4bbdd0699400ef9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe70b3c4b76f5ae4505d553427fa50ad75f34ff86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xeacb50131a46a7b8c750c03ba336f2632fdb0344` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xed0a749345bf88bf1b5e706ca51f72b4b784ca93` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf58456695406e04e748010c065a5f5861665b6a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf735abc0e7284d734d711870eb2340015d370ece` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf7a7cf71d9986f7fcbc2a71ee6bcf271acb3dc7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xfa16b685c974ab2de0350f5012587642664dd3f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xfceb53c781df5451dbffc4c8e3a95bf289e2bdb3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x01a1204188bedd8e057f40d039c9e73f51d2f7e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x1f5e202bab0b86f69738f2e0339a7711d9c3223c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x1fa4f8dcbff685434e221e1ea22744f52c521231` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x331cd32e3059822df4ef3d668b751895f33b415d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x368fba8fe5ccef7b8a173975853d8304f37f86c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x3cad702347c805105e5ac6fa3d62d99547c247d7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x3d063dc02c8fc7edbd14ea5dc68e74f0c2407d40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x4635f620aac11315b400baac7d19efc40e4fce0c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x584e836b7e6c3594c8a285e40f8a1830523df05d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x68d20dd4dcba0cdc871a97ad7a37a2892f14a97f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x8799c14d62552a36787a63048c863192ab4bb185` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0x88ed3b8d03e5a70bf23286872b24cffd76e91922` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0xa169a53e5c8c36dd1cfed0ceb2bcd15026091272` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | n/a | `0xb2f151d71bd0396891a68c15bf608445a6ac835e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x00cd7cbc64b8ca27bace9ee23ab87cb3c6ece01c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x04357b844a321b5d5a2a370ad0cbef43dac776ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x0965d634a98bd702a9b7e40dfed7eabbeea41b0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x0c6d8acae1150b8d0bbb5972e46d7615f0b87a07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x0c7c321e8f41018e93876f967f1aa2667f9dee2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x0d766ac0f6ce0591b073cb61a808b83f38f71340` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x1085baa80b2bfb2f0e55822ce2f547d95aeae7a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x1cbf7f06c04226488b4d5b2d5ea5c8b965130500` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x229195fe6cdb876ed7d55f939b5695e27b3cb425` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x24b76cd2693856fade3027c4cc69dac9fd6f71c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x26d44a1f39a0161617db5fc8a54f542b5224a33a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x2fd8ee894e234a8b2be30fd4595f60aa40a72a26` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x389f1739053d2273bae38cbb878b938af4cdfc85` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x3ced838bf1bf3809f71449b7b24371e63827cba4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x3e79537100bfc39893edca1311df5f70f946b7d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x4158bb5fdb8151c754a4d25ed93b61a80c855621` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x4a8b5932bcc2075af7a80169ee143721387c1e17` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x72bb87f030ab1d668e3c58a206a7140706e1b474` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x77f535f7b2785fe0fd310dd97d30c5a4e020019a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x82a2646400032eaa9c32022f7b1d4335e1789f85` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x84cd7471d74b7d50c7ee67b443354593d5bfc31c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0x96fbdedaad2861fca3f3890e7e8e700927777a92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xa367f42d48178f02584208d1eea471b026f39045` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xb5beccf2734c97221379a6c08b718d82023b1498` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xb71073364b78debe996d041bb340ff4f03ff23d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xc377e6e13426739f14e411dd88af8056e2dcaba4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xcdc1448aa5180211bbf1cf2976fbb68ed0c3013e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xd15bc6cf0a3c430caef89cac07189075cdc4245d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xd1aa6767ba125ff8ce187ba8810ba781094f66e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xd21c55092e7d9599302cb735117136c3db1855b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xd3346737e370119961c444c0c1b10d7c3fcdf36c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xd7ef0e95fc9cf815247d8110d4cf102f59edf871` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xe8a2fcac6f1ca5f5bafee5f7bbe6020b1c489a72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xeaafbf9b8acea243cf8a7aaa9a26497e98802cc9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | n/a | `0xeabda502948192d8df49ab91fc278ec9c8c65ef8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x1e302dfc2a25c294eeff8f19175d90351de6542f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x2fd8ee894e234a8b2be30fd4595f60aa40a72a26` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x305f31582b963a875c3abd854b9c54d35798b3ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x32ed939d4a9602f96a4dadbf8ba3d8317e74ab2c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x4aef47117628ebc3ae78a9edbe558794f1500de6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x63d20c47901f6cae61aa3c19a21ed5f08f8c5112` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x655a9322700054ddf2ca7dc0e941cf8abb9efa76` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x7698b2e47f4f052e834ffbcb8546f56d5f7673df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x7cdbec01908bef9e10cd9f692faa9bb6664a6144` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x8696566396421016b1065ee6f2a3906c9d54de67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x8bdde35081db12e503f95d2263d9949f78393000` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x8bfd430229d87ea5fbb9a5db5c67d300793858eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x95964ab419300f67e562f7c86dca02c480252369` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x990471a916e06232f21c9c37a6bbfb55f1cc7d38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x9907f34fba2336c3ce8758dd80c301bff921dec2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x9f364afe3d592b749404b21ccdc04a119a379528` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xa55c0132903f1ed2c756f31bcc9772fccd0efab2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xa99f739bd55f95d4f0958b629d3522e64a282c7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xac8b2ef955a36fc3a74d7ec4e5346304bd4c4a71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xbeaa4b2ce11cc2f8a059341dad422814b66d1ad0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xc349fd29aed02ec862dfc03af16e786798d8aa1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd4444b5c9f2fd888adca17673056f4497e526448` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xdb84190a0e373bf10cb5cb0bcda841e6ee1fbc5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xdbc8904f2931de1549d6e9a369dc5c75f501f820` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xeacb50131a46a7b8c750c03ba336f2632fdb0344` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xf3ac23fd2437394fdfd257ac5931ca8fbc8b573c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xfa813845cfa88eed4599670a6b63b0025fe2963b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x157a03942e4f88c0357e4afc1da46e9cc12db1d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x1c539bb7057ec2a3d1fec1cf4d34c3bf46525bb1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x1cf617a63ec0134041170134c4625eb12549217d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x1e49ecb017d30bcc1b179198f8d447cf0fb6bd09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x28fbf8d871441ff86c5a7e38761a5270ba604859` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x37f943a180a9e31a0633ad493a52ca18becd1b5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x3d140c9208330ac0d2b3ab4922dd4bb9b119111f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x4c56f523cd3167bf08301f9cc503321736448377` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x4d8fafa3a38404440a91ec22d88fb72e47215332` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x4efd4a693aca6a0152c85c9008a56a4374f77fda` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x645650030cdea7e2bc91f170261ac5cd8df50fd3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x656337719fd1fd94914962f3752f6d04d437d62f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x69097538190ac1bceaa0c8ebfa7c512b1eb8d24a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x6ed2428624da78cfe2daec70be171d1752cdeff8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x71334212cd2aa7955ca710560d035d4734966edc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x7c5f6331572350dbb4126591c74df9fac2429fa0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x82a2646400032eaa9c32022f7b1d4335e1789f85` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x8d4ff0ba361a9360caeeba55f10a08f32775587c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x973d2990f829662f2415317384c680247be46aae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x9f76ad7398c3ecdffc062166490ac8f70184d20b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xa169a53e5c8c36dd1cfed0ceb2bcd15026091272` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xaf82d9022ddb41b39196248e1a859a7fb8965622` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xafc1626d1e91cf3de6e7037404f6ad1c0e927a4a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xb4bdb22fc956ccc659b568975a398c1dcaa5d977` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xbeaa4b2ce11cc2f8a059341dad422814b66d1ad0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xc214d5c18c5191afbfeb60f70f32dcd4d13149ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xcc1cf8f5f32ce55b6e798c8122d841e957077c59` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xd0fe6f0cfefcb46662b616340098e6eb4bd29f09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xd3346737e370119961c444c0c1b10d7c3fcdf36c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xd8d9c3fa2f4b24b858720a369cc3fffa3a24a4ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xd8fe153c5c44535017657f52c36ba1c64fdec7b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xda247baec168f5048d3e05ad1658956872f4ab71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0xf84a6a6d6a584b0bad8bbd4b0b70d902e821f11b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0xb4e2ec87f8e6e166929a900ed433c4589d721d70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x1cbf7f06c04226488b4d5b2d5ea5c8b965130500` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x2855666fbc5f526269b1f5dc73dfc8e11acb67f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x2bb069a248ba1c62062143462ae7bdb5c4360e3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x30e214b05cda6438ad35b2597130c338ca8aef74` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x31f6556a61637839aa8bc3b55d8dbefd9db8865c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x38cdf61680d7b646efd59d8d4ece8c65fe11861b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x3c4a35203013c26220281b425052a069c54bb0f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x3dda51f1658519ac9dab865eb2900221ccd29421` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x43b007888191ad30aa4548599a7bf5fa8cbd90f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x4b62c0369a13b68f75bbbda9fd91ba8270ca4862` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x4db1d229170417ede991e20be159c0847d67c9ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x527b279fe61e459e0c0a0a1bb9de08a49cdc689a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x542cd48cb7da98e3ff644bc6b92d74ddd2ccdad7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x584e836b7e6c3594c8a285e40f8a1830523df05d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x595d900524fb1101dc7a0009a927ded4374d7bf1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x66211ab72fb0a06e9e6ed8b21aa3c1a01f171521` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x78c5a2b6ad8cc824ad28decce82a3be9ba12785b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x79cb8bc3035e5328498be0d6ca93a6a56f27a2ae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x8755be098d54cd16687b7c0d39791cd899e4dd8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x8d212929066e26b063527e6715cfce61b99f621d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x9830d653a63f8910d229f3fbf60361535782436d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x9e41477315c4045b129351428147761082762aee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xa34d2b93ffc304e7d99b1b6bdc28cc2d4f0a58e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xa49bb23ef1936f98e6c31e2d752b3f7bd6a378b9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xbb52ea71e0e7824e99c9b17adf0053baab69cc6d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xbe1a14779411fa2ea6c426c123248f48a30fc5f4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc0f505224b91bd50cd5991cca8e492563e9b7b72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xcbeed94ad7bd3725103899450a528fe690e91d8e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xcf6381f528e813b12476399e8471d5689ad4736b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xddadb5dca827f8d59000d610e456630695928660` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xdffeafba6716638091554fa50435a0448fb2992e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xe671d60816fce03b9d6204dce0b5cf31f4262947` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xef754bbdccadbc8de1afc64796537d81d8c9cceb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xf916c4a6fb79f4b6064d9992bd09ba862ec34395` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Fuji_Securing_2021-07.pdf](https://github.com/Fujicracy/fuji-protocol/blob/main/audits/Fuji_Securing_2021-07.pdf) | unknown | Audit | 2021-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 33 | n/a |
| [Fuji_TrailOfBits_2021-11.pdf](https://github.com/Fujicracy/fuji-protocol/blob/main/audits/Fuji_TrailOfBits_2021-11.pdf) | Trail of Bits | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 19 | n/a |
| [2022_11_Fujidao_Labs_OU.pdf](https://github.com/ComposableSecurity/.github/blob/main/reports/2022_11_Fujidao_Labs_OU.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |
| [DL audit link](https://hatsfinance.medium.com/final-review-fuji-finance-audit-competition-and-winners-announcement-dac2f3b4743e) | unknown | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13141] Fuji_Securing_2021-07.pdf — no match: No reason recorded
- [13142] Fuji_TrailOfBits_2021-11.pdf — no match: No reason recorded
- [13143] 2022_11_Fujidao_Labs_OU.pdf — no match: Extracted all contracts from the 'Agreed scope of tests' section for both rounds, plus the report date from the cover page.
- [26852] DL audit link — no match: The document is a blog post summarizing an audit competition, not a formal audit report. It mentions contract names like BaseVault.sol, BorrowingVault.sol, BaseRouter.sol, ConnextRouter, BalanceFlasher, FujiOracle, but these are not explicitly listed in a scope section. The date is the publication date of the blog post.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Fuji_Securing_2021-07.pdf | AaveFlashLoans | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | AlphaWhitelist | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | Controller | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | CreamFlashLoans | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | DyDxFlashLoans | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | Errors | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | Flasher | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | Fliquidator | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | FujiAdmin | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | FujiBaseERC1155 | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | FujiERC1155 | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | FujiMapping | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | IAlphaWhiteList | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | IFujiAdmin | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | IFujiERC1155 | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | IProvider | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | IVault | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | LibFlashLoan | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | LibUniERC20 | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | LibUniversalERC20 | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | LibVault | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | MathUtils | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | ProviderAave | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | ProviderCompound | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | ProviderDYDX | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | ProviderIronBank | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | ProviderLQTY | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | VaultBase | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | VaultETHDAI | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | VaultETHUSDC | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | VaultETHUSDT | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | VaultHarvester | unmatched — not counted | — | — | no |
| Fuji_Securing_2021-07.pdf | WadRayMath | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | Claimable | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | ClaimableUpgradeable | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | Controller | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | DyDxFlashLoans | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | DyDxFlashloanBase | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | F1155Manager | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | FLiquidator | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | Flasher | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | FujiAdmin | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | FujiBaseERC1155 | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | FujiERC1155 | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | FujiMapping | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | FujiOracle | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | FujiVault | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | Harvester | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | Proxy | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | Swapper | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | VaultBaseUpgradeable | unmatched — not counted | — | — | no |
| Fuji_TrailOfBits_2021-11.pdf | VaultControlUpgradeable | unmatched — not counted | — | — | no |
| 2022_11_Fujidao_Labs_OU.pdf | BaseRouter | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | BaseVault | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | PausableVault | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | VaultDeployer | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | CoreRoles | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | SystemAccessControl | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | Chief | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | FujiOracle | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | AddrMapper | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | AaveV2 | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | CompoundV2 | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | CompoundV3 | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | BorrowingVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | BorrowingVault | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | VaultPermissions | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | YieldVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | YieldVault | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | RebalancerManager | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | BaseFlasher | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | EIP712 | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | FlasherAaveV3 | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | LibActionBundler | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | LibConnextBundler | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | ConnextRouter | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | SimpleRouter | unmatched — not counted | — | listed in scope | no |
| 2022_11_Fujidao_Labs_OU.pdf | UniswapV2Swapper | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 185 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 78 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [13141] Fuji_Securing_2021-07.pdf
- [13142] Fuji_TrailOfBits_2021-11.pdf
- [13143] 2022_11_Fujidao_Labs_OU.pdf
- [26852] DL audit link

Fork inheritance lineage and inherited audits are included when available.
