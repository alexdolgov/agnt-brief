# Agentic Audit Brief: AquaBank

## Project Overview

- Project: AquaBank (`aquabank`)
- Website: [https://aquabank.io/](https://aquabank.io/)
- Lifecycle: active (Tier 0, 35.6% below peak)
- Generated: 2026-07-04T14:53:04.020Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: avalanche
- Contract surface: 108 unique implementations (148 raw deployments)
- DeFi Llama TVL: $750,199.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 4 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 150; live-surface contracts included: 148 (21 live, 127 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 9 of 108 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/9
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 99
- Unique implementations: 108
- Raw deployments: 148
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyberscope | Tier 2 | 1 | 11.1% | 2025-08 |
| unknown | Tier 2 | 1 | 11.1% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TransparentUpgradeableProxy | proxy | avalanche | n/a | 11 deployments: avalanche [`0x264f4fdeb62dd4e9f028b51df0a06d726048966d`](./contracts/avalanche-43114/0x264f4fdeb62dd4e9f028b51df0a06d726048966d/); avalanche `0x5f403845babfd3db61b31806177c641057e7798e`; avalanche `0x68e315fce4a7ec2b3d618d2c1cf62fc6d5163136`; avalanche `0x77c8dffe4130fe58e5c3c02a2e7ab6db7f4f474f`; avalanche `0x89aee1ed2d3dd55650640df189439df8cbf05dad`; avalanche `0xa84304630166e4b4f3ac2c2fffc6f091960547ba`; avalanche `0xb6e2f9d65368dc3169e2b959c91ca9774febfda8`; avalanche `0xbce94bd9432175e1340703d9fb9e67bf03050961`; avalanche `0xc7a901dca2a9e039283a3e94be880d4e688aa357`; avalanche `0xd6f5fe1250363a75319d10ae4981aa5aa62ddfb0`; avalanche `0xdf724bbce9a539f00427d3af587d5754d434e3e5` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeaconProxy | registry | avalanche | n/a | [`0xa446938b0204aa4055cdfed68ddf0e0d1bab3e9e`](./contracts/avalanche-43114/0xa446938b0204aa4055cdfed68ddf0e0d1bab3e9e/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | avalanche | n/a | 3 deployments: avalanche [`0x08b61d8879602e4f38739bba2505b609e1ececb1`](./contracts/avalanche-43114/0x08b61d8879602e4f38739bba2505b609e1ececb1/); avalanche `0xb8f9cf05aa837cc8f3655974f17974c74fbc6732`; avalanche `0xc8d07ddd0c46b0cc151707ab998b61c0876d6a6d` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | avalanche | n/a | 3 deployments: avalanche [`0x55cee33f460bc5f861252ee1eb223db0d22cf36a`](./contracts/avalanche-43114/0x55cee33f460bc5f861252ee1eb223db0d22cf36a/); avalanche `0xd7e60b6e71e64878426b382c79c2f25517ad37da`; avalanche `0xe2245a8c4f3e18b0001d21d03ac155cb922f1e92` | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | n/a | [`0xdce8c2213869e1e2687efdb571c5630cf2d00214`](./contracts/avalanche-43114/0xdce8c2213869e1e2687efdb571c5630cf2d00214/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0af6395cf9fa1f64e1b38935a9cd78f5931ab80a`](./contracts/avalanche-43114/0x0af6395cf9fa1f64e1b38935a9cd78f5931ab80a/); avalanche `0x33ad5c17b81cc027edd7f53e6585a648cb40a190` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa3e316f89e76eba1ddcfb57cfe61577d1969f8b1`](./contracts/avalanche-43114/0xa3e316f89e76eba1ddcfb57cfe61577d1969f8b1/); avalanche `0xe749c1ca2ea4f930d1283ad780ade28625037ced` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | n/a | 2 deployments: avalanche [`0xc5fd93069cad3f766b480172da452911ab7174bd`](./contracts/avalanche-43114/0xc5fd93069cad3f766b480172da452911ab7174bd/); avalanche `0xf74f317e77d75ac9e696d028ed65f26b5a4c37a2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0xd994b45f66bca7880c3dc69a8f7e59324bba26f6`](./contracts/avalanche-43114/0xd994b45f66bca7880c3dc69a8f7e59324bba26f6/); avalanche `0xee9d947e164b459ea1abb0d49dfaadb20d6fca06` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (99)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x3fec1de40b2765071eb3066e1e6509d992829193) | proxy | avalanche | n/a | 2 deployments: avalanche `0x0680b60f5210b8e85352804e9d3b90dce6253c01`; avalanche `0x3fec1de40b2765071eb3066e1e6509d992829193` | ❓ Unverified |
| Proxy (impl: 0x99f9828ac84249867a602de62c9bc62ecc22a4cd) | proxy | avalanche | n/a | 2 deployments: avalanche `0x8e04ec9bcf47239b82838ba1bff59e0c3a8566fb`; avalanche `0x99f9828ac84249867a602de62c9bc62ecc22a4cd` | ❓ Unverified |
| Proxy (impl: 0xa95b3580d21fb1616dc6d06be2ecdffd77ca15ea) | proxy | avalanche | n/a | 2 deployments: avalanche `0x00f8a3b9395b4b02d12ee26536046c3c52459674`; avalanche `0xa95b3580d21fb1616dc6d06be2ecdffd77ca15ea` | ❓ Unverified |
| Proxy (impl: 0xac303dbf6630c2bfa8416e152c407a6a5d5fc304) | proxy | avalanche | n/a | 2 deployments: avalanche `0x61e8f77ed693d3edecbcc2dd9c55c1d987c47775`; avalanche `0xac303dbf6630c2bfa8416e152c407a6a5d5fc304` | ❓ Unverified |
| Proxy (impl: 0xaee3e155463f4391f96ff9f9e68ea86f14fab015) | proxy | avalanche | n/a | 2 deployments: avalanche `0x9b559968851b0128077d2af5ccfac0a476b91067`; avalanche `0xaee3e155463f4391f96ff9f9e68ea86f14fab015` | ❓ Unverified |
| Proxy (impl: 0xb2cc1202d56e7053e857fac263d12d508f508f89) | proxy | avalanche | n/a | 2 deployments: avalanche `0x3c594084dc7ab1864ac69dfd01ab77e8f65b83b7`; avalanche `0xb2cc1202d56e7053e857fac263d12d508f508f89` | ❓ Unverified |
| Proxy (impl: 0xb45aa82cba5a8710ac67b3ad8644fd24d21c0678) | proxy | avalanche | n/a | 2 deployments: avalanche `0x038dbe3d967bb8389190446dacdfe7b95b44f73d`; avalanche `0xb45aa82cba5a8710ac67b3ad8644fd24d21c0678` | ❓ Unverified |
| Proxy (impl: 0xc113504f112269c3793be33ca5b8c07c0c1a9213) | proxy | avalanche | n/a | 2 deployments: avalanche `0xb8e73fbf8336f2deffa8fccf3b55ba0e7b337984`; avalanche `0xc113504f112269c3793be33ca5b8c07c0c1a9213` | ❓ Unverified |
| Proxy (impl: 0xcd52ccdf9adfebd52cd2cc1d992543bd981cdc7c) | proxy | avalanche | n/a | 2 deployments: avalanche `0xa6977a3866347766b7aa85e63d071dc639f3aed0`; avalanche `0xcd52ccdf9adfebd52cd2cc1d992543bd981cdc7c` | ❓ Unverified |
| Proxy (impl: 0xf52e5b120f049b9ee8c1dc8a7ebec7b1437db67f) | proxy | avalanche | n/a | 2 deployments: avalanche `0xccb7de5b7788de551e3b85b50e4834d5b7e3f27c`; avalanche `0xf52e5b120f049b9ee8c1dc8a7ebec7b1437db67f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x02a9d3f4c3e2188668aa52ed0f3b7233af4cd6a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x07482f5b2d886815d15ff1706f37377674b474a3`; avalanche `0x743bcd612866fc7485bfc487b14ebf9a67d753cb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0938592e4c4e11ad8a99c81a7a1a182b98313f1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c81c0e62e9a2538ff5d868e438d04b114bfce1b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x158b65bcfdc2f59375b50af95a1818a44b0b1b1b`; avalanche `0x42ea480af9eb325c425d0a3324a2b61a9be318f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18d773fdb68dc3124f9dbd4eac3c5ffcae4cd439` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18f5006808afa939dd309ced8b9287fb7e97a769` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x198763c1347ea879e26c2564c6f51fdfcb24ef01` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1ab8b66a4dda0bee3179d9b5ee54e4dcd46be9fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1f7d74f60ebb1eba2d59ecc9f765273d14b53a5e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1fdc905a05f97311aaac2229d659b330fdc71086` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x20aa1df030697de5d2c115657788e6ba850eaec3`; avalanche `0x2d200151ffc4a913f6e5b41c6ea8cdc8e8dab76b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x20d037eda89e9232803a9f8ab6c025822586f841` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2270d6a859d4e80284fc832741c0c8d55bda0be3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x23572790b8af7ce0f75368bca13951902e3d1e58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x25c0d584a17d777c105d57a18123d6d12f69c751` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d8f4053a2ef72d147a6b418dffb6ac68552ef9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2e0e4c6965a6dc7e1ba30bb818bb6221c2c0dc16` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x2f5d892470359af99e0a698ea1b094a64721b036`; avalanche `0x4e42d0f48826f8ca874343bfdba6ef4bcd0c666b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x301e17424de779f1a56f5158db4328c8deedd3ed`; avalanche `0xe04348fdc7200fbdb5622dc46730b9603a710714` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x30a7c40f9b8d0edd091328b19b55b32ccc76f198` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x3d8915fe56ad51fe608ceb716e29f17ae65044a7`; avalanche `0xadcae606ada101d6c20b6df57954eef00f370a8e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3ea03caad7db800c8b864ea387212f7c9b4eaac3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3ffc8c8ef739c8e3b4ab89add046c5b0ad3b7722` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x41c299ea121250594ecf565f3e36aa2642dca0d6`; avalanche `0xc4f88175e7c5dbe6339f22ac1755165b8c189af6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41e4f49a6ffec805c97ab0eb2da9f36ea0e6434d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x539ed16dd850d5b8198683dbf8342f587472b31d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x558e514060b356ef39011d2296fe04ed29e63b57`; avalanche `0xae8c7604dcaaf0c6195a5e23a6f2e5ce01e7a932` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x563ffb969a2a8c8fb7c0756739e3bd98536d287d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x580e926d15289d3317628c9ee015a7a1f716e301` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5a356f0531b1513f34019a466b2f369f29f209e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b2ed6fbd14ae315b72531def848ef9ff7e2625c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d0b6fc2e924062aa2bcaed7d40a8e21d1388b11` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d6d9811919598981367ac45134f9586d4f04bff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5dea10a382994eab0c9f2e946ad5fd35fdf9e238` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f7eeaa53b80dd16bf7d0faf4df36f91d1e55922` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5fae7873c60cdcf3d6b7a12f26b9b3a7a52f263c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x63e9267e5e1ceb181ceccbe1f5a7c8408e48e104` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x692e8a4c62bc7a30aa3e6b72773feba6d11423a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x69442dc23afa5ee0aa6445ec10753926863da164` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6ac2ae799c0402a12b13637abc8df4dafda4ec43` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6dc69eaf5579a69ac042daac8cdbfbf84c9ab7a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e2e8f88a38ed6da3a64346620e5d4b3358dccfb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e4d314e93030ee65b02ee9dd7e01a6918f76859` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x747ad1420926e117796089956fcf07872ee4f67a`; avalanche `0x7d336b49879a173626e51bff780686d88b8081ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x785c7d1a71a41f0c2c69ad8306e7c9cd0ab004d4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x787a5a963ba2260317d70d7159aa48fa5d073ca2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7911e6eccdf1dee965f7ef85bf5f7ab76ed999bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x829de3073bd8cfc00a79a46de1b5670b974edb94` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85b3d807389038eed01858b33b6941362d2e1364` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85f370d62708fddaf6cb176e11acbbc84976a5af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x86875f808546c666c8561147939512a5d5866da1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0x8905f6ba3c0453844205224f2addbe6e48a90107`; avalanche `0xb06de2e9a339d201661045b7d845de3d20373b4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8a930e89cb3d64619011cf5190199a83ce427c4c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x90633feb0bb78bfa69047fca485d68021fb66168` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x90de38727e3f01dd2986a672afebc3db364a1a5a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x93a723940fc6cecc8bd8dce8d886a0781148a762` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x94405ccad0b5a81d3796332cfe2710f276b5f6b0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x97dffcc90c7136fc5bafec73cd5ebe0e631e453d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9ac77fd44dba6740beaed25c00a14ed85cd36c25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9bc773f3c5b5174c11f916ce06ebd6701adcd68d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa1aba10b92a5050f658af56ffe35431e2fcee33b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4595beaef8248898c5f2f2ea98571dcc1427b25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xab4fba02a2905a03ada8bd3d493fb289dcf84024` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xab6570de003e3be8684424127ef4ed36a8e4a5bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf7c365ea52b22b16c002fdf917ed5cd158582b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0xb02304a6040afbb62c9fc7741780727b73b18a2a`; avalanche `0xd211b17dfe8288d4fb0dd8eeff07a6c48fc679d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb11bf44cce28555e8639e64a8352ab042b6236a9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb36c406ebf10da3afa8e1a99839d8164bfcf7a7a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb8edd26afaed491479c56a163cb617db9938a29d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc114b5d6b401fa3b63083688a65fc416744171c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc218a43da3963e2e9061d79530b2cb04a478c744` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc972ae7871e69dadd3068ab825ca8c0d4cb96fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcd9bc4f8d6d07e73b8e3aa3a6f1e37dc44ed0c41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd067a710e3ff947935cd2d92bb791295e06f028c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd086ec57eeb7050fcf5a1790a02b37ecfa3a2ca4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | 2 deployments: avalanche `0xd0dbc97c86dc8dbec2589a0f61698530e553cded`; avalanche `0xe0e20bb8435510082b58fdc370a71e59023f471a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd38e08a15d3db1ea5671a964d63671e19492f5a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd88d44130f7c97eb1ac30aabb50b5e35213c354e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdbc3463f2cd673a87a6cff2705ea945a30f66f85` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe1301b0cd0591b3d2a239526e4ee2d6dffa4f9ef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe7d0fdfa72fd895c05ce807fcf72c7534ae319d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef0e8c8a774a509a28f2cc34cb2dfcfb3aa91ba6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeff1db0659d82d052125f4d842b2dd0db370d504` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf1680e53fa333e19cea61c246dc7baecdb1c7347` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf3f8e55830fcc19bb5fa056434d5a08535b91cf0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf6444df3b9fcb40f6a908a8c5c6cc58d1813e6f5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfc95e0bbd43ef2a36c6c198a84a2e544765c08db` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfd11f82d8d5e0ba696b01e0d31d26aa7abbf82c5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/ab/audit.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |
| [www.cyberscope.io/audits/ab](https://www.cyberscope.io/audits/ab) | Cyberscope | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x0af6395cf9fa1f64e1b38935a9cd78f5931ab80a`](./contracts/avalanche-43114/0x0af6395cf9fa1f64e1b38935a9cd78f5931ab80a/) | TransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 69 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
