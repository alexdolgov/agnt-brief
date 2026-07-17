# Agentic Audit Brief: GAIB

## Project Overview

- Project: GAIB (`gaib`)
- Website: [https://aid.gaib.ai](https://aid.gaib.ai)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:17.285Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: bsc, ethereum, sei
- Contract surface: 42 unique implementations (42 raw deployments)
- DeFi Llama TVL: $20,855,599.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 38 project-authored contract(s) across 3 chain(s); 9 ERC4626 vaults, 11 ERC20 tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (accesscontrolenumerable, erc165, erc20permit). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 42; live-surface contracts included: 42 (42 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/29 (0.0%)
- Deployed-live implementations: 42 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/42
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 42
- Raw deployments: 42
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressesWhitelist | unknown | ethereum | n/a | [`0x2d00499079d7145163a213ab1443056cce6b0f77`](./contracts/ethereum-1/0x2d00499079d7145163a213ab1443056cce6b0f77/) | ⚠️ Unaudited |
| AIDAlphaMigration | unknown | ethereum | n/a | [`0x410c19f3f80b64c7486ae34890ee9251d0696433`](./contracts/ethereum-1/0x410c19f3f80b64c7486ae34890ee9251d0696433/) | ⚠️ Unaudited |
| AIDollarAlphaCUSDO | unknown | ethereum | n/a | [`0x17d02bca29bd9e8cf4a39b25c9c902e6bf00aa54`](./contracts/ethereum-1/0x17d02bca29bd9e8cf4a39b25c9c902e6bf00aa54/) | ⚠️ Unaudited |
| AIDollarAlphaUSBD | unknown | ethereum | n/a | [`0x34713d215b51325188fe1e4d4128be6e8aaa87ce`](./contracts/ethereum-1/0x34713d215b51325188fe1e4d4128be6e8aaa87ce/) | ⚠️ Unaudited |
| AIDollarAlphaUSD1 | unknown | bsc | n/a | [`0xd5255cc08ebaf6d54ac9448822a18d8a3da29a42`](./contracts/bsc-56/0xd5255cc08ebaf6d54ac9448822a18d8a3da29a42/) | ⚠️ Unaudited |
| AIDollarAlphaUSDC | unknown | ethereum | n/a | [`0x7eceb13815b0363398e5e863363c55b84c036402`](./contracts/ethereum-1/0x7eceb13815b0363398e5e863363c55b84c036402/) | ⚠️ Unaudited |
| AIDollarAlphaUSDO | unknown | ethereum | n/a | [`0xa3a7f9c47092d09583f6ef0cefe8b146c93b29c9`](./contracts/ethereum-1/0xa3a7f9c47092d09583f6ef0cefe8b146c93b29c9/) | ⚠️ Unaudited |
| AIDollarAlphaUSDT | unknown | ethereum | n/a | [`0xdc45e7027a0489fe6c2e4a0735097d8e6952a340`](./contracts/ethereum-1/0xdc45e7027a0489fe6c2e4a0735097d8e6952a340/) | ⚠️ Unaudited |
| AIDollarAlphaUSR | unknown | ethereum | n/a | [`0x5d976f56343e33a6a4d6e26af7d59358d1359dd4`](./contracts/ethereum-1/0x5d976f56343e33a6a4d6e26af7d59358d1359dd4/) | ⚠️ Unaudited |
| cUSDO | unknown | ethereum | n/a | [`0x7a3e55e2c23ab6adc12accf1075b91c174ee0102`](./contracts/ethereum-1/0x7a3e55e2c23ab6adc12accf1075b91c174ee0102/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x18f52b3fb465118731d9e0d276d4eb3599d57596`](./contracts/ethereum-1/0x18f52b3fb465118731d9e0d276d4eb3599d57596/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0x8238884ec9668ef77b90c6dff4d1a9f4f4823bfe`](./contracts/ethereum-1/0x8238884ec9668ef77b90c6dff4d1a9f4f4823bfe/) | ⚠️ Unaudited |
| ExternalRequestsCoordinator | unknown | ethereum | n/a | [`0x36c9b5e8f039381d1da79b94a206af8bc076c043`](./contracts/ethereum-1/0x36c9b5e8f039381d1da79b94a206af8bc076c043/) | ⚠️ Unaudited |
| ExternalRequestsManager | unknown | ethereum | n/a | [`0x10f4d4ead6bcd4de7849898403d88528e3dfc872`](./contracts/ethereum-1/0x10f4d4ead6bcd4de7849898403d88528e3dfc872/) | ⚠️ Unaudited |
| ExternalRequestsManagerBetaV1 | unknown | ethereum | n/a | [`0x052b1cacbdea7b4d711c6f428a20618ef60fda1b`](./contracts/ethereum-1/0x052b1cacbdea7b4d711c6f428a20618ef60fda1b/) | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | sei | n/a | [`0xe15fc38f6d8c56af07bbcbe3baf5708a2bf42392`](./contracts/sei-1329/0xe15fc38f6d8c56af07bbcbe3baf5708a2bf42392/) | ⚠️ Unaudited |
| GAIBVesting | unknown | ethereum | n/a | [`0x2511dcaa7073c4057a5eea4286c3883198cde60f`](./contracts/ethereum-1/0x2511dcaa7073c4057a5eea4286c3883198cde60f/) | ⚠️ Unaudited |
| Multicall | unknown | ethereum | n/a | [`0xba610d8c8c93580c19fb8800fc406227de8df947`](./contracts/ethereum-1/0xba610d8c8c93580c19fb8800fc406227de8df947/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | sei | n/a | [`0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc`](./contracts/sei-1329/0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc/) | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | ethereum | n/a | [`0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df`](./contracts/ethereum-1/0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df/) | ⚠️ Unaudited |
| RewardDistributor | unknown | ethereum | n/a | [`0x32a07be243ac4ea140b6fef69e3aa44d59f39f7a`](./contracts/ethereum-1/0x32a07be243ac4ea140b6fef69e3aa44d59f39f7a/) | ⚠️ Unaudited |
| RlpPriceAggregatorV3Interface | unknown | ethereum | n/a | [`0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb`](./contracts/ethereum-1/0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb/) | ⚠️ Unaudited |
| RlpPriceStorage | unknown | ethereum | n/a | [`0x03f75a4dce6a2aa260d98d10c2c606e5bcfff85c`](./contracts/ethereum-1/0x03f75a4dce6a2aa260d98d10c2c606e5bcfff85c/) | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | ethereum | n/a | [`0x14219845c6b7984aa5ec0a39754dcc327169de32`](./contracts/ethereum-1/0x14219845c6b7984aa5ec0a39754dcc327169de32/) | ⚠️ Unaudited |
| SimpleToken | unknown | ethereum | n/a | [`0x35533f54740f1f1aa4179e57ba37039dfa16868b`](./contracts/ethereum-1/0x35533f54740f1f1aa4179e57ba37039dfa16868b/) | ⚠️ Unaudited |
| StakedTokenDistributor | unknown | ethereum | n/a | [`0x53c5b703465234f97c5a7b17b602c6224a08031e`](./contracts/ethereum-1/0x53c5b703465234f97c5a7b17b602c6224a08031e/) | ⚠️ Unaudited |
| TheCounter | unknown | ethereum | n/a | [`0xa27a69ae180e202fde5d38189a3f24fe24e55861`](./contracts/ethereum-1/0xa27a69ae180e202fde5d38189a3f24fe24e55861/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x290d9544669c9c7a64f6899a0a3b28d563f6ebee`](./contracts/ethereum-1/0x290d9544669c9c7a64f6899a0a3b28d563f6ebee/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x093285c34515c01a55e15a25812bcf87e7ab0dc6`](./contracts/ethereum-1/0x093285c34515c01a55e15a25812bcf87e7ab0dc6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x0da21d330f3f75d730a1b5f1535ca75061cabf61`](./contracts/ethereum-1/0x0da21d330f3f75d730a1b5f1535ca75061cabf61/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055`](./contracts/ethereum-1/0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x75ec066efb238cf211baa73b28db539541493c70`](./contracts/ethereum-1/0x75ec066efb238cf211baa73b28db539541493c70/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x7f45180d6ffd0435d8dd695fd01320e6999c261c`](./contracts/ethereum-1/0x7f45180d6ffd0435d8dd695fd01320e6999c261c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x91eda28735ce089a8b5133476263c3fb8303c8ca`](./contracts/ethereum-1/0x91eda28735ce089a8b5133476263c3fb8303c8ca/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xacb7027f271b03b502d65feba617a0d817d62b8e`](./contracts/ethereum-1/0xacb7027f271b03b502d65feba617a0d817d62b8e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7`](./contracts/ethereum-1/0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | [`0x9151434b16b9763660705744891fa906f660ecc5`](./contracts/sei-1329/0x9151434b16b9763660705744891fa906f660ecc5/) | ⚠️ Unaudited |
| TreasuryIntermediateEscrow | unknown | ethereum | n/a | [`0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6`](./contracts/ethereum-1/0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6/) | ⚠️ Unaudited |
| UsrExternalRequestsManager | unknown | ethereum | n/a | [`0xac85ef29192487e0a109b7f9e40c267a9ea95f2e`](./contracts/ethereum-1/0xac85ef29192487e0a109b7f9e40c267a9ea95f2e/) | ⚠️ Unaudited |
| USRPriceAggregatorV3Interface | unknown | ethereum | n/a | [`0x8a93414f88f597922a9829df5f7c94b81bc46f64`](./contracts/ethereum-1/0x8a93414f88f597922a9829df5f7c94b81bc46f64/) | ⚠️ Unaudited |
| UsrRedemptionExtension | unknown | ethereum | n/a | [`0x60a7b7915980ed34fde6e239618fadcf67897c37`](./contracts/ethereum-1/0x60a7b7915980ed34fde6e239618fadcf67897c37/) | ⚠️ Unaudited |
| wUSDO | unknown | ethereum | n/a | [`0x82b09f8b6096039aa0d62a5cee8dff7f95791c04`](./contracts/ethereum-1/0x82b09f8b6096039aa0d62a5cee8dff7f95791c04/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audits](https://docs.gaib.ai/products/gaib-products/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audit & compliance](https://gaib.gitbook.io/gaib-docs/track-record-and-pipeline/trust-and-compliance/audit-and-compliance.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2d00499079d7145163a213ab1443056cce6b0f77`](./contracts/ethereum-1/0x2d00499079d7145163a213ab1443056cce6b0f77/) | AddressesWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x410c19f3f80b64c7486ae34890ee9251d0696433`](./contracts/ethereum-1/0x410c19f3f80b64c7486ae34890ee9251d0696433/) | AIDAlphaMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17d02bca29bd9e8cf4a39b25c9c902e6bf00aa54`](./contracts/ethereum-1/0x17d02bca29bd9e8cf4a39b25c9c902e6bf00aa54/) | AIDollarAlphaCUSDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34713d215b51325188fe1e4d4128be6e8aaa87ce`](./contracts/ethereum-1/0x34713d215b51325188fe1e4d4128be6e8aaa87ce/) | AIDollarAlphaUSBD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd5255cc08ebaf6d54ac9448822a18d8a3da29a42`](./contracts/bsc-56/0xd5255cc08ebaf6d54ac9448822a18d8a3da29a42/) | AIDollarAlphaUSD1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7eceb13815b0363398e5e863363c55b84c036402`](./contracts/ethereum-1/0x7eceb13815b0363398e5e863363c55b84c036402/) | AIDollarAlphaUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3a7f9c47092d09583f6ef0cefe8b146c93b29c9`](./contracts/ethereum-1/0xa3a7f9c47092d09583f6ef0cefe8b146c93b29c9/) | AIDollarAlphaUSDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc45e7027a0489fe6c2e4a0735097d8e6952a340`](./contracts/ethereum-1/0xdc45e7027a0489fe6c2e4a0735097d8e6952a340/) | AIDollarAlphaUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d976f56343e33a6a4d6e26af7d59358d1359dd4`](./contracts/ethereum-1/0x5d976f56343e33a6a4d6e26af7d59358d1359dd4/) | AIDollarAlphaUSR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a3e55e2c23ab6adc12accf1075b91c174ee0102`](./contracts/ethereum-1/0x7a3e55e2c23ab6adc12accf1075b91c174ee0102/) | cUSDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36c9b5e8f039381d1da79b94a206af8bc076c043`](./contracts/ethereum-1/0x36c9b5e8f039381d1da79b94a206af8bc076c043/) | ExternalRequestsCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10f4d4ead6bcd4de7849898403d88528e3dfc872`](./contracts/ethereum-1/0x10f4d4ead6bcd4de7849898403d88528e3dfc872/) | ExternalRequestsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x052b1cacbdea7b4d711c6f428a20618ef60fda1b`](./contracts/ethereum-1/0x052b1cacbdea7b4d711c6f428a20618ef60fda1b/) | ExternalRequestsManagerBetaV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xe15fc38f6d8c56af07bbcbe3baf5708a2bf42392`](./contracts/sei-1329/0xe15fc38f6d8c56af07bbcbe3baf5708a2bf42392/) | FiatTokenV2_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2511dcaa7073c4057a5eea4286c3883198cde60f`](./contracts/ethereum-1/0x2511dcaa7073c4057a5eea4286c3883198cde60f/) | GAIBVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df`](./contracts/ethereum-1/0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df/) | ResolvStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32a07be243ac4ea140b6fef69e3aa44d59f39f7a`](./contracts/ethereum-1/0x32a07be243ac4ea140b6fef69e3aa44d59f39f7a/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb`](./contracts/ethereum-1/0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb/) | RlpPriceAggregatorV3Interface | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03f75a4dce6a2aa260d98d10c2c606e5bcfff85c`](./contracts/ethereum-1/0x03f75a4dce6a2aa260d98d10c2c606e5bcfff85c/) | RlpPriceStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14219845c6b7984aa5ec0a39754dcc327169de32`](./contracts/ethereum-1/0x14219845c6b7984aa5ec0a39754dcc327169de32/) | SimpleOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35533f54740f1f1aa4179e57ba37039dfa16868b`](./contracts/ethereum-1/0x35533f54740f1f1aa4179e57ba37039dfa16868b/) | SimpleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53c5b703465234f97c5a7b17b602c6224a08031e`](./contracts/ethereum-1/0x53c5b703465234f97c5a7b17b602c6224a08031e/) | StakedTokenDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa27a69ae180e202fde5d38189a3f24fe24e55861`](./contracts/ethereum-1/0xa27a69ae180e202fde5d38189a3f24fe24e55861/) | TheCounter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x290d9544669c9c7a64f6899a0a3b28d563f6ebee`](./contracts/ethereum-1/0x290d9544669c9c7a64f6899a0a3b28d563f6ebee/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6`](./contracts/ethereum-1/0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6/) | TreasuryIntermediateEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac85ef29192487e0a109b7f9e40c267a9ea95f2e`](./contracts/ethereum-1/0xac85ef29192487e0a109b7f9e40c267a9ea95f2e/) | UsrExternalRequestsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a93414f88f597922a9829df5f7c94b81bc46f64`](./contracts/ethereum-1/0x8a93414f88f597922a9829df5f7c94b81bc46f64/) | USRPriceAggregatorV3Interface | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60a7b7915980ed34fde6e239618fadcf67897c37`](./contracts/ethereum-1/0x60a7b7915980ed34fde6e239618fadcf67897c37/) | UsrRedemptionExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82b09f8b6096039aa0d62a5cee8dff7f95791c04`](./contracts/ethereum-1/0x82b09f8b6096039aa0d62a5cee8dff7f95791c04/) | wUSDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 13 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [17247] Audits
- [17248] Audit & compliance

Fork inheritance lineage and inherited audits are included when available.
