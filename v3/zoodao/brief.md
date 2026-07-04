# Agentic Audit Brief: ZooDAO

## Project Overview

- Project: ZooDAO (`zoodao`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:18.151Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-c970
- Chains: moonbeam
- Contract surface: 50 unique implementations (115 raw deployments)
- DeFi Llama TVL: $8,998.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 52 project-authored contract(s) across 1 chain(s); 13 ERC20 tokens, 3 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 30 common project-authored base contract(s) (comptrollervxstorage, unitrolleradminstorage, comptrollerinterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 161; live-surface contracts included: 109 (103 live, 6 unknown).
- Excluded by liveness: 52 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/48 (0.0%)
- Deployed-live implementations: 48 of 50 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/48
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 50
- Raw deployments: 115
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bridge | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0xabf9f3...67ccd0`](./contracts/moonbeam-1284/0xabf9f36e3b03ba7b8d0df5a1292b69a48c67ccd0/); moonbeam `0xee2ebe...e7b45e` | ⚠️ Unaudited |
| Comptroller | unknown | moonbeam | n/a | 5 deployments: moonbeam [`0x028b17...927b1d`](./contracts/moonbeam-1284/0x028b17855d3d8a1a73bf889ac0e48ebe44927b1d/); moonbeam `0x08cdbe...7b43cd`; moonbeam `0x29c66a...c70ab6`; moonbeam `0xa962f2...2aef16`; moonbeam `0xd4d8de...61f96c` | ⚠️ Unaudited |
| Comptroller | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x8032fc...c39997`](./contracts/moonbeam-1284/0x8032fc5efee8c053e2ca9871d8a5ce224bc39997/); moonbeam `0x8e00d5...86a180` | ⚠️ Unaudited |
| Comptroller | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0xb75e71...839e8f`](./contracts/moonbeam-1284/0xb75e71d5a3de5b157abaab8b8ea97daf7f839e8f/); moonbeam `0xbb3b1a...b83f9d` | ⚠️ Unaudited |
| ComptrollerRewardViewer | unknown | moonbeam | n/a | [`0xf2a970...1b1620`](./contracts/moonbeam-1284/0xf2a9706b18534cc777a4c31d84a3c346fb1b1620/) | ⚠️ Unaudited |
| EcosystemReserve | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x7793e0...167ba4`](./contracts/moonbeam-1284/0x7793e08eb4525309c46c9ba394ce33361a167ba4/); moonbeam `0x8dfbb2...a30ce2` | ⚠️ Unaudited |
| JumpRateModel | operational_periphery | moonbeam | n/a | [`0x0b5f12...c6acf5`](./contracts/moonbeam-1284/0x0b5f126fa3116dbb769f6b8404d1a78c54c6acf5/) | ⚠️ Unaudited |
| Math | unknown | moonbeam | n/a | 3 deployments: moonbeam [`0x405e3c...41bb3a`](./contracts/moonbeam-1284/0x405e3c3b71789af23e3ebac44f0a2af01941bb3a/); moonbeam `0x7befee...996e1a`; moonbeam `0x8abfd2...adc05e` | ⚠️ Unaudited |
| Maximillion | unknown | moonbeam | n/a | 4 deployments: moonbeam [`0x35f59b...e86869`](./contracts/moonbeam-1284/0x35f59bb88e6e3ee861ddaef22e443cdf99e86869/); moonbeam `0x9fc345...f01847`; moonbeam `0xe5ef93...a380c3`; moonbeam `0xf5e4b6...21f12a` | ⚠️ Unaudited |
| MErc20Delegate | unknown | moonbeam | n/a | 3 deployments: moonbeam [`0x948ccf...9f8ad9`](./contracts/moonbeam-1284/0x948ccfff51f894dba5c250aa2844d58e169f8ad9/); moonbeam `0xaaa20c...74a9ce`; moonbeam `0xb6c94b...f9aeac` | ⚠️ Unaudited |
| MErc20DelegateFixer | token | moonbeam | n/a | 2 deployments: moonbeam [`0x1c5564...cf484c`](./contracts/moonbeam-1284/0x1c55649f73cda2f72cef3dd6c5ca3d49efcf484c/); moonbeam `0xd22da9...8211c3` | ⚠️ Unaudited |
| MErc20DelegateMadFixer | token | moonbeam | n/a | 2 deployments: moonbeam [`0x02e908...e61334`](./contracts/moonbeam-1284/0x02e9081dfadd37a852f9a73c4d7d69e615e61334/); moonbeam `0x24a9d8...833d1d` | ⚠️ Unaudited |
| MGlimmer | unknown | moonbeam | n/a | 4 deployments: moonbeam [`0x091608...4c7955`](./contracts/moonbeam-1284/0x091608f4e4a15335145be0a279483c0f8e4c7955/); moonbeam `0x23d718...5145f2`; moonbeam `0x7b2fab...0c744e`; moonbeam `0xa3a538...38bf84` | ⚠️ Unaudited |
| Mirror | unknown | moonbeam | n/a | 5 deployments: moonbeam [`0x007f0b...7a058b`](./contracts/moonbeam-1284/0x007f0b9dd3308fdd28b0c9e938818723147a058b/); moonbeam `0x36a657...cec8a0`; moonbeam `0x4cb6c6...3af81e`; moonbeam `0x78abba...28a09f`; moonbeam `0xb89b5a...4e2560` | ⚠️ Unaudited |
| MoonwellViewsV1 | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x041b40...8d70c6`](./contracts/moonbeam-1284/0x041b40b14692725ed152135c1f3ec50e018d70c6/); moonbeam `0x0b3cbb...f416e8` | ⚠️ Unaudited |
| MoonwellViewsV1 | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x0ecf9d...59b21b`](./contracts/moonbeam-1284/0x0ecf9d86e52e77b91c5476a59174ca453159b21b/); moonbeam `0xabfcb6...8dd170` | ⚠️ Unaudited |
| MoonwellViewsV1 | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0xd02775...0e8e00`](./contracts/moonbeam-1284/0xd027757360228f12456d3a2422689b72060e8e00/); moonbeam `0xeb9c8f...dfb20c` | ⚠️ Unaudited |
| MoonwellViewsV1 | unknown | moonbeam | n/a | [`0xf5f2ae...ce5401`](./contracts/moonbeam-1284/0xf5f2ae75d762b7e2b42d53f48018436f52ce5401/) | ⚠️ Unaudited |
| MoonwellViewsV1Moonbeam | adapter | moonbeam | n/a | [`0x54ff1a...43310f`](./contracts/moonbeam-1284/0x54ff1a86ab91a8f85e89c65bef92f02e5343310f/) | ⚠️ Unaudited |
| MoonwellViewsV1Moonbeam | adapter | moonbeam | n/a | 2 deployments: moonbeam [`0xdec80b...5b21be`](./contracts/moonbeam-1284/0xdec80bb934397575594e91970b37baf65f5b21be/); moonbeam `0xe76c8b...c73994` | ⚠️ Unaudited |
| MultichainGovernor | governance | moonbeam | n/a | 4 deployments: moonbeam [`0x0ea816...4209ab`](./contracts/moonbeam-1284/0x0ea81678e4deb33aad9e214df76be3158b4209ab/); moonbeam `0x65299e...a707ab`; moonbeam `0x8769b7...d75838`; moonbeam `0xc9ac40...236b5d` | ⚠️ Unaudited |
| MultichainVoteCollectionMoonbeam | adapter | moonbeam | n/a | 2 deployments: moonbeam [`0xb8a798...2d40e5`](./contracts/moonbeam-1284/0xb8a798a50a7274a13449b7f2dd6df22faf2d40e5/); moonbeam `0xcb4413...0a0e15` | ⚠️ Unaudited |
| NFT | unknown | moonbeam | n/a | 3 deployments: moonbeam [`0x85f490...579659`](./contracts/moonbeam-1284/0x85f490b9795e075f97e7dfd1e51892683a579659/); moonbeam `0xc774f9...f78c1b`; moonbeam `0xcf374d...d6a1c2` | ⚠️ Unaudited |
| ProposalView | unknown | moonbeam | n/a | [`0xded4de...2d5c30`](./contracts/moonbeam-1284/0xded4ded0badacf87714c90405f8983efdf2d5c30/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | moonbeam | n/a | 7 deployments: moonbeam [`0x0c2b0f...b57b33`](./contracts/moonbeam-1284/0x0c2b0f1fcbcf3a27f19cd4afe564fe63f3b57b33/); moonbeam `0x2700d9...ea9ff6`; moonbeam `0x5b50c3...ac0955`; moonbeam `0x8649a5...d1a4a8`; moonbeam `0xa017a0...a497dd`; moonbeam `0xab9aad...386d4e`; moonbeam `0xb0ee65...1d9f5b` | ⚠️ Unaudited |
| RateLimitMidpointCommonLibrary | unknown | moonbeam | n/a | 3 deployments: moonbeam [`0x56ed99...103c4d`](./contracts/moonbeam-1284/0x56ed993b9883e39741c524a6eabe5f4625103c4d/); moonbeam `0xbae1c9...113e22`; moonbeam `0xc6cda5...8822da` | ⚠️ Unaudited |
| ReflectedNFT | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x00e1f2...d70293`](./contracts/moonbeam-1284/0x00e1f27df44664655d28de2afe05625db0d70293/); moonbeam `0x306559...075511` | ⚠️ Unaudited |
| StakedWellMoonbeam | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x8568a6...3cfab1`](./contracts/moonbeam-1284/0x8568a675384d761f36ec269d695d6ce4423cfab1/); moonbeam `0xbac3dd...771501` | ⚠️ Unaudited |
| TemporalGovernor | governance | moonbeam | n/a | 2 deployments: moonbeam [`0x1e336f...7fb563`](./contracts/moonbeam-1284/0x1e336faa789426ee30dccf975f582ac8bd7fb563/); moonbeam `0x908df7...ea4689` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x40626e...e847c6`](./contracts/moonbeam-1284/0x40626e2bacf0092da1d673554ce58efbb8e847c6/); moonbeam `0x734d44...daa159` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x77dae4...e8e71d`](./contracts/moonbeam-1284/0x77dae4ef9fedc494aeecf85b2165340cc7e8e71d/); moonbeam `0xa6eb41...2f0112` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0xab9d65...e03dfd`](./contracts/moonbeam-1284/0xab9d654a7ba685381fd244ad8383d8d8aae03dfd/); moonbeam `0xae2f92...7b647b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0xd74b3f...fa853d`](./contracts/moonbeam-1284/0xd74b3f02f24159830d23b184b57b7ad65dfa853d/); moonbeam `0xe32403...fad3a9` | ⚠️ Unaudited |
| Unitroller | unknown | moonbeam | n/a | 5 deployments: moonbeam [`0x32b198...f40392`](./contracts/moonbeam-1284/0x32b1985b6e50359f2470d244f8fc4c0d2cf40392/); moonbeam `0x70f607...baf1e3`; moonbeam `0xa81f7a...af3e12`; moonbeam `0xa9ce0a...b09dcc`; moonbeam `0xb8790a...4f1acb` | ⚠️ Unaudited |
| VotingPowerAggregator | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x02bce0...055c22`](./contracts/moonbeam-1284/0x02bce061c68976e2a63ebde959cf9f9044055c22/); moonbeam `0x4da587...8ca986` | ⚠️ Unaudited |
| Well | unknown | moonbeam | n/a | [`0x511ab5...2411e3`](./contracts/moonbeam-1284/0x511ab53f793683763e5a8829738301368a2411e3/) | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | moonbeam | n/a | 2 deployments: moonbeam [`0x48e70f...8c6412`](./contracts/moonbeam-1284/0x48e70f68712bd275982e8351dfe1993a828c6412/); moonbeam `0xef68c8...20ce6b` | ⚠️ Unaudited |
| WormholeBridgeAdapter | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x8318f3...b37e84`](./contracts/moonbeam-1284/0x8318f3c525fdac18993b9fe5dd823c4743b37e84/); moonbeam `0xe5f562...98de2c` | ⚠️ Unaudited |
| WormholeBridgeAdapter | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0xa8458d...bcc2b6`](./contracts/moonbeam-1284/0xa8458d9a119c74195c51650adf0d22853dbcc2b6/); moonbeam `0xf9ebc3...670872` | ⚠️ Unaudited |
| WormholeUnwrapperAdapter | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x11dba1...77ebcf`](./contracts/moonbeam-1284/0x11dba16fb4cc80d80f371825137a6d3e2f77ebcf/); moonbeam `0x734abb...a6dbb7` | ⚠️ Unaudited |
| WormholeUnwrapperAdapter | adapter | moonbeam | n/a | [`0x24af32...299c58`](./contracts/moonbeam-1284/0x24af32b0c4c94f0d406fbc3c8815666356299c58/) | ⚠️ Unaudited |
| XERC20Lockbox | token | moonbeam | n/a | 3 deployments: moonbeam [`0x0d4503...51b460`](./contracts/moonbeam-1284/0x0d45033775b290d69462944289b7a402a651b460/); moonbeam `0xd12a18...5128da`; moonbeam `0xd95c2d...fce7df` | ⚠️ Unaudited |
| xWELL | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x2585d8...9a14e3`](./contracts/moonbeam-1284/0x2585d82da7a7f8a85b10e6964814a74d999a14e3/); moonbeam `0x87e097...e5dd69` | ⚠️ Unaudited |
| xWELL | unknown | moonbeam | n/a | [`0x3b1bdd...700a7f`](./contracts/moonbeam-1284/0x3b1bddc0998058dd266e2a0ac855d0d750700a7f/) | ⚠️ Unaudited |
| xWELL | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x3c9684...037738`](./contracts/moonbeam-1284/0x3c968481be3ba1a99fed5f73db2ff51151037738/); moonbeam `0xa88594...2296ae` | ⚠️ Unaudited |
| xWELL | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x54720d...8e5873`](./contracts/moonbeam-1284/0x54720dbdb9bc6bcce6796b3c57d4527e848e5873/); moonbeam `0xe5fa98...08d0c8` | ⚠️ Unaudited |
| xWELLRouter | adapter | moonbeam | n/a | 3 deployments: moonbeam [`0x78c504...2db169`](./contracts/moonbeam-1284/0x78c504b6c0ea2adbf6a58b208c9888f3692db169/); moonbeam `0xb84543...666df4`; moonbeam `0xfb26a4...7438c5` | ⚠️ Unaudited |
| ZooDAO | unknown | moonbeam | n/a | [`0x7cd3e6...f40ec5`](./contracts/moonbeam-1284/0x7cd3e6e1a69409def0d78d17a492e8e143f40ec5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonbeam | n/a | `0x6f1c53...b7d203` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x826d8e...590c29` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ZooDAO_Moonbeam_Battles_Audit_Report_by_WatchPug.pdf](https://github.com/ZooDAO-Project/moonbeam-battles/blob/master/audit/ZooDAO_Moonbeam_Battles_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14175] ZooDAO_Moonbeam_Battles_Audit_Report_by_WatchPug.pdf

Fork inheritance lineage and inherited audits are included when available.
