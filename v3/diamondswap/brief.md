# Agentic Audit Brief: Diamondswap

## Project Overview

- Project: Diamondswap (`diamondswap`)
- Website: [https://diamondswap.com/exchange](https://diamondswap.com/exchange)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:43.452Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: base
- Contract surface: 21 unique implementations (21 raw deployments)
- DeFi Llama TVL: $132,537.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 19 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 10 common project-authored base contract(s) (peripheryimmutablestate, authorizable, facet). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/21 (0.0%)
- Deployed-live implementations: 21 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirDropper | unknown | base | n/a | [`0xfda4f2...62dbdc`](./contracts/base-8453/0xfda4f231efae3c88a9121970e1b408c5b862dbdc/) | ⚠️ Unaudited |
| BasicAuth | unknown | base | n/a | [`0x7a39d2...5a5b2b`](./contracts/base-8453/0x7a39d26641ed8c8061e8f58a73eff348345a5b2b/) | ⚠️ Unaudited |
| CTOFacet | unknown | base | n/a | [`0xfa8d16...5f3a34`](./contracts/base-8453/0xfa8d16a2285613da39001b6f168e9e83135f3a34/) | ⚠️ Unaudited |
| CTOInit | unknown | base | n/a | [`0x36cadc...26054a`](./contracts/base-8453/0x36cadce52bbe76840a57aec4731444832026054a/) | ⚠️ Unaudited |
| DefaultDiamondProxy | unknown | base | n/a | [`0x19ccc8...fc1b2f`](./contracts/base-8453/0x19ccc8e9796d278820c259f287c2ff5c42fc1b2f/) | ⚠️ Unaudited |
| DiamondSwapV2FactoryFacet | unknown | base | n/a | [`0x9108ba...36c150`](./contracts/base-8453/0x9108ba9ff5570c31eb69fa039381e49dd036c150/) | ⚠️ Unaudited |
| DiamondSwapV2FactoryInit | unknown | base | n/a | [`0x7e7315...bc5c6b`](./contracts/base-8453/0x7e73154252484d67bad9966a44a32b45d9bc5c6b/) | ⚠️ Unaudited |
| DiamondSwapV2RouterFacet | unknown | base | n/a | [`0x6b48db...0dbe67`](./contracts/base-8453/0x6b48dbc21193d725bcea11a4ff9e2f8d7f0dbe67/) | ⚠️ Unaudited |
| DiamondSwapV2RouterInit | unknown | base | n/a | [`0x7c3762...04f14e`](./contracts/base-8453/0x7c3762fdaa608254f98a0071347ee471a504f14e/) | ⚠️ Unaudited |
| DiamondSwapV3Factory | unknown | base | n/a | [`0x80778a...bc4637`](./contracts/base-8453/0x80778a7b9d0e391bf45b9c7a76ee3cc9b4bc4637/) | ⚠️ Unaudited |
| DYORFacet | unknown | base | n/a | [`0xa629d7...9b156c`](./contracts/base-8453/0xa629d7e42f3041df983bf8011cc1d9b3229b156c/) | ⚠️ Unaudited |
| DYORInit | unknown | base | n/a | [`0xb4428e...b02522`](./contracts/base-8453/0xb4428e82af311d8211a47f06b36f6cd433b02522/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | base | n/a | [`0x66ab3d...332cc9`](./contracts/base-8453/0x66ab3d6a0fcec856a4d6ab709fe422d0c9332cc9/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | base | n/a | [`0x07e0fd...908e6c`](./contracts/base-8453/0x07e0fd7588e9f1022f1bdbccfe16793792908e6c/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | [`0x8b97db...242a21`](./contracts/base-8453/0x8b97db61c78b051d817e0cd226ecbfb1e4242a21/) | ⚠️ Unaudited |
| QuoterV2 | unknown | base | n/a | [`0x1e5812...f5d308`](./contracts/base-8453/0x1e58120d59c3f18b8b456348eee4f712a4f5d308/) | ⚠️ Unaudited |
| StakingFacet | unknown | base | n/a | [`0x94cd5b...10cc20`](./contracts/base-8453/0x94cd5ba94c50fc5ed7ac889650dadff85110cc20/) | ⚠️ Unaudited |
| StakingInit | unknown | base | n/a | [`0x792299...f1f309`](./contracts/base-8453/0x792299d4e4473eb033051d71644a089d52f1f309/) | ⚠️ Unaudited |
| SwapRouter02 | unknown | base | n/a | [`0x94e656...2bb4d3`](./contracts/base-8453/0x94e656ddd2ec7f47154e10765ff5e664592bb4d3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0xa4cbf1...4e24bc`](./contracts/base-8453/0xa4cbf1e40d8aaa011a667ae2082dde6b944e24bc/) | ⚠️ Unaudited |
| VaultFacet | unknown | base | n/a | [`0x530090...353650`](./contracts/base-8453/0x530090b2ec1bbeb2fde9e47284af50e725353650/) | ⚠️ Unaudited |

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
| [DiamondSwap_Security_Audit_Report.pdf (also discovered via alternate URL)](https://shellboxes.com/audit/reports/DiamondSwap_Security_Audit_Report.pdf) | ShellBoxes | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://shellboxes.com/cases/diamondswap) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21382] DiamondSwap_Security_Audit_Report.pdf
- [24046] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
