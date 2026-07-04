# Agentic Audit Brief: Cub Finance

## Project Overview

- Project: Cub Finance (`cub-finance`)
- Website: [https://cubdefi.com](https://cubdefi.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.315Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: bsc
- Contract surface: 43 unique implementations (43 raw deployments)
- DeFi Llama TVL: $182,446.86
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 42 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (erc721holder). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 43; live-surface contracts included: 43 (43 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/43 (0.0%)
- Deployed-live implementations: 43 of 43 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/43
- Verified + Unaudited implementations: 43
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 43
- Raw deployments: 43
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Add | unknown | bsc | n/a | [`0xd99f14...115f7f`](./contracts/bsc-56/0xd99f14c61c2c4f791c90119f33d3d0a1b8115f7f/) | ⚠️ Unaudited |
| BEP20Token | unknown | bsc | n/a | [`0x5e719a...93ce28`](./contracts/bsc-56/0x5e719aa339a6229692cf4163eb0d966acf93ce28/) | ⚠️ Unaudited |
| BLEO | unknown | bsc | n/a | [`0x642153...61c44a`](./contracts/bsc-56/0x6421531af54c7b14ea805719035ebf1e3661c44a/) | ⚠️ Unaudited |
| BondContract | unknown | bsc | n/a | [`0x68dc13...b2abf9`](./contracts/bsc-56/0x68dc13fb84c20582e11288c0c19ec86e48b2abf9/) | ⚠️ Unaudited |
| BridgeToken | unknown | bsc | n/a | [`0x06791b...6700a6`](./contracts/bsc-56/0x06791b2117ed179db6af1fdc8b2aa86de76700a6/) | ⚠️ Unaudited |
| CAKEPOP | unknown | bsc | n/a | [`0x2f0de2...8bb4b0`](./contracts/bsc-56/0x2f0de2cfa6f4b3a7fd4b650a4c771e07718bb4b0/) | ⚠️ Unaudited |
| CallerProxy | unknown | bsc | n/a | [`0x4b86e1...30c945`](./contracts/bsc-56/0x4b86e1be6cbb9a67b573f370192016eaaf30c945/) | ⚠️ Unaudited |
| CliffTimelock | unknown | bsc | n/a | [`0xa6ff48...608b5d`](./contracts/bsc-56/0xa6ff48646f36a061c64c97108484491bdb608b5d/) | ⚠️ Unaudited |
| Cub_Kingdom_Vault_Bakeryswap | unknown | bsc | n/a | [`0xb82d2b...beeb95`](./contracts/bsc-56/0xb82d2b31c12f019825dc6231c0999ad266beeb95/) | ⚠️ Unaudited |
| Cub_Kingdom_Vault_Belt | unknown | bsc | n/a | [`0x03b0fd...296cc9`](./contracts/bsc-56/0x03b0fdc725da305a320455aec177b1b503296cc9/) | ⚠️ Unaudited |
| Cub_Kingdom_Vault_Belt_2 | unknown | bsc | n/a | [`0x3899ac...757413`](./contracts/bsc-56/0x3899accf4b2a10dd4ab597c0e403e427f3757413/) | ⚠️ Unaudited |
| CubLions | unknown | bsc | n/a | [`0xa032fb...840239`](./contracts/bsc-56/0xa032fb9cb614cdbc04bb2b7dc20d691cbe840239/) | ⚠️ Unaudited |
| CubMaximiserPCS_v2 | unknown | bsc | n/a | [`0x03e483...95ea9a`](./contracts/bsc-56/0x03e48360dc132a1838492b6870c98d2bd895ea9a/) | ⚠️ Unaudited |
| CubMaximizer | unknown | bsc | n/a | [`0x13f57b...68ecf9`](./contracts/bsc-56/0x13f57bddcd27d1ac5cffbc52a5acaca7b168ecf9/) | ⚠️ Unaudited |
| CubProfile | unknown | bsc | n/a | [`0xca17f3...44666d`](./contracts/bsc-56/0xca17f38df9cb411ea4829479a4140d6ff944666d/) | ⚠️ Unaudited |
| CubToken | unknown | bsc | n/a | [`0x50d809...f4c1c1`](./contracts/bsc-56/0x50d809c74e0b8e49e7b4c65bb3109abe3ff4c1c1/) | ⚠️ Unaudited |
| CubVenusVault | unknown | bsc | n/a | [`0x49d6ad...d35c30`](./contracts/bsc-56/0x49d6ad854930b168a3b2c800eb9f5a27d1d35c30/) | ⚠️ Unaudited |
| Distributor | unknown | bsc | n/a | [`0xa22efc...920cab`](./contracts/bsc-56/0xa22efc88f3eb641d881d0807dc8e305d71920cab/) | ⚠️ Unaudited |
| Dripper | unknown | bsc | n/a | [`0x7acec4...30cd77`](./contracts/bsc-56/0x7acec42a840edad95d878d7747e9fe876130cd77/) | ⚠️ Unaudited |
| HTLC | unknown | bsc | n/a | [`0xa28493...28c8b5`](./contracts/bsc-56/0xa28493579f7204f630bbc975e6ca8aa27f28c8b5/) | ⚠️ Unaudited |
| IDO | unknown | bsc | n/a | [`0x0e8d20...2b5d9d`](./contracts/bsc-56/0x0e8d2080d31f8b119df60ab9e23bf0d1df2b5d9d/) | ⚠️ Unaudited |
| IFOV2 | unknown | bsc | n/a | [`0xd03a2c...67ef9f`](./contracts/bsc-56/0xd03a2c30f001fdd9ab361eb79ffcc0135167ef9f/) | ⚠️ Unaudited |
| IterableMapping | unknown | bsc | n/a | [`0x5b76ec...0998db`](./contracts/bsc-56/0x5b76ec45fc1fc5080e57edde445e2f10b60998db/) | ⚠️ Unaudited |
| Kingdom | unknown | bsc | n/a | [`0x16fcb9...ca56a1`](./contracts/bsc-56/0x16fcb955082ce59ee7bea251c3038331f5ca56a1/) | ⚠️ Unaudited |
| KingdomMain | unknown | bsc | n/a | [`0x35ba27...c4937e`](./contracts/bsc-56/0x35ba2751e8ddb7bd647be7adc12cb12a19c4937e/) | ⚠️ Unaudited |
| LeoBridge | unknown | bsc | n/a | [`0x260313...b6ed20`](./contracts/bsc-56/0x26031359357f882dc292b3b937f88ba944b6ed20/) | ⚠️ Unaudited |
| LionFactoryV2 | unknown | bsc | n/a | [`0xf9ee96...81300c`](./contracts/bsc-56/0xf9ee966c68d469c8f6b44b1998f028283981300c/) | ⚠️ Unaudited |
| LionFactoryV3 | unknown | bsc | n/a | [`0x428ad4...328e44`](./contracts/bsc-56/0x428ad484a8f13a0535bbacf55274deb5e8328e44/) | ⚠️ Unaudited |
| LionMintingStation | unknown | bsc | n/a | [`0x08a44a...950965`](./contracts/bsc-56/0x08a44a735b0c38c0dc1c705f5364ad7f06950965/) | ⚠️ Unaudited |
| LionsDen | unknown | bsc | n/a | [`0x227e79...b33e16`](./contracts/bsc-56/0x227e79c83065edb8b954848c46ca50b96cb33e16/) | ⚠️ Unaudited |
| MulticallBalance | unknown | bsc | n/a | [`0x27ddb9...cf5c2d`](./contracts/bsc-56/0x27ddb9f89a451074ec53e60729ceb9c892cf5c2d/) | ⚠️ Unaudited |
| MulticallNftBalance | unknown | bsc | n/a | [`0x223819...ab549b`](./contracts/bsc-56/0x223819df08c76bf4eb733965feeb8ec194ab549b/) | ⚠️ Unaudited |
| PaymentsCollector | unknown | bsc | n/a | [`0xe73c3d...8a8733`](./contracts/bsc-56/0xe73c3dc72e7ee19df69089bff6b16de7db8a8733/) | ⚠️ Unaudited |
| PaymentsWithdrawer | unknown | bsc | n/a | [`0x33044d...bae0a5`](./contracts/bsc-56/0x33044ddbd45278f98a1c5c2ca664dff28bbae0a5/) | ⚠️ Unaudited |
| RainBotDeposit | unknown | bsc | n/a | [`0x0a3fff...892a61`](./contracts/bsc-56/0x0a3fffaa158786015b874afcecaab1dce0892a61/) | ⚠️ Unaudited |
| SalusBridgeRegister | unknown | bsc | n/a | [`0xb9a560...3bcd8f`](./contracts/bsc-56/0xb9a560236f640d02a256680a88a488a1d23bcd8f/) | ⚠️ Unaudited |
| SPS | unknown | bsc | n/a | [`0x1633b7...74703f`](./contracts/bsc-56/0x1633b7157e7638c4d6593436111bf125ee74703f/) | ⚠️ Unaudited |
| SPSMinter | unknown | bsc | n/a | [`0x1ce7db...cd79ce`](./contracts/bsc-56/0x1ce7db097be2ccd020133a3b34b98130c0cd79ce/) | ⚠️ Unaudited |
| StakingPool | unknown | bsc | n/a | [`0x08bea2...06fe0b`](./contracts/bsc-56/0x08bea2702d89abb8059853d654d0838c5e06fe0b/) | ⚠️ Unaudited |
| SwapDeposit | unknown | bsc | n/a | [`0x7ddce2...8de111`](./contracts/bsc-56/0x7ddce2fa54fb65791e4826b1c962060f588de111/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0xcfbd43...276566`](./contracts/bsc-56/0xcfbd43ecf0bec6f8a391e6b92dadc0317e276566/) | ⚠️ Unaudited |
| TokenFarm | unknown | bsc | n/a | [`0xd80317...7b0c3d`](./contracts/bsc-56/0xd80317d95e231837124410fcbeae48073a7b0c3d/) | ⚠️ Unaudited |
| Treasury | unknown | bsc | n/a | [`0xe177d0...da4b70`](./contracts/bsc-56/0xe177d0929d4fda063eda061140e5da71a8da4b70/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/cubfinance) | CertiK | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 43 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [17142] DL audit link

Fork inheritance lineage and inherited audits are included when available.
