# Agentic Audit Brief: Equilibria

## Project Overview

- Project: Equilibria (`equilibria`)
- Website: [https://equilibria.fi/home](https://equilibria.fi/home)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.872Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, mantle, optimism, plasma, sonic
- Contract surface: 226 unique implementations (527 raw deployments)
- DeFi Llama TVL: $12,942,083.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 51 project-authored contract(s) across 10 chain(s); 14 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 9 common project-authored base contract(s) (proxy, oft, oftcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 578; live-surface contracts included: 469 (426 live, 43 unknown).
- Excluded by liveness: 109 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 58/165 (35.2%)
- Deployed-live implementations: 198 of 226 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 67/198
- Verified + Unaudited implementations: 131
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 226
- Raw deployments: 527
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 56 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 67 | 33.8% | 2025-06 |
| PeckShield | Tier 2 | 10 | 5.1% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (67)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseRewardPool | unknown | optimism | n/a | 5 deployments: optimism [`0x0140de...91d3bc`](./contracts/optimism-10/0x0140de476f49b6b42f7b73612b6dc317ab91d3bc/); optimism `0x1679fe...46723b`; optimism `0x660e0d...cc9fa9`; optimism `0x898ca9...3602b3`; optimism `0x9cb59c...cc7353` | ✅ Audited |
| BaseRewardPool | unknown | bsc | n/a | 6 deployments: bsc [`0x09bae4...c8e94d`](./contracts/bsc-56/0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d/); bsc `0x1679fe...46723b`; bsc `0x26ae16...186f5c`; bsc `0x52f0bb...789ca5`; bsc `0xd8d51c...aae903`; bsc `0xe2db20...01dde7` | ✅ Audited |
| BaseRewardPool | unknown | sonic | n/a | 3 deployments: sonic [`0x52f0bb...789ca5`](./contracts/sonic-146/0x52f0bbe0325097ac93e1ec85c32a950e47789ca5/); sonic `0x660e0d...cc9fa9`; sonic `0x741620...c4fecc` | ✅ Audited |
| BaseRewardPool | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x22fc5a...ce4455`](./contracts/hyperliquid-999/0x22fc5a29bd3d6cce19a06f844019fd506fce4455/); hyperliquid `0x500d5e...84d3d6`; hyperliquid `0x71e0ce...401ebf` | ✅ Audited |
| BaseRewardPool | unknown | mantle | n/a | 3 deployments: mantle [`0x52f0bb...789ca5`](./contracts/mantle-5000/0x52f0bbe0325097ac93e1ec85c32a950e47789ca5/); mantle `0x660e0d...cc9fa9`; mantle `0x741620...c4fecc` | ✅ Audited |
| BaseRewardPool | unknown | base | n/a | 3 deployments: base [`0x0140de...91d3bc`](./contracts/base-8453/0x0140de476f49b6b42f7b73612b6dc317ab91d3bc/); base `0x71e0ce...401ebf`; base `0xb2d167...4264c8` | ✅ Audited |
| BaseRewardPool | unknown | plasma | n/a | 3 deployments: plasma [`0x55f140...0433a8`](./contracts/plasma-9745/0x55f140abbf87ef957263f04ed75d1691980433a8/); plasma `0xc7517f...421e32`; plasma `0xd8967b...73ec27` | ✅ Audited |
| BaseRewardPool | unknown | arbitrum | n/a | 32 deployments: arbitrum [`0x0140de...91d3bc`](./contracts/arbitrum-42161/0x0140de476f49b6b42f7b73612b6dc317ab91d3bc/); arbitrum `0x03b86b...c88e4e`; arbitrum `0x03e2bc...634513`; arbitrum `0x06fd8e...534f37`; arbitrum `0x114765...87c9a7`; arbitrum `0x16f460...d01594`; arbitrum `0x245f1d...37a960`; arbitrum `0x261341...96f574`; arbitrum `0x2e18b7...77ff78`; arbitrum `0x5017d2...3f9003`; arbitrum `0x507fdb...466ced`; arbitrum `0x5511c9...62d83b`; arbitrum `0x55f140...0433a8`; arbitrum `0x643df8...28fee1`; arbitrum `0x6668f0...e84431`; arbitrum `0x6e6bf7...2adf77`; arbitrum `0x71e0ce...401ebf`; arbitrum `0x74ddfb...2d0c34`; arbitrum `0x8181c8...07a6b2`; arbitrum `0x968e4a...32b49b`; arbitrum `0x96edd4...67c10b`; arbitrum `0x972eb6...4b0bee`; arbitrum `0xabe223...ca0944`; arbitrum `0xb45271...afc033`; arbitrum `0xb9ee33...930718`; arbitrum `0xc72d63...5976ea`; arbitrum `0xcd7246...9e2d65`; arbitrum `0xce3fe5...44b596`; arbitrum `0xf306bd...e7d4e2`; arbitrum `0xf8aa1d...920332`; arbitrum `0xfaaec6...2a7f7a`; arbitrum `0xfc5d0f...d3bd10` | ✅ Audited |
| BaseRewardPool | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x901e8f...0e1a88`](./contracts/arbitrum-42161/0x901e8fd1e2d6d1788e5288e967034761ce0e1a88/); arbitrum `0x9739d1...bb4d6f` | ✅ Audited |
| BaseRewardPool | unknown | berachain | n/a | 3 deployments: berachain [`0x0140de...91d3bc`](./contracts/berachain-80094/0x0140de476f49b6b42f7b73612b6dc317ab91d3bc/); berachain `0x2350ea...709913`; berachain `0x660e0d...cc9fa9` | ✅ Audited |
| DepositToken | unknown | optimism | n/a | 3 deployments: optimism [`0x00807f...3966f5`](./contracts/optimism-10/0x00807f12343a039acce6c9446696c818b53966f5/); optimism `0x26ae16...186f5c`; optimism `0x55f140...0433a8` | ✅ Audited |
| DepositToken | unknown | bsc | n/a | 4 deployments: bsc [`0x00807f...3966f5`](./contracts/bsc-56/0x00807f12343a039acce6c9446696c818b53966f5/); bsc `0x500d5e...84d3d6`; bsc `0x55f140...0433a8`; bsc `0xb2d167...4264c8` | ✅ Audited |
| DepositToken | unknown | arbitrum | n/a | 35 deployments: arbitrum [`0x072550...7aff61`](./contracts/arbitrum-42161/0x07255095a86566576aef769d61566ed0627aff61/); arbitrum `0x0c873e...ba7f9f`; arbitrum `0x0d7fd2...707fac`; arbitrum `0x180dd2...9e2f8e`; arbitrum `0x183b30...b75e78`; arbitrum `0x1f3ef2...562b40`; arbitrum `0x229de5...bc5b4f`; arbitrum `0x306264...dfcb1a`; arbitrum `0x312e2a...83a990`; arbitrum `0x3672ab...5e491a`; arbitrum `0x4159ec...7a40bd`; arbitrum `0x473229...27da5a`; arbitrum `0x5873f8...705d5c`; arbitrum `0x6d36ca...4ba295`; arbitrum `0x7a2d44...4763f4`; arbitrum `0x879382...1e942b`; arbitrum `0x898ca9...3602b3`; arbitrum `0x89f24c...69ef10`; arbitrum `0x950904...df354e`; arbitrum `0x96a375...656e98`; arbitrum `0x97c7d9...265459`; arbitrum `0x9be393...68b88c`; arbitrum `0xa6ec3c...9f05c3`; arbitrum `0xaa4a7a...790b74`; arbitrum `0xaa4ada...5c1204`; arbitrum `0xaab4b3...52fd6c`; arbitrum `0xb0d718...78eb7a`; arbitrum `0xb9b748...4105a8`; arbitrum `0xbaa2b0...256470`; arbitrum `0xd5d127...22ecbf`; arbitrum `0xe86037...38826a`; arbitrum `0xf10ae0...9d508f`; arbitrum `0xf19fbc...e94cec`; arbitrum `0xf7498d...052981`; arbitrum `0xfc09f3...9ff778` | ✅ Audited |
| EPendleVaultSidechain | core_logic | optimism | n/a | [`0xf19fbc...e94cec`](./contracts/optimism-10/0xf19fbc1d3693ecca9979ea31272e422903e94cec/) | ✅ Audited |
| EPendleVaultSidechain | core_logic | bsc | n/a | [`0x89a4e4...63186b`](./contracts/bsc-56/0x89a4e4044bdb53e00e40c1b2e1005bd61663186b/) | ✅ Audited |
| EPendleVaultSidechain | core_logic | sonic | n/a | [`0x9f1453...ca341a`](./contracts/sonic-146/0x9f14535a90bc7ca72739a73c1d382bd272ca341a/) | ✅ Audited |
| EPendleVaultSidechain | core_logic | hyperliquid | n/a | [`0x7700eb...ed33b1`](./contracts/hyperliquid-999/0x7700eb46bb40163985c5337de39704482aed33b1/) | ✅ Audited |
| EPendleVaultSidechain | core_logic | mantle | n/a | [`0x9f1453...ca341a`](./contracts/mantle-5000/0x9f14535a90bc7ca72739a73c1d382bd272ca341a/) | ✅ Audited |
| EPendleVaultSidechain | core_logic | base | n/a | [`0x6ee066...01b923`](./contracts/base-8453/0x6ee066b813cd8c2586d86f79ed0025e81801b923/) | ✅ Audited |
| EPendleVaultSidechain | core_logic | arbitrum | n/a | [`0x4250ea...654a92`](./contracts/arbitrum-42161/0x4250ea96f880c5725931a72a87dcbe01fc654a92/) | ✅ Audited |
| EPendleVaultSidechain | core_logic | berachain | n/a | [`0x5e73e7...ea4531`](./contracts/berachain-80094/0x5e73e741b0b15e10789a30a91953794e44ea4531/) | ✅ Audited |
| EqbExternalToken | unknown | optimism | n/a | 2 deployments: optimism [`0x507fdb...466ced`](./contracts/optimism-10/0x507fdbebdb11c71e7c7565177d0942a6fd466ced/); optimism `0x86a201...a818c5` | ✅ Audited |
| EqbExternalToken | unknown | bsc | n/a | 2 deployments: bsc [`0x898ca9...3602b3`](./contracts/bsc-56/0x898ca9b3ef8b6a30da5fc7202f70e7992b3602b3/); bsc `0x8a5a43...bbd36c` | ✅ Audited |
| EqbExternalToken | unknown | sonic | n/a | 2 deployments: sonic [`0x5e73e7...ea4531`](./contracts/sonic-146/0x5e73e741b0b15e10789a30a91953794e44ea4531/); sonic `0x6ee066...01b923` | ✅ Audited |
| EqbExternalToken | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2350ea...709913`](./contracts/hyperliquid-999/0x2350ea954113b1a1eebaaccc47f3a4985f709913/); hyperliquid `0x741620...c4fecc` | ✅ Audited |
| EqbExternalToken | unknown | mantle | n/a | 2 deployments: mantle [`0x5e73e7...ea4531`](./contracts/mantle-5000/0x5e73e741b0b15e10789a30a91953794e44ea4531/); mantle `0x6ee066...01b923` | ✅ Audited |
| EqbExternalToken | unknown | base | n/a | 2 deployments: base [`0x741620...c4fecc`](./contracts/base-8453/0x741620136cf08a782c1df1fc9e3caa760cc4fecc/); base `0x7700eb...ed33b1` | ✅ Audited |
| EqbExternalToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3eabe1...114600`](./contracts/arbitrum-42161/0x3eabe18eae267d1b57f917aba085bb5906114600/); arbitrum `0xddf45d...a15f2b` | ✅ Audited |
| EqbExternalToken | unknown | berachain | n/a | 2 deployments: berachain [`0x6ee066...01b923`](./contracts/berachain-80094/0x6ee066b813cd8c2586d86f79ed0025e81801b923/); berachain `0x7700eb...ed33b1` | ✅ Audited |
| EqbMinterSidechain | unknown | optimism | n/a | 2 deployments: optimism [`0x09bae4...c8e94d`](./contracts/optimism-10/0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d/); optimism `0x52f0bb...789ca5` | ✅ Audited |
| EqbMinterSidechain | unknown | bsc | n/a | 2 deployments: bsc [`0x96c4a4...19ad8e`](./contracts/bsc-56/0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e/); bsc `0xd6ecfd...4fd54f` | ✅ Audited |
| EqbMinterSidechain | unknown | sonic | n/a | 2 deployments: sonic [`0x09bae4...c8e94d`](./contracts/sonic-146/0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d/); sonic `0xd6ecfd...4fd54f` | ✅ Audited |
| EqbMinterSidechain | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0140de...91d3bc`](./contracts/hyperliquid-999/0x0140de476f49b6b42f7b73612b6dc317ab91d3bc/); hyperliquid `0x660e0d...cc9fa9` | ✅ Audited |
| EqbMinterSidechain | unknown | mantle | n/a | 2 deployments: mantle [`0x09bae4...c8e94d`](./contracts/mantle-5000/0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d/); mantle `0xd6ecfd...4fd54f` | ✅ Audited |
| EqbMinterSidechain | unknown | base | n/a | [`0x52f0bb...789ca5`](./contracts/base-8453/0x52f0bbe0325097ac93e1ec85c32a950e47789ca5/) | ✅ Audited |
| EqbMinterSidechain | unknown | base | n/a | 2 deployments: base [`0x5a27ac...dbf821`](./contracts/base-8453/0x5a27ac1185ddee6a9cd64d8da893cfdbe4dbf821/); base `0x660e0d...cc9fa9` | ✅ Audited |
| EqbMinterSidechain | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x09bae4...c8e94d`](./contracts/arbitrum-42161/0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d/); arbitrum `0xd6ecfd...4fd54f` | ✅ Audited |
| EqbMinterSidechain | unknown | berachain | n/a | 2 deployments: berachain [`0x09bae4...c8e94d`](./contracts/berachain-80094/0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d/); berachain `0x52f0bb...789ca5` | ✅ Audited |
| EqbMsgReceiveEndpoint | unknown | optimism | n/a | 5 deployments: optimism [`0x0cf6ab...80e139`](./contracts/optimism-10/0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139/); bsc `0x2583a2...b4821d`; mantle `0xad2995...53421c`; base `0x245f1d...37a960`; arbitrum `0x2583a2...b4821d` | ✅ Audited |
| EqbMsgReceiveEndpoint | unknown | optimism | n/a | 2 deployments: optimism [`0xfe67c2...5ec9a9`](./contracts/optimism-10/0xfe67c25b5136a4ff8b6eb7187ca3d6f3e25ec9a9/); optimism `0xfe80d6...740b2b` | ✅ Audited |
| EqbMsgReceiveEndpoint | unknown | bsc | n/a | 2 deployments: bsc [`0xad2995...53421c`](./contracts/bsc-56/0xad29951cda3dcd0e570e65a6ee34aa455c53421c/); bsc `0xcbad0c...2c4779` | ✅ Audited |
| EqbMsgReceiveEndpoint | unknown | sonic | n/a | 2 deployments: sonic [`0x0cf6ab...80e139`](./contracts/sonic-146/0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139/); sonic `0xad2995...53421c` | ✅ Audited |
| EqbMsgReceiveEndpoint | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x96c4a4...19ad8e`](./contracts/hyperliquid-999/0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e/); hyperliquid `0xd6ecfd...4fd54f` | ✅ Audited |
| EqbMsgReceiveEndpoint | unknown | mantle | n/a | 2 deployments: mantle [`0x0cf6ab...80e139`](./contracts/mantle-5000/0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139/); mantle `0xa48769...d7d023` | ✅ Audited |
| EqbMsgReceiveEndpoint | unknown | base | n/a | 2 deployments: base [`0x00807f...3966f5`](./contracts/base-8453/0x00807f12343a039acce6c9446696c818b53966f5/); base `0xb3ad8c...32fbb8` | ✅ Audited |
| EqbMsgReceiveEndpoint | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xad2995...53421c`](./contracts/arbitrum-42161/0xad29951cda3dcd0e570e65a6ee34aa455c53421c/); arbitrum `0xd2eb8d...2f5fd2` | ✅ Audited |
| EqbMsgReceiveEndpoint | unknown | berachain | n/a | 2 deployments: berachain [`0x0cf6ab...80e139`](./contracts/berachain-80094/0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139/); berachain `0xfe80d6...740b2b` | ✅ Audited |
| PendleProxyMainchain | core_logic | ethereum | n/a | [`0x646279...f1e6e3`](./contracts/ethereum-1/0x64627901dadb46ed7f275fd4fc87d086cff1e6e3/) | ✅ Audited |
| PendleProxySidechain | core_logic | optimism | n/a | [`0x4d32c8...0c26bf`](./contracts/optimism-10/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf/) | ✅ Audited |
| PendleProxySidechain | core_logic | bsc | n/a | [`0x646279...f1e6e3`](./contracts/bsc-56/0x64627901dadb46ed7f275fd4fc87d086cff1e6e3/) | ✅ Audited |
| PendleProxySidechain | core_logic | sonic | n/a | [`0x479603...9e218d`](./contracts/sonic-146/0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d/) | ✅ Audited |
| PendleProxySidechain | core_logic | hyperliquid | n/a | [`0x18c616...e2b356`](./contracts/hyperliquid-999/0x18c61629e6cbadb85c29ba7993f251b3ebe2b356/) | ✅ Audited |
| PendleProxySidechain | core_logic | mantle | n/a | [`0x479603...9e218d`](./contracts/mantle-5000/0x479603de0a8b6d2f4d4eaa1058eea0d7ac9e218d/) | ✅ Audited |
| PendleProxySidechain | core_logic | base | n/a | [`0x920873...56a3b8`](./contracts/base-8453/0x920873e5b302a619c54c908adfb77a1c4256a3b8/) | ✅ Audited |
| PendleProxySidechain | core_logic | arbitrum | n/a | [`0x646279...f1e6e3`](./contracts/arbitrum-42161/0x64627901dadb46ed7f275fd4fc87d086cff1e6e3/) | ✅ Audited |
| PendleProxySidechain | core_logic | berachain | n/a | [`0x4d32c8...0c26bf`](./contracts/berachain-80094/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf/) | ✅ Audited |
| VaultDepositToken | core_logic | hyperliquid | n/a | [`0x03b86b...c88e4e`](./contracts/hyperliquid-999/0x03b86b5b4f49fd2059c813b3f928c0b276c88e4e/) | ✅ Audited |
| VaultDepositTokenFactory | registry | ethereum | n/a | [`0x05eaaa...10f7a0`](./contracts/ethereum-1/0x05eaaa615f01ab1b8a0bd1e6a487d80c8910f7a0/) | ✅ Audited |
| VaultEPendle | core_logic | ethereum | n/a | [`0xd30d6f...968059`](./contracts/ethereum-1/0xd30d6fd662c0d92b49f3c3e478e125ba1d968059/) | ✅ Audited |
| VlEqb | unknown | optimism | n/a | 2 deployments: optimism [`0x22fc5a...ce4455`](./contracts/optimism-10/0x22fc5a29bd3d6cce19a06f844019fd506fce4455/); optimism `0x71e0ce...401ebf` | ✅ Audited |
| VlEqb | unknown | bsc | n/a | 2 deployments: bsc [`0x0140de...91d3bc`](./contracts/bsc-56/0x0140de476f49b6b42f7b73612b6dc317ab91d3bc/); bsc `0x660e0d...cc9fa9` | ✅ Audited |
| VlEqb | unknown | sonic | n/a | 2 deployments: sonic [`0x0140de...91d3bc`](./contracts/sonic-146/0x0140de476f49b6b42f7b73612b6dc317ab91d3bc/); sonic `0x71e0ce...401ebf` | ✅ Audited |
| VlEqb | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x357f55...25e849`](./contracts/hyperliquid-999/0x357f55b46821a6c6e476cc32ebb2674cd125e849/); hyperliquid `0x70f619...7e72b9` | ✅ Audited |
| VlEqb | unknown | mantle | n/a | 2 deployments: mantle [`0x0140de...91d3bc`](./contracts/mantle-5000/0x0140de476f49b6b42f7b73612b6dc317ab91d3bc/); mantle `0x71e0ce...401ebf` | ✅ Audited |
| VlEqb | unknown | base | n/a | 2 deployments: base [`0x22fc5a...ce4455`](./contracts/base-8453/0x22fc5a29bd3d6cce19a06f844019fd506fce4455/); base `0x70f619...7e72b9` | ✅ Audited |
| VlEqb | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x22fc5a...ce4455`](./contracts/arbitrum-42161/0x22fc5a29bd3d6cce19a06f844019fd506fce4455/); arbitrum `0x70f619...7e72b9` | ✅ Audited |
| VlEqb | unknown | berachain | n/a | 2 deployments: berachain [`0x22fc5a...ce4455`](./contracts/berachain-80094/0x22fc5a29bd3d6cce19a06f844019fd506fce4455/); berachain `0x71e0ce...401ebf` | ✅ Audited |

### ⚠️ Verified + Unaudited (131)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbVester | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x3138de...996d7c`](./contracts/arbitrum-42161/0x3138de0703a6e7da0a84c8849b7ae9bc45996d7c/); arbitrum `0x4e7322...30c2af`; arbitrum `0xd40ccc...842bea`; arbitrum `0xecc88a...718219` | ⚠️ Unaudited |
| ArbVester | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xaff75f...8bc5fe`](./contracts/arbitrum-42161/0xaff75fc541211977df0efbb3427afe15078bc5fe/); arbitrum `0xf857c9...227e03` | ⚠️ Unaudited |
| ArbVester | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xdc947a...86c88c`](./contracts/arbitrum-42161/0xdc947a371d46356859860451198cb3450086c88c/); arbitrum `0xf0b66f...1d00d9` | ⚠️ Unaudited |
| BaseRewardPoolV2 | core_logic | hyperliquid | n/a | [`0x9cb59c...cc7353`](./contracts/hyperliquid-999/0x9cb59c379fab6e2a0b6312eb2b0cc40008cc7353/) | ⚠️ Unaudited |
| BaseRewardPoolV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x02414e...9d05bf`](./contracts/arbitrum-42161/0x02414e51d06535fa85b738297a3947fd339d05bf/); arbitrum `0x91b4ce...d0319f` | ⚠️ Unaudited |
| BaseRewardPoolV2_1 | core_logic | hyperliquid | n/a | [`0x1679fe...46723b`](./contracts/hyperliquid-999/0x1679fe95b11959c694af8627e5360267e146723b/) | ⚠️ Unaudited |
| BribeManager | unknown | bsc | n/a | 2 deployments: bsc [`0x1f3ef2...562b40`](./contracts/bsc-56/0x1f3ef2d1d16422e2be357f2f7ca538077f562b40/); bsc `0xb9ee33...930718` | ⚠️ Unaudited |
| BribeManager | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x1d0e04...83c477`](./contracts/arbitrum-42161/0x1d0e04dd2788f0b58a43957c4dc29b9d8783c477/); arbitrum `0xb3c40b...df99ca`; arbitrum `0xe5b4b7...baef8e` | ⚠️ Unaudited |
| ChainlinkOracle | unknown | arbitrum | n/a | [`0x803551...aef1d7`](./contracts/arbitrum-42161/0x8035511ed38a2213370deeb22887e3deefaef1d7/) | ⚠️ Unaudited |
| DepositTokenV2 | token | hyperliquid | n/a | [`0xf7498d...052981`](./contracts/hyperliquid-999/0xf7498deabbae0e8d5673336a8fb348ef95052981/) | ⚠️ Unaudited |
| EPendleOFT | token | bsc | n/a | 8 deployments: optimism `0x8a5a43...bbd36c`; bsc [`0x06fd8e...534f37`](./contracts/bsc-56/0x06fd8e5dae63afcbfdf10604efca3143df534f37/); sonic `0x7700eb...ed33b1`; hyperliquid `0x6408d9...d16005`; hyperliquid `0xb2d167...4264c8`; mantle `0x7700eb...ed33b1`; base `0x2350ea...709913`; arbitrum `0x8c9b5b...0029f5` | ⚠️ Unaudited |
| EPendleProxyOFT | core_logic | ethereum | n/a | [`0x6ae382...45c577`](./contracts/ethereum-1/0x6ae382814e24b6ddf588901c597f26a9e945c577/) | ⚠️ Unaudited |
| EpendleVault | unknown | optimism | n/a | [`0x4f1cdf...3d3452`](./contracts/optimism-10/0x4f1cdf43f5e407abd569878976960d4d0a3d3452/) | ⚠️ Unaudited |
| EpendleVault | unknown | bsc | n/a | [`0x6668f0...e84431`](./contracts/bsc-56/0x6668f019cc82c80b601c28b1249725f764e84431/) | ⚠️ Unaudited |
| EpendleVault | unknown | sonic | n/a | [`0x02c033...d981e4`](./contracts/sonic-146/0x02c033574b6ca02ddae8e0b4070d551149d981e4/) | ⚠️ Unaudited |
| EpendleVault | core_logic | hyperliquid | n/a | [`0x5e73e7...ea4531`](./contracts/hyperliquid-999/0x5e73e741b0b15e10789a30a91953794e44ea4531/) | ⚠️ Unaudited |
| EpendleVault | unknown | mantle | n/a | [`0x02c033...d981e4`](./contracts/mantle-5000/0x02c033574b6ca02ddae8e0b4070d551149d981e4/) | ⚠️ Unaudited |
| EpendleVault | unknown | base | n/a | [`0x9f1453...ca341a`](./contracts/base-8453/0x9f14535a90bc7ca72739a73c1d382bd272ca341a/) | ⚠️ Unaudited |
| EpendleVault | unknown | arbitrum | n/a | [`0x35fd17...ef2862`](./contracts/arbitrum-42161/0x35fd17966de95870a77653791018026eb2ef2862/) | ⚠️ Unaudited |
| EpendleVault | unknown | berachain | n/a | [`0x4f1cdf...3d3452`](./contracts/berachain-80094/0x4f1cdf43f5e407abd569878976960d4d0a3d3452/) | ⚠️ Unaudited |
| EPendleVaultSidechain | unknown | optimism | n/a | [`0x261341...96f574`](./contracts/optimism-10/0x261341d7b6320aa4840639960c78d5fff296f574/) | ⚠️ Unaudited |
| EqbConfig | unknown | optimism | n/a | 2 deployments: optimism [`0x92c26e...825299`](./contracts/optimism-10/0x92c26ee7fa6483364fa5ce322a153d6d61825299/); optimism `0xcaed9f...b558d2` | ⚠️ Unaudited |
| EqbConfig | unknown | bsc | n/a | 2 deployments: bsc [`0x172cdd...da9b4f`](./contracts/bsc-56/0x172cdd024403f7cb7168db98df8ddbfe53da9b4f/); bsc `0xe343ed...31b454` | ⚠️ Unaudited |
| EqbConfig | unknown | sonic | n/a | 2 deployments: sonic [`0x2350ea...709913`](./contracts/sonic-146/0x2350ea954113b1a1eebaaccc47f3a4985f709913/); sonic `0xb2d167...4264c8` | ⚠️ Unaudited |
| EqbConfig | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xa6ec3c...9f05c3`](./contracts/hyperliquid-999/0xa6ec3c5a9124f9fd9ce02b24ed41cfd3489f05c3/); hyperliquid `0xd8d51c...aae903` | ⚠️ Unaudited |
| EqbConfig | unknown | mantle | n/a | 2 deployments: mantle [`0x28f35f...9f7bd2`](./contracts/mantle-5000/0x28f35f19237dbbb8c4eba29ed6cd0ba9a89f7bd2/); mantle `0xb2d167...4264c8` | ⚠️ Unaudited |
| EqbConfig | unknown | base | n/a | 2 deployments: base [`0x324cd3...ccaea6`](./contracts/base-8453/0x324cd3f3a12c44b44269d775b2b75d5d06ccaea6/); base `0xd8d51c...aae903` | ⚠️ Unaudited |
| EqbConfig | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x941acd...727e0a`](./contracts/arbitrum-42161/0x941acd127578aa1f63089438207abd560b727e0a/); arbitrum `0xef7382...44520b` | ⚠️ Unaudited |
| EqbConfig | unknown | berachain | n/a | 2 deployments: berachain [`0x500d5e...84d3d6`](./contracts/berachain-80094/0x500d5e0d9d7337963ed6449e81cb52928184d3d6/); berachain `0xb2d167...4264c8` | ⚠️ Unaudited |
| EqbInfo | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xb899db...d5c640`](./contracts/arbitrum-42161/0xb899db9308c21899a08fa36e805ea7924fd5c640/); arbitrum `0xda2b96...857467` | ⚠️ Unaudited |
| EqbInfo | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xd08511...0ed544`](./contracts/arbitrum-42161/0xd08511359f0b5ced2046e13cbb08c392310ed544/); arbitrum `0xf29a4f...61fbc9` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | optimism | n/a | 2 deployments: optimism [`0xad2995...53421c`](./contracts/optimism-10/0xad29951cda3dcd0e570e65a6ee34aa455c53421c/); optimism `0xb1a4bb...49a429` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | bsc | n/a | 2 deployments: bsc [`0x18c616...e2b356`](./contracts/bsc-56/0x18c61629e6cbadb85c29ba7993f251b3ebe2b356/); bsc `0xb14f64...6e6453` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | sonic | n/a | 2 deployments: sonic [`0x18c616...e2b356`](./contracts/sonic-146/0x18c61629e6cbadb85c29ba7993f251b3ebe2b356/); sonic `0x2583a2...b4821d` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0cf6ab...80e139`](./contracts/hyperliquid-999/0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139/); hyperliquid `0xfe80d6...740b2b` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | mantle | n/a | 2 deployments: mantle [`0x2583a2...b4821d`](./contracts/mantle-5000/0x2583a2538272f31e9a15dd12a432b8c96ab4821d/); mantle `0x273e61...06c399` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | base | n/a | 2 deployments: base [`0x576ab2...2f748d`](./contracts/base-8453/0x576ab25b7ad987ba2841dacff3727411dc2f748d/); base `0xb0d718...78eb7a` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x18c616...e2b356`](./contracts/arbitrum-42161/0x18c61629e6cbadb85c29ba7993f251b3ebe2b356/); arbitrum `0x8505b3...ac6b64` | ⚠️ Unaudited |
| EqbMsgSendEndpoint | unknown | berachain | n/a | 2 deployments: berachain [`0x2583a2...b4821d`](./contracts/berachain-80094/0x2583a2538272f31e9a15dd12a432b8c96ab4821d/); berachain `0xad2995...53421c` | ⚠️ Unaudited |
| EQBOFT | token | hyperliquid | n/a | 3 deployments: hyperliquid [`0x3ce842...ad4e50`](./contracts/hyperliquid-999/0x3ce8426dc0b90a36f0e20d7c2acaaf4578ad4e50/); hyperliquid `0x73e247...4cac8c`; hyperliquid `0xb4484a...2cefd1` | ⚠️ Unaudited |
| EqbRewardDistributor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x64528d...b5d7ef`](./contracts/arbitrum-42161/0x64528d6d89c806af6a8df82f9e2f6805b4b5d7ef/); arbitrum `0xa4ffa4...cc2e88` | ⚠️ Unaudited |
| EqbZap | unknown | optimism | n/a | 2 deployments: optimism [`0x357f55...25e849`](./contracts/optimism-10/0x357f55b46821a6c6e476cc32ebb2674cd125e849/); optimism `0x41f5e9...45b8ed` | ⚠️ Unaudited |
| EqbZap | unknown | bsc | n/a | 2 deployments: bsc [`0x03e2bc...634513`](./contracts/bsc-56/0x03e2bc724bb0caeb6c1bbd043b0424b310634513/); bsc `0x22fc5a...ce4455` | ⚠️ Unaudited |
| EqbZap | unknown | sonic | n/a | 2 deployments: sonic [`0x22fc5a...ce4455`](./contracts/sonic-146/0x22fc5a29bd3d6cce19a06f844019fd506fce4455/); sonic `0x70f619...7e72b9` | ⚠️ Unaudited |
| EqbZap | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xc7517f...421e32`](./contracts/hyperliquid-999/0xc7517f481cc0a645e63f870830a4b2e580421e32/); hyperliquid `0xd8967b...73ec27` | ⚠️ Unaudited |
| EqbZap | unknown | mantle | n/a | 2 deployments: mantle [`0x22fc5a...ce4455`](./contracts/mantle-5000/0x22fc5a29bd3d6cce19a06f844019fd506fce4455/); mantle `0x70f619...7e72b9` | ⚠️ Unaudited |
| EqbZap | unknown | base | n/a | 2 deployments: base [`0x357f55...25e849`](./contracts/base-8453/0x357f55b46821a6c6e476cc32ebb2674cd125e849/); base `0xc7517f...421e32` | ⚠️ Unaudited |
| EqbZap | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x39f478...f6993d`](./contracts/arbitrum-42161/0x39f4789bdc5560ade254fce8b7f221205df6993d/); arbitrum `0xc7517f...421e32` | ⚠️ Unaudited |
| EqbZap | unknown | berachain | n/a | 2 deployments: berachain [`0x357f55...25e849`](./contracts/berachain-80094/0x357f55b46821a6c6e476cc32ebb2674cd125e849/); berachain `0xf8aa1d...920332` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | optimism | n/a | 2 deployments: optimism [`0xc7517f...421e32`](./contracts/optimism-10/0xc7517f481cc0a645e63f870830a4b2e580421e32/); optimism `0xd8967b...73ec27` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | bsc | n/a | 2 deployments: bsc [`0x0dc8b9...5279ce`](./contracts/bsc-56/0x0dc8b9a68785a1168d6a8e2ccbdca41be85279ce/); bsc `0xa929e8...e06599` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | sonic | n/a | 2 deployments: sonic [`0x357f55...25e849`](./contracts/sonic-146/0x357f55b46821a6c6e476cc32ebb2674cd125e849/); sonic `0xc7517f...421e32` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x02c033...d981e4`](./contracts/hyperliquid-999/0x02c033574b6ca02ddae8e0b4070d551149d981e4/); hyperliquid `0x4f1cdf...3d3452` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | mantle | n/a | 2 deployments: mantle [`0x357f55...25e849`](./contracts/mantle-5000/0x357f55b46821a6c6e476cc32ebb2674cd125e849/); mantle `0xc7517f...421e32` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | base | n/a | 2 deployments: base [`0x02c033...d981e4`](./contracts/base-8453/0x02c033574b6ca02ddae8e0b4070d551149d981e4/); base `0xd8967b...73ec27` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x03b611...0c83e8`](./contracts/arbitrum-42161/0x03b611858f8e8913f8db7d9fdbf59e352b0c83e8/); arbitrum `0x6cea12...63afb8`; arbitrum `0xbda88a...f6035b`; arbitrum `0xf2d038...f7ca80` | ⚠️ Unaudited |
| ERC20MintBurn | unknown | berachain | n/a | 2 deployments: berachain [`0xc7517f...421e32`](./contracts/berachain-80094/0xc7517f481cc0a645e63f870830a4b2e580421e32/); berachain `0xd8967b...73ec27` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x397aa0...51afa0`](./contracts/ethereum-1/0x397aa01343b89f18934979824c3ad227f251afa0/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x29828f...6f0444`](./contracts/arbitrum-42161/0x29828f442c98aaa71a853594fec7c0c3806f0444/); arbitrum `0xfda441...2724e4` | ⚠️ Unaudited |
| HyperliquidExtension | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4bb133...61b259`](./contracts/hyperliquid-999/0x4bb13347ce7cbf8884adb137aeda0355ef61b259/); hyperliquid `0xf4d923...e37949` | ⚠️ Unaudited |
| IrrevocableLockingPool | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x22126a...c1c3ad`](./contracts/arbitrum-42161/0x22126a0fb5cfbc327a8e36f141e4712e45c1c3ad/); arbitrum `0x7d0583...68b7c0`; arbitrum `0xed8262...b625bd` | ⚠️ Unaudited |
| L2StandardERC20 | token | mantle | n/a | 2 deployments: mantle [`0x3e7ef8...276747`](./contracts/mantle-5000/0x3e7ef8f50246f725885102e8238cbba33f276747/); mantle `0x9e1028...6840e0` | ⚠️ Unaudited |
| MerkleDistributorFactory | unknown | sonic | n/a | 2 deployments: sonic [`0x950904...df354e`](./contracts/sonic-146/0x950904baaf84c5fdf48277f9cd5b637b30df354e/); sonic `0x9be393...68b88c` | ⚠️ Unaudited |
| MerkleDistributorFactory | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x35fd17...ef2862`](./contracts/hyperliquid-999/0x35fd17966de95870a77653791018026eb2ef2862/); hyperliquid `0x4ecf06...3ad188` | ⚠️ Unaudited |
| MerkleDistributorFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x2e4245...8264a5`](./contracts/arbitrum-42161/0x2e42452396a8f091703c0ed3c86ef4e3de8264a5/); arbitrum `0xce1533...c49ae3` | ⚠️ Unaudited |
| MerkleDistributorFactory | unknown | berachain | n/a | 2 deployments: berachain [`0x64239a...7ed2ac`](./contracts/berachain-80094/0x64239a6a0661c89f60b56b6971155a78a07ed2ac/); berachain `0xa2cb78...e1ea19` | ⚠️ Unaudited |
| MerkleDistributorV2 | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x097b76...4f9bb5`](./contracts/arbitrum-42161/0x097b765a94847d861defa072997f0d1ea74f9bb5/); arbitrum `0x6e3a28...a7c650`; arbitrum `0x9e2c5a...5d1ba1`; arbitrum `0xdcd16f...5d8b01`; arbitrum `0xff6697...2da328` | ⚠️ Unaudited |
| MerkleDistributorV2 | unknown | arbitrum | n/a | 4 deployments: ethereum `0x5be392...254886`; sonic `0x4abc7c...6eadd2`; hyperliquid `0xbda88a...f6035b`; arbitrum [`0x2e1ac6...95968f`](./contracts/arbitrum-42161/0x2e1ac65a73bfcc857d0161636d551cbf0395968f/) | ⚠️ Unaudited |
| MerkleDistributorV2 | unknown | berachain | n/a | 2 deployments: berachain [`0x0cf4a2...a5997b`](./contracts/berachain-80094/0x0cf4a2c2a57378b8c99a04e3d1b22dc527a5997b/); berachain `0x672618...a73de9` | ⚠️ Unaudited |
| MintedERC20 | token | sonic | n/a | 3 deployments: sonic [`0x48540d...6fc335`](./contracts/sonic-146/0x48540d1140331277b9157a096e40e6f5506fc335/); sonic `0x9cacb5...7e8c6b`; sonic `0xf1ef7d...71a74b` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | 6 deployments: optimism `0x76c37f...858481`; optimism `0xaf3a6f...dca2a0`; optimism `0xbc7b1f...6e66e1`; base [`0x010cd9...80a50a`](./contracts/base-8453/0x010cd9b9be7e416e07793dc6ce2f45868a80a50a/); base `0xa99f6e...9eeb3e`; base `0xc6e669...f239f0` | ⚠️ Unaudited |
| OUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xad11a8...b35afa`](./contracts/hyperliquid-999/0xad11a8beb98bbf61dbb1aa0f6d6f2ecd87b35afa/); hyperliquid `0xcd9a74...5aa7c8` | ⚠️ Unaudited |
| PendleBoosterMainchain | core_logic | ethereum | n/a | [`0x4d32c8...0c26bf`](./contracts/ethereum-1/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | optimism | n/a | [`0x18c616...e2b356`](./contracts/optimism-10/0x18c61629e6cbadb85c29ba7993f251b3ebe2b356/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | bsc | n/a | [`0x4d32c8...0c26bf`](./contracts/bsc-56/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | sonic | n/a | [`0x920873...56a3b8`](./contracts/sonic-146/0x920873e5b302a619c54c908adfb77a1c4256a3b8/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | hyperliquid | n/a | [`0xad2995...53421c`](./contracts/hyperliquid-999/0xad29951cda3dcd0e570e65a6ee34aa455c53421c/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | mantle | n/a | [`0x920873...56a3b8`](./contracts/mantle-5000/0x920873e5b302a619c54c908adfb77a1c4256a3b8/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | base | n/a | [`0x2583a2...b4821d`](./contracts/base-8453/0x2583a2538272f31e9a15dd12a432b8c96ab4821d/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | plasma | n/a | [`0xd6ecfd...4fd54f`](./contracts/plasma-9745/0xd6ecfd0d5f1dfd3ad30f267a3a29b3e1bc4fd54f/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | arbitrum | n/a | [`0x4d32c8...0c26bf`](./contracts/arbitrum-42161/0x4d32c8ff2facc771ec7efc70d6a8468bc30c26bf/) | ⚠️ Unaudited |
| PendleBoosterSidechain | core_logic | berachain | n/a | [`0x18c616...e2b356`](./contracts/berachain-80094/0x18c61629e6cbadb85c29ba7993f251b3ebe2b356/) | ⚠️ Unaudited |
| PendleCampaigns | unknown | optimism | n/a | [`0x576ab2...2f748d`](./contracts/optimism-10/0x576ab25b7ad987ba2841dacff3727411dc2f748d/) | ⚠️ Unaudited |
| PendleCampaigns | unknown | optimism | n/a | [`0xb3ad8c...32fbb8`](./contracts/optimism-10/0xb3ad8c89ccd87c1f8aa169f9b91120b35532fbb8/) | ⚠️ Unaudited |
| PendleCampaigns | unknown | arbitrum | n/a | [`0x4c960b...5362ef`](./contracts/arbitrum-42161/0x4c960b0dc60873d7f01bc393ff2d5443285362ef/) | ⚠️ Unaudited |
| PendleCampaignSidechainV2 | unknown | bsc | n/a | [`0x245f1d...37a960`](./contracts/bsc-56/0x245f1d70acaacd219564fccb75f108917037a960/) | ⚠️ Unaudited |
| PendleCampaignSidechainV2 | unknown | arbitrum | n/a | [`0xd8d51c...aae903`](./contracts/arbitrum-42161/0xd8d51c42557343f8f1696eb63d9c3c96a2aae903/) | ⚠️ Unaudited |
| PendleDepositor | core_logic | ethereum | n/a | [`0x0140de...91d3bc`](./contracts/ethereum-1/0x0140de476f49b6b42f7b73612b6dc317ab91d3bc/) | ⚠️ Unaudited |
| PendleOFT | token | plasma | n/a | [`0x17bac5...831f24`](./contracts/plasma-9745/0x17bac5f906c9a0282ac06a59958d85796c831f24/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | 12 deployments: optimism `0x96a375...656e98`; sonic `0x646279...f1e6e3`; hyperliquid `0x6d2053...432c35`; hyperliquid `0x880f61...89167f`; hyperliquid `0x920873...56a3b8`; hyperliquid `0xb1eead...2b86c3`; hyperliquid `0xd8cf92...d6ff4d`; mantle `0x646279...f1e6e3`; base `0x4d32c8...0c26bf`; arbitrum [`0x24188b...1f0dbd`](./contracts/arbitrum-42161/0x24188b23541501d084e8e8d71b0d9e74a81f0dbd/); arbitrum `0xd217be...91c8c3`; berachain `0x479603...9e218d` | ⚠️ Unaudited |
| RestakeStrategy | core_logic | ethereum | n/a | [`0x16c72b...5ae2c6`](./contracts/ethereum-1/0x16c72bbc1dd1b5ba766c4d2d1466efa2845ae2c6/) | ⚠️ Unaudited |
| RewardDistributor | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x273e61...06c399`](./contracts/arbitrum-42161/0x273e6197d4e0c1b3d8bf73615d0b88834006c399/); arbitrum `0x35e523...1f2d2c`; arbitrum `0x4abc7c...6eadd2`; arbitrum `0x696aa3...898239`; arbitrum `0x708544...c1ef49`; arbitrum `0x7b1210...8f40ca`; arbitrum `0x87707d...e88046`; arbitrum `0x919cf6...4187c5` | ⚠️ Unaudited |
| SmartConvertorArbi | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6a82a1...896c60`](./contracts/arbitrum-42161/0x6a82a15da16ba35692d07c36954b444bea896c60/); arbitrum `0xd72b94...94243a` | ⚠️ Unaudited |
| StakingPoolManager | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x473e84...8a713b`](./contracts/ethereum-1/0x473e8407f2ad24148ac1fe18873b8a22aa8a713b/); ethereum `0x50c6f7...da5e97`; ethereum `0xbf6871...8b372c` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | 3 deployments: arbitrum [`0x0c880f...a8c9e8`](./contracts/arbitrum-42161/0x0c880f6761f1af8d9aa9c466984b80dab9a8c9e8/); arbitrum `0xbfbcfe...bbad9c`; arbitrum `0xd48482...242ac3` | ⚠️ Unaudited |
| TetherTokenOFTExtension | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xaf368c...bcbebf`](./contracts/hyperliquid-999/0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf/); hyperliquid `0xe9aba8...0f7de7` | ⚠️ Unaudited |
| TetherTokenOFTExtension | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xd94926...620cb4`](./contracts/hyperliquid-999/0xd9492653457a69e9f4987db43d7fa0112e620cb4/); hyperliquid `0xe1ad84...93681e` | ⚠️ Unaudited |
| TimelockController | governance | arbitrum | n/a | 2 deployments: ethereum `0xe2a634...c11d03`; arbitrum [`0x5c249a...e21886`](./contracts/arbitrum-42161/0x5c249a5f396638253470c4eae7bc5092dde21886/) | ⚠️ Unaudited |
| TokenImplementation | token | bsc | n/a | 2 deployments: bsc [`0x374ca3...468609`](./contracts/bsc-56/0x374ca32fd7934c5d43240e1e73fa9b2283468609/); bsc `0x5fec85...5bd6bc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x86a201...a818c5`](./contracts/bsc-56/0x86a20111feae36f3511a30c0640d2099b3a818c5/); bsc `0xc00371...9ef9dc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x0cf6ab...80e139`](./contracts/base-8453/0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139/); base `0xad2995...53421c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x96c4a4...19ad8e`](./contracts/base-8453/0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e/); base `0xfe80d6...740b2b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 2 deployments: plasma [`0x0140de...91d3bc`](./contracts/plasma-9745/0x0140de476f49b6b42f7b73612b6dc317ab91d3bc/); plasma `0x660e0d...cc9fa9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 2 deployments: plasma [`0x02c033...d981e4`](./contracts/plasma-9745/0x02c033574b6ca02ddae8e0b4070d551149d981e4/); plasma `0x4f1cdf...3d3452` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 2 deployments: plasma [`0x09bae4...c8e94d`](./contracts/plasma-9745/0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d/); plasma `0x52f0bb...789ca5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 2 deployments: plasma [`0x22fc5a...ce4455`](./contracts/plasma-9745/0x22fc5a29bd3d6cce19a06f844019fd506fce4455/); plasma `0x71e0ce...401ebf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 2 deployments: plasma [`0x2350ea...709913`](./contracts/plasma-9745/0x2350ea954113b1a1eebaaccc47f3a4985f709913/); plasma `0x741620...c4fecc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 2 deployments: plasma [`0x26ae16...186f5c`](./contracts/plasma-9745/0x26ae167bca873fd11de43691c6215b48f0186f5c/); plasma `0x9cb59c...cc7353` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 2 deployments: plasma [`0x357f55...25e849`](./contracts/plasma-9745/0x357f55b46821a6c6e476cc32ebb2674cd125e849/); plasma `0x70f619...7e72b9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 2 deployments: plasma [`0x500d5e...84d3d6`](./contracts/plasma-9745/0x500d5e0d9d7337963ed6449e81cb52928184d3d6/); plasma `0xb2d167...4264c8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 2 deployments: plasma [`0x5e73e7...ea4531`](./contracts/plasma-9745/0x5e73e741b0b15e10789a30a91953794e44ea4531/); plasma `0x9f1453...ca341a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 2 deployments: plasma [`0x6ee066...01b923`](./contracts/plasma-9745/0x6ee066b813cd8c2586d86f79ed0025e81801b923/); plasma `0x7700eb...ed33b1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 2 deployments: plasma [`0xa6ec3c...9f05c3`](./contracts/plasma-9745/0xa6ec3c5a9124f9fd9ce02b24ed41cfd3489f05c3/); plasma `0xd8d51c...aae903` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | plasma | n/a | 2 deployments: plasma [`0xad2995...53421c`](./contracts/plasma-9745/0xad29951cda3dcd0e570e65a6ee34aa455c53421c/); plasma `0xfe80d6...740b2b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | berachain | n/a | 2 deployments: berachain [`0x187520...84b0ab`](./contracts/berachain-80094/0x18752094e78e1ba4f58a573472f72721d184b0ab/); berachain `0x950904...df354e` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | hyperliquid | n/a | 36 deployments: ethereum `0xca5d2c...c60968`; ethereum `0xccf949...5dc593`; optimism `0x07dc38...83de3c`; optimism `0x666136...64f340`; optimism `0xf303f7...7c812b`; bsc `0x6f6163...6d8ca8`; bsc `0xbdd61e...0af179`; bsc `0xca93b4...a3b91b`; bsc `0xd804ab...9087ed`; sonic `0x187520...84b0ab`; sonic `0x672618...a73de9`; sonic `0xd8d51c...aae903`; sonic `0xf7498d...052981`; hyperliquid [`0x00807f...3966f5`](./contracts/hyperliquid-999/0x00807f12343a039acce6c9446696c818b53966f5/); hyperliquid `0x183b30...b75e78`; hyperliquid `0x2386f0...a56cdf`; hyperliquid `0x245f1d...37a960`; hyperliquid `0x26ae16...186f5c`; hyperliquid `0x55f140...0433a8`; hyperliquid `0xb0d718...78eb7a`; hyperliquid `0xf2d038...f7ca80`; mantle `0xa2cb78...e1ea19`; mantle `0xd8d51c...aae903`; mantle `0xf7498d...052981`; base `0x26ae16...186f5c`; base `0x950904...df354e`; base `0xf7498d...052981`; arbitrum `0x421c2c...c47ff0`; arbitrum `0x43a5bf...bd8c5f`; arbitrum `0x4b4f09...769db8`; arbitrum `0xd1705b...aeba15`; berachain `0x3a4db3...10d4b3`; berachain `0x55f140...0433a8`; berachain `0xa6ec3c...9f05c3`; berachain `0xb213f2...1247b5`; berachain `0xc3aa06...b451db` | ⚠️ Unaudited |
| VaultEPendleArbi | core_logic | arbitrum | n/a | [`0x372277...b8319f`](./contracts/arbitrum-42161/0x37227785a1f4545ed914690e395e4cfe96b8319f/) | ⚠️ Unaudited |
| VestedEscrow | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x1e8248...eedf5e`](./contracts/arbitrum-42161/0x1e82489bc071953ec95de7416d76424a43eedf5e/); arbitrum `0x299c64...c748af`; arbitrum `0x6f6163...6d8ca8`; arbitrum `0xc3aa06...b451db` | ⚠️ Unaudited |
| VestedEscrowFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x54d715...eb13ec`](./contracts/arbitrum-42161/0x54d715a1c5a95fa44efb4465f70ca6de96eb13ec/); arbitrum `0x74138a...8d7ba8` | ⚠️ Unaudited |
| VoEqb | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x172cdd...da9b4f`](./contracts/arbitrum-42161/0x172cdd024403f7cb7168db98df8ddbfe53da9b4f/); arbitrum `0xac1f84...305ab1` | ⚠️ Unaudited |
| VotingEscrowPendleMainchain | operational_periphery | ethereum | n/a | [`0x4f30a9...170210`](./contracts/ethereum-1/0x4f30a9d41b80ecc5b94306ab4364951ae3170210/) | ⚠️ Unaudited |
| WOFT | token | berachain | n/a | 3 deployments: berachain [`0x88bb2b...289032`](./contracts/berachain-80094/0x88bb2bf040fa5bf2bd3b79ff9dfa035ed1289032/); berachain `0xf9ee98...7e2037`; berachain `0xff9c59...88aef6` | ⚠️ Unaudited |
| XEPendleVester | operational_periphery | arbitrum | n/a | [`0x0f9492...ac45e6`](./contracts/arbitrum-42161/0x0f9492931cdd612ece9f7bbbe786490238ac45e6/) | ⚠️ Unaudited |
| XEqbToken | unknown | optimism | n/a | 2 deployments: optimism [`0x96c4a4...19ad8e`](./contracts/optimism-10/0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e/); optimism `0xd6ecfd...4fd54f` | ⚠️ Unaudited |
| XEqbToken | unknown | bsc | n/a | 2 deployments: bsc [`0x0cf6ab...80e139`](./contracts/bsc-56/0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139/); bsc `0xfe80d6...740b2b` | ⚠️ Unaudited |
| XEqbToken | unknown | sonic | n/a | 2 deployments: sonic [`0x96c4a4...19ad8e`](./contracts/sonic-146/0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e/); sonic `0xfe80d6...740b2b` | ⚠️ Unaudited |
| XEqbToken | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x09bae4...c8e94d`](./contracts/hyperliquid-999/0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d/); hyperliquid `0x52f0bb...789ca5` | ⚠️ Unaudited |
| XEqbToken | unknown | mantle | n/a | 2 deployments: mantle [`0x96c4a4...19ad8e`](./contracts/mantle-5000/0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e/); mantle `0xfe80d6...740b2b` | ⚠️ Unaudited |
| XEqbToken | unknown | base | n/a | 2 deployments: base [`0x09bae4...c8e94d`](./contracts/base-8453/0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d/); base `0xd6ecfd...4fd54f` | ⚠️ Unaudited |
| XEqbToken | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x96c4a4...19ad8e`](./contracts/arbitrum-42161/0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e/); arbitrum `0xfe80d6...740b2b` | ⚠️ Unaudited |
| XEqbToken | unknown | berachain | n/a | 2 deployments: berachain [`0x96c4a4...19ad8e`](./contracts/berachain-80094/0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e/); berachain `0xd6ecfd...4fd54f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1e511a...f0f6e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5fa7e...bdfeed` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x686fed...faafbe` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd308ab...223fd1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf857c9...227e03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13e029...1beb94` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3521b7...1eb705` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x893bb3...219cb6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab5542...a106bf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe0e1c3...83f343` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x00807f...3966f5` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x017778...29cd7b` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x03b86b...c88e4e` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x0cf6ab...80e139` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x1679fe...46723b` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x183b30...b75e78` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x245f1d...37a960` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x36ff28...c3d32f` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x647316...482ee9` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x77b777...d65973` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x8d9467...a50ba7` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xb0d718...78eb7a` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xd51d25...86aef1` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xf7498d...052981` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa1b1af...d04e55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd76ca...728567` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x4abc7c...6eadd2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xce740f...e7b76a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/QKP8F3G6lbidKTu8nkEc/Equilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FQKP8F3G6lbidKTu8nkEc%2FEquilibria_Staked_LP_Audit_Report_by_WatchPug-rev1.pdf) | WatchPug | Audit | 2025-06 | aging | Direct | contract_name | 2 | n/a |
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/b8B3TscrPCJ1YmEeCb4Q/Equilibria_Continuous_Audit_May_21,_25_Audit_Report_by_WatchPug.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2Fb8B3TscrPCJ1YmEeCb4Q%2FEquilibria_Continuous_Audit_May_21%2C_25_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/mmHtThc39pihExxQM3Jx/Equilibria_#2__Audit_Report_by_WatchPug.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FmmHtThc39pihExxQM3Jx%2FEquilibria_%232__Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2024-11 | aging | Direct | contract_name | 8 | n/a |
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/T7caQbKvLq6KPy2IRcuY/Equilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FT7caQbKvLq6KPy2IRcuY%2FEquilibria_ePENDLE_Auto_Compounder_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-10 | stale | Direct | contract_name | 1 | n/a |
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/5r1RtgYBP522L4FGQ3lx/Equilibria_Audit_Report_by_WatchPug.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2F5r1RtgYBP522L4FGQ3lx%2FEquilibria_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-06 | stale | Direct | contract_name | 184 | high |
| [spaces/b5P1hkrsWCfUtKNR9bnR/uploads/FHRXG7oZJB5z0Ir5Ybpa/PeckShield-Audit-Report-Equilibria-v1.0.pdf](https://2415009796-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fb5P1hkrsWCfUtKNR9bnR%2Fuploads%2FFHRXG7oZJB5z0Ir5Ybpa%2FPeckShield-Audit-Report-Equilibria-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | contract_name | 63 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x3138de...996d7c`](./contracts/arbitrum-42161/0x3138de0703a6e7da0a84c8849b7ae9bc45996d7c/) | ArbVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaff75f...8bc5fe`](./contracts/arbitrum-42161/0xaff75fc541211977df0efbb3427afe15078bc5fe/) | ArbVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdc947a...86c88c`](./contracts/arbitrum-42161/0xdc947a371d46356859860451198cb3450086c88c/) | ArbVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x9cb59c...cc7353`](./contracts/hyperliquid-999/0x9cb59c379fab6e2a0b6312eb2b0cc40008cc7353/) | BaseRewardPoolV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02414e...9d05bf`](./contracts/arbitrum-42161/0x02414e51d06535fa85b738297a3947fd339d05bf/) | BaseRewardPoolV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1679fe...46723b`](./contracts/hyperliquid-999/0x1679fe95b11959c694af8627e5360267e146723b/) | BaseRewardPoolV2_1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1f3ef2...562b40`](./contracts/bsc-56/0x1f3ef2d1d16422e2be357f2f7ca538077f562b40/) | BribeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1d0e04...83c477`](./contracts/arbitrum-42161/0x1d0e04dd2788f0b58a43957c4dc29b9d8783c477/) | BribeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xf7498d...052981`](./contracts/hyperliquid-999/0xf7498deabbae0e8d5673336a8fb348ef95052981/) | DepositTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x06fd8e...534f37`](./contracts/bsc-56/0x06fd8e5dae63afcbfdf10604efca3143df534f37/) | EPendleOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ae382...45c577`](./contracts/ethereum-1/0x6ae382814e24b6ddf588901c597f26a9e945c577/) | EPendleProxyOFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4f1cdf...3d3452`](./contracts/optimism-10/0x4f1cdf43f5e407abd569878976960d4d0a3d3452/) | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6668f0...e84431`](./contracts/bsc-56/0x6668f019cc82c80b601c28b1249725f764e84431/) | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x02c033...d981e4`](./contracts/sonic-146/0x02c033574b6ca02ddae8e0b4070d551149d981e4/) | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x5e73e7...ea4531`](./contracts/hyperliquid-999/0x5e73e741b0b15e10789a30a91953794e44ea4531/) | EpendleVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x02c033...d981e4`](./contracts/mantle-5000/0x02c033574b6ca02ddae8e0b4070d551149d981e4/) | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9f1453...ca341a`](./contracts/base-8453/0x9f14535a90bc7ca72739a73c1d382bd272ca341a/) | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x35fd17...ef2862`](./contracts/arbitrum-42161/0x35fd17966de95870a77653791018026eb2ef2862/) | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x4f1cdf...3d3452`](./contracts/berachain-80094/0x4f1cdf43f5e407abd569878976960d4d0a3d3452/) | EpendleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x261341...96f574`](./contracts/optimism-10/0x261341d7b6320aa4840639960c78d5fff296f574/) | EPendleVaultSidechain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x92c26e...825299`](./contracts/optimism-10/0x92c26ee7fa6483364fa5ce322a153d6d61825299/) | EqbConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x172cdd...da9b4f`](./contracts/bsc-56/0x172cdd024403f7cb7168db98df8ddbfe53da9b4f/) | EqbConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2350ea...709913`](./contracts/sonic-146/0x2350ea954113b1a1eebaaccc47f3a4985f709913/) | EqbConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xa6ec3c...9f05c3`](./contracts/hyperliquid-999/0xa6ec3c5a9124f9fd9ce02b24ed41cfd3489f05c3/) | EqbConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x28f35f...9f7bd2`](./contracts/mantle-5000/0x28f35f19237dbbb8c4eba29ed6cd0ba9a89f7bd2/) | EqbConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x324cd3...ccaea6`](./contracts/base-8453/0x324cd3f3a12c44b44269d775b2b75d5d06ccaea6/) | EqbConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x941acd...727e0a`](./contracts/arbitrum-42161/0x941acd127578aa1f63089438207abd560b727e0a/) | EqbConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x500d5e...84d3d6`](./contracts/berachain-80094/0x500d5e0d9d7337963ed6449e81cb52928184d3d6/) | EqbConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb899db...d5c640`](./contracts/arbitrum-42161/0xb899db9308c21899a08fa36e805ea7924fd5c640/) | EqbInfo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd08511...0ed544`](./contracts/arbitrum-42161/0xd08511359f0b5ced2046e13cbb08c392310ed544/) | EqbInfo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xad2995...53421c`](./contracts/optimism-10/0xad29951cda3dcd0e570e65a6ee34aa455c53421c/) | EqbMsgSendEndpoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18c616...e2b356`](./contracts/bsc-56/0x18c61629e6cbadb85c29ba7993f251b3ebe2b356/) | EqbMsgSendEndpoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x18c616...e2b356`](./contracts/sonic-146/0x18c61629e6cbadb85c29ba7993f251b3ebe2b356/) | EqbMsgSendEndpoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0cf6ab...80e139`](./contracts/hyperliquid-999/0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139/) | EqbMsgSendEndpoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x2583a2...b4821d`](./contracts/mantle-5000/0x2583a2538272f31e9a15dd12a432b8c96ab4821d/) | EqbMsgSendEndpoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x576ab2...2f748d`](./contracts/base-8453/0x576ab25b7ad987ba2841dacff3727411dc2f748d/) | EqbMsgSendEndpoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x18c616...e2b356`](./contracts/arbitrum-42161/0x18c61629e6cbadb85c29ba7993f251b3ebe2b356/) | EqbMsgSendEndpoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x2583a2...b4821d`](./contracts/berachain-80094/0x2583a2538272f31e9a15dd12a432b8c96ab4821d/) | EqbMsgSendEndpoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x3ce842...ad4e50`](./contracts/hyperliquid-999/0x3ce8426dc0b90a36f0e20d7c2acaaf4578ad4e50/) | EQBOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x64528d...b5d7ef`](./contracts/arbitrum-42161/0x64528d6d89c806af6a8df82f9e2f6805b4b5d7ef/) | EqbRewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x357f55...25e849`](./contracts/optimism-10/0x357f55b46821a6c6e476cc32ebb2674cd125e849/) | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03e2bc...634513`](./contracts/bsc-56/0x03e2bc724bb0caeb6c1bbd043b0424b310634513/) | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x22fc5a...ce4455`](./contracts/sonic-146/0x22fc5a29bd3d6cce19a06f844019fd506fce4455/) | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xc7517f...421e32`](./contracts/hyperliquid-999/0xc7517f481cc0a645e63f870830a4b2e580421e32/) | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x22fc5a...ce4455`](./contracts/mantle-5000/0x22fc5a29bd3d6cce19a06f844019fd506fce4455/) | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x357f55...25e849`](./contracts/base-8453/0x357f55b46821a6c6e476cc32ebb2674cd125e849/) | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x39f478...f6993d`](./contracts/arbitrum-42161/0x39f4789bdc5560ade254fce8b7f221205df6993d/) | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x357f55...25e849`](./contracts/berachain-80094/0x357f55b46821a6c6e476cc32ebb2674cd125e849/) | EqbZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc7517f...421e32`](./contracts/optimism-10/0xc7517f481cc0a645e63f870830a4b2e580421e32/) | ERC20MintBurn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0dc8b9...5279ce`](./contracts/bsc-56/0x0dc8b9a68785a1168d6a8e2ccbdca41be85279ce/) | ERC20MintBurn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x357f55...25e849`](./contracts/sonic-146/0x357f55b46821a6c6e476cc32ebb2674cd125e849/) | ERC20MintBurn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x02c033...d981e4`](./contracts/hyperliquid-999/0x02c033574b6ca02ddae8e0b4070d551149d981e4/) | ERC20MintBurn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x357f55...25e849`](./contracts/mantle-5000/0x357f55b46821a6c6e476cc32ebb2674cd125e849/) | ERC20MintBurn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02c033...d981e4`](./contracts/base-8453/0x02c033574b6ca02ddae8e0b4070d551149d981e4/) | ERC20MintBurn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x03b611...0c83e8`](./contracts/arbitrum-42161/0x03b611858f8e8913f8db7d9fdbf59e352b0c83e8/) | ERC20MintBurn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xc7517f...421e32`](./contracts/berachain-80094/0xc7517f481cc0a645e63f870830a4b2e580421e32/) | ERC20MintBurn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4bb133...61b259`](./contracts/hyperliquid-999/0x4bb13347ce7cbf8884adb137aeda0355ef61b259/) | HyperliquidExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x22126a...c1c3ad`](./contracts/arbitrum-42161/0x22126a0fb5cfbc327a8e36f141e4712e45c1c3ad/) | IrrevocableLockingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x3e7ef8...276747`](./contracts/mantle-5000/0x3e7ef8f50246f725885102e8238cbba33f276747/) | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x950904...df354e`](./contracts/sonic-146/0x950904baaf84c5fdf48277f9cd5b637b30df354e/) | MerkleDistributorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x35fd17...ef2862`](./contracts/hyperliquid-999/0x35fd17966de95870a77653791018026eb2ef2862/) | MerkleDistributorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2e4245...8264a5`](./contracts/arbitrum-42161/0x2e42452396a8f091703c0ed3c86ef4e3de8264a5/) | MerkleDistributorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x64239a...7ed2ac`](./contracts/berachain-80094/0x64239a6a0661c89f60b56b6971155a78a07ed2ac/) | MerkleDistributorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x097b76...4f9bb5`](./contracts/arbitrum-42161/0x097b765a94847d861defa072997f0d1ea74f9bb5/) | MerkleDistributorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2e1ac6...95968f`](./contracts/arbitrum-42161/0x2e1ac65a73bfcc857d0161636d551cbf0395968f/) | MerkleDistributorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x0cf4a2...a5997b`](./contracts/berachain-80094/0x0cf4a2c2a57378b8c99a04e3d1b22dc527a5997b/) | MerkleDistributorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x48540d...6fc335`](./contracts/sonic-146/0x48540d1140331277b9157a096e40e6f5506fc335/) | MintedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x010cd9...80a50a`](./contracts/base-8453/0x010cd9b9be7e416e07793dc6ce2f45868a80a50a/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xad11a8...b35afa`](./contracts/hyperliquid-999/0xad11a8beb98bbf61dbb1aa0f6d6f2ecd87b35afa/) | OUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16c72b...5ae2c6`](./contracts/ethereum-1/0x16c72bbc1dd1b5ba766c4d2d1466efa2845ae2c6/) | RestakeStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x273e61...06c399`](./contracts/arbitrum-42161/0x273e6197d4e0c1b3d8bf73615d0b88834006c399/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a82a1...896c60`](./contracts/arbitrum-42161/0x6a82a15da16ba35692d07c36954b444bea896c60/) | SmartConvertorArbi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x473e84...8a713b`](./contracts/ethereum-1/0x473e8407f2ad24148ac1fe18873b8a22aa8a713b/) | StakingPoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0c880f...a8c9e8`](./contracts/arbitrum-42161/0x0c880f6761f1af8d9aa9c466984b80dab9a8c9e8/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xaf368c...bcbebf`](./contracts/hyperliquid-999/0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf/) | TetherTokenOFTExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xd94926...620cb4`](./contracts/hyperliquid-999/0xd9492653457a69e9f4987db43d7fa0112e620cb4/) | TetherTokenOFTExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x374ca3...468609`](./contracts/bsc-56/0x374ca32fd7934c5d43240e1e73fa9b2283468609/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x372277...b8319f`](./contracts/arbitrum-42161/0x37227785a1f4545ed914690e395e4cfe96b8319f/) | VaultEPendleArbi | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1e8248...eedf5e`](./contracts/arbitrum-42161/0x1e82489bc071953ec95de7416d76424a43eedf5e/) | VestedEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x54d715...eb13ec`](./contracts/arbitrum-42161/0x54d715a1c5a95fa44efb4465f70ca6de96eb13ec/) | VestedEscrowFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x172cdd...da9b4f`](./contracts/arbitrum-42161/0x172cdd024403f7cb7168db98df8ddbfe53da9b4f/) | VoEqb | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f30a9...170210`](./contracts/ethereum-1/0x4f30a9d41b80ecc5b94306ab4364951ae3170210/) | VotingEscrowPendleMainchain | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x88bb2b...289032`](./contracts/berachain-80094/0x88bb2bf040fa5bf2bd3b79ff9dfa035ed1289032/) | WOFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0f9492...ac45e6`](./contracts/arbitrum-42161/0x0f9492931cdd612ece9f7bbbe786490238ac45e6/) | XEPendleVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x96c4a4...19ad8e`](./contracts/optimism-10/0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e/) | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0cf6ab...80e139`](./contracts/bsc-56/0x0cf6ab3c169b0169e35ad58d350cbacdaf80e139/) | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x96c4a4...19ad8e`](./contracts/sonic-146/0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e/) | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x09bae4...c8e94d`](./contracts/hyperliquid-999/0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d/) | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x96c4a4...19ad8e`](./contracts/mantle-5000/0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e/) | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x09bae4...c8e94d`](./contracts/base-8453/0x09bae4c38b1a9142726c6f08dc4d1260b0c8e94d/) | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x96c4a4...19ad8e`](./contracts/arbitrum-42161/0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e/) | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x96c4a4...19ad8e`](./contracts/berachain-80094/0x96c4a48abdf781e9c931cfa92ec0167ba219ad8e/) | XEqbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 150 |
| upstream | 27 |
| standard_library | 16 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=11, extraction_exact=247

Zero-match audit list:

- [3550] spaces/b5P1hkrsWCfUtKNR9bnR/uploads/b8B3TscrPCJ1YmEeCb4Q/Equilibria_Continuous_Audit_May_21,_25_Audit_Report_by_WatchPug.pdf

Fork inheritance lineage and inherited audits are included when available.
