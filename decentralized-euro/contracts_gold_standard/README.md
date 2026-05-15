# Decentralized Euro — Gold Standard Contract Source Inventory

This directory accompanies [`brief_gold_standard.md`](../brief_gold_standard.md), [`SCOPE_NOTE_gold_standard.md`](../SCOPE_NOTE_gold_standard.md), and [`manifest_gold_standard.json`](../manifest_gold_standard.json). It contains **verified source code** for every dEURO-attributable contract on the three chains the protocol actually deploys on (Ethereum, Optimism, Base), fetched directly from Etherscan v2's `getsourcecode` API. Each contract sits in its own subdirectory with a `metadata.json` and the source files preserving the directory layout the auditor verified against.

**Inventory:** 27 contracts · 462 source files · 2,113.7 KB total. Fetched 2026-05-15.

**Coverage by chain:**

| Chain | Chain ID | Contracts fetched | Notes |
|---|---:|---:|---|
| Ethereum | 1 | 24 | All canonical mainchain contracts: 10 V3 active + 5 V2 retained + 9 StablecoinBridge instances |
| Optimism | 10 | 1 | `BridgedDecentralizedEURO` L2 wrapper |
| Base | 8453 | 2 | `BridgedDecentralizedEURO` + `BridgedDEPS` L2 wrappers |
| **Total** | — | **27** | — |

**Chains NOT in this inventory** (dEURO does not deploy there, despite v1 brief misattributions): Polygon (chain 137), Arbitrum (chain 42161). See [`../brief_gold_standard.md`](../brief_gold_standard.md) §"Scope — Not dEURO" for the per-row rejection evidence.

## Per-contract layout

### Ethereum (chain_id 1) — V3 active set

| Slug | Etherscan name | Compiler | Files | KB | Address |
|---|---|---|---:|---:|---|
| `01_eth_decentralizedEURO/` | DecentralizedEURO | v0.8.26 | 27 | 175.4 | [`0xbA3f…0a3ea`](https://etherscan.io/address/0xbA3f535bbCcCcA2A154b573Ca6c5A49BAAE0a3ea) |
| `02_eth_equity/` | Equity | v0.8.26 | 27 | 175.4 | [`0xc711…8eE6`](https://etherscan.io/address/0xc71104001A3CCDA1BEf1177d765831Bd1bfE8eE6) |
| `03_eth_depsWrapper/` | DEPSWrapper | v0.8.26 | 35 | 201.9 | [`0x1037…A380`](https://etherscan.io/address/0x103747924E74708139a9400e4Ab4BEA79FFFA380) |
| `04_eth_savings_v3/` | Savings | v0.8.26 | 5 | 13.9 | [`0x7602…d3D9`](https://etherscan.io/address/0x760233b90e45d186A9A98E911B115F7F4B90d3D9) |
| `05_eth_mintingHub_v3/` | MintingHub | v0.8.26 | 16 | 55.8 | [`0x66AC…4f7B`](https://etherscan.io/address/0x66AcC54a0C64255137b8993CB4972B0901684f7B) |
| `06_eth_positionFactory_v3/` | PositionFactory | v0.8.26 | 13 | 64.9 | [`0x3a39…fE81`](https://etherscan.io/address/0x3a3985a96b1B51E6d914bc7C9e89fD6Ba6dEfE81) |
| `07_eth_positionRoller_v3/` | PositionRoller | v0.8.26 | 10 | 24.1 | [`0x5C22…C5CD`](https://etherscan.io/address/0x5C22d5b752b2121faE7F6f0069252B03B2F7c5CD) |
| `08_eth_savingsVaultDEURO_v3/` | SavingsVaultDEURO | v0.8.26 | 19 | 138.0 | [`0x75Be…2979`](https://etherscan.io/address/0x75Beb37A3C86eE4c38931E2a9319E078da612979) |
| `09_eth_frontendGateway/` | FrontendGateway | v0.8.26 | 46 | 239.1 | [`0x5c49…0994`](https://etherscan.io/address/0x5c49C00f897bD970d964BFB8c3065ae65a180994) |
| `10_eth_coinLendingGateway/` | CoinLendingGateway | v0.8.26 | 16 | 41.0 | [`0x1DA3…89D2`](https://etherscan.io/address/0x1DA37D613FB590eeD37520b72e9c6F0F6eee89D2) |

### Ethereum (chain_id 1) — V2 retained set

| Slug | Etherscan name | Compiler | Files | KB | Address |
|---|---|---|---:|---:|---|
| `11_eth_mintingHubGateway_v2/` | MintingHubGateway | v0.8.26 | 17 | 50.6 | [`0x8B3c…4618`](https://etherscan.io/address/0x8B3c41c649B9c7085C171CbB82337889b3604618) |
| `12_eth_savingsGateway_v2/` | SavingsGateway | v0.8.26 | 8 | 18.4 | [`0x0734…2303`](https://etherscan.io/address/0x073493d73258C4BEb6542e8dd3e1b2891C972303) |
| `13_eth_positionFactory_v2/` | PositionFactory | v0.8.26 | 15 | 59.9 | [`0x1671…e5A8`](https://etherscan.io/address/0x167144d66AC1D02EAAFCa3649ef3305ea31Ee5A8) |
| `14_eth_positionRoller_v2/` | PositionRoller | v0.8.26 | 12 | 24.4 | [`0x4CE0…Dc79`](https://etherscan.io/address/0x4CE0AB2FC21Bd27a47A64F594Fdf7654Ea57Dc79) |
| `15_eth_savingsVault_v2/` | SavingsVaultDEURO | v0.8.26 | 19 | 137.9 | [`0x1e9f…fA40`](https://etherscan.io/address/0x1e9f008B1C538bE32F190516735bF1C634B4FA40) |

### Ethereum (chain_id 1) — Stablecoin Bridge family

The nine `StablecoinBridge` deployments all compile from the same source — Etherscan returns 12 files / 31.0 KB for each. They differ only in their constructor parameters (source EUR stablecoin address, mint `limit`, `horizon` weeks). Auditors should diff the bytecode rather than the source; the bridges are *intentionally* uniform.

| Slug | Source stablecoin | Address |
|---|---|---|
| `16_eth_bridgeEURT/` | Tether EURT | [`0x2353…609f`](https://etherscan.io/address/0x2353D16869F717BFCD22DaBc0ADbf4Dca62C609f) |
| `17_eth_bridgeEUROP/` | Schuman EUROP | [`0x3EF3…0341`](https://etherscan.io/address/0x3EF3d03EFCc1338d6210946f8cF5Fb1a8b630341) |
| `18_eth_bridgeEURR/` | Hadron EURR | [`0x20B0…f1a7`](https://etherscan.io/address/0x20B0a153fF16c7B1e962FD3D3352A00cf019f1a7) |
| `19_eth_bridgeEURI/` | Banking Circle EURI | [`0xb66A…9afe`](https://etherscan.io/address/0xb66A40934a996373fA7602de9820C6bf3e8c9afE) |
| `20_eth_bridgeEURA/` | Angle EURA | [`0x0562…1702`](https://etherscan.io/address/0x05620F4bB92246b4e067EBC0B6f5c7FF6B771702) |
| `21_eth_bridgeEURC/` | Circle EURC | [`0xB4ff…2fd1`](https://etherscan.io/address/0xB4fF7412f08C22d7381885e8BdA9EE9825092fd1) |
| `22_eth_bridgeEURS/` | Stasis EURS | [`0x73f3…5897`](https://etherscan.io/address/0x73f38ca06b27eaefb1612d062d885f58924f5897) |
| `23_eth_bridgeEURE/` | Monerium EURe | [`0x4dfd…13b1`](https://etherscan.io/address/0x4dfd460d54854087af195906a2f260aa483a13b1) |
| `24_eth_bridgeVEUR/` | VNX VEUR | [`0x76d8…692b`](https://etherscan.io/address/0x76d8f514554a4a8e5d6103875f2dd7a67543692b) |

> The v1 pipeline brief mis-classified `bridgeVEUR` (`0x76d8…692b`) as "unnamed unknown" — Etherscan verifies it as `StablecoinBridge` and the canonical `@deuro/eurocoin/exports/address.config.ts` registry confirms it as the bridge for VNX EUR.

### Optimism (chain_id 10)

| Slug | Etherscan name | Compiler | Files | KB | Address |
|---|---|---|---:|---:|---|
| `30_op_bridgedDecentralizedEURO/` | BridgedDecentralizedEURO | v0.8.26 | 23 | 137.9 | [`0x1B5F…a264`](https://optimistic.etherscan.io/address/0x1B5F7fA46ED0F487F049C42f374cA4827d65A264) |

### Base (chain_id 8453)

| Slug | Etherscan name | Compiler | Files | KB | Address |
|---|---|---|---:|---:|---|
| `40_base_bridgedDecentralizedEURO/` | BridgedDecentralizedEURO | v0.8.26 | 23 | 137.9 | [`0x1B5F…a264`](https://basescan.org/address/0x1B5F7fA46ED0F487F049C42f374cA4827d65A264) |
| `41_base_bridgedDEPS/` | BridgedDEPS | v0.8.26 | 23 | 137.9 | [`0x5F67…2722`](https://basescan.org/address/0x5F674bF6d559229bDd29D642d2e0978f1E282722) |

## Per-directory contents

Each contract subdirectory contains:

- `metadata.json` — chain ID, address, Etherscan-reported contract name, dEURO-doc role label, compiler version, optimization settings, license, proxy/implementation flags, EVM version.
- The verified source files. Multi-file contracts preserve the directory layout the developer submitted to Etherscan (e.g. `@openzeppelin/contracts/token/ERC20/ERC20.sol`, `contracts/DecentralizedEURO.sol`, `contracts/impl/ERC3009.sol`, `contracts/interface/IDecentralizedEURO.sol`).

A consolidated `_fetch_summary.json` at this directory's root records the fetch result per contract (file count, byte size, etherscan name, compiler version, multi-file kind).

## How these were fetched

```python
# /tmp/fetch_deuro_sources.py (kept in meta-audit working directory)
GET https://api.etherscan.io/v2/api?chainid=<id>&module=contract&action=getsourcecode&address=<addr>&apikey=<key>
```

Etherscan v2 is the unified multi-chain endpoint; the same `ETHERSCAN_API_KEY` covers chains 1, 10, and 8453 (the only chains dEURO deploys on). For multi-file verifications, Etherscan returns the source as a `{{...}}`-wrapped Standard JSON Input string; the script parses that and recreates each file's path. All 27 fetches succeeded on first attempt.

## Notable observations

- **Single compiler across the entire codebase**: every contract is compiled with `v0.8.26+commit.8a97fa7a`, optimizer enabled with `runs=200`, EVM target `paris`. This is unusual consistency — most multi-contract protocols mix compiler versions across deployment batches. It reflects dEURO's disciplined "deploy the whole release together" pipeline plus the Frankencoin-inherited preference for single-version compilation.
- **All contracts are non-proxy**: every Etherscan `Proxy: 0` in the metadata. dEURO has no upgrade authority; the V3 migration was implemented as a *new deployment* registered with the existing dEURO token via `suggestMinter`, not as a proxy upgrade.
- **`01_eth_decentralizedEURO/` and `02_eth_equity/` ship identical source bundles**, because both `DecentralizedEURO` and `Equity` are declared in the same multi-file submission (Etherscan's verification covers the entire bundle). The contracts deployed at the two addresses share source; only the `ContractName` in metadata distinguishes which compiled contract each address contains.
- **The 9 StablecoinBridge entries are byte-identical source bundles** (12 files / 31.0 KB each). The constructor immutable parameters (`eur`, `dEURO`, `limit`, `horizon`) are baked into each deployment's bytecode but the source code is the same. The only audit-evaluable difference is the constructor argument set.
- **The L2 BridgedDecentralizedEURO contracts (Optimism + Base) ship the same source bundle** (23 files / 137.9 KB) at the same L2 address `0x1B5F…a264`. The OP-stack standard bridge predeploy at `0x4200…0010` deploys an L2 token at a deterministic address derived from the L1 token address — hence the same address on both OP and Base.
- **BridgedDEPS shares the same source bundle (23 files / 137.9 KB)** with BridgedDecentralizedEURO, just compiled to a different name. Both subclass dEURO's `contracts/BridgedToken.sol`.
- **No standalone admin/multisig directories**: unlike Equilibria (which has `GnosisSafeProxy` directories for admin Safe and timelock), dEURO has *no admin keys* — governance is fully on-chain via the nDEPS share-vote mechanism. The `Equity` contract IS the governance contract (see `02_eth_equity/contracts/Equity.sol` for the `votesDelegated`, `canRedeem`, and `calculateVotesAt` functions).

## How to use this inventory

- **For audit scoping:** treat the V3 set (`04_*` through `08_*`, plus `09_eth_frontendGateway/` and `10_eth_coinLendingGateway/`) as the priority surface. Only the V3 internal audit (in `github.com/d-EURO/smartContracts/audits/V3/internal-audit/`) covers those; external audit coverage is the open gap.
- **For diff against Frankencoin upstream:** the upstream code is at `github.com/Frankencoin-ZCHF/FrankenCoin/tree/main/contracts` at commit `a2ce625c` (Dec 2, 2024 — the fork point). Renamings: `ZCHF → dEURO`, `Frankencoin → DecentralizedEURO`, `FPS → nDEPS`, `WFPS → DEPS`. The upstream README lists the enumerated Solidity deltas.
- **For diff between V2 and V3:** compare `11_eth_mintingHubGateway_v2/contracts/MintingHubGateway.sol` against `05_eth_mintingHub_v3/contracts/MintingHub.sol` — the V3 README in the smartContracts repo enumerates the major changes (native ETH/WETH support, leadrate integration, interest charged only on usable mint, reference-position cooldown mechanism).
