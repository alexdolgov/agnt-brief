# Agentic Audit Brief: Rook

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Rook (`rook`)
- Website: [https://keeperdao.com/](https://keeperdao.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 84 unique implementations (176 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,219,064.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Rook in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 82 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 25
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/74
- Verified + Unaudited implementations: 74
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 84
- Raw deployments: 176
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (74)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BasicAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0807d0...41b7c3`; ethereum `0x32666b...b96e80`; ethereum `0x500dc5...30e090`; ethereum `0x67fc89...c365fa`; ethereum `0xae65b0...7f2b1a` | ⚠️ Unaudited |
| BCH_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2d578...b69772` | ⚠️ Unaudited |
| BCHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcabb5e...e1a461` | ⚠️ Unaudited |
| BCHShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2095be...0de6cd`; ethereum `0xa76bea...021a8c`; ethereum `0xe0926b...cfe771` | ⚠️ Unaudited |
| BorrowerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde9274...ea8002` | ⚠️ Unaudited |
| BTC_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x11716a...aee110`; ethereum `0x1c0fdf...930cdd`; ethereum `0x2c4ce4...e292f6` | ⚠️ Unaudited |
| BTCShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1258d7...61902a`; ethereum `0x2f4657...2d0cd6` | ⚠️ Unaudited |
| DarknodePayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x098e17...c370b9`; ethereum `0x18e610...1eda41`; ethereum `0x376d83...3e4faa`; ethereum `0x43f370...788e39`; ethereum `0x50190f...4a9123`; ethereum `0x5a7802...0a8b6a`; ethereum `0x989b7c...2ddb10`; ethereum `0xab61ac...82d900`; ethereum `0xdf2a33...085dec` | ⚠️ Unaudited |
| DarknodePaymentMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x085d9b...05f54d` | ⚠️ Unaudited |
| DarknodePaymentStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x311999...effe49`; ethereum `0x731ea4...cbe9d2`; ethereum `0x7546db...316677`; ethereum `0x9c5b07...84742b`; ethereum `0xc9ebe9...fcdc39`; ethereum `0xe33417...be23e7` | ⚠️ Unaudited |
| DarknodeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x379900...341c2f`; ethereum `0xa1eb04...199fa9`; ethereum `0xe0a0fc...fe949a` | ⚠️ Unaudited |
| DarknodeRegistryForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb03201...3058fa` | ⚠️ Unaudited |
| DarknodeRegistryLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2d7b6c...054f0a`; ethereum `0x33b53a...bcf140` | ⚠️ Unaudited |
| DarknodeRegistryLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x308ecd...49fbb7`; ethereum `0x7c08ff...d693dd` | ⚠️ Unaudited |
| DarknodeRegistryLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5edb23...85ef09`; ethereum `0x986382...ce8863`; ethereum `0xfbd449...59b35c` | ⚠️ Unaudited |
| DarknodeRegistryLogicV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f9822...4acecb` | ⚠️ Unaudited |
| DarknodeRegistryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x09e343...017405`; ethereum `0x8adb36...e96cbf`; ethereum `0x98525d...13111a` | ⚠️ Unaudited |
| DarknodeRegistryStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x14add4...98897a`; ethereum `0x4b636f...1d6013`; ethereum `0x4c2f05...a47579`; ethereum `0x542a45...739d34`; ethereum `0x60ab11...1f8782`; ethereum `0x82072f...76bc4e`; ethereum `0xac2381...4470c5`; ethereum `0xe8d0c5...0c48b1` | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Preupgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1e69da...c38f1e`; ethereum `0xb0c560...07c3a7` | ⚠️ Unaudited |
| DarknodeRegistryV1ToV2Upgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5945bb...9cfaa5` | ⚠️ Unaudited |
| DarknodeRewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x880407...3cd588` | ⚠️ Unaudited |
| DarknodeSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x04ed8f...2962f2`; ethereum `0x4e85ac...22b28d`; ethereum `0x64512f...754c0e`; ethereum `0x7add7e...678b16`; ethereum `0x966b2d...3270b5`; ethereum `0xd33cfe...f559aa` | ⚠️ Unaudited |
| DEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x8ff192...a8373a`; ethereum `0xbd0c94...6985b7`; ethereum `0xe4ec27...a00f80`; ethereum `0xf65d91...768594` | ⚠️ Unaudited |
| DEXAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9992e9...8d3a58`; ethereum `0xaf0efc...5f8042`; ethereum `0xf218f9...176ad5` | ⚠️ Unaudited |
| GatewayLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x37a486...62ef93`; ethereum `0x85bde7...76e5ae`; ethereum `0xc3ac15...676e3a`; ethereum `0xd4d496...fa9f99` | ⚠️ Unaudited |
| GatewayLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x402ec5...6460d6` | ⚠️ Unaudited |
| GatewayRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x503670...67a24e`; ethereum `0x817d2e...ed3400`; ethereum `0xe80d34...c54ddd` | ⚠️ Unaudited |
| GetOperatorDarknodes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e27a3...b8b5f0` | ⚠️ Unaudited |
| HidingGame2Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d5541...df184c` | ⚠️ Unaudited |
| HidingGame3Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc45bdd...12be17` | ⚠️ Unaudited |
| HidingGame4Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25d27d...67b139` | ⚠️ Unaudited |
| HidingGameDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd81e97...5311fd` | ⚠️ Unaudited |
| KeeperDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf55a73...6a9026` | ⚠️ Unaudited |
| LiquidityPoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35ffd6...5e40e5` | ⚠️ Unaudited |
| LiquidityPoolV4 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f868c...6275e2` | ⚠️ Unaudited |
| LPDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcadf67...f2f75c` | ⚠️ Unaudited |
| LPPreDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef38e...effe71` | ⚠️ Unaudited |
| LPQ22Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff1624...e8a356` | ⚠️ Unaudited |
| LPQ2Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2777b7...5dd6a1` | ⚠️ Unaudited |
| LPQ3Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59ff89...e4ea2d` | ⚠️ Unaudited |
| MintGatewayLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 5 deployments: ethereum `0x05387a...c6b1aa`; ethereum `0x236284...9c0783`; ethereum `0x4a1448...392029`; ethereum `0xd7d7de...5ab874`; ethereum `0xed7d08...6bf1bf` | ⚠️ Unaudited |
| MintGatewayLogicV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5628...ce22b4` | ⚠️ Unaudited |
| MintGatewayLogicV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0xc3bbd5...6e122d`; ethereum `0xcc4ff5...c3c52f`; ethereum `0xd0da0d...66eedd`; ethereum `0xe4b679...43ee71` | ⚠️ Unaudited |
| MintGatewayUpgrader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x137730...b04804`; ethereum `0x8d4565...5ff8a5` | ⚠️ Unaudited |
| Orderbook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b8bb1...2598e0` | ⚠️ Unaudited |
| Protocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a43b0...51ee52` | ⚠️ Unaudited |
| ProtocolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x547516...bdbadf` | ⚠️ Unaudited |
| ProtocolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa638f3...8c94b4`; ethereum `0xef4de0...f6a85b` | ⚠️ Unaudited |
| ProtocolLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x637278...2447c8`; ethereum `0xf61e97...275144` | ⚠️ Unaudited |
| ProtocolLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8b49f2...915de0`; ethereum `0xc25167...345b66` | ⚠️ Unaudited |
| ProtocolLogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb227d5...769e3f`; ethereum `0xee5d2e...9f9c0b` | ⚠️ Unaudited |
| ProtocolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4d880b...69b47a`; ethereum `0xf15ba8...f4018b` | ⚠️ Unaudited |
| RenERC20LogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x0a2d36...8c1bee`; ethereum `0x82e728...966c8e`; ethereum `0x93e47e...5340ba`; ethereum `0xa2f0a9...8bf05b` | ⚠️ Unaudited |
| RenERC20LogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x1c5db5...0b37c2`; ethereum `0x459086...fef5bf`; ethereum `0xe2d6cc...037e80`; ethereum `0xeb4c27...6bb27d` | ⚠️ Unaudited |
| RenERC20LogicV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 5 deployments: ethereum `0x3832d2...0671a7`; ethereum `0x52d87f...2cb641`; ethereum `0xa07413...77f8ca`; ethereum `0xd5147b...9276f5`; ethereum `0xe3cb48...687f80` | ⚠️ Unaudited |
| RenERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee2740...7894a7` | ⚠️ Unaudited |
| RenExAtomicSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3fed6...a01cc3` | ⚠️ Unaudited |
| RenExBalances | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5ec18b...a77efd`; ethereum `0x9636f9...0ff2dc` | ⚠️ Unaudited |
| RenExBrokerVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31a0d1...d2e383` | ⚠️ Unaudited |
| RenExSettlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x908262...2b21e1` | ⚠️ Unaudited |
| RenExTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cade4...744ec4` | ⚠️ Unaudited |
| RenProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x044906...0ad01c`; ethereum `0x294b56...4985b8`; ethereum `0x3840c0...1cdfaf`; ethereum `0x521471...074906`; ethereum `0xdf1d8e...530145`; ethereum `0xfc3df9...09bfb5` | ⚠️ Unaudited |
| RenToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e0679...eb40ed` | ⚠️ Unaudited |
| RepublicToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21c482...9fcebd` | ⚠️ Unaudited |
| RookToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa5047...313d4a` | ⚠️ Unaudited |
| SettlementRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119da7...551036` | ⚠️ Unaudited |
| ShifterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d4713...876cac`; ethereum `0x5d9bf2...ac9e6f` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe43c3...314fdb` | ⚠️ Unaudited |
| zBCH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0e68ee...8f1a73`; ethereum `0x466dd9...953ff1`; ethereum `0x4b23eb...3e5f29` | ⚠️ Unaudited |
| zBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x88c64a...78bb7d`; ethereum `0xc04956...477fb9` | ⚠️ Unaudited |
| ZEC_DAI_Reserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x7b3b73...407bf9`; ethereum `0x96f0da...c63358`; ethereum `0xa08b74...a7839c`; ethereum `0xc28aa4...aa90bb`; ethereum `0xdbd93a...6fa716` | ⚠️ Unaudited |
| ZECGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52c883...ada49d` | ⚠️ Unaudited |
| ZECShifter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2b59ef...461d5b`; ethereum `0x8cb5e7...a9599a` | ⚠️ Unaudited |
| zZEC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x09aa07...f65295`; ethereum `0x8dd894...a9d719` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d1d44...8e2c1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d7e24...6f7f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4012ef...d8f4f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48ace4...642524` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4c8cc2...d436b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be0e8...4fa359` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x82151c...bef3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d6e6e...b11198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab5ebc...3a5a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe175a2...490674` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [peckshield_final.pdf](http://web.archive.org/web/20201117220335/https://github.com/keeperdao/docs/blob/master/audits/peckshield_final.pdf) | PeckShield | Audit | 2020-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [quantstamp_draft.pdf](http://web.archive.org/web/20201117220334/https://github.com/keeperdao/docs/blob/master/audits/quantstamp_draft.pdf) | Quantstamp | Audit | 2020-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf](http://web.archive.org/web/20221212181643/https://github.com/rookprotocol/docs/blob/master/audits/PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf) | PeckShield | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [PeckShield-kCompound.pdf](http://web.archive.org/web/20221212174138/https://github.com/rookprotocol/docs/blob/master/audits/PeckShield-kCompound.pdf) | PeckShield | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Quantstamp-kCompound.pdf](http://web.archive.org/web/20221212181221/https://github.com/rookprotocol/docs/blob/master/audits/Quantstamp-kCompound.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [KeeperDAO Liquidity Pool and HidingVault - Report.pdf](http://web.archive.org/web/20210805222729/https://github.com/keeperdao/docs/blob/master/audits/KeeperDAO%20Liquidity%20Pool%20and%20HidingVault%20-%20Report.pdf) | unspecified | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [Manual audit seed](http://web.archive.org/web/20221212172733/https://github.com/rookprotocol/docs/tree/master/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21327] peckshield_final.pdf — no match: No explicit scope section; contract names extracted from findings targets and file paths in code snippets.
- [21328] quantstamp_draft.pdf — no match: No explicit scope section; contracts inferred from findings and test output. Audit date from changelog: 2020-04-21.
- [21329] PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf — no match: No explicit scope table; contracts extracted from findings targets.
- [21330] PeckShield-kCompound.pdf — no match: The report explicitly lists KComptroller, CompoundVars, JITU, and KCompoundPosition as targets in findings. No other contracts are mentioned as in scope. The audit date is clearly stated on the cover page and in the document properties.
- [21331] Quantstamp-kCompound.pdf — no match: Extracted contracts from scope, findings, file signatures, and code coverage table. Audit date from revised report date (2021-05-04).
- [21332] KeeperDAO Liquidity Pool and HidingVault - Report.pdf — no match: Extracted contract names from scope, findings, file signatures, and code coverage sections. Audit date from cover page.
- [24474] Manual audit seed — no match: The provided text is a GitHub directory listing of audit reports, not the actual audit report content. No contract names or audit date could be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| peckshield_final.pdf | KToken | unmatched — not counted | — | Target in findings PVE-001, PVE-003 | no |
| peckshield_final.pdf | LiquidityPoolV1 | unmatched — not counted | — | Target in findings PVE-002, PVE-003, PVE-004, PVE-007, PVE-008 | no |
| peckshield_final.pdf | MarketContractProxy | unmatched — not counted | — | Target in findings PVE-005, PVE-006 | no |
| quantstamp_draft.pdf | CompoundKeeper | unmatched — not counted | — | mentioned in findings QSP-2, QSP-3, QSP-4, QSP-5, QSP-6, QSP-10, and test output | no |
| quantstamp_draft.pdf | CoreKeeper | unmatched — not counted | — | mentioned in test output as CoreKeeperV1 | no |
| quantstamp_draft.pdf | KToken | unmatched — not counted | — | mentioned in findings QSP-7 and test output | no |
| quantstamp_draft.pdf | FlashLoanReceiver | unmatched — not counted | — | mentioned in findings QSP-3, QSP-10 and test output | no |
| quantstamp_draft.pdf | KeeperRoles | unmatched — not counted | — | mentioned in finding QSP-8 | no |
| quantstamp_draft.pdf | Compound | unmatched — not counted | — | mentioned in finding QSP-11 | no |
| PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf | KRoles | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf | CoordinationPaymentChannels | unmatched — not counted | — | Target in findings PVE-002 and PVE-003 | no |
| PeckShield-kCompound.pdf | KComptroller | unmatched — not counted | — | Listed as target in findings PVE-001, PVE-004, PVE-005, PVE-008; described as a gateway contract in the report. | no |
| PeckShield-kCompound.pdf | CompoundVars | unmatched — not counted | — | Listed as target in finding PVE-002; described as protocol-wide registry. | no |
| PeckShield-kCompound.pdf | JITU | unmatched — not counted | — | Listed as target in finding PVE-007; described as gateway contract for users. | no |
| PeckShield-kCompound.pdf | KCompoundPosition | unmatched — not counted | — | Mentioned in findings PVE-006 and PVE-007; described as managing compound positions. | no |
| Quantstamp-kCompound.pdf | CompoundVars | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | KCompound | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | CompoundMigrator | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | KCompoundPosition | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | KComptroller | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | JITU | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-kCompound.pdf | KFactory | unmatched — not counted | — | listed in scope (code coverage table) | no |
| Quantstamp-kCompound.pdf | Interfaces | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp-kCompound.pdf | Tokens | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp-kCompound.pdf | Comptroller | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp-kCompound.pdf | Exponential | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp-kCompound.pdf | CToken | unmatched — not counted | — | listed in file signatures | no |
| Quantstamp-kCompound.pdf | ComptrollerErrorReporter | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | LiquidityPool | unmatched — not counted | — | listed in scope and findings | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | HidingVaultNFT | unmatched — not counted | — | listed in scope and findings | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | JITUCore | unmatched — not counted | — | listed in scope and findings | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | JITUCompound | unmatched — not counted | — | listed in scope and findings | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | KCompound | unmatched — not counted | — | listed in scope and findings | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | HidingVault | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | Proxy | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | LibHidingVault | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | IJITUCompound | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | LibCompound | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | LibCToken | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | IKCompound | unmatched — not counted | — | listed in file signatures | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | BorrowerProxy | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | CanReclaimTokens | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | KRoles | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | Tokens | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | GelatoJITU | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | Gelatofied | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | MockKCompound | unmatched — not counted | — | listed in code coverage | no |
| KeeperDAO Liquidity Pool and HidingVault - Report.pdf | Compound | unmatched — not counted | — | listed in code coverage | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 74 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 48 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1, medium=3
- Match method counts: n/a

Zero-match audit list:

- [21327] peckshield_final.pdf
- [21328] quantstamp_draft.pdf
- [21329] PeckShield-Audit-Report-KeeperDAOStaking-v1.0_1.pdf
- [21330] PeckShield-kCompound.pdf
- [21331] Quantstamp-kCompound.pdf
- [21332] KeeperDAO Liquidity Pool and HidingVault - Report.pdf
- [24474] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
