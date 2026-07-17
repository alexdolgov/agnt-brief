# Agentic Audit Brief: EigenCloud

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: EigenCloud (`eigencloud`)
- Website: [https://www.eigencloud.xyz](https://www.eigencloud.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sepolia
- Contract surface: 75 unique implementations (75 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $4,439,614,231.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for EigenCloud. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across ethereum, sepolia. Structural roles: 5 supporting, 1 core, 1 infra. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: supporting (5), core (1), infra (1)
- Contract kinds: abstract (6), contract (1)
- Detected standards: erc1967proxy (5), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (6)
- Upgradeable-pattern rows: 6

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 7; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 65 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 58
- Unique implementations: 75
- Raw deployments: 75
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BackingEigen | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-236696 | `0x83e9115d334d248ce39a6f36144aeab5b3456e75` | ⚠️ Unaudited |
| DelayedWithdrawalRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44bcb0e01cd0c5060d4bb1a07b42580ef983e2af` | ⚠️ Unaudited |
| DelegationManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-236695 | `0x39053d51b77dc0d36036fc1fcc8cb819df8ef37a` | ⚠️ Unaudited |
| Eigen | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b716d0ce7c19445152171c6f6e92d10b6aae451` | ⚠️ Unaudited |
| EigenPod | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-236692 | `0x5a2a4f2f3c18f09179b6703e63d9edd165909073` | ⚠️ Unaudited |
| EigenPodManager | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-236694 | `0x91e677b07f7af907ec9a428aafa9fc14a0d3a338` | ⚠️ Unaudited |
| EigenStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27e7a3a81741b9fcc5ad7edcbf9f8a72a5c00428` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x179f0063d87bb7ca4f75ca693566018ca9eb55ba` | ⚠️ Unaudited |
| PauserRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c431c66f4de941d089625e5b423d00707977060` | ⚠️ Unaudited |
| ProxyAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-236691 | `0x8b9566ada63b64d1e1dcf1418b43fd1433b72444` | ⚠️ Unaudited |
| SignedDistributor | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-236690 | `0x035bdaeab85e47710c27eda7fd754ba80ad4ad02` | ⚠️ Unaudited |
| Slasher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd92145c07f8ed1d392c1b88017934e301cc1c3cd` | ⚠️ Unaudited |
| StrategyBaseTVLLimits | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-236693 | `0x1bee69b7dfffa4e2d53c2a2df135c388ad25dcd2` | ⚠️ Unaudited |
| StrategyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d25eef8cfedaa47d31fe2346726de1c21e342fb` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6db1a8c5a981d1536266d2a393c5f8ddb210eaf` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2520c6b2c1fbe1813ab5c7c1018cda39529e9ff2` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab23463e3f7098488ef1a299dbd377c027f8e0c1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (58)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x0011fa2c512063c495f77296af8d195f33a8dd38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x066cf95c1bf0927124dfb8b02b401bc23a79730d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x0b415f75980d863872c3eb8caa76e6ec8bc81536` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x0e19e56e41d42137d00dd4f51ec2f613e50cacf4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x0f264e714a3c03309f4041db26229ef4e9b00f5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x12988b679aa497c30a8d1850ecc4dc7700383173` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x151ece1662e530f4889f016a63fc58f4b72175d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1afc1e6c6ba44b21ce621b5b41faa085682c68e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x1bef05c7303d44e0e2fcd2a19d993eded4c51b5b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x287381b1570d9048c4b4c7ec94d21ddb8aa1352a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2e3d6c0744b10eb0a4e6f679f71554a39ec47a5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x321604fda757e8728d7b338c284613e2a0136d69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x3f98d8b9cfa2102ad340c19648e8bb3c06fbc5ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x41675c099f32341bf84bfc5382af534df5c7461a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x424246ef71b01ee33aa33ac590fd9a0855f5efbc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x42583067658071247ec8ce0a516a58f682002d07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x427e627bc7e83cac0f84337d3ad94230c32697d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x44632dfbdcb6d3e21ef613b0ca8a6a0c618f5a37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x46cfa3c2eade97d53739120b87a63f739b9616db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x49a800bffa5b561dad94adf4ea9bfe35bbeb5adb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x4a93d276ea78b48be9d8bb864bacdd5d5a713084` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x4fda8998ec3b7d4b4a612d45feb8fb36734470f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x56bfeb94879f4543e756d26103976c567256034a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x56e88cb4f0136fc27d95499de4be2acf47946fa1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x59b11b191b572888703e150e45f5015e0ffcf525` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x59c8d715dca616e032b744a753c017c9f3e16bf4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x5ac1705931e999aa267167dae57b41fa690bff61` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x5ae8152fb88c26ff9ca5c014c94fca3c68029349` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x63aae451780090f50ad323aaef155f63a29d20f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x65147e9916152c1ebdbad8a6f3e145b4bdee2d6f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x67cec1be4de9d4a96bd6db28f9ced6a1bd562ac6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x6f8459810197cc9fe123bbeb918451757a4fbac6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x6ffe77c321a773e2a27b0b0a31c5e1bbda83672b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7a2b8c559a8c8c71a9d364ad250fce5a24b18f5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7d59f252bd32733f8850c50bf6bb2e46bf37e6f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x7ec6a02235bf8d8a1fdb894ad2e1573192bfbd6f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x87cffb49a29d4dc1c0842c70a75edba9b62e4f31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8b29d91e67b013e855eafe0ad704ac4ab086a574` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8e93249a6c37a32024756aabd813e6139b17d1d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x8f31bfc631b51a39f027a7c9750f7b5cce9e5cef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa4db30d08d8bbca00d40600bee9f029984db162a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa591635de4c254bd3fa9c9db9000ea6488344c28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa6fec50d15fcae6d3ac8755e350c747f7733c0f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xa789c91ecddae96865913130b786140ee17af545` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb02a15c6bd0882b35e9936a9579f35fb26e11476` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb094ba769b4976dc37fc689a76675f31bc4923b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb1b6dad80ad719bc5a700f8f3c9da46224d3b533` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb3cd1a457dea9a9a6f6406c6419b1c326670a96f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xb99cc53e8db7018f557606c2a5b066527bf96b26` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xbe2f96efff467c6773dc91ea62ab34c73195a0b5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xc5b857a92245f64e9d90ccc5b096db82eb77eb5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd4a7e1bd8015057293f0d0a557088c286942e84b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd9db270c1b5e3bd161e8c8503c55ceabee709552` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xe8e469151e8d561be94a4838b582b7da25487afc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xebda1fce8527c0c9ac94a60d7eca37640415b720` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xee41826b7d5b89e7f5eed6a831b4efd69fc9ca1a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xfc868562d93c4dc192419e970c220279cdab7b26` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xff58a373c18268f483c1f5ca03cf885c0c43373a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Certora - Eigenlayer Incentive Council.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/Certora%20-%20Eigenlayer%20Incentive%20Council.pdf) | Certora | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [EigenLayer Merkle - Certora - Security Assessment Final Report - July 2025.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/EigenLayer%20Merkle%20-%20Certora%20-%20Security%20Assessment%20Final%20Report%20-%20July%202025.pdf) | Certora | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [M1 Mainnet - Sigma Prime - May 2023.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/M1%20Mainnet%20-%20Sigma%20Prime%20-%20May%202023.pdf) | Sigma Prime | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Rewards v2 - SigmaPrime - Dec 2024.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/Rewards%20v2%20-%20SigmaPrime%20-%20Dec%202024.pdf) | Sigma Prime | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [RewardsCoordinator - Sigma Prime - May 2024.pdf](https://github.com/Layr-Labs/eigenlayer-contracts/blob/main/audits/RewardsCoordinator%20-%20Sigma%20Prime%20-%20May%202024.pdf) | Sigma Prime | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20688] Certora - Eigenlayer Incentive Council.pdf — no match: The provided text is a GitHub page navigation and does not contain the actual audit report content. No contracts or dates could be extracted.
- [20691] EigenLayer Merkle - Certora - Security Assessment Final Report - July 2025.pdf — no match: Only one contract in scope: Merkle library.
- [20696] M1 Mainnet - Sigma Prime - May 2023.pdf — no match: Contracts extracted from 'Asset' fields in detailed findings. Date from cover page: 'May, 2023' -> last day of month.
- [20703] Rewards v2 - SigmaPrime - Dec 2024.pdf — no match: Extracted contracts from scope section and findings assets. Date from cover page: 'January, 2025' -> last day of month.
- [20705] RewardsCoordinator - Sigma Prime - May 2024.pdf — no match: Only one contract in scope: RewardsCoordinator (originally PaymentCoordinator). Offchain rewards calculation docs were also reviewed but are not a smart contract.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| EigenLayer Merkle - Certora - Security Assessment Final Report - July 2025.pdf | Merkle | unmatched — not counted | — | listed in scope | no |
| M1 Mainnet - Sigma Prime - May 2023.pdf | Slasher | unmatched — not counted | — | Asset listed in findings: EGN2-01, EGN2-05 | no |
| M1 Mainnet - Sigma Prime - May 2023.pdf | StrategyManager | unmatched — not counted | — | Asset listed in findings: EGN2-01, EGN2-02, EGN2-04 | no |
| M1 Mainnet - Sigma Prime - May 2023.pdf | DelegationManager | unmatched — not counted | — | Asset listed in finding: EGN2-02 | no |
| M1 Mainnet - Sigma Prime - May 2023.pdf | DelayedWithdrawalRouter | unmatched — not counted | — | Asset listed in finding: EGN2-03 | no |
| M1 Mainnet - Sigma Prime - May 2023.pdf | EigenPod | unmatched — not counted | — | Referenced in test suite and finding EGN2-03 | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | RewardsCoordinator | unmatched — not counted | — | listed in scope | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | RewardsCoordinatorStorage | unmatched — not counted | — | listed in scope | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | IRewardsCoordinator | unmatched — not counted | — | listed in scope | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | ServiceManagerBase | unmatched — not counted | — | listed in scope | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | ServiceManagerBaseStorage | unmatched — not counted | — | listed in scope | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | IServiceManager | unmatched — not counted | — | listed in scope | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | ECDSAServiceManagerBase | unmatched — not counted | — | listed in scope | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | operatorAvsSplitSnapshots | unmatched — not counted | — | mentioned in findings as asset | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | operatorPISplitSnapshots | unmatched — not counted | — | mentioned in findings as asset | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | operatorDirectedRewardSubmissions | unmatched — not counted | — | mentioned in findings as asset | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | baseEigenState | unmatched — not counted | — | mentioned in findings as asset | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | OperatorPISplitModel | unmatched — not counted | — | mentioned in findings as asset | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | OperatorDirectedRewardSubmissionsModel | unmatched — not counted | — | mentioned in findings as asset | no |
| Rewards v2 - SigmaPrime - Dec 2024.pdf | OperatorDirectedRewardSubmission | unmatched — not counted | — | mentioned in findings as asset | no |
| RewardsCoordinator - Sigma Prime - May 2024.pdf | RewardsCoordinator | unmatched — not counted | — | Scope section states: 'strictly limited to PaymentCoordinator.sol file at commit 3eec97d. Note, the file in scope has been later renamed to RewardsCoordinator.sol at commit d8ac41a.' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 58 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: n/a

Zero-match audit list:

- [20688] Certora - Eigenlayer Incentive Council.pdf
- [20691] EigenLayer Merkle - Certora - Security Assessment Final Report - July 2025.pdf
- [20696] M1 Mainnet - Sigma Prime - May 2023.pdf
- [20703] Rewards v2 - SigmaPrime - Dec 2024.pdf
- [20705] RewardsCoordinator - Sigma Prime - May 2024.pdf

Fork inheritance lineage and inherited audits are included when available.
