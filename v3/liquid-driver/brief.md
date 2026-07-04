# Agentic Audit Brief: Liquid Driver

## Project Overview

- Project: Liquid Driver (`liquid-driver`)
- Website: [https://www.liquiddriver.finance](https://www.liquiddriver.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.566Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: bsc
- Contract surface: 23 unique implementations (23 raw deployments)
- DeFi Llama TVL: $142,272.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 19 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 23; live-surface contracts included: 23 (23 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/23 (0.0%)
- Deployed-live implementations: 23 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 23
- Raw deployments: 23
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapV3ERC20 | unknown | bsc | n/a | [`0x04068d...5d5b75`](./contracts/bsc-56/0x04068da6c83afcfa0e13ba15a6696662335d5b75/) | ⚠️ Unaudited |
| liveThe | unknown | bsc | n/a | [`0x7f49a9...30ea5a`](./contracts/bsc-56/0x7f49a90103419aff919bdbf53833cad6e230ea5a/) | ⚠️ Unaudited |
| LiveTheChef | unknown | bsc | n/a | [`0x0c214c...2ccc35`](./contracts/bsc-56/0x0c214c8f68e10efb66e1ca03d29036e8a32ccc35/) | ⚠️ Unaudited |
| LiveTheChefRewardSeeder | unknown | bsc | n/a | [`0x3c7357...742119`](./contracts/bsc-56/0x3c73571026fb57d59917233e700570aba5742119/) | ⚠️ Unaudited |
| LiveTheChefSecondRewarder | unknown | bsc | n/a | [`0x301e2d...4ddbba`](./contracts/bsc-56/0x301e2d3a8336aba9dbe6ad50f65e4e3e8c4ddbba/) | ⚠️ Unaudited |
| LiveTheFeeManager | unknown | bsc | n/a | [`0x053a5b...a234e9`](./contracts/bsc-56/0x053a5b18c5cc0c03786be4f75ebf62cdf1a234e9/) | ⚠️ Unaudited |
| LiveTheManager | unknown | bsc | n/a | [`0x0b843e...338142`](./contracts/bsc-56/0x0b843e695b23bfbc89db97ea07ca9664fd338142/) | ⚠️ Unaudited |
| MiniChefV2 | unknown | bsc | n/a | [`0x21c8b2...6bc4b5`](./contracts/bsc-56/0x21c8b25ac1adf0b3163c868fb94e1f44586bc4b5/) | ⚠️ Unaudited |
| MockERC20 | unknown | bsc | n/a | [`0x2301d8...ba6a4a`](./contracts/bsc-56/0x2301d8074f606cc8bd418f819770dab0e0ba6a4a/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x60ae73...fda22c`](./contracts/bsc-56/0x60ae73bd198be2a7867f10038d9f367836fda22c/) | ⚠️ Unaudited |
| QLqdr | unknown | bsc | n/a | [`0x082deb...466616`](./contracts/bsc-56/0x082debec62b09770162a12f6b898176c5b466616/) | ⚠️ Unaudited |
| SmartWalletWhitelist | unknown | bsc | n/a | [`0xaf1123...d3719b`](./contracts/bsc-56/0xaf1123d03fc668fc25b085896899ea5b2fd3719b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x15a678...3bf86f`](./contracts/bsc-56/0x15a678c004a91e101940ce1499f0cb2d223bf86f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x1f1570...6ad7ef`](./contracts/bsc-56/0x1f1570ab469088c6c79210516a1dea66976ad7ef/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x219b1d...bf9b6d`](./contracts/bsc-56/0x219b1da33fdcc75b7be1f51889c1fdfa61bf9b6d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x283581...71a212`](./contracts/bsc-56/0x2835814d519f1bbf469c80205ec99e45b071a212/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x326c6c...b05432`](./contracts/bsc-56/0x326c6c675338435a7e1cdea7cddb1d2f11b05432/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x409932...f3933c`](./contracts/bsc-56/0x4099327ac3c356cb1ac3babe7484a153fff3933c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x8081c9...e1349b`](./contracts/bsc-56/0x8081c959bc0386225e0e56a844d5e64df2e1349b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xa19547...2b13aa`](./contracts/bsc-56/0xa1954737421d4506b2f1042d24dfd5969b2b13aa/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xc1f5c8...a31799`](./contracts/bsc-56/0xc1f5c8141027e7d38268b9e0924606a183a31799/) | ⚠️ Unaudited |
| V2Migrator | unknown | bsc | n/a | [`0x0e5cce...138cf2`](./contracts/bsc-56/0x0e5cce16a88e37db7608673a5b9894be76138cf2/) | ⚠️ Unaudited |
| Vyper_contract | unknown | bsc | n/a | [`0x1e7388...40de45`](./contracts/bsc-56/0x1e73885fdc69fd232a1650d7753fef654e40de45/) | ⚠️ Unaudited |

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
| [sourcehat.com/audits/LiquidDriver](https://sourcehat.com/audits/LiquidDriver) | SourceHat (formerly Solidity Finance) | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://sourcehat.com/audits) | SourceHat | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21396] sourcehat.com/audits/LiquidDriver
- [24131] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
