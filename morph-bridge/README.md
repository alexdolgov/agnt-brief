# Agentic Audit Brief: Morph Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Morph Bridge (`morph-bridge`)
- Website: [https://bridge.morphl2.io/](https://bridge.morphl2.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: chain-2910, ethereum, hoodi, morph
- Contract surface: 99 unique implementations (99 raw deployments)
- Coverage basis: 0/5 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $12,938,553.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Morph Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across chain-2910, ethereum, hoodi, morph. Structural roles: 3 core, 2 infra. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (3), infra (2)
- Contract kinds: contract (5)
- Detected standards: erc1967proxy (5)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6c5c4e930b7b53f482b2f2ed5f37cf78c15a9388`, chain 1)
- UnnamedContract (`0x5300000000000000000000000000000000000006`, chain 2818)
- UnnamedContract (`0x5300000000000000000000000000000000000008`, chain 2818)
- UnnamedContract (`0x5300000000000000000000000000000000000010`, chain 2818)
- UnnamedContract (`0x5300000000000000000000000000000000000016`, chain 2818)
- UnnamedContract (`0x5300000000000000000000000000000000000018`, chain 2818)
- UnnamedContract (`0x5300000000000000000000000000000000000020`, chain 2818)
- UnnamedContract (`0xc5e44e2ffe9523809146ed17d62bb382eccf426b`, chain 2818)
- TransparentUpgradeableProxy (`0x1c1ffb5828c3a48b54e8910f1c75256a498ade68`, chain 1)
- TransparentUpgradeableProxy (`0x2c8314f5aada5d7a9d32eefebfc43accabe1b289`, chain 1)
- TransparentUpgradeableProxy (`0x44c28f61a5c2dd24fc71d7df8e85e18af4ab2bd8`, chain 1)
- TransparentUpgradeableProxy (`0x788890ba6f105cca373c4ff01055cd34de01877f`, chain 1)
- TransparentUpgradeableProxy (`0xa534badd09b4c62b7b1c32c41df310aa17b52ef1`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/5 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 12 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 74 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 13 of 99 unique; 86 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 88
- Unique implementations: 99
- Raw deployments: 99
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

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xdc71366effa760804dcfc3edf87fa2a6f1623304` | ⚠️ Unaudited |
| L1CustomERC20Gateway | token | project_anchor | own_supporting | 1 | ethereum | unit-389636 | `0xa534badd09b4c62b7b1c32c41df310aa17b52ef1` | ⚠️ Unaudited |
| L1ETHGateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389634 | `0x1c1ffb5828c3a48b54e8910f1c75256a498ade68` | ⚠️ Unaudited |
| L1GatewayRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7497756ada7e656ae9f00781af49fc0fd08f8a8a` | ⚠️ Unaudited |
| L1Staking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0dc417f8af88388737c5053ff73f345f080543f7` | ⚠️ Unaudited |
| L1StandardERC20Gateway | token | project_anchor | own_supporting | 1 | ethereum | unit-389635 | `0x44c28f61a5c2dd24fc71d7df8e85e18af4ab2bd8` | ⚠️ Unaudited |
| L1USDCGateway | unknown | project_anchor | own_supporting | 1 | ethereum | unit-389637 | `0x2c8314f5aada5d7a9d32eefebfc43accabe1b289` | ⚠️ Unaudited |
| L1WETHGateway | token | project_anchor | own_supporting | 1 | ethereum | unit-389633 | `0x788890ba6f105cca373c4ff01055cd34de01877f` | ⚠️ Unaudited |
| Rollup | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x759894ced0e6af42c26668076ffa84d02e3cef60` | ⚠️ Unaudited |
| TimelockControllerUpgradeable | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x542675e90e269f20ecbb9e0095d4751ac155b530` | ⚠️ Unaudited |
| ZkEvmVerifierV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9f24400816c4cc1a3cbb9b851c9b0bab63ad692` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (88)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389613 | `0x6c5c4e930b7b53f482b2f2ed5f37cf78c15a9388` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | morph | unit-389614 | `0x5300000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | morph | unit-389615 | `0x5300000000000000000000000000000000000008` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | morph | unit-389616 | `0x5300000000000000000000000000000000000010` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | morph | unit-389617 | `0x5300000000000000000000000000000000000016` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | morph | unit-389618 | `0x5300000000000000000000000000000000000018` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | morph | unit-389619 | `0x5300000000000000000000000000000000000020` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | morph | unit-389620 | `0xc5e44e2ffe9523809146ed17d62bb382eccf426b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-2910 | unit-389621 | `0x5300000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-2910 | unit-389622 | `0x5300000000000000000000000000000000000008` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-2910 | unit-389623 | `0x5300000000000000000000000000000000000010` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-2910 | unit-389624 | `0x5300000000000000000000000000000000000016` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-2910 | unit-389625 | `0x5de20686680ed9bbae10cafbc2fddbca3fd61fee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-2910 | unit-389626 | `0xc5e26e7091333cc3b200f2dc42e17d1f7e7630bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x0244ed4abc8de276176ee52c4ca77d43061849b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x06ee3b48606051607791d6a5b19e6802d5bb11ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x078e0d344aaeb5a4ef68cb68a2924b32332104b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x1b5e433f21c6c48fdf01b7e721df454240a78f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x205d0174b4f6e827f6eb8e221f043fc0384d844a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x2093dbdce689898afd8e7b90b292974fd27db856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x236d27a394541ede43eaf4fb20304d42e8ee684d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x237ff8732881b907ec8853b05bbd0b946226bd83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x24e901a0ac863745cb36997d41acc99b20897c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x26e3e1e54b190fb3f8b022a5311814db6e0166e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-389627 | `0x2d14dcfa6c0ecec2b9bbe8c2ee0e422d0a3d60ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x3453b1669b35fe195cfc3fcfadca732fa3786c46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x34df9a71bebc04d2bfc8b558efce96f430afa06e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x34fc2636179b3599441b8eb40f6b6a0743250b26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x35af668dcf4e832148cdf15873f152c8ee68d72d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x3879ec8b6e427a2d67c05fb7319d40542d64abe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x39a60eb564ee4e949b13c72c8a3a09908f80a8d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-389628 | `0x4061a8dc9e41f219db4bde7eb3b253165e3de689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x484c443ccb3a27a15e7bb6f6539e87d89620af43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x4a3d24e400281d80652f1a0dcc6383a70c0b5eb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x4a6d566a55b5dad41f133571ad53cf52b00a7351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x57e0e6dde89dc52c01fe785774271504b1e04664` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x5e7bdd2fe6797e4667bbbd296dc40f8ae295d67e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x6092f224f7f06bc2e5df62edb776e7d4d8934f50` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-389629 | `0x625849788c16315680f34ee72a5e9961cd15d581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x696f81107eb44cd8a083d49ff34dc21c4d8e0e39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x698597c2a91c23b1fb3f025433572687389e0294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x6ebf85f0f797bec29d5c670a8003740fe825d2dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x6f8676514ad24a7cc99b057d1fde11379037abde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x72a266855171a595942b7f079768caad0092a20e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x73dbc3bca5fe6514e8cbfda5aa25284c475167ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x77a77322614c943781f474e4be7aea207b8c306e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x790204439115bf10d4ee46a1bcae8938938cc115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x7db888453a1b4a44b2f27ad445d76b2c8d315c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x7eaec4edae6039f42b32853f7e91f00de35e99b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x7fe68958547d14d1b4cd9689c4bce3e654734dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x80302bb515f70484b07bb357c94d666b0cb24e8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-389630 | `0x80a9f200e457169ff560dc8b4fb2a138bba58faf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x82bf85401ef8a91e22bbedf4818ab0f3c8fb99e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x8314e1ca85ab00811b03050af92ea52efc08c4fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x83e77812f082eff8570388142f8cb0d3e4c85836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x847e99993d0b516d39d42be0f94f474d4f8e49ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x87ec74c8f0eade5fe7c587f69607c38b54dc416f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x8fe3799d00d1b1569fbf3266587ca3c321048f7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x90ce0d4cc72b375ac9fabce1a0a487f35d517c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x93f0819dc2138aa6ebaab862cdeca3c0852efa7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x9abcbf15554b019d69d092f049652c8770005237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x9b43e90d75f4a8ae2f7f8a7cb67e8f4a0b75646f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0x9cd5ab3c5c178cb1f8a5c5bf908bb2fffdbb8177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xa24cde0da98d15a2c257c38e5324c1d76240039d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xa41fecf33eb96c673e2fc20cb9669f7605109572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xa67f0c7f89a0b5830de7abf90b88a0f63811b0a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xa9eec4fcd0ddfb1ab62fd1b6719b71a35ff36481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xac855bf3b8db9074fb5160053e846a28c22fedac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xaca79199b2adc068bb5670c16d856aea706d5ed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xb071de98d3310d399e370ef85c1d53a14097b0c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xb11ab83692dc475b48c17155733ad7209e913f30` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-389631 | `0xb57ea443b92242895fafec4e02bb0a59b0ddabe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xc1b9c2145adef1a2352240d074a852e67b385bf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xc40c79c0cbdbc70239d0d848895ffd9d2b6362af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xc9c2117432495cfc34e10b1a5335d4ad63bc1578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xca2c51022cfba2649481700aad27809d808ca03a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xcf95d625a4af1dc4746c547dbe420c9a11767aed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xd2588bce05028ceae0d0a6dde7f4f990bbb134ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xd76fa9cdde362182a4e9b6961e48465e87d535f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xd7f39d837f4790b215ba67e0ab63665912648dbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xe18da85b25870b4ec14173ac1a56e763d7e30a47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xe235791f6eed4fce42b7d1c9b4cd4d53458fdbe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xe253850969da0c96cfdb9a33f9b7c125674c4d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xea5f1e41d52fa04336044a6da83577a6b39bc749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xf1c28a2017093d33ef5d3373ea43f1036342db36` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-389632 | `0xf4f8e700573c74dd69d4437a7289933a68e96dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xfa2c11b76355344b180c9a0b89855381c9a2966a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hoodi | n/a | `0xffefdad6b2dd3f220768bd8ad846eeab3b619d32` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 68
- Live contracts: 0
- Unknown liveness contracts: 68
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=68

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0244ed4abc8de276176ee52c4ca77d43061849b7` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x06ee3b48606051607791d6a5b19e6802d5bb11ce` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x078e0d344aaeb5a4ef68cb68a2924b32332104b7` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x1b5e433f21c6c48fdf01b7e721df454240a78f86` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x205d0174b4f6e827f6eb8e221f043fc0384d844a` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x2093dbdce689898afd8e7b90b292974fd27db856` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x236d27a394541ede43eaf4fb20304d42e8ee684d` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x237ff8732881b907ec8853b05bbd0b946226bd83` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x24e901a0ac863745cb36997d41acc99b20897c88` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x26e3e1e54b190fb3f8b022a5311814db6e0166e7` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x3453b1669b35fe195cfc3fcfadca732fa3786c46` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x34df9a71bebc04d2bfc8b558efce96f430afa06e` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x34fc2636179b3599441b8eb40f6b6a0743250b26` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x35af668dcf4e832148cdf15873f152c8ee68d72d` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x3879ec8b6e427a2d67c05fb7319d40542d64abe0` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x39a60eb564ee4e949b13c72c8a3a09908f80a8d9` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x484c443ccb3a27a15e7bb6f6539e87d89620af43` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x4a3d24e400281d80652f1a0dcc6383a70c0b5eb3` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x4a6d566a55b5dad41f133571ad53cf52b00a7351` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x57e0e6dde89dc52c01fe785774271504b1e04664` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x5e7bdd2fe6797e4667bbbd296dc40f8ae295d67e` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x6092f224f7f06bc2e5df62edb776e7d4d8934f50` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x696f81107eb44cd8a083d49ff34dc21c4d8e0e39` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x698597c2a91c23b1fb3f025433572687389e0294` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x6ebf85f0f797bec29d5c670a8003740fe825d2dd` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x6f8676514ad24a7cc99b057d1fde11379037abde` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x72a266855171a595942b7f079768caad0092a20e` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x73dbc3bca5fe6514e8cbfda5aa25284c475167ef` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x77a77322614c943781f474e4be7aea207b8c306e` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x790204439115bf10d4ee46a1bcae8938938cc115` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x7db888453a1b4a44b2f27ad445d76b2c8d315c41` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x7eaec4edae6039f42b32853f7e91f00de35e99b1` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x7fe68958547d14d1b4cd9689c4bce3e654734dca` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x80302bb515f70484b07bb357c94d666b0cb24e8d` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x82bf85401ef8a91e22bbedf4818ab0f3c8fb99e3` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x8314e1ca85ab00811b03050af92ea52efc08c4fd` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x83e77812f082eff8570388142f8cb0d3e4c85836` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x847e99993d0b516d39d42be0f94f474d4f8e49ef` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x87ec74c8f0eade5fe7c587f69607c38b54dc416f` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x8fe3799d00d1b1569fbf3266587ca3c321048f7e` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x90ce0d4cc72b375ac9fabce1a0a487f35d517c44` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x93f0819dc2138aa6ebaab862cdeca3c0852efa7a` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x9abcbf15554b019d69d092f049652c8770005237` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x9b43e90d75f4a8ae2f7f8a7cb67e8f4a0b75646f` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0x9cd5ab3c5c178cb1f8a5c5bf908bb2fffdbb8177` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xa24cde0da98d15a2c257c38e5324c1d76240039d` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xa41fecf33eb96c673e2fc20cb9669f7605109572` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xa67f0c7f89a0b5830de7abf90b88a0f63811b0a8` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xa9eec4fcd0ddfb1ab62fd1b6719b71a35ff36481` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xac855bf3b8db9074fb5160053e846a28c22fedac` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xaca79199b2adc068bb5670c16d856aea706d5ed0` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xb071de98d3310d399e370ef85c1d53a14097b0c4` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xb11ab83692dc475b48c17155733ad7209e913f30` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xc1b9c2145adef1a2352240d074a852e67b385bf3` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xc40c79c0cbdbc70239d0d848895ffd9d2b6362af` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xc9c2117432495cfc34e10b1a5335d4ad63bc1578` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xca2c51022cfba2649481700aad27809d808ca03a` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xcf95d625a4af1dc4746c547dbe420c9a11767aed` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xd2588bce05028ceae0d0a6dde7f4f990bbb134ac` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xd76fa9cdde362182a4e9b6961e48465e87d535f6` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xd7f39d837f4790b215ba67e0ab63665912648dbe` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xe18da85b25870b4ec14173ac1a56e763d7e30a47` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xe235791f6eed4fce42b7d1c9b4cd4d53458fdbe8` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xe253850969da0c96cfdb9a33f9b7c125674c4d8c` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xea5f1e41d52fa04336044a6da83577a6b39bc749` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xf1c28a2017093d33ef5d3373ea43f1036342db36` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xfa2c11b76355344b180c9a0b89855381c9a2966a` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |
| unverified unclassified | UnnamedContract<br>`0xffefdad6b2dd3f220768bd8ad846eeab3b619d32` | non_address_book | unknown | unknown | unverified | n/a | `0x291046850908e59b33b1758045882e9fdcfcbd1e` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xa534badd09b4c62b7b1c32c41df310aa17b52ef1` | L1CustomERC20Gateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1c1ffb5828c3a48b54e8910f1c75256a498ade68` | L1ETHGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x44c28f61a5c2dd24fc71d7df8e85e18af4ab2bd8` | L1StandardERC20Gateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2c8314f5aada5d7a9d32eefebfc43accabe1b289` | L1USDCGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x788890ba6f105cca373c4ff01055cd34de01877f` | L1WETHGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 88 |

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
