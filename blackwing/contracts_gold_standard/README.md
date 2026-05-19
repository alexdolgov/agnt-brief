# Blackwing — Gold Standard Contract Source Inventory

This directory accompanies [`brief_gold_standard.md`](../brief_gold_standard.md), [`SCOPE_NOTE_gold_standard.md`](../SCOPE_NOTE_gold_standard.md), and [`manifest_gold_standard.json`](../manifest_gold_standard.json). It contains **verified source code** for every Blackwing-attributable EVM contract across Ethereum, Arbitrum, and BSC, fetched directly from Etherscan v2's `getsourcecode` API.

**Inventory:** 39 EVM contracts · 521 source files · ~1.6 MB total. Fetched 2026-05-19.

**Coverage by chain:**

| Chain | Chain ID | Contracts | Notes |
|---|---:|---:|---|
| Ethereum | 1 | 25 | BlackwingVault + NoopDeployer + 23 per-asset BlackwingVaultTokens |
| Arbitrum | 42161 | 9 | BlackwingVault (same address as Eth) + NoopDeployer + 7 per-asset wrappers |
| BSC | 56 | 4 | BlackwingVault (different address) + NoopDeployer + 2 per-asset wrappers (USDT + WBNB) |
| Solana | (not EVM) | 1 (not fetched) | BlackwingVault listed in docs but out of EVM scope |
| **Total fetched** | — | **38 EVM** + 1 Solana (skip) | All Etherscan-verified |

Note: count is 38 in the inventory because Solana isn't fetched; v1 brief shows 19, gold standard adds 27 net (entire BSC + ~23 Ethereum per-asset wrappers) and removes 2 false positives.

**Closed-source protocol.** Blackwing's GitHub org `blackwingfi` has 0 public repos. Etherscan-verified source is the only public code surface.

## Per-contract layout

### Ethereum (25 contracts)

| Slug | Etherscan name | Compiler | Address |
|---|---|---|---|
| `01_eth_BlackwingVault/` | TransparentUpgradeableProxy | 0.8.20 | [`0xc6aDE8…dD09`](https://etherscan.io/address/0xc6aDE8A68026d582AB37B879D188caF7e405dD09) |
| `02_eth_BlackwingVault_impl/` | BlackwingVault | 0.8.20 | [`0xa92299…b37d`](https://etherscan.io/address/0xa92299289361fdcbb4ce9acbb512a84bd5fab37d) |
| `03_eth_BlackwingNoopDeployer/` | BlackwingNoopDeployer | 0.8.20 | [`0x3b7dF0…1C04F`](https://etherscan.io/address/0x3b7dF0Cd432c8f3B01b969ad8D2A2A1405b1C04F) |
| `04_eth_BlackwingVaultToken_USDC/` | TUP (per-asset wrapper) | 0.8.20 | [`0xB943Bd…6c86`](https://etherscan.io/address/0xB943Bd7DA6948324363025E3fE789CD02c846C86) |
| `05_eth_BlackwingVaultToken_WETH/` | TUP | 0.8.20 | [`0xDcFE7c…9B2e`](https://etherscan.io/address/0xDcFE7cdB5b1bb7bFd4ed57b83eFD49fE9Cd19B2e) |
| `06_eth_BlackwingVaultToken_rswETH/` | TUP | 0.8.20 | [`0xC7FA9a…A306`](https://etherscan.io/address/0xC7FA9aEf1fe5b598e3671Baa4FcaB0F9024EA306) |
| `07_eth_BlackwingVaultToken_rsETH/` | TUP | 0.8.20 | [`0xD821B5…7098`](https://etherscan.io/address/0xD821B54F27e4841Ea75a414a0eBfec94C3f27098) |
| `08_eth_BlackwingVaultToken_ezETH/` | TUP | 0.8.20 | [`0xcFD902…63A3`](https://etherscan.io/address/0xcFD9020F41162Eede87252885E2551a9377263A3) |
| `09_eth_BlackwingVaultToken_eETH/` | TUP | 0.8.20 | [`0xC74615…d4BD`](https://etherscan.io/address/0xC7461574B8179C2eC6bdcbAB7f63c30fa7D0d4BD) |
| `10_eth_BlackwingVaultToken_weETH/` | TUP | 0.8.20 | [`0x28D6f9…477E`](https://etherscan.io/address/0x28D6f930462299c6597AC40b06F95DAd3476477E) |
| `11_eth_BlackwingVaultToken_sUSDe/` | TUP | 0.8.20 | [`0x81a3B8…BE22`](https://etherscan.io/address/0x81a3B889b718BE0503698E18f836bf44a0a8BE22) |
| `12_eth_..._PT_rswETH_27JUN2024/` | TUP | 0.8.20 | [`0x418d54…Af9e`](https://etherscan.io/address/0x418d54B4dc069E8a3DDa78df19aeb0Cba11AAf9e) |
| `13_eth_..._PT_weETH_26DEC2024/` | TUP | 0.8.20 | [`0xc912B8…Ad7E`](https://etherscan.io/address/0xc912B8FbC8310B714cD05263380F85834779Ad7E) |
| `14_eth_..._PT_weETH_27JUN2024/` | TUP | 0.8.20 | [`0x9EEDE5…fCdF`](https://etherscan.io/address/0x9EEDE5F450e7A2B7Ee632Fd228bcFE322ecEfCdF) |
| `15_eth_..._PT_ezETH_26DEC2024/` | TUP | 0.8.20 | [`0x5635b0…8AEf`](https://etherscan.io/address/0x5635b051A97Fc1Cdcb480c760763Fa2546298AEf) |
| `16_eth_..._PT_rsETH_27JUN2024/` | TUP | 0.8.20 | [`0xd13dFB…2f45`](https://etherscan.io/address/0xd13dFB42bF50a9577A4b3B67AE3F41b152092f45) |
| `17_eth_..._PT_USDe_25JUL2024/` | TUP | 0.8.20 | [`0xc9Fb68…1A16`](https://etherscan.io/address/0xc9Fb68a2C76FDC07FB76df4Ff8149f48482B1A16) |
| `18_eth_..._PT_ENA_29AUG2024/` | TUP | 0.8.20 | [`0xa45116…fBfe`](https://etherscan.io/address/0xa451169FE5f41474E7A370acbFe390807008fBfe) |
| `19_eth_..._PT_sUSDE_25JUL2024/` | **PendlePrincipalToken** (NOT a TUP — this is Pendle's PT directly, not a Blackwing wrapper) | varies | [`0xd81036…eAb4`](https://etherscan.io/address/0xd810362556296c834E30C9A61d8e21a5cf29eAb4) |
| `20_eth_..._SHIB/` | TUP | 0.8.20 | [`0x10b939…1517`](https://etherscan.io/address/0x10b939b5F820cd6687280f8d103056FB56a21517) |
| `21_eth_..._PEPE/` | TUP | 0.8.20 | [`0x33f0D2…371e`](https://etherscan.io/address/0x33f0D2E2b8588BcDdB47728Ee25C3ED6E1308cb7) |
| `22_eth_..._egETH/` | TUP | 0.8.20 | [`0x533a3A…E332`](https://etherscan.io/address/0x533a3A06680db5DafaCde57691d3DD2A7f4FE332) |
| `23_eth_..._pufETH/` | TUP | 0.8.20 | [`0xf59Ab8…3359`](https://etherscan.io/address/0xf59Ab8c53F2075339a1e31C16c227C51264E3359) |
| `24_eth_..._mstETH/` | TUP | 0.8.20 | [`0x9A5971…a783`](https://etherscan.io/address/0x9A597101684CAE355c1663Ff23f20Eb4fCb3a783) |
| `25_eth_..._apxETH/` | TUP | 0.8.20 | [`0xbF1253…Eaee`](https://etherscan.io/address/0xbF1253983B930FEA513e2437e8d83520D9dDEaee) |
| `26_eth_..._mswETH/` | TUP | 0.8.20 | [`0xf19e65…0AE5`](https://etherscan.io/address/0xf19e652679Ab166FCa767d853b1459C3922d0AE5) |

### Arbitrum (9 contracts)

| Slug | Etherscan name | Address |
|---|---|---|
| `30_arb_BlackwingVault/` | TUP | [`0xc6aDE8…dD09`](https://arbiscan.io/address/0xc6aDE8A68026d582AB37B879D188caF7e405dD09) (same address as Eth) |
| `31_arb_BlackwingNoopDeployer/` | BlackwingNoopDeployer | [`0x3b7dF0…1C04F`](https://arbiscan.io/address/0x3b7dF0Cd432c8f3B01b969ad8D2A2A1405b1C04F) (same as Eth + BSC) |
| `32_arb_BlackwingVaultToken_USDC/` | TUP | [`0xB943Bd…6c86`](https://arbiscan.io/address/0xB943Bd7DA6948324363025E3fE789CD02c846C86) (same as Eth) |
| `33_arb_BlackwingVaultToken_WETH/` | TUP | [`0x7ae943…7cC3`](https://arbiscan.io/address/0x7ae9431FA62F5bE2da7DCB05dcB1FC5fB2fe7cC3) |
| `34_arb_BlackwingVaultToken_ezETH/` | TUP | [`0x27Ea06…46EC`](https://arbiscan.io/address/0x27Ea06f9e5e4deB9349187a39edAdEf9142A46EC) |
| `35_arb_BlackwingVaultToken_weETH/` | TUP | [`0xE83302…8218`](https://arbiscan.io/address/0xE8330250D7B996CdE78BcE829779005E35E48218) |
| `36_arb_..._PT_weETH_27JUN2024/` | TUP | [`0x761B2C…b78f`](https://arbiscan.io/address/0x761B2CcDD37ef1caC84F8728687a5248C9EfB78f) |
| `37_arb_..._PT_rsETH_27JUN2024/` | TUP | [`0xd2e23b…37b6`](https://arbiscan.io/address/0xd2e23b76B44D568B77d65B64A2BefF8439e437B6) |
| `38_arb_..._PT_ezETH_27JUN2024/` | TUP | [`0xD18c3f…d778`](https://arbiscan.io/address/0xD18c3fC06b42F053Ed485F233Eb90b06A4F3d778) |

### BSC (4 contracts) — completely missed by v1 brief

| Slug | Etherscan name | Address |
|---|---|---|
| `50_bsc_BlackwingVault/` | TUP | [`0xD00789…4514`](https://bscscan.com/address/0xD00789260984160a64DcF19A03896DfF73BF4514) — **different address from Eth+Arb** |
| `51_bsc_BlackwingNoopDeployer/` | BlackwingNoopDeployer | [`0x3b7dF0…1C04F`](https://bscscan.com/address/0x3b7dF0Cd432c8f3B01b969ad8D2A2A1405b1C04F) (same as Eth + Arb) |
| `52_bsc_BlackwingVaultToken_USDT/` | TUP | [`0xA767C9…0350`](https://bscscan.com/address/0xA767C903D8b801a2f3CC451134eAd2D7903c0350) |
| `53_bsc_BlackwingVaultToken_WBNB/` | TUP | [`0x1004Dd…2C12`](https://bscscan.com/address/0x1004Dd758d318fA786ca13F46B2d37088cf32C12) |

## Per-directory contents

Each contract subdirectory contains:

- `metadata.json` — chain ID, address, doc role label, Etherscan-reported contract name, compiler version, optimization, license, proxy flag, implementation pointer.
- The verified source files. Multi-file contracts preserve the directory layout the developer submitted to Etherscan.

A consolidated `_fetch_summary.json` at this directory's root records the fetch result per contract.

## How these were fetched

```python
# /tmp/fetch_blackwing_sources.py
# 1. Read canonical addresses from docs.blackwing.fi/misc/deployed_contracts (extracted via curl + python regex)
# 2. GET https://api.etherscan.io/v2/api?chainid={1,42161,56}&module=contract&action=getsourcecode&address={addr}
```

All 39 fetches succeeded. The 19th entry (`PT-sUSDE-25JUL2024`) returned `PendlePrincipalToken` rather than `TransparentUpgradeableProxy` — this address is actually Pendle's PT token itself, not a Blackwing wrapper. (The doc label "BlackwingVaultToken PT-sUSDE-25JUL2024" is misleading — the protocol references Pendle's contract directly here.)

## Notable observations

- **Closed-source code.** GitHub org `blackwingfi` has 0 public repos. The 39 contracts here are all Etherscan-verified (open source via verification), but no protocol repo is public.
- **CREATE-collision pattern**: BlackwingVault (`0xc6aDE8…dD09`), USDC wrapper (`0xB943Bd…6c86`), NoopDeployer (`0x3b7dF0…1C04F`), and ProxyAdmin (`0xce2630…fe5e`) all share addresses across multiple chains via deployer-EOA nonce alignment. BSC was deployed independently and has its own address slots.
- **Per-asset implementations are unique** — each `BlackwingVaultToken` proxy points at its own impl address rather than sharing a beacon. Most multi-asset vaults use beacon proxies; here each asset gets a separate impl, which increases audit surface (per-asset diff is uncovered).
- **The 19th Ethereum entry (`PT-sUSDE-25JUL2024`) is Pendle's PT token directly**, not a Blackwing wrapper — `PendlePrincipalToken` source. The other Pendle-PT wrappers (12, 13, 14, 15, 16, 17, 18) ARE Blackwing TUPs that wrap their respective PT tokens.
- **Etherscan source for the ETH BlackwingVault impl (`0xa92299…b37d`)** is published as `BlackwingVault` (compiler 0.8.20). This is the contract Zellic audited 2024-02-29.

## How to use this inventory

- **For Blackwing audit:** start with `02_eth_BlackwingVault_impl/` — that's the core vault logic. Zellic's Feb-2024 audit covered this; diff against any post-audit changes.
- **For per-asset wrapper diff:** compare implementations across `04_…_USDC/`, `05_…_WETH/`, etc. If they share bytecode, lighter audit gap. If they diverge, per-asset review is warranted.
- **For BSC review:** `50_bsc_BlackwingVault/` + the 2 BSC wrappers are entirely post-Zellic-audit. Worth a focused review.
- **For governance review:** see `manifest_gold_standard.json` `governance_topology` for ProxyAdmin addresses + multisig details (Eth multisig is 1-of-3).
- **For Solana review:** out of EVM scope. Operator should pull Solana program source separately via Anchor or Solscan.
