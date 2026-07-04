# Agentic Audit Brief: ZooDAO

## Project Overview

- Project: ZooDAO (`zoodao`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.981Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-c970
- Chains: moonbeam
- Contract surface: 26 unique implementations (45 raw deployments)
- DeFi Llama TVL: $8,998.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 52 project-authored contract(s) across 1 chain(s); 13 ERC20 tokens, 3 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 30 common project-authored base contract(s) (comptrollervxstorage, unitrolleradminstorage, comptrollerinterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 49; live-surface contracts included: 45 (43 live, 2 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/21 (0.0%)
- Deployed-live implementations: 24 of 26 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 26
- Raw deployments: 45
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

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bridge | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0xabf9f3...67ccd0`](./contracts/moonbeam-1284/0xabf9f36e3b03ba7b8d0df5a1292b69a48c67ccd0/); moonbeam `0xee2ebe...e7b45e` | ⚠️ Unaudited |
| JumpRateModel | operational_periphery | moonbeam | n/a | [`0x0b5f12...c6acf5`](./contracts/moonbeam-1284/0x0b5f126fa3116dbb769f6b8404d1a78c54c6acf5/) | ⚠️ Unaudited |
| Maximillion | unknown | moonbeam | n/a | [`0xe5ef93...a380c3`](./contracts/moonbeam-1284/0xe5ef9310cc7e3437bad83466675f24fd62a380c3/) | ⚠️ Unaudited |
| MErc20Delegate | token | moonbeam | n/a | 2 deployments: moonbeam [`0xaaa20c...74a9ce`](./contracts/moonbeam-1284/0xaaa20c5a584a9fecdfedd71e46da7858b774a9ce/); moonbeam `0xb6c94b...f9aeac` | ⚠️ Unaudited |
| MErc20DelegateFixer | token | moonbeam | n/a | 2 deployments: moonbeam [`0x1c5564...cf484c`](./contracts/moonbeam-1284/0x1c55649f73cda2f72cef3dd6c5ca3d49efcf484c/); moonbeam `0xd22da9...8211c3` | ⚠️ Unaudited |
| MErc20DelegateMadFixer | token | moonbeam | n/a | 2 deployments: moonbeam [`0x02e908...e61334`](./contracts/moonbeam-1284/0x02e9081dfadd37a852f9a73c4d7d69e615e61334/); moonbeam `0x24a9d8...833d1d` | ⚠️ Unaudited |
| MGlimmer | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x091608...4c7955`](./contracts/moonbeam-1284/0x091608f4e4a15335145be0a279483c0f8e4c7955/); moonbeam `0xa3a538...38bf84` | ⚠️ Unaudited |
| Mirror | unknown | moonbeam | n/a | 5 deployments: moonbeam [`0x007f0b...7a058b`](./contracts/moonbeam-1284/0x007f0b9dd3308fdd28b0c9e938818723147a058b/); moonbeam `0x36a657...cec8a0`; moonbeam `0x4cb6c6...3af81e`; moonbeam `0x78abba...28a09f`; moonbeam `0xb89b5a...4e2560` | ⚠️ Unaudited |
| MoonwellViewsV1 | unknown | moonbeam | n/a | [`0xf5f2ae...ce5401`](./contracts/moonbeam-1284/0xf5f2ae75d762b7e2b42d53f48018436f52ce5401/) | ⚠️ Unaudited |
| MoonwellViewsV1Moonbeam | adapter | moonbeam | n/a | 2 deployments: moonbeam [`0x54ff1a...43310f`](./contracts/moonbeam-1284/0x54ff1a86ab91a8f85e89c65bef92f02e5343310f/); moonbeam `0xdec80b...5b21be` | ⚠️ Unaudited |
| MultichainGovernor | governance | moonbeam | n/a | 3 deployments: moonbeam [`0x0ea816...4209ab`](./contracts/moonbeam-1284/0x0ea81678e4deb33aad9e214df76be3158b4209ab/); moonbeam `0x65299e...a707ab`; moonbeam `0x8769b7...d75838` | ⚠️ Unaudited |
| MultichainVoteCollectionMoonbeam | adapter | moonbeam | n/a | 2 deployments: moonbeam [`0xb8a798...2d40e5`](./contracts/moonbeam-1284/0xb8a798a50a7274a13449b7f2dd6df22faf2d40e5/); moonbeam `0xcb4413...0a0e15` | ⚠️ Unaudited |
| NFT | unknown | moonbeam | n/a | 3 deployments: moonbeam [`0x85f490...579659`](./contracts/moonbeam-1284/0x85f490b9795e075f97e7dfd1e51892683a579659/); moonbeam `0xc774f9...f78c1b`; moonbeam `0xcf374d...d6a1c2` | ⚠️ Unaudited |
| ProposalView | unknown | moonbeam | n/a | [`0xded4de...2d5c30`](./contracts/moonbeam-1284/0xded4ded0badacf87714c90405f8983efdf2d5c30/) | ⚠️ Unaudited |
| ProxyAdmin | governance | moonbeam | n/a | [`0xab9aad...386d4e`](./contracts/moonbeam-1284/0xab9aadace66937185ad9345e6ac291af82386d4e/) | ⚠️ Unaudited |
| ReflectedNFT | unknown | moonbeam | n/a | 2 deployments: moonbeam [`0x00e1f2...d70293`](./contracts/moonbeam-1284/0x00e1f27df44664655d28de2afe05625db0d70293/); moonbeam `0x306559...075511` | ⚠️ Unaudited |
| TemporalGovernor | governance | moonbeam | n/a | 2 deployments: moonbeam [`0x1e336f...7fb563`](./contracts/moonbeam-1284/0x1e336faa789426ee30dccf975f582ac8bd7fb563/); moonbeam `0x908df7...ea4689` | ⚠️ Unaudited |
| Well | unknown | moonbeam | n/a | [`0x511ab5...2411e3`](./contracts/moonbeam-1284/0x511ab53f793683763e5a8829738301368a2411e3/) | ⚠️ Unaudited |
| WormholeBridgeAdapter | operational_periphery | moonbeam | n/a | [`0x48e70f...8c6412`](./contracts/moonbeam-1284/0x48e70f68712bd275982e8351dfe1993a828c6412/) | ⚠️ Unaudited |
| WormholeUnwrapperAdapter | adapter | moonbeam | n/a | [`0x24af32...299c58`](./contracts/moonbeam-1284/0x24af32b0c4c94f0d406fbc3c8815666356299c58/) | ⚠️ Unaudited |
| XERC20Lockbox | token | moonbeam | n/a | [`0x0d4503...51b460`](./contracts/moonbeam-1284/0x0d45033775b290d69462944289b7a402a651b460/) | ⚠️ Unaudited |
| xWELL | unknown | moonbeam | n/a | [`0xa88594...2296ae`](./contracts/moonbeam-1284/0xa88594d404727625a9437c3f886c7643872296ae/) | ⚠️ Unaudited |
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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonbeam | [`0xabf9f3...67ccd0`](./contracts/moonbeam-1284/0xabf9f36e3b03ba7b8d0df5a1292b69a48c67ccd0/) | Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0b5f12...c6acf5`](./contracts/moonbeam-1284/0x0b5f126fa3116dbb769f6b8404d1a78c54c6acf5/) | JumpRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xe5ef93...a380c3`](./contracts/moonbeam-1284/0xe5ef9310cc7e3437bad83466675f24fd62a380c3/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xaaa20c...74a9ce`](./contracts/moonbeam-1284/0xaaa20c5a584a9fecdfedd71e46da7858b774a9ce/) | MErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x1c5564...cf484c`](./contracts/moonbeam-1284/0x1c55649f73cda2f72cef3dd6c5ca3d49efcf484c/) | MErc20DelegateFixer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x02e908...e61334`](./contracts/moonbeam-1284/0x02e9081dfadd37a852f9a73c4d7d69e615e61334/) | MErc20DelegateMadFixer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x091608...4c7955`](./contracts/moonbeam-1284/0x091608f4e4a15335145be0a279483c0f8e4c7955/) | MGlimmer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x007f0b...7a058b`](./contracts/moonbeam-1284/0x007f0b9dd3308fdd28b0c9e938818723147a058b/) | Mirror | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xf5f2ae...ce5401`](./contracts/moonbeam-1284/0xf5f2ae75d762b7e2b42d53f48018436f52ce5401/) | MoonwellViewsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x54ff1a...43310f`](./contracts/moonbeam-1284/0x54ff1a86ab91a8f85e89c65bef92f02e5343310f/) | MoonwellViewsV1Moonbeam | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x85f490...579659`](./contracts/moonbeam-1284/0x85f490b9795e075f97e7dfd1e51892683a579659/) | NFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xded4de...2d5c30`](./contracts/moonbeam-1284/0xded4ded0badacf87714c90405f8983efdf2d5c30/) | ProposalView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x00e1f2...d70293`](./contracts/moonbeam-1284/0x00e1f27df44664655d28de2afe05625db0d70293/) | ReflectedNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x1e336f...7fb563`](./contracts/moonbeam-1284/0x1e336faa789426ee30dccf975f582ac8bd7fb563/) | TemporalGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x511ab5...2411e3`](./contracts/moonbeam-1284/0x511ab53f793683763e5a8829738301368a2411e3/) | Well | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x48e70f...8c6412`](./contracts/moonbeam-1284/0x48e70f68712bd275982e8351dfe1993a828c6412/) | WormholeBridgeAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x24af32...299c58`](./contracts/moonbeam-1284/0x24af32b0c4c94f0d406fbc3c8815666356299c58/) | WormholeUnwrapperAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x0d4503...51b460`](./contracts/moonbeam-1284/0x0d45033775b290d69462944289b7a402a651b460/) | XERC20Lockbox | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xa88594...2296ae`](./contracts/moonbeam-1284/0xa88594d404727625a9437c3f886c7643872296ae/) | xWELL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x78c504...2db169`](./contracts/moonbeam-1284/0x78c504b6c0ea2adbf6a58b208c9888f3692db169/) | xWELLRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x7cd3e6...f40ec5`](./contracts/moonbeam-1284/0x7cd3e6e1a69409def0d78d17a492e8e143f40ec5/) | ZooDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 2 |

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
