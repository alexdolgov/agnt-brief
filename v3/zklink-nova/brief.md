# Agentic Audit Brief: zkLink Nova

## Project Overview

- Project: zkLink Nova (`zklink-nova`)
- Website: [https://zklink.io](https://zklink.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:18.113Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-c970
- Chains: arbitrum, base, blast, ethereum, linea, manta, mantle, merlin, scroll, zksync-era
- Contract surface: 713 unique implementations (738 raw deployments)
- DeFi Llama TVL: $9,436,392.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Chain. Structurally: 42 project-authored contract(s) across 8 chain(s); 11 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 15 common project-authored base contract(s) (oftadapter, oftcore, oapp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 738; live-surface contracts included: 738 (51 live, 687 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/41 (19.5%)
- Deployed-live implementations: 41 of 713 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/45
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 668
- Unique implementations: 713
- Raw deployments: 738
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 9.8% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 7 | 15.6% | 2024-07 |
| OpenZeppelin | Tier 1 | 4 | 8.9% | 2024-01 |
| Secure3 | Tier 2 | 4 | 8.9% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminFacet | unknown | linea | n/a | [`0x5cb18b...c5df05`](./contracts/linea-59144/0x5cb18b6e4e6f3b46ce646b0f4704d53724c5df05/) | ✅ Audited |
| EmptyVerifier | periphery | manta | n/a | [`0x437a10...2bbcac`](./contracts/manta-169/0x437a10fc9b6255281eb6c25a8224bd13f42bbcac/) | ✅ Audited |
| L1ERC20Bridge | operational_periphery | manta | n/a | 2 deployments: manta [`0x0d53ce...731470`](./contracts/manta-169/0x0d53ce63f3a72879d543ed6272a081308a731470/); manta `0x5f58bc...fef28c` | ✅ Audited |
| L1ERC20Bridge | operational_periphery | linea | n/a | [`0x62ce24...e630f8`](./contracts/linea-59144/0x62ce247f34dc316f93d3830e4bf10959fce630f8/) | ✅ Audited |
| OptimismL2Gateway | unknown | manta | n/a | 3 deployments: manta [`0x50efc7...726211`](./contracts/manta-169/0x50efc7f1290479cb879473512d89fdc80b726211/); manta `0x55fa52...52235e`; manta `0xbfa352...63283f` | ✅ Audited |
| ValidatorTimelock | governance | linea | n/a | [`0x509ff5...507e01`](./contracts/linea-59144/0x509ff56c152315edee91a2e0f059195519507e01/) | ✅ Audited |
| ZkLink | unknown | manta | n/a | 4 deployments: manta [`0x5715de...b8ce05`](./contracts/manta-169/0x5715dec4cd747675e47b969d3a15aab909b8ce05/); manta `0x7c56da...bc88b3`; manta `0xe89635...99cc13`; manta `0xfb0ad0...8f5585` | ✅ Audited |
| ZkLinkPeriphery | periphery | manta | n/a | [`0xdd5097...7a3545`](./contracts/manta-169/0xdd5097fc3f68958649ce70f42b7c1cf0067a3545/) | ✅ Audited |

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminFacet | unknown | linea | n/a | [`0xce8e69...f35503`](./contracts/linea-59144/0xce8e69a2685c80eb6bd825d0552f44bb34f35503/) | ⚠️ Unaudited |
| Baja | unknown | blast | n/a | [`0x5fe853...ab3204`](./contracts/blast-81457/0x5fe8534a6f96cb01261bd96e98c17c2c1cab3204/) | ⚠️ Unaudited |
| ComplexOrderRouter | adapter | mantle | n/a | [`0x6154dc...8ed3d8`](./contracts/mantle-5000/0x6154dce92267af35c733dba5d20e36ee3f8ed3d8/) | ⚠️ Unaudited |
| CumulativeMerkleDrop | operational_periphery | ethereum | n/a | [`0x1349a8...7b6610`](./contracts/ethereum-1/0x1349a8d352b1971cbebeacf55fb75526f47b6610/) | ⚠️ Unaudited |
| CustomBridgedToken | operational_periphery | linea | n/a | 3 deployments: linea [`0x3aab22...05a9b4`](./contracts/linea-59144/0x3aab2285ddcddad8edf438c1bab47e1a9d05a9b4/); linea `0xb5bedd...68fc8f`; linea `0xc0583e...30b010` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | scroll | n/a | 3 deployments: manta `0xd784d7...455657`; manta `0xe946ab...ea39d0`; scroll [`0x119b94...4fd1a2`](./contracts/scroll-534352/0x119b9459d9119d07c23ad06778aeabec804fd1a2/) | ⚠️ Unaudited |
| ExecutorFacet | unknown | linea | n/a | [`0x1b1928...7d1206`](./contracts/linea-59144/0x1b19287ce898217d937571eaba97ec50f27d1206/) | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | mantle | n/a | [`0x391536...a377ca`](./contracts/mantle-5000/0x391536d06480e554cfa60f9e2be0f3bbe5a377ca/) | ⚠️ Unaudited |
| FrogRichToken | token | blast | n/a | [`0x038f1c...27efce`](./contracts/blast-81457/0x038f1c6ed5fccf690a920a27b39366eeef27efce/) | ⚠️ Unaudited |
| GettersFacet | unknown | linea | n/a | [`0xb1d035...12e3cb`](./contracts/linea-59144/0xb1d0354063527e4426c4becbdb75fe0fb112e3cb/) | ⚠️ Unaudited |
| KTX | unknown | mantle | n/a | [`0x779f4e...61159a`](./contracts/mantle-5000/0x779f4e5fb773e17bc8e809f4ef1abb140861159a/) | ⚠️ Unaudited |
| LsdETH | unknown | ethereum | n/a | [`0x9dc7e1...b97c5b`](./contracts/ethereum-1/0x9dc7e196092dac94f0c76cfb020b60fa75b97c5b/) | ⚠️ Unaudited |
| MailboxFacet | unknown | linea | n/a | [`0x11bf5b...5780ba`](./contracts/linea-59144/0x11bf5bc6327f7becb0ae753932a181c8fb5780ba/) | ⚠️ Unaudited |
| Manta | unknown | manta | n/a | [`0x95cef1...c544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | operational_periphery | manta | n/a | 6 deployments: manta [`0x34c7ad...201ce0`](./contracts/manta-169/0x34c7ad65e4163306f8745996688b476914201ce0/); manta `0x77b6f9...1c2300`; manta `0x9bf486...7a2c6c`; manta `0xa53e00...b6527e`; manta `0xbdad40...61fb07`; manta `0xc8d4bc...45b986` | ⚠️ Unaudited |
| MultiCall | periphery | manta | n/a | [`0xdc0771...d2208b`](./contracts/manta-169/0xdc07713b6c874c87b390a04f0f17a69213d2208b/) | ⚠️ Unaudited |
| NETH | unknown | ethereum | n/a | [`0xc65720...c7789a`](./contracts/ethereum-1/0xc6572019548dfeba782ba5a2093c836626c7789a/) | ⚠️ Unaudited |
| NethOFTAdapter | adapter | ethereum | n/a | [`0x3343f9...3283ce`](./contracts/ethereum-1/0x3343f9de5612b6f8a433abc3eaae245cfa3283ce/) | ⚠️ Unaudited |
| OBTC | unknown | ethereum | n/a | [`0xb1e128...de0e3c`](./contracts/ethereum-1/0xb1e12802831da99d2d47b6a55049d69bf7de0e3c/) | ⚠️ Unaudited |
| OrderBook | unknown | mantle | n/a | [`0x661d88...471e7c`](./contracts/mantle-5000/0x661d88e548214f5606a0491f03b072fd0f471e7c/) | ⚠️ Unaudited |
| PositionManager | governance | mantle | n/a | [`0x9831aa...f677a0`](./contracts/mantle-5000/0x9831aa46badb308f8e87a7e3ab080adfd4f677a0/) | ⚠️ Unaudited |
| PositionRouter | adapter | mantle | n/a | [`0x8a7f1c...d1bd7c`](./contracts/mantle-5000/0x8a7f1c607306f52ed07f9a705b54869159d1bd7c/) | ⚠️ Unaudited |
| Proxy | proxy | manta | n/a | 5 deployments: manta [`0x028781...7fa131`](./contracts/manta-169/0x028781ceed4a2264466ef5ab73c91603087fa131/); manta `0x5bc75b...a73e61`; base `0x161f4b...0477f0`; arbitrum `0xed5d1e...082ac3`; linea `0x3e9856...0c2fa1` | ⚠️ Unaudited |
| RadiantOFT | unknown | arbitrum | n/a | [`0x3082cc...50aaa0`](./contracts/arbitrum-42161/0x3082cc23568ea640225c2467653db90e9250aaa0/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | mantle | n/a | 2 deployments: mantle [`0x02170f...2e0a5f`](./contracts/mantle-5000/0x02170fea1fd31a26aaf6dd06adf01b36db2e0a5f/); mantle `0x9c5582...32733c` | ⚠️ Unaudited |
| RewardRouter | adapter | mantle | n/a | [`0x207d39...d688ca`](./contracts/mantle-5000/0x207d39314707001ae36f12335dd8b1f65cd688ca/) | ⚠️ Unaudited |
| RewardTracker | unknown | mantle | n/a | [`0x57acdf...81f7ab`](./contracts/mantle-5000/0x57acdfef9d2d2c53e6316b3483ca9a14b481f7ab/) | ⚠️ Unaudited |
| RNethOFTAdapter | adapter | ethereum | n/a | [`0xcea368...8ded56`](./contracts/ethereum-1/0xcea3681131dd151ee72a5c8dbba555cb8b8ded56/) | ⚠️ Unaudited |
| Router | adapter | mantle | n/a | [`0xea02de...dc4583`](./contracts/mantle-5000/0xea02deeb067acec119095845d780665883dc4583/) | ⚠️ Unaudited |
| TinyTigerCatToken | token | blast | n/a | [`0xf782e1...957028`](./contracts/blast-81457/0xf782e172a14ee1c85cd980c15375ba0e87957028/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | scroll | n/a | 2 deployments: manta `0x44a65d...7168ff`; scroll [`0x3c7c0e...db976c`](./contracts/scroll-534352/0x3c7c0ebfcd5786ef48df5ed127cddeb806db976c/) | ⚠️ Unaudited |
| UpgradeGatekeeper | operational_periphery | manta | n/a | [`0x9dc756...bbc88c`](./contracts/manta-169/0x9dc75660523581d56d4c8efd5819161e15bbc88c/) | ⚠️ Unaudited |
| Verifier | periphery | linea | n/a | [`0x902c38...400458`](./contracts/linea-59144/0x902c3806a84f4e855a8746e92d7f1c9a51400458/) | ⚠️ Unaudited |
| Vester | operational_periphery | mantle | n/a | 2 deployments: mantle [`0x2e4f63...132f0c`](./contracts/mantle-5000/0x2e4f63c3ffdf457ff210a29ef10ce3b12c132f0c/); mantle `0xb6f417...6d227c` | ⚠️ Unaudited |
| WBTC | token | mantle | n/a | [`0xcabae6...aebfa2`](./contracts/mantle-5000/0xcabae6f6ea1ecab08ad02fe02ce9a44f09aebfa2/) | ⚠️ Unaudited |
| WithdrawalFinalizer | operational_periphery | linea | n/a | [`0x6fe38b...f414a2`](./contracts/linea-59144/0x6fe38b4a1b540f86072dd36b7df60bc1b4f414a2/) | ⚠️ Unaudited |
| wUSDM | unknown | ethereum | n/a | [`0x57f5e0...af7812`](./contracts/ethereum-1/0x57f5e098cad7a3d1eed53991d4d66c45c9af7812/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (668)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0d6f76...a725bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x116d63...3d5f6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13bc53...698a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16f692...b5735b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x174799...bfc410` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x178b74...f4e78a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19e488...8f9e57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1befba...566ce3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x236962...740bd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b763f...680863` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dad78...523449` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2eb710...9820f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x301365...6da6a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36f57f...a16e16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37d815...c38cf1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38260c...28e70b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x385d89...93b4e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39b5dd...64ecb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ad85a...99f700` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3dd8d9...afac23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bf7aa...5173bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d68f9...a1bfd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50cd55...23fddd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x512d8b...90285b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x520b82...6dabd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54f661...d1ea62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x587fa5...c0f887` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59c384...73382d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b065b...3cf147` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b14af...a7f503` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5be163...3be65f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f1725...6b8495` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e8104...766fca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6fdfd0...6d74a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75b2e4...775bae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7699fb...eeec7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79285f...567afc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f431a...67041b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f58f8...3d24b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80c1ef...6bd0fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x823562...594d8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8446c9...ddf8f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x857bf0...14d948` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x876ef3...24b019` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87fdec...4d9a7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x926cf8...4bedf1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x934cbd...ebad42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96714c...c3f04e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x995f4e...8d5e38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c6f15...6503fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9efdeb...a3b75c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f836f...8b1a2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1ed35...82629a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa20353...93dfe6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa57dc7...f9d25f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6911b...de6359` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9d213...dee8f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae5b6c...e60c1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4f3e1...193cbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7e0b4...4ab00a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb836f0...bef53d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb97ab3...1f67a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdfe7f...def3d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc47a9d...2ce338` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc65e0a...e9d88e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd297dc...befb57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd58c55...9a0932` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7c049...812121` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb4209...a40913` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbbad2...04057a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd2d80...43e6fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2964b...f8963f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2a700...be7be5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe423b9...1cd999` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4c555...312f20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7cdb8...8cea46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea66a6...ad497a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef2df4...43e80b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf23756...777972` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf3c794...c07c18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5c560...442145` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf64555...c02ede` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc2891...14c4a7` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x1f282e...d83ce2` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x55f9d1...a49b2f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x649dfa...7cd82d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa898e1...ee5b09` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc8a31a...250e67` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x67ba43...77bf2f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x7187db...68c44a` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xab3ddb...bf2d08` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xafe8c7...83273a` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xc203a2...182535` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xebeaf6...34ade0` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | 4 deployments: merlin `0x41d903...fb0f71`; merlin `0xad16ed...44b6b6`; merlin `0xf5b90f...661d73`; merlin `0xfc385a...0fcede` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x019473...8807d4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x029661...52d912` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x05e423...4876af` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x064b5d...967ada` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x081762...6b92cd` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x08231b...af27b3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x08dcc0...0b447c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0c251f...46b9ad` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0c4c75...11c676` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0ce206...0a5b2d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0e27ed...ff1a55` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x12a39c...ddeb52` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x13bb7c...8719b0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x16690b...392e4a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x168e39...4ee76b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x16d8bf...8e0801` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1872e8...7b63a8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x198fba...ee6c20` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1bf0c8...f17d63` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1ca858...d6b694` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1cc57d...0c76b9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1d2941...ae7146` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1f10e4...1ea481` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1f8866...c0ba24` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x201eba...e956ae` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2108e7...de9c9f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x216b02...290519` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x229034...5f3efb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x245ad6...629245` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x25e71a...9d9e34` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x26d5a7...68b09b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2a2721...dc75f0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2a4891...974167` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2ac030...6926d7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2cbc8b...989855` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2d1d69...7e2193` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2e488d...50dae1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2e564d...cae6c9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2ed161...e6b373` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2fd5fe...7fcd54` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3023cc...d3715f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x315f1f...84470c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x357c8e...f15f8f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x36e067...362726` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x37bb75...a309f1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x39bc24...2c2729` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3a1c8d...1d9687` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3a7b05...5819dd` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3bb03b...c480ae` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3c4de8...27090e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3c9d34...8037e8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3dbe7c...f1f3ef` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3e65ac...deb474` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x41736c...4c7cf9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x42a0ea...4c2a38` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4368fc...f6b6b2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x461064...ab8277` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x487f6b...3ded27` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x49397a...f20099` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x49ac32...0ff397` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4b1dbc...03e347` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4d59ea...9b4d69` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x505294...e29cba` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x532e52...94163f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x542fd0...d825cb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x545356...8751ca` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x548f29...7fd6f9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x574f55...1d2b61` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x57c90d...258c1e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x588354...a8cc6f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x592f29...ac3a6e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x5d11b9...6fce31` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x5d2445...c9b2f0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x5e9012...4dd2d8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x61dd26...332316` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x636d40...eb87be` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x63a14c...47574e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x650e88...1d9e87` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x654e7d...199212` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x664d6b...4290a5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x679505...84fa63` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x699d08...c8ade9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x6ef8d8...b33bbb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x6efff7...ec673b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x70364e...43300a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x708af8...f632d2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x70c3de...18f979` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x71f67c...0ceb7f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x727df3...4fbb90` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x746817...1e2e6e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7524b7...692d43` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x756f1d...60609c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x77446f...dc9085` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x779fc2...766403` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x780855...e6ddde` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7b8eb5...9c9f52` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7b9770...3a78e3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7ca59a...2dabbb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7db93f...39e7c2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7ea781...7bd7a1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7eb047...81a9ae` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x8231e7...63a3fd` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x846e58...11a189` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x8551d2...00fdb2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x86056f...49648f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x87a1c0...24a1a0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x87dfa4...ed2aea` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x88ceb7...533fd8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x8970c2...0d2b44` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x89f74f...289abb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x8cc118...cd1e24` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x8deab8...545df5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x8f145f...84de67` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x90108d...da77ca` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x901865...9d2809` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x92351c...53e550` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9270a9...b0670b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9355c7...23bf1b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9484f8...7bd201` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x949cb5...1eca7c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x94b180...5a290b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x973623...1f8826` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x983820...8e081a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x983a26...cc27f7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x98b799...bd4193` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x98e34d...6d0ee1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x99875e...143564` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9c2407...08950d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9c338e...bb0ef8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9ce150...f07084` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9d0162...589177` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9d42f4...478fe8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9f0239...03c8bf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xa01c3f...4a1242` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xa1819b...ae61a1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xa1fde7...b3f7ef` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xa236b7...895b4d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xa2a795...ef58eb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xa59ae6...41a326` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xaae698...a88fbe` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xab1f2b...a03459` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xac5b26...253daf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xaf6f7d...46431f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb1fd68...a7771a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb230db...75bf38` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb3328a...ea2ac7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb3a5ee...d5c0b3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb44cba...d296b7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb45610...549a68` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb9097b...8a08f0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb98de1...79d9be` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb9c70c...af2961` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xba68bd...2de063` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbaa9f1...6cdb26` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbb75fa...7ea6be` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbc3407...eb488a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbe3835...549538` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbf0d05...2d4937` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc10d8a...cb9492` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc18e29...562861` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc1cddf...6406fc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc343b9...c99aaa` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc35e2e...1bf571` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc4c67c...aad74f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc943ce...8c39bf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc9ef72...c99bad` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xcabdd7...3e14fe` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xcad889...2c2fc3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xcc0246...4e249d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xcc15ad...69b988` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xcdece5...606ca7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xcee7b8...33c40f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xcf5e1c...ef24f0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd173b4...c0838c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd28c91...908634` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd40bac...e3ada7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd7ceb9...fc081a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd84a32...1f811a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd9d455...56035e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xdad689...a647f4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xdcb6d1...3efaee` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe064c5...0afa8e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe2bef3...5d87e3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe2c2db...917986` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe34901...8be844` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe38824...6f03be` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe4779b...00c62b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe4e53d...89ddd0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe62619...02b597` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe7a108...403aa1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xea0aad...93405c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xeb0c39...7956ce` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xebeea5...fe4b0c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xedd1e8...3fe4b7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xee4d71...a8fdd7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf04b22...eec632` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf1b4a1...e4cf6e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf1eefa...76a4a3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf259e6...0a54e8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf30c8c...222024` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf399f6...535e05` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf50d60...00d49d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf54f65...3616a4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf627c5...263d87` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf91e7d...e73f10` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf93a85...af9f32` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf9b603...91c0c4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xfe4169...6e73f9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xfe8470...631f30` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x067c71...ea47ca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08ca91...85e388` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x09cb6c...ee1c72` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c0404...f1e821` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c89bc...2907aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1054ff...c69011` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x12abac...5a5cb4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21fe89...86c3b8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x314bf0...51de47` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x31f0c8...7f3611` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x413552...374b1d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x46c8d0...a3fa1b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ac2cc...bee425` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c5629...27c563` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x502c84...34af12` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x50efc7...726211` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x53d9d2...c6db6a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x55fa52...52235e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5715de...b8ce05` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5bd512...326eaa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x624658...c283ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x649dfa...7cd82d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x664e1c...a83e10` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x67ebb0...accb3e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x683669...2216f5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x703651...2a62a2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x70df54...c2ed88` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72343e...f2fcad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7769c1...3ea458` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x79926e...410db0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7ae056...a74040` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7c56da...bc88b3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7f0013...36e356` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x803460...f2809b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x80d12a...1674d5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x83bc73...c0055c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x85079c...8b1f4e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87743f...9a43fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x98ceda...00673b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa84860...256cd6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa89aa7...9ce715` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa9f1f8...680027` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaa46d9...81865a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xad7e3e...878581` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb6b969...c3d78b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb205c...275adc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5941f...d35bd2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd784d7...455657` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd923b6...f5ff66` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd5097...7a3545` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe4589e...a1be0d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe473ce...7264dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe89635...99cc13` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe946ab...ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xebda7f...068105` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec30c5...6e3417` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee7981...fd59d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xef7007...e80cc7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf63e81...e0c3ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfa7fb7...21a89c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb0ad0...8f5585` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x028781...7fa131` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x030456...33c8c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03b485...227ff3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x04c6a5...325d1e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x08ca91...85e388` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x09cb6c...ee1c72` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0c0404...f1e821` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ed6e9...63b3e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x119b94...4fd1a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1202e0...685ffb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x144a96...19a491` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x161f4b...0477f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b8605...9d0d42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1ba934...1b4172` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20039e...51df38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x235118...b6b68f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x238715...e7053c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x24b9f1...4efe95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x273d59...7583c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b73ab...e33fe6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d28ff...ac6c2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2e8ad1...f4a190` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30b2c7...e81ad9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x316984...c8466a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x31f0c8...7f3611` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3203e8...307352` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x33ab2c...b72b10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34d517...ecbf93` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3717aa...3a611b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3c3f4b...9aa98e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3fc412...0f92ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x413552...374b1d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43bcb7...b7a7a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4563c3...cfc027` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46c8d0...a3fa1b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50efc7...726211` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x55fa52...52235e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5610d4...070a99` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5715de...b8ce05` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x57da86...34a9c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f58bc...fef28c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x603d3f...8dead2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x69bdfb...00688c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6a8324...cba1f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c2256...c20bc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6d6ce5...927962` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6e21b3...69274a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x72343e...f2fcad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x733af6...32294f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7769c1...3ea458` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x786980...d47c63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x79926e...410db0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7bd79d...18483a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7e2395...aa2f55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f0013...36e356` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f3bc4...185c5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x803460...f2809b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x81dee5...f81f8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x89f273...24f0cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x928732...88bc8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x941ec8...0a190c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x95fb80...e85f3c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x996bae...6ea506` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9a0bb8...33ef1c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b199f...49e0c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9dc842...1c66ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f74c1...41c0d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa00509...36fb60` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa194fb...dd3a2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa84860...256cd6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa46d9...81865a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xacb89c...818730` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb08af9...78abd8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8d9f0...a3a2d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbcf5eb...da237d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc3392b...0686bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8b602...3e427c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcc97be...5c7bd7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcdcdf6...80613d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3aaa3...d79e41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd5941f...d35bd2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd6bbb0...a2e86c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd7425f...843b26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd784d7...455657` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8428a...f1bce7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9e5c4...03134f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc0771...d2208b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdcaa28...49cab6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdcf21e...6dc5e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2510e...25ddb4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2cd60...19a305` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe3469d...430ff2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe469c1...6d344f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe54cac...34324f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe89635...99cc13` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe946ab...ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebda7f...068105` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3727a...6a0e94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf4fe03...2dd32a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9c947...8eee64` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9f8a1...341a70` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfa0e19...a3afe2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb0ad0...8f5585` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb8836...31ff78` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfcf873...969110` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfeaec8...2ae1c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xff73a1...d5420a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0163a4...d88a72` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x04bf7c...14d716` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x05d437...b960fd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x05f519...e8aef7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x08884b...6b7600` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x08d3ff...2b67d5` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0b703a...3707c5` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0c0404...f1e821` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0c25f3...dad518` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0c89bc...2907aa` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0e57c8...5c2dc8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0ece76...2203f0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0ffcbe...03444e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x103bd3...578511` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x119b94...4fd1a2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x139abb...5c22e1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1434e4...8bcfd4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x161f4b...0477f0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x16397b...a8dd1c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x166868...c75bf9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x176211...1ee1ff` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x17db45...f9e3ad` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x18703d...866e4c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x199810...5a5521` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1e1f6f...39774e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1ee09a...4c6002` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2132ff...fd9542` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x213f44...44d00f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x216319...d70c8d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x236eaa...ac79dc` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x23fd0c...4ff796` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x28b931...0fdb73` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2bfdf4...ee97a9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2c4f0e...3589af` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2e8ad1...f4a190` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2fad6c...7fa6fd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x316984...c8466a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3203e8...307352` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x337636...6c5212` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x34bc8b...338fa2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x353012...a8ceb9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x369db6...a7d126` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3782f9...25c7e8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x37cc52...ead306` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x381b76...0770c9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3aa974...3a6965` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3c3f4b...9aa98e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3c5cac...d924ca` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3d70dc...3a441e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3e3ef7...d27982` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x413552...374b1d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x42b43b...569e42` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x435c9b...72a7fb` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x437a10...2bbcac` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x440ca0...f34020` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4516a3...b17f2a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x47767b...d783c8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x479c25...9e4beb` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x47b1bd...470ae8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x47d141...637ae5` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x49b620...c79e8c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4ac2cc...bee425` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4af15e...6b00d5` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4d4b1b...8b0d59` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x50130b...121267` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x50764c...dbf2a3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x508ca8...d644ec` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x50efc7...726211` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x510ca2...35af68` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x51ed2d...207723` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x53d9d2...c6db6a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x55c7ac...6f2e48` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x55fa52...52235e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x578f38...6ef55a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x582b2e...fc2f8a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5b1622...dcfa2d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5b884c...63f190` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5bc75b...a73e61` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5bd512...326eaa` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5cbe12...666d9a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x62351b...a5f2b2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x624658...c283ab` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x62646d...b2d7c1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x649dfa...7cd82d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x64cd4a...9e2fe2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x66c02a...971872` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x66eafe...dc96c0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x67ebb0...accb3e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x683669...2216f5` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6990d3...0b418c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6baa31...017acb` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6cda5d...f8dc9a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6d967f...d7a43c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6e8439...b95704` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6ff5e1...43f7f7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x71e4db...220b81` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x72343e...f2fcad` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7769c1...3ea458` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7b5780...e937db` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7bd79d...18483a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7c56da...bc88b3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7f9de3...8a4c0d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x803460...f2809b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x80d12a...1674d5` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x848710...05a1bd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x84f3b3...511208` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x86a760...1ea7ed` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x86c5ae...733126` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x875896...be5ef3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x89e70e...25147d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x928732...88bc8d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x9453dc...f4c06f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x94f2eb...acac07` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x96b3a1...124b82` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x975a87...6ef628` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x986c90...388e92` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x9899f2...c3b54d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa107b6...a689d7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa11ba9...b370d6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa194fb...dd3a2e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa21943...e12b93` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa2ee6f...62504a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa53cca...13c223` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa6df49...55d1f6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa84860...256cd6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa86936...c17754` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa86ef3...ce9637` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa89aa7...9ce715` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa9f1f8...680027` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xab838f...a2e0d3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xad5d72...25b51c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xaedfed...bf0809` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xafc54e...89df0a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb6b969...c3d78b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb92ada...8d6a92` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb98ffd...30c9cc` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xba2be3...42602c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xba6163...9d7f66` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xba7b8a...00128a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbe4c2c...678204` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbe641f...c76d04` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbeec2b...a2241c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbfa352...63283f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc0729f...72a9d4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc24e7b...9cfc13` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc55c05...6226c3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc5dc25...b3fa0a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc7b2a2...e90a57` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xca57c2...5e24ce` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcb04d0...7ea30c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcc8256...c1f5dd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcdcdf6...80613d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcf2579...d4cdbb` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcf7e00...2ba30e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd13ea2...33a605` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd784d7...455657` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd83af4...cf599a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd8428a...f1bce7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd90bbc...82e378` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd90ed3...777137` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xda8aef...2d49df` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdaca52...e332d6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdb75db...d18295` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdb97db...7ecdfb` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdc0771...d2208b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdc36f3...fe8d3d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdd5097...7a3545` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xde1ce7...3be269` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe3488f...a56246` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe37f90...43a31d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe38f8b...686dba` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe4589e...a1be0d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe469c1...6d344f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe53fcc...42a19b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe5da2b...591d78` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe6e947...785809` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe75ef0...5b8afb` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe79869...4c02c0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe840c5...ae197b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe946ab...ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xeb79fe...39f4ad` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xeba3f0...2dd278` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xee7981...fd59d7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xef7007...e80cc7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xef95f4...9d408d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf2801f...6e35c9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf7f67b...d8cb8c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf8fe43...e843f5` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfa3b67...4489cd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfbf795...151e7d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfe3e63...96709f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xff2568...27d79e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xff6a78...227966` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xff73a1...d5420a` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x986c90...388e92` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xc97c5e...a331b3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Secure3_zklink_Nova_2024.3.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zklink_Nova_2024.3.pdf) | Secure3 | Audit | 2024-03 | stale | Direct | contract_name | 2 | n/a |
| [ABDK_zkLink_Nova_2024.3.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_Nova_2024.3.pdf) | ABDK | Audit | 2024-03 | stale | Direct | contract_name | 3 | n/a |
| [Secure3_zkLink_Nova_mergeToken_2024.4.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zkLink_Nova_mergeToken_2024.4.pdf) | Secure3 | Audit | 2024-04 | stale | Direct | contract_name | 2 | n/a |
| [ABDK_zkLink_Mergetoken_2024.7.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_Mergetoken_2024.7.pdf) | ABDK | Audit | 2024-07 | stale | Direct | contract_name | 2 | n/a |
| [Secure3_zkLink Nova Arbitrator Upgrade_2024.4.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zkLink%20Nova%20Arbitrator%20Upgrade_2024.4.pdf) | Secure3 | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [ABDK_zkLink_CostOptimisation_2024.6.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_CostOptimisation_2024.6.pdf) | ABDK | Audit | 2024-06 | stale | Direct | contract_name | 1 | n/a |
| [www.openzeppelin.com/news/december-diff-and-governance-audit](https://www.openzeppelin.com/news/december-diff-and-governance-audit) | OpenZeppelin | Audit | 2024-01 | stale | Direct | contract_name | 4 | n/a |
| [ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20X/ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf) | ABDK | Audit | 2023-07 | stale | Direct | contract_name | 3 | n/a |
| [ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20X/ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf) | ABDK | Audit | 2023-08 | stale | Direct | contract_name | 3 | n/a |
| [ABDK_zkLink_Circuits_2023.2.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20X/ABDK_zkLink_Circuits_2023.2.pdf) | ABDK | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [ABDK_zkLink_Solidity_2023.2.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20X/ABDK_zkLink_Solidity_2023.2.pdf) | ABDK | Audit | 2023-02 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 713 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=23

Zero-match audit list:

- [15113] ABDK_zkLink_Circuits_2023.2.pdf

Fork inheritance lineage and inherited audits are included when available.
