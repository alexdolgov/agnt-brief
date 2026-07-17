# Agentic Audit Brief: Meld Gold

## Project Overview

- Project: Meld Gold (`meld-gold`)
- Website: [https://meld.gold](https://meld.gold)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.562Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $9,093,917.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 14 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 3 Chainlink feeds; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (owned, simplewriteaccesscontroller, typeandversioninterface). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Morpho** (`morpho`) in the AccessControlledAggregator, FeedRegistry, KeeperRegistry subsystem.
8 audits inherited from `morpho`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/14 (21.4%)
- Deployed-live implementations: 14 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/14
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 8 (0 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 8 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 21.4% (Certora, ChainSecurity, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Blackthorn | Tier 2 | 3 | 21.4% | 2025-12 |
| Certora | Tier 1 | 3 | 21.4% | 2025-12 |
| ChainSecurity | Tier 1 | 3 | 21.4% | 2025-09 |
| Spearbit | Tier 1 | 3 | 21.4% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlledAggregator | unknown | ethereum | n/a | [`0x00c7a37b03690fb9f41b5c5af8131735c7275446`](./contracts/ethereum-1/0x00c7a37b03690fb9f41b5c5af8131735c7275446/) | ✅ Audited |
| FeedRegistry | unknown | ethereum | n/a | [`0x47fb2585d2c56fe188d0e6ec628a38b74fceeedf`](./contracts/ethereum-1/0x47fb2585d2c56fe188d0e6ec628a38b74fceeedf/) | ✅ Audited |
| KeeperRegistry | unknown | ethereum | n/a | [`0x5c8b4d52683758cf855fa2118ef0104fdcd63698`](./contracts/ethereum-1/0x5c8b4d52683758cf855fa2118ef0104fdcd63698/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregatorFacade | unknown | ethereum | n/a | [`0x057e2610e76d70e8c6ad56711798c5790d0627ba`](./contracts/ethereum-1/0x057e2610e76d70e8c6ad56711798c5790d0627ba/) | ⚠️ Unaudited |
| ArbitrumValidator | unknown | ethereum | n/a | [`0x31982c9e5edd99bb923a948252167ea4bbc38ac1`](./contracts/ethereum-1/0x31982c9e5edd99bb923a948252167ea4bbc38ac1/) | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | ethereum | n/a | [`0x2e1b5a40edc922bce489668b11749b8eabd67f6b`](./contracts/ethereum-1/0x2e1b5a40edc922bce489668b11749b8eabd67f6b/) | ⚠️ Unaudited |
| CPoR | unknown | ethereum | n/a | [`0x575a16cd2305ad7171f5c1036c3506070df28c51`](./contracts/ethereum-1/0x575a16cd2305ad7171f5c1036c3506070df28c51/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | ethereum | n/a | [`0x010eef34dc1f831c86b547e826d52d6e4d29d14c`](./contracts/ethereum-1/0x010eef34dc1f831c86b547e826d52d6e4d29d14c/) | ⚠️ Unaudited |
| Flags | unknown | ethereum | n/a | [`0x24ec8467ab20e0b3c11a0a3fa39ccba9ec3bdabf`](./contracts/ethereum-1/0x24ec8467ab20e0b3c11a0a3fa39ccba9ec3bdabf/) | ⚠️ Unaudited |
| Oracle | unknown | ethereum | n/a | [`0x0fc84ab084a08971e6f52a9da41bfae82b546ebe`](./contracts/ethereum-1/0x0fc84ab084a08971e6f52a9da41bfae82b546ebe/) | ⚠️ Unaudited |
| PriceConsumer | unknown | ethereum | n/a | [`0x7f7d995fc12752fe5df42134252e8b7a8922f242`](./contracts/ethereum-1/0x7f7d995fc12752fe5df42134252e8b7a8922f242/) | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | ethereum | n/a | [`0x4a9d21b46810f69a02ac2d61f4bf1963de82700d`](./contracts/ethereum-1/0x4a9d21b46810f69a02ac2d61f4bf1963de82700d/) | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | ethereum | n/a | [`0x641b698ad1c6e503470520b0eecb472c0589dfe6`](./contracts/ethereum-1/0x641b698ad1c6e503470520b0eecb472c0589dfe6/) | ⚠️ Unaudited |
| ValidatorProxy | unknown | ethereum | n/a | [`0x264bddfd9d93d48d759fbdb0670be1c6fdd50236`](./contracts/ethereum-1/0x264bddfd9d93d48d759fbdb0670be1c6fdd50236/) | ⚠️ Unaudited |

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
| [2025-12-15-market-v1-adapter-v2-certora.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-15-market-v1-adapter-v2-certora.pdf) | Certora | Audit | 2025-12 | fresh | Inherited from Morpho — forked code, scoped to AccessControlledAggregator, FeedRegistry, KeeperRegistry | inherited | 3 | n/a |
| [2025-12-04-market-v1-adapter-v2-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-04-market-v1-adapter-v2-blackthorn.pdf) | Blackthorn | Audit | 2025-12 | fresh | Inherited from Morpho — forked code, scoped to AccessControlledAggregator, FeedRegistry, KeeperRegistry | inherited | 3 | n/a |
| [2025-12-04-market-v1-adapter-v2-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-12-04-market-v1-adapter-v2-spearbit.pdf) | Spearbit | Audit | 2025-12 | fresh | Inherited from Morpho — forked code, scoped to AccessControlledAggregator, FeedRegistry, KeeperRegistry | inherited | 3 | n/a |
| [2025-12-04-market-v1-adapter-v2-certora.pdf](https://github.com/morpho-org/vault-v2-adapter-registries/blob/main/audits/2025-12-04-market-v1-adapter-v2-certora.pdf) | Certora | Audit | 2025-12 | fresh | Inherited from Morpho — forked code, scoped to AccessControlledAggregator, FeedRegistry, KeeperRegistry | inherited | 3 | n/a |
| [2025-09-15-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-blackthorn.pdf) | Blackthorn | Audit | 2025-09 | fresh | Inherited from Morpho — forked code, scoped to AccessControlledAggregator, FeedRegistry, KeeperRegistry | inherited | 3 | n/a |
| [2025-09-15-chainsecurity.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-chainsecurity.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Inherited from Morpho — forked code, scoped to AccessControlledAggregator, FeedRegistry, KeeperRegistry | inherited | 3 | n/a |
| [2025-09-15-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Inherited from Morpho — forked code, scoped to AccessControlledAggregator, FeedRegistry, KeeperRegistry | inherited | 3 | n/a |
| [2025-09-11-spearbit.pdf](https://github.com/morpho-org/vault-v2-adapter-registries/blob/main/audits/2025-09-11-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Inherited from Morpho — forked code, scoped to AccessControlledAggregator, FeedRegistry, KeeperRegistry | inherited | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x057e2610e76d70e8c6ad56711798c5790d0627ba`](./contracts/ethereum-1/0x057e2610e76d70e8c6ad56711798c5790d0627ba/) | AggregatorFacade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31982c9e5edd99bb923a948252167ea4bbc38ac1`](./contracts/ethereum-1/0x31982c9e5edd99bb923a948252167ea4bbc38ac1/) | ArbitrumValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e1b5a40edc922bce489668b11749b8eabd67f6b`](./contracts/ethereum-1/0x2e1b5a40edc922bce489668b11749b8eabd67f6b/) | ConfirmedTransactionModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x575a16cd2305ad7171f5c1036c3506070df28c51`](./contracts/ethereum-1/0x575a16cd2305ad7171f5c1036c3506070df28c51/) | CPoR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x010eef34dc1f831c86b547e826d52d6e4d29d14c`](./contracts/ethereum-1/0x010eef34dc1f831c86b547e826d52d6e4d29d14c/) | EACAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24ec8467ab20e0b3c11a0a3fa39ccba9ec3bdabf`](./contracts/ethereum-1/0x24ec8467ab20e0b3c11a0a3fa39ccba9ec3bdabf/) | Flags | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fc84ab084a08971e6f52a9da41bfae82b546ebe`](./contracts/ethereum-1/0x0fc84ab084a08971e6f52a9da41bfae82b546ebe/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f7d995fc12752fe5df42134252e8b7a8922f242`](./contracts/ethereum-1/0x7f7d995fc12752fe5df42134252e8b7a8922f242/) | PriceConsumer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a9d21b46810f69a02ac2d61f4bf1963de82700d`](./contracts/ethereum-1/0x4a9d21b46810f69a02ac2d61f4bf1963de82700d/) | SimpleReadAccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x641b698ad1c6e503470520b0eecb472c0589dfe6`](./contracts/ethereum-1/0x641b698ad1c6e503470520b0eecb472c0589dfe6/) | SimpleWriteAccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x264bddfd9d93d48d759fbdb0670be1c6fdd50236`](./contracts/ethereum-1/0x264bddfd9d93d48d759fbdb0670be1c6fdd50236/) | ValidatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=24

Fork inheritance lineage and inherited audits are included when available.
