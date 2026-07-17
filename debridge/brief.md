# Agentic Audit Brief: deBridge

## Project Overview

- Project: deBridge (`debridge`)
- Website: [https://app.debridge.com](https://app.debridge.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.816Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, avalanche, base, bsc, cronos, ethereum, hyperliquid, linea, optimism, polygon, sei
- Contract surface: 239 unique implementations (414 raw deployments)
- DeFi Llama TVL: $2,249,833.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 45 project-authored contract(s) across 6 chain(s); 12 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 18 common project-authored base contract(s) (erc20basic, blacklistable, standardtokenwithfees). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 437; live-surface contracts included: 413 (257 live, 156 unknown).
- Excluded by liveness: 24 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 23/101 (22.8%)
- Deployed-live implementations: 122 of 239 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 23/122
- Verified + Unaudited implementations: 99
- Verified by bytecode match: 0
- Unverified implementations: 117
- Unique implementations: 239
- Raw deployments: 414
- Audits discovered: 34 (34 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 13
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/debridge/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 27 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 23 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 22 | 18.0% | 2024-11 |
| Halborn | Tier 2 | 8 | 6.6% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrosschainForwarder | periphery | ethereum | n/a | [`0xc31fc94f3fd088ee53ac915d6e8a14ff25a23c47`](./contracts/ethereum-1/0xc31fc94f3fd088ee53ac915d6e8a14ff25a23c47/) | ✅ Audited |
| DeBridgeGate | operational_periphery | ethereum | n/a | [`0x43de2d77bf8027e25dbd179b491e8d64f38398aa`](./contracts/ethereum-1/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/) | ✅ Audited |
| DeBridgeGate | operational_periphery | bsc | n/a | [`0x43de2d77bf8027e25dbd179b491e8d64f38398aa`](./contracts/bsc-56/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/) | ✅ Audited |
| DeBridgeGate | operational_periphery | polygon | n/a | [`0x43de2d77bf8027e25dbd179b491e8d64f38398aa`](./contracts/polygon-137/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/) | ✅ Audited |
| DeBridgeGate | operational_periphery | arbitrum | n/a | [`0x43de2d77bf8027e25dbd179b491e8d64f38398aa`](./contracts/arbitrum-42161/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/) | ✅ Audited |
| DeBridgeGate | operational_periphery | avalanche | n/a | [`0x43de2d77bf8027e25dbd179b491e8d64f38398aa`](./contracts/avalanche-43114/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/) | ✅ Audited |
| DeBridgeToken | operational_periphery | base | n/a | 11 deployments: ethereum `0xc1656b63d9eeba6d114f6be19565177893e5bcbf`; ethereum `0xf8a2902c0a5f817f5e22c82f453538d3f0734c2b`; optimism `0xc1656b63d9eeba6d114f6be19565177893e5bcbf`; bsc `0xf8a2902c0a5f817f5e22c82f453538d3f0734c2b`; polygon `0xa029fc45535c77fe4a3d3af86b7b8d82c8381e59`; polygon `0xf8a2902c0a5f817f5e22c82f453538d3f0734c2b`; hyperliquid `0xc1656b63d9eeba6d114f6be19565177893e5bcbf`; sei `0xc1656b63d9eeba6d114f6be19565177893e5bcbf`; base [`0x0e4add4dc86ae1aa0fa43bd7e6a9fb8be2d5504d`](./contracts/base-8453/0x0e4add4dc86ae1aa0fa43bd7e6a9fb8be2d5504d/); arbitrum `0xf8a2902c0a5f817f5e22c82f453538d3f0734c2b`; avalanche `0xc1656b63d9eeba6d114f6be19565177893e5bcbf` | ✅ Audited |
| DlnDestination | unknown | ethereum | n/a | [`0xe7351fd770a37282b91d153ee690b63579d6dd7f`](./contracts/ethereum-1/0xe7351fd770a37282b91d153ee690b63579d6dd7f/) | ✅ Audited |
| DlnDestination | unknown | optimism | n/a | [`0xe7351fd770a37282b91d153ee690b63579d6dd7f`](./contracts/optimism-10/0xe7351fd770a37282b91d153ee690b63579d6dd7f/) | ✅ Audited |
| DlnDestination | unknown | bsc | n/a | [`0xe7351fd770a37282b91d153ee690b63579d6dd7f`](./contracts/bsc-56/0xe7351fd770a37282b91d153ee690b63579d6dd7f/) | ✅ Audited |
| DlnDestination | unknown | polygon | n/a | [`0xe7351fd770a37282b91d153ee690b63579d6dd7f`](./contracts/polygon-137/0xe7351fd770a37282b91d153ee690b63579d6dd7f/) | ✅ Audited |
| DlnDestination | unknown | base | n/a | [`0xe7351fd770a37282b91d153ee690b63579d6dd7f`](./contracts/base-8453/0xe7351fd770a37282b91d153ee690b63579d6dd7f/) | ✅ Audited |
| DlnDestination | unknown | arbitrum | n/a | [`0xe7351fd770a37282b91d153ee690b63579d6dd7f`](./contracts/arbitrum-42161/0xe7351fd770a37282b91d153ee690b63579d6dd7f/) | ✅ Audited |
| DlnDestination | unknown | linea | n/a | [`0xe7351fd770a37282b91d153ee690b63579d6dd7f`](./contracts/linea-59144/0xe7351fd770a37282b91d153ee690b63579d6dd7f/) | ✅ Audited |
| DlnSource | unknown | ethereum | n/a | [`0xef4fb24ad0916217251f553c0596f8edc630eb66`](./contracts/ethereum-1/0xef4fb24ad0916217251f553c0596f8edc630eb66/) | ✅ Audited |
| DlnSource | unknown | optimism | n/a | [`0xef4fb24ad0916217251f553c0596f8edc630eb66`](./contracts/optimism-10/0xef4fb24ad0916217251f553c0596f8edc630eb66/) | ✅ Audited |
| DlnSource | unknown | bsc | n/a | [`0xef4fb24ad0916217251f553c0596f8edc630eb66`](./contracts/bsc-56/0xef4fb24ad0916217251f553c0596f8edc630eb66/) | ✅ Audited |
| DlnSource | unknown | polygon | n/a | [`0xef4fb24ad0916217251f553c0596f8edc630eb66`](./contracts/polygon-137/0xef4fb24ad0916217251f553c0596f8edc630eb66/) | ✅ Audited |
| DlnSource | unknown | sei | n/a | 8 deployments: ethereum `0x7ec2e51a9c4f088354ad8ad8703c12d81bf21677`; optimism `0x7ec2e51a9c4f088354ad8ad8703c12d81bf21677`; bsc `0x7ec2e51a9c4f088354ad8ad8703c12d81bf21677`; polygon `0x7ec2e51a9c4f088354ad8ad8703c12d81bf21677`; sei [`0x2041cc32792884323ac519e3f9fd2802d6745973`](./contracts/sei-1329/0x2041cc32792884323ac519e3f9fd2802d6745973/); base `0x7ec2e51a9c4f088354ad8ad8703c12d81bf21677`; arbitrum `0x7ec2e51a9c4f088354ad8ad8703c12d81bf21677`; linea `0x7ec2e51a9c4f088354ad8ad8703c12d81bf21677` | ✅ Audited |
| DlnSource | unknown | base | n/a | [`0xef4fb24ad0916217251f553c0596f8edc630eb66`](./contracts/base-8453/0xef4fb24ad0916217251f553c0596f8edc630eb66/) | ✅ Audited |
| DlnSource | unknown | arbitrum | n/a | [`0xef4fb24ad0916217251f553c0596f8edc630eb66`](./contracts/arbitrum-42161/0xef4fb24ad0916217251f553c0596f8edc630eb66/) | ✅ Audited |
| DlnSource | unknown | linea | n/a | [`0xef4fb24ad0916217251f553c0596f8edc630eb66`](./contracts/linea-59144/0xef4fb24ad0916217251f553c0596f8edc630eb66/) | ✅ Audited |
| SimpleFeeProxy | unknown | ethereum | n/a | [`0xc2bac0db5b18b0c3225581ba14bd0b448c623636`](./contracts/ethereum-1/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ✅ Audited |

### ⚠️ Verified + Unaudited (99)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BEP20TokenImplementation | token | bsc | n/a | [`0xba2ae424d960c26247dd6c32edc70b295c744c43`](./contracts/bsc-56/0xba2ae424d960c26247dd6c32edc70b295c744c43/) | ⚠️ Unaudited |
| CallProxy | unknown | ethereum | n/a | 23 deployments: ethereum [`0x0c4b79205f6cc20c0e0201b61b99e77f3ce3b67a`](./contracts/ethereum-1/0x0c4b79205f6cc20c0e0201b61b99e77f3ce3b67a/); ethereum `0x4e446b6cf4d127827c83ca0c848db0b43841c391`; ethereum `0x752a9e96e8683400ae238270c97c1d0160861fef`; ethereum `0xd5317e82bfeff70b4773f0fcab5e2abfa3c7d63b`; ethereum `0xe5a04b307b31af07f4dfcaa840952ff7d3845c7e`; bsc [`0x0c4b79205f6cc20c0e0201b61b99e77f3ce3b67a`](./contracts/bsc-56/0x0c4b79205f6cc20c0e0201b61b99e77f3ce3b67a/); bsc `0x4e446b6cf4d127827c83ca0c848db0b43841c391`; bsc `0x752a9e96e8683400ae238270c97c1d0160861fef`; bsc `0xd5317e82bfeff70b4773f0fcab5e2abfa3c7d63b`; bsc `0xe5a04b307b31af07f4dfcaa840952ff7d3845c7e`; polygon [`0x0c4b79205f6cc20c0e0201b61b99e77f3ce3b67a`](./contracts/polygon-137/0x0c4b79205f6cc20c0e0201b61b99e77f3ce3b67a/); polygon `0x4e446b6cf4d127827c83ca0c848db0b43841c391`; polygon `0x752a9e96e8683400ae238270c97c1d0160861fef`; polygon `0xd5317e82bfeff70b4773f0fcab5e2abfa3c7d63b`; polygon `0xe5a04b307b31af07f4dfcaa840952ff7d3845c7e`; arbitrum [`0x0c4b79205f6cc20c0e0201b61b99e77f3ce3b67a`](./contracts/arbitrum-42161/0x0c4b79205f6cc20c0e0201b61b99e77f3ce3b67a/); arbitrum `0x4e446b6cf4d127827c83ca0c848db0b43841c391`; arbitrum `0x752a9e96e8683400ae238270c97c1d0160861fef`; arbitrum `0xd5317e82bfeff70b4773f0fcab5e2abfa3c7d63b`; arbitrum `0xe5a04b307b31af07f4dfcaa840952ff7d3845c7e`; avalanche `0x1e4823ac98e53e89d0df2743560511371b0570bc`; avalanche `0x4e446b6cf4d127827c83ca0c848db0b43841c391`; avalanche `0x8b0e35838b04221e285e82fb88c54066ceb01278` | ⚠️ Unaudited |
| CallProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824`](./contracts/ethereum-1/0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824/); ethereum `0xbd3d657ae87671ec6f8d6272a9f431a7c4a9b6f8` | ⚠️ Unaudited |
| CallProxy | unknown | optimism | n/a | 2 deployments: optimism [`0x4e446b6cf4d127827c83ca0c848db0b43841c391`](./contracts/optimism-10/0x4e446b6cf4d127827c83ca0c848db0b43841c391/); optimism `0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824` | ⚠️ Unaudited |
| CallProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824`](./contracts/bsc-56/0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824/); bsc `0xbd3d657ae87671ec6f8d6272a9f431a7c4a9b6f8` | ⚠️ Unaudited |
| CallProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824`](./contracts/polygon-137/0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824/); polygon `0xbd3d657ae87671ec6f8d6272a9f431a7c4a9b6f8` | ⚠️ Unaudited |
| CallProxy | unknown | base | n/a | 2 deployments: base [`0x4e446b6cf4d127827c83ca0c848db0b43841c391`](./contracts/base-8453/0x4e446b6cf4d127827c83ca0c848db0b43841c391/); base `0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824` | ⚠️ Unaudited |
| CallProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824`](./contracts/arbitrum-42161/0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824/); arbitrum `0xbd3d657ae87671ec6f8d6272a9f431a7c4a9b6f8` | ⚠️ Unaudited |
| CallProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824`](./contracts/avalanche-43114/0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824/); avalanche `0xd34c2302f497b8a7fe2d07865f31dbe04d5044d6` | ⚠️ Unaudited |
| CallProxy | unknown | linea | n/a | 2 deployments: linea [`0x4e446b6cf4d127827c83ca0c848db0b43841c391`](./contracts/linea-59144/0x4e446b6cf4d127827c83ca0c848db0b43841c391/); linea `0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824` | ⚠️ Unaudited |
| CrosschainForwarder | unknown | bsc | n/a | [`0xc31fc94f3fd088ee53ac915d6e8a14ff25a23c47`](./contracts/bsc-56/0xc31fc94f3fd088ee53ac915d6e8a14ff25a23c47/) | ⚠️ Unaudited |
| CrosschainForwarder | unknown | polygon | n/a | [`0xc31fc94f3fd088ee53ac915d6e8a14ff25a23c47`](./contracts/polygon-137/0xc31fc94f3fd088ee53ac915d6e8a14ff25a23c47/) | ⚠️ Unaudited |
| CrosschainForwarder | unknown | polygon | n/a | 2 deployments: polygon [`0xd095a2b84e80532cef267def3561dd66e5414946`](./contracts/polygon-137/0xd095a2b84e80532cef267def3561dd66e5414946/); polygon `0xd244637bd9faa8c449f1194be6ff4d1c89db5e30` | ⚠️ Unaudited |
| CrosschainForwarder | unknown | arbitrum | n/a | [`0xc31fc94f3fd088ee53ac915d6e8a14ff25a23c47`](./contracts/arbitrum-42161/0xc31fc94f3fd088ee53ac915d6e8a14ff25a23c47/) | ⚠️ Unaudited |
| DeBridgeGate | unknown | ethereum | n/a | 21 deployments: ethereum [`0x24455aa55ded7728783c9474be8ea2f5c935f8eb`](./contracts/ethereum-1/0x24455aa55ded7728783c9474be8ea2f5c935f8eb/); ethereum `0x51bfd427d06b2a5fc3588f9d023994a9f70e0ce0`; ethereum `0xb1a20d1c885fd775df97396397d6f8f07abdd20d`; ethereum `0xc8550d85759babe6851235212563fa2ff04961bf`; ethereum `0xfce0502293dcacbfc2d663f7814b2771decfd576`; bsc [`0x24455aa55ded7728783c9474be8ea2f5c935f8eb`](./contracts/bsc-56/0x24455aa55ded7728783c9474be8ea2f5c935f8eb/); bsc `0x51bfd427d06b2a5fc3588f9d023994a9f70e0ce0`; bsc `0xb1a20d1c885fd775df97396397d6f8f07abdd20d`; bsc `0xc8550d85759babe6851235212563fa2ff04961bf`; bsc `0xfce0502293dcacbfc2d663f7814b2771decfd576`; polygon `0x51bfd427d06b2a5fc3588f9d023994a9f70e0ce0`; polygon `0xb1a20d1c885fd775df97396397d6f8f07abdd20d`; polygon `0xc8550d85759babe6851235212563fa2ff04961bf`; polygon `0xcc7571c12b6f4647c4b8c851b62721f6a373c695`; polygon `0xfce0502293dcacbfc2d663f7814b2771decfd576`; arbitrum [`0x24455aa55ded7728783c9474be8ea2f5c935f8eb`](./contracts/arbitrum-42161/0x24455aa55ded7728783c9474be8ea2f5c935f8eb/); arbitrum `0x51bfd427d06b2a5fc3588f9d023994a9f70e0ce0`; arbitrum `0xb1a20d1c885fd775df97396397d6f8f07abdd20d`; arbitrum `0xc8550d85759babe6851235212563fa2ff04961bf`; arbitrum `0xfce0502293dcacbfc2d663f7814b2771decfd576`; avalanche `0xb1a20d1c885fd775df97396397d6f8f07abdd20d` | ⚠️ Unaudited |
| DeBridgeGate | unknown | optimism | n/a | 2 deployments: optimism [`0x43de2d77bf8027e25dbd179b491e8d64f38398aa`](./contracts/optimism-10/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/); optimism `0xb1a20d1c885fd775df97396397d6f8f07abdd20d` | ⚠️ Unaudited |
| DeBridgeGate | unknown | base | n/a | 2 deployments: base [`0xc1656b63d9eeba6d114f6be19565177893e5bcbf`](./contracts/base-8453/0xc1656b63d9eeba6d114f6be19565177893e5bcbf/); base `0xe4427af3555cd9303d728c491364fadfdd7494fe` | ⚠️ Unaudited |
| DeBridgeGate | unknown | linea | n/a | 2 deployments: linea [`0x43de2d77bf8027e25dbd179b491e8d64f38398aa`](./contracts/linea-59144/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/); linea `0xb1a20d1c885fd775df97396397d6f8f07abdd20d` | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | ethereum | n/a | [`0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`](./contracts/ethereum-1/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | optimism | n/a | [`0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`](./contracts/optimism-10/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | bsc | n/a | [`0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`](./contracts/bsc-56/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | polygon | n/a | [`0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`](./contracts/polygon-137/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | base | n/a | [`0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`](./contracts/base-8453/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | arbitrum | n/a | [`0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`](./contracts/arbitrum-42161/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | linea | n/a | [`0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`](./contracts/linea-59144/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| DeBridgeTokenDeployer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/ethereum-1/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); ethereum `0x8244d6ffe0695b30b2bad424683ee3bc534ea464` | ⚠️ Unaudited |
| DeBridgeTokenDeployer | unknown | optimism | n/a | 2 deployments: optimism [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/optimism-10/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); optimism `0x8244d6ffe0695b30b2bad424683ee3bc534ea464` | ⚠️ Unaudited |
| DeBridgeTokenDeployer | unknown | bsc | n/a | 2 deployments: bsc [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/bsc-56/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); bsc `0x8244d6ffe0695b30b2bad424683ee3bc534ea464` | ⚠️ Unaudited |
| DeBridgeTokenDeployer | unknown | polygon | n/a | 2 deployments: polygon [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/polygon-137/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); polygon `0x8244d6ffe0695b30b2bad424683ee3bc534ea464` | ⚠️ Unaudited |
| DeBridgeTokenDeployer | unknown | base | n/a | 2 deployments: base [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/base-8453/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); base `0x8244d6ffe0695b30b2bad424683ee3bc534ea464` | ⚠️ Unaudited |
| DeBridgeTokenDeployer | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/arbitrum-42161/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); arbitrum `0x8244d6ffe0695b30b2bad424683ee3bc534ea464` | ⚠️ Unaudited |
| DeBridgeTokenDeployer | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/avalanche-43114/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); avalanche `0x8244d6ffe0695b30b2bad424683ee3bc534ea464` | ⚠️ Unaudited |
| DeBridgeTokenDeployer | unknown | linea | n/a | 2 deployments: linea [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/linea-59144/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); linea `0x8244d6ffe0695b30b2bad424683ee3bc534ea464` | ⚠️ Unaudited |
| DlnDestination | unknown | ethereum | n/a | 14 deployments: ethereum [`0x33b72f60f2ceb7bdb64873ac10015a35bed81717`](./contracts/ethereum-1/0x33b72f60f2ceb7bdb64873ac10015a35bed81717/); ethereum `0x979791c607a388702690599120c46332f61f592c`; optimism [`0x33b72f60f2ceb7bdb64873ac10015a35bed81717`](./contracts/optimism-10/0x33b72f60f2ceb7bdb64873ac10015a35bed81717/); optimism `0x979791c607a388702690599120c46332f61f592c`; bsc [`0x33b72f60f2ceb7bdb64873ac10015a35bed81717`](./contracts/bsc-56/0x33b72f60f2ceb7bdb64873ac10015a35bed81717/); bsc `0x979791c607a388702690599120c46332f61f592c`; polygon [`0x33b72f60f2ceb7bdb64873ac10015a35bed81717`](./contracts/polygon-137/0x33b72f60f2ceb7bdb64873ac10015a35bed81717/); polygon `0xfb43e404d4e45beac5ba8e2fd08a0182e66ee807`; hyperliquid `0x60e50145db18e09ff2bb277e88d3c264ff57b91f`; base [`0x33b72f60f2ceb7bdb64873ac10015a35bed81717`](./contracts/base-8453/0x33b72f60f2ceb7bdb64873ac10015a35bed81717/); base `0x979791c607a388702690599120c46332f61f592c`; arbitrum [`0x33b72f60f2ceb7bdb64873ac10015a35bed81717`](./contracts/arbitrum-42161/0x33b72f60f2ceb7bdb64873ac10015a35bed81717/); arbitrum `0x979791c607a388702690599120c46332f61f592c`; linea `0x979791c607a388702690599120c46332f61f592c` | ⚠️ Unaudited |
| DlnExternalCallAdapter | unknown | ethereum | n/a | [`0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9`](./contracts/ethereum-1/0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9/) | ⚠️ Unaudited |
| ExternalCallExecutor | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x05bd82dbb7c5c2cf571112bd1ad4e7c02e10ebea`](./contracts/hyperliquid-999/0x05bd82dbb7c5c2cf571112bd1ad4e7c02e10ebea/); sei [`0x05bd82dbb7c5c2cf571112bd1ad4e7c02e10ebea`](./contracts/sei-1329/0x05bd82dbb7c5c2cf571112bd1ad4e7c02e10ebea/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | [`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | base | n/a | [`0xf0a9d50f912d64d1105b276526e21881bf48a29e`](./contracts/base-8453/0xf0a9d50f912d64d1105b276526e21881bf48a29e/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | 22 deployments: ethereum `0xa7b88a746fa457578d5abd6234471f07d895f46b`; ethereum `0xc86ab72dc6da7ef91a96650f3bc23125cd997130`; ethereum `0xe4427af3555cd9303d728c491364fadfdd7494fe`; optimism `0xa7b88a746fa457578d5abd6234471f07d895f46b`; optimism `0xc86ab72dc6da7ef91a96650f3bc23125cd997130`; optimism `0xe4427af3555cd9303d728c491364fadfdd7494fe`; bsc `0xa7b88a746fa457578d5abd6234471f07d895f46b`; bsc `0xc86ab72dc6da7ef91a96650f3bc23125cd997130`; bsc `0xe4427af3555cd9303d728c491364fadfdd7494fe`; polygon `0xa7b88a746fa457578d5abd6234471f07d895f46b`; polygon `0xc86ab72dc6da7ef91a96650f3bc23125cd997130`; polygon `0xe4427af3555cd9303d728c491364fadfdd7494fe`; base [`0x43de2d77bf8027e25dbd179b491e8d64f38398aa`](./contracts/base-8453/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/); base `0xa7b88a746fa457578d5abd6234471f07d895f46b`; base `0xc86ab72dc6da7ef91a96650f3bc23125cd997130`; arbitrum `0xa7b88a746fa457578d5abd6234471f07d895f46b`; arbitrum `0xc86ab72dc6da7ef91a96650f3bc23125cd997130`; arbitrum `0xe4427af3555cd9303d728c491364fadfdd7494fe`; avalanche `0xe4427af3555cd9303d728c491364fadfdd7494fe`; linea `0xa7b88a746fa457578d5abd6234471f07d895f46b`; linea `0xc86ab72dc6da7ef91a96650f3bc23125cd997130`; linea `0xe4427af3555cd9303d728c491364fadfdd7494fe` | ⚠️ Unaudited |
| SignatureVerifier | unknown | ethereum | n/a | 4 deployments: ethereum [`0x2a3e72ed893b5958690e16c3bbe1bd92137b6250`](./contracts/ethereum-1/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); bsc [`0x2a3e72ed893b5958690e16c3bbe1bd92137b6250`](./contracts/bsc-56/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); polygon [`0x2a3e72ed893b5958690e16c3bbe1bd92137b6250`](./contracts/polygon-137/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); arbitrum [`0x2a3e72ed893b5958690e16c3bbe1bd92137b6250`](./contracts/arbitrum-42161/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/) | ⚠️ Unaudited |
| SignatureVerifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c`](./contracts/ethereum-1/0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c/); ethereum `0xfe7de3c1e1bd252c67667b56347cabfc6df08df4` | ⚠️ Unaudited |
| SignatureVerifier | unknown | optimism | n/a | 2 deployments: optimism [`0x2a3e72ed893b5958690e16c3bbe1bd92137b6250`](./contracts/optimism-10/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); optimism `0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c` | ⚠️ Unaudited |
| SignatureVerifier | unknown | bsc | n/a | 2 deployments: bsc [`0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c`](./contracts/bsc-56/0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c/); bsc `0xfe7de3c1e1bd252c67667b56347cabfc6df08df4` | ⚠️ Unaudited |
| SignatureVerifier | unknown | polygon | n/a | 2 deployments: polygon [`0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c`](./contracts/polygon-137/0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c/); polygon `0xfe7de3c1e1bd252c67667b56347cabfc6df08df4` | ⚠️ Unaudited |
| SignatureVerifier | unknown | base | n/a | 2 deployments: base [`0x2a3e72ed893b5958690e16c3bbe1bd92137b6250`](./contracts/base-8453/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); base `0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c` | ⚠️ Unaudited |
| SignatureVerifier | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c`](./contracts/arbitrum-42161/0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c/); arbitrum `0xfe7de3c1e1bd252c67667b56347cabfc6df08df4` | ⚠️ Unaudited |
| SignatureVerifier | unknown | avalanche | n/a | 2 deployments: avalanche [`0x2a3e72ed893b5958690e16c3bbe1bd92137b6250`](./contracts/avalanche-43114/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); avalanche `0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c` | ⚠️ Unaudited |
| SignatureVerifier | unknown | linea | n/a | 2 deployments: linea [`0x2a3e72ed893b5958690e16c3bbe1bd92137b6250`](./contracts/linea-59144/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); linea `0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c` | ⚠️ Unaudited |
| SimpleFeeProxy | unknown | ethereum | n/a | 11 deployments: ethereum [`0x27406ebf0b76923d93b4c6c6224bcab7fff11f87`](./contracts/ethereum-1/0x27406ebf0b76923d93b4c6c6224bcab7fff11f87/); ethereum `0x37a52ddb753c924f8c914de65ef00b5210caa83c`; optimism [`0x27406ebf0b76923d93b4c6c6224bcab7fff11f87`](./contracts/optimism-10/0x27406ebf0b76923d93b4c6c6224bcab7fff11f87/); bsc [`0x27406ebf0b76923d93b4c6c6224bcab7fff11f87`](./contracts/bsc-56/0x27406ebf0b76923d93b4c6c6224bcab7fff11f87/); bsc `0x37a52ddb753c924f8c914de65ef00b5210caa83c`; polygon [`0x27406ebf0b76923d93b4c6c6224bcab7fff11f87`](./contracts/polygon-137/0x27406ebf0b76923d93b4c6c6224bcab7fff11f87/); polygon `0x37a52ddb753c924f8c914de65ef00b5210caa83c`; base [`0x27406ebf0b76923d93b4c6c6224bcab7fff11f87`](./contracts/base-8453/0x27406ebf0b76923d93b4c6c6224bcab7fff11f87/); arbitrum [`0x27406ebf0b76923d93b4c6c6224bcab7fff11f87`](./contracts/arbitrum-42161/0x27406ebf0b76923d93b4c6c6224bcab7fff11f87/); arbitrum `0x37a52ddb753c924f8c914de65ef00b5210caa83c`; avalanche [`0x27406ebf0b76923d93b4c6c6224bcab7fff11f87`](./contracts/avalanche-43114/0x27406ebf0b76923d93b4c6c6224bcab7fff11f87/) | ⚠️ Unaudited |
| Subscription | unknown | ethereum | n/a | [`0x2328ee20fa271073328dc94e52dd5b61aa0c91a7`](./contracts/ethereum-1/0x2328ee20fa271073328dc94e52dd5b61aa0c91a7/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f958d2ee523a2206206994597c13d831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x413dddce3d0ead2489648e482d192a7758c2b1b4`](./contracts/ethereum-1/0x413dddce3d0ead2489648e482d192a7758c2b1b4/); ethereum `0x57d69a7a9781fca922fcc0667789c1431c86a837` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x55c93b20dd2f790ac429d6341a022a781791654a`](./contracts/ethereum-1/0x55c93b20dd2f790ac429d6341a022a781791654a/); ethereum `0x8b0e35838b04221e285e82fb88c54066ceb01278` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | 2 deployments: optimism [`0x413dddce3d0ead2489648e482d192a7758c2b1b4`](./contracts/optimism-10/0x413dddce3d0ead2489648e482d192a7758c2b1b4/); optimism `0x58404964365264665f4f37217848b10873d50336` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | optimism | n/a | [`0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9`](./contracts/optimism-10/0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | optimism | n/a | [`0xc2bac0db5b18b0c3225581ba14bd0b448c623636`](./contracts/optimism-10/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x413dddce3d0ead2489648e482d192a7758c2b1b4`](./contracts/bsc-56/0x413dddce3d0ead2489648e482d192a7758c2b1b4/); bsc `0x57d69a7a9781fca922fcc0667789c1431c86a837` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x55c93b20dd2f790ac429d6341a022a781791654a`](./contracts/bsc-56/0x55c93b20dd2f790ac429d6341a022a781791654a/); bsc `0x8b0e35838b04221e285e82fb88c54066ceb01278` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | [`0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9`](./contracts/bsc-56/0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | [`0xc2bac0db5b18b0c3225581ba14bd0b448c623636`](./contracts/bsc-56/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x413dddce3d0ead2489648e482d192a7758c2b1b4`](./contracts/polygon-137/0x413dddce3d0ead2489648e482d192a7758c2b1b4/); polygon `0x57d69a7a9781fca922fcc0667789c1431c86a837` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x55c93b20dd2f790ac429d6341a022a781791654a`](./contracts/polygon-137/0x55c93b20dd2f790ac429d6341a022a781791654a/); polygon `0x8b0e35838b04221e285e82fb88c54066ceb01278` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | [`0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9`](./contracts/polygon-137/0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | polygon | n/a | [`0xc2bac0db5b18b0c3225581ba14bd0b448c623636`](./contracts/polygon-137/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2a3e72ed893b5958690e16c3bbe1bd92137b6250`](./contracts/hyperliquid-999/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); hyperliquid `0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x43de2d77bf8027e25dbd179b491e8d64f38398aa`](./contracts/hyperliquid-999/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/); hyperliquid `0xb1a20d1c885fd775df97396397d6f8f07abdd20d`; hyperliquid `0xe4427af3555cd9303d728c491364fadfdd7494fe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/hyperliquid-999/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); hyperliquid `0x8244d6ffe0695b30b2bad424683ee3bc534ea464` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4e446b6cf4d127827c83ca0c848db0b43841c391`](./contracts/hyperliquid-999/0x4e446b6cf4d127827c83ca0c848db0b43841c391/); hyperliquid `0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | hyperliquid | n/a | [`0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`](./contracts/hyperliquid-999/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6a3615489a414b3d6361fb388a714c89c5dd5625`](./contracts/hyperliquid-999/0x6a3615489a414b3d6361fb388a714c89c5dd5625/); hyperliquid `0xef4fb24ad0916217251f553c0596f8edc630eb66` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x95c99ea6d7e72e99f18049019a427a4a17c53a30`](./contracts/hyperliquid-999/0x95c99ea6d7e72e99f18049019a427a4a17c53a30/); hyperliquid `0xa7b88a746fa457578d5abd6234471f07d895f46b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xb7742681bd0f7c5fd72e97ef74ad06e24aaf1716`](./contracts/hyperliquid-999/0xb7742681bd0f7c5fd72e97ef74ad06e24aaf1716/); hyperliquid `0xe7351fd770a37282b91d153ee690b63579d6dd7f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | hyperliquid | n/a | [`0xc2bac0db5b18b0c3225581ba14bd0b448c623636`](./contracts/hyperliquid-999/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xc86ab72dc6da7ef91a96650f3bc23125cd997130`](./contracts/hyperliquid-999/0xc86ab72dc6da7ef91a96650f3bc23125cd997130/); hyperliquid `0xf7399c83b12edd1a21aab250d30ccb4474902688` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | [`0xe93356b0b87c71a7f4957dcebed05befa8cb624a`](./contracts/hyperliquid-999/0xe93356b0b87c71a7f4957dcebed05befa8cb624a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xf0bbd65d74ab979f7d1d50ff16e41182f822d2a3`](./contracts/hyperliquid-999/0xf0bbd65d74ab979f7d1d50ff16e41182f822d2a3/); hyperliquid `0xfebdc8bd0f045f58d67319103ea6b4ef6f1be0a1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 2 deployments: sei [`0x1ed401dcb7679462ecf1d0920dd366587def359d`](./contracts/sei-1329/0x1ed401dcb7679462ecf1d0920dd366587def359d/); sei `0xef4fb24ad0916217251f553c0596f8edc630eb66` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 2 deployments: sei [`0x2a3e72ed893b5958690e16c3bbe1bd92137b6250`](./contracts/sei-1329/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/); sei `0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 3 deployments: sei [`0x43de2d77bf8027e25dbd179b491e8d64f38398aa`](./contracts/sei-1329/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/); sei `0xb1a20d1c885fd775df97396397d6f8f07abdd20d`; sei `0xe4427af3555cd9303d728c491364fadfdd7494fe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 2 deployments: sei [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/sei-1329/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/); sei `0x8244d6ffe0695b30b2bad424683ee3bc534ea464` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 2 deployments: sei [`0x4e446b6cf4d127827c83ca0c848db0b43841c391`](./contracts/sei-1329/0x4e446b6cf4d127827c83ca0c848db0b43841c391/); sei `0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sei | n/a | [`0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`](./contracts/sei-1329/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 2 deployments: sei [`0x95c99ea6d7e72e99f18049019a427a4a17c53a30`](./contracts/sei-1329/0x95c99ea6d7e72e99f18049019a427a4a17c53a30/); sei `0xa7b88a746fa457578d5abd6234471f07d895f46b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sei | n/a | [`0xc2bac0db5b18b0c3225581ba14bd0b448c623636`](./contracts/sei-1329/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 2 deployments: sei [`0xc86ab72dc6da7ef91a96650f3bc23125cd997130`](./contracts/sei-1329/0xc86ab72dc6da7ef91a96650f3bc23125cd997130/); sei `0xf7399c83b12edd1a21aab250d30ccb4474902688` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 2 deployments: sei [`0xd3a5e49fafc2efef5350647afc940ee8685f8c62`](./contracts/sei-1329/0xd3a5e49fafc2efef5350647afc940ee8685f8c62/); sei `0xe7351fd770a37282b91d153ee690b63579d6dd7f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | [`0xe93356b0b87c71a7f4957dcebed05befa8cb624a`](./contracts/sei-1329/0xe93356b0b87c71a7f4957dcebed05befa8cb624a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 2 deployments: sei [`0xf0bbd65d74ab979f7d1d50ff16e41182f822d2a3`](./contracts/sei-1329/0xf0bbd65d74ab979f7d1d50ff16e41182f822d2a3/); sei `0xfebdc8bd0f045f58d67319103ea6b4ef6f1be0a1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x413dddce3d0ead2489648e482d192a7758c2b1b4`](./contracts/base-8453/0x413dddce3d0ead2489648e482d192a7758c2b1b4/); base `0x58404964365264665f4f37217848b10873d50336` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9`](./contracts/base-8453/0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | base | n/a | [`0xc2bac0db5b18b0c3225581ba14bd0b448c623636`](./contracts/base-8453/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x413dddce3d0ead2489648e482d192a7758c2b1b4`](./contracts/arbitrum-42161/0x413dddce3d0ead2489648e482d192a7758c2b1b4/); arbitrum `0x57d69a7a9781fca922fcc0667789c1431c86a837` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x55c93b20dd2f790ac429d6341a022a781791654a`](./contracts/arbitrum-42161/0x55c93b20dd2f790ac429d6341a022a781791654a/); arbitrum `0x8b0e35838b04221e285e82fb88c54066ceb01278` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9`](./contracts/arbitrum-42161/0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | [`0xc2bac0db5b18b0c3225581ba14bd0b448c623636`](./contracts/arbitrum-42161/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | n/a | [`0xc2bac0db5b18b0c3225581ba14bd0b448c623636`](./contracts/avalanche-43114/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | linea | n/a | 2 deployments: linea [`0x413dddce3d0ead2489648e482d192a7758c2b1b4`](./contracts/linea-59144/0x413dddce3d0ead2489648e482d192a7758c2b1b4/); linea `0x58404964365264665f4f37217848b10873d50336` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | linea | n/a | [`0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9`](./contracts/linea-59144/0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | linea | n/a | [`0xc2bac0db5b18b0c3225581ba14bd0b448c623636`](./contracts/linea-59144/0xc2bac0db5b18b0c3225581ba14bd0b448c623636/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (117)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x069820f4828dc7ade62a549e007a018e4a7c9e41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x177c8aedc61efc47de70616c89464c5d2a56e4ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4084fdaa5088427496102a994b079c6018b0d55d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a811205af19a5ad9aa16d6e4c89863dfce22180` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5706875cef89ab69e818d4921a47d0d2663d2728` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58404964365264665f4f37217848b10873d50336` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60e50145db18e09ff2bb277e88d3c264ff57b91f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8aca115f66b9e1c5411757fe01a5e9e59bc5b612` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95c99ea6d7e72e99f18049019a427a4a17c53a30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae0361b1c3454b297129e01046057f1d294c7974` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafcfda8df6d6ce56a69cca70723791667c686892` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbeb2b37d6f2ddb463e2154bd34c5229386960ac0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb8e9e3cdd538559f6da9598a4dac4ac706970bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7bc54ae922b4fd8f5885f9523e09429ff5d3bda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8da6bf26964af9d7eed9e03e53415d37aa96045` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeae9352c28a89b69ab30865156db18fd7fe7e000` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7399c83b12edd1a21aab250d30ccb4474902688` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc2ca4022d26ad4dcb3866ae30669669f6a28f19` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4a811205af19a5ad9aa16d6e4c89863dfce22180` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x55c93b20dd2f790ac429d6341a022a781791654a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5706875cef89ab69e818d4921a47d0d2663d2728` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x60e50145db18e09ff2bb277e88d3c264ff57b91f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x95c99ea6d7e72e99f18049019a427a4a17c53a30` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xafcfda8df6d6ce56a69cca70723791667c686892` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcb8e9e3cdd538559f6da9598a4dac4ac706970bf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xeae9352c28a89b69ab30865156db18fd7fe7e000` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf7399c83b12edd1a21aab250d30ccb4474902688` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfc2ca4022d26ad4dcb3866ae30669669f6a28f19` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | 10 deployments: cronos `0x05bd82dbb7c5c2cf571112bd1ad4e7c02e10ebea`; cronos `0x43de2d77bf8027e25dbd179b491e8d64f38398aa`; cronos `0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`; cronos `0x8244d6ffe0695b30b2bad424683ee3bc534ea464`; cronos `0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824`; cronos `0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c`; cronos `0xc1656b63d9eeba6d114f6be19565177893e5bcbf`; cronos `0xe7351fd770a37282b91d153ee690b63579d6dd7f`; cronos `0xe93356b0b87c71a7f4957dcebed05befa8cb624a`; cronos `0xef4fb24ad0916217251f553c0596f8edc630eb66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x069820f4828dc7ade62a549e007a018e4a7c9e41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x177c8aedc61efc47de70616c89464c5d2a56e4ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4084fdaa5088427496102a994b079c6018b0d55d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a811205af19a5ad9aa16d6e4c89863dfce22180` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5706875cef89ab69e818d4921a47d0d2663d2728` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58404964365264665f4f37217848b10873d50336` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60e50145db18e09ff2bb277e88d3c264ff57b91f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8aca115f66b9e1c5411757fe01a5e9e59bc5b612` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95c99ea6d7e72e99f18049019a427a4a17c53a30` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xafcfda8df6d6ce56a69cca70723791667c686892` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1656b63d9eeba6d114f6be19565177893e5bcbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb8e9e3cdd538559f6da9598a4dac4ac706970bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd095a2b84e80532cef267def3561dd66e5414946` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7bc54ae922b4fd8f5885f9523e09429ff5d3bda` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeae9352c28a89b69ab30865156db18fd7fe7e000` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7399c83b12edd1a21aab250d30ccb4474902688` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc2ca4022d26ad4dcb3866ae30669669f6a28f19` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x069820f4828dc7ade62a549e007a018e4a7c9e41` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x177c8aedc61efc47de70616c89464c5d2a56e4ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4084fdaa5088427496102a994b079c6018b0d55d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a811205af19a5ad9aa16d6e4c89863dfce22180` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5706875cef89ab69e818d4921a47d0d2663d2728` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x58404964365264665f4f37217848b10873d50336` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x60e50145db18e09ff2bb277e88d3c264ff57b91f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8aca115f66b9e1c5411757fe01a5e9e59bc5b612` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x95c99ea6d7e72e99f18049019a427a4a17c53a30` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x979791c607a388702690599120c46332f61f592c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae0361b1c3454b297129e01046057f1d294c7974` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xafcfda8df6d6ce56a69cca70723791667c686892` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc1656b63d9eeba6d114f6be19565177893e5bcbf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcb8e9e3cdd538559f6da9598a4dac4ac706970bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd7bc54ae922b4fd8f5885f9523e09429ff5d3bda` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeae9352c28a89b69ab30865156db18fd7fe7e000` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf7399c83b12edd1a21aab250d30ccb4474902688` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfc2ca4022d26ad4dcb3866ae30669669f6a28f19` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x27406ebf0b76923d93b4c6c6224bcab7fff11f87` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x62a8c417e7f88db877606af0e7580ef413db27dc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x726f7a7d47cc4e43c9580ad8562cdb58b46014a0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfcf83648b8cdef62e5d03319a6f1fce16e4d6a59` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x27406ebf0b76923d93b4c6c6224bcab7fff11f87` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x60e50145db18e09ff2bb277e88d3c264ff57b91f` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x726f7a7d47cc4e43c9580ad8562cdb58b46014a0` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xfcf83648b8cdef62e5d03319a6f1fce16e4d6a59` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x202ef28ca6d4d2b94c4ea0534a8e6261581c70a4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4a811205af19a5ad9aa16d6e4c89863dfce22180` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5706875cef89ab69e818d4921a47d0d2663d2728` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x60e50145db18e09ff2bb277e88d3c264ff57b91f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x95c99ea6d7e72e99f18049019a427a4a17c53a30` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9944e6f2cec765579a668daf8763e8f7c63a3b76` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xae0361b1c3454b297129e01046057f1d294c7974` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xafcfda8df6d6ce56a69cca70723791667c686892` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcb8e9e3cdd538559f6da9598a4dac4ac706970bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeae9352c28a89b69ab30865156db18fd7fe7e000` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7399c83b12edd1a21aab250d30ccb4474902688` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfc2ca4022d26ad4dcb3866ae30669669f6a28f19` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x069820f4828dc7ade62a549e007a018e4a7c9e41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x177c8aedc61efc47de70616c89464c5d2a56e4ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4084fdaa5088427496102a994b079c6018b0d55d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4a811205af19a5ad9aa16d6e4c89863dfce22180` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5706875cef89ab69e818d4921a47d0d2663d2728` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x58404964365264665f4f37217848b10873d50336` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x60e50145db18e09ff2bb277e88d3c264ff57b91f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8aca115f66b9e1c5411757fe01a5e9e59bc5b612` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x95c99ea6d7e72e99f18049019a427a4a17c53a30` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae0361b1c3454b297129e01046057f1d294c7974` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xafcfda8df6d6ce56a69cca70723791667c686892` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc1656b63d9eeba6d114f6be19565177893e5bcbf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcb8e9e3cdd538559f6da9598a4dac4ac706970bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd095a2b84e80532cef267def3561dd66e5414946` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd7bc54ae922b4fd8f5885f9523e09429ff5d3bda` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeae9352c28a89b69ab30865156db18fd7fe7e000` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7399c83b12edd1a21aab250d30ccb4474902688` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc2ca4022d26ad4dcb3866ae30669669f6a28f19` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x27406ebf0b76923d93b4c6c6224bcab7fff11f87` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x33b72f60f2ceb7bdb64873ac10015a35bed81717` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4084fdaa5088427496102a994b079c6018b0d55d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4a811205af19a5ad9aa16d6e4c89863dfce22180` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x55c93b20dd2f790ac429d6341a022a781791654a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5706875cef89ab69e818d4921a47d0d2663d2728` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x60e50145db18e09ff2bb277e88d3c264ff57b91f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x95c99ea6d7e72e99f18049019a427a4a17c53a30` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xae0361b1c3454b297129e01046057f1d294c7974` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xafcfda8df6d6ce56a69cca70723791667c686892` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc1656b63d9eeba6d114f6be19565177893e5bcbf` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcb8e9e3cdd538559f6da9598a4dac4ac706970bf` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xeae9352c28a89b69ab30865156db18fd7fe7e000` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf7399c83b12edd1a21aab250d30ccb4474902688` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfc2ca4022d26ad4dcb3866ae30669669f6a28f19` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CrosschainForwarder Allowances Audit.pdf](https://github.com/debridge-finance/debridge-security/blob/master/CrosschainForwarder%20Allowances%20Audit.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name | 1 | n/a |
| [DLN Solana Contracts _ SSC.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DLN%20Solana%20Contracts%20_%20SSC.pdf) | unknown | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [DLN Solana Release Assessment Report.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DLN%20Solana%20Release%20Assessment%20Report.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [DLN-EVM_Upgrades_SSC.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DLN-EVM_Upgrades_SSC.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | 15 | n/a |
| [DeBridgde_Solana_Events_Reader_Rust_Program_Security_Audit_Report.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridgde_Solana_Events_Reader_Rust_Program_Security_Audit_Report.pdf) | unknown | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [DeBridge_Airdrop_Contract _ SSC.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_Airdrop_Contract%20_%20SSC.pdf) | unknown | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-11 | stale | Direct | contract_name | 7 | n/a |
| [DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 15 | n/a |
| [DeBridge_DLN_EVM_Contracts_Smart_Contract_Security_Audit_Report.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_DLN_EVM_Contracts_Smart_Contract_Security_Audit_Report.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 15 | n/a |
| [DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 15 | n/a |
| [DeBridge_DLN_Taker_Code_Security_Assessment_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_DLN_Taker_Code_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [DeBridge_EVM_to_Solana_Serializer_Smart_Contract_Security_Assessment.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_EVM_to_Solana_Serializer_Smart_Contract_Security_Assessment.pdf) | unknown | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [DeBridge_Solana_Contracts_Solana_Program_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_Solana_Contracts_Solana_Program_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-06 | stale | Direct | contract_name | 7 | n/a |
| [Debridge_DLN_Solana_Program_Security_Audit_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/Debridge_DLN_Solana_Program_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [Debridge_Solana_Event_Reader_Whitebox_Pentest_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/Debridge_Solana_Event_Reader_Whitebox_Pentest_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf) | Halborn | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [Debridge_solana_tx_parser_Whitebox_Pentest_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/Debridge_solana_tx_parser_Whitebox_Pentest_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [deBridge Core Protocol Solana Contracts _ SSC.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge%20Core%20Protocol%20Solana%20Contracts%20_%20SSC.pdf) | unknown | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [deBridge_Cloudflare_report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Cloudflare_report_Halborn.pdf) | Halborn | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [deBridge_Cross_Chain_Forwarder_Update_Smart_Contract_Security_Audit.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Cross_Chain_Forwarder_Update_Smart_Contract_Security_Audit.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 1 | n/a |
| [deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-04 | stale | Direct | contract_name | 1 | n/a |
| [deBridge_FrontEnd_WebApp_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_FrontEnd_WebApp_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | 7 | n/a |
| [deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf) | Halborn | Audit | 2021-09 | stale | Direct | contract_name | 6 | n/a |
| [deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf) | unknown | Audit | 2021-10 | stale | Direct | contract_name | 6 | n/a |
| [deBridge_Node_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Node_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [deBridge_Solana_Multisig_Solana_Program_Security_Audit_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Solana_Multisig_Solana_Program_Security_Audit_Halborn.pdf) | Halborn | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [deBridge_Solana_Security_Audit_Ackee.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Solana_Security_Audit_Ackee.pdf) | Ackee Blockchain | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [deBridge_Solana_Security_Audit_Neodyme.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Solana_Security_Audit_Neodyme.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [debridge_backend_pentest_report_halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/debridge_backend_pentest_report_halborn.pdf) | Halborn | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [debridge_solidity_smart_contract_second_audit_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/debridge_solidity_smart_contract_second_audit_Halborn.pdf) | Halborn | Audit | 2022-04 | stale | Direct | contract_name | 7 | n/a |
| [immunefi.com/bug-bounty/debridge/information](https://immunefi.com/bug-bounty/debridge/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [debridge-security (GitHub directory)](https://github.com/debridge-finance/debridge-security) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xba2ae424d960c26247dd6c32edc70b295c744c43`](./contracts/bsc-56/0xba2ae424d960c26247dd6c32edc70b295c744c43/) | BEP20TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c4b79205f6cc20c0e0201b61b99e77f3ce3b67a`](./contracts/ethereum-1/0x0c4b79205f6cc20c0e0201b61b99e77f3ce3b67a/) | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824`](./contracts/ethereum-1/0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824/) | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4e446b6cf4d127827c83ca0c848db0b43841c391`](./contracts/optimism-10/0x4e446b6cf4d127827c83ca0c848db0b43841c391/) | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824`](./contracts/bsc-56/0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824/) | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824`](./contracts/polygon-137/0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824/) | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4e446b6cf4d127827c83ca0c848db0b43841c391`](./contracts/base-8453/0x4e446b6cf4d127827c83ca0c848db0b43841c391/) | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824`](./contracts/arbitrum-42161/0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824/) | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824`](./contracts/avalanche-43114/0x8a0c79f5532f3b2a16ad1e4282a5daf81928a824/) | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x4e446b6cf4d127827c83ca0c848db0b43841c391`](./contracts/linea-59144/0x4e446b6cf4d127827c83ca0c848db0b43841c391/) | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc31fc94f3fd088ee53ac915d6e8a14ff25a23c47`](./contracts/bsc-56/0xc31fc94f3fd088ee53ac915d6e8a14ff25a23c47/) | CrosschainForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc31fc94f3fd088ee53ac915d6e8a14ff25a23c47`](./contracts/polygon-137/0xc31fc94f3fd088ee53ac915d6e8a14ff25a23c47/) | CrosschainForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd095a2b84e80532cef267def3561dd66e5414946`](./contracts/polygon-137/0xd095a2b84e80532cef267def3561dd66e5414946/) | CrosschainForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc31fc94f3fd088ee53ac915d6e8a14ff25a23c47`](./contracts/arbitrum-42161/0xc31fc94f3fd088ee53ac915d6e8a14ff25a23c47/) | CrosschainForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24455aa55ded7728783c9474be8ea2f5c935f8eb`](./contracts/ethereum-1/0x24455aa55ded7728783c9474be8ea2f5c935f8eb/) | DeBridgeGate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x43de2d77bf8027e25dbd179b491e8d64f38398aa`](./contracts/optimism-10/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/) | DeBridgeGate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc1656b63d9eeba6d114f6be19565177893e5bcbf`](./contracts/base-8453/0xc1656b63d9eeba6d114f6be19565177893e5bcbf/) | DeBridgeGate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x43de2d77bf8027e25dbd179b491e8d64f38398aa`](./contracts/linea-59144/0x43de2d77bf8027e25dbd179b491e8d64f38398aa/) | DeBridgeGate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`](./contracts/ethereum-1/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | DeBridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`](./contracts/optimism-10/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | DeBridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`](./contracts/bsc-56/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | DeBridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`](./contracts/polygon-137/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | DeBridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`](./contracts/base-8453/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | DeBridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`](./contracts/arbitrum-42161/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | DeBridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251`](./contracts/linea-59144/0x663dc15d3c1ac63ff12e45ab68fea3f0a883c251/) | DeBridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/ethereum-1/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/) | DeBridgeTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/optimism-10/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/) | DeBridgeTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/bsc-56/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/) | DeBridgeTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/polygon-137/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/) | DeBridgeTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/base-8453/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/) | DeBridgeTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/arbitrum-42161/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/) | DeBridgeTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/avalanche-43114/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/) | DeBridgeTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x4c7ca8fcffe77281a8b81d4580cff8257d785491`](./contracts/linea-59144/0x4c7ca8fcffe77281a8b81d4580cff8257d785491/) | DeBridgeTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33b72f60f2ceb7bdb64873ac10015a35bed81717`](./contracts/ethereum-1/0x33b72f60f2ceb7bdb64873ac10015a35bed81717/) | DlnDestination | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9`](./contracts/ethereum-1/0x61ef2e01e603aeb5cd96f9ec9ae76cc6a68f6cf9/) | DlnExternalCallAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x05bd82dbb7c5c2cf571112bd1ad4e7c02e10ebea`](./contracts/hyperliquid-999/0x05bd82dbb7c5c2cf571112bd1ad4e7c02e10ebea/) | ExternalCallExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a3e72ed893b5958690e16c3bbe1bd92137b6250`](./contracts/ethereum-1/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/) | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c`](./contracts/ethereum-1/0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c/) | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2a3e72ed893b5958690e16c3bbe1bd92137b6250`](./contracts/optimism-10/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/) | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c`](./contracts/bsc-56/0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c/) | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c`](./contracts/polygon-137/0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c/) | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2a3e72ed893b5958690e16c3bbe1bd92137b6250`](./contracts/base-8453/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/) | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c`](./contracts/arbitrum-42161/0x949b3b3c098348b879c9e4f15cecc8046d9c8a8c/) | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2a3e72ed893b5958690e16c3bbe1bd92137b6250`](./contracts/avalanche-43114/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/) | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x2a3e72ed893b5958690e16c3bbe1bd92137b6250`](./contracts/linea-59144/0x2a3e72ed893b5958690e16c3bbe1bd92137b6250/) | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27406ebf0b76923d93b4c6c6224bcab7fff11f87`](./contracts/ethereum-1/0x27406ebf0b76923d93b4c6c6224bcab7fff11f87/) | SimpleFeeProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2328ee20fa271073328dc94e52dd5b61aa0c91a7`](./contracts/ethereum-1/0x2328ee20fa271073328dc94e52dd5b61aa0c91a7/) | Subscription | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdac17f958d2ee523a2206206994597c13d831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 0 |
| standard_library | 32 |
| needs_review | 135 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 20
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=103

Zero-match audit list:

- [9998] DLN Solana Contracts _ SSC.pdf
- [9999] DLN Solana Release Assessment Report.pdf
- [10001] DeBridgde_Solana_Events_Reader_Rust_Program_Security_Audit_Report.pdf
- [10002] DeBridge_Airdrop_Contract _ SSC.pdf
- [10007] DeBridge_DLN_Taker_Code_Security_Assessment_Report_Halborn_Final.pdf
- [10008] DeBridge_EVM_to_Solana_Serializer_Smart_Contract_Security_Assessment.pdf
- [10009] DeBridge_Solana_Contracts_Solana_Program_Security_Audit_Report_Halborn.pdf
- [10011] Debridge_DLN_Solana_Program_Security_Audit_Report_Halborn_Final.pdf
- [10012] Debridge_Solana_Event_Reader_Whitebox_Pentest_Report_Halborn_Final.pdf
- [10013] Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf
- [10014] Debridge_solana_tx_parser_Whitebox_Pentest_Report_Halborn_Final.pdf
- [10016] deBridge Core Protocol Solana Contracts _ SSC.pdf
- [10017] deBridge_Cloudflare_report_Halborn.pdf
- [10020] deBridge_FrontEnd_WebApp_Audit_Report_Halborn.pdf
- [10024] deBridge_Node_Security_Audit_Report_Halborn.pdf
- [10025] deBridge_Solana_Multisig_Solana_Program_Security_Audit_Halborn.pdf
- [10026] deBridge_Solana_Security_Audit_Ackee.pdf
- [10027] deBridge_Solana_Security_Audit_Neodyme.pdf
- [10028] debridge_backend_pentest_report_halborn.pdf
- [15440] debridge-security (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
