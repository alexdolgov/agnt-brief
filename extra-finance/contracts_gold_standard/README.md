# Extra Finance — Gold Standard Contract Source Inventory

This directory accompanies [`brief_gold_standard.md`](../brief_gold_standard.md), [`SCOPE_NOTE_gold_standard.md`](../SCOPE_NOTE_gold_standard.md), and [`manifest_gold_standard.json`](../manifest_gold_standard.json). It contains **verified source code** for every Extra Finance-attributable contract across the 3 products (Leverage Farming + XLend + Vaults) on Optimism + Base, fetched directly from Etherscan v2's `getsourcecode` API.

**Inventory:** 26 contracts · 433 source files · ~2.3 MB total. Fetched 2026-05-17.

**Coverage by product + chain:**

| Product | Chain | Contracts |
|---|---|---:|
| Leverage Farming (LF) | Optimism + Base | 8 |
| XLend (Aave V3 fork) | Optimism | 10 |
| XLend (Aave V3 fork) | Base | 6 |
| Vaults (Morpho-curated) | Base | 2 |
| **Total** | — | **26** |

**Note: Extra Finance is closed-source.** No public github repo exists for the protocol contracts. Etherscan-verified source is the only public code surface.

## Per-contract layout

### Leverage Farming (8 contracts — the dominant TVL product)

| Slug | Etherscan name | Compiler | Address (OP / Base) |
|---|---|---|---|
| `01_op_EXTRAoft/` | EXTRAoft (LayerZero OFT v1) | 0.8.x | [`0x2dAD3a13…7938F8`](https://optimistic.etherscan.io/address/0x2dAD3a13ef0C6366220f989157009e501e7938F8) (OP) |
| `02_base_EXTRAoft/` | EXTRAoft | 0.8.x | [`0x2dAD3a13…7938F8`](https://basescan.org/address/0x2dAD3a13ef0C6366220f989157009e501e7938F8) (Base, same address via OFT v1) |
| `03_op_LendingPool/` | LendingPool | 0.8.x | [`0xbb505c54…1cbd`](https://optimistic.etherscan.io/address/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd) (OP) |
| `04_base_LendingPool/` | LendingPool | 0.8.x | [`0xbb505c54…1cbd`](https://basescan.org/address/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd) (Base, same address slot) |
| `05_op_VeloPositionManager/` | VeloPositionManager | 0.8.x | [`0xf9cfb8a6…7055`](https://optimistic.etherscan.io/address/0xf9cfb8a62f50e10adde5aa888b44cf01c5957055) (OP) |
| `06_base_VeloPositionManager/` | VeloPositionManager | 0.8.x | [`0xf9cfb8a6…7055`](https://basescan.org/address/0xf9cfb8a62f50e10adde5aa888b44cf01c5957055) (Base) |
| `07_op_VeToken/` | VeToken | 0.8.x | [`0xe0bec4f4…1466`](https://optimistic.etherscan.io/address/0xe0bec4f45aef64cec9dcb9010d4beffb13e91466) (OP only) |
| `08_op_RewardDistributor/` | RewardDistributor | 0.8.x | [`0xb7d86137…322a`](https://optimistic.etherscan.io/address/0xb7d8613728efcfbb18bcd63deec06f64441d322a) (OP only) |

### XLend — Optimism (10 contracts, Aave V3 fork)

| Slug | Etherscan name | Compiler | Address |
|---|---|---|---|
| `10_op_xlend_Pool_proxy/` | InitializableImmutableAdminUpgradeabilityProxy | 0.8.x | [`0x345D2827…0186`](https://optimistic.etherscan.io/address/0x345D2827f36621b02B783f7D5004B4a2fec00186) |
| `11_op_xlend_Pool_impl/` | Pool | 0.8.24 | [`0x0353b622…e9e5`](https://optimistic.etherscan.io/address/0x0353b6221b23b8320202320ca450eeb9fb0de9e5) |
| `12_op_xlend_AToken/` | AToken | 0.8.x | [`0x2B275176…62E`](https://optimistic.etherscan.io/address/0x2B275176804dd01b6a90d61bDa3c80E3A470662E) |
| `13_op_xlend_DebtToken/` | VariableDebtToken | 0.8.x | [`0xC0C88d27…d5E`](https://optimistic.etherscan.io/address/0xC0C88d2752C58263c2b7F4Ac6ecBedC78eDD5d5E) |
| `14_op_xlend_PoolConfigurator_proxy/` | InitializableImmutableAdminUpgradeabilityProxy | 0.8.x | [`0xc1504B3D…A1e`](https://optimistic.etherscan.io/address/0xc1504B3D0e72C717151957ceb0252FF8f93A9A1e) |
| `15_op_xlend_PoolConfigurator_impl/` | PoolConfigurator | 0.8.24 | [`0x9378C2e0…ADC`](https://optimistic.etherscan.io/address/0x9378C2e058D87DE7F9EDbF3574eD5B4128980ADC) |
| `16_op_xlend_PoolAddressesProvider/` | PoolAddressesProvider | 0.8.24 | [`0xA98cC603…21d`](https://optimistic.etherscan.io/address/0xA98cC6031Ba6908d73dC5615ca82B607096D721d) |
| `17_op_xlend_ACLManager/` | ACLManager | 0.8.x | [`0x70Cdb45f…95f`](https://optimistic.etherscan.io/address/0x70Cdb45f5b0660c122708286198446d23872595f) |
| `18_op_xlend_PriceOracle/` | AaveOracle | 0.8.x | [`0x1bc88934…db4`](https://optimistic.etherscan.io/address/0x1bc889345c912d5462b71e019f9dccba33d83db4) |
| `19_op_xlend_ProtocolDataProvider/` | (unverified on Etherscan) | — | [`0xCC61E947…9C0`](https://optimistic.etherscan.io/address/0xCC61E9470B5f0CE21a3F6255c73032B47AaeA9C0) |

### XLend — Base (6 contracts, discovered via on-chain `PoolAddressesProvider.getAddress()`)

| Slug | Etherscan name | Compiler | Address |
|---|---|---|---|
| `30_base_xlend_PoolAddressesProvider/` | PoolAddressesProvider | 0.8.24 | [`0x1e35e657…c29`](https://basescan.org/address/0x1e35e657d469f134ea9cfe52e28949586f1a9c29) |
| `31_base_xlend_Pool/` | InitializableImmutableAdminUpgradeabilityProxy | 0.8.x | [`0x09b11746…e03`](https://basescan.org/address/0x09b11746dfd1b5a8325e30943f8b3d5000922e03) |
| `32_base_xlend_PoolConfigurator/` | InitializableImmutableAdminUpgradeabilityProxy | 0.8.x | [`0x359551a0…3e1e`](https://basescan.org/address/0x359551a0c6e91956a96700316fcf5b39704a3e1e) |
| `33_base_xlend_ACLManager/` | ACLManager | 0.8.x | [`0x4b4c8a18…956`](https://basescan.org/address/0x4b4c8a1841b0e0d2a3af086850d84ff968b8c956) |
| `34_base_xlend_PriceOracle/` | AaveOracle | 0.8.x | [`0xe4f11109…dec`](https://basescan.org/address/0xe4f11109eee64a9a6beb5d3bcf4a5d9c70054dec) |
| `35_base_xlend_ProtocolDataProvider/` | AaveProtocolDataProvider | 0.8.24 | [`0x1566DA46…98D`](https://basescan.org/address/0x1566DA4640b6a0b32fF309b07b8df6Ade40fd98D) |

### Vaults — Base (2 contracts, Morpho V1.1)

| Slug | Etherscan name | Compiler | Address |
|---|---|---|---|
| `40_base_vault_USDC/` | MetaMorphoV1_1 | 0.8.x | [`0x23479229…3B5e`](https://basescan.org/address/0x23479229e52Ab6aaD312D0B03DF9F33B46753B5e) |
| `41_base_vault_WETH/` | MetaMorphoV1_1 | 0.8.x | [`0x5A320998…7a8C`](https://basescan.org/address/0x5A32099837D89E3a794a44fb131CBbAD41f87a8C) |

## Per-directory contents

Each contract subdirectory contains:

- `metadata.json` — chain ID, address, doc role label, Etherscan-reported contract name, compiler version, optimization, license, proxy flag, implementation pointer.
- The verified source files. Multi-file contracts preserve the directory layout the developer submitted to Etherscan.

A consolidated `_fetch_summary.json` at this directory's root records the fetch result per contract.

## How these were fetched

```python
# /tmp/fetch_extrafi_sources.py
# 1. Read canonical addresses from 3 docs sources:
#    - docs.extrafi.io/extra_finance/contracts-and-transparency (Leverage Farming)
#    - docs.extrafi.io/extrafi-xlend/developer-resource (XLend OP)
#    - docs.extrafi.io/extrafi-xlend/vaults-on-morpho (Vaults Base)
# 2. Discover XLend Base addresses via PoolAddressesProvider.getAddress(bytes32) on-chain
# 3. GET https://api.etherscan.io/v2/api?chainid={10,8453}&module=contract&action=getsourcecode&address={addr}
```

All 26 fetches succeeded. 6 returned empty source on Etherscan (unverified addresses): the OP `ProtocolDataProvider`, the VPM admin impl, and the Base xlend Pool impl. The proxies themselves are verified.

## Notable observations

- **Same address on OP + Base** for the Leverage Farming core contracts: `LendingPool` `0xbb505c54…1cbd`, `VeloPositionManager` `0xf9cfb8a6…7055`. This is CREATE-collision (same deployer EOA + same nonce sequence on both chains).
- **EXTRA token** is a LayerZero OFT v1 instance — same address `0x2dAD3a13…7938F8` on OP + Base + Berachain via the OFT v1 deterministic-deployment pattern.
- **XLend on Base uses a different PoolAddressesProvider** (`0x1e35e657…c29`) than Optimism (`0xA98cC603…21d`) — separate Aave V3 deployments per chain, not a CREATE-collision.
- **XLend Pool impl on Base is unverified** (`0xea00bdcc4add0a0afafa80a00b47ff50cf46cc93`), but the Optimism version is verified as `Pool` (compiler 0.8.24, Aave V3-core).
- **Vaults are upstream Morpho code** — `MetaMorphoV1_1` is identical to upstream Morpho/MetaMorpho v1.1. Extra Finance is curator, not author.
- **No protocol-level github repo**: Extra Finance is closed-source. Audit work must use Etherscan-verified source.

## How to use this inventory

- **For Leverage Farming audit:** focus on `03-08/` (LendingPool + VeloPositionManager + VeToken + RewardDistributor). The most-recent audit (Sherlock 2024-12-01) is ~18 months old; differential audit against the current state is the high-value path.
- **For XLend audit:** XLend is Aave V3 fork — diff against upstream Aave V3-core. The `Pool` impl on OP (`0x0353b622…e9e5`) and on Base (unverified) are the diff points.
- **For Vaults audit:** the vault code is Morpho's. Audit Extra Finance's **curator strategy** (parameter choices) rather than the code.
- **For admin / governance scoping:** consult `manifest_gold_standard.json` for the 3 multisigs (2/3 Safes) + admin proxy details. None of these are in this contracts directory; they are EOAs or proxies whose impls are out of canonical product scope.
