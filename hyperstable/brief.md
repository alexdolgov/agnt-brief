# Agentic Audit Brief: Hyperstable

## Project Overview

- Project: Hyperstable (`hyperstable`)
- Website: [https://app.hyperstable.xyz/r/DEFILLAMA](https://app.hyperstable.xyz/r/DEFILLAMA)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.783Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: hyperliquid
- Contract surface: 33 unique implementations (33 raw deployments)
- DeFi Llama TVL: $146,461.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 33 project-authored contract(s) across 1 chain(s); 4 ERC4626 vaults, 6 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (systemepoch, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 33; live-surface contracts included: 33 (33 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 16/29 (55.2%)
- Deployed-live implementations: 33 of 33 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 16/33
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 33
- Raw deployments: 33
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 4 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 16 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 14 | 42.4% | 2025-03 |
| 0x52 | Tier 2 | 8 | 24.2% | 2025-04 |
| Kato-Weiss | Tier 2 | 5 | 15.2% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BribeFactory | unknown | hyperliquid | n/a | [`0x058855...7e0ff1`](./contracts/hyperliquid-999/0x058855f5132b2518168e5b85cf2e44cab57e0ff1/) | ✅ Audited |
| DebtToken | unknown | hyperliquid | n/a | [`0x8ff0dd...c74bd8`](./contracts/hyperliquid-999/0x8ff0dd9f9c40a0d76ef1bcfaf5f98c1610c74bd8/) | ✅ Audited |
| EmissionScheduler | unknown | hyperliquid | n/a | [`0x0c063c...5c6f1f`](./contracts/hyperliquid-999/0x0c063cee3715737eb6ac6a45783b9323d05c6f1f/) | ✅ Audited |
| ExternalBribe | unknown | hyperliquid | n/a | [`0x11ce84...15e079`](./contracts/hyperliquid-999/0x11ce8455eae678d88e286f4695fb95a09a15e079/) | ✅ Audited |
| InternalBribe | unknown | hyperliquid | n/a | [`0x5a5688...a981d6`](./contracts/hyperliquid-999/0x5a5688e2c953321fd1f1dd35b1cd3baac1a981d6/) | ✅ Audited |
| LiquidationBuffer | unknown | hyperliquid | n/a | [`0x35b220...886578`](./contracts/hyperliquid-999/0x35b2200ca9f7298ad3be73bd1cbfcc20c7886578/) | ✅ Audited |
| LiquidationManager | unknown | hyperliquid | n/a | [`0x896703...cfd114`](./contracts/hyperliquid-999/0x8967034f7030230748ff60479ea8452190cfd114/) | ✅ Audited |
| Minter | unknown | hyperliquid | n/a | [`0xbb16ae...a93ba1`](./contracts/hyperliquid-999/0xbb16ae0b903f1a3810de5f600edbe8ce76a93ba1/) | ✅ Audited |
| Peg | unknown | hyperliquid | n/a | [`0x28245a...5c89db`](./contracts/hyperliquid-999/0x28245ab01298eaef7933bc90d35bd9dbca5c89db/) | ✅ Audited |
| PositionManager | unknown | hyperliquid | n/a | [`0x14e6cb...e8be80`](./contracts/hyperliquid-999/0x14e6cb6e5949c9ea691577757a11a903dce8be80/) | ✅ Audited |
| RewardsDistributor | unknown | hyperliquid | n/a | [`0x581686...283c49`](./contracts/hyperliquid-999/0x581686866e5b9f4f2d7adc4b4f36940531283c49/) | ✅ Audited |
| TokenRewardsDistributor | unknown | hyperliquid | n/a | [`0x2c30a9...7828af`](./contracts/hyperliquid-999/0x2c30a961e5b2aa618ab6a99beefd44ca5e7828af/) | ✅ Audited |
| Vault | unknown | hyperliquid | n/a | [`0x6714cd...bca6bb`](./contracts/hyperliquid-999/0x6714cd43536e7e242923ace3d301a3311dbca6bb/) | ✅ Audited |
| VeArtProxy | unknown | hyperliquid | n/a | [`0xaa170b...663ca8`](./contracts/hyperliquid-999/0xaa170b0f4f07d9eb34a0a7d0870a8f4f04663ca8/) | ✅ Audited |
| Voter | unknown | hyperliquid | n/a | [`0xf3113e...11908a`](./contracts/hyperliquid-999/0xf3113e4f80c84935e576cfd75f4423e9b911908a/) | ✅ Audited |
| VotingEscrow | unknown | hyperliquid | n/a | [`0xdb9a1b...4d4e23`](./contracts/hyperliquid-999/0xdb9a1bdc443dd11366b8a6dc8038144ecc4d4e23/) | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bonus | unknown | hyperliquid | n/a | [`0x25f029...858423`](./contracts/hyperliquid-999/0x25f029291631779c8f2f6324674e1e8996858423/) | ⚠️ Unaudited |
| Claimer | unknown | hyperliquid | n/a | [`0x7b2336...ef90f4`](./contracts/hyperliquid-999/0x7b2336f162ccad3eaa0a45334ed3e7fc36ef90f4/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x424a44...934bfb`](./contracts/hyperliquid-999/0x424a449cad8121f94feab2607ddc2d7e66934bfb/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | hyperliquid | n/a | [`0x793679...686583`](./contracts/hyperliquid-999/0x79367964c8f9b6deb993d0a50d128500b9686583/) | ⚠️ Unaudited |
| GaugeProviderV2 | unknown | hyperliquid | n/a | [`0xffe560...81d314`](./contracts/hyperliquid-999/0xffe560d89aed42fa3f40fc0f9a5ab85a3781d314/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | hyperliquid | n/a | [`0x47a2b1...e9ecab`](./contracts/hyperliquid-999/0x47a2b186da70d53319936477791d6723bfe9ecab/) | ⚠️ Unaudited |
| HyperSwapGaugeFactory | unknown | hyperliquid | n/a | [`0x9c287a...31bb35`](./contracts/hyperliquid-999/0x9c287a1efa774a84847833e323d873fc0231bb35/) | ⚠️ Unaudited |
| InterestDistributor | unknown | hyperliquid | n/a | [`0x2e6fda...6290d2`](./contracts/hyperliquid-999/0x2e6fda4324237969f683db2f30379919d86290d2/) | ⚠️ Unaudited |
| InterestDistributorOwner | unknown | hyperliquid | n/a | [`0x560bb7...724358`](./contracts/hyperliquid-999/0x560bb7dbfe6c6b53c0b6d23ab181798450724358/) | ⚠️ Unaudited |
| InterestRateStrategyV2 | unknown | hyperliquid | n/a | [`0xa05023...a031e9`](./contracts/hyperliquid-999/0xa05023d6f6074d8d3ac6f9819db5e6993da031e9/) | ⚠️ Unaudited |
| LiquidationManagerV2 | unknown | hyperliquid | n/a | [`0x401e28...0296dc`](./contracts/hyperliquid-999/0x401e28035ecf5976db0fa5b657cbb12b160296dc/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | hyperliquid | n/a | [`0x1730b2...c90081`](./contracts/hyperliquid-999/0x1730b28c4dff6e0b412d873c7eb03a9fbbc90081/) | ⚠️ Unaudited |
| PositionManagerV2 | unknown | hyperliquid | n/a | [`0x7ad97a...d1c24b`](./contracts/hyperliquid-999/0x7ad97a3b3535f83dd563cab45b2c6070ddd1c24b/) | ⚠️ Unaudited |
| PythOracle | unknown | hyperliquid | n/a | [`0x434b88...33de21`](./contracts/hyperliquid-999/0x434b8847d53fd2392a12ed5458cae3707c33de21/) | ⚠️ Unaudited |
| ReferralRegistry | unknown | hyperliquid | n/a | [`0x3fed84...11baf8`](./contracts/hyperliquid-999/0x3fed84f3b58bdc8b4857aaf6902916224e11baf8/) | ⚠️ Unaudited |
| VaultV2 | unknown | hyperliquid | n/a | [`0xe7ceac...d1f531`](./contracts/hyperliquid-999/0xe7ceaccaa613d8fde4e214d7f71c85933cd1f531/) | ⚠️ Unaudited |
| WrappedStakedHypeVault | unknown | hyperliquid | n/a | [`0xc55fab...2f67fc`](./contracts/hyperliquid-999/0xc55fab3ddcab42b6dd2358fbdc59950f832f67fc/) | ⚠️ Unaudited |

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
| [report.md (also discovered via alternate URL)](https://github.com/hyperstable/audits/blob/main/2025/0x52/03-20/report.md) | 0x52 | Audit | 2025-04 | aging | Direct | contract_name | 8 | high |
| [report.pdf](https://github.com/hyperstable/audits/blob/main/2025/Anthias/05-31/report.pdf) | Anthias | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [report.pdf](https://github.com/hyperstable/audits/blob/main/2025/Kato-Weiss/03-12/report.pdf) | Kato-Weiss | Audit | 2024-03 | stale | Direct | contract_name | 5 | high |
| [report.pdf](https://github.com/hyperstable/audits/blob/main/2025/Pashov/03-13/report.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | contract_name | 14 | high |
| [report.pdf](https://github.com/hyperstable/audits/blob/main/2025/Pashov/03-19/report.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | contract_name | 14 | high |
| [Audits](https://hyperstable.gitbook.io/docs/security/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x25f029...858423`](./contracts/hyperliquid-999/0x25f029291631779c8f2f6324674e1e8996858423/) | Bonus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7b2336...ef90f4`](./contracts/hyperliquid-999/0x7b2336f162ccad3eaa0a45334ed3e7fc36ef90f4/) | Claimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xffe560...81d314`](./contracts/hyperliquid-999/0xffe560d89aed42fa3f40fc0f9a5ab85a3781d314/) | GaugeProviderV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x9c287a...31bb35`](./contracts/hyperliquid-999/0x9c287a1efa774a84847833e323d873fc0231bb35/) | HyperSwapGaugeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x2e6fda...6290d2`](./contracts/hyperliquid-999/0x2e6fda4324237969f683db2f30379919d86290d2/) | InterestDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x560bb7...724358`](./contracts/hyperliquid-999/0x560bb7dbfe6c6b53c0b6d23ab181798450724358/) | InterestDistributorOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xa05023...a031e9`](./contracts/hyperliquid-999/0xa05023d6f6074d8d3ac6f9819db5e6993da031e9/) | InterestRateStrategyV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x401e28...0296dc`](./contracts/hyperliquid-999/0x401e28035ecf5976db0fa5b657cbb12b160296dc/) | LiquidationManagerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7ad97a...d1c24b`](./contracts/hyperliquid-999/0x7ad97a3b3535f83dd563cab45b2c6070ddd1c24b/) | PositionManagerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x434b88...33de21`](./contracts/hyperliquid-999/0x434b8847d53fd2392a12ed5458cae3707c33de21/) | PythOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x3fed84...11baf8`](./contracts/hyperliquid-999/0x3fed84f3b58bdc8b4857aaf6902916224e11baf8/) | ReferralRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xe7ceac...d1f531`](./contracts/hyperliquid-999/0xe7ceaccaa613d8fde4e214d7f71c85933cd1f531/) | VaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xc55fab...2f67fc`](./contracts/hyperliquid-999/0xc55fab3ddcab42b6dd2358fbdc59950f832f67fc/) | WrappedStakedHypeVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=43

Zero-match audit list:

- [20545] report.pdf
- [20549] Audits

Fork inheritance lineage and inherited audits are included when available.
