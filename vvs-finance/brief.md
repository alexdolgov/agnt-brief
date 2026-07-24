# Agentic Audit Brief: VVS Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: VVS Finance (`vvs-finance`)
- Website: [https://vvs.finance](https://vvs.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: cronos, ethereum
- Contract surface: 135 unique implementations (137 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $95,607,152.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for VVS Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across cronos, ethereum, polygon. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: multicall (1)
- Frameworks: openzeppelin (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 25 contracts are derived from known codebases. 25 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2e5dbaa86fca7cb73f060300c55b51c72f1b8554`, chain 1)
- UnnamedContract (`0x44d6bab919d54d760d29aaca64e0124bf665c93c`, chain 1)
- UnnamedContract (`0x54ff509102d51bf4e0d06184a051c1e917333254`, chain 1)
- UnnamedContract (`0x839e71613f9aa06e5701cf6de63e303616b0dde3`, chain 1)
- UnnamedContract (`0xf15133d086a2cf2a8a6ffa730fb02c8421eecc92`, chain 1)
- UnnamedContract (`0x025322f210e6a7546c3f080325edbe692b25c1ea`, chain 25)
- UnnamedContract (`0x145863eb42cf62847a6ca784e6416c1682b1b2ae`, chain 25)
- UnnamedContract (`0x2d03bece6747adc00e1a131bba1469c15fd11e03`, chain 25)
- UnnamedContract (`0x3b44b2a187a7b3824131f8db5a74194d0a42fc15`, chain 25)
- UnnamedContract (`0x3bc41521a7bf38b279fc5c3bd6c0dc290767b115`, chain 25)
- UnnamedContract (`0x40ab11c64e9ff5368f09343ac860dafa34e14c35`, chain 25)
- UnnamedContract (`0x5c7f8a570d578ed84e63fdfa7b1ee72deae1ae23`, chain 25)
- UnnamedContract (`0x5e954f5972ec6bfc7decd75779f10d848230345f`, chain 25)
- UnnamedContract (`0x66c0893e38b2a52e1dc442b2de75b802cca49566`, chain 25)
- UnnamedContract (`0x6a2d178585806de5a2e5e7f9acfce44680637284`, chain 25)
- UnnamedContract (`0x7fe4db9063b7dd7ba55313b9c258070bed2c143a`, chain 25)
- UnnamedContract (`0x88d6757c6303f94b11bfd23087383e871b938780`, chain 25)
- UnnamedContract (`0x8d13982c702fe7c6537529986df67dabeafc4c19`, chain 25)
- UnnamedContract (`0x96bee0b9c83f3110896ba24e711d15c3cd377612`, chain 25)
- UnnamedContract (`0x990e9683e6ba5079cdb235838856029a50dad84c`, chain 25)
- UnnamedContract (`0xa6ff77fc8e839679d4f7408e8988b564de1a2dcd`, chain 25)
- UnnamedContract (`0xdccd6455ae04b03d785f12196b492b18129564bc`, chain 25)
- SwapRouter (`0xe3df4f9b1454ec806a712932d62810ddc641b8cc`, chain 1)
- VVSV3Factory (`0x5e12f3bdeb62c6296fa457b1a69438d7fe8c6e2e`, chain 1)
- VVSV3Pool (`0x0ec1828fcb385471752014fe668102b661622b55`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/36 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 109 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 25 of 135 unique; 110 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 122
- Unique implementations: 135
- Raw deployments: 137
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CraftsmanV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0102e92552f2b12c27c80de3d95aacb557b81871`; ethereum `0xc2532db38be6438b1c9d36ba61338e13e26a042a` | ⚠️ Unaudited |
| MasterChefV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b347b245396f6527cc914a71f38dda629e7d851` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc320d64a2b79204106b5229b7cdceabf25c9bb9e` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1399ea2504dd716676fcce726c53e02f3d34d106` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002212b3692ffcde4733a35a9fb4b61d07960bc9` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x544c8e57258472c87bd525fa16c13726d1fb5d3c`; ethereum `0xb76229fc5644677556e84225206833c44d37bf62` | ⚠️ Unaudited |
| SwapRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261777 | `0xe3df4f9b1454ec806a712932d62810ddc641b8cc` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24bbfa1c7319d6da4e556fa77d6c530d87dfcf88` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfb51e64f880f2b8913941915d40e15c02fdd21f` | ⚠️ Unaudited |
| VVSV3Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261775 | `0x5e12f3bdeb62c6296fa457b1a69438d7fe8c6e2e` | ⚠️ Unaudited |
| VVSV3LmPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8b61ed6c01eb8e983e445fc7af0f3ea5ba075a4` | ⚠️ Unaudited |
| VVSV3Pool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261771 | `0x0ec1828fcb385471752014fe668102b661622b55` | ⚠️ Unaudited |
| VVSV3PoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c1afec311e71cb1fd55ea5fe76558731c5cde8a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (122)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x195ed73275a428fa56e31347091c083fbfadffdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1965a18042b01a2a7f99c09b57bd3239ade0e64d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261772 | `0x2e5dbaa86fca7cb73f060300c55b51c72f1b8554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f32b39023da7d6a6486a85d12b346eb9c2a0d19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261773 | `0x44d6bab919d54d760d29aaca64e0124bf665c93c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bf007ccf116875ce0de55554efd2876171898b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e388f2cbcca61c78533d7922f4e210448bf1b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261774 | `0x54ff509102d51bf4e0d06184a051c1e917333254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69f36225403fd5e886f5fbdaf076a4581bcaf084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d09ad9ca562291d9f42bb5b49bd0f038bfc0b19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ee2f5231c8dd252ee0ad4e36f952dd9d84f6d24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x809e130e10e787139c54e1d12d3d1971b7a675bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261776 | `0x839e71613f9aa06e5701cf6de63e303616b0dde3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99379be906c8d4474d4fb65c434ea0a3bc7fe014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a1846ec3d14abd3c34cd5f824e69ccb154083d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2e0ce8d56886e6a30732cad0a8aa26575cb8fb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc35e681980c124a6ddfffd24104a2330e9e3b7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc552b0cff5c5299af72bc8e97197f7948b73eb41` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261778 | `0xf15133d086a2cf2a8a6ffa730fb02c8421eecc92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261780 | `0x025322f210e6a7546c3f080325edbe692b25c1ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x0438a75009519f6284fa9e050e54d940302b2e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x079ab8c3eadaa899fb25c39637e76c047ebf3aa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x08d819bf919f5d43880c9358c0648ad535880e64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x0ec1828fcb385471752014fe668102b661622b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x0fbab8a90cac61b481530aad3a64fe17b322c25d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261783 | `0x145863eb42cf62847a6ca784e6416c1682b1b2ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x1803e360393a472bec6e1a688bdf7048d3076b1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x189291476338446c6e62c8a18ef22d3c80eb5f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x1f5578334ac735a6f736263347cd0446b6752cbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x23e61dcb21c235436b0188eabe9f447038aef917` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x28cc282e101789135ace6cd408231b651ce53b53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x2a560f2312cb56327ad5d65a03f1bfec10b62075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x2bb6ff4651a1f591995295c71ac2ac9f8b44a910` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261784 | `0x2d03bece6747adc00e1a131bba1469c15fd11e03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x2e5dbaa86fca7cb73f060300c55b51c72f1b8554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x2ea92065d2c2908bb3c7d6bb9318af4f8d735dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x2f12d47fe49b907d7a5df8159c1ce665187f15c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x34d1856ed8bbc20fa7b29776ad273fd8b22967be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x359ee6ea06d3aa0f9686b239f2eab7736eb1f451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x3b3ae49bdd1159909fe9c3e53f89adf27c97d829` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261785 | `0x3b44b2a187a7b3824131f8db5a74194d0a42fc15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261786 | `0x3bc41521a7bf38b279fc5c3bd6c0dc290767b115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x3da5b8e5907acfbe8a08b1f00394c97e07476f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x3daff925e2e392efe499610e56e3cc2053e85a86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261787 | `0x40ab11c64e9ff5368f09343ac860dafa34e14c35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x44d6bab919d54d760d29aaca64e0124bf665c93c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x46d57ec4dc6a10d1a50a5f67accbff715ce81fda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x47526aeda324c8c942b24d3ce8f6763667c52016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x495e4464867930331f5d260c93c740ba96d80a6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x4b377121d968bf7a62d51b96523d59506e7c2bf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x510788ed67d5834f82ab688859df8947bf0844b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x523ad524721957c31ca53512a4e50d82f53c5cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x542b3ba420581b69212f406e0643da75fa109b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x54ff509102d51bf4e0d06184a051c1e917333254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x5725cd344d3fa84b2e7ae7d8706208760f50956e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x57b975364140e4a8d1c96faa00225b855bab0e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x58bd242c1d2af2630318446ff3cf947925821de6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261788 | `0x5c7f8a570d578ed84e63fdfa7b1ee72deae1ae23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x5e0925b45e277df98c783cb44e198ce377cabea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x5e12f3bdeb62c6296fa457b1a69438d7fe8c6e2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261789 | `0x5e954f5972ec6bfc7decd75779f10d848230345f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x612ccef34639d6ae5c89d0fa2f8fdfde0b5275db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261790 | `0x66c0893e38b2a52e1dc442b2de75b802cca49566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x67255a0ab5add6d65045e6e855842ca8b8a2b625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x686c7ac3f635c67670b50b87ddd52518554aed2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x689e7ba5170001ac887965a5db1c9ce932c93462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x69fa837d8db815ba48d6fa394aac9241d9c2efe7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261791 | `0x6a2d178585806de5a2e5e7f9acfce44680637284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x6ae624714f221964aff3ab8d8276a7ec142a759f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x6c5e02304e5145bf9ccf6c8f32b4ad2c26d5c05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x6f72a3f6db6f486b50217f6e721f4388994b1fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x6fd3afbc99475b561ac334f95e7c627df6d37bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x71686f0c007eccfadb3aeb60bae83c5d87ec3077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x72efd454bbfeca458e909b99faacbc116880b54d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x736e7df5efad1cac1a312725598befbb27f8bb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x78082d9dee5fdd53df3b16292077ee2f6d31f7de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x7901f798ab39a7b37e077fa7cfb473e591f134ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x792df67276615d6e85e36497c4514b7b102af4a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x7aaf2e3afde06a7f9e686c1dde4fab14979384ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261792 | `0x7fe4db9063b7dd7ba55313b9c258070bed2c143a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x839e71613f9aa06e5701cf6de63e303616b0dde3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x870e81281e48a11c50e4c6cd895fef7a4e914314` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261794 | `0x88d6757c6303f94b11bfd23087383e871b938780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x89b330f8e31a1238b667080a0a6e4e5c4c15f7ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x8a513a09d9358e6ae46ff7c66b4d0e86769d04b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261795 | `0x8d13982c702fe7c6537529986df67dabeafc4c19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x8f9baccf9a130a755520cbabb20543adb3006f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x9284134f3d268cdf0ef2305c9f06767e913a7ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x94fd83482016bcc5fca5972a3635aa6524c3f557` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261798 | `0x96bee0b9c83f3110896ba24e711d15c3cd377612` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261799 | `0x990e9683e6ba5079cdb235838856029a50dad84c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x9b5a553f3e081999f0a6a3d582fd7dc49e12761b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x9d96706f31f520cb2404a3d2ad1a932b61a85acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0x9e5bd780dff875dd85848a65549791445ae25de0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261800 | `0xa6ff77fc8e839679d4f7408e8988b564de1a2dcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xa922530960a1f94828a7e132ec1ba95717ed1eab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xafa8485f2b01685955c4cea865138a15c4d8d93e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xafde8dfaa3ba4d16dcda4d894ea2c9ac2ff0152e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xb27807103177cca5ebbf43f5ca5b447d9bd8ce1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xb7b49d3c3f94c32c8b3e8f065ddb8d31edd13157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xb90d6e09075168281d47da6f0665ff4fd8f0ff6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xba5cc14d3d83ba0881b046d5487760cf669f6f4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xbc10bed82041a5d1abad43cc206656aafe9f84e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xc0961175f0cdd04110220c4effb74221055dd547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xc137b299d9cb9cbe047a4d6638766855b60b4602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xc43e32f44423ae7562c33ed8ca8394969bfffb29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xc4d86477dd71474f0f16c7bf7d2afd030b48c2fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xc9dff49302b8b6b99b1d677d19c061eec25fd94f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xd13ae926545360baf737e06d5122df407240100c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xd8576229e12ef8c9b60ac8a6f0bb089004815e2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xdb89a9d523c00c66eaa6d7f83d2f38f157acf31e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-261802 | `0xdccd6455ae04b03d785f12196b492b18129564bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xe3df4f9b1454ec806a712932d62810ddc641b8cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xe666910367f21d03d893540790c8483e899e1fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xe83ffad6c8cec615b7a8d7c96706f717e91784d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xeb554d77478f6116d7022287c71bc1e6d2d87603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xec212408f203613084478c2778a89932f0b5ca70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xf10af2e06908a8f234678974712b60de3063609b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xf15133d086a2cf2a8a6ffa730fb02c8421eecc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xf7cec263278f458d87ba55f1e6dcc52f46493321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | cronos | n/a | `0xfc07bf38408e4326f99dec96ba94f1e28af68842` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 16
- Live contracts: 0
- Unknown liveness contracts: 16
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=16

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f32b39023da7d6a6486a85d12b346eb9c2a0d19` | non_address_book | unknown | unknown | unverified | n/a | `0x2d70cb56705dc7f0b448ec8aadc475fbaee780e2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x809e130e10e787139c54e1d12d3d1971b7a675bf` | non_address_book | unknown | unknown | unverified | n/a | `0x2d70cb56705dc7f0b448ec8aadc475fbaee780e2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x195ed73275a428fa56e31347091c083fbfadffdf` | non_address_book | unknown | unknown | unverified | n/a | `0xc4af184dca9fd9da12d8c1390b63676b10870837` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1965a18042b01a2a7f99c09b57bd3239ade0e64d` | non_address_book | unknown | unknown | unverified | n/a | `0xc4af184dca9fd9da12d8c1390b63676b10870837` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4bf007ccf116875ce0de55554efd2876171898b0` | non_address_book | unknown | unknown | unverified | n/a | `0xc4af184dca9fd9da12d8c1390b63676b10870837` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x53e388f2cbcca61c78533d7922f4e210448bf1b9` | non_address_book | unknown | unknown | unverified | n/a | `0xc4af184dca9fd9da12d8c1390b63676b10870837` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69f36225403fd5e886f5fbdaf076a4581bcaf084` | non_address_book | unknown | unknown | unverified | n/a | `0xc4af184dca9fd9da12d8c1390b63676b10870837` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d09ad9ca562291d9f42bb5b49bd0f038bfc0b19` | non_address_book | unknown | unknown | unverified | n/a | `0xc4af184dca9fd9da12d8c1390b63676b10870837` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ee2f5231c8dd252ee0ad4e36f952dd9d84f6d24` | non_address_book | unknown | unknown | unverified | n/a | `0xc4af184dca9fd9da12d8c1390b63676b10870837` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99379be906c8d4474d4fb65c434ea0a3bc7fe014` | non_address_book | unknown | unknown | unverified | n/a | `0xc4af184dca9fd9da12d8c1390b63676b10870837` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9a1846ec3d14abd3c34cd5f824e69ccb154083d6` | non_address_book | unknown | unknown | unverified | n/a | `0xc4af184dca9fd9da12d8c1390b63676b10870837` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa2e0ce8d56886e6a30732cad0a8aa26575cb8fb1` | non_address_book | unknown | unknown | unverified | n/a | `0xc4af184dca9fd9da12d8c1390b63676b10870837` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb76229fc5644677556e84225206833c44d37bf62` | non_address_book | unknown | unknown | unverified | n/a | `0xc4af184dca9fd9da12d8c1390b63676b10870837` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2532db38be6438b1c9d36ba61338e13e26a042a` | non_address_book | unknown | unknown | unverified | n/a | `0xc4af184dca9fd9da12d8c1390b63676b10870837` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc35e681980c124a6ddfffd24104a2330e9e3b7bc` | non_address_book | unknown | unknown | unverified | n/a | `0xc4af184dca9fd9da12d8c1390b63676b10870837` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc552b0cff5c5299af72bc8e97197f7948b73eb41` | non_address_book | unknown | unknown | unverified | n/a | `0xc4af184dca9fd9da12d8c1390b63676b10870837` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SlowMist Audit Report - VVS_launch.pdf](https://4009539857-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FA36NpwoRiI5BHVPrATSD%2Fuploads%2F2sne8oEBgTEVLt9xBjwA%2FSlowMist%20Audit%20Report%20-%20VVS_launch.pdf) | SlowMist | Audit | 2021-11 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 11 | high |
| [SlowMist Audit Report - VVS Multi Reward Farming.pdf](https://4009539857-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FA36NpwoRiI5BHVPrATSD%2Fuploads%2FcXEpjCBiuwdUNplkROLh%2FSlowMist%20Audit%20Report%20-%20VVS%20Multi%20Reward%20Farming.pdf) | SlowMist | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [SlowMist Audit Report - VVSBar.pdf](https://4009539857-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FA36NpwoRiI5BHVPrATSD%2Fuploads%2FhZvyQzqrTf3cnj6MNX5j%2FSlowMist%20Audit%20Report%20-%20VVSBar.pdf) | SlowMist | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [SlowMist Audit Report - VVSMaker.pdf](https://4009539857-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FA36NpwoRiI5BHVPrATSD%2Fuploads%2FGJLQ4h5dYugdpGDHCWHe%2FSlowMist%20Audit%20Report%20-%20VVSMaker.pdf) | SlowMist | Audit | 2022-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [SlowMist Audit Report - VVSBoost_Mar9_2022.pdf](https://4009539857-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FA36NpwoRiI5BHVPrATSD%2Fuploads%2Fze9s8pd0wPBzcthlwR2i%2FSlowMist%20Audit%20Report%20-%20VVSBoost_Mar9_2022.pdf) | SlowMist | Audit | 2022-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [28395] SlowMist Audit Report - VVS_launch.pdf — matched: Contracts extracted from visibility tables and vulnerability code locations. Audit date from audit result section: 2021.09.24 - 2021.11.05, using end date.
- [28396] SlowMist Audit Report - VVS Multi Reward Farming.pdf — no match: Two contracts in scope: CraftsmanV2 and Rewarder, with file paths and hashes provided. Audit date from section 5: 2022.02.15 - 2022.02.17, using end date.
- [28398] SlowMist Audit Report - VVSBar.pdf — no match: Only one contract VVSBar is in scope, as per the audit report title and source code.
- [28399] SlowMist Audit Report - VVSMaker.pdf — matched: Only one contract, VVSMaker, is in scope. The audit report is for the VVSMaker contract. The date is explicitly given as Audit Date: 2022.03.22.
- [28400] SlowMist Audit Report - VVSBoost_Mar9_2022.pdf — matched: Audit report for VVSBoost project. Contracts in scope: VVSBoost and DepositToken. Audit date from audit result table: 2022.03.07 - 2022.03.08, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SlowMist Audit Report - VVS_launch.pdf | Craftsman | own contract | 0xdccd64… (selected) `0xdccd6455ae04b03d785f12196b492b18129564bc` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - VVS_launch.pdf | VVSToken | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | VVSInitMintable | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | Workbench | own contract | 0x6a2d17… (selected) `0x6a2d178585806de5a2e5e7f9acfce44680637284` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - VVS_launch.pdf | IGO | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | Timelock | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | VVSVault | own contract | 0xa6ff77… (selected) `0xa6ff77fc8e839679d4f7408e8988b564de1a2dcd` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - VVS_launch.pdf | WCRO | own contract | 0x5c7f8a… (selected) `0x5c7f8a570d578ed84e63fdfa7b1ee72deae1ae23` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - VVS_launch.pdf | VVSVesting | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | Migrations | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | VVSERC20 | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | VVSFactory | own contract | 0x3b44b2… (selected) `0x3b44b2a187a7b3824131f8db5a74194d0a42fc15` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - VVS_launch.pdf | VVSPair | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | VVSMigrator | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | VVSRouter | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report - VVS_launch.pdf | VVSRouter01 | unmatched — not counted | — | listed in visibility table | no |
| SlowMist Audit Report - VVS Multi Reward Farming.pdf | CraftsmanV2 | unmatched — not counted | — | listed in scope section 3.1 | no |
| SlowMist Audit Report - VVS Multi Reward Farming.pdf | Rewarder | unmatched — not counted | — | listed in scope section 3.1 | no |
| SlowMist Audit Report - VVSBar.pdf | VVSBar | unmatched — not counted | — | listed in scope as VVSBar contract | no |
| SlowMist Audit Report - VVSMaker.pdf | VVSMaker | own contract | 0x3bc415… (selected) `0x3bc41521a7bf38b279fc5c3bd6c0dc290767b115` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - VVSBoost_Mar9_2022.pdf | VVSBoost | own contract | 0x990e96… (selected) `0x990e9683e6ba5079cdb235838856029a50dad84c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - VVSBoost_Mar9_2022.pdf | DepositToken | unmatched — not counted | — | mentioned in code overview | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xe3df4f9b1454ec806a712932d62810ddc641b8cc` | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5e12f3bdeb62c6296fa457b1a69438d7fe8c6e2e` | VVSV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ec1828fcb385471752014fe668102b661622b55` | VVSV3Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 122 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=7

Zero-match audit list:

- [28396] SlowMist Audit Report - VVS Multi Reward Farming.pdf
- [28398] SlowMist Audit Report - VVSBar.pdf

Fork inheritance lineage and inherited audits are included when available.
