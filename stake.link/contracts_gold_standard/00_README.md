# stake.link — Verified Contract Source Tree

Verified Solidity source for 20 high-priority stake.link contracts, fetched from Etherscan v2 API on **2026-05-07**. Total: 221 source files / ~790 KB.

Each subdirectory contains:
- `metadata.json` — address, contract name, compiler, optimization runs, license, proxy/impl pointer
- one or more `.sol` files — verified source preserving the original directory structure if the contract was verified via Etherscan's standard-json-input format

The fetch script that produced this tree is at `docs/gold-standard/fetch_stakelink_sources.py` (not committed to the public agnt-brief repo).

## Coverage selection

This is a curated subset of stake.link's ~70+ deployed contracts. Selection criteria:
1. Anchors of each product line (LINK, SDL, POL, ESP)
2. Contracts touching user funds or governance
3. The two Gnosis Safes (Treasury + Operational)

The remaining ~50 addresses (vesting NOPs, withdrawal pools per product line, CCIP receivers, etc.) are listed in `manifest_gold_standard.json` but their source is not bundled here — they share contract types with the anchors (`PriorityPool`, `WrappedSDToken`, `RebaseController` recur across product lines) so per-anchor source covers them functionally.

## Layout

| Slug | Address | Etherscan name | Compiler | Files |
|---|---|---|---|---|
| `01_stLINK_proxy` | `0xb8b295df…cD5` | ERC1967Proxy | 0.8.9 | 13 |
| `02_stLINK_impl` | `0x2FE5a394…597` | StakingPool | 0.8.22 | 20 |
| `03_LINK_PriorityPool_proxy` | `0xDdC796a6…0eA` | ERC1967Proxy | 0.8.9 | 14 |
| `04_LINK_PriorityPool_impl` | `0x6Fb9CC7d…d26` | PriorityPool | 0.8.22 | 24 |
| `05_wstLINK` | `0x911D86C7…03da` | WrappedSDToken | 0.8.15 | 1 |
| `06_LINK_CommunityVCS_proxy` | `0xAc12290b…1B5` | ERC1967Proxy | 0.8.9 | 14 |
| `07_LINK_OperatorVCS_proxy` | `0x4852e482…2A4` | ERC1967Proxy | 0.8.9 | 13 |
| `08_LINK_RebaseController` | `0x1711e93e…ec4` | RebaseController | 0.8.15 | 10 |
| `09_LINK_WithdrawalPool_proxy` | `0xa60B5146…248` | ERC1967Proxy | 0.8.20 | 13 |
| `10_LINKMigrator` | `0x08E11a9A…786` | LINKMigrator | 0.8.22 | 9 |
| `11_SDLToken_StakingAllowance` | `0xa95C5ebB…C23` | StakingAllowance | 0.8.15 | 1 |
| `12_SDLPool_proxy` | `0x0B2eF910…CA4d` | ERC1967Proxy | 0.8.9 | 14 |
| `13_GovernanceTimelock` | `0xb72d8F52…349F` | GovernanceTimelock | 0.8.15 | 12 |
| `14_stPOL_proxy` | `0x2ff4390d…753` | ERC1967Proxy | 0.8.20 | 13 |
| `15_wstPOL` | `0x2091d83592…5e6` | WrappedSDToken | 0.8.22 | 9 |
| `16_stESP_proxy` | `0x5273a756…e50` | ERC1967Proxy | 0.8.20 | 13 |
| `17_ESP_EspressoStrategy_proxy` | `0xF0fb3Aa0…344` | ERC1967Proxy | 0.8.20 | 13 |
| `18_ixETH_proxy` | `0x53532101…1fa1` | ERC1967Proxy | 0.8.9 | 13 |
| `19_TreasurySafe_proxy` | `0xB351EC0F…493D` | GnosisSafeProxy | 0.7.6 | 1 |
| `20_OperationalSafe_proxy` | `0xdedA4c43…d072` | GnosisSafeProxy | 0.7.6 | 1 |

## Notes on proxies vs. implementations

ERC1967 proxies have generic source (just the OpenZeppelin proxy boilerplate) — for actual logic, look at the impl folder. Where I fetched only the proxy (e.g. CommunityVCS, OperatorVCS), the Etherscan name is `ERC1967Proxy`; the actual implementation contracts (`CommunityVCS`, `OperatorVCS`) live at the implementation slot listed in `metadata.json` under `implementation`.

The `02_stLINK_impl` directory has the most comprehensive Solidity logic (`StakingPool` at compiler 0.8.22, 20 files including `RewardsPoolController`, `Strategy`, `VaultControllerStrategy`, `StakingRewardsPool`, etc.) — this is the real entry point for understanding the LINK liquid staking core.

## What's NOT here

- Polygon-side (chain 137) and Metis-side (chain 1088) contracts — these need Polygon and Metis Etherscan API endpoints
- Unverified source: `stLINK_WrappedTokenBridge` at `0x6C1E2D2c…1E82` is unverified on Etherscan
- Implementation contracts behind the proxies in slugs 06, 07, 09, 12, 14, 16, 17, 18 — fetch separately if needed via `metadata.json`'s `implementation` field

## Reproducibility

```bash
cd /path/to/meta-audit
source .env  # provides ETHERSCAN_API_KEY
python3 docs/gold-standard/fetch_stakelink_sources.py
```
