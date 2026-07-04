# Agentic Audit Brief: SwapX

## Project Overview

- Project: SwapX (`swapx`)
- Website: [https://swapx.fi/](https://swapx.fi/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:57.357Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: sonic
- Contract surface: 37 unique implementations (63 raw deployments)
- DeFi Llama TVL: $420,582.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 24 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 3 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Contracts are linked by 9 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 96; live-surface contracts included: 55 (55 live, 0 unknown).
- Excluded by liveness: 41 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 14/37 (37.8%)
- Deployed-live implementations: 37 of 37 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 14/37
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 37
- Raw deployments: 63
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 12 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 14 | 37.8% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BribeFactoryV3 | unknown | sonic | n/a | 2 deployments: sonic [`0x1fb164...85b6b3`](./contracts/sonic-146/0x1fb16400652f999b79f62c3a4cea3ebc7185b6b3/); sonic `0xdaea57...629bb0` | ✅ Audited |
| BribeFactoryV3 | unknown | sonic | n/a | 2 deployments: sonic [`0x99a257...55e095`](./contracts/sonic-146/0x99a2576c20f3e764fa0250ac3da029cbbe55e095/); sonic `0xb5659d...5a0382` | ✅ Audited |
| GaugeFactoryV2 | unknown | sonic | n/a | 2 deployments: sonic [`0x50ead8...875458`](./contracts/sonic-146/0x50ead88c9f4fa95bda7b21310f26c96402875458/); sonic `0x6a36b9...7c68da` | ✅ Audited |
| GaugeFactoryV2 | unknown | sonic | n/a | 2 deployments: sonic [`0xa1462d...ef819c`](./contracts/sonic-146/0xa1462dbfb0198ef054454a2e9b5757392cef819c/); sonic `0xff2e7c...85b8f3` | ✅ Audited |
| GaugeFactoryV2_CL | unknown | sonic | n/a | 2 deployments: sonic [`0x0326bc...69b120`](./contracts/sonic-146/0x0326bc059cbeeed569f285fdeb7365ff6369b120/); sonic `0x4293d5...d1add7` | ✅ Audited |
| GaugeFactoryV2_CL | unknown | sonic | n/a | 2 deployments: sonic [`0x27e774...cae300`](./contracts/sonic-146/0x27e774110e4dd1f3a249bfce40d1f6bda4cae300/); sonic `0x41c1ef...b33922` | ✅ Audited |
| MasterChef | unknown | sonic | n/a | [`0x66f28a...5eacb1`](./contracts/sonic-146/0x66f28a0d830e9be7c2bb2c626d9cdf528a5eacb1/) | ✅ Audited |
| MinterUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x4fe93c...f80589`](./contracts/sonic-146/0x4fe93ced1a0a96bd559ba4572c9da8d76ef80589/); sonic `0x8b8c58...c83364` | ✅ Audited |
| MinterUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x6991a1...3d859c`](./contracts/sonic-146/0x6991a1615e76ba15e8ad04848a1e1c89d23d859c/); sonic `0xc68f07...e0afbe` | ✅ Audited |
| MonolithicVoter | unknown | sonic | n/a | 2 deployments: sonic [`0x75b07f...520937`](./contracts/sonic-146/0x75b07f81dd25d408ff2ab0b5ebe44182fd520937/); sonic `0xf3bb60...b20b4d` | ✅ Audited |
| Royalties | unknown | sonic | n/a | [`0x7ab97f...a8b43b`](./contracts/sonic-146/0x7ab97fca4ec80c41106881f56a3a3fe3e9a8b43b/) | ✅ Audited |
| VoterV3 | unknown | sonic | n/a | 2 deployments: sonic [`0x40247b...d5bf3f`](./contracts/sonic-146/0x40247ba1012404134958da41b6bd93be1cd5bf3f/); sonic `0x53ff76...5d098f` | ✅ Audited |
| VoterV3 | unknown | sonic | n/a | [`0x838505...00a26d`](./contracts/sonic-146/0x8385056229f18bc54487f3ca37f968131a00a26d/) | ✅ Audited |
| VotingEscrow | unknown | sonic | n/a | 2 deployments: sonic [`0x3dc1dd...2ca12e`](./contracts/sonic-146/0x3dc1dd69b7f4ac386f94f30de69994b5622ca12e/); sonic `0xff5b46...f1b2ef` | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ClaimFeesMulticall | periphery | sonic | n/a | [`0xdb3e03...00b1a9`](./contracts/sonic-146/0xdb3e0332fa9361ac80bda96222d9580a5c00b1a9/) | ⚠️ Unaudited |
| MerkleTree | operational_periphery | sonic | n/a | [`0xe4b7bb...b55f60`](./contracts/sonic-146/0xe4b7bb7e4f7b27f2c1def2c8055b9988ddb55f60/) | ⚠️ Unaudited |
| NFTSalesSplitter | unknown | sonic | n/a | 2 deployments: sonic [`0x55e342...2e1532`](./contracts/sonic-146/0x55e3427906795d833ac6810486e977dca72e1532/); sonic `0xda1073...4b5a4d` | ⚠️ Unaudited |
| NFTSalesSplitter_V1 | unknown | sonic | n/a | [`0x86fa3c...1345c0`](./contracts/sonic-146/0x86fa3c42928927364d3ac5a79989f3056b1345c0/) | ⚠️ Unaudited |
| PairAPI | unknown | sonic | n/a | 2 deployments: sonic [`0x2ec58a...31c4ff`](./contracts/sonic-146/0x2ec58a0caae0e8c27e28833ede5ab7415c31c4ff/); sonic `0x422601...a46a7b` | ⚠️ Unaudited |
| PairAPI | unknown | sonic | n/a | 2 deployments: sonic [`0x33a353...d21f84`](./contracts/sonic-146/0x33a3539cf9ba96884acbbffe735bccb88ad21f84/); sonic `0xa8bcba...e81e61` | ⚠️ Unaudited |
| PairFactoryUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x05c1be...7f5663`](./contracts/sonic-146/0x05c1be79d3ac21cc4b727eed58c9b2ff757f5663/); sonic `0xd887a7...502251` | ⚠️ Unaudited |
| PairFactoryUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x1e58fe...2b858f`](./contracts/sonic-146/0x1e58feab693e488dc370cf86b38d5625d22b858f/); sonic `0xeaed11...ff3828` | ⚠️ Unaudited |
| ProxyAdmin | unknown | sonic | n/a | 3 deployments: sonic [`0xb8de83...4e122f`](./contracts/sonic-146/0xb8de8352dcc13a1145d29bb80533a8979e4e122f/); sonic `0xbc427b...389feb`; sonic `0xed37cb...7241c7` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | sonic | n/a | [`0x1c236d...4c94d3`](./contracts/sonic-146/0x1c236d74f61c6199e6d23201d53a59753f4c94d3/) | ⚠️ Unaudited |
| RouterV2 | adapter | sonic | n/a | [`0xf5f723...b29c27`](./contracts/sonic-146/0xf5f7231073b3b41c04ba655e1a7438b1a7b29c27/) | ⚠️ Unaudited |
| SWPx | unknown | sonic | n/a | [`0xa04bc7...fb0e70`](./contracts/sonic-146/0xa04bc7140c26fc9bb1f36b1a604c7a5a88fb0e70/) | ⚠️ Unaudited |
| SWPxNFT | token | sonic | n/a | [`0xc83f36...e72f78`](./contracts/sonic-146/0xc83f364827b9f0d7b27a9c48b2419e4a14e72f78/) | ⚠️ Unaudited |
| VeArtProxyUpgradeableV1_1 | unknown | sonic | n/a | [`0xa194e7...a43846`](./contracts/sonic-146/0xa194e79ffe35a07d640d2595b8f3e0d788a43846/) | ⚠️ Unaudited |
| VeArtProxyUpgradeableV1_1 | unknown | sonic | n/a | [`0xf62fed...c896fd`](./contracts/sonic-146/0xf62fedd845443ae86d2ffd1fa4c5486938c896fd/) | ⚠️ Unaudited |
| veNFTAPI | unknown | sonic | n/a | 2 deployments: sonic [`0x94584d...fb3d05`](./contracts/sonic-146/0x94584d370edf0f9a913c8cdcf88153deb6fb3d05/); sonic `0xae5417...7c6cb3` | ⚠️ Unaudited |
| veNFTAPI | unknown | sonic | n/a | [`0xe76c57...b6bec7`](./contracts/sonic-146/0xe76c57f200e7057e340da1c28fdc27e180b6bec7/) | ⚠️ Unaudited |
| Vesting | unknown | sonic | n/a | [`0x082c47...7f4069`](./contracts/sonic-146/0x082c47f07a879a1b3680f2295fce12f41d7f4069/) | ⚠️ Unaudited |
| Vesting | unknown | sonic | n/a | 4 deployments: sonic [`0x1786fb...572cfd`](./contracts/sonic-146/0x1786fb5eea6a815007f40ec1aecf0d4fe4572cfd/); sonic `0x3a4744...44ee85`; sonic `0x91cc71...21460b`; sonic `0x972e71...f258ec` | ⚠️ Unaudited |
| Vesting | unknown | sonic | n/a | 5 deployments: sonic [`0x58af3e...e38084`](./contracts/sonic-146/0x58af3e6fdf9f8a607b54d492757cc43777e38084/); sonic `0x8aa601...22da64`; sonic `0x90ff9c...0022ac`; sonic `0xd76c85...fdd7f3`; sonic `0xdf5390...fe0591` | ⚠️ Unaudited |
| VoterV3_1 | unknown | sonic | n/a | [`0xc1ae27...c407f2`](./contracts/sonic-146/0xc1ae2779903cfb84cb9dee5c03eceac32dc407f2/) | ⚠️ Unaudited |
| VotingEscrowV1_1 | unknown | sonic | n/a | [`0x329d9c...83e397`](./contracts/sonic-146/0x329d9ca4fad82d10f128050535c138d3bd83e397/) | ⚠️ Unaudited |
| VotingEscrowV1_1 | operational_periphery | sonic | n/a | [`0xaa30f0...576ca3`](./contracts/sonic-146/0xaa30f0977620d4d46b3bb3cf0794fe645d576ca3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Bailsec_SwapX_Exchange_Final_Report.pdf](https://swapx.fi/Bailsec_SwapX_Exchange_Final_Report.pdf) | unknown | Audit | 2024-05 | stale | Direct | contract_name | 23 | high |
| [Bailsec_Algebra_Finance_SwapX_Fee_Plugin_Final_Report.pdf](https://swapx.fi/Bailsec_Algebra_Finance_SwapX_Fee_Plugin_Final_Report.pdf) | unknown | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf](https://swapx.fi/Bailsec_SwapX_Staking_Airdrop_Vesting_Final_Report.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 2 | n/a |
| [bailsec.io](https://bailsec.io/) | BailSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 37 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=2, extraction_exact=23

Zero-match audit list:

- [13954] Bailsec_Algebra_Finance_SwapX_Fee_Plugin_Final_Report.pdf
- [13956] bailsec.io

Fork inheritance lineage and inherited audits are included when available.
