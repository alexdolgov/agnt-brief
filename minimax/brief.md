# Agentic Audit Brief: Minimax

## Project Overview

- Project: Minimax (`minimax`)
- Website: [https://www.minimax.finance](https://www.minimax.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:33.129Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc, fantom
- Contract surface: 245 unique implementations (311 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 21 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 15 cross-contract reference(s). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 336; live-surface contracts included: 311 (77 live, 234 unknown).
- Excluded by liveness: 25 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/29 (0.0%)
- Deployed-live implementations: 29 of 245 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/29
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 216
- Unique implementations: 245
- Raw deployments: 311
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Market | unknown | bsc | n/a | 3 deployments: bsc [`0x228fef9ed32ca3aa5c99639ee42c23d6807837ed`](./contracts/bsc-56/0x228fef9ed32ca3aa5c99639ee42c23d6807837ed/); bsc `0x2ba4d01550dc432a8fb47b3d27b888d771afcf35`; bsc `0x7e8dc586744e456f419f2f29e9c4f148287d97f3` | ⚠️ Unaudited |
| Migrations | operational_periphery | bsc | n/a | 5 deployments: bsc [`0xc9d8648a39addcf02f3f73b4cc7fa273e97563f9`](./contracts/bsc-56/0xc9d8648a39addcf02f3f73b4cc7fa273e97563f9/); bsc `0xeb18327dca0b4c645bba443559a4792849efb93b`; bsc `0xeceeac74ba58f77aad784ddcb1cef511bb24efce`; bsc `0xf0ed2b0106e275895af6603d39bce16c5da186e7`; bsc `0xf1f7bc07ab5058f96c1cfc95cb22a473ffe54003` | ⚠️ Unaudited |
| MinimaxAdvanced | unknown | bsc | n/a | [`0x50e4ede716d977c53836a688851998c773e3c83c`](./contracts/bsc-56/0x50e4ede716d977c53836a688851998c773e3c83c/) | ⚠️ Unaudited |
| MinimaxBase | unknown | bsc | n/a | [`0x529476965f5de94d59139232c6537bc5210c8543`](./contracts/bsc-56/0x529476965f5de94d59139232c6537bc5210c8543/) | ⚠️ Unaudited |
| MinimaxMain | unknown | bsc | n/a | 25 deployments: bsc [`0x01db71fb8d8bb666d76e584fbf253b09db808c7a`](./contracts/bsc-56/0x01db71fb8d8bb666d76e584fbf253b09db808c7a/); bsc `0x0494cf0abd03462e16c9c44a185fb76c07fdb6cf`; bsc `0x121cbe68f10285123716d5fdb84994598f09fdaf`; bsc `0x280a5840583282543c818dab5eb33b162c964e96`; bsc `0x2cac01fa136c492e1883b44cde0b7207f19dc3d8`; bsc `0x314a147bbfd2b4988728d8fc107ecbf8fa3feac0`; bsc `0x31afd703c9c0ae5b1c2d3c09d8f30740ff8c37db`; bsc `0x377c061be8361b84ebb3a0016525f6935be8280d`; bsc `0x39174d13027a8ddc4bfd1496d7d7a7f8084072c4`; bsc `0x3eea95489a402ad252d3f21a9c762ef9a4bf71ef`; bsc `0x5a3b24e1bf904e54c25387483ab8b3a15f77f73d`; bsc `0x62adbe6ceb64b1291a7742eb543be3858b1d0bf6`; bsc `0x62d24c00c95a685729df41595d67febdf50bf7f0`; bsc `0x69436e02ec861c2320948d5bf9726de813b6d803`; bsc `0x6d2fc45837cf71e08c6c0284b80a1a511aaee44f`; bsc `0x759724c59736842f317670a68694fc0d00850e31`; bsc `0x7f0a34a187755db0047d6c501ea5a074accf3343`; bsc `0x868515f1ea3ace9fc668ace8e8a0010a0071a52a`; bsc `0x92de2b00c614813612ec0e0958de0daacbeb0852`; bsc `0x9d3cd776ee6d503335801e004dbba2553c193007`; bsc `0xa0c37e1a75dcfd9e50e8ac1c4571899bff8e5c2a`; bsc `0xa65b6a2139f5c06859443c77effa99af66656abb`; bsc `0xb55c22adeaeb86b68313bd79f9b1ea3f8df759c4`; bsc `0xc3e86f9b80fa31f60ffa44b7a9705e36de9ac140`; bsc `0xd9e4d833b945296aae6d769f2bd78f23fbf6520e` | ⚠️ Unaudited |
| MinimaxMain | unknown | bsc | n/a | [`0x3047346280247cc3314c66fd5e400877f62b8bf6`](./contracts/bsc-56/0x3047346280247cc3314c66fd5e400877f62b8bf6/) | ⚠️ Unaudited |
| PairTokenDetector | unknown | bsc | n/a | [`0xab221cfd18470bca955a13b8d8df8a371a514be9`](./contracts/bsc-56/0xab221cfd18470bca955a13b8d8df8a371a514be9/) | ⚠️ Unaudited |
| PositionBalanceLib | unknown | bsc | n/a | 2 deployments: bsc [`0x202c0ff74b1666b79d68d689c6e0a8cdbccce45e`](./contracts/bsc-56/0x202c0ff74b1666b79d68d689c6e0a8cdbccce45e/); bsc `0x592c07e35d1aaec6af5a141da114c7f15b37a2c5` | ⚠️ Unaudited |
| PositionExchangeLib | unknown | bsc | n/a | [`0x6aff4762317661633268e35ce59d883ab7f32bf5`](./contracts/bsc-56/0x6aff4762317661633268e35ce59d883ab7f32bf5/) | ⚠️ Unaudited |
| PositionLib | unknown | bsc | n/a | 3 deployments: bsc [`0x4648d23395bfa19dc681ac7506e99e2f0dabe3c9`](./contracts/bsc-56/0x4648d23395bfa19dc681ac7506e99e2f0dabe3c9/); bsc `0xc5238f06dfdd1d8717fefb1da6d22400a1824875`; bsc `0xe2bbe8c23c6515456abf7d688180f821e03c5a46` | ⚠️ Unaudited |
| ProxyCallerApi | unknown | bsc | n/a | 2 deployments: bsc [`0x7e5c1998651181e3306b76faa0223512b16da357`](./contracts/bsc-56/0x7e5c1998651181e3306b76faa0223512b16da357/); bsc `0xa2aee458dcefecb1adcb3c8076e5c65f65856dfd` | ⚠️ Unaudited |
| SingleMarket | unknown | bsc | n/a | 2 deployments: bsc [`0x8b0f5f4d92afc0a9ecad1c92b3fd8ba84dc23a78`](./contracts/bsc-56/0x8b0f5f4d92afc0a9ecad1c92b3fd8ba84dc23a78/); bsc `0x9c2354a12dbfa2a35b557b6d7fc48c09dd13ed09` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x0a42212ec73469c48bbe567ad6d32e0687d327a7`](./contracts/bsc-56/0x0a42212ec73469c48bbe567ad6d32e0687d327a7/); bsc `0x43acdb04d820dae0691c08480e1a6ac6e9013795` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 15 deployments: bsc [`0x0dc29db18b864d2c011e28a771fe727423424f94`](./contracts/bsc-56/0x0dc29db18b864d2c011e28a771fe727423424f94/); bsc `0x3b0d06894d943f98ab0824e35b8297b898c70ed8`; bsc `0x3e3a0d18bc9bb60ea70eaa233314f06dd0f13e41`; bsc `0x454bf0a6d31775401545899ecf097bab83ff6c15`; bsc `0x4b73b8b4792ef4c7d8aaf6e761ed6a90f1a24d28`; bsc `0x4e60fa591802da0c3b1fe45c082e18aa2ef08a0e`; bsc `0x5754e2d4c7bcc42f9ff8142f05797e059168a5af`; bsc `0x59d166fd13f4c8d46a21e6b59665ebe5daf5a04a`; bsc `0x600f4ef1c0e80194645a9618f96d7e514545ea71`; bsc `0x94f4ee8bf0213b9263d9ac8f0a8d7585fffc5e43`; bsc `0xa889ab392c7e0caa6b0742f535dcb732e61ef08b`; bsc `0xab4ac0954d1ed135ac5f69bd75a19a8f1a967140`; bsc `0xb5c72e370a8c668c5e7df48b5bb3f8f46bb76e5c`; bsc `0xe977b8803760b13029b1a3486df60e3d88eef403`; bsc `0xfb2b9edccc216eadea757f7881bb6d5f37f04d3f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x194fce12b3bd0ec19bd40316a130e7433175b0a3`](./contracts/bsc-56/0x194fce12b3bd0ec19bd40316a130e7433175b0a3/); bsc `0xcc91df0cca83bb03bb9e0e068803e539b8d07865` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x1a63c7854cd65a26eb64a80c02141c51c2644a2d`](./contracts/bsc-56/0x1a63c7854cd65a26eb64a80c02141c51c2644a2d/); bsc `0xae1b3a680a22af54cc164b31f626db4a2a7b1f9b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x1ad6badfc1f2091d7aa5ce9fe3399560feda09d1`](./contracts/bsc-56/0x1ad6badfc1f2091d7aa5ce9fe3399560feda09d1/); bsc `0x360d88bdee6ddd34c1ad79e9f21ef15751e41494` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x1e73917bd53921c93a8958a3b7172b474838146b`](./contracts/bsc-56/0x1e73917bd53921c93a8958a3b7172b474838146b/); bsc `0xf661cf49f8bf38cbab6e0f1894275a451e4acbc1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x284b033ac0958c623a6e41e3338163d7daa273d7`](./contracts/bsc-56/0x284b033ac0958c623a6e41e3338163d7daa273d7/); bsc `0x5ced0d1634ede25f1a1c5f53bd6f02d89c54f6a1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x467440a9552b46dcc27477eace2e39a6f7f06d1f`](./contracts/bsc-56/0x467440a9552b46dcc27477eace2e39a6f7f06d1f/); bsc `0x5e8ce9c38c516b694d721e77416f0c8a3303375e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x46a6112b370f7fad65181f756a7d3ee612271fe8`](./contracts/bsc-56/0x46a6112b370f7fad65181f756a7d3ee612271fe8/); bsc `0xe203ba0e322418e06ba8e5dd73feb21e2d9b035b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x48a6f878ca955de85de5e6193e87a7aba39efae6`](./contracts/bsc-56/0x48a6f878ca955de85de5e6193e87a7aba39efae6/); bsc `0x57429cecf46725bad7126bbc98f0771a06975672` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x53aaeb637dbe20d6f1539ff6936afebe59ce2659`](./contracts/bsc-56/0x53aaeb637dbe20d6f1539ff6936afebe59ce2659/); bsc `0xf8e0ec8510da1bd457c1bca9720623a7b2da8e4b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x540ac962466d386ae39eb3ba28a43a5e038c3414`](./contracts/bsc-56/0x540ac962466d386ae39eb3ba28a43a5e038c3414/); bsc `0x86d3a8039a62c0f3471562b9c92d8d6800596ffd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x6a1905b97481a86c2f0146f95b66e0a5c3f01c2f`](./contracts/bsc-56/0x6a1905b97481a86c2f0146f95b66e0a5c3f01c2f/); bsc `0x9c2b70d0ed72e4de6b9f2a9469931cdba1a90820` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x6d722caf519c4699c91584214c364ab26357afe0`](./contracts/bsc-56/0x6d722caf519c4699c91584214c364ab26357afe0/); bsc `0xbbb2f115d9db87f06bf269fe419e1f43e0fe8a72` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x99ce0efaf271cc350def61b7c95d0c959543fb96`](./contracts/bsc-56/0x99ce0efaf271cc350def61b7c95d0c959543fb96/); bsc `0xa4c495dabf9c60f26f5e6d3d5c0912f031f4a328` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xa7736a9840191467fb965571887bed1dd4f5eb91`](./contracts/bsc-56/0xa7736a9840191467fb965571887bed1dd4f5eb91/); bsc `0xfdde74c51a0d8c2a9e992e897466f5686c67e6cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0xe6600df7da38ddfcc901a91b9bdd7daf9f46ce94`](./contracts/bsc-56/0xe6600df7da38ddfcc901a91b9bdd7daf9f46ce94/); bsc `0xeb3a7f1472a1ba8e2f2f4534c65f44df4a712fa5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (216)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0027f33570c3d18ed854827ac72e65e19d2013b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01a78c2df4fd92ace4687f7e73d85d0b05708108` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01cd0f599f5273fdd05831bab0c56f3f952d8cd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01e413da88093183c870f3dce52629470c89e0c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x031c4700d42f9413dea43bbd264337b9c7d59674` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x037bea4be9534c740d4105af82de8684cbb476f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04c960a3d10a6910beba20029e344d9454862cc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x060a1ef8864a2b4d37ff751542834cc097a97516` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0617b04a83f21a9e30bcf1a3be0e3777253de200` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06b619a9be1d87a620bfa39d51e3408f87a3d5f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08f51c974b2d8cac2b3cfd6a12353b1a228fea2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x096cafba10646926162ff0c692f848e24546a9c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a8ab37302a22aeed4c809707d1ad79fe552be5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b1420e88283a84e043fba75c505c05c54a5ab3e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b5378944f1380eeda9e2af4c4b0afbde8cd3c9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0bc3dafce569b70b49554c48d8c8ac3d3382b537` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d8be2775b9ec54fb463f47c261073f3e1bdcc5d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f51cdbe5b7545897b879161bc4c615f18c196af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f5db7432e53e58a82f724d6c26348baa01d7316` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x104971fd99b48b5920e5c1e4267e9451fa3c7532` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1124253ff6d1f60d05c5ed6f3020d66304ba1071` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19b41bc8a043eec596e9ea170c223cbce544e88e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a2c1cf02f689d72193c16fba07d2220df8aec27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b5a5233640c1e717067f144309c8b0b060fb58f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1baea22c7621b915310277ae9df50023d74594b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d03cf3d33d0514c9abf2fdb1bb70e2e309dfd35` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d3d9e2a5eb6d44a882f8a0ad2080ec0ef834bac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d83008a24d4fa9d9ee4bfda779ceff68e9c71c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21a0a0c79945d2c9fe32dac3aea9723f1400a914` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x230c228d573a5f11aa3be885d17d93e339702498` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23115aa633d93987eeffc1352eb0b4fbb97f02ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25ff3715d56e0c367c9a04ccb86e192f0054d5b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26b526763a21d0e0084eee5c049954cf9151db25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26bd35f31cad7021f68b7f55db5e7d86a3802c73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2710c2dbddc12d7b7b595f933a3afa3ba8a9a91f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x284eb43ae828eced87353642edbd0150771cf418` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28d0c60a1fae02ca0cfc0087364893c94510826f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29d6cb05937ecae31bc22439a1f4dad25b160e4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b109bceef1649f8015a123f5c56a8e93d89ddb3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ce2129f16027afa19e74d5053d245171ea7869c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fa0a599d81ab47e8749803a9c54d6cbaebb893b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30f878a8791e0db49be20e0f9dd090bedddbe67e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x34e4aca993587637729c42b5b823824a0f538495` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x34f09be0448139e3956b5c25611fd134623e9ac7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3612e75a3ec70e86170b027993043396593fab3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x370133df115a6e2ba714c467e47da58447e9ca19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37217b65e4bdb108d926a5bbd38287d699791a4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38992f86096698db4f8f2f3f843872b1d5ab6948` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38a760b282d5aedebb0691f9ac3dbac411271488` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38c2cdf115bdfbbfb4230f84bac95a958b88c62b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a158f1746b19567291549e37536091179d28dad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e3790302a8118d51faa8d5a1da9cff3d497b614` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3fb18b2cca67ee3636af3b5ee4d7548141880495` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42fd3e8e189d3c641cbc21886a143d56c0328d89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x459807179e0ee4fe1cc81049f4649a3be1bb0ec7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46da5445268adb525966b91a6b6df2c3426f16a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4839ff83828d6227aa3eb98880ba78c99f164178` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x497b4d2955e135fe5a51a12c11386e194397d686` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b0006786e77f0aa426802ad83c787a41c250939` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4cc0f02f3f715906ec8a9501d5d59748cec7cfe3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4cd2edb387c12e5e69c080b1147e7f137a339c93` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4cda515af4ff2942f25c0d5ebb0c85d2be97ae43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ff558f8fec59961c5d791fead7e406d061cbe18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50568a676063d5703615605a78bcd934e82082bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55a724a440a8354c3d1cae0de1e46fab5c38a367` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x564b527104be588a89e4756343fcecfcb896aceb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x565237bfac15646a8125c8d5c3f1f6e8a16fd1a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x568178a8529bb5ff7b9ad447907343745f4ba288` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5810d052c45223109ad5e96679beec05810c35c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x588acf8306facba964a0f5970439bc122ef68141` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58bcaeb9d0e0a6d044cfbd07efb75c489d9a8015` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c771a965ade68249eac333439f701305d8e2933` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ea7ecfcc5ee5b02bfa050e0efca623784f09858` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6020554c62a3e9e1f6a2ed7ebe1f7a6324af7fd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62fe8fdf44c4a5e3b5b1e39da81375c141a2d383` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6665d6ea7e1cf8322293a417e606dce2b52bebeb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x669b37e2dcf732bcf331f7668546466670bce6b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66e70eae5a736756ba20a60c24b1e03984d6c422` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x699dc9d899d084af2426ce7debc9a9cfd20b2e79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6afdba6c36d502e3100086290db5680247d8a4d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b263359e6f010372a3cb094091de5ef58f23cd0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f8c138b5b5ced6e1588fa194bbca56e0592f348` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x701517dad4e66463c006b500bce72d08e17c12c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70d25628ebfb239eb2cbbe1ff3f9dfce364a816c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x720b43b0bb91e0a26ad7d319d829d72bab162da0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73955e5cc746e9c8477bb05e3b0d3b7b77a46275` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x75792266691b79272972b2c75b04ba8356bad58e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x789ae9ecb12f43ad7ec9afcc45ab034bbec58f8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79318bf8ae04b6e26a623f52a773171d3f9e45d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b639ff0043d6796ba79a8154f6c7dfbc5f8e7b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7cfbfd235c281da29ea9de853fa329d6ff33229a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x815a06fb63169597bb73eab65f296596bc04c8ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84164365df91457195a17a46570626e44cf9b419` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84297a930359af5a3bf75212985951bb7f15507a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x85cf8dd4f7ff240094db8b8c38ca91185a195bae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86ce5c76d1894f3490a61c79f74e152ae754ba49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86fde592ebf01a467ef7922c5f607c8d26631058` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x875468e7c565f97e1f316e7d40fd71aee1e9b1e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87704fba7dadf9f0dacc024d5c0a4a1f65392d1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88023aeeca74fa2593ae4d3b858f650ffc6f083f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x88a5c12b14ec3bd4f473f98477055e76b4773645` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89bbef8461e4ad7c00550e847418edb04633c150` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a72fc5c5c4eb166e97c178708f15715ccaabefa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c56bc2fcfb54d47917b2ea69b63fac160e7dabd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e46d75573b0ef897d9bd96bf69507a7c215fac0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x908f1668525181de0f3b3b9d8c6f10fe6d41990c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9092b885083131b49508f8b0bfdaaa8e3acf015e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9093221f8866ff73011a65d8637cd7d276d6c3d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91cc3cb70f9d68807d8c241891e742aa74f87099` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91f62c68d99c90ef09b308bd30c4de740e751dc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9390ce67972c8c6faba9e56d1238ed3c290c9817` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9398f1a15703956ede96a3dc55208b5599b70e3b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94c920aea8babad9faa51891cb9513c6e29eb338` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x955dfae4024cfa5b81b90abdf8e2b09de23b7ec0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9731484f5443562d5650c69bfb5a54f2c3e13255` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99db96171ddb5eba11d805473c122bf1af8c03bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9cefe0baa9ee8598902a459b6c56a4c9756ca0c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d74393ad67870a7ef6ed37e4429a0ee070daa98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ddcb94932f46a8784deab56ce5a6e05e9131c59` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ecabddaf6081cffeda1dd093643bdd53fd3960a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ef57ad661c1f6e7a12e79106fff693dcf94ade7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2e98f80605b38093ccdb66a8852ed1d06821ede` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3023086d75afdb60644ba2f9f0444b1cb76adb5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3edd90f46e35a24db70d7d321c56f18a5c50af2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa585e198df2a91c1e87b2220e5c085fe217a3952` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa68f26e5581a1d5a8c4fbc5c47df7767976fa05c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa8b6d3ba4974a08759013fd59c16cbab8bb41993` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa8fdfd8dc2ed1f22a59d8108de0a09d39532f561` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9917cf68cc262c658e998303fc6a5825c7c2af3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab104d0ef1f25e09af4775f954b07d01bda999c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabb44113df70ed194d611b271d78ae3d95ae9af2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac7c29b457ab6038c57fce0170b182424c176310` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad3f75d09d263e4d2c911736bafd2bfb79c996ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaddee40bc7c3aa0bbbd3a5d436f2f208782c2b8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf6f1623c9b2885d6ad719a9f212c4f8cbdf9e57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xafc332eea74de64ccf6e36b01a0d509221b13cba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb19e400e8f8cc15322f73b1b26607bcc43bad714` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2fef516b25506dc47a0a1d083b29fd79625a91c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb5d698495bff232f7cb3a33f32b3db33048be88f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb6f240f5c057161f6b960930385c1886c7ef343a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb709e2cc6a2f84da4c88b3d6bc91bd7440937943` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb86a2e07175777a953a2be8d9151a1718c284594` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8bcc428730ad8921e73087652e97651d202271f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb921cbce1d0c5a898958a4c3ce9a4f44732c82c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbaa5555c99a20d76a10c332bb1a1c180729fbde2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb3006d69e0c7d0fffb6df7a68d4b2cc07bf73d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbcfc485b8ec6899df520f6865cd5aa4f25b9510d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd40ed7f7ef5ad9c3a222a4af64e7e089032a85c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbf729e245101a67cae7240cce30417eb6baa8725` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbf79f567b4ed4e63acd4d3bb24cc74880586b9e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfbab2ac9e3b343a23ad26678fd8bb368f9e4c37` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3dbf95f4b13a56368ed3fd22d5a55791b1e9e61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4b0f1b52e570b50b37fc7d3697e1c2b7dff457e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4ce07d2c6499cbb21460e3012092173d55b8624` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc575b9db3ab0ad4bb7696e296e739ae47593aecb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5f9ea0df6cd227cdc5be3375ae8da7f71677d28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6e2892b83225e793624f7563199e9f1aedccf81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6e510a80d6a65b388549813131848c279d8e878` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc708b0c516da01cfdd8fbac38c21496627a85ca8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7c1e3937502511f9f8c7eaebecfd5a492c56fd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8e732533c597806da9ba98717d96a09cda715d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc92196d8dcf0db35dc04688ed5605584022c2e45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9c8b661dafeaeb9f201320654540e1bff6d0465` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcbb93eb51f9c39d8abb15f6c780b0bc2c8262e05` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcbc29835e2a4284a81c565f2ca073f36c40b1316` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc562448e77080d40d6fe5ea9793d1cb47df695c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd4a8818ce48be5b1fce4f6b42cb857e42a52c23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd511ff2ae26e811a0d15e06cb273ff83e30c14b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcead2abd6265c3918ae382d5b81ec00b06cf1788` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1035c39a42e901f4c5aaa34f277a395a628d74e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3698cd13ef487d59e56d1f06bcfcaaddee559f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3f45267f1f94b471caa09f9e8b1695a921af64b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd613c507e43c76a3f28ce85dc6dab81878b15d0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6622b1353bc49d3cd5cae19c1e9dddf4b1ac88a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7e185c8ebfd7340da4b9aff663111f34709ec0d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd8c97a912463b75911f20b4d9421d2d99a61c84d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc7ce565b7f9221287959cefa3adbcedfc0a7384` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdcaeae93c93f99eed4e0a57d50471f52fa404faa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd8e7892efe5b426016fe02c351db0eb65ed7d1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe02b890aa559e3d5f0aa478fcbfc63d0a0f261e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe04a5849396cf78c7dd600c87bd02721941b6f67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe0dc50bc15d3f8a9766da286558f1519a250274c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3be84ead3049e02cadea516bdf499dc6ad4f2f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4e2dcd23bad8f4d26dd6c7027cd592ee0876147` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5cf858001cb48c7004d83e5c84b6ca7f209a70c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe70a5f28ba684ded7652ec9d73534a6ab5ade98f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe80d6820c79aaefd09c0eca9fc20fdeda0e55225` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8a6c9c3c94d504bc0dc6b9310d867e7581f5f62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8fb300c9cbc20fd43edf291aebc4985892ee14f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9112251b48a4aca2fe2cd4e74d627c6e526b6ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe96274c571d504657e75fa6431950bc83b1b9448` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea4c24536a22d07ed1c33505d9c085876b1e22a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xecc4fa613d606b2d10fd509d432ff8ab9c9e8958` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed485682e00dd528bd8d699b0159253f4e496b45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed88bf95a72159f3ada982eda101c194be424514` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed96afa0fa709e12033317d05948fd1cddcec060` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee46ea8e720dfc51580f343faebd60489fb1ff74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee79546f6c10a71e1378c5c0adcbf2c6e6664fd7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee8c6fabfbc3c7ab5bbd9607a8c699878812c0cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef0670e876fb18be184a38fa91af0d088299e5e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0cf4211fe1779778c1bcdf3c1d2bd014c919b2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf181815524682b3cbf36ee5189aaf16be722da75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf2576c6ec925d159e78c759d0bffa3ff213083ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3977d362067f505a844fd922e8a0ceb2d4ff8b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf44e920fa127d2cd0c95eb3d8563cd5ab5c249a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf55a04eac24283063b6c2b81a4ae01bbac49cc4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf5c3fe57102113235cb3fa3660ee2b636e344ca7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf672a8f6f08f88e8f93a39d96b1a2fd376014e94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf679c5d81a432b0628543dba85a4fdc5e196b156` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf84e2e3ea777c0d6786acb1f2be26aba5eaba878` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa41089534838d454259e2ccd823cb3aa436e3f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa57812aec8ddb32bd45e0487e1747dc76802038` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc6b3492eaf1f849f790b5385b302cc00a3f5fa7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe2697e69b4930d173abf5e61f75bd39589caf5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff9c9d8d903676a72a3fb23132dbfd0d3400251d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 2 deployments: fantom `0x2274fb44b7ebbb49e764b28b0a31f5ed2ef1833b`; fantom `0x2e34168bf6532523ad01a73394ce7fb634898f26` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hacken.io/audits/minimax-finance/sca-minimax-finance-bep20-staking-vesting-feb2022](https://hacken.io/audits/minimax-finance/sca-minimax-finance-bep20-staking-vesting-feb2022) | Hacken | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x228fef9ed32ca3aa5c99639ee42c23d6807837ed`](./contracts/bsc-56/0x228fef9ed32ca3aa5c99639ee42c23d6807837ed/) | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc9d8648a39addcf02f3f73b4cc7fa273e97563f9`](./contracts/bsc-56/0xc9d8648a39addcf02f3f73b4cc7fa273e97563f9/) | Migrations | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x50e4ede716d977c53836a688851998c773e3c83c`](./contracts/bsc-56/0x50e4ede716d977c53836a688851998c773e3c83c/) | MinimaxAdvanced | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x529476965f5de94d59139232c6537bc5210c8543`](./contracts/bsc-56/0x529476965f5de94d59139232c6537bc5210c8543/) | MinimaxBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01db71fb8d8bb666d76e584fbf253b09db808c7a`](./contracts/bsc-56/0x01db71fb8d8bb666d76e584fbf253b09db808c7a/) | MinimaxMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3047346280247cc3314c66fd5e400877f62b8bf6`](./contracts/bsc-56/0x3047346280247cc3314c66fd5e400877f62b8bf6/) | MinimaxMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xab221cfd18470bca955a13b8d8df8a371a514be9`](./contracts/bsc-56/0xab221cfd18470bca955a13b8d8df8a371a514be9/) | PairTokenDetector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x202c0ff74b1666b79d68d689c6e0a8cdbccce45e`](./contracts/bsc-56/0x202c0ff74b1666b79d68d689c6e0a8cdbccce45e/) | PositionBalanceLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6aff4762317661633268e35ce59d883ab7f32bf5`](./contracts/bsc-56/0x6aff4762317661633268e35ce59d883ab7f32bf5/) | PositionExchangeLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4648d23395bfa19dc681ac7506e99e2f0dabe3c9`](./contracts/bsc-56/0x4648d23395bfa19dc681ac7506e99e2f0dabe3c9/) | PositionLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7e5c1998651181e3306b76faa0223512b16da357`](./contracts/bsc-56/0x7e5c1998651181e3306b76faa0223512b16da357/) | ProxyCallerApi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8b0f5f4d92afc0a9ecad1c92b3fd8ba84dc23a78`](./contracts/bsc-56/0x8b0f5f4d92afc0a9ecad1c92b3fd8ba84dc23a78/) | SingleMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 226 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13496] hacken.io/audits/minimax-finance/sca-minimax-finance-bep20-staking-vesting-feb2022

Fork inheritance lineage and inherited audits are included when available.
