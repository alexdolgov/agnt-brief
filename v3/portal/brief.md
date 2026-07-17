# Agentic Audit Brief: Portal

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Portal (`portal`)
- Website: [https://portalbridge.com](https://portalbridge.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: acala, arbitrum, arbitrum-sepolia, aurora, avalanche, avalanche-fuji, base, base-sepolia, berachain, blast, bsc, bsc-testnet, celo, chain-17000, chain-21000000, chain-4002, chain-44787, chain-534351, creditcoin, ethereum, fantom, gnosis, goat, hyperliquid, ink, kaia, karura, lightlink, linea, linea-sepolia, mantle, megaeth, mezo, monad, monad-testnet, moonbase-alpha, moonbeam, oasis-emerald, optimism, optimism-sepolia, plume, polygon, polygon-amoy, rootstock, scroll, sei, sepolia, sonic, telos-evm, unichain, unichain-sepolia, world, x-layer, xrpl-evm
- Contract surface: 195 unique implementations (195 raw deployments)
- Coverage basis: 0/93 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,010,570,687.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Portal. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 93 contract row(s) across acala, arbitrum, arbitrum-sepolia, aurora, avalanche, avalanche-fuji, base, base-sepolia, berachain, blast, bsc, bsc-testnet, celo, chain-17000, chain-21000000, chain-4002, chain-44787, chain-534351, creditcoin, ethereum, fantom, gnosis, goat, hyperliquid, ink, kaia, karura, lightlink, linea, linea-sepolia, mantle, megaeth, mezo, monad, monad-testnet, moonbase-alpha, moonbeam, oasis-emerald, optimism, optimism-sepolia, plasma, plume, polygon, polygon-amoy, rootstock, scroll, sei, sepolia, sonic, telos-evm, unichain, unichain-sepolia, world, x-layer, xrpl-evm. Structural roles: 93 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 93
- Structural roles: unclassified (93)
- Contract kinds: contract (92), abstract (1)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 128 contracts are derived from known codebases. 128 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CCTP - Arbitrum (`0x2703483b1a5a7c577e8680de9df8be03c6f30e3c`, chain 42161)
- CCTP - Avalanche (`0x09fb06a271faff70a651047395aaeb6265265f13`, chain 43114)
- CCTP - Base (`0x03fabb06fa052557143dc28efcfc63fc12843f1d`, chain 8453)
- CCTP - Ethereum (`0xaada05bd399372f0b0463744c09113c137636f6a`, chain 1)
- CCTP - Optimism (`0x2703483b1a5a7c577e8680de9df8be03c6f30e3c`, chain 10)
- CCTP - Polygon (`0x0ff28217dcc90372345954563486528aa865cdd6`, chain 137)
- Core Contracts - Arbitrum (`0xa5f208e072434bc67592e4c49c1b991ba79bca46`, chain 42161)
- Core Contracts - Avalanche (`0x54a8e5f9c4cba08f9943965859f6c34eaf03e26c`, chain 43114)
- Core Contracts - Base (`0xbebdb6c8ddc678ffa9f8748f85c815c556dd8ac6`, chain 8453)
- Core Contracts - Berachain (`0xca1d5a146b03f6303baf59e5ad5615ae0b9d146d`, chain 80094)
- Core Contracts - BNB Smart Chain (`0x98f3c9e6e3face36baad05fe09d375ef1464288b`, chain 56)
- Core Contracts - Celo (`0xa321448d90d4e5b0a732867c18ea198e75cac48e`, chain 42220)
- Core Contracts - CreditCoin (`0xabf89de706b583424328b54dd05a8fc986750da8`, chain 102030)
- Core Contracts - Ethereum (`0x98f3c9e6e3face36baad05fe09d375ef1464288b`, chain 1)
- Core Contracts - Fantom (`0x126783a6cb203a3e35344528b26ca3a0489a1485`, chain 250)
- Core Contracts - HyperEVM (`0x7c0fafc4384551f063e05aee704ab943b8b53ab3`, chain 999)
- Core Contracts - Ink (`0xca1d5a146b03f6303baf59e5ad5615ae0b9d146d`, chain 57073)
- Core Contracts - Kaia (`0x0c21603c4f3a6387e241c0091a7ea39e43e90bb7`, chain 8217)
- Core Contracts - Linea (`0x0c56aebd76e6d9e4a1ec5e94f4162b4cbbf77b32`, chain 59144)
- Core Contracts - Mantle (`0xbebdb6c8ddc678ffa9f8748f85c815c556dd8ac6`, chain 5000)
- Core Contracts - MegaETH (`0xabf89de706b583424328b54dd05a8fc986750da8`, chain 4326)
- Core Contracts - Mezo (`0xabf89de706b583424328b54dd05a8fc986750da8`, chain 31612)
- Core Contracts - Monad (`0x194b123c5e96b9b2e49763619985790dc241cac0`, chain 143)
- Core Contracts - Moonbeam (`0xc8e2b0cd52cf01b0ce87d389daa3d414d4ce29f3`, chain 1284)
- Core Contracts - Optimism (`0xee91c335eab126df5fdb3797ea9d6ad93aec9722`, chain 10)
- Core Contracts - Plume (`0xabf89de706b583424328b54dd05a8fc986750da8`, chain 98866)
- Core Contracts - Polygon (`0x7a4b5a56256163f07b2c80a7ca55abe66c4ec4d7`, chain 137)
- Core Contracts - Scroll (`0xbebdb6c8ddc678ffa9f8748f85c815c556dd8ac6`, chain 534352)
- Core Contracts - SeiEVM (`0xca1d5a146b03f6303baf59e5ad5615ae0b9d146d`, chain 1329)
- Core Contracts - Unichain (`0xca1d5a146b03f6303baf59e5ad5615ae0b9d146d`, chain 130)
- Core Contracts - World Chain (`0xcbcee4e081464a15d8ad5f58bb493954421eb506`, chain 480)
- Core Contracts - X Layer (`0x194b123c5e96b9b2e49763619985790dc241cac0`, chain 196)
- Core Contracts - XRPL-EVM (`0xabf89de706b583424328b54dd05a8fc986750da8`, chain 1440000)
- Delegated Guardians - Ethereum (`0x1462800febd49232798132e8c8b721aa86c4c209`, chain 1)
- Executor - Arbitrum (`0x3980f8318fc03d79033bbb421a622cdf8d2eeab4`, chain 42161)
- Executor - Avalanche (`0x4661f0e629e4ba8d04ee90080aee079740b00381`, chain 43114)
- Executor - Base (`0x9e1936e91a4a5ae5a5f75ffc472d6cb8e93597ea`, chain 8453)
- Executor - Berachain (`0x0dd7a5a32311b8d87a615cc7f079b632d3d5e2d3`, chain 80094)
- Executor - BNB Smart Chain (`0xec8cccd058dbf28e5d002869aa9afa3992bf4ee0`, chain 56)
- Executor - Celo (`0xe6ea5087c6860b94cf098a403506262d8f28cf05`, chain 42220)
- Executor - CreditCoin (`0xd2e420188f17607aa6344ee19c3e76cf86ca7bde`, chain 102030)
- Executor - Ethereum (`0x84eee8dba37c36947397e1e11251ca9a06fc6f8a`, chain 1)
- Executor - HyperEVM (`0xd7717899cc4381033bc200431286d0ac14265f78`, chain 999)
- Executor - Ink (`0x3e44a5f45cbd400acbef534f51e616043b211ddd`, chain 57073)
- Executor - Linea (`0x23af2b5296122544a9a7861da43405d5b15a9bd3`, chain 59144)
- Executor - MegaETH (`0xd405e0a1f3f9edc25ea32d0b079d6118328b2ecb`, chain 4326)
- Executor - Mezo (`0x0f9b8e144cc5c5e7c0073829afd30f26a50c5606`, chain 31612)
- Executor - Monad (`0xc04de634982cadf2a677310b73630b7ac56a3f65`, chain 143)
- Executor - Moonbeam (`0x85d06449c78064c2e02d787e9dc71716786f8d19`, chain 1284)
- Executor - Optimism (`0x85b704501f6ae718205c0636260768c4e72ac3e7`, chain 10)
- Executor - Polygon (`0x0b23efa164ab3ed08e9a39ac7ad930ff4f5a5e81`, chain 137)
- Executor - Scroll (`0xcfadde24640e395f5a71456a825d0d7c3741f075`, chain 534352)
- Executor - SeiEVM (`0x25f1c923fb7a5aefa5f0a2b419fc70f2368e66e5`, chain 1329)
- Executor - Sonic (`0x3fdc36b4260da38fbdba1125ccbd33dd0ac74812`, chain 146)
- Executor - Unichain (`0x764dd868eadd27ce57bcb801e4ca4a193d231aed`, chain 130)
- Executor - World Chain (`0x8689b4e6226adc8fa8ff80acc3a60ace31e8804b`, chain 480)
- Executor - XRPL-EVM (`0x8345e90dcd92f5cf2fab0c8e2a56a5bc2c30d896`, chain 1440000)
- Guardian Governance - Arbitrum (`0x36cf4c88fa548c6ad9fcdc696e1c27bb3306163f`, chain 42161)
- Guardian Governance - Avalanche (`0x169d91c797edf56100f1b765268145660503a423`, chain 43114)
- Guardian Governance - Base (`0x838a95b6a3e06b6f11c437e22f3c7561a6ec40f1`, chain 8453)
- Guardian Governance - BNB Smart Chain (`0x8e4dc685e990379b8d53eca47841e09b8d30043e`, chain 56)
- Guardian Governance - Ethereum (`0x23fea5514dfc9821479fbe18ba1d7e1a61f6ffcf`, chain 1)
- Guardian Governance - HyperEVM (`0x574b7864119c9223a9870ea614dc91a8ee09e512`, chain 999)
- Guardian Governance - MegaETH (`0x574b7864119c9223a9870ea614dc91a8ee09e512`, chain 4326)
- Guardian Governance - Monad (`0x574b7864119c9223a9870ea614dc91a8ee09e512`, chain 143)
- Guardian Governance - Optimism (`0x0e09a3081837ff23d2e59b179e0bc48a349afbd8`, chain 10)
- Guardian Governance - Unichain (`0x574b7864119c9223a9870ea614dc91a8ee09e512`, chain 130)
- Guardian Governance - XRPL-EVM (`0x574b7864119c9223a9870ea614dc91a8ee09e512`, chain 1440000)
- Quoter Router - Arbitrum (`0x32eec14c963c23176bd8951f192292006756bdcc`, chain 42161)
- Quoter Router - Avalanche (`0xa3a2a615774d34c6a4df443c488b084eacabd2d0`, chain 43114)
- Quoter Router - Base (`0x265fd0500a430d65d6d79cd8707f24c048604658`, chain 8453)
- Quoter Router - BNB Smart Chain (`0xc921f293c27f332d47283174b11c872295624edb`, chain 56)
- Quoter Router - Ethereum (`0xf22f1c0a3a8cb42f695601731974784c499c4ef3`, chain 1)
- Quoter Router - Ink (`0xdec050e66beb2f0d5507761a0fe4867839bd88d2`, chain 57073)
- Quoter Router - Monad (`0x3d9282a8e9a3cdd9b25ae969eff4705a1fe75f34`, chain 143)
- Quoter Router - Optimism (`0xa3b6551ccbb5fe1dc33b71ee3590b1df22ae75b3`, chain 10)
- Quoter Router - Plume (`0x85ba1b2a2195be51ab715be458b32b120532d230`, chain 98866)
- Quoter Router - Polygon (`0x2a856931603930b827b1a4352fb4d66fa029f123`, chain 137)
- Read-Only Deployments - Acala (`0xa321448d90d4e5b0a732867c18ea198e75cac48e`, chain 787)
- Read-Only Deployments - Aurora (`0x51b5123a7b0f9b2ba265f9c4c8de7d78d52f510f`, chain 1313161554)
- Read-Only Deployments - Blast (`0xbebdb6c8ddc678ffa9f8748f85c815c556dd8ac6`, chain 81457)
- Read-Only Deployments - Corn (`0xa683c66045ad16abb1bce5ad46a64d95f9a25785`, chain 21000000)
- Read-Only Deployments - Gnosis (`0xa321448d90d4e5b0a732867c18ea198e75cac48e`, chain 100)
- Read-Only Deployments - Goat (`0x352a86168e6988a1adf9a15cb00017aad3b67155`, chain 2345)
- Read-Only Deployments - Karura (`0xa321448d90d4e5b0a732867c18ea198e75cac48e`, chain 686)
- Read-Only Deployments - LightLink (`0x352a86168e6988a1adf9a15cb00017aad3b67155`, chain 1890)
- Read-Only Deployments - Oasis (`0xfe8cd454b4a1ca468b57d79c0cc77ef5b6f64585`, chain 42262)
- Read-Only Deployments - Rootstock (`0xbebdb6c8ddc678ffa9f8748f85c815c556dd8ac6`, chain 30)
- Read-Only Deployments - Sonic (`0x352a86168e6988a1adf9a15cb00017aad3b67155`, chain 146)
- Read-Only Deployments - Telos (`0x352a86168e6988a1adf9a15cb00017aad3b67155`, chain 40)
- Settlement Token Router - Arbitrum (`0x70287c79ee41c5d1df8259cd68ba0890cd389c47`, chain 42161)
- Settlement Token Router - Avalanche (`0x70287c79ee41c5d1df8259cd68ba0890cd389c47`, chain 43114)
- Settlement Token Router - Base (`0x70287c79ee41c5d1df8259cd68ba0890cd389c47`, chain 8453)
- Settlement Token Router - Ethereum (`0x70287c79ee41c5d1df8259cd68ba0890cd389c47`, chain 1)
- Settlement Token Router - Optimism (`0x70287c79ee41c5d1df8259cd68ba0890cd389c47`, chain 10)
- Settlement Token Router - Polygon (`0x70287c79ee41c5d1df8259cd68ba0890cd389c47`, chain 137)
- Wormhole Labs Quoter Implementation - Arbitrum (`0xa25862d222eb8343505c12d96e097e4332468d60`, chain 42161)
- Wormhole Labs Quoter Implementation - Avalanche (`0xa25862d222eb8343505c12d96e097e4332468d60`, chain 43114)
- Wormhole Labs Quoter Implementation - Base (`0xa25862d222eb8343505c12d96e097e4332468d60`, chain 8453)
- Wormhole Labs Quoter Implementation - BNB Smart Chain (`0xa25862d222eb8343505c12d96e097e4332468d60`, chain 56)
- Wormhole Labs Quoter Implementation - Ethereum (`0xa25862d222eb8343505c12d96e097e4332468d60`, chain 1)
- Wormhole Labs Quoter Implementation - Ink (`0xa25862d222eb8343505c12d96e097e4332468d60`, chain 57073)
- Wormhole Labs Quoter Implementation - Monad (`0xa25862d222eb8343505c12d96e097e4332468d60`, chain 143)
- Wormhole Labs Quoter Implementation - Optimism (`0xa25862d222eb8343505c12d96e097e4332468d60`, chain 10)
- Wormhole Labs Quoter Implementation - Plume (`0xa25862d222eb8343505c12d96e097e4332468d60`, chain 98866)
- Wormhole Labs Quoter Implementation - Polygon (`0xa25862d222eb8343505c12d96e097e4332468d60`, chain 137)
- Wrapped Token Transfers (WTT) - Arbitrum (`0x0b2402144bb366a632d14b83f244d2e0e21bd39c`, chain 42161)
- Wrapped Token Transfers (WTT) - Avalanche (`0x0e082f06ff657d94310cb8ce8b0d9a04541d8052`, chain 43114)
- Wrapped Token Transfers (WTT) - Base (`0x8d2de8d2f73f1f4cab472ac9a881c9b123c79627`, chain 8453)
- Wrapped Token Transfers (WTT) - Berachain (`0x3ff72741fd67d6ad0668d93b41a09248f4700560`, chain 80094)
- Wrapped Token Transfers (WTT) - BNB Smart Chain (`0xb6f6d86a8f9879a9c87f643768d9efc38c1da6e7`, chain 56)
- Wrapped Token Transfers (WTT) - Celo (`0x796dff6d74f3e27060b71255fe517bfb23c93eed`, chain 42220)
- Wrapped Token Transfers (WTT) - Ethereum (`0x3ee18b2214aff97000d974cf647e7c347e8fa585`, chain 1)
- Wrapped Token Transfers (WTT) - Fantom (`0x7c9fc5741288cdfdd83ceb07f3ea7e22618d79d2`, chain 250)
- Wrapped Token Transfers (WTT) - Ink (`0x3ff72741fd67d6ad0668d93b41a09248f4700560`, chain 57073)
- Wrapped Token Transfers (WTT) - Kaia (`0x5b08ac39eaed75c0439fc750d9fe7e1f9dd0193f`, chain 8217)
- Wrapped Token Transfers (WTT) - Mantle (`0x24850c6f61c438823f01b7a3bf2b89b72174fa9d`, chain 5000)
- Wrapped Token Transfers (WTT) - MegaETH (`0xf97b81e513f53c7a6b57bd0b103a6c295b3096c5`, chain 4326)
- Wrapped Token Transfers (WTT) - Monad (`0x0b2719cda2f10595369e6673cea3ee2edfa13ba7`, chain 143)
- Wrapped Token Transfers (WTT) - Moonbeam (`0xb1731c586ca89a23809861c6103f0b96b3f57d92`, chain 1284)
- Wrapped Token Transfers (WTT) - Optimism (`0x1d68124e65fafc907325e3edbf8c4d84499daa8b`, chain 10)
- Wrapped Token Transfers (WTT) - Polygon (`0x5a58505a96d1dbf8df91cb21b54419fc36e93fde`, chain 137)
- Wrapped Token Transfers (WTT) - Scroll (`0x24850c6f61c438823f01b7a3bf2b89b72174fa9d`, chain 534352)
- Wrapped Token Transfers (WTT) - SeiEVM (`0x3ff72741fd67d6ad0668d93b41a09248f4700560`, chain 1329)
- Wrapped Token Transfers (WTT) - Unichain (`0x3ff72741fd67d6ad0668d93b41a09248f4700560`, chain 130)
- Wrapped Token Transfers (WTT) - World Chain (`0xc309275443519adca74c9136b02a38ef96e3a1f6`, chain 480)
- Wrapped Token Transfers (WTT) - X Layer (`0x5537857664b0f9efe38c9f320f75fef23234d904`, chain 196)
- Wrapped Token Transfers (WTT) - XRPL-EVM (`0x47f5195163270345fb4d7b9319eda8c64c75e278`, chain 1440000)

## Contract Surface Quality

- Logic-topography rows: 93; live-surface rows included: 93 (93 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 128/128 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/93 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 128 own, 67 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 128 of 195 unique; 67 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/93
- Verified + Unaudited implementations: 93
- Verified by bytecode match: 0
- Unverified implementations: 102
- Unique implementations: 195
- Raw deployments: 195
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (93)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CCTP - Arbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252139 | `0x2703483b1a5a7c577e8680de9df8be03c6f30e3c` | ⚠️ Unaudited |
| CCTP - Avalanche | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252150 | `0x09fb06a271faff70a651047395aaeb6265265f13` | ⚠️ Unaudited |
| CCTP - Base | unknown | project_anchor | own_supporting | 0 | base | unit-252191 | `0x03fabb06fa052557143dc28efcfc63fc12843f1d` | ⚠️ Unaudited |
| CCTP - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252084 | `0xaada05bd399372f0b0463744c09113c137636f6a` | ⚠️ Unaudited |
| CCTP - Optimism | unknown | project_anchor | own_supporting | 0 | optimism | unit-252088 | `0x2703483b1a5a7c577e8680de9df8be03c6f30e3c` | ⚠️ Unaudited |
| CCTP - Polygon | unknown | project_anchor | own_supporting | 0 | polygon | unit-252109 | `0x0ff28217dcc90372345954563486528aa865cdd6` | ⚠️ Unaudited |
| Core Contracts - Arbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252145 | `0xa5f208e072434bc67592e4c49c1b991ba79bca46` | ⚠️ Unaudited |
| Core Contracts - Avalanche | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252154 | `0x54a8e5f9c4cba08f9943965859f6c34eaf03e26c` | ⚠️ Unaudited |
| Core Contracts - Base | unknown | project_anchor | own_supporting | 0 | base | unit-252198 | `0xbebdb6c8ddc678ffa9f8748f85c815c556dd8ac6` | ⚠️ Unaudited |
| Core Contracts - Berachain | unknown | project_anchor | own_supporting | 0 | berachain | unit-252187 | `0xca1d5a146b03f6303baf59e5ad5615ae0b9d146d` | ⚠️ Unaudited |
| Core Contracts - BNB Smart Chain | unknown | project_anchor | own_supporting | 0 | bsc | unit-252171 | `0x98f3c9e6e3face36baad05fe09d375ef1464288b` | ⚠️ Unaudited |
| Core Contracts - Celo | unknown | project_anchor | own_supporting | 0 | celo | unit-252147 | `0xa321448d90d4e5b0a732867c18ea198e75cac48e` | ⚠️ Unaudited |
| Core Contracts - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252082 | `0x98f3c9e6e3face36baad05fe09d375ef1464288b` | ⚠️ Unaudited |
| Core Contracts - HyperEVM | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-252203 | `0x7c0fafc4384551f063e05aee704ab943b8b53ab3` | ⚠️ Unaudited |
| Core Contracts - Linea | unknown | project_anchor | own_supporting | 0 | linea | unit-252181 | `0x0c56aebd76e6d9e4a1ec5e94f4162b4cbbf77b32` | ⚠️ Unaudited |
| Core Contracts - Mantle | unknown | project_anchor | own_supporting | 0 | mantle | unit-252166 | `0xbebdb6c8ddc678ffa9f8748f85c815c556dd8ac6` | ⚠️ Unaudited |
| Core Contracts - MegaETH | unknown | project_anchor | own_supporting | 0 | megaeth | unit-252159 | `0xabf89de706b583424328b54dd05a8fc986750da8` | ⚠️ Unaudited |
| Core Contracts - Monad | unknown | project_anchor | own_supporting | 0 | monad | unit-252116 | `0x194b123c5e96b9b2e49763619985790dc241cac0` | ⚠️ Unaudited |
| Core Contracts - Moonbeam | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-252099 | `0xc8e2b0cd52cf01b0ce87d389daa3d414d4ce29f3` | ⚠️ Unaudited |
| Core Contracts - Optimism | unknown | project_anchor | own_supporting | 0 | optimism | unit-252093 | `0xee91c335eab126df5fdb3797ea9d6ad93aec9722` | ⚠️ Unaudited |
| Core Contracts - Polygon | unknown | project_anchor | own_supporting | 0 | polygon | unit-252113 | `0x7a4b5a56256163f07b2c80a7ca55abe66c4ec4d7` | ⚠️ Unaudited |
| Core Contracts - Scroll | unknown | project_anchor | own_supporting | 0 | scroll | unit-252168 | `0xbebdb6c8ddc678ffa9f8748f85c815c556dd8ac6` | ⚠️ Unaudited |
| Core Contracts - SeiEVM | unknown | project_anchor | own_supporting | 0 | sei | unit-252107 | `0xca1d5a146b03f6303baf59e5ad5615ae0b9d146d` | ⚠️ Unaudited |
| Core Contracts - Unichain | unknown | project_anchor | own_supporting | 0 | unichain | unit-252103 | `0xca1d5a146b03f6303baf59e5ad5615ae0b9d146d` | ⚠️ Unaudited |
| Core Contracts - World Chain | unknown | project_anchor | own_supporting | 0 | world | unit-252164 | `0xcbcee4e081464a15d8ad5f58bb493954421eb506` | ⚠️ Unaudited |
| Delegated Guardians - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252077 | `0x1462800febd49232798132e8c8b721aa86c4c209` | ⚠️ Unaudited |
| Executor - Arbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252142 | `0x3980f8318fc03d79033bbb421a622cdf8d2eeab4` | ⚠️ Unaudited |
| Executor - Base | unknown | project_anchor | own_supporting | 0 | base | unit-252196 | `0x9e1936e91a4a5ae5a5f75ffc472d6cb8e93597ea` | ⚠️ Unaudited |
| Executor - Berachain | unknown | project_anchor | own_supporting | 0 | berachain | unit-252185 | `0x0dd7a5a32311b8d87a615cc7f079b632d3d5e2d3` | ⚠️ Unaudited |
| Executor - BNB Smart Chain | unknown | project_anchor | own_supporting | 0 | bsc | unit-252175 | `0xec8cccd058dbf28e5d002869aa9afa3992bf4ee0` | ⚠️ Unaudited |
| Executor - Celo | unknown | project_anchor | own_supporting | 0 | celo | unit-252148 | `0xe6ea5087c6860b94cf098a403506262d8f28cf05` | ⚠️ Unaudited |
| Executor - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252081 | `0x84eee8dba37c36947397e1e11251ca9a06fc6f8a` | ⚠️ Unaudited |
| Executor - Linea | unknown | project_anchor | own_supporting | 0 | linea | unit-252182 | `0x23af2b5296122544a9a7861da43405d5b15a9bd3` | ⚠️ Unaudited |
| Executor - MegaETH | unknown | project_anchor | own_supporting | 0 | megaeth | unit-252160 | `0xd405e0a1f3f9edc25ea32d0b079d6118328b2ecb` | ⚠️ Unaudited |
| Executor - Monad | unknown | project_anchor | own_supporting | 0 | monad | unit-252120 | `0xc04de634982cadf2a677310b73630b7ac56a3f65` | ⚠️ Unaudited |
| Executor - Moonbeam | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-252097 | `0x85d06449c78064c2e02d787e9dc71716786f8d19` | ⚠️ Unaudited |
| Executor - Optimism | unknown | project_anchor | own_supporting | 0 | optimism | unit-252090 | `0x85b704501f6ae718205c0636260768c4e72ac3e7` | ⚠️ Unaudited |
| Executor - Polygon | unknown | project_anchor | own_supporting | 0 | polygon | unit-252108 | `0x0b23efa164ab3ed08e9a39ac7ad930ff4f5a5e81` | ⚠️ Unaudited |
| Executor - Scroll | unknown | project_anchor | own_supporting | 0 | scroll | unit-252169 | `0xcfadde24640e395f5a71456a825d0d7c3741f075` | ⚠️ Unaudited |
| Executor - SeiEVM | unknown | project_anchor | own_supporting | 0 | sei | unit-252105 | `0x25f1c923fb7a5aefa5f0a2b419fc70f2368e66e5` | ⚠️ Unaudited |
| Executor - Sonic | unknown | project_anchor | own_supporting | 0 | sonic | unit-252126 | `0x3fdc36b4260da38fbdba1125ccbd33dd0ac74812` | ⚠️ Unaudited |
| Executor - Unichain | unknown | project_anchor | own_supporting | 0 | unichain | unit-252102 | `0x764dd868eadd27ce57bcb801e4ca4a193d231aed` | ⚠️ Unaudited |
| Executor - World Chain | unknown | project_anchor | own_supporting | 0 | world | unit-252162 | `0x8689b4e6226adc8fa8ff80acc3a60ace31e8804b` | ⚠️ Unaudited |
| Guardian Governance - Arbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252141 | `0x36cf4c88fa548c6ad9fcdc696e1c27bb3306163f` | ⚠️ Unaudited |
| Guardian Governance - Avalanche | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252152 | `0x169d91c797edf56100f1b765268145660503a423` | ⚠️ Unaudited |
| Guardian Governance - Base | unknown | project_anchor | own_supporting | 0 | base | unit-252194 | `0x838a95b6a3e06b6f11c437e22f3c7561a6ec40f1` | ⚠️ Unaudited |
| Guardian Governance - BNB Smart Chain | unknown | project_anchor | own_supporting | 0 | bsc | unit-252170 | `0x8e4dc685e990379b8d53eca47841e09b8d30043e` | ⚠️ Unaudited |
| Guardian Governance - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252078 | `0x23fea5514dfc9821479fbe18ba1d7e1a61f6ffcf` | ⚠️ Unaudited |
| Guardian Governance - HyperEVM | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-252202 | `0x574b7864119c9223a9870ea614dc91a8ee09e512` | ⚠️ Unaudited |
| Guardian Governance - MegaETH | unknown | project_anchor | own_supporting | 0 | megaeth | unit-252158 | `0x574b7864119c9223a9870ea614dc91a8ee09e512` | ⚠️ Unaudited |
| Guardian Governance - Monad | unknown | project_anchor | own_supporting | 0 | monad | unit-252118 | `0x574b7864119c9223a9870ea614dc91a8ee09e512` | ⚠️ Unaudited |
| Guardian Governance - Optimism | unknown | project_anchor | own_supporting | 0 | optimism | unit-252086 | `0x0e09a3081837ff23d2e59b179e0bc48a349afbd8` | ⚠️ Unaudited |
| Guardian Governance - Unichain | unknown | project_anchor | own_supporting | 0 | unichain | unit-252101 | `0x574b7864119c9223a9870ea614dc91a8ee09e512` | ⚠️ Unaudited |
| Quoter Router - Arbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252140 | `0x32eec14c963c23176bd8951f192292006756bdcc` | ⚠️ Unaudited |
| Quoter Router - Avalanche | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252157 | `0xa3a2a615774d34c6a4df443c488b084eacabd2d0` | ⚠️ Unaudited |
| Quoter Router - Base | unknown | project_anchor | own_supporting | 0 | base | unit-252192 | `0x265fd0500a430d65d6d79cd8707f24c048604658` | ⚠️ Unaudited |
| Quoter Router - BNB Smart Chain | unknown | project_anchor | own_supporting | 0 | bsc | unit-252174 | `0xc921f293c27f332d47283174b11c872295624edb` | ⚠️ Unaudited |
| Quoter Router - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252085 | `0xf22f1c0a3a8cb42f695601731974784c499c4ef3` | ⚠️ Unaudited |
| Quoter Router - Optimism | unknown | project_anchor | own_supporting | 0 | optimism | unit-252092 | `0xa3b6551ccbb5fe1dc33b71ee3590b1df22ae75b3` | ⚠️ Unaudited |
| Quoter Router - Polygon | unknown | project_anchor | own_supporting | 0 | polygon | unit-252110 | `0x2a856931603930b827b1a4352fb4d66fa029f123` | ⚠️ Unaudited |
| Read-Only Deployments - Aurora | unknown | project_anchor | own_supporting | 0 | aurora | unit-252104 | `0x51b5123a7b0f9b2ba265f9c4c8de7d78d52f510f` | ⚠️ Unaudited |
| Read-Only Deployments - Blast | unknown | project_anchor | own_supporting | 0 | blast | unit-252188 | `0xbebdb6c8ddc678ffa9f8748f85c815c556dd8ac6` | ⚠️ Unaudited |
| Read-Only Deployments - Corn | unknown | project_anchor | own_supporting | 0 | chain-21000000 | unit-252130 | `0xa683c66045ad16abb1bce5ad46a64d95f9a25785` | ⚠️ Unaudited |
| Read-Only Deployments - Gnosis | unknown | project_anchor | own_supporting | 0 | gnosis | unit-252094 | `0xa321448d90d4e5b0a732867c18ea198e75cac48e` | ⚠️ Unaudited |
| Read-Only Deployments - Sonic | unknown | project_anchor | own_supporting | 0 | sonic | unit-252125 | `0x352a86168e6988a1adf9a15cb00017aad3b67155` | ⚠️ Unaudited |
| Settlement Token Router - Arbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252143 | `0x70287c79ee41c5d1df8259cd68ba0890cd389c47` | ⚠️ Unaudited |
| Settlement Token Router - Base | unknown | project_anchor | own_supporting | 0 | base | unit-252193 | `0x70287c79ee41c5d1df8259cd68ba0890cd389c47` | ⚠️ Unaudited |
| Settlement Token Router - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252080 | `0x70287c79ee41c5d1df8259cd68ba0890cd389c47` | ⚠️ Unaudited |
| Settlement Token Router - Optimism | unknown | project_anchor | own_supporting | 0 | optimism | unit-252089 | `0x70287c79ee41c5d1df8259cd68ba0890cd389c47` | ⚠️ Unaudited |
| Settlement Token Router - Polygon | unknown | project_anchor | own_supporting | 0 | polygon | unit-252112 | `0x70287c79ee41c5d1df8259cd68ba0890cd389c47` | ⚠️ Unaudited |
| Wormhole Labs Quoter Implementation - Arbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252144 | `0xa25862d222eb8343505c12d96e097e4332468d60` | ⚠️ Unaudited |
| Wormhole Labs Quoter Implementation - Avalanche | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252156 | `0xa25862d222eb8343505c12d96e097e4332468d60` | ⚠️ Unaudited |
| Wormhole Labs Quoter Implementation - Base | unknown | project_anchor | own_supporting | 0 | base | unit-252197 | `0xa25862d222eb8343505c12d96e097e4332468d60` | ⚠️ Unaudited |
| Wormhole Labs Quoter Implementation - BNB Smart Chain | unknown | project_anchor | own_supporting | 0 | bsc | unit-252172 | `0xa25862d222eb8343505c12d96e097e4332468d60` | ⚠️ Unaudited |
| Wormhole Labs Quoter Implementation - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252083 | `0xa25862d222eb8343505c12d96e097e4332468d60` | ⚠️ Unaudited |
| Wormhole Labs Quoter Implementation - Optimism | unknown | project_anchor | own_supporting | 0 | optimism | unit-252091 | `0xa25862d222eb8343505c12d96e097e4332468d60` | ⚠️ Unaudited |
| Wormhole Labs Quoter Implementation - Polygon | unknown | project_anchor | own_supporting | 0 | polygon | unit-252114 | `0xa25862d222eb8343505c12d96e097e4332468d60` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Arbitrum | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-252138 | `0x0b2402144bb366a632d14b83f244d2e0e21bd39c` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Avalanche | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252151 | `0x0e082f06ff657d94310cb8ce8b0d9a04541d8052` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Base | unknown | project_anchor | own_supporting | 0 | base | unit-252195 | `0x8d2de8d2f73f1f4cab472ac9a881c9b123c79627` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Berachain | unknown | project_anchor | own_supporting | 0 | berachain | unit-252186 | `0x3ff72741fd67d6ad0668d93b41a09248f4700560` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - BNB Smart Chain | unknown | project_anchor | own_supporting | 0 | bsc | unit-252173 | `0xb6f6d86a8f9879a9c87f643768d9efc38c1da6e7` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Celo | unknown | project_anchor | own_supporting | 0 | celo | unit-252146 | `0x796dff6d74f3e27060b71255fe517bfb23c93eed` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Ethereum | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252079 | `0x3ee18b2214aff97000d974cf647e7c347e8fa585` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Mantle | unknown | project_anchor | own_supporting | 0 | mantle | unit-252165 | `0x24850c6f61c438823f01b7a3bf2b89b72174fa9d` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - MegaETH | unknown | project_anchor | own_supporting | 0 | megaeth | unit-252161 | `0xf97b81e513f53c7a6b57bd0b103a6c295b3096c5` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Moonbeam | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-252098 | `0xb1731c586ca89a23809861c6103f0b96b3f57d92` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Optimism | unknown | project_anchor | own_supporting | 0 | optimism | unit-252087 | `0x1d68124e65fafc907325e3edbf8c4d84499daa8b` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Polygon | unknown | project_anchor | own_supporting | 0 | polygon | unit-252111 | `0x5a58505a96d1dbf8df91cb21b54419fc36e93fde` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Scroll | unknown | project_anchor | own_supporting | 0 | scroll | unit-252167 | `0x24850c6f61c438823f01b7a3bf2b89b72174fa9d` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - SeiEVM | unknown | project_anchor | own_supporting | 0 | sei | unit-252106 | `0x3ff72741fd67d6ad0668d93b41a09248f4700560` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - Unichain | unknown | project_anchor | own_supporting | 0 | unichain | unit-252100 | `0x3ff72741fd67d6ad0668d93b41a09248f4700560` | ⚠️ Unaudited |
| Wrapped Token Transfers (WTT) - World Chain | unknown | project_anchor | own_supporting | 0 | world | unit-252163 | `0xc309275443519adca74c9136b02a38ef96e3a1f6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (102)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Core Contracts - CreditCoin | unknown | project_anchor | own_supporting | 0 | creditcoin | unit-252095 | `0xabf89de706b583424328b54dd05a8fc986750da8` | ❓ Unverified |
| Core Contracts - Fantom | unknown | project_anchor | own_supporting | 0 | fantom | unit-252132 | `0x126783a6cb203a3e35344528b26ca3a0489a1485` | ❓ Unverified |
| Core Contracts - Ink | unknown | project_anchor | own_supporting | 0 | ink | unit-252179 | `0xca1d5a146b03f6303baf59e5ad5615ae0b9d146d` | ❓ Unverified |
| Core Contracts - Kaia | unknown | project_anchor | own_supporting | 0 | kaia | unit-252189 | `0x0c21603c4f3a6387e241c0091a7ea39e43e90bb7` | ❓ Unverified |
| Core Contracts - Mezo | unknown | project_anchor | own_supporting | 0 | mezo | unit-252136 | `0xabf89de706b583424328b54dd05a8fc986750da8` | ❓ Unverified |
| Core Contracts - Plume | unknown | project_anchor | own_supporting | 0 | plume | unit-252201 | `0xabf89de706b583424328b54dd05a8fc986750da8` | ❓ Unverified |
| Core Contracts - X Layer | unknown | project_anchor | own_supporting | 0 | x-layer | unit-252128 | `0x194b123c5e96b9b2e49763619985790dc241cac0` | ❓ Unverified |
| Core Contracts - XRPL-EVM | unknown | project_anchor | own_supporting | 0 | xrpl-evm | unit-252124 | `0xabf89de706b583424328b54dd05a8fc986750da8` | ❓ Unverified |
| Executor - Avalanche | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252153 | `0x4661f0e629e4ba8d04ee90080aee079740b00381` | ❓ Unverified |
| Executor - CreditCoin | unknown | project_anchor | own_supporting | 0 | creditcoin | unit-252096 | `0xd2e420188f17607aa6344ee19c3e76cf86ca7bde` | ❓ Unverified |
| Executor - HyperEVM | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-252204 | `0xd7717899cc4381033bc200431286d0ac14265f78` | ❓ Unverified |
| Executor - Ink | unknown | project_anchor | own_supporting | 0 | ink | unit-252176 | `0x3e44a5f45cbd400acbef534f51e616043b211ddd` | ❓ Unverified |
| Executor - Mezo | unknown | project_anchor | own_supporting | 0 | mezo | unit-252135 | `0x0f9b8e144cc5c5e7c0073829afd30f26a50c5606` | ❓ Unverified |
| Executor - XRPL-EVM | unknown | project_anchor | own_supporting | 0 | xrpl-evm | unit-252123 | `0x8345e90dcd92f5cf2fab0c8e2a56a5bc2c30d896` | ❓ Unverified |
| Guardian Governance - XRPL-EVM | unknown | project_anchor | own_supporting | 0 | xrpl-evm | unit-252122 | `0x574b7864119c9223a9870ea614dc91a8ee09e512` | ❓ Unverified |
| Quoter Router - Ink | unknown | project_anchor | own_supporting | 0 | ink | unit-252180 | `0xdec050e66beb2f0d5507761a0fe4867839bd88d2` | ❓ Unverified |
| Quoter Router - Monad | unknown | project_anchor | own_supporting | 0 | monad | unit-252117 | `0x3d9282a8e9a3cdd9b25ae969eff4705a1fe75f34` | ❓ Unverified |
| Quoter Router - Plume | unknown | project_anchor | own_supporting | 0 | plume | unit-252199 | `0x85ba1b2a2195be51ab715be458b32b120532d230` | ❓ Unverified |
| Read-Only Deployments - Acala | unknown | project_anchor | own_supporting | 0 | acala | unit-252184 | `0xa321448d90d4e5b0a732867c18ea198e75cac48e` | ❓ Unverified |
| Read-Only Deployments - Goat | unknown | project_anchor | own_supporting | 0 | goat | unit-252131 | `0x352a86168e6988a1adf9a15cb00017aad3b67155` | ❓ Unverified |
| Read-Only Deployments - Karura | unknown | project_anchor | own_supporting | 0 | karura | unit-252183 | `0xa321448d90d4e5b0a732867c18ea198e75cac48e` | ❓ Unverified |
| Read-Only Deployments - LightLink | unknown | project_anchor | own_supporting | 0 | lightlink | unit-252127 | `0x352a86168e6988a1adf9a15cb00017aad3b67155` | ❓ Unverified |
| Read-Only Deployments - Oasis | unknown | project_anchor | own_supporting | 0 | oasis-emerald | unit-252149 | `0xfe8cd454b4a1ca468b57d79c0cc77ef5b6f64585` | ❓ Unverified |
| Read-Only Deployments - Rootstock | unknown | project_anchor | own_supporting | 0 | rootstock | unit-252134 | `0xbebdb6c8ddc678ffa9f8748f85c815c556dd8ac6` | ❓ Unverified |
| Read-Only Deployments - Telos | unknown | project_anchor | own_supporting | 0 | telos-evm | unit-252137 | `0x352a86168e6988a1adf9a15cb00017aad3b67155` | ❓ Unverified |
| Settlement Token Router - Avalanche | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252155 | `0x70287c79ee41c5d1df8259cd68ba0890cd389c47` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x0290fb167208af455bb137780163b7b7a9a10c16` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x68605ad7b15c732a30b1bbc62be8f2a509d74b4d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0x9dcf9d205c9de35334d646bee44b2d2859712a09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0xc89ce4735882c9f0f0fe26686c53074e09b0d550` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | n/a | `0xec8cccd058dbf28e5d002869aa9afa3992bf4ee0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | moonbase-alpha | n/a | `0xa5b7d85a8f27dd7907dc8fdc21fa5657d5e2f901` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | moonbase-alpha | n/a | `0xbc976d4b9d57e57c3ca52e1fd136c45ff7955a96` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | n/a | `0x764dd868eadd27ce57bcb801e4ca4a193d231aed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | n/a | `0xa10f2ef61de1f19f586ab8b6f2eba89bace63f7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | unichain-sepolia | n/a | `0xbb73cb66c26740f31d1fabdc6b7a46a038a300dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4002 | n/a | `0x1bb3b4119b7ba9dfad76b0545fb3f531383c3bb7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4002 | n/a | `0x599cea2204b4faecd584ab1f2b6aca137a0afbe8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | megaeth | n/a | `0x81705b969cdcc6fbfde91a0c6777be0ef3a75855` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | monad-testnet | n/a | `0xabf89de706b583424328b54dd05a8fc986750da8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | monad-testnet | n/a | `0xe37d3e162b4b1f17131e4e0e6122dba31243382f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | monad-testnet | n/a | `0xf97b81e513f53c7a6b57bd0b103a6c295b3096c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | n/a | `0x76d093bbae4529a342080546cafeec4acba59ec6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | n/a | `0xa10f2ef61de1f19f586ab8b6f2eba89bace63f7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4661f0e629e4ba8d04ee90080aee079740b00381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x58f4c17449c90665891c42e14d34aae7a26a472e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5a6c5a46082d029fdd7c5cf8265047e0c4bb2089` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x61e44e506ca5659e6c0bba9b678586fa2d729756` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7bbce28e64b3f8b84d876ab298393c38ad7aac4c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xa3a2a615774d34c6a4df443c488b084eacabd2d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-44787 | n/a | `0x05ca6037ec51f8b712ed2e6fa72219feae74e153` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-44787 | n/a | `0x88505117ca88e7dd2ec6ea1e13f0948db2d50d56` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | linea-sepolia | n/a | `0x4f6c3a93a80ddc691312974daabf9b6e4bb44111` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | linea-sepolia | n/a | `0x79a1027a6a159502049f10906d333ec57e95f083` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | linea-sepolia | n/a | `0xc7a204bdbfe983fcd8d8e61d02b475d4073ff97e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | n/a | `0x5a6c5a46082d029fdd7c5cf8265047e0c4bb2089` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | n/a | `0x6b9c8671cddc8deab9c719bb87cbd3e782ba6a35` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | n/a | `0x7056721c33de437f0997f67bc87521ca86b721d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | n/a | `0xc7a204bdbfe983fcd8d8e61d02b475d4073ff97e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | n/a | `0xe00444636da924fbae94471d73d56b5e03ca781c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x2507d6899c3d4b93bf46b555d0cb401f44065772` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x2703483b1a5a7c577e8680de9df8be03c6f30e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x51b47d493cba7ab97e3f8f163d6ce07592ce4482` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x5a6c5a46082d029fdd7c5cf8265047e0c4bb2089` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x720a59128b96eda6ec2940c7899406e4dc56d0dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x79a1027a6a159502049f10906d333ec57e95f083` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | n/a | `0x86f55a04690fd7815a3d802bd587e83ea888b239` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | plume | n/a | `0x8fc2fba8f962fbe89a9b02f03557a011c335a455` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x2703483b1a5a7c577e8680de9df8be03c6f30e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x5a6c5a46082d029fdd7c5cf8265047e0c4bb2089` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x5e8c14f436c9ed2ff2e8b042b0542136bf108c6f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x6b9c8671cddc8deab9c719bb87cbd3e782ba6a35` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x81b65a48dcaccba04aca3c055c4112b0715b90c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xbf161de6b819c8af8f2230bcd99a9b3592f6f87b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xc7a204bdbfe983fcd8d8e61d02b475d4073ff97e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xe0418c44f06b0b0d7d1706e01706316dbb0b210e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | n/a | `0x055f47f1250012c6b20c436570a76e52c17af2d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | n/a | `0x22427d90b7da3fa4642f7025a854c7254e4e45bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x2703483b1a5a7c577e8680de9df8be03c6f30e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x4a8bc80ed5a4067f1ccf107057b8270e0cc11a78` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x5a6c5a46082d029fdd7c5cf8265047e0c4bb2089` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0x9517f0164c1d089ad72e669e57b9088790966dbd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xc0c35d7bfbc4175e0991ae294f561b433ea4158f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xd0fb39f5a3361f21457653cb70f9d0c9bd86b66b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | n/a | `0xdb5492265f6038831e89f495670ff909ade94bd9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x2703483b1a5a7c577e8680de9df8be03c6f30e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x31377888146f3253211efef5c676d41ece7d58fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x5856651eb82aeb6979b4954317194d48e1891b3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x5a6c5a46082d029fdd7c5cf8265047e0c4bb2089` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x6a829df7c91f35f9ad72cd5d05550b95bbc9fd2f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x6baa7397c18abe6221b4f6c3ac91c88a9fae00d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0x99737ec4b815d816c49a385943baf0380e75c0ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | n/a | `0xce1de1ea4b040d324a07719043a6234c94fd0b5d` | ❓ Unverified |
| Wormhole Labs Quoter Implementation - Ink | unknown | project_anchor | own_supporting | 0 | ink | unit-252178 | `0xa25862d222eb8343505c12d96e097e4332468d60` | ❓ Unverified |
| Wormhole Labs Quoter Implementation - Monad | unknown | project_anchor | own_supporting | 0 | monad | unit-252119 | `0xa25862d222eb8343505c12d96e097e4332468d60` | ❓ Unverified |
| Wormhole Labs Quoter Implementation - Plume | unknown | project_anchor | own_supporting | 0 | plume | unit-252200 | `0xa25862d222eb8343505c12d96e097e4332468d60` | ❓ Unverified |
| Wrapped Token Transfers (WTT) - Fantom | unknown | project_anchor | own_supporting | 0 | fantom | unit-252133 | `0x7c9fc5741288cdfdd83ceb07f3ea7e22618d79d2` | ❓ Unverified |
| Wrapped Token Transfers (WTT) - Ink | unknown | project_anchor | own_supporting | 0 | ink | unit-252177 | `0x3ff72741fd67d6ad0668d93b41a09248f4700560` | ❓ Unverified |
| Wrapped Token Transfers (WTT) - Kaia | unknown | project_anchor | own_supporting | 0 | kaia | unit-252190 | `0x5b08ac39eaed75c0439fc750d9fe7e1f9dd0193f` | ❓ Unverified |
| Wrapped Token Transfers (WTT) - Monad | unknown | project_anchor | own_supporting | 0 | monad | unit-252115 | `0x0b2719cda2f10595369e6673cea3ee2edfa13ba7` | ❓ Unverified |
| Wrapped Token Transfers (WTT) - X Layer | unknown | project_anchor | own_supporting | 0 | x-layer | unit-252129 | `0x5537857664b0f9efe38c9f320f75fef23234d904` | ❓ Unverified |
| Wrapped Token Transfers (WTT) - XRPL-EVM | unknown | project_anchor | own_supporting | 0 | xrpl-evm | unit-252121 | `0x47f5195163270345fb4d7b9319eda8c64c75e278` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 195 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
