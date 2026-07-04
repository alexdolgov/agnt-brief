# Agentic Audit Brief: Tangent Finance

## Project Overview

- Project: Tangent Finance (`tangent-finance`)
- Website: [https://app.tangent.finance/](https://app.tangent.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:59.444Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 32 unique implementations (32 raw deployments)
- DeFi Llama TVL: $3,145,684.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 27 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 17 common project-authored base contract(s) (oraclebase, erc20basic, blacklistable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 32; live-surface contracts included: 32 (32 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/32 (0.0%)
- Deployed-live implementations: 32 of 32 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/32
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 32
- Raw deployments: 32
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregatorStablePriceV3 - aggregator of stablecoin prices for crvUSD | unknown | ethereum | n/a | [`0x1770b6...eb9fea`](./contracts/ethereum-1/0x1770b6426e2028423a99f9cc523a1aa81beb9fea/) | ⚠️ Unaudited |
| AggregatorStablePriceV3 - aggregator of stablecoin prices for USG | unknown | ethereum | n/a | [`0x970b2f...dd2f97`](./contracts/ethereum-1/0x970b2f2cec66f92de81dae6af363d1d135dd2f97/) | ⚠️ Unaudited |
| BasicERC20Market | unknown | ethereum | n/a | [`0xb10ec7...8642b8`](./contracts/ethereum-1/0xb10ec742bc530b4fd5484f6364993d9bd98642b8/) | ⚠️ Unaudited |
| ControlTower | unknown | ethereum | n/a | [`0xf3f766...267215`](./contracts/ethereum-1/0xf3f7669dceed2f985815011c19ed68f667267215/) | ⚠️ Unaudited |
| ConvexCrvLPMarket | unknown | ethereum | n/a | [`0x68e75b...a0ebfb`](./contracts/ethereum-1/0x68e75bfc46fe4cd2eaa1ceb1fd68990916a0ebfb/) | ⚠️ Unaudited |
| ConvexFxnLPMarket | unknown | ethereum | n/a | [`0x849cf8...81b754`](./contracts/ethereum-1/0x849cf82e0ebcfeab8270cc5a3ea3b26cd481b754/) | ⚠️ Unaudited |
| CurveGaugeMarket | unknown | ethereum | n/a | [`0x4742a5...8f716f`](./contracts/ethereum-1/0x4742a56668fbacbc11087f516c4b01ebc48f716f/) | ⚠️ Unaudited |
| FeeHarvester | unknown | ethereum | n/a | [`0x8bd47c...8d8f0d`](./contracts/ethereum-1/0x8bd47c9b4309b5069ae2c0f925f26e1c368d8f0d/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| IRCalculator | unknown | ethereum | n/a | [`0xb4e1d3...a6e88b`](./contracts/ethereum-1/0xb4e1d3bbd2843263d58b4d648c599512cea6e88b/) | ⚠️ Unaudited |
| MarketCreator | unknown | ethereum | n/a | [`0x214c8a...6f2781`](./contracts/ethereum-1/0x214c8a1023b30032a2eded109146658c6d6f2781/) | ⚠️ Unaudited |
| MarketViewer | unknown | ethereum | n/a | [`0x05afee...a2477d`](./contracts/ethereum-1/0x05afee1b483dda7273be250f93219b607ea2477d/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| OracleChainlinkWrapper | unknown | ethereum | n/a | [`0x06acea...35b292`](./contracts/ethereum-1/0x06acead7af9abe0b2a3b2e914b54c9368935b292/) | ⚠️ Unaudited |
| OracleCoinFromCurveLP | unknown | ethereum | n/a | [`0x0124b3...d0b074`](./contracts/ethereum-1/0x0124b3e9a4477ac694b37fbf6314fb5d7ed0b074/) | ⚠️ Unaudited |
| OracleDuoPoolStable | unknown | ethereum | n/a | [`0x069575...168542`](./contracts/ethereum-1/0x0695758772db50a0aa0255afdb7535de23168542/) | ⚠️ Unaudited |
| OracleRedstoneWrapperFallback | unknown | ethereum | n/a | [`0x01ddf7...40ff88`](./contracts/ethereum-1/0x01ddf74e6e27d73c12e16047dc78d0398b40ff88/) | ⚠️ Unaudited |
| PauserProxy | unknown | ethereum | n/a | [`0x10b1f3...e6b5fa`](./contracts/ethereum-1/0x10b1f36452e27f08b0b5747f577ff816b0e6b5fa/) | ⚠️ Unaudited |
| Peg Keeper Regulator | unknown | ethereum | n/a | [`0x887706...b3f19e`](./contracts/ethereum-1/0x887706612730b7a227f3bffd8c9a6e6c3cb3f19e/) | ⚠️ Unaudited |
| Peg Keeper V2 | unknown | ethereum | n/a | [`0x8a7f16...506d4e`](./contracts/ethereum-1/0x8a7f16508d1e8b48bdf36023f378cc04d9506d4e/) | ⚠️ Unaudited |
| PendlePTRouter | unknown | ethereum | n/a | [`0x8b5ace...cd2f52`](./contracts/ethereum-1/0x8b5ace406e682a44afcc7bcab4f20bccb7cd2f52/) | ⚠️ Unaudited |
| RewardAccumulator | unknown | ethereum | n/a | [`0x1461d7...3ce639`](./contracts/ethereum-1/0x1461d76aa1c9c523398301d9174098c6d53ce639/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x461b62...2c27ca`](./contracts/ethereum-1/0x461b62cb3a7e9df8f800ae058ae92f855f2c27ca/) | ⚠️ Unaudited |
| StakeDaoVaultV2Market | unknown | ethereum | n/a | [`0x161d6f...fc099f`](./contracts/ethereum-1/0x161d6fa48b0e0152763c3929a3813bd177fc099f/) | ⚠️ Unaudited |
| USG | unknown | ethereum | n/a | [`0xb1c2db...5ae1b1`](./contracts/ethereum-1/0xb1c2db5d6ca03fce73dbd304d320bf76c55ae1b1/) | ⚠️ Unaudited |
| Yearn V3 Vault | unknown | ethereum | n/a | [`0xf17d6f...ef6900`](./contracts/ethereum-1/0xf17d6f98a5c6eaa99d149079984119e0a4ef6900/) | ⚠️ Unaudited |
| ZappingProxy | unknown | ethereum | n/a | [`0xa9e002...719c99`](./contracts/ethereum-1/0xa9e0021d8917c51f496823605d218d7e78719c99/) | ⚠️ Unaudited |

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
| [drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view](https://drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view) | Egis Security | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2025.09.11 - Final - USG - Tangent Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.09.11%20-%20Final%20-%20USG%20-%20Tangent%20Audit%20Report.pdf) | Sherlock | Contest | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Tangent-security-review_2025-10-30.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Tangent-security-review_2025-10-30.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Tangent-security-review_2025-12-08.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Tangent-security-review_2025-12-08.pdf) | Pashov Audit Group | Audit | 2025-12 | fresh | Direct | n/a | 0 | n/a |
| [app.zerocool.ai/share/LazsB_w5GNqH-GQWkZTOTZ6JkOAxbusdcMRrirDEHVg](https://app.zerocool.ai/share/LazsB_w5GNqH-GQWkZTOTZ6JkOAxbusdcMRrirDEHVg?finding=M-01) | Zerocool | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21131] drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view
- [21132] 2025.09.11 - Final - USG - Tangent Audit Report.pdf
- [21133] Tangent-security-review_2025-10-30.pdf
- [21134] Tangent-security-review_2025-12-08.pdf
- [21135] app.zerocool.ai/share/LazsB_w5GNqH-GQWkZTOTZ6JkOAxbusdcMRrirDEHVg

Fork inheritance lineage and inherited audits are included when available.
