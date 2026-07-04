# Agentic Audit Brief: Doma DEX V3

## Project Overview

- Project: Doma DEX V3 (`doma-dex-v3`)
- Website: [https://app.doma.xyz/swap](https://app.doma.xyz/swap)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.194Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: avalanche, base, ethereum
- Contract surface: 13 unique implementations (13 raw deployments)
- DeFi Llama TVL: $650,703.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 12 project-authored contract(s) across 3 chain(s); 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (accesscontrolownable, erc721c). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (10 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 10 of 13 unique (rest dead/inactive/uninitialized)
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
| DiamondCutFacet | unknown | base | n/a | [`0x05ba09...93d844`](./contracts/base-8453/0x05ba09e289dcf2f237d991390b47b66b0593d844/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | base | n/a | [`0x061d04...6321ba`](./contracts/base-8453/0x061d043d135dd61fa561abfd9f81ee78446321ba/) | ⚠️ Unaudited |
| DomaTreasury | unknown | base | n/a | [`0x1c397b...f16cbd`](./contracts/base-8453/0x1c397b5f402378bf5408deb5964bc7449bf16cbd/) | ⚠️ Unaudited |
| ERC7786GatewaySource | unknown | base | n/a | [`0x5bb717...ae37d0`](./contracts/base-8453/0x5bb717ac4a69fcc7f2d432aeb0c70972d7ae37d0/) | ⚠️ Unaudited |
| Marketplace | unknown | base | n/a | [`0x01471f...5f0714`](./contracts/base-8453/0x01471f7b972602d33b5430d9fc391d78f25f0714/) | ⚠️ Unaudited |
| OwnershipFacet | unknown | base | n/a | [`0x0d2e6d...2fdd39`](./contracts/base-8453/0x0d2e6df1f5f85419c9e3ca13b0bec21cff2fdd39/) | ⚠️ Unaudited |
| OwnershipToken | unknown | base | n/a | [`0x0ec30c...e38156`](./contracts/base-8453/0x0ec30c28dadde2bae8862160bc2151d852e38156/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| ProxyDomaRecord | unknown | avalanche | n/a | [`0xd00000...20a3e2`](./contracts/avalanche-43114/0xd0000000000067cb44ae7b6ac3ab5764de20a3e2/) | ⚠️ Unaudited |
| ProxyDomaRecordAdminFacet | unknown | base | n/a | [`0x11357f...52a468`](./contracts/base-8453/0x11357f8344e0608ff4f9e19fc630cf945d52a468/) | ⚠️ Unaudited |
| ProxyDomaRecordCrossChainFacet | unknown | base | n/a | [`0x496c4b...1c124a`](./contracts/base-8453/0x496c4b575d3b4baef5f09da103b336aa581c124a/) | ⚠️ Unaudited |
| ProxyDomaRecordUserFacet | unknown | base | n/a | [`0x30d053...c1ba3b`](./contracts/base-8453/0x30d053f8ca653644562ac64782c9051784c1ba3b/) | ⚠️ Unaudited |
| ProxyDomaRecordViewFacet | unknown | base | n/a | [`0xd0c2a9...4dec76`](./contracts/base-8453/0xd0c2a9c302594e2a570a03d3e2b813b1274dec76/) | ⚠️ Unaudited |

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
| base | [`0x05ba09...93d844`](./contracts/base-8453/0x05ba09e289dcf2f237d991390b47b66b0593d844/) | DiamondCutFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x061d04...6321ba`](./contracts/base-8453/0x061d043d135dd61fa561abfd9f81ee78446321ba/) | DiamondLoupeFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1c397b...f16cbd`](./contracts/base-8453/0x1c397b5f402378bf5408deb5964bc7449bf16cbd/) | DomaTreasury | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5bb717...ae37d0`](./contracts/base-8453/0x5bb717ac4a69fcc7f2d432aeb0c70972d7ae37d0/) | ERC7786GatewaySource | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x01471f...5f0714`](./contracts/base-8453/0x01471f7b972602d33b5430d9fc391d78f25f0714/) | Marketplace | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d2e6d...2fdd39`](./contracts/base-8453/0x0d2e6df1f5f85419c9e3ca13b0bec21cff2fdd39/) | OwnershipFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ec30c...e38156`](./contracts/base-8453/0x0ec30c28dadde2bae8862160bc2151d852e38156/) | OwnershipToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd00000...20a3e2`](./contracts/avalanche-43114/0xd0000000000067cb44ae7b6ac3ab5764de20a3e2/) | ProxyDomaRecord | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x11357f...52a468`](./contracts/base-8453/0x11357f8344e0608ff4f9e19fc630cf945d52a468/) | ProxyDomaRecordAdminFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x496c4b...1c124a`](./contracts/base-8453/0x496c4b575d3b4baef5f09da103b336aa581c124a/) | ProxyDomaRecordCrossChainFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x30d053...c1ba3b`](./contracts/base-8453/0x30d053f8ca653644562ac64782c9051784c1ba3b/) | ProxyDomaRecordUserFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd0c2a9...4dec76`](./contracts/base-8453/0xd0c2a9c302594e2a570a03d3e2b813b1274dec76/) | ProxyDomaRecordViewFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
