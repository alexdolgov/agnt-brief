# Agentic Audit Brief: Stout

## Project Overview

- Project: Stout (`stout`)
- Website: [https://stout.fi/](https://stout.fi/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:56.955Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: sonic
- Contract surface: 106 unique implementations (114 raw deployments)
- DeFi Llama TVL: $2,097,839.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 53 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 8 ERC20 tokens, 5 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 8 common project-authored base contract(s) (initializegovernedupgradeabilityproxy, governable, oethvaultcore). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Compound Finance** (`compound-finance`) in the OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, VaultAdmin, VaultCore, … subsystem.
11 audits inherited from `compound-finance`, scoped to that subsystem.

Total inherited audits: 11. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 208; live-surface contracts included: 114 (28 live, 86 unknown).
- Excluded by liveness: 94 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/20 (0.0%)
- Deployed-live implementations: 20 of 106 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 86
- Unique implementations: 106
- Raw deployments: 114
- Audits discovered: 11 (0 direct, 11 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DUSX | unknown | sonic | n/a | [`0xe30e73...76f854`](./contracts/sonic-146/0xe30e73cc52ef50a4e4a8b1a3dd0b002b2276f854/) | ⚠️ Unaudited |
| EGGS | unknown | sonic | n/a | [`0xf26ff7...f019bc`](./contracts/sonic-146/0xf26ff70573ddc8a90bd7865af8d7d70b8ff019bc/) | ⚠️ Unaudited |
| FeeFix | unknown | sonic | n/a | [`0xec44aa...da0e8b`](./contracts/sonic-146/0xec44aa4fd30f0860f8f39ef4b7a2400785da0e8b/) | ⚠️ Unaudited |
| FixOwnerEggs | unknown | sonic | n/a | [`0xfb8e17...52695a`](./contracts/sonic-146/0xfb8e178b8b606da5de7417f476472c695a52695a/) | ⚠️ Unaudited |
| Lender | unknown | sonic | n/a | 9 deployments: sonic [`0x40e0fa...ad4c48`](./contracts/sonic-146/0x40e0faa1ff6e73e2955266c1b897fc3545ad4c48/); sonic `0x57c02e...5f2709`; sonic `0x669fd3...1dd198`; sonic `0x711de8...584a62`; sonic `0x94395f...8ed3f2`; sonic `0x9c1b02...0e10e1`; sonic `0xbf7104...45de13`; sonic `0xf49e97...a48b7a`; sonic `0xf55e1e...1c1a91` | ⚠️ Unaudited |
| LenderOwner | unknown | sonic | n/a | [`0xec7fa6...39a6a7`](./contracts/sonic-146/0xec7fa6ae97bcab9236696b24be8d55879f39a6a7/) | ⚠️ Unaudited |
| LiquidationHelper | periphery | sonic | n/a | [`0xef2d85...1aec75`](./contracts/sonic-146/0xef2d85c2b4dee15660cdfb0465c4bb0aac1aec75/) | ⚠️ Unaudited |
| Minter | operational_periphery | sonic | n/a | [`0x5ed2e9...64b28e`](./contracts/sonic-146/0x5ed2e91d451dcb4639d2057613cc542c2264b28e/) | ⚠️ Unaudited |
| MiscHelper | periphery | sonic | n/a | [`0xa1ba6e...52fd0a`](./contracts/sonic-146/0xa1ba6ee9ea1abb234281117a3e8ba0995252fd0a/) | ⚠️ Unaudited |
| OSonic | unknown | sonic | n/a | [`0xb1e256...f8a794`](./contracts/sonic-146/0xb1e25689d55734fd3fffc939c4c3eb52dff8a794/) | ⚠️ Unaudited |
| OSonicVaultCore | core_logic | sonic | n/a | [`0xd66afa...836cf3`](./contracts/sonic-146/0xd66afaa7fe071162d055b3cc703cc1eaed836cf3/) | ⚠️ Unaudited |
| OSonicZapper | adapter | sonic | n/a | [`0xe25a2b...2fab21`](./contracts/sonic-146/0xe25a2b256ffb3ad73678d5e80de8d2f6022fab21/) | ⚠️ Unaudited |
| OSVault | core_logic | sonic | n/a | [`0xa3c0ec...180186`](./contracts/sonic-146/0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186/) | ⚠️ Unaudited |
| PoolBoosterFactorySwapxDouble | registry | sonic | n/a | [`0x840081...5a3b49`](./contracts/sonic-146/0x840081c97256d553a8f234d469d797b9535a3b49/) | ⚠️ Unaudited |
| RepayHelper | periphery | sonic | n/a | [`0x652427...dbb121`](./contracts/sonic-146/0x6524278eb519553f1d8c03e08b840de4d2dbb121/) | ⚠️ Unaudited |
| StakedDUSX | token | sonic | n/a | [`0xa0b0cb...d0cc6d`](./contracts/sonic-146/0xa0b0cbffed77e57e946fb1fb875b28edd0d0cc6d/) | ⚠️ Unaudited |
| StoutTimelock | governance | sonic | n/a | [`0xd3a6b1...21744b`](./contracts/sonic-146/0xd3a6b1a9026485bbd39a75a352e968711e21744b/) | ⚠️ Unaudited |
| StoutVault | core_logic | sonic | n/a | [`0x88d6d8...f7cabf`](./contracts/sonic-146/0x88d6d8547bcbd5366538cedccf424776f3f7cabf/) | ⚠️ Unaudited |
| STTX | unknown | sonic | n/a | [`0x97a10b...957dea`](./contracts/sonic-146/0x97a10beebb25e0ebfa55ca0a7d00e37afe957dea/) | ⚠️ Unaudited |
| VoteEscrowedSTTX | operational_periphery | sonic | n/a | [`0x822131...f1cf9e`](./contracts/sonic-146/0x8221312e9cf90a2b160ecdabf922408a5ef1cf9e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (86)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x006bce...88699f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x033725...d36e16` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0957b3...71cefa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x121383...b221f5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x18e624...c5234e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1a436a...c8f901` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1ea473...f70b79` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1f1d3b...858a06` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x204329...fe8e08` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x25c436...bc7777` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2776f2...54151f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x292003...729105` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2d88f8...a51db4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2eff96...77285b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3a9b66...60b063` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3f80f3...9a18e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x425a62...4ed56a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x46c06f...29d6ec` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4bf238...888315` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4f1aef...b836d4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x50a68c...b7739a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5220ff...8ea29e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x54527e...3d40bf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x55fefa...a44153` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5847b1...3193da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x58cc8b...ba0a80` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x597982...42bb10` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5c9ad1...c49db4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x608a61...9867d3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6276d4...6bf4bf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x63b173...16a79d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x63cde3...5ce654` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x657af6...d58720` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x66f2df...63f590` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x67d570...c437cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6b26d4...80a0dd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x748ee7...05a4ae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x74f54f...1b55ee` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x77dd3b...c3da28` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x800063...43d68b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x81a140...17567a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x83c117...5a33e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x842c91...899238` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x846fb3...ac813a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8cce20...e28a96` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8d0ea3...0aa322` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8e0687...8a77f3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8fde1f...e0cd63` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x94cbd2...c10599` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x951881...0858a9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9ddb17...1e7287` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9e3143...c174b6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9e8895...7ad43d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa5e1b0...7e381e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa6c53a...02e0a6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaa97db...3023da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xac3c72...210eb2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xae3dcf...e864a6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb275f1...af8d4d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb64246...4f6a2b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xba09a5...613e12` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc3ca8f...b5c8bb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc4c732...baba48` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc82bd7...58fc69` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc9ec89...a1675e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcd3d2d...9f062a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcdcf8e...600846` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcf8990...536b14` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcfce49...9637c1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd0cc28...72ac8b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd1a9c3...3cee21` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd3001a...8c5121` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd4ccea...8b7ce1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd5909a...bb4040` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd9efb0...4cbb66` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdae5a3...4d8775` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdb564b...c9f06b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe3717f...e7d230` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe504b2...1577e7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe64d5d...e242e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe6a162...3a3450` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe9f739...1fc51c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xed6bb8...cabcfa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf22f28...4b13cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf2625c...6306e1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf8fcbb...e81104` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [compound-governance.pdf](https://github.com/trailofbits/publications/blob/master/reviews/compound-governance.pdf) | Trail of Bits | Audit | 2020-02 | stale | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [www.openzeppelin.com/news/compound-audit](https://www.openzeppelin.com/news/compound-audit) | OpenZeppelin | Audit | 2019-08 | stale | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [compound-3.pdf](https://github.com/trailofbits/publications/blob/master/reviews/compound-3.pdf) | Trail of Bits | Audit | 2019-08 | stale | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [compound-2.pdf](https://github.com/trailofbits/publications/blob/master/reviews/compound-2.pdf) | Trail of Bits | Audit | 2019-04 | stale | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [www.openzeppelin.com/news/compound-finance-patch-audit](https://www.openzeppelin.com/news/compound-finance-patch-audit) | OpenZeppelin | Audit | n/a | unknown | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [www.openzeppelin.com/news/compound-finance-mcd-dsr-integration](https://www.openzeppelin.com/news/compound-finance-mcd-dsr-integration) | OpenZeppelin | Audit | n/a | unknown | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [www.openzeppelin.com/news/compound-alpha-governance-system-audit](https://www.openzeppelin.com/news/compound-alpha-governance-system-audit) | OpenZeppelin | Audit | n/a | unknown | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [www.openzeppelin.com/news/compound-tether-integration-audit](https://www.openzeppelin.com/news/compound-tether-integration-audit) | OpenZeppelin | Audit | n/a | unknown | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [www.chainsecurity.com/security-audit/compound-iii](https://www.chainsecurity.com/security-audit/compound-iii) | ChainSecurity | Audit | 2024-12 | aging | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [www.openzeppelin.com/news/compound-iii-audit](https://www.openzeppelin.com/news/compound-iii-audit) | OpenZeppelin | Audit | 2022-06 | stale | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |
| [www.openzeppelin.com/news/compound-comp-distribution-system-audit](https://www.openzeppelin.com/news/compound-comp-distribution-system-audit) | OpenZeppelin | Audit | 2020-05 | stale | Inherited from Compound Finance — forked code, scoped to OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, +4 more | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 106 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 11
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19208] compound-governance.pdf
- [19209] www.openzeppelin.com/news/compound-audit
- [19210] compound-3.pdf
- [19211] compound-2.pdf
- [19212] www.openzeppelin.com/news/compound-finance-patch-audit
- [19213] www.openzeppelin.com/news/compound-finance-mcd-dsr-integration
- [19214] www.openzeppelin.com/news/compound-alpha-governance-system-audit
- [19215] www.openzeppelin.com/news/compound-tether-integration-audit
- [25007] www.chainsecurity.com/security-audit/compound-iii
- [25008] www.openzeppelin.com/news/compound-iii-audit
- [25009] www.openzeppelin.com/news/compound-comp-distribution-system-audit

Fork inheritance lineage and inherited audits are included when available.
