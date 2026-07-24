# Agentic Audit Brief: 8lends

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: 8lends (`8lends`)
- Website: [https://app.8lends.io](https://app.8lends.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 81 unique implementations (81 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $20,294,418.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for 8lends in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ERC1967Proxy (`0xd48f1d3eec18d8b71ddf1575bae160030878d705`, chain 8453)
- Token (`0x55f9c8992fc4abce5aca585bf8f18284a2379d4c`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 79 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 2 of 81 unique; 79 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 79
- Unique implementations: 81
- Raw deployments: 81
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | base | unit-378396 | `0xd48f1d3eec18d8b71ddf1575bae160030878d705` | ⚠️ Unaudited |
| Token | unknown | project_anchor | own_supporting | 0 | base | unit-378394 | `0x55f9c8992fc4abce5aca585bf8f18284a2379d4c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (79)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x00c7d9ae73702031b12201279d1a7996eb87fd07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x01d0d8c586fc5abcc278355990609def9681f025` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0286ca19b4527b66dd7ced62a3814ff70f0d99b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10a44b1e606003c73b0a880020dc6123c14547e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x14190df8ee49f9493ae0eefbf070358aa4bf355e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x14ccef85978484eefcc95894cfebd0eb1611f6b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x158db98a59f3af4f2958cf01bc0d2417e3dac103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1674cbc357717568af53df5d82af8dda2d623ccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17eeab516437298cd7d74316e6236207cb9086b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18d18c76e91dbd95ca06b42e9a4515c837a68b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x18d88fcec3a48b7e3d748f001e2fc6f2eb85e6ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c7a5302257babfb60ea9f0e4840f38aaed2e3ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d084b5bdb7411cbef4d8eabc5991bbc469bc424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e97aa699ce704bb2664d6378ea9a1030a9d3614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2293f5994c73b64932228674726324f375a32c77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x249908b950675954ee6726d4eb6b09d37df75d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2518634830f7aea496427700fdb715ed0abc2a05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x279299ba5b84421f6547d2cb2a45aabbe0523e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x287d9970b545edca7800f441b0c4ecad578ba19f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b185736f0d1646adcc15e0807ee4e0227634324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2d6798ae1ca66b1b2e43adf64ddbc88730bc5202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x322e9013c0d60dbb9bdc588e2e77ff90a862f36d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b98bec2889d72286c26f583bdb2c6a4f268959e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d8d5273d4e490a518da33b61798656743d8b921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e7fa4be80eec9549e26d51adb74365684f8eb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3ee7bf8d66bf0828470e1839eca2148aeddd0318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x435782af7b8b12d71cb8feca159d65d96459f042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4643c0801c3a6e3bb7801672f6a66e65cedae742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c1dc265ef71fe05f747e3315e3af2a28513a440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f944c6ea2662eeb776a4ba6bb99ebf07c7afb64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c372241dcb9ee6416ee92baff3f4623eba491c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5eb703504973529b96784fe789029efa7075dba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70a5fd8efef3e6323bf61c59f337926697a71ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x749a03fc6cb07c1398d7541105d61b1062fa43fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x753cc82879076c1689cc327f5797b83fce8604b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78f6a796de8d5a26ab5dc3a3acfdfd4d6bc978ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7a511c9edac6fe4a4860ad051312605e2cff932c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x833b39c6f560ebef96e0c602c2ce2645b2206a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8369252341c8606f3ecb7de8e9273d9c04d0fc36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x89fef7b0a7e44b280dbdc461b3d1db5ad206f2d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8bd4a49cd835a1e9ff505893da5b57ea6b8725c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95a050281225bbcd64eda31ee05a0780534dae71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9c4306df9ca1e3be80037ee16717b85b81ae4084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9ca9b3b3741478a90800c6168aebe68e6dc58b7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d2af94f809d98bea7cf3a875fa7d871b9349b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d7da8fd52602502540bf7bc70089d7c31ceed49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9f445324b5d0d4b54f7464faf9294f3fcd8dba3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0f1bfab7c24486cab84fe498b8a1b76374e5612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2fc79d1e16c37db6912d4401729f32cf35ba82b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa841ee5340dd851b595f95b0b2b0b677fd79d73f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa5843b34e685b2a4ef18c43b9c935c0ffc8b447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xad9569208b83e050e6a50955d78096263134ffc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xafc70ae4c91135b8a480c05fb1dac0dff81b73a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb2609b16ab1a255becebbd5e0a0ac4eb618a6aae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb430d4e43518d9de37020cc6e4648dc73d07251b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb468367ae0de707d4f9f33710ab8f65fcb272933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe7ed3be1d4feca5044bd80f755a37635f649c77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcbd46aa19fc589268b0cbe85399f0b547817187c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce6f6905e19ed493556eb57893ee19a417490356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf1336bf0a846400f19f54fd10143b6751bfc740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1935dff02095bb011d354e3ce38fc66052e2587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1b91714aaef49c9523927eddf48a7098bb2c9bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd275a87b6474f9d295375241183a7e7311b8554e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2a847b48c3568a9543ff04ebd3a124efa7e66a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3437e65edade865790d326d9767dbafc69b215c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe300cb7eb1752a5ca381207d99bda72ea9f943ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe422b1a1ef24627b81e396fd7751288c90afbb78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe60cbe464f8fa61fcce47abaa78be0bafeca8657` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe8d17729c1dbee6b6f4fd4e328f2b9def6665a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe95fbd1c4f6ceab048eb19ddc37cf7461618568b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb0a40fe87a66726cd7091fd3bbb9118b1db660d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb26dd5224beb87505108b3fe528d2e3577c2914` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed80c8286369b3c2561a6f8f11bd00fc74600ca3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf05f535d1a21ccc5396c8b4cd8a638076fef7e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3b06e2ea6d22330e3a35e2b933dc55d9fee7314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf8b1e6a8e07d00070145ed9a3e1be55309d46795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa709e34598ba4f67c2074ebe427fcc700dbdef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd11731818d9a53e791b1ee9cce0e6e5fad4370a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfd802c0350404211edbaf922d91b07707002e4ef` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 79
- Live contracts: 0
- Unknown liveness contracts: 79
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=79

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | unverified unclassified | UnnamedContract<br>`0x00c7d9ae73702031b12201279d1a7996eb87fd07` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x01d0d8c586fc5abcc278355990609def9681f025` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x0286ca19b4527b66dd7ced62a3814ff70f0d99b9` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x10a44b1e606003c73b0a880020dc6123c14547e7` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x14190df8ee49f9493ae0eefbf070358aa4bf355e` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x14ccef85978484eefcc95894cfebd0eb1611f6b9` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x158db98a59f3af4f2958cf01bc0d2417e3dac103` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x1674cbc357717568af53df5d82af8dda2d623ccc` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x17eeab516437298cd7d74316e6236207cb9086b3` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x18d18c76e91dbd95ca06b42e9a4515c837a68b8a` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x18d88fcec3a48b7e3d748f001e2fc6f2eb85e6ee` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x1c7a5302257babfb60ea9f0e4840f38aaed2e3ca` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x1d084b5bdb7411cbef4d8eabc5991bbc469bc424` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x1e97aa699ce704bb2664d6378ea9a1030a9d3614` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x2293f5994c73b64932228674726324f375a32c77` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x249908b950675954ee6726d4eb6b09d37df75d3f` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x2518634830f7aea496427700fdb715ed0abc2a05` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x279299ba5b84421f6547d2cb2a45aabbe0523e52` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x287d9970b545edca7800f441b0c4ecad578ba19f` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x2b185736f0d1646adcc15e0807ee4e0227634324` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x2d6798ae1ca66b1b2e43adf64ddbc88730bc5202` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x322e9013c0d60dbb9bdc588e2e77ff90a862f36d` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x3b98bec2889d72286c26f583bdb2c6a4f268959e` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x3d8d5273d4e490a518da33b61798656743d8b921` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x3e7fa4be80eec9549e26d51adb74365684f8eb5f` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x3ee7bf8d66bf0828470e1839eca2148aeddd0318` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x435782af7b8b12d71cb8feca159d65d96459f042` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x4643c0801c3a6e3bb7801672f6a66e65cedae742` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x4c1dc265ef71fe05f747e3315e3af2a28513a440` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x4f944c6ea2662eeb776a4ba6bb99ebf07c7afb64` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x5c372241dcb9ee6416ee92baff3f4623eba491c1` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x5eb703504973529b96784fe789029efa7075dba4` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x70a5fd8efef3e6323bf61c59f337926697a71ee0` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x749a03fc6cb07c1398d7541105d61b1062fa43fb` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x753cc82879076c1689cc327f5797b83fce8604b6` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x78f6a796de8d5a26ab5dc3a3acfdfd4d6bc978ab` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x7a511c9edac6fe4a4860ad051312605e2cff932c` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x833b39c6f560ebef96e0c602c2ce2645b2206a0f` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x8369252341c8606f3ecb7de8e9273d9c04d0fc36` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x89fef7b0a7e44b280dbdc461b3d1db5ad206f2d7` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x8bd4a49cd835a1e9ff505893da5b57ea6b8725c1` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x95a050281225bbcd64eda31ee05a0780534dae71` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x9c4306df9ca1e3be80037ee16717b85b81ae4084` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x9ca9b3b3741478a90800c6168aebe68e6dc58b7e` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x9d2af94f809d98bea7cf3a875fa7d871b9349b55` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x9d7da8fd52602502540bf7bc70089d7c31ceed49` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0x9f445324b5d0d4b54f7464faf9294f3fcd8dba3b` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xa0f1bfab7c24486cab84fe498b8a1b76374e5612` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xa2fc79d1e16c37db6912d4401729f32cf35ba82b` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xa841ee5340dd851b595f95b0b2b0b677fd79d73f` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xaa5843b34e685b2a4ef18c43b9c935c0ffc8b447` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xad9569208b83e050e6a50955d78096263134ffc0` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xafc70ae4c91135b8a480c05fb1dac0dff81b73a2` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xb2609b16ab1a255becebbd5e0a0ac4eb618a6aae` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xb430d4e43518d9de37020cc6e4648dc73d07251b` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xb468367ae0de707d4f9f33710ab8f65fcb272933` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xbe7ed3be1d4feca5044bd80f755a37635f649c77` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xcbd46aa19fc589268b0cbe85399f0b547817187c` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xce6f6905e19ed493556eb57893ee19a417490356` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xcf1336bf0a846400f19f54fd10143b6751bfc740` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xd1935dff02095bb011d354e3ce38fc66052e2587` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xd1b91714aaef49c9523927eddf48a7098bb2c9bd` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xd275a87b6474f9d295375241183a7e7311b8554e` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xd2a847b48c3568a9543ff04ebd3a124efa7e66a5` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xd3437e65edade865790d326d9767dbafc69b215c` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xe300cb7eb1752a5ca381207d99bda72ea9f943ab` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xe422b1a1ef24627b81e396fd7751288c90afbb78` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xe60cbe464f8fa61fcce47abaa78be0bafeca8657` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xe8d17729c1dbee6b6f4fd4e328f2b9def6665a9c` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xe95fbd1c4f6ceab048eb19ddc37cf7461618568b` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xeb0a40fe87a66726cd7091fd3bbb9118b1db660d` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xeb26dd5224beb87505108b3fe528d2e3577c2914` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xed80c8286369b3c2561a6f8f11bd00fc74600ca3` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xf05f535d1a21ccc5396c8b4cd8a638076fef7e86` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xf3b06e2ea6d22330e3a35e2b933dc55d9fee7314` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xf8b1e6a8e07d00070145ed9a3e1be55309d46795` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xfa709e34598ba4f67c2074ebe427fcc700dbdef4` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xfd11731818d9a53e791b1ee9cce0e6e5fad4370a` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |
| base | unverified unclassified | UnnamedContract<br>`0xfd802c0350404211edbaf922d91b07707002e4ef` | non_address_book | unknown | unknown | unverified | n/a | `0xbcd1141cd9b28cbeb97d1f783be452bcb51b7007` |

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
| needs_review | 81 |

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
