# Equilibria — Gold Standard Contract Source Inventory

This directory accompanies [`brief_gold_standard.md`](../brief_gold_standard.md) and [`manifest_gold_standard.json`](../manifest_gold_standard.json). It contains **verified source code** for every Equilibria-attributable contract on the seven Etherscan-v2-supported chains, fetched directly from Etherscan's `getsourcecode` API. Each contract sits in its own subdirectory with a `metadata.json` and the source files preserving the directory layout the auditor verified against.

**Inventory:** 56 contracts · 861 source files · 2,873.8 KB total. Fetched 2026-05-06.

**Coverage by chain:**

| Chain | Chain ID | Contracts fetched | Notes |
|---|---:|---:|---|
| Ethereum | 1 | 27 | Full proxy + impl pairs for all canonical mainchain contracts; cross-chain endpoints; multisig + timelock |
| Arbitrum | 42161 | 19 | Full proxy + impl pairs for sidechain core (vlEqb, fairAuction, bribeManager, ePendleVaultSidechain, vaultEPendle), plus multisig + timelock |
| BNB Chain | 56 | 2 | pendleBooster proxy + ePendleReward proxy (sidechain logic = same code as Arbitrum sidechain impl) |
| Optimism | 10 | 2 | Same — proxy rows only |
| Base | 8453 | 2 | Same |
| Sonic | 146 | 2 | Same |
| Mantle | 5000 | 2 | Same |
| **Total** | — | **56** | — |

**Chains NOT in this inventory** (Etherscan v2 does not yet support them): HyperEVM (chain 999), Plasma (chain 9745), Berachain (chain 80094). The docs `deployed-contracts/<chain>.md` matrices for those chains list the addresses; auditors should pull source via the chain-native explorer (hyperevmscan.io / plasmascan.to / berascan.com).

## Per-contract layout

| Slug | Etherscan name | Compiler | Files | KB | Address |
|---|---|---|---:|---:|---|
| `01_eth_pendleProxy_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 13 | 36.8 | [`0x6462…e6e3`](https://etherscan.io/address/0x64627901dadb46ed7f275fd4fc87d086cff1e6e3) |
| `02_eth_pendleProxy_impl/` | PendleProxyMainchain | v0.8.17+8df45f5f | 27 | 76.8 | [`0xd239…c4e7`](https://etherscan.io/address/0xd23935f6ae4f7ee6b2b169b07824dcc7f596c4e7) |
| `03_eth_pendleBooster_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 13 | 36.8 | [`0x4d32…26bf`](https://etherscan.io/address/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf) |
| `04_eth_pendleBooster_impl/` | PendleBoosterMainchain | v0.8.17+8df45f5f | 38 | 109.2 | [`0xd05d…e929`](https://etherscan.io/address/0xd05d1ee33a58c9d460306b5393bfe673ce79e929) |
| `05_eth_ePendle_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 13 | 36.8 | [`0x22fc…4455`](https://etherscan.io/address/0x22fc5a29bd3d6cce19a06f844019fd506fce4455) |
| `06_eth_ePendle_impl/` | EqbExternalToken | v0.8.17+8df45f5f | 13 | 51.3 | [`0x71e0…1ebf`](https://etherscan.io/address/0x71e0ce200a10f0bbfb9f924fe466acf0b7401ebf) |
| `07_eth_ePendleReward_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 13 | 36.8 | [`0x357f…e849`](https://etherscan.io/address/0x357f55b46821a6c6e476cc32ebb2674cd125e849) |
| `08_eth_ePendleReward_impl/` | BaseRewardPool | v0.8.17+8df45f5f | 21 | 84.7 | [`0xd2d9…2f39`](https://etherscan.io/address/0xd2d99a6c36fc2ed5a5066848a907dc445a3e2f39) |
| `09_eth_pendleDepositor_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 13 | 36.8 | [`0x0140…d3bc`](https://etherscan.io/address/0x0140de476f49b6b42f7b73612b6dc317ab91d3bc) |
| `10_eth_pendleDepositor_impl/` | PendleDepositor | v0.8.17+8df45f5f | 17 | 44.7 | [`0x660e…9fa9`](https://etherscan.io/address/0x660e0d05bfbc46c6644af7e06de202762dcc9fa9) |
| `11_eth_vaultEPendle_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 14 | 42.3 | [`0xd30d…8059`](https://etherscan.io/address/0xd30d6fd662c0d92b49f3c3e478e125ba1d968059) |
| `12_eth_vaultEPendle_impl/` | VaultEPendle | v0.8.17+8df45f5f | 26 | 96.6 | [`0xcf09…0d85`](https://etherscan.io/address/0xcf0946eb559e4fa469cebaeef628121151520d85) |
| `13_eth_EQB_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 13 | 36.8 | [`0xfe80…0b2b`](https://etherscan.io/address/0xfe80d611c6403f70e5b1b9b722d2b3510b740b2b) |
| `14_eth_EQB_impl/` | EqbToken | v0.8.17+8df45f5f | 8 | 34.1 | [`0x0cf6…e139`](https://etherscan.io/address/0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139) |
| `15_eth_xEQB_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 13 | 36.8 | [`0xd6ec…d54f`](https://etherscan.io/address/0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f) |
| `16_eth_xEQB_impl/` | XEqbToken | v0.8.17+8df45f5f | 17 | 82.0 | [`0x96c4…ad8e`](https://etherscan.io/address/0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e) |
| `17_eth_eqbMinter_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 13 | 36.8 | [`0x52f0…9ca5`](https://etherscan.io/address/0x52f0bbe0325097ac93e1ec85c32a950e47789ca5) |
| `18_eth_eqbMinter_impl/` | EqbMinterMainchain | v0.8.17+8df45f5f | 18 | 75.7 | [`0x09ba…e94d`](https://etherscan.io/address/0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d) |
| `19_eth_vlEqb_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 13 | 36.8 | [`0xd896…ec27`](https://etherscan.io/address/0xd8967b2b15b3cdf96039b7407813b4037f73ec27) |
| `20_eth_vlEqb_impl/` | VlEqb | v0.8.17+8df45f5f | 15 | 54.6 | [`0xc751…1e32`](https://etherscan.io/address/0xc7517f481cc0a645e63f870830a4b2e580421e32) |
| `21_eth_eqbZap_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 13 | 36.8 | [`0x4f1c…3452`](https://etherscan.io/address/0x4f1cdf43f5e407abd569878976960d4d0a3d3452) |
| `22_eth_eqbZap_impl/` | EqbZap | v0.8.17+8df45f5f | 23 | 71.3 | [`0xa7e7…4c1c`](https://etherscan.io/address/0xa7e713f90d851df9080ce6f483c3dc432e0b4c1c) |
| `23_eth_ePendleProxyOFT/` | EPendleProxyOFT | v0.8.17+8df45f5f | 22 | 84.8 | [`0x6ae3…c577`](https://etherscan.io/address/0x6ae382814e24b6ddf588901c597f26a9e945c577) |
| `24_eth_EqbMsgSendEndpoint/` | EqbMsgSendEndpoint | v0.8.17+8df45f5f | 12 | 59.8 | [`0x9208…a3b8`](https://etherscan.io/address/0x920873e5b302a619c54c908adfb77a1c4256a3b8) |
| `25_eth_PendleBoosterMainchain_obsolete/` | PendleBoosterMainchain | v0.8.17+8df45f5f | 20 | 58.0 | [`0x4796…218d`](https://etherscan.io/address/0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d) |
| `26_eth_admin_multisig/` | GnosisSafeProxy | v0.7.6+7338295f | 1 | 7.9 | [`0x397a…afa0`](https://etherscan.io/address/0x397aa01343b89f18934979824c3ad227f251afa0) |
| `27_eth_timelock/` | TimelockController | v0.8.13+abaa5c0e | 1 | 58.3 | [`0xe2a6…1d03`](https://etherscan.io/address/0xe2a63438747d2c71e14bdc2cc222be89b1c11d03) |
| `30_arb_pendleProxy_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 13 | 36.8 | [`0x6462…e6e3`](https://arbiscan.io/address/0x64627901dadb46ed7f275fd4fc87d086cff1e6e3) |
| `31_arb_pendleProxy_impl/` | PendleProxySidechain | v0.8.17+8df45f5f | 23 | 70.1 | [`0x0f66…3cde`](https://arbiscan.io/address/0x0f66fdb80687363369131889aa2d49e71ab53cde) |
| `32_arb_pendleBooster_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 13 | 36.8 | [`0x4d32…26bf`](https://arbiscan.io/address/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf) |
| `33_arb_pendleBooster_impl/` | PendleBoosterSidechain | v0.8.17+8df45f5f | 39 | 122.4 | [`0x73d7…57ac`](https://arbiscan.io/address/0x73d705f524e71dd050ecf474d704fe4e7e1f57ac) |
| `34_arb_ePendle_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 14 | 42.3 | [`0x3eab…4600`](https://arbiscan.io/address/0x3eabe18eae267d1b57f917aba085bb5906114600) |
| `35_arb_ePendleReward_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 14 | 42.3 | [`0x9739…4d6f`](https://arbiscan.io/address/0x9739d1e515c5291faa26d92a5d02761b6bbb4d6f) |
| `36_arb_ePendleReward_impl/` | BaseRewardPool | v0.8.17+8df45f5f | 21 | 84.7 | [`0x901e…1a88`](https://arbiscan.io/address/0x901e8fd1e2d6d1788e5288e967034761ce0e1a88) |
| `37_arb_vlEqb_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 13 | 36.8 | [`0x70f6…72b9`](https://arbiscan.io/address/0x70f61901658aafb7ae57da0c30695ce4417e72b9) |
| `38_arb_eqbZap_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 13 | 36.8 | [`0xc751…1e32`](https://arbiscan.io/address/0xc7517f481cc0a645e63f870830a4b2e580421e32) |
| `39_arb_eqbZap_impl/` | EqbZap | v0.8.17+8df45f5f | 21 | 63.0 | [`0x39f4…993d`](https://arbiscan.io/address/0x39f4789bdc5560ade254fce8b7f221205df6993d) |
| `40_arb_fairAuction_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 13 | 36.8 | [`0x1ef5…fa39`](https://arbiscan.io/address/0x1ef5e2153c3e6533af716d057a90b71b8621fa39) |
| `41_arb_fairAuction_impl/` | FairAuction | v0.8.17+8df45f5f | 10 | 47.7 | [`0x0b60…1739`](https://arbiscan.io/address/0x0b60412431d5824532e3a89e41638724c6e31739) |
| `42_arb_bribeManager_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 13 | 36.8 | [`0xb3c4…99ca`](https://arbiscan.io/address/0xb3c40b02f38f61f3d141c325c19f35b1f9df99ca) |
| `43_arb_bribeManager_impl/` | BribeManager | v0.8.17+8df45f5f | 17 | 69.3 | [`0xe5b4…ef8e`](https://arbiscan.io/address/0xe5b4b7c575a6ccedc072622b9dcbc11552baef8e) |
| `44_arb_ePendleVaultSidechain_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 14 | 42.3 | [`0x4250…4a92`](https://arbiscan.io/address/0x4250ea96f880c5725931a72a87dcbe01fc654a92) |
| `45_arb_vaultEPendle_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 14 | 42.3 | [`0x3722…319f`](https://arbiscan.io/address/0x37227785a1f4545ed914690e395e4cfe96b8319f) |
| `46_arb_ePendleOFT/` | EPendleOFT | v0.8.17+8df45f5f | 21 | 82.1 | [`0x8c9b…29f5`](https://arbiscan.io/address/0x8c9b5b2e6e136b6ee66fca6229191e749c0029f5) |
| `47_arb_admin_multisig/` | GnosisSafeProxy | v0.7.6+7338295f | 1 | 7.9 | [`0x2982…0444`](https://arbiscan.io/address/0x29828f442c98aaa71a853594fec7c0c3806f0444) |
| `48_arb_timelock/` | TimelockController | v0.8.13+abaa5c0e | 11 | 54.1 | [`0x5c24…1886`](https://arbiscan.io/address/0x5c249a5f396638253470c4eae7bc5092dde21886) |
| `50_bsc_pendleBooster_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 14 | 42.3 | [`0x4d32…26bf`](https://bscscan.com/address/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf) |
| `51_bsc_ePendleReward_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 14 | 42.3 | [`0xe2db…dde7`](https://bscscan.com/address/0xe2db20ce7d845f99338bba4bdff00e733801dde7) |
| `52_op_pendleBooster_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 14 | 42.3 | [`0x18c6…b356`](https://optimistic.etherscan.io/address/0x18c61629e6cbadb85c29ba7993f251b3ebe2b356) |
| `53_op_ePendleReward_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 14 | 42.3 | [`0x898c…02b3`](https://optimistic.etherscan.io/address/0x898ca9b3ef8b6a30da5fc7202f70e7992b3602b3) |
| `54_base_pendleBooster_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 14 | 42.3 | [`0x2583…821d`](https://basescan.org/address/0x2583a2538272f31e9a15dd12a432b8c96ab4821d) |
| `55_base_ePendleReward_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 14 | 42.3 | [`0xb2d1…64c8`](https://basescan.org/address/0xb2d167eb1fff17ebd727b0a21e7f5f50424264c8) |
| `56_sonic_pendleBooster_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 14 | 42.3 | [`0x9208…a3b8`](https://sonicscan.org/address/0x920873e5b302a619c54c908adfb77a1c4256a3b8) |
| `57_sonic_ePendleReward_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 14 | 42.3 | [`0x7416…fecc`](https://sonicscan.org/address/0x741620136cf08a782c1df1fc9e3caa760cc4fecc) |
| `58_mantle_pendleBooster_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 14 | 42.3 | [`0x9208…a3b8`](https://mantlescan.xyz/address/0x920873e5b302a619c54c908adfb77a1c4256a3b8) |
| `59_mantle_ePendleReward_proxy/` | TransparentUpgradeableProxy | v0.8.9+e5eed63a | 14 | 42.3 | [`0x7416…fecc`](https://mantlescan.xyz/address/0x741620136cf08a782c1df1fc9e3caa760cc4fecc) |

## Per-directory contents

Each contract subdirectory contains:

- `metadata.json` — chain ID, address, Etherscan-reported contract name, Equilibria's per-chain doc-role label, compiler version, optimization settings, license, proxy/implementation flags.
- The verified source files. Multi-file contracts preserve the directory layout the developer submitted to Etherscan (e.g. `@openzeppelin/contracts-upgradeable/...`, `contracts/PendleBoosterMainchain.sol`).

A consolidated `_fetch_summary.json` at this directory's root records the fetch result per contract (file count, byte size, error if any).

## How these were fetched

```python
# docs/gold-standard/fetch_equilibria_sources.py (in the meta-audit repo)
GET https://api.etherscan.io/v2/api?chainid=<id>&module=contract&action=getsourcecode&address=<addr>&apikey=<key>
```

Etherscan v2 is the unified multi-chain endpoint; the same `ETHERSCAN_API_KEY` covers chains 1, 10, 56, 146, 5000, 8453, and 42161 (all chains queried here). For multi-file verifications, Etherscan returns the source as a `{{...}}`-wrapped standard-json-input string; the script parses that and recreates each file's path. Rate-limited at ~4 calls/second (well under Etherscan's free-tier 5/sec cap). All 56 fetches succeeded on first attempt.

## Notable observations

- **Compiler version split**: every TransparentUpgradeableProxy is `v0.8.9+e5eed63a` (Equilibria's standardized proxy compiler), every Equilibria-logic implementation is `v0.8.17+8df45f5f` (their standardized impl compiler), and standard infrastructure (Gnosis Safe, OZ TimelockController) carry their upstream compilers. This consistency across 7 chains is itself a signal — Equilibria has a disciplined deployment pipeline.
- **Proxy contract artefact reuse**: every TransparentUpgradeableProxy entry on the same chain is the same 13-file 36.8 KB blob (or 14-file 42.3 KB on chains where the artifact picked up an extra OZ file). Worth knowing for an auditor — diff between two proxies on the same chain should be a no-op.
- **The `06_eth_ePendle_impl/` ContractName is "EqbExternalToken"** — this is Equilibria's generic external-token base class, parameterized to act as ePENDLE. Same code template likely backs other token implementations on sidechains (xEQB, EQB on bridged chains).
- **The `25_eth_PendleBoosterMainchain_obsolete/` directory** preserves the older PendleBoosterMainchain implementation (`0x4796…218d`). It was deployed by Equilibria's canonical deployer EOA but the production pendleBooster proxy at `0x4D32…26bF` was upgraded past it (now points at `0xd05d…e929`). Listed for completeness because the v1 brief surfaced it as a standalone "core" row.
- **The `26_*_admin_multisig/` directories** contain only a single 7.9 KB `GnosisSafeProxy.sol` — Etherscan has source for the proxy stub but not for the underlying Safe v1.x master copy that the proxy delegates to. Auditors should pull `Safe.json` from gnosis/safe-contracts at the master-copy address (`0xd9db270c1b5e3bd161e8c8503c55ceabee709552` on Eth, `0x3e5c63644e683549055b9be8653de26e0b4cd36e` on Arb) directly from the gnosis-safe github releases.
- **ePendleProxyOFT and EqbMsgSendEndpoint** (`23_*` and `24_*`) on Ethereum are *not* TransparentUpgradeableProxy-wrapped — they are direct (non-upgradeable) deployments of the LayerZero OFT v1 proxy and Equilibria's cross-chain message endpoint. Different upgrade profile from the rest of the protocol.
