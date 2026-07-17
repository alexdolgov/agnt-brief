# Agentic Audit Brief: zkLink Nova

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 7 audit(s)
- Eligible audit results: 15 (7 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: zkLink Nova (`zklink-nova`)
- Website: [https://zklink.io](https://zklink.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia, base, base-sepolia, blast, ethereum, linea, manta-pacific, mantle, merlin, optimism, optimism-sepolia, scroll, sepolia, zklink-nova, zksync-era
- Contract surface: 623 unique implementations (644 raw deployments)
- Coverage basis: 3/13 confirmed own live verified implementations (23.1%); conservative 23.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $9,436,392.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for zkLink Nova. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across arbitrum, arbitrum-sepolia, base, base-sepolia, blast, ethereum, linea, manta-pacific, mantle, merlin, optimism, optimism-sepolia, scroll, sepolia, zklink-nova, zksync-era. Structural roles: 6 supporting, 4 core, 3 unclassified. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: supporting (6), core (4), unclassified (3)
- Contract kinds: contract (13)
- Detected standards: erc1967proxy (3), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 53 contracts are derived from known codebases. 53 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1ee09a2caa0813a5183f90f5a6d0e4871f4c6002`, chain 1)
- UnnamedContract (`0x273d59aed2d793167c162e64b9162154b07583c0`, chain 1)
- UnnamedContract (`0x41faf46ca4dfd912b65b66d29bdd432782bb1158`, chain 1)
- UnnamedContract (`0x4eea93966aa5cd658225e0d43b665a5a491d2b7e`, chain 1)
- UnnamedContract (`0x5fd9f73286b7e8683bab45019c94553b93e015cf`, chain 1)
- UnnamedContract (`0x649dfa2c4d09d877419fa1edc4005bfbef7cd82d`, chain 1)
- UnnamedContract (`0x668e8f67adb8219e1816c2e5bbea055a78af3026`, chain 1)
- UnnamedContract (`0x803460416c2682ac54fccf03ef77b10a12f2809b`, chain 1)
- UnnamedContract (`0x83bc7394738a7a084081af22eec0051908c0055c`, chain 1)
- UnnamedContract (`0x986c905087a663db3c81ad319b94c1e9dd388e92`, chain 1)
- UnnamedContract (`0xad16edcf7deb7e90096a259c81269d811544b6b6`, chain 1)
- UnnamedContract (`0xde1ce751405fe6d836349226eedcdffe1c3be269`, chain 1)
- UnnamedContract (`0xecd189e0f390826e137496a4e4a23acf76c942ab`, chain 1)
- UnnamedContract (`0xfc385a1df85660a7e041423db512f779070fcede`, chain 1)
- UnnamedContract (`0x46c8d02e93d5a03899dfa7cf8a40a07589a3fa1b`, chain 10)
- UnnamedContract (`0x5bd51296423a9079b931414c1de65e7057326eaa`, chain 10)
- UnnamedContract (`0xad5d729291c0d6a299e370814ca6ce1c8c25b51c`, chain 10)
- UnnamedContract (`0xab3ddb86072a35d74bed49aa0f9210098ebf2d08`, chain 324)
- UnnamedContract (`0xafe8c7cf33ed0fee179dff20ae174c660883273a`, chain 324)
- UnnamedContract (`0xc203a2df4ddff9ede2200f1f02054fd721182535`, chain 324)
- UnnamedContract (`0x62351b47e060c61868ab7e05920cb42bd9a5f2b2`, chain 5000)
- UnnamedContract (`0x1054ff8b3b7b9f68d2e55c4a42e8952332c69011`, chain 8453)
- UnnamedContract (`0x80d12a78efe7604f00ed07ab2f16f643301674d5`, chain 8453)
- UnnamedContract (`0xe473ce141b1416fe526eb63cf7433b7b8d7264dd`, chain 8453)
- UnnamedContract (`0x7bd79ded935b542fb22c74305a4d2a293c18483a`, chain 42161)
- UnnamedContract (`0xfb0ad0b3c2605a7ca33d6badd0c685e11b8f5585`, chain 42161)
- UnnamedContract (`0xff73a1a1d27951a005eb23276dc99cb7f8d5420a`, chain 42161)
- UnnamedContract (`0x7b5780d6df85a7df96a3e1a019639a1dbde937db`, chain 59144)
- UnnamedContract (`0xef528a8ca4b6afdb6716ef9f11bca0c5c47454ec`, chain 59144)
- UnnamedContract (`0x29ba92fe724bed5c5ebfd0099f2f64a6dc5078fd`, chain 81457)
- UnnamedContract (`0x3f64e2e09732969813904a8473074cfadee66af1`, chain 81457)
- UnnamedContract (`0x8df0c2ba3916bf4789c50dec5a79b2fc719f500b`, chain 81457)
- UnnamedContract (`0xd8428a59b60df2d81514d429d57df23293f1bce7`, chain 534352)
- UnnamedContract (`0x1a1a3b2ff016332e866787b311fcb63928464509`, chain 810180)
- UnnamedContract (`0x2f8a25ac62179b31d62d7f80884ae57464699059`, chain 810180)
- UnnamedContract (`0x8280a4e7d5b3b658ec4580d3bc30f5e50454f169`, chain 810180)
- UnnamedContract (`0x83fd59fd58c6a5e6ea449e5400d02803875e1104`, chain 810180)
- UnnamedContract (`0xc967dabf591b1f4b86cfc74996ead065867af19e`, chain 810180)
- UnnamedContract (`0xda4aaed3a53962c83b35697cd138cc6df43af71f`, chain 810180)
- UnnamedContract (`0xf573fa04a73d5ac442f3dea8741317feaa3cdeab`, chain 810180)
- AdminFacet (`0xce8e69a2685c80eb6bd825d0552f44bb34f35503`, chain 59144)
- DiamondProxy (`0x5cb18b6e4e6f3b46ce646b0f4704d53724c5df05`, chain 59144)
- ERC1967Proxy (`0xd784d7128b46b60ca7d8bdc17dcec94917455657`, chain 169)
- ERC1967Proxy (`0xe946abb40928326ce5bff303e7b8f0f253ea39d0`, chain 169)
- ERC1967Proxy (`0x119b9459d9119d07c23ad06778aeabec804fd1a2`, chain 534352)
- ExecutorFacet (`0x1b19287ce898217d937571eaba97ec50f27d1206`, chain 59144)
- GettersFacet (`0xb1d0354063527e4426c4becbdb75fe0fb112e3cb`, chain 59144)
- MailboxFacet (`0x11bf5bc6327f7becb0ae753932a181c8fb5780ba`, chain 59144)
- TransparentUpgradeableProxy (`0x44a65dc12865a1e5249b45b4868f32b0e37168ff`, chain 169)
- TransparentUpgradeableProxy (`0x62ce247f34dc316f93d3830e4bf10959fce630f8`, chain 59144)
- TransparentUpgradeableProxy (`0x3c7c0ebfcd5786ef48df5ed127cddeb806db976c`, chain 534352)
- ValidatorTimelock (`0x509ff56c152315edee91a2e0f059195519507e01`, chain 59144)
- Verifier (`0x902c3806a84f4e855a8746e92d7f1c9a51400458`, chain 59144)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 53/87 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/13 (23.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 53 own, 20 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 550 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 53 of 623 unique; 570 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/48
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 0
- Unverified implementations: 575
- Unique implementations: 623
- Raw deployments: 644
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 15 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 23.1% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 3 | 6.3% | 2024-01 |
| ABDK | Tier 2 | 2 | 4.2% | 2024-07 |
| Secure3 | Tier 2 | 1 | 2.1% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminFacet | unknown | project_anchor | own_supporting | 1 | linea | unit-398455 | `0x5cb18b6e4e6f3b46ce646b0f4704d53724c5df05` | ✅ Audited |
| L1ERC20Bridge | operational_periphery | project_anchor | own_supporting | 1 | linea | unit-398456 | `0x62ce247f34dc316f93d3830e4bf10959fce630f8` | ✅ Audited |
| ValidatorTimelock | governance | project_anchor | own_supporting | 0 | linea | unit-398430 | `0x509ff56c152315edee91a2e0f059195519507e01` | ✅ Audited |

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminFacet | unknown | project_anchor | own_supporting | 0 | linea | unit-398434 | `0xce8e69a2685c80eb6bd825d0552f44bb34f35503` | ⚠️ Unaudited |
| Baja | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5fe8534a6f96cb01261bd96e98c17c2c1cab3204` | ⚠️ Unaudited |
| ComplexOrderRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6154dce92267af35c733dba5d20e36ee3f8ed3d8` | ⚠️ Unaudited |
| CumulativeMerkleDrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1349a8d352b1971cbebeacf55fb75526f47b6610` | ⚠️ Unaudited |
| CustomBridgedToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 2 | linea | n/a | 2 deployments: linea `0x3aab2285ddcddad8edf438c1bab47e1a9d05a9b4`; linea `0xb5bedd42000b71fdde22d3ee8a79bd49a568fc8f` | ⚠️ Unaudited |
| EmptyVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x437a10fc9b6255281eb6c25a8224bd13f42bbcac` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | manta-pacific | unit-398407 | `0xd784d7128b46b60ca7d8bdc17dcec94917455657` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | manta-pacific | unit-398408 | `0xe946abb40928326ce5bff303e7b8f0f253ea39d0` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | scroll | unit-398423 | `0x119b9459d9119d07c23ad06778aeabec804fd1a2` | ⚠️ Unaudited |
| ExecutorFacet | unknown | project_anchor | own_supporting | 0 | linea | unit-398429 | `0x1b19287ce898217d937571eaba97ec50f27d1206` | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x391536d06480e554cfa60f9e2be0f3bbe5a377ca` | ⚠️ Unaudited |
| FrogRichToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x038f1c6ed5fccf690a920a27b39366eeef27efce` | ⚠️ Unaudited |
| GettersFacet | unknown | project_anchor | own_supporting | 0 | linea | unit-398433 | `0xb1d0354063527e4426c4becbdb75fe0fb112e3cb` | ⚠️ Unaudited |
| KTX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x779f4e5fb773e17bc8e809f4ef1abb140861159a` | ⚠️ Unaudited |
| L1ERC20Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 2 deployments: manta-pacific `0x0d53ce63f3a72879d543ed6272a081308a731470`; manta-pacific `0x5f58bcce409cdafbbd705e720743b1eff9fef28c` | ⚠️ Unaudited |
| LsdETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc7e196092dac94f0c76cfb020b60fa75b97c5b` | ⚠️ Unaudited |
| MailboxFacet | unknown | project_anchor | own_supporting | 0 | linea | unit-398428 | `0x11bf5bc6327f7becb0ae753932a181c8fb5780ba` | ⚠️ Unaudited |
| Manta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x95cef13441be50d20ca4558cc0a27b601ac544e5` | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 6 deployments: manta-pacific `0x34c7ad65e4163306f8745996688b476914201ce0`; manta-pacific `0x77b6f99970f488cfa8bd41892900b6ce881c2300`; manta-pacific `0x9bf486550523faf9902a8be78abb436d287a2c6c`; manta-pacific `0xa53e005cecd3d7c89a4ae814617cc14828b6527e`; manta-pacific `0xbdad407f77f44f7da6684b416b1951eca461fb07`; manta-pacific `0xc8d4bcb4845f4583fd70a3ed22ed6623ef45b986` | ⚠️ Unaudited |
| MultiCall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xdc07713b6c874c87b390a04f0f17a69213d2208b` | ⚠️ Unaudited |
| NETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6572019548dfeba782ba5a2093c836626c7789a` | ⚠️ Unaudited |
| NethOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3343f9de5612b6f8a433abc3eaae245cfa3283ce` | ⚠️ Unaudited |
| OBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1e12802831da99d2d47b6a55049d69bf7de0e3c` | ⚠️ Unaudited |
| OptimismL2Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 3 deployments: manta-pacific `0x50efc7f1290479cb879473512d89fdc80b726211`; manta-pacific `0x55fa5276c44c1b465196898b144524c9c852235e`; manta-pacific `0xbfa352a683d82a04233cc45ac1308621ba63283f` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x661d88e548214f5606a0491f03b072fd0f471e7c` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9831aa46badb308f8e87a7e3ab080adfd4f677a0` | ⚠️ Unaudited |
| PositionRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8a7f1c607306f52ed07f9a705b54869159d1bd7c` | ⚠️ Unaudited |
| Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 5 deployments: manta-pacific `0x028781ceed4a2264466ef5ab73c91603087fa131`; manta-pacific `0x5bc75b03601c2728f905164ac31a44374fa73e61`; base `0x161f4baab4052f20f5f4347ec4422556aa0477f0`; arbitrum `0xed5d1e1320720cae8bb40275550a7d307a082ac3`; linea `0x3e98568770af932353a2a8c3e3b77cdb7f0c2fa1` | ⚠️ Unaudited |
| RadiantOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3082cc23568ea640225c2467653db90e9250aaa0` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x02170fea1fd31a26aaf6dd06adf01b36db2e0a5f`; mantle `0x9c5582a773d929e2cd2de34e04e3a8302832733c` | ⚠️ Unaudited |
| RewardRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x207d39314707001ae36f12335dd8b1f65cd688ca` | ⚠️ Unaudited |
| RewardTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x57acdfef9d2d2c53e6316b3483ca9a14b481f7ab` | ⚠️ Unaudited |
| RNethOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcea3681131dd151ee72a5c8dbba555cb8b8ded56` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xea02deeb067acec119095845d780665883dc4583` | ⚠️ Unaudited |
| TinyTigerCatToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf782e172a14ee1c85cd980c15375ba0e87957028` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | manta-pacific | unit-398405 | `0x44a65dc12865a1e5249b45b4868f32b0e37168ff` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 0 | scroll | unit-398424 | `0x3c7c0ebfcd5786ef48df5ed127cddeb806db976c` | ⚠️ Unaudited |
| UpgradeGatekeeper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x9dc75660523581d56d4c8efd5819161e15bbc88c` | ⚠️ Unaudited |
| Verifier | periphery | project_anchor | own_supporting | 0 | linea | unit-398432 | `0x902c3806a84f4e855a8746e92d7f1c9a51400458` | ⚠️ Unaudited |
| Vester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x2e4f63c3ffdf457ff210a29ef10ce3b12c132f0c`; mantle `0xb6f417db08eb20834b53146190921c78356d227c` | ⚠️ Unaudited |
| WBTC | token | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcabae6f6ea1ecab08ad02fe02ce9a44f09aebfa2` | ⚠️ Unaudited |
| WithdrawalFinalizer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6fe38b4a1b540f86072dd36b7df60bc1b4f414a2` | ⚠️ Unaudited |
| wUSDM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x57f5e098cad7a3d1eed53991d4d66c45c9af7812` | ⚠️ Unaudited |
| ZkLink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | 4 deployments: manta-pacific `0x5715dec4cd747675e47b969d3a15aab909b8ce05`; manta-pacific `0x7c56da81caaceceeff624baa93b314e793bc88b3`; manta-pacific `0xe89635a7339bf46198f76b17bcfdad977699cc13`; manta-pacific `0xfb0ad0b3c2605a7ca33d6badd0c685e11b8f5585` | ⚠️ Unaudited |
| ZkLinkPeriphery | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xdd5097fc3f68958649ce70f42b7c1cf0067a3545` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (575)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1054ff8b3b7b9f68d2e55c4a42e8952332c69011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x116d631583026799d61a284518762cf3923d5f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x119b9459d9119d07c23ad06778aeabec804fd1a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13bc536722779508ef5d9994e2fa616553698a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16f692525f3b8c8a96f8c945d365da958fb5735b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178b7401c32a4aab5ef128458888779eaaf4e78a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19e488138311f382c3d3802a2a1deee6a28f9e57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1befbad5c77b46de397cfd4472f77e0dbc566ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398370 | `0x1ee09a2caa0813a5183f90f5a6d0e4871f4c6002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2369624dba451447d629687ab660b6dfd3740bd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398371 | `0x273d59aed2d793167c162e64b9162154b07583c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b763f4f1053980ca71266dd55dafdbbd0680863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dad78e21bb2315d77a4ca07cb000fd8e4523449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2eb71040c0a24fe10194aec2f0a8b264ae9820f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x301365f7334be7e4e32ef4a1d3040c9a476da6a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37d815d5c96d4d9807b5b6e8294343dbb4c38cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38260cbdd0adceab714335a0e3937ac35e28e70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39b5dd701d1ddc729a7a7a9d6e3941aa5264ecb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ad85a55904b8ef62f30b5811717d6982a99f700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c7c0ebfcd5786ef48df5ed127cddeb806db976c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398373 | `0x41faf46ca4dfd912b65b66d29bdd432782bb1158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bf7aab60d30d17bdebc4b22ca008fe3bb5173bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398374 | `0x4eea93966aa5cd658225e0d43b665a5a491d2b7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50cd55e21d0621d4096c71d73e785346dd23fddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x520b826e8d0fdfd8e0cdb1b2243f6648cc6dabd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b065bdb7c02ae517e6c545426fedcd52b3cf147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f1725284d4b3c79c65f42dce3e7027ebc6b8495` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398375 | `0x5fd9f73286b7e8683bab45019c94553b93e015cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398376 | `0x649dfa2c4d09d877419fa1edc4005bfbef7cd82d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398377 | `0x668e8f67adb8219e1816c2e5bbea055a78af3026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e8104bc3e58296934984e15df1879537c766fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7699fb48e19bc72e80a3b40d7e88c42256eeec7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79285fd2224cbc0b25065c49537b72c1a4567afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f431acc894b2bae481efe7ce1e88bc7f167041b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398378 | `0x803460416c2682ac54fccf03ef77b10a12f2809b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80d12a78efe7604f00ed07ab2f16f643301674d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82356248f9132068b98b3a5c4175f7d656594d8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398379 | `0x83bc7394738a7a084081af22eec0051908c0055c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x876ef32cc6e76ecee16bdc867b78356e6624b019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87fdece127aa31f4708975b49a3450d7544d9a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x926cf8c6c07beaba0ecf55c9c41443614c4bedf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398380 | `0x986c905087a663db3c81ad319b94c1e9dd388e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa203534ae15a41b93d6d9c7652be33c52193dfe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6911b556684be462117edea6efd537ef4de6359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398381 | `0xad16edcf7deb7e90096a259c81269d811544b6b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae5b6cb94dbd13769fc2b955bfdf32b3b1e60c1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4f3e1b280d15c90a737bb59bc51174338193cbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7e0b400bde198544eb8c7845bcc6297184ab00a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb836f08271628612d2b63ff6a5b10541b7bef53d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc65e0af33810cea4cf6dc194c287e2e7d6e9d88e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6ebbd78e8f81626bc62570f3c5949221f87b3ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc967dabf591b1f4b86cfc74996ead065867af19e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc43208b28b1ec25f000efc0d2c2af044715f888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8428a59b60df2d81514d429d57df23293f1bce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb4209f23370b3049a8396241c491ee14aa40913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbbad2d42f2df80bcc780d438cd8445b5404057a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398382 | `0xde1ce751405fe6d836349226eedcdffe1c3be269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2964b4083aaf3893c9dda66c3e48163aff8963f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe473ce141b1416fe526eb63cf7433b7b8d7264dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7cdb8b9b24014eea090a0240ab408bb6b8cea46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398383 | `0xecd189e0f390826e137496a4e4a23acf76c942ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf237561207911d20e410a8d866af7f174f777972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5c560c502c62fce873e730c668017906e442145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf64555230d298eb726d52970edf42a07d8c02ede` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398384 | `0xfc385a1df85660a7e041423db512f779070fcede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x07476d10a8b3c614dc92a698ccec34aa9b844b92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2f24331ddfb2d582079c200d1c233f168901a4e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-398385 | `0x46c8d02e93d5a03899dfa7cf8a40a07589a3fa1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-398386 | `0x5bd51296423a9079b931414c1de65e7057326eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x668e8f67adb8219e1816c2e5bbea055a78af3026` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-398388 | `0xad5d729291c0d6a299e370814ca6ce1c8c25b51c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x1f282e46d75622c5b26921094b4ebf7d58d83ce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x649dfa2c4d09d877419fa1edc4005bfbef7cd82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xc8a31aa097c8d1dcf588c425415e4e5a0e250e67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x67ba43ed3860d155d16f82d12ca93a7b2e77bf2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-398410 | `0xab3ddb86072a35d74bed49aa0f9210098ebf2d08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-398411 | `0xafe8c7cf33ed0fee179dff20ae174c660883273a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-398412 | `0xc203a2df4ddff9ede2200f1f02054fd721182535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xebeaf62e4bcb4fdec35100838c86c84b8134ade0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xecd189e0f390826e137496a4e4a23acf76c942ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | merlin | n/a | 4 deployments: merlin `0x41d9036454be47d3745a823c4aacd0e29cfb0f71`; merlin `0xad16edcf7deb7e90096a259c81269d811544b6b6`; merlin `0xf5b90fe755aa2e3ccc69d9548cbeb7b38c661d73`; merlin `0xfc385a1df85660a7e041423db512f779070fcede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0194738dda5a3bf5d488cf3724db25961c8807d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x029661bd5f1f61afe7d25f5a699213ca7a52d912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x05e423e59a9c19ee75369a07345ec4b3394876af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x064b5dcfce51d44cb220858db04501d31a967ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0817629b1471e14887684823a51f1241dc6b92cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x08231bcd66c5e4d2d1d4ad2bc24bfb4477af27b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x08dcc025fe7b5802a2797c703afca7e1c10b447c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0c251fe7739c435d7f635a3869d00c042d46b9ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0c4c754df42cef3aaaff414dbdd321313d11c676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0ce206b1d2aecb40d3abb667c5f92f197a0a5b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0e27edea5c09c3b9a5d9c291426a860253ff1a55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x12a39cc0bb6dcf2fb54ff38415ed25d269ddeb52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x13bb7c8b642db2ffa052df7f447c3751648719b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x16690b0542273eb5c96f00d6516c9b7f88392e4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x168e394498d78a1114645c71dcd83744a24ee76b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x16d8bf64a52ac7732ee825a1cfd75f7bbd8e0801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1872e830cc6ec9c3dbc38f6ddfa43e2b437b63a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x198fbae846e403f11bfecbdfbb7e6263caee6c20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1bf0c8385dda6ae09c4151fe740a3dd155f17d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1ca85898619cf01edd8be6ef7f8989da03d6b694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1cc57dce39176c5ab33f9b88b8bbac43b10c76b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1d29411f42bed70d1567b4b6b4638ee46bae7146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1f10e43a689484cf8e98ee1d994bfb826a1ea481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1f88661ce628ef4ba927cc07e8a925c15fc0ba24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x201eba5cc46d216ce6dc03f6a759e8e766e956ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2108e71628677b4565232a786f979fe125de9c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x216b02fd6aa39505eb49ddffffbcedab97290519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x229034ff327c0054dbde64b1fb674f37a45f3efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x245ad64e982a97999fb1aeaf1d8cf8dec2629245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x25e71a6b45598213e95f9a718e3fe0523e9d9e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x26d5a719102cea88f34d2b90256e881a2a68b09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2a27219050e20c0bc4221a957d6b9265ffdc75f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2a489182779c78b0535c43f8d210c71421974167` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2ac0308f1291725de30544e53c8b9345396926d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2cbc8b7dec4d1cb049b63a654db3a68d37989855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2d1d690b78d8fdc6939e70d3458f18c1627e2193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2e488d7ed78171793fa91fad5352be423a50dae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2e564df639527bb58dc7ad39677a5f42bacae6c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2ed161d59b5a42d502b9f11f6247c0a027e6b373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2fd5fec0f5cbe246c5cb6279751a1f2cd87fcd54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3023cc350a33c4df81e495e8340e7bc873d3715f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x315f1f04ee2bb85ce9495e003e2cb6649684470c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x357c8e758e5579502da125e373697dc499f15f8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x36e067a32f8f92a799156fb76a13fc5a25362726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x37bb75b975548089b8cb42371b134c9ecba309f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x39bc24a3cb08cd50a53dac0eb0075e1b402c2729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3a1c8d18cddfefd4499684e670c99f4cfc1d9687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3a7b055bf88cdc59d20d0245809c6e6b3c5819dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3bb03b3c76f7d7f401f9f31da5790792e6c480ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3c4de8fb37055500bb3d18eae8dd0dfff527090e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3c9d34b747a5aa7be32d50757e9eed0d5f8037e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3dbe7c6c5adb3950010742c460be685b47f1f3ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3e65ac1dd4938e02301c4869d3043903f5deb474` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x41736cd10320bfdc7b9a0715ad763c04a14c7cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x42a0ea0853e76b1ce440ff3c71a8b0fa934c2a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4368fc78c66c95597a0f1498dfed9f3b35f6b6b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x46106474989a8c4a5130373ff5cf52d65fab8277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x487f6bab6dec7815dcd7dfa2c44a8a17bd3ded27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x49397ac9cb061152b770b1d274a5682155f20099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x49ac326311889c4ba1c70cc2a703c64a6f0ff397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4b1dbc2d67980996e7e10bc1a55c2be0e703e347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4d59ea61c0457cb434ba1395c7d0daa7499b4d69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5052948ef0bc0342c78c7ce0f150bce7dde29cba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x532e522964cba02be18f767e4c0e39188894163f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x542fd04aceb0f15a2d914071c400d36d6ed825cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x545356d4d69d8cd1213ee7e339867574738751ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x548f29394c98e92789e5f9528cbcead0d87fd6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x574f55a84255e3f12d48460dfadd1344d31d2b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x57c90dff593d045f00d56afd2ef00cf7b4258c1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x588354e21f3d19f55af4dabfe5f8e325a2a8cc6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x592f294883247f6a25e9db35297bf3279fac3a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5d11b910dd479724b9ac0c6de4bc0e831c6fce31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5d2445879b7366e1ec76000b46a376e8abc9b2f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5e9012a61a617e16450f22c6c5cab2a5694dd2d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x61dd26a4a63b9e126c778d60b3fa03520f332316` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-398422 | `0x62351b47e060c61868ab7e05920cb42bd9a5f2b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x636d4073738c071326aa70c9e5db7c334beb87be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x63a14cc9baa8fd9da49c42ff2f8a3da4b147574e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x650e8847aa247f189de852da1c821a13c51d9e87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x654e7d03e3c34ce05e9e9a7622c65b1a7c199212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x664d6b73d6c9824971d8653fb3951324794290a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x67950514329037e60a4610e22174c4842f84fa63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x699d08a3f00dee1bcc53b714e9d6054cf9c8ade9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6ef8d83e0a76716972b51b9a7756a77a8bb33bbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6efff76acf1698a6a215eca7d632991678ec673b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x70364e2c5263424ed4fbd8704784a433f043300a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x708af84364efa31bf4ee29d7e686cdd2fcf632d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x70c3debebf667b2cafd015e0cd74913dbf18f979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x71f67c04828e3842f3bdeba43b1ed6efc50ceb7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x727df33f0da9c2818334ac89ed41a303c64fbb90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x746817509cb78c9916f6b2b0591de0caf01e2e6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7524b7e57ff7d80fb119c170451008e95c692d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x756f1d49b1f1fb07f068ca51b1c1b2257c60609c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x77446f55bfb5d0e2fd7775ceaf45163f9adc9085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x779fc2264203272f52dc96a89d4a64137b766403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7808555974803b393199ff052b7b1df502e6ddde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7b8eb5fefe778a75f10bf70454ee97abdc9c9f52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7b9770cb56d8d224b44d5a025319fbe71b3a78e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7ca59aa3fc619c39f67c3cc055194bc1152dabbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7db93ff1f27f27eadf9a3b8cce548c5f2e39e7c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7ea7812ea40d4648e2a88bdb2d6a4d62b77bd7a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7eb047e2a9329bbc2bcb2a31d3797a48ef81a9ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8231e713afb8d09d022f2101d77d4e485363a3fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x846e5804dafe795876a2f6c5687c50bbf611a189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8551d2141a755ed8ca3a9e4bd9977dadf300fdb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x86056ff059fb662455d35a22f50c1ae36649648f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x87a1c0b1c16122a7499b9544294c8a31b224a1a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x87dfa433d32948304ab740267b904a0b51ed2aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x88ceb7b7f8c7483197798df59442aa5516533fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8970c235a4e4d8e0ae5c340549efda5db20d2b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x89f74f1b8d022cd14323a028bdcc54b46f289abb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8cc118ad008df447131ee3e701a8bd4b2fcd1e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8deab800775085dd752bb19d615a6555e6545df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8f145faeca751a8f9711f33efdd3aea10284de67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x90108db8e792705f18fdcbf0e32e9f6d24da77ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x901865d41b4df67851299c13917ffe0f3f9d2809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x92351c9aed156bc8ec76d52cb1441b93f153e550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9270a9e105d0efbf12a8aff605ed82d062b0670b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9355c7a8cabc3bb975b9e9ebf26c756d9023bf1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9484f8cdf93084f800a16fb04ecd3ab9237bd201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x949cb557982859fe36adf84eeac535dde11eca7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x94b1800c5b14140f7a7eedfebc832438ec5a290b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9736234f32cf54d871e5c55aa0603141941f8826` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x983820e22e38d95aa994032b1068266f808e081a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x983a26375f290dbcfb484aa3d0d7df52eecc27f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x98b799a29710738db188604c3c78bac4b2bd4193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x98e34d2ae6a503b15a965b99c51324cadc6d0ee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x99875e41f5e59abefa12d5fe06e72662dd143564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9c24072b0ff61958c255630381909a15d208950d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9c338e0684411a1eb0c75a76afd235278dbb0ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9ce1509d34a5743467fef9d963dd9fff4df07084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9d0162b6da4373efbb216b5a16aa9ccaf9589177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9d42f4ad208636523d3bc3ce3f5883d04b478fe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9f02394be34d5a20a9b223fa547e6f66b703c8bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa01c3f20113e03901b274147e1dedd3a124a1242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa1819bfcca7140eb9f2dcb835c49827579ae61a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa1fde7e1bf55e8af34aff996f8577d9d02b3f7ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa236b7c091909114f3b91c5084742558f1895b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa2a7956cd3d37f0f2b125c767f993945c5ef58eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa59ae6b9af98e8c009d88f37328293f81441a326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xaae698a58568760bb5a858e3d61294347ea88fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xab1f2b9ea98a2a484b57a27fae0d11c8c6a03459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xac5b265cb763109e274d9a6c69fca18d38253daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xaf6f7d8536a879962d994bd0fc3b2940f946431f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb1fd68593bbc69faa5e20780625b655e48a7771a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb230dbc537eb16f3f4317bdc4e6dbf696375bf38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb3328a88b5f3726af578af7fbe90d26d09ea2ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb3a5eebf23530165c3a6785400ff5d1700d5c0b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb44cba76c7fda7563fa35a3a9b6538b5dad296b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb456107f9364917ca4498a8591aadfd1ac549a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb9097bf8209b554a9f6981c0993fa4ab008a08f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb98de13dd4cc54032a1323ad25c540391679d9be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb9c70c4a13b2162d3eeeaf23c525ab455caf2961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xba68bdad63187f0ead406e33b5af22f65b2de063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbaa9f1a0782ee8c5735c4daca97f13a1b26cdb26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbb75faeefb18c08d7389e16d85a8b2cd7e7ea6be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbc3407dee177b50da0ea4b4a1f7fd0df46eb488a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbe3835d186d1811b283a414360afaeff22549538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbf0d05e5a3d34a428d02c07abe3de0a2aa2d4937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc10d8aa8babe2c498e75924b0c3d65e0eecb9492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc18e2920bca5f42b67f94b297f27a0ee54562861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc1cddfbc5466b8696a55456caa76bc86e96406fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc343b9a9dd440c3f93578b211cd07afd89c99aaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc35e2ed19c00073b06f9a77b3425bb2b191bf571` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc4c67c2f1afeee9f78ab1c8635e071525faad74f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc943ceb5742187b449e59b971dcbe9aaaf8c39bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc9ef722ca0135fcc3ac964bf3e0941bc37c99bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcabdd7c53ecb47ae5cc840f2d206efb6673e14fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcad88977bc9b8b22198de604bde48396df2c2fc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcc0246f1eab3afbfbbef41efba188e10ab4e249d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcc15adce9be09b109270343ec1423ee41a69b988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcdece5195776482d176c842bba446937f2606ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcee7b822f97e7376af99e55eb45d2d1ae033c40f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcf5e1c9bdef270773baa7db9c7bdbcefecef24f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd173b4d424db4470cac370ba83d8790d35c0838c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd28c91c96890230538feff522505fd470e908634` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd40bac7f41a63d642c95f16e59891e0a28e3ada7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd7ceb9f7d75eb180296a33857e29eae0acfc081a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd84a3258816e0ed586e785e522368453ef1f811a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd9d455243bc4f1c8b6ac4afb4773da59ce56035e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xdad6893bd9f5ec63ed9e7cfa4b320b0f18a647f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xdcb6d12b5e18c3828293418b139b1ad6b03efaee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xde1ce751405fe6d836349226eedcdffe1c3be269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe064c5e7047e75f5965336979b44418a190afa8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe2bef380207545925e78940f6ea0a45f945d87e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe2c2db2f057150bcf06e89b5188bb7fe58917986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe3490105c934c1afc62a1045702d86d0098be844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe38824875145f61d5b9d7c9d64ccf4d9966f03be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe4779bebc9f11feadbc0256375912b983b00c62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe4e53d34bdbb3d6029f3184418a87318dc89ddd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe62619c1228cd612fbce20ce66da9c15e202b597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe7a10852b1195d58656b0a826e49eeb7e1403aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xea0aadd76bb798bc87120cab67c4925dfd93405c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xeb0c390b1fb2b63d5ed257b822a1cbbff87956ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xebeea522f3758ffc9d85d27061bf1db81cfe4b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xedd1e8aacf7652ad8c015c4a403a9ae36f3fe4b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xee4d71e4e06b0946dc0aee67df65f6fb6ca8fdd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf04b226960c2027ef555b9fe74c5443c97eec632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf1b4a197dd77d95a405b07113d4ee9d0dbe4cf6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf1eefa8d834577aef3c0a264b49e925d1d76a4a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf259e640c7429cac5db761557803f06a120a54e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf30c8c4df189fba674036ef0726e8dbd5d222024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf399f6d0a6151e77b0f0e9fbbfeb56a21e535e05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf50d60714255364f3366ad8a4e15ca4d2000d49d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf54f65f0181f495591bf4b8cb0d69cbff93616a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf627c5dc6183b924d6a52325b0659c0384263d87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf91e7da957cd66210766d1f82e3d27c9d4e73f10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf93a85d53e4af0d62bdf3a83ccfc1ecf3eaf9f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf9b6030cfa47c68e46c2ec18462cc471fa91c0c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xfe4169dfafec278c47f10b3409cf6e09406e73f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xfe84703df7e6f9a71e8d44c78ba24ded1f631f30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x067c7126a83560ed2fc345d25799f696b7ea47ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08ca9154da9318323d3f6dfd872f5cdc4c85e388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x09cb6c5a235939258e3f6ae2989cf6f26eee1c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c04046546c46652969aa9eb4bfb758cfdf1e821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c89bcaa3c32b04696d7ff11608be957d22907aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-398447 | `0x1054ff8b3b7b9f68d2e55c4a42e8952332c69011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x12abac7a19255f4b851e4fa07b7a0260b75a5cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x21fe89ffb96d4092b42c8ab35dcfeee50a86c3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x314bf0d901361f2e31a18cb3500bfd33af51de47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x31f0c8e6d27371155df0df655a515b01787f3611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x413552461b0b2c13f117d885b52aaa2f23374b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x46c8d02e93d5a03899dfa7cf8a40a07589a3fa1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ac2cc88e7fd255ff603f5dca261724938bee425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c5629aea0b419d26c780dd78d5671e2ce27c563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4e2d5baaf470028fe48a23bd5b680f4ec7a06f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4eea93966aa5cd658225e0d43b665a5a491d2b7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x502c848e6f88cd018153712a68ee518c7f34af12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x50efc7f1290479cb879473512d89fdc80b726211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x53d9d2c059d35904ce1dabfbbfc41a89d3c6db6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x55fa5276c44c1b465196898b144524c9c852235e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5715dec4cd747675e47b969d3a15aab909b8ce05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5bd51296423a9079b931414c1de65e7057326eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6246589e7e320626a41739e2b07c5e915bc283ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x649dfa2c4d09d877419fa1edc4005bfbef7cd82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x664e1cc564aaca017c0d4c47d1b720a73aa83e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x67ebb0b6273a2e5728410af81609226a96accb3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x683669e5b6cdc6636673a5f7ddb68e20812216f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x703651789fe3918177b9cebb267452859e2a62a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70df54101c060da251fe062f8b081d7392c2ed88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x72343e8e448fa539a1f118f870a1de1132f2fcad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7769c18828569692dfb65affa0856533613ea458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79926efee0d0ce09f1764525bb96d4eb13410db0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ae0563553008a45d91555f66b2ab34800a74040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7c3c5c8528d55af0c641846ff4756200defdc513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7c56da81caaceceeff624baa93b314e793bc88b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7f00134427437b2883f59ef3880597fdc836e356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x803460416c2682ac54fccf03ef77b10a12f2809b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-398448 | `0x80d12a78efe7604f00ed07ab2f16f643301674d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83bc7394738a7a084081af22eec0051908c0055c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x85079cb83b6cadba34e64bc0f24493f49d8b1f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87743f9ccca4a6dfbffb2856dc6839b1919a43fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98ceda04e4a1fdc0fd025fb73e48e609ad00673b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa8486096c719024d4eb2262a45aac5ca8a256cd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa89aa7e3d34516eab7129e401215d5d1239ce715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa9f1f86dc8541f849b49cb35d29acdd990680027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa46d98049cd895e980b60abc4af18cae681865a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xad7e3eb5039c2f7451732b16c108ad2858878581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb6b96964633f558980e454953474cc7435c3d78b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb205c59a53ca04d86d2c6858cc9f82603275adc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5941f19692d71fc68f2680671dbd6dd50d35bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd784d7128b46b60ca7d8bdc17dcec94917455657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd923b6479006623303f180fa149a3b5c3bf5ff66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd5097fc3f68958649ce70f42b7c1cf0067a3545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe4589edf8bec3502e784c0cfef571409c8a1be0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-398450 | `0xe473ce141b1416fe526eb63cf7433b7b8d7264dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe89635a7339bf46198f76b17bcfdad977699cc13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe946abb40928326ce5bff303e7b8f0f253ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xebda7f097ef976e8e82fa11f05ef1906f3068105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec30c545c74c74de4c188aeff3d575a34d6e3417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee7981c4642de8d19aed11da3bac59277dfd59d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xef7007e361937c77f5267e2df58811d17ce80cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf63e81ddc9d93733c05e5974607b09377ee0c3ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa7fb7247744b178cf0ed978699244a41b21a89c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb0ad0b3c2605a7ca33d6badd0c685e11b8f5585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x028781ceed4a2264466ef5ab73c91603087fa131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04c6a52f3bf9f73618cd70f234adb95a73325d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08ca9154da9318323d3f6dfd872f5cdc4c85e388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09cb6c5a235939258e3f6ae2989cf6f26eee1c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c04046546c46652969aa9eb4bfb758cfdf1e821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ed6e95896bdba02eb768ae22f1150de1863b3e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x119b9459d9119d07c23ad06778aeabec804fd1a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1202e0557a23531d09015c802e993d6423685ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x161f4baab4052f20f5f4347ec4422556aa0477f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ba93487cb67add705d261036727ca82241b4172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x235118afb54b6d6c7b48f1b5434c25cd6eb6b68f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23871561330080828507ded34d23fef5ede7053c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x273d59aed2d793167c162e64b9162154b07583c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b73ab7b93d6fd5e7fcb859aba514d6caee33fe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e8ad1434663b209ee59ef1a6612114239f4a190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30b2c7e3ac4f9c5cf07af48729c074810ee81ad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3169844a120c0f517b4eb4a750c08d8518c8466a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31f0c8e6d27371155df0df655a515b01787f3611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3203e813930bd710043c1d899fe38dd359307352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c3f4b866f8c6f0d2c912fee36d5ad337a9aa98e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fc412375b192c1ad176faf3cfb30b687c0f92ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x413552461b0b2c13f117d885b52aaa2f23374b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43bcb76c76355e2ca2a51058c25bde78deb7a7a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4563c3fc5284eea6831a6cc2342896a4c9cfc027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46c8d02e93d5a03899dfa7cf8a40a07589a3fa1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50efc7f1290479cb879473512d89fdc80b726211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55fa5276c44c1b465196898b144524c9c852235e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5715dec4cd747675e47b969d3a15aab909b8ce05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f58bcce409cdafbbd705e720743b1eff9fef28c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69bdfb8153a4618e16fb73e18d321ca20400688c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c2256353b7d617f9deba6704ffefaadc6c20bc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d6ce5a491cc2be2f56aa02aa68aae8ace927962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e21b35328e1522b1e6c0f5eca566a7fe269274a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x72343e8e448fa539a1f118f870a1de1132f2fcad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7769c18828569692dfb65affa0856533613ea458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79926efee0d0ce09f1764525bb96d4eb13410db0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-398414 | `0x7bd79ded935b542fb22c74305a4d2a293c18483a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e1b152f25d2ff0771026067b5c8b5a1c8457478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f00134427437b2883f59ef3880597fdc836e356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x803460416c2682ac54fccf03ef77b10a12f2809b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81dee5b8bffa75cc1ec729533eed30cfe4f81f8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89f2739c81ea5cbf083c7a778347d4eb2d24f0cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9287321df7a2998d5a94234fa533c5ddc488bc8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x95fb804973e3dc8574483190db1e062ec2e85f3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x996bae7fe2d145658d09a9f94677d189586ea506` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa005091c98e6793b90e1340bbd36c5d6de36fb60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa194fb4eab262ec9886a119609bbb2800bdd3a2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8486096c719024d4eb2262a45aac5ca8a256cd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa46d98049cd895e980b60abc4af18cae681865a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8d9f005654b7b127b34dae8f973ba729ca3a2d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8b6028ff1ead7c34fcbd177b314d8c6cd3e427c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcdcdf691af3e3717a35a2352ab7e34fd2980613d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5941f19692d71fc68f2680671dbd6dd50d35bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6bbb064a0719db801dec48e2149e708eda2e86c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7425f736d302ac38c6d2bbb0d9f38c35a843b26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd75f08d0e513a072799c510d04d9addc3a28bd9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd784d7128b46b60ca7d8bdc17dcec94917455657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8428a59b60df2d81514d429d57df23293f1bce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc07713b6c874c87b390a04f0f17a69213d2208b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2510e03e24a282c0b0d4edc13583fd3d525ddb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2cd603bfae63eefbdf0c51485f835d8b419a305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe469c1330ceecc375fe17e7d649ea270186d344f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe54caca59653cf2c71ce24da598bebc4cf34324f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe89635a7339bf46198f76b17bcfdad977699cc13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe946abb40928326ce5bff303e7b8f0f253ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebda7f097ef976e8e82fa11f05ef1906f3068105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4fe03b2a77ce8d5695507e7c11cbacb3a2dd32a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9c947e1ba51dd1c4d1a51011cb32ff4a88eee64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9f8a1cb155896619ba5a47f614ac8e3de341a70` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-398415 | `0xfb0ad0b3c2605a7ca33d6badd0c685e11b8f5585` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-398416 | `0xff73a1a1d27951a005eb23276dc99cb7f8d5420a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0163a4ce18a566730c390b0e0fb5c78bcdd88a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x04bf7cf48a68dfc744fc22662b90e2ecaf14d716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x08884b2576512e6c13c0cec676c236fb1e6b7600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0b703aecf1ad4c053c15c49b08c94767f73707c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0c04046546c46652969aa9eb4bfb758cfdf1e821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0c25f3accb17a9d60408d1c79bd7218073dad518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0c89bcaa3c32b04696d7ff11608be957d22907aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x119b9459d9119d07c23ad06778aeabec804fd1a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x139abb67a33f6ddcf00fbab5e321184f4e5c22e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x161f4baab4052f20f5f4347ec4422556aa0477f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x16397b59fa555cd75861127523918a185da8dd1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1ee09a2caa0813a5183f90f5a6d0e4871f4c6002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2132ff9b5dac4a114e02112c20ca81b0d2fd9542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x213f448e7a1c8daede41cf94883cc6149244d00f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2163191f8a0794f4098fbe0b1ba78c3a7ed70c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x28b93154111e769178bc90b97f34e0b3210fdb73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2e8ad1434663b209ee59ef1a6612114239f4a190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2fad6cb2a9db68395ba4f87ff05768485c7fa6fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3169844a120c0f517b4eb4a750c08d8518c8466a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3203e813930bd710043c1d899fe38dd359307352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3782f9f4b76a80ac104a4f4e44fc514e6b25c7e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x381b767656d0fd2ffc215bf5127b36f6e30770c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3c3f4b866f8c6f0d2c912fee36d5ad337a9aa98e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3d70dc86dc8099d8a4c86c18839c7e84a13a441e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x413552461b0b2c13f117d885b52aaa2f23374b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x42b43bcff81872bc6760bdec3ffafde5f8569e42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x437a10fc9b6255281eb6c25a8224bd13f42bbcac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4516a3fc0268e3208ced8b93927db10acfb17f2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x47767b48eb7e0165a97ba74478a53741fed783c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x47d141c450a6c799dae7b150e050486e03637ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4ac2cc88e7fd255ff603f5dca261724938bee425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4d4b1b83a77aa7e24c786ed81fe583df3e8b0d59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50764cb498b141137e9759a9e7b7e01efddbf2a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50efc7f1290479cb879473512d89fdc80b726211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x510ca23c88984ea7795f8f9b49c03a096c35af68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x51ed2d9ef8ea05efbcb4dead311e329eaa207723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x521bcd03d0b6fe91cf432cbcf3d8121cdb0035ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x53d9d2c059d35904ce1dabfbbfc41a89d3c6db6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x55fa5276c44c1b465196898b144524c9c852235e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x578f383f47e3f631f64e2bd814db697b7e6ef55a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x582b2ed7187c703880841cc187aa339948fc2f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5b884ceb2640c5e576e52b81dba53377f863f190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5bc75b03601c2728f905164ac31a44374fa73e61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5bd51296423a9079b931414c1de65e7057326eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5cbe12d67fc7a0cea86964fda4b5841f65666d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x62351b47e060c61868ab7e05920cb42bd9a5f2b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6246589e7e320626a41739e2b07c5e915bc283ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x62646d8459bdc7fd1a74a74e3292d248e3b2d7c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6336d1dfe362a84933e526588a0fa20dd87736ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x649dfa2c4d09d877419fa1edc4005bfbef7cd82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x64cd4a5acd45334213508fa0d63b223d549e2fe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x66c02ad69e8f601c859d2e3494cf82f3f4971872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x66eafe44ee43b44c59458793214654b5e2dc96c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x67ebb0b6273a2e5728410af81609226a96accb3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x683669e5b6cdc6636673a5f7ddb68e20812216f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6ff5e1c754120af10d9f19d0fabfb0204d43f7f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x72343e8e448fa539a1f118f870a1de1132f2fcad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7769c18828569692dfb65affa0856533613ea458` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-398431 | `0x7b5780d6df85a7df96a3e1a019639a1dbde937db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7bd79ded935b542fb22c74305a4d2a293c18483a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7c56da81caaceceeff624baa93b314e793bc88b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7f9de334f841db9f789bb633d7d97356d88a4c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x803460416c2682ac54fccf03ef77b10a12f2809b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x80d12a78efe7604f00ed07ab2f16f643301674d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9287321df7a2998d5a94234fa533c5ddc488bc8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x94f2ebe929fe948f960908ec57e5d7792facac07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x975a875148f665c5ced680475c1df4022e6ef628` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x986c905087a663db3c81ad319b94c1e9dd388e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa107b63454236a96428c77b1567de1ecfea689d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa194fb4eab262ec9886a119609bbb2800bdd3a2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa6df493fc4027909e5bd52721fdb69397555d1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa8486096c719024d4eb2262a45aac5ca8a256cd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa86ef37098c0507196a5f411affbf8f51fce9637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa89aa7e3d34516eab7129e401215d5d1239ce715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa9f1f86dc8541f849b49cb35d29acdd990680027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xad5d729291c0d6a299e370814ca6ce1c8c25b51c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xaedfedee6872af398eab4be037e7cbc232bf0809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xafc54e8277f8bb8c195c794b0d10d6766e89df0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb6b96964633f558980e454953474cc7435c3d78b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb98ffdb961d9b80540cff98abd986011a530c9cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xba2be3c7d43bcfefb029c41798f138848b42602c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xba6163007a8749914eccd4962f3eba5e419d7f66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbfa352a683d82a04233cc45ac1308621ba63283f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc5dc2532c6eac88a5ea9d6cac38705ee31b3fa0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc7b2a2a5e4bf4efbc7f4becd43ad1d9b0ce90a57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcc8256b3ebf21e27f04e360eed012f5752c1f5dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcdcdf691af3e3717a35a2352ab7e34fd2980613d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd784d7128b46b60ca7d8bdc17dcec94917455657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd8428a59b60df2d81514d429d57df23293f1bce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd90bbcf3cf7194b6b2754c84623e30ad0082e378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdb97dbf9c0a20aa8b4787563b6be04e83e7ecdfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdc07713b6c874c87b390a04f0f17a69213d2208b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdd5097fc3f68958649ce70f42b7c1cf0067a3545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xde1ce751405fe6d836349226eedcdffe1c3be269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe37f9005857fbb23bf8d47b783e2de6a2c43a31d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe38f8bc093a1f76f0a444ba6b75f46d6dc686dba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe4589edf8bec3502e784c0cfef571409c8a1be0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe469c1330ceecc375fe17e7d649ea270186d344f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe5da2bc7658ca9d160d0352e5cb2df1339591d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe75ef04774ceea73d3d9d7ed0b0ec4e0115b8afb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe946abb40928326ce5bff303e7b8f0f253ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xeb79fe8d1d8cc146ff12f3e99af4ee39e239f4ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xee7981c4642de8d19aed11da3bac59277dfd59d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-398435 | `0xef528a8ca4b6afdb6716ef9f11bca0c5c47454ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xef7007e361937c77f5267e2df58811d17ce80cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf2801f7d34ef2e0dad3150f8100da3c1bc6e35c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf7f67b21fc3779a1d6b0c71069102be92bd8cb8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf8fe437d4e952c0d2d2e762b4030ff78b2e843f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfa3b6760f7e26d47a9f829530398ee44314489cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfe3e63fe6abe5b796ac0d84a80f09db95a96709f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xff2568c81453a0741b1b97f3fe598b07a927d79e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xff6a78f39688177351f31ce9e11b998b92227966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xff73a1a1d27951a005eb23276dc99cb7f8d5420a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-398444 | `0x29ba92fe724bed5c5ebfd0099f2f64a6dc5078fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-398445 | `0x3f64e2e09732969813904a8473074cfadee66af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x41faf46ca4dfd912b65b66d29bdd432782bb1158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4e5622e4a41985c29028d92e1cc2edf02012c82e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x83d3f5db3eea3dd7a30aaf71a32d244386d00c53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-398446 | `0x8df0c2ba3916bf4789c50dec5a79b2fc719f500b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-398451 | `0x2d973c644a683d041ce3c604f8956de589ed2bd2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-398453 | `0x8c4b80a5d5374ff2dc07310ef9fdbc44e487b6c2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-398454 | `0xea6232604c847d14638a30c1d261af6c321aab05` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-398417 | `0x6419a685358e4b04f65d3846bd5d1bc2d7ec3380` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-398419 | `0xae1875112ae010a9fe755418b206afb33ee0b1fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-398420 | `0xfc31ff38e24901052b813dcebef5a9a10eaf25ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x986c905087a663db3c81ad319b94c1e9dd388e92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-398426 | `0xd8428a59b60df2d81514d429d57df23293f1bce7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zklink-nova | unit-398436 | `0x1a1a3b2ff016332e866787b311fcb63928464509` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zklink-nova | unit-398437 | `0x2f8a25ac62179b31d62d7f80884ae57464699059` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zklink-nova | unit-398438 | `0x8280a4e7d5b3b658ec4580d3bc30f5e50454f169` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zklink-nova | unit-398439 | `0x83fd59fd58c6a5e6ea449e5400d02803875e1104` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zklink-nova | unit-398440 | `0xc967dabf591b1f4b86cfc74996ead065867af19e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zklink-nova | unit-398441 | `0xda4aaed3a53962c83b35697cd138cc6df43af71f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zklink-nova | unit-398442 | `0xf573fa04a73d5ac442f3dea8741317feaa3cdeab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398389 | `0x168792c8dadd403948cba6a74f069d1bacebc137` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398390 | `0x2f24331ddfb2d582079c200d1c233f168901a4e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398391 | `0x4e2d5baaf470028fe48a23bd5b680f4ec7a06f85` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398392 | `0x521bcd03d0b6fe91cf432cbcf3d8121cdb0035ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398393 | `0x63e059bdedea829c22efa31cbadb9bea5e86c3cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398394 | `0x67ba43ed3860d155d16f82d12ca93a7b2e77bf2f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398395 | `0x83d3f5db3eea3dd7a30aaf71a32d244386d00c53` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398396 | `0x9719cd314bbf84b18aaedef56df88e2267aa01e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398397 | `0xc6ebbd78e8f81626bc62570f3c5949221f87b3ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398398 | `0xc8a31aa097c8d1dcf588c425415e4e5a0e250e67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-398400 | `0xd75f08d0e513a072799c510d04d9addc3a28bd9a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-398402 | `0x70194e2400eb89fa22e3bd0dafa097ca09dae76c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-398403 | `0xa8d5271093d88b2cc5aa7bf18828b6e638154b80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-398404 | `0xbac8ef345c684b0871df390f44273160ba3e6bc1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Secure3_zklink_Nova_2024.3.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zklink_Nova_2024.3.pdf) | Secure3 | Audit | 2024-03 | stale | Direct | n/a | matched | 1 | 0 | 0 | 24 | n/a |
| [ABDK_zkLink_Nova_2024.3.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_Nova_2024.3.pdf) | ABDK | Audit | 2024-03 | stale | Direct | n/a | matched | 2 | 0 | 0 | 47 | n/a |
| [Secure3_zkLink_Nova_mergeToken_2024.4.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zkLink_Nova_mergeToken_2024.4.pdf) | Secure3 | Audit | 2024-04 | stale | Direct | n/a | matched | 1 | 1 | 0 | 8 | n/a |
| [ABDK_zkLink_Mergetoken_2024.7.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_Mergetoken_2024.7.pdf) | ABDK | Audit | 2024-07 | stale | Direct | n/a | matched | 2 | 1 | 0 | 10 | n/a |
| [Secure3_zkLink Nova Arbitrator Upgrade_2024.4.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zkLink%20Nova%20Arbitrator%20Upgrade_2024.4.pdf) | Secure3 | Audit | 2024-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 2 | n/a |
| [ABDK_zkLink_CostOptimisation_2024.6.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_CostOptimisation_2024.6.pdf) | ABDK | Audit | 2024-06 | stale | Direct | n/a | matched | 1 | 0 | 0 | 7 | n/a |
| [www.openzeppelin.com/news/december-diff-and-governance-audit](https://www.openzeppelin.com/news/december-diff-and-governance-audit) | OpenZeppelin | Audit | 2024-01 | stale | Direct | n/a | matched | 4 | 2 | 0 | 40 | n/a |
| [ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20X/ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf) | ABDK | Audit | 2023-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20X/ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf) | ABDK | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [ABDK_zkLink_Circuits_2023.2.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20X/ABDK_zkLink_Circuits_2023.2.pdf) | ABDK | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [ABDK_zkLink_Solidity_2023.2.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20X/ABDK_zkLink_Solidity_2023.2.pdf) | ABDK | Audit | 2023-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [v.1.0 Protocol](https://static.zk.link/audit/ABDK_zkLink_Circuits_v_2_0.pdf) | ABDK | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [v.2.0 Protocol](https://static.zk.link/audit/ABDK_zkLink_Solidity_v_1_0.pdf) | ABDK | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [v.4.0 Protocol](https://static.zk.link/audit/ABDK_zkLink_CircuitsSmartContracts_v_4_0.pdf) | ABDK | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [v.6.0 Protocol](https://static.zk.link/audit/ABDK_zkLink_CircuitsSmartContracts_v_6_0.pdf) | ABDK | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2001] Secure3_zklink_Nova_2024.3.pdf — matched: No reason recorded
- [2002] ABDK_zkLink_Nova_2024.3.pdf — matched: No reason recorded
- [2003] Secure3_zkLink_Nova_mergeToken_2024.4.pdf — matched: No reason recorded
- [2004] ABDK_zkLink_Mergetoken_2024.7.pdf — matched: No reason recorded
- [2005] Secure3_zkLink Nova Arbitrator Upgrade_2024.4.pdf — matched: No reason recorded
- [2006] ABDK_zkLink_CostOptimisation_2024.6.pdf — matched: No reason recorded
- [2007] www.openzeppelin.com/news/december-diff-and-governance-audit — matched: No reason recorded
- [15111] ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf — no match: No reason recorded
- [15112] ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf — no match: No reason recorded
- [15113] ABDK_zkLink_Circuits_2023.2.pdf — no match: The audit report lists files in the scope section. All files are Rust source files (.rs) for zkLink circuits. The date is from the cover page: '7th February 2023'.
- [15114] ABDK_zkLink_Solidity_2023.2.pdf — no match: No reason recorded
- [28637] v.1.0 Protocol — no match: Extracted from the 'Project scope' section listing files in the original and fix repositories. The date is from the cover page: '7th February 2023'.
- [28638] v.2.0 Protocol — no match: Scope section lists files explicitly. Audit date from changelog: 1.0 07.02.23 Release.
- [28639] v.4.0 Protocol — no match: Extracted 8 Solidity contract names from the scope section listing Solidity files. Rust files are also in scope but are not smart contracts; they are circuit code. The audit date is from the cover page: '4thJuly2023'.
- [28640] v.6.0 Protocol — no match: Extracted 8 Solidity contract names from the scope section. Rust files are also in scope but are not smart contracts; they are circuit implementations. The audit date is from the cover page: '9th August 2023'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Secure3_zklink_Nova_2024.3.pdf | Arbitrator | own contract | 0x1ee09a… (selected) `0x1ee09a2caa0813a5183f90f5a6d0e4871f4c6002` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Secure3_zklink_Nova_2024.3.pdf | ArbitrumL1Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ArbitrumL2Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | BaseGateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | EthereumGateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | IAdmin | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | IGetters | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | IMailbox | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | L1BaseGateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | L2BaseGateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | LineaGateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | LineaL1Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | LineaL2Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | OptimismGateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | OptimismL1Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | OptimismL2Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ScrollGateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ScrollL1Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ScrollL2Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | Storage | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ZkLink | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ZkPolygonL1Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ZkPolygonL2Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ZkSyncL1Gateway | unmatched — not counted | — | — | no |
| Secure3_zklink_Nova_2024.3.pdf | ZkSyncL2Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | Admin | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | Arbitrator | own contract | 0x1ee09a… (selected) `0x1ee09a2caa0813a5183f90f5a6d0e4871f4c6002` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_zkLink_Nova_2024.3.pdf | ArbitrumL1Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ArbitrumL2Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | Base | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | BaseGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | EthereumGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | Executor | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | Getters | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IAdmin | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IArbitrator | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IBridgeMessageReceiver | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IExecutor | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IGetters | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IL1Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IL2ETHToken | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IL2Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IL2MessageService | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IL2Messenger | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IMailbox | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IMessageClaimer | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IMessageService | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IOptimismMessenger | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IScrollMessenger | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IZkLink | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IZkPolygon | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IZkSync | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | IZkSyncL1Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | L1BaseGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | L2BaseGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | LineaGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | LineaL1Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | LineaL2Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | Mailbox | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | OptimismGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | OptimismL1Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | OptimismL2Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | PriorityQueue | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ScrollGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ScrollL1Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ScrollL2Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | Storage | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ValidatorTimelock | own contract | ValidatorTimelock (selected) `0x509ff56c152315edee91a2e0f059195519507e01` — deployed 2024-03-09 12:50:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_zkLink_Nova_2024.3.pdf | ZkLink | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ZkPolygonL1Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ZkPolygonL2Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ZkSyncL1Gateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_Nova_2024.3.pdf | ZkSyncL2Gateway | unmatched — not counted | — | — | no |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | ERC20MergeToken | unmatched — not counted | — | — | no |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | IL1Bridge | unmatched — not counted | — | — | no |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | IL2Bridge | unmatched — not counted | — | — | no |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | IMergeTokenPortal | unmatched — not counted | — | — | no |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | L1ERC20Bridge | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x62ce247f34dc316f93d3830e4bf10959fce630f8` — deployed 2024-02-29 17:48:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | L1WethBridge | unmatched — not counted | — | — | no |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | L2ERC20Bridge | unmatched — not counted | — | — | no |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | L2WethBridge | unmatched — not counted | — | — | no |
| Secure3_zkLink_Nova_mergeToken_2024.4.pdf | MergeTokenPortal | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | ERC20MergeToken | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | Governance | own contract | ValidatorTimelock (selected) `0x509ff56c152315edee91a2e0f059195519507e01` — deployed 2024-03-09 12:50:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_zkLink_Mergetoken_2024.7.pdf | IERC20MergeToken | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | IGovernance | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | IL1Bridge | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | IL2Bridge | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | IMergeTokenPortal | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | L1ERC20Bridge | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x62ce247f34dc316f93d3830e4bf10959fce630f8` — deployed 2024-02-29 17:48:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_zkLink_Mergetoken_2024.7.pdf | L1WethBridge | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | L2ERC20Bridge | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | L2WethBridge | unmatched — not counted | — | — | no |
| ABDK_zkLink_Mergetoken_2024.7.pdf | MergeTokenPortal | unmatched — not counted | — | — | no |
| Secure3_zkLink Nova Arbitrator Upgrade_2024.4.pdf | Arbitrator | own contract | 0x1ee09a… (selected) `0x1ee09a2caa0813a5183f90f5a6d0e4871f4c6002` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Secure3_zkLink Nova Arbitrator Upgrade_2024.4.pdf | Mailbox | unmatched — not counted | — | — | no |
| Secure3_zkLink Nova Arbitrator Upgrade_2024.4.pdf | ZkLink | unmatched — not counted | — | — | no |
| ABDK_zkLink_CostOptimisation_2024.6.pdf | Arbitrator | own contract | 0x1ee09a… (selected) `0x1ee09a2caa0813a5183f90f5a6d0e4871f4c6002` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_zkLink_CostOptimisation_2024.6.pdf | EthereumGateway | unmatched — not counted | — | — | no |
| ABDK_zkLink_CostOptimisation_2024.6.pdf | IArbitrator | unmatched — not counted | — | — | no |
| ABDK_zkLink_CostOptimisation_2024.6.pdf | IMailbox | unmatched — not counted | — | — | no |
| ABDK_zkLink_CostOptimisation_2024.6.pdf | IZkLink | unmatched — not counted | — | — | no |
| ABDK_zkLink_CostOptimisation_2024.6.pdf | Mailbox | unmatched — not counted | — | — | no |
| ABDK_zkLink_CostOptimisation_2024.6.pdf | Merkle | unmatched — not counted | — | — | no |
| ABDK_zkLink_CostOptimisation_2024.6.pdf | ZkLink | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | BaseZkSyncUpgrade | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | BootloaderUtilities | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | ComplexUpgrader | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | Config | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | Constants | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | DefaultUpgrade | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | Diamond | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | DiamondInit | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | DiamondProxy | own proxy deployment | DiamondProxy (proxy) (selected) `0x5cb18b6e4e6f3b46ce646b0f4704d53724c5df05` — deployed 2024-02-29 17:48:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/december-diff-and-governance-audit | Governance | own contract | ValidatorTimelock (selected) `0x509ff56c152315edee91a2e0f059195519507e01` — deployed 2024-03-09 12:50:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/december-diff-and-governance-audit | IComplexUpgrader | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | ICompressor | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | IGovernance | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | IKnownCodesStorage | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | IL1Bridge | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | IL1Messenger | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | ISystemContext | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | ISystemContextDeprecated | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | ISystemContract | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | ImmutableSimulator | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | KnownCodesStorage | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L1ERC20Bridge | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x62ce247f34dc316f93d3830e4bf10959fce630f8` — deployed 2024-02-29 17:48:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L1WethBridge | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L2ContractAddresses | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L2ContractHelper | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L2ERC20Bridge | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L2EthToken | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L2StandardERC20 | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L2Weth | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | L2WethBridge | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | LibMap | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | Merkle | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | MsgValueSimulator | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | NonceHolder | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | PriorityQueue | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | RLPEncoder | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | ReentrancyGuard | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | Storage | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | SystemContext | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | SystemContractHelper | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | UncheckedMath | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | UnsafeBytes | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | UnsafeBytesCalldata | unmatched — not counted | — | — | no |
| www.openzeppelin.com/news/december-diff-and-governance-audit | ValidatorTimelock | own contract | ValidatorTimelock (selected) `0x509ff56c152315edee91a2e0f059195519507e01` — deployed 2024-03-09 12:50:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf | DeployFactory | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf | EmptyVerifier | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf | Iverifier | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf | LayerZeroBridge | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf | LayerZeroStorage | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf | Storage | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf | ZkLink | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf | ZkLinkPeriphery | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf | DeployFactory | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf | EmptyVerifier | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf | Iverifier | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf | LayerZeroBridge | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf | LayerZeroStorage | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf | Storage | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf | ZkLink | unmatched — not counted | — | — | no |
| ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf | ZkLinkPeriphery | unmatched — not counted | — | — | no |
| ABDK_zkLink_Circuits_2023.2.pdf | account | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | allocated_structures | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | circuit | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | element | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | exit_circuit | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | operation | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | serialization | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | signature | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | utils | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | change_pubkey_offchain | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | close_account | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | deposit | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | forced_Exit | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | full_exit | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | nop | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | order_matching | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | transfer | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | transfer_to_new | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Circuits_2023.2.pdf | withdraw | unmatched — not counted | — | listed in scope | no |
| ABDK_zkLink_Solidity_2023.2.pdf | DeployFactory | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | ILayerZeroEndpoint | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | ILayerZeroReceiver | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | ILayerZeroUserApplicationConfig | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | IZKL | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | LayerZeroBridge | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | LayerZeroStorage | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | Storage | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | ZkLink | unmatched — not counted | — | — | no |
| ABDK_zkLink_Solidity_2023.2.pdf | ZkLinkPeriphery | unmatched — not counted | — | — | no |
| v.1.0 Protocol | account | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | allocated_structures | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | circuit | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | element | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | exit_circuit | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | operation | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | serialization | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | signature | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | utils | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | change_pubkey_offchain | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | close_account | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | deposit | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | forced_Exit | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | full_exit | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | nop | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | order_matching | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | transfer | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | transfer_to_new | unmatched — not counted | — | listed in scope | no |
| v.1.0 Protocol | withdraw | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | DeployFactory | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | Storage | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | ZkLink | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | ZkLinkPeriphery | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | IZKL | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | ILayerZeroEndpoint | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | ILayerZeroReceiver | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | ILayerZeroUserApplicationConfig | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | LayerZeroBridge | unmatched — not counted | — | listed in scope | no |
| v.2.0 Protocol | LayerZeroStorage | unmatched — not counted | — | listed in scope | no |
| v.4.0 Protocol | DeployFactory | unmatched — not counted | — | listed in scope | no |
| v.4.0 Protocol | EmptyVerifier | unmatched — not counted | — | listed in scope | no |
| v.4.0 Protocol | Storage | unmatched — not counted | — | listed in scope | no |
| v.4.0 Protocol | ZkLink | unmatched — not counted | — | listed in scope | no |
| v.4.0 Protocol | ZkLinkPeriphery | unmatched — not counted | — | listed in scope | no |
| v.4.0 Protocol | LayerZeroBridge | unmatched — not counted | — | listed in scope | no |
| v.4.0 Protocol | LayerZeroStorage | unmatched — not counted | — | listed in scope | no |
| v.4.0 Protocol | Iverifier | unmatched — not counted | — | listed in scope | no |
| v.6.0 Protocol | DeployFactory | unmatched — not counted | — | listed in scope | no |
| v.6.0 Protocol | EmptyVerifier | unmatched — not counted | — | listed in scope | no |
| v.6.0 Protocol | Storage | unmatched — not counted | — | listed in scope | no |
| v.6.0 Protocol | ZkLink | unmatched — not counted | — | listed in scope | no |
| v.6.0 Protocol | ZkLinkPeriphery | unmatched — not counted | — | listed in scope | no |
| v.6.0 Protocol | LayerZeroBridge | unmatched — not counted | — | listed in scope | no |
| v.6.0 Protocol | LayerZeroStorage | unmatched — not counted | — | listed in scope | no |
| v.6.0 Protocol | Iverifier | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | `0xce8e69a2685c80eb6bd825d0552f44bb34f35503` | AdminFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x1b19287ce898217d937571eaba97ec50f27d1206` | ExecutorFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xb1d0354063527e4426c4becbdb75fe0fb112e3cb` | GettersFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x11bf5bc6327f7becb0ae753932a181c8fb5780ba` | MailboxFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x902c3806a84f4e855a8746e92d7f1c9a51400458` | Verifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 575 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 12 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 228 unmatched
- Matched-own operational status: 12 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=11

Zero-match audit list:

- [15111] ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf
- [15112] ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf
- [15113] ABDK_zkLink_Circuits_2023.2.pdf
- [15114] ABDK_zkLink_Solidity_2023.2.pdf
- [28637] v.1.0 Protocol
- [28638] v.2.0 Protocol
- [28639] v.4.0 Protocol
- [28640] v.6.0 Protocol

Fork inheritance lineage and inherited audits are included when available.
