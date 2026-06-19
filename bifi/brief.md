# Agentic Audit Brief: BiFi

## Project Overview

- Project: BiFi (`bifi`)
- Website: [https://bifi.finance/](https://bifi.finance/)
- Lifecycle: active (Tier 0, 85.3% below peak)
- Generated: 2026-06-19T06:13:18.217Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: avalanche, bsc, ethereum, klaytn
- Contract surface: 15 unique implementations (19 raw deployments)
- DeFi Llama TVL: $6,959,644.75
- On-chain TVL (included contracts): $140,010.68
- TVL by chain: Bsc $140,010.68

## Project Description

BiFi is a cross-chain lending and borrowing platform powered by Bifrost, positioned around native cross-chain functionality without relying on bridges or wrapped tokens. Its current Cross-chain BiFi deployment on Bifrost Network and Binance/BSC should be distinguished from legacy Ethereum, Avalanche, and Klaytn lending deployments that used handler/manager-style contracts and proxy-based upgradeability.

### Architecture

All handler proxies (e.g., UsdtHandlerProxy, DaiHandlerProxy) delegate to shared implementation contracts (TokenHandler or CoinHandler) and are managed by the TokenManager (HandlerManager implementation). The XFactory likely deploys or configures these handlers, forming a unified lending infrastructure.

## Contract Surface Quality

- Indexed contracts: 247; live-surface contracts included: 19 (11 live, 8 unknown).
- Excluded by liveness: 210 inactive, 18 singleton, 0 uninitialized.
- Deployment units: 3/10 live.
- Detected codebases: none
- Unverified dependencies: 1/3.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 15
- Raw deployments: 19
- Audits discovered: 7
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $140,010.68
- Latest audit: 2021-08 (stale)
- Staleness: 0 fresh, 0 aging, 7 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| tokenHandler | token | bsc | unit-36244 (2 proxies) | 2 deployments: bsc [`0x26d0e4...24c40b`](./contracts/bsc-56/0x26d0e4707af1c1daad8e9ba21b99cda7fd24c40b/); bsc `0xba9de5...34c9f0` | ⚠️ Unaudited |
| TokenHandler | token | bsc | unit-36245 (4 proxies) | 4 deployments: bsc [`0x2a2959...57e6b8`](./contracts/bsc-56/0x2a29598cbc17ba112c8fd0e07fbf5402ef57e6b8/); bsc `0x829ed2...2e8c1e`; bsc `0xb67c54...666d9b`; bsc `0xf86d82...34c3eb` | ⚠️ Unaudited |
| BFCModel | unknown | ethereum | n/a | [`0x488933...ca19b5`](./contracts/ethereum-1/0x488933457e89656d7ef7e69c10f2f80c7aca19b5/) | ⚠️ Unaudited |
| CoinHandler | unknown | bsc | unit-36243 | [`0x170b6a...563c18`](./contracts/bsc-56/0x170b6aa872166ec2f8515c2b855c34b6c7563c18/) | ⚠️ Unaudited |
| etherLiquidationManager | governance | ethereum | n/a | [`0xfd514b...73285d`](./contracts/ethereum-1/0xfd514b33a361b82fe5d89070db6917cd4f73285d/) | ⚠️ Unaudited |
| Manager | governance | avalanche | n/a | [`0x74326d...a347fd`](./contracts/avalanche-43114/0x74326d2bfbf22312158850ac3b4f7ae8a0a347fd/) | ⚠️ Unaudited |
| ReqTokenProxy | token | avalanche | n/a | [`0xe89323...837943`](./contracts/avalanche-43114/0xe893233515b7d02dd4e3d888162d4c87dc837943/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | klaytn | n/a | `0x07970f...adff89` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x480057...d5f0da` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x4bae7b...7666ee` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x808c70...5caae1` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x829fcf...dbad13` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xa6ade2...8c1598` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xe03487...615043` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xe0e67b...c1ec11` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [bifrost_bifix_audit.pdf](https://github.com/bifrost-platform/BiFi-X/blob/main/docs/bifrost_bifix_audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 0 | n/a |
| [(ENG)_BiFi_BIFROST_Extension_Theori.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_BIFROST_Extension_Theori.pdf) | unknown | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [(ENG)_BiFi_Lending_Sooho_EN_Public.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_Lending_Sooho_EN_Public.pdf) | unknown | Audit | 2020-11 | stale | Direct | contract_name | 0 | n/a |
| [(ENG)_BiFi_Token_Hexlant_EN.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFi_Token_Hexlant_EN.pdf) | unknown | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [(ENG)_BiFrost_BTC_Extension_CertiK.pdf](https://github.com/bifrost-platform/BIFI/blob/master/docs/ENG/(ENG)_BiFrost_BTC_Extension_CertiK.pdf) | CertiK | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [BiFi Lending Protocol](https://github.com/bifrost-platform/BIFI/blob/master/docs/bifrost_bifi_audit.pdf) | Theori | Audit | 2021-02 | stale | Direct | contract_name | 0 | n/a |
| [BiFi Staking & Pooling Protocol](https://github.com/bifrost-platform/BiFi-staking-protocol/blob/main/docs/theori-audit-rev-2.0.pdf) | Theori | Audit | 2020-12 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x26d0e4...24c40b`](./contracts/bsc-56/0x26d0e4707af1c1daad8e9ba21b99cda7fd24c40b/) | tokenHandler | token | $74,125.81 | Verified native implementation with $74,125.81 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a2959...57e6b8`](./contracts/bsc-56/0x2a29598cbc17ba112c8fd0e07fbf5402ef57e6b8/) | TokenHandler | token | $65,884.87 | Verified native implementation with $65,884.87 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x488933...ca19b5`](./contracts/ethereum-1/0x488933457e89656d7ef7e69c10f2f80c7aca19b5/) | BFCModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x170b6a...563c18`](./contracts/bsc-56/0x170b6aa872166ec2f8515c2b855c34b6c7563c18/) | CoinHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd514b...73285d`](./contracts/ethereum-1/0xfd514b33a361b82fe5d89070db6917cd4f73285d/) | etherLiquidationManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x74326d...a347fd`](./contracts/avalanche-43114/0x74326d2bfbf22312158850ac3b4f7ae8a0a347fd/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe89323...837943`](./contracts/avalanche-43114/0xe893233515b7d02dd4e3d888162d4c87dc837943/) | ReqTokenProxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=113

Zero-match audit list:

- [2154] bifrost_bifix_audit.pdf
- [2155] (ENG)_BiFi_BIFROST_Extension_Theori.pdf
- [2156] (ENG)_BiFi_Lending_Sooho_EN_Public.pdf
- [2157] (ENG)_BiFi_Token_Hexlant_EN.pdf
- [2158] (ENG)_BiFrost_BTC_Extension_CertiK.pdf
- [2159] BiFi Lending Protocol
- [2160] BiFi Staking & Pooling Protocol

Fork inheritance lineage and inherited audits are included when available.
