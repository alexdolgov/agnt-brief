# Agentic Audit Brief: Boson Protocol

## Project Overview

- Project: Boson Protocol (`boson-protocol`)
- Website: [https://www.bosonprotocol.io](https://www.bosonprotocol.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:36.140Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum, optimism
- Contract surface: 29 unique implementations (29 raw deployments)
- DeFi Llama TVL: $869,047.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 29 project-authored contract(s) across 2 chain(s); 1 ERC20 token, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (pausablebase, reentrancyguardbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 29; live-surface contracts included: 29 (29 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/29 (0.0%)
- Deployed-live implementations: 29 of 29 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/29
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 29
- Raw deployments: 29
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
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
| AccessController | unknown | optimism | n/a | [`0x9c8676...8afd40`](./contracts/optimism-10/0x9c867632dfe6b70d83dfe7865cf8510c168afd40/) | ⚠️ Unaudited |
| AccountHandlerFacet | unknown | optimism | n/a | [`0x4ba93f...4dbb06`](./contracts/optimism-10/0x4ba93f34b174ed520eb8ac472c35defe524dbb06/) | ⚠️ Unaudited |
| AgentHandlerFacet | unknown | optimism | n/a | [`0x8fa52a...c0d49c`](./contracts/optimism-10/0x8fa52a7d571146657157ba1e2d15f55796c0d49c/) | ⚠️ Unaudited |
| BosonClientBeacon | unknown | optimism | n/a | [`0xfbe4ca...7ae5cc`](./contracts/optimism-10/0xfbe4ca60e612e46809ad181466d178aa697ae5cc/) | ⚠️ Unaudited |
| BosonPriceDiscovery | unknown | optimism | n/a | [`0xd8c3b2...43aabd`](./contracts/optimism-10/0xd8c3b2232b3d597156148f757bb2bd665843aabd/) | ⚠️ Unaudited |
| BosonToken | unknown | ethereum | n/a | [`0xc477d0...090de9`](./contracts/ethereum-1/0xc477d038d5420c6a9e0b031712f61c5120090de9/) | ⚠️ Unaudited |
| BosonVoucher | unknown | optimism | n/a | [`0xbee924...386869`](./contracts/optimism-10/0xbee92440ab699611e03b81fca3f1107602386869/) | ⚠️ Unaudited |
| BundleHandlerFacet | unknown | optimism | n/a | [`0x588665...242610`](./contracts/optimism-10/0x588665499ecc0cc9b6924275359f1d279a242610/) | ⚠️ Unaudited |
| BuyerHandlerFacet | unknown | optimism | n/a | [`0x4aa238...cb30c9`](./contracts/optimism-10/0x4aa238ef21737e138c4f7d4d722f55680ccb30c9/) | ⚠️ Unaudited |
| ConfigHandlerFacet | unknown | optimism | n/a | [`0x7e9152...623fbe`](./contracts/optimism-10/0x7e91527ed433761acd674d6acda1afd6b0623fbe/) | ⚠️ Unaudited |
| DiamondCutFacet | unknown | optimism | n/a | [`0x3ce6a4...d068e9`](./contracts/optimism-10/0x3ce6a434dad2ace6c8dbec6dc007d6a8fad068e9/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | optimism | n/a | [`0xba596e...61382c`](./contracts/optimism-10/0xba596ee5c051faf6b263d457835e65a26661382c/) | ⚠️ Unaudited |
| DisputeHandlerFacet | unknown | optimism | n/a | [`0x625223...8362ff`](./contracts/optimism-10/0x6252236d213a80a67c85a48ec48d38245c8362ff/) | ⚠️ Unaudited |
| DisputeResolverHandlerFacet | unknown | optimism | n/a | [`0x8a7f02...347359`](./contracts/optimism-10/0x8a7f0260ed956f8a51193672f26d9b9a31347359/) | ⚠️ Unaudited |
| ERC165Facet | unknown | optimism | n/a | [`0xb5e1d2...e6b294`](./contracts/optimism-10/0xb5e1d2c4cc71d44a601efc94fe68c9202ce6b294/) | ⚠️ Unaudited |
| ExchangeHandlerFacet | unknown | optimism | n/a | [`0x4fa60c...6fce66`](./contracts/optimism-10/0x4fa60c62147c3732baa7e9abba8d7017dd6fce66/) | ⚠️ Unaudited |
| FundsHandlerFacet | unknown | optimism | n/a | [`0x520751...57fa90`](./contracts/optimism-10/0x52075179452377da8264e3525f71c9099257fa90/) | ⚠️ Unaudited |
| GroupHandlerFacet | unknown | optimism | n/a | [`0x85a52d...f83008`](./contracts/optimism-10/0x85a52d353027e28739f57a212324ccd05ef83008/) | ⚠️ Unaudited |
| MetaTransactionsHandlerFacet | unknown | optimism | n/a | [`0xab9c0f...640b50`](./contracts/optimism-10/0xab9c0f0eba44f9e1b383aa5dee83e06316640b50/) | ⚠️ Unaudited |
| OfferHandlerFacet | unknown | optimism | n/a | [`0x5fd6b1...6c1011`](./contracts/optimism-10/0x5fd6b187e800bafa53bdee18619a8e828a6c1011/) | ⚠️ Unaudited |
| OrchestrationHandlerFacet1 | unknown | optimism | n/a | [`0x794df5...0583e3`](./contracts/optimism-10/0x794df5a4d6276c06035f68c3d906afb9e00583e3/) | ⚠️ Unaudited |
| OrchestrationHandlerFacet2 | unknown | optimism | n/a | [`0xa0d187...9ec397`](./contracts/optimism-10/0xa0d1872bfa6031a94ad2339a81bf9c99719ec397/) | ⚠️ Unaudited |
| PauseHandlerFacet | unknown | optimism | n/a | [`0x5f7d1a...d51c5b`](./contracts/optimism-10/0x5f7d1a252ea613fb5b4bdf45a68d4bad9ad51c5b/) | ⚠️ Unaudited |
| PriceDiscoveryHandlerFacet | unknown | optimism | n/a | [`0x25ed04...9cf72c`](./contracts/optimism-10/0x25ed04c326a89b67c66fa8aafc8827770a9cf72c/) | ⚠️ Unaudited |
| ProtocolDiamond | unknown | optimism | n/a | [`0x59a4c1...e18cb5`](./contracts/optimism-10/0x59a4c19b55193d5a2ead0065c54af4d516e18cb5/) | ⚠️ Unaudited |
| ProtocolInitializationHandlerFacet | unknown | optimism | n/a | [`0xd624d2...7e471c`](./contracts/optimism-10/0xd624d257ff6e435fdf9a05ba21ab270fdb7e471c/) | ⚠️ Unaudited |
| SellerHandlerFacet | unknown | optimism | n/a | [`0xe282ff...b69d83`](./contracts/optimism-10/0xe282ff84bd704504057eaf78ac34e4a991b69d83/) | ⚠️ Unaudited |
| SequentialCommitHandlerFacet | unknown | optimism | n/a | [`0x208e11...484f69`](./contracts/optimism-10/0x208e1180211959c9caf9305ff725aa5625484f69/) | ⚠️ Unaudited |
| TwinHandlerFacet | unknown | optimism | n/a | [`0xe45a58...f1ae61`](./contracts/optimism-10/0xe45a5828c39d14fb854526426c70547c9df1ae61/) | ⚠️ Unaudited |

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
| [audits.md](https://github.com/bosonprotocol/boson-protocol-contracts/blob/main/docs/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19614] audits.md

Fork inheritance lineage and inherited audits are included when available.
