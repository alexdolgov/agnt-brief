# Agentic Audit Brief: VVS Finance

## Project Overview

- Project: VVS Finance (`vvs-finance`)
- Website: [https://vvs.finance](https://vvs.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.090Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 13 unique implementations (13 raw deployments)
- DeFi Llama TVL: $95,607,152.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 12 project-authored contract(s) across 1 chain(s); 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 6 common project-authored base contract(s) (peripheryimmutablestate, multicall, blocktimestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/13 (0.0%)
- Deployed-live implementations: 13 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 13
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

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CraftsmanV2 | unknown | ethereum | n/a | [`0x0102e92552f2b12c27c80de3d95aacb557b81871`](./contracts/ethereum-1/0x0102e92552f2b12c27c80de3d95aacb557b81871/) | ⚠️ Unaudited |
| MasterChefV3 | unknown | ethereum | n/a | [`0x6b347b245396f6527cc914a71f38dda629e7d851`](./contracts/ethereum-1/0x6b347b245396f6527cc914a71f38dda629e7d851/) | ⚠️ Unaudited |
| NFTDescriptor | unknown | ethereum | n/a | [`0xc320d64a2b79204106b5229b7cdceabf25c9bb9e`](./contracts/ethereum-1/0xc320d64a2b79204106b5229b7cdceabf25c9bb9e/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | ethereum | n/a | [`0x1399ea2504dd716676fcce726c53e02f3d34d106`](./contracts/ethereum-1/0x1399ea2504dd716676fcce726c53e02f3d34d106/) | ⚠️ Unaudited |
| QuoterV2 | unknown | ethereum | n/a | [`0x002212b3692ffcde4733a35a9fb4b61d07960bc9`](./contracts/ethereum-1/0x002212b3692ffcde4733a35a9fb4b61d07960bc9/) | ⚠️ Unaudited |
| Rewarder | unknown | ethereum | n/a | [`0x544c8e57258472c87bd525fa16c13726d1fb5d3c`](./contracts/ethereum-1/0x544c8e57258472c87bd525fa16c13726d1fb5d3c/) | ⚠️ Unaudited |
| SwapRouter | unknown | ethereum | n/a | [`0xe3df4f9b1454ec806a712932d62810ddc641b8cc`](./contracts/ethereum-1/0xe3df4f9b1454ec806a712932d62810ddc641b8cc/) | ⚠️ Unaudited |
| TickLens | unknown | ethereum | n/a | [`0x24bbfa1c7319d6da4e556fa77d6c530d87dfcf88`](./contracts/ethereum-1/0x24bbfa1c7319d6da4e556fa77d6c530d87dfcf88/) | ⚠️ Unaudited |
| V3Migrator | unknown | ethereum | n/a | [`0xdfb51e64f880f2b8913941915d40e15c02fdd21f`](./contracts/ethereum-1/0xdfb51e64f880f2b8913941915d40e15c02fdd21f/) | ⚠️ Unaudited |
| VVSV3Factory | unknown | ethereum | n/a | [`0x5e12f3bdeb62c6296fa457b1a69438d7fe8c6e2e`](./contracts/ethereum-1/0x5e12f3bdeb62c6296fa457b1a69438d7fe8c6e2e/) | ⚠️ Unaudited |
| VVSV3LmPoolDeployer | unknown | ethereum | n/a | [`0xb8b61ed6c01eb8e983e445fc7af0f3ea5ba075a4`](./contracts/ethereum-1/0xb8b61ed6c01eb8e983e445fc7af0f3ea5ba075a4/) | ⚠️ Unaudited |
| VVSV3Pool | unknown | ethereum | n/a | [`0x0ec1828fcb385471752014fe668102b661622b55`](./contracts/ethereum-1/0x0ec1828fcb385471752014fe668102b661622b55/) | ⚠️ Unaudited |
| VVSV3PoolDeployer | unknown | ethereum | n/a | [`0x3c1afec311e71cb1fd55ea5fe76558731c5cde8a`](./contracts/ethereum-1/0x3c1afec311e71cb1fd55ea5fe76558731c5cde8a/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0102e92552f2b12c27c80de3d95aacb557b81871`](./contracts/ethereum-1/0x0102e92552f2b12c27c80de3d95aacb557b81871/) | CraftsmanV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b347b245396f6527cc914a71f38dda629e7d851`](./contracts/ethereum-1/0x6b347b245396f6527cc914a71f38dda629e7d851/) | MasterChefV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc320d64a2b79204106b5229b7cdceabf25c9bb9e`](./contracts/ethereum-1/0xc320d64a2b79204106b5229b7cdceabf25c9bb9e/) | NFTDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1399ea2504dd716676fcce726c53e02f3d34d106`](./contracts/ethereum-1/0x1399ea2504dd716676fcce726c53e02f3d34d106/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x002212b3692ffcde4733a35a9fb4b61d07960bc9`](./contracts/ethereum-1/0x002212b3692ffcde4733a35a9fb4b61d07960bc9/) | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x544c8e57258472c87bd525fa16c13726d1fb5d3c`](./contracts/ethereum-1/0x544c8e57258472c87bd525fa16c13726d1fb5d3c/) | Rewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3df4f9b1454ec806a712932d62810ddc641b8cc`](./contracts/ethereum-1/0xe3df4f9b1454ec806a712932d62810ddc641b8cc/) | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24bbfa1c7319d6da4e556fa77d6c530d87dfcf88`](./contracts/ethereum-1/0x24bbfa1c7319d6da4e556fa77d6c530d87dfcf88/) | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfb51e64f880f2b8913941915d40e15c02fdd21f`](./contracts/ethereum-1/0xdfb51e64f880f2b8913941915d40e15c02fdd21f/) | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e12f3bdeb62c6296fa457b1a69438d7fe8c6e2e`](./contracts/ethereum-1/0x5e12f3bdeb62c6296fa457b1a69438d7fe8c6e2e/) | VVSV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8b61ed6c01eb8e983e445fc7af0f3ea5ba075a4`](./contracts/ethereum-1/0xb8b61ed6c01eb8e983e445fc7af0f3ea5ba075a4/) | VVSV3LmPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec1828fcb385471752014fe668102b661622b55`](./contracts/ethereum-1/0x0ec1828fcb385471752014fe668102b661622b55/) | VVSV3Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c1afec311e71cb1fd55ea5fe76558731c5cde8a`](./contracts/ethereum-1/0x3c1afec311e71cb1fd55ea5fe76558731c5cde8a/) | VVSV3PoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
