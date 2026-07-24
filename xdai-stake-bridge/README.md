# Agentic Audit Brief: xDAI Stake Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 18 (1 matched; 17 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: xDAI Stake Bridge (`xdai-stake-bridge`)
- Website: [https://www.gnosis.io/](https://www.gnosis.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, gnosis, goerli, sepolia
- Contract surface: 510 unique implementations (510 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $238,595,826.49
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for xDAI Stake Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4aa42145aa6ebf72e164c9bbc74fbd3788045016`, chain 1)
- UnnamedContract (`0x6b175474e89094c44da98b954eedeac495271d0f`, chain 1)
- UnnamedContract (`0x7301cfa0e1756b71869e93d4e4dca5c7d0eb0aa6`, chain 1)
- UnnamedContract (`0x83f20f44975d03b1b09e64809b757c47f942beea`, chain 1)
- UnnamedContract (`0x9a873656c19efecbfb4f9fab5b7acdeab466a0b0`, chain 1)
- UnnamedContract (`0xe1579debdd2df16ebdb9db8694391fa74eea201e`, chain 1)
- UnnamedContract (`0x5c183c8a49aba6e31049997a56d75600e27ff8c9`, chain 100)
- UnnamedContract (`0x670daeaf0f1a5e336090504c68179670b5059088`, chain 100)
- UnnamedContract (`0xaf204776c7245bf4147c2612bf6e5972ee483701`, chain 100)
- UnnamedContract (`0xd499b51fcfc66bd31248ef4b28d656d67e591a94`, chain 100)
- UnnamedContract (`0xe91d153e0b41518a2ce8dd3d7944fa863463a97d`, chain 100)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 11 own, 11 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 488 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 11 of 510 unique; 499 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 507
- Unique implementations: 510
- Raw deployments: 510
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 11 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d020eb50fce62320a6730e6c18659a28b366555` | ⚠️ Unaudited |
| ERC677MultiBridgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ae055097c6d159879521c384f1d2123d1f195e6` | ⚠️ Unaudited |
| MultipleDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0218b706898d234b85d2494df21eb0677eaea918` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (507)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x098f51bdfb5d6d319dd4fdf06b64773d25bd1316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0be3b7483f728791eb0c6b2370f63b1455b58937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1440eb0dd965524e83b317373366b98c5a604ef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x159b36ed5ba327fd269fb93c75918257dcfe686d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15c13a1ade048a967456bf9807a4d5bfdb3b651c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x257bdd093cab1bd39ebf837dcb60f33d031d7d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26fc9fc1c98607e1634f87b47e6798d436823299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37d5b903a8fbd0d9f44f9f719fc33603189f2ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3abd91b5564baf7966dca7a30bd50eacc9abed77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b6669727927b934753b018eb421a84ed4eb0a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cfe51b61e25750ab1426b0072e5d0cc5c30aafa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x492c2d6be504511f8ca92d4da51c56b6ec0d9732` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262194 | `0x4aa42145aa6ebf72e164c9bbc74fbd3788045016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65ce45cad9cf9880db84637bfa322fdbacf0df8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x691c025efa7ea1c87df256f2da9208e5345d40b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262197 | `0x6b175474e89094c44da98b954eedeac495271d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c70cdda7cb2eafaf296d7087e24475d39bf2962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x710d6ec2b0948def1f423ec77b51b6a55847d2c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x716623daf27f2afa8d6051a4eda08e12107a2c83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262198 | `0x7301cfa0e1756b71869e93d4e4dca5c7d0eb0aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7471215451f6b300e4b771d4cb5b9797e69d17ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74899961224538e423effd1a0ff3346adf3f4c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74b987a253864278ea4ae0cf0850e73c3a5bc4f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7df0e6a8ba609a6cc3ab2fa33d953a3b5584f10c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262199 | `0x83f20f44975d03b1b09e64809b757c47f942beea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93f6ee78451aacc1db1db49a12abfcc4662b9cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96b32f2682eb26324226d18df53d64f79af6e1da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a3c886ef554cfd07b2065d69b4b52a3d2379a4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262200 | `0x9a873656c19efecbfb4f9fab5b7acdeab466a0b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9accfad714a1e670cd1f6dc666fe892d1d5547bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bc4a93883c522d3c79c81c2999aab52e2268d03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab2785e38c3f21670d85f1889ff65cef7f4e8937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb289f0e6fbdff8eee340498a56e1787b303f1b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb54042f5ba4b048fea54aae70abbbe41ac716299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9c239eb5702a7bf3a496207ea5a32b6a690a4ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd760e016226836cc02e329addbb6821945dd5100` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262204 | `0xe1579debdd2df16ebdb9db8694391fa74eea201e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb92ecc81b112d614404dcdec73ad5b87b928645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf676cc15eb6d15b794aec65bc20052afb53d9052` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7358ded3aa54cc1be22ba779d558b472ab0036a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-262216 | `0x11fe4b6ae13d2a6055c8d9cf65c55bac32b5d844` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-262217 | `0x3ea1a9f92a99bc8e820541e7bed5d1f2419ffe59` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-262218 | `0xd8134205b0328f5676aaefb3b2a0dc15f4029d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x01ac9005f8446af28b065af87216b85faac5f6e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x02ae11dc9783467e0830041399a2d48251f63907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x02e2e694184955432037856e1785a598f2c6eef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0514ba56e9efb43583b02aa91e38c295f7d599b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x059c47cdad2c96ca5551921124b75b82119bf73a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x062b9d1d3f5357ef399948067e93b81f4b85db7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x071bf5695afeda65c405794c6574ae63ca8b73c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x09bf5d4dff196c000fb735f94e4b22340b25e678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0cf086e8714571c85b3e88b541fcac763555b66f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0d23359086cbdda2f49e29de370ab85b451e81dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0d3cc0e1934add62415243f22c1b1e3dd33d8776` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0f0a02d56708e01af559f7d80b916c178ca6efa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x100bd913a8339250bc0f9ab788baabe0fb7ec7c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x103a06d091d53fd25e29348484cc7518215ee672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x109f6f453a9aa0f45a2353d517504ee3258d23fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x110e2d3d4c94596f5698c753d5cd43221d3ec78b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x13f2b819b7165686f36af81d887e1459d19de3fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1437f115bd1d206c1c0955ac70debafd964eadfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x152fe5a19e4a4740699bfd519be89c9f7540927f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x15b7bd2686650eadb6feb1be6e9134c1f9241a95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x169eb836bd947670d2d26b64157a8723b61744c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1707a724612ecba66a2cb13d4a0a6b72ce2046be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x17780d40287eb6d9605ec8b324605cf98a625122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x17dce52b2f7abe4204011196019276d36cd55c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1881dd4589447aaa1d8fd0515878fbed971a6bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1964b041ad6ab83275f3cc9bcafa4e92b13ceff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x19bfaf6c3c091aa145f7df7d7a687b2c1c1abd10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1b0348c67d01a46627ce1d8f9e2e218c9eae9966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1c5b8da51e5deef2acc29dffe4c34c781fecf942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1f78108fdd0cb4bb0475fc9ce9e9a92688dd2f75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x201959d07446095cebbb3c162afd9ff7749437a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x20e5eb701e8d711d419d444814308f8c2243461f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x223fe000fc6ef0ed36576d912e506b5f572c7ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x22df53dc7efb5d74828f19784db2ad375f3b02c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x23c5515e7464c15d8f56e3a48cb220d9ee265126` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x248ce8d11c990190642aa4eb34e8af2c832acc13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x25fa1d8b25160789446300ad987a64cb54376471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2869b62af774fe012de271de6dc7bca0cd87145f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2ac1f91872c2a642ea957f6822afa470194f1904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2cd3494bb70a30f042fcfccab4d192f6b7449042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2e91cd1bf5ab2104633112ef35a7eb6998ec2695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2ffabab31ab17f785b9d03abc9f022fc57775aab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x315a8234091150f857d3a6bab3c9d13fe6ba0553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x33805e4ef17cf0f391d25ead14fa9d2b74bbc457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x35dd0085adea1ae2c1893107b844bfec40b85db6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x365d2e94e3c0e84e7f7a678482f6029151f35322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x37673908230360128162aaf9790c90af9540d42c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x39ce830f258798269080927ba9bf35f32648a050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3d938f90ac251c1bcf6b4e399dd72c8c685a9bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3e2081400517e9ef8436401e0c06dc2cbe9ec2d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3eb706053a2f5629edd7f94125b78377b4ddfdf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x40d2e77cf5328aade163fbbaf239152d0dc67b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4125737f1af8343a137da77194ee7faaa4b0b078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x456844e967f823df3aa565d16d8ed7d4d99179ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x466df21ffb4b1ca195abf59dfc41a0c98da7b1d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x46ad11df6c12e355241dfca7cea5734e0d512e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x46eb3f515c72de82a03d28fec263a56943cd581c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x475506f459c814d6d27c76115a1a95175627ff7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x481c034c6d9441db23ea48de68bcae812c5d39ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x492c2d6be504511f8ca92d4da51c56b6ec0d9732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4a0c32e9079bf9e42eeeac31f2a05dccd07e8adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4ab77f4883d099992c69d417ff8708220da171d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4c8b996c61d72a5dc39dd2bc54512612fabfb961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4da5beb71f98dbadb86a93ccbaf63093a53eaae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4e1461882e72232807f7a65081321b543e2e52c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4e7dfd59060e2c91495b006617f7e429439304ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x53ba4b2ed945e1eba48056ac02e610d10616921f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5483ebc7522c5e2669a887a7a1edf256b3e4440d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x562e49d53ccbdc7f446f4683e270f6e51e9ec2bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5630622525e50e385126a1134b842c2263a35789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5668e5a6b4663dc062db4b437f790909e68fe99a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x569358ba6579539c6a2dc868aa57ed7e0ad2075e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x57cba82270fd0eeb3fc76b7c97480a8720bdb2cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5ad43460308287189cf7207f7750373649137bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5be5d4bb56451a27c76f3ea87f7c564f05c20dc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-262206 | `0x5c183c8a49aba6e31049997a56d75600e27ff8c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5d1e9fa09ed123660775c395beac281f405befb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5d9a99c1e2b0d7b0a446688ffafb5189bac7dc09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x5f539a167c85fc428a64ff0a2988ae35a2e0aba4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x606a84c7241acc02699c5fe9f8f821a39adbfe88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x60aa15198a3adfc86ff15b941549a6447b2ddb49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x629a80eda7d31781147709a8e9c7b7111fc6ee47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x64bdf6b823bcb4b33147fda53d443c2a328628c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x65efaf6618405652c400e7d78767d795d2474c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x662a928e66a7f874ee06e94eb82d4ede73869728` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-262207 | `0x670daeaf0f1a5e336090504c68179670b5059088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x678b9300d4db3c1436dd765c2fb4ddb3321cc69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x694beeb84f912d0951e88cfcf76900b7c728b5b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6a0614a055ae3004117face62572398073fc387a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6c1878a83884b9f14a342c7d96fc00c9a0d434d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6c70cdda7cb2eafaf296d7087e24475d39bf2962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6c8ae5a91503cf83996be170284bc609ba7beb75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6d9dc1282b9e25a91b266b6b61ef65a38f949f22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7057a9ecb283e205b73a5137e6bcb47ee69c2e23` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0x7301cfa0e1756b71869e93d4e4dca5c7d0eb0aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x73280cc830a4be3f14ab2439660361dc70d024fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x73295899f9e5d7c3ac8d631c2ff7432c2e6fa0ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x74cacae9801ba4fe0027ed6f58d53797cca7296e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x76bbec1b0d287169d102ca985aaad8deac787ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x78eb5d51d620ff9e6c70ef02208e5ac7079c304b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x794da82f9fb0c758c917fbb074667df6e2254aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7b81e0bac030a9079e1e2b45d5c089c3e2b93dc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7eb44b224a4cf83f0f72612379ec57dacb651fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7ffc86c7a61a8874d3819c32b12618235613d1a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x832cd194fc518411377e8382bc27b7bcb76c4ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x85822764fe473028c753bc1124c5df6607fcb2f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8677a74ea1b5404b36e9a9eb1aaf42d1d6e27136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x88be51f9c26efbf821386ed2c33a95f9a62ecb49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8b1fcd819828f4df3f3bd7667b502ed6ba15da34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8b707ce7ab2d9639ebb63cabe14d8d3960e9af64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8c41d54948bebbe4b7f3178ea842b343f6f0c254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8cc3f9670d3e0afc779a553f1e9afc699c1ab097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8d43d510880abca3e8e6fc5b0cd7e469410905b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8e0dbc8b165268943121527639889069c92bc339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8eb7982958d8aa2af98a35b8cda2e6c4e746d250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8f0563a7987db44dfaea62d156deb8ec79b9ee40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x8f40f69ceb986aa66fc64f18bad8d6491a3a27ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9065d67115fcc2d52dc1d0c420f27796186e56a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x91282467dc9d8f1f19112e6ec48e576c130e7570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x91ed5609e5b9d6991f024570025c872382890018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x92157163b57da2fac0c1f563bfcf07fd315f89d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9380d8db2cafbb7c9c2c2a47c96db061fc7f368f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9546320a15179d0f4ac6f5dc0996c43fa87325b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x95d0e869271aa731ebc3f4bf6046636493470b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x96f4bf695ed277aecd44fc176d4f2643ba18f57c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x98216d5f0451b93a3747148b1b6247f6bfe3b385` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x985323cd58346d83e0a90ab6b8fec7025fce20a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9a4dcbcb82fac32580dc419fab3b8226868631ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9ae6d606d9ca14c59b703494bea2d8870e5c97ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9bc06ed9cd3c15eee13b05ce52442d22f060ac2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9f1837a88cd992b693c266aa6a4254a8644ae99b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa033535983d1abcc2648af730edcb198909903d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa1d0ad01a7ae157d7941fd8a7e67094361a6bdc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa32b572f94eae1638b7076565d06ca196ce6558d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa357efdaf20a1b3498400b029314a826b20ae61e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa476a54bdd5ff4a900496877ec599f8840034fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa671d7d0c571e5b92510de6c5d0b5c1635ec8791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa83a29e98b0177138dddcc3a4b6536442d22c5c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa9502766df45f1bbdc4ea55a3fc38053be25cc68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa98c2e26a22c17d1199327895a737463abd047c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xab2785e38c3f21670d85f1889ff65cef7f4e8937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xac942b1acbbb080d30421c8a3ab20a73fa519bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xae27e63307963850c4d30bfba78fc1116d7b48c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xae898842ee80ffa9c45a4802fabf471f3d50b423` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-262208 | `0xaf204776c7245bf4147c2612bf6e5972ee483701` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb0b0f7f9a860dbd92fe645bb88e90f8b8b2a08b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb229353e8d34349e8e2951d06642902c87f644b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xb289f0e6fbdff8eee340498a56e1787b303f1b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb450162dd2278bf2db6bb53d5010b54b390ce5b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb624888498c057b5398ef34898efc3d0fbf89489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb69aa1583aeea760fb18e55572cbfefca6188dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb6f20b02c6e7e7d4594dc1acd76bb20aaa679725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb740472c650fe949931b9df0cb253b48c80c82de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb7f600845e4649ee5b8ee16d44d91bc0ee65f4ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb88d66e7721a20b58e7d18d81cdb9682307399ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xba51d09224e14caef5ab6f3c9e8f3b9d7f896eb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbc07ceae5a1d18ad6035b4c904a3b70b6e152f0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbd56909c5261ad1787a561ba031c9fba7d17ef81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbd804a38fdeee47695ced968f6416adfb6054921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xbe76f35bd6676c233bd8b6493fecd3d8e6f615ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc1529e13a5842d790da01f778bf23a3677830986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc1593302979e5e8e16e53c3303bf99ffa319d314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc21a7b1e58356892f606bee801a00c7bad72edf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc66e94d2acaebab0d0314a01666b64b88ababc42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc777eb53b224ab27dd348d2a678bfd20ce913277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc8270d4a1c6b552b242db93b10056288b5e23725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xce02a2fb42d93438e508a32e80555add2fd8daff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xcf6a209df4c745534c97086e7e4d58ee93fbe689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd28490e975a49ce009163bb9feb566133ace4ed2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-262209 | `0xd499b51fcfc66bd31248ef4b28d656d67e591a94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd7e6500dfb81a5b2553b7604cb55305aa7db949f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd99d9d46af82d7c82913c2a6a21258e829e2f10e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdb8e23f856d25aba008f39c92d161f0748f419ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdc77a058e11c341a54890dea56a3f4faf992f381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdd494510e56347058703c277ef770d3d9099ca42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe183c741966c397a0f904964b074aa36cefd1e2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe22b9b998366b42886c76fb69c436ec3e5e0ef13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe253094ea2819e63333387659fedf5703fa430e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xe30269bc61e677cd60ad163a221e464b7022fbf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe6729389dea76d47b5bcb0ba5c080821c3b51329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe6998b0c03d3cb9ee8c04f266e573c7fa8782846` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe7728def71d2175bdc8049510ea53026df3861e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-262210 | `0xe91d153e0b41518a2ce8dd3d7944fa863463a97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xea45ce264a5b2a2d2cc12fd5a92d6c8b444d5636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xeb5767a1f3d9bd6891d5097b68768fae1d658af6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xec8baf09eb04a0e820c80967d2eab0980fca9620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xed1d03f17bddbfbd3e908d9e40fbf95f45473a5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xedc96ca776c0336cf3924dbfd1d0a54fbba05cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf1dc9497d803b906e43ce91d33575b20218cb26f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf429c5e2f1fa4c5bcc6a7a376c618121b2a621e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf6373624d8ce43e7c5e5904b9f5d7af3ecf3a2c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf7da8f7ac394c08b4da3292ccab11e5243e63284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xf7f88000be29d179015fb2c5ee466743f6386edc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfae3a9b87d10e37a81f6e660c38c925f4efd7b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfc4c44bb2fff803b16d0b421bb9f08ed65b0d716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfcdd9111755f9b28c6d6ee41d57f4cf1d5cd3d23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xfd42833b8bfffb8e4cc8ef860cfe26f4878ac91d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x01aad89ddda4e256885407da316dbb724c6e448d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x01f3d86529f80f26415c0508ef52326ceebea68e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x02ac5b466de11a871736d7cca1bca62e4e590596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x02c629fce9ab9af43be73c5fb693c45cbd0b2bc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x04b69fb4243aea1862b6429db9377601aa018e41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x04bdc08401b0676ab2b7a3edeb5f3a3921585036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x05816eb7de1615c7dd5a5ad30385fd8f7ca52d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x06a8a6b593398eb0010f7dc8774fa403fd0da68f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0728e0c04f78900106f9e31aa70a36175d949f62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0803fbe6b7c6f7615fd7dc5d9fa706ad76238849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x084ab2ef1cb3a75eb0fdd81636e9a95d15629c37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x085435e349edac5e901bf7ab20f9a6d47e7da015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0854d10ef62823731c0227670915c9f569f8f47f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x08f00ba74de76db7f6056663d5e6dcc976da04f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x097996bc7f97b8a23c44c4e784cca4437ca2bb0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0c083fa52a46da7bd86100f4f0c4163be888fa15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0da983bba33c13614e70ccf113817001be094e8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0dd01f6f57647c29219b54cc4e13edf62b04c242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0e5714419b2c7d0b0ef0985baacee32a623708b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0ea49101e03dc086b39faa03352bbb9a8cf24602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0ed4d47de291db9c4b0d12ce824f84ccaaf05300` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x105b2e02a34b73b3710fe79b3f71b433710cba7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x10bc9b268d891a0024f7d49953c7c05ca7f9a3c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x11378c54aa4e2daf4603f9be86ae0cb70786682a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x126c05afaca5517b89d9a44541d3f74ad38fefc4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262211 | `0x138190e157d7604b8f89637aa10508abd4c673b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x15586ae01832d9cff98e748dbb18e6eb0fa274fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x16b6c6bbeea5b035393c6767ab25fd9888d4fa78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x171c1161bcde7adb32a9ca92c412d39be6f97c59` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262212 | `0x180ff98e734415ecd35fac3d32940e1b45fad0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1814b5962b9d7c5a1b05dda1f7bf27bd4b8afed7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x18f27eb1bdc9b16f7cc54a42f6b0b70884d6903e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x193df9be4bde88bf3d4c7159d242187c7617df8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x193fc6801b1a88e3a5d1f19e20e0f4ddb5f8a057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1a7fa432ad0ac56485d8d91733c22ae223101994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1b80514623c15e4be91715e6c18e0a8fa7cd0779` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1c203de9bccbdadb0f976531144234d06ec2930e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1ca0e933772b7e7db69e3dabdd9addaf5acd2c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1d1a4018929a4bc60fc3166e45d64984c208ea39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1eeae28cf55ea2ffbaa5498c86a112831495bf62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x20953acd87c68b1142c431f26d5014c5664c5655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x210259609f3c03ac65ba81bee4fcac680adf03eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2154fc2e76b8564dd4313e5d3d8754d6c6c3a236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x21aba1d8dda5e3038543ad3cd84bc6bfaac64736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x22f1fc71a505c0b2bf4d5075801cc5e0ec84b09e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x23c742467357203d5b164a10a2067b4095f9bebc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2542f3ca602b9f6ee1b6323c734e0648dc8470f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x254f56611389becfb280fbedc7df137e1f539ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2820354d974faa958250fcfd8df04f36521bb007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x28f5cbc4342f40ac77d1022e06c56087e6c6e183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x291a8119bbd3406b50c4179098b97b5e4a29a0e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2989323b238dcb5328afaa43c8cdcb761519290a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2bb05021d799bc8487761d0160d20cdb2359a7c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2c34a6f2f5b679fc151b55b130f4e11e897213bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2cfa1b487989477b3c2577afb3fbd6887e36a163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2e9d042baeda2057d0f31a43e98382ded217f106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2fc4beaec07bcdec47223c02bcbd8e67fc6844fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2fe554ee7b38b35b548e043a511379ccf2734013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x32db2699ea9066361ce0c02cec83c0fc663ced63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x33591dd2482f5fd021f02133908c31fc3164ed81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x35e4e0b1131cf58ab7e67dc742ab487adf3da3b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x36196fabf35017f4d01bf1a71e78d1431d9dba4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x37682b87eb998133f0aa00ecd9ea4d5a94f05050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x37e2fc598487a83bd7c99767a91d3ceadd8bc8d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x38dc36e232d86d0670b2720922e210193dbfb2ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x390153b962d42ad19b8b2021b70e20c024f83023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3946e2b9731403347b0a8d02db6717458340fd85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a3c3f10db0b5df58c29cc4c6e008a692e321b50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a6f5a285c75aebb6d25bd9a56cd053e619d0d28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b7bc541b8465369e38d788a2c34c4ea3df8e33d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3caa001ec4d47dd26d84baa0dbd96c8de0dac4ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262213 | `0x3ea1a9f92a99bc8e820541e7bed5d1f2419ffe59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x406ae013e95e211a5b631f3899403873f7754b27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4298880140694b3681ee3e0a36d0ec450fad4f6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x46a98eff069dce2503be75a850489c2837c5ed60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x46aa59df57f58e05ae7df0fdfeaf6eb4787664e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x47eb98416b554f8793cb60726c758edb2a79bcc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4ac586272f9aa3b3a9c583b0c14d9d12fc7c40d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b7a8d897dc6a4c3e56bcdb9bf6766722ec50bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4bda77ba72b6902c5387f489ccef882382983dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4cf7722df13f8c630232603309880c2805233a21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4d1cb054a39307c4d07ad316e6142505391f39d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4d72ca7132b9ed58d432cc6ea2f3cbcdffe9278f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4db89b5c5fd17da47ec1ad4f65f7fd03bb6b1ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4ee32e39ceda7d63d6e13b690353d702986d281a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x520185210aa645220a49afd9c33d28b73494e14d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x52258b83051b7031483740ac9ecaa07926392ea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x52579960b5d00a2d6ed9e6983f3d5b2b4d67a853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x529fef8dc16e41e301a210068f777a567cec49c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x52aba852dbd3e6e689166f19f6b67d2a8e4d6a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x53107f806dccb4a6bb75c1dd38d589f4c1908f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5506810d0d1573409be721397e1cb75bd833861b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x56fb4f3ea301dc63cbbcb51e3801ccdc173c9f91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5826517b039f87cd7b43476863b94fa67501f46e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5ae9859e59560b9905ea1d1d7b004c5a01dd6dde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5b581494c21017e9a1712d42e5e2537b0ddee85c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5b7c18e557523a2797e76212b1bf8d7bc93576a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5c85a150f4e3ef762bd50004b5dadf6461684123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5cdf8151df08361711d43b77ae9d184273e6d7ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5dac23d5a8e6a1ba3a478b49d842ab23aac201d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5dcb42cfd1c1d2f7cd2f03b9f96d4dabc6294e7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5f6c01541a2af2df3cbfc412baa61ee9983a47b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x62526b9031fc625b8dbfe3a6c52c545b3a4572df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x62b1d89490b2a99493c762d06e1ad164f1650183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x63e47c5e3303dddcaf3b404b1ccf9eb633652e9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x65aa23870114ba87f11c1e816529f9c63da69bc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x674dd316fc66153b5172a982ad74467e268564f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x685b011cefbd7d7b29fc65fb799a4d38a925d2f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6883dcfff2000c159379048ddbc0fcd6a2527d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x68dab7fddbc360107d6bb638d3705abc1c94f2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6af3907fcbe8ec279878bafc5861d756b36f9710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6ec4dedcc97a65b5123de486778ae98542633d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x70dbceed3aae6348bf141240331fe7382af1d715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x72b543e50eabb9c089972401ed025c09c30ee1c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x72bdccb9b7399df5f816dac32815049826917c23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7326c7f815d62617cd7cd6d2e4bfce2087ff174a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x735eaa5a0abd8eecfc2d83e1d019efae2754634b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7727a2de1c3c2044b3f77cf68e0da7810cf86050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x78d0f9d4b94b211f728204cd3f3f16e28291f522` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7928cddce9f4658fb0317ecb32d0e6ca7610e236` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x793eb4a7c728a3486e68662321d25e5e19535e58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7b89fdb9b2f016e32f9708fa42ed725b0b8c4dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7ddd965122268b46e5410e01cadc589d43cdf993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8132f45850537a6e33faa7271191e2d77a998665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x82f63b9730f419cbfeef10d58a522203838d74c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8308a9ff3b6ba86b0312a866240f0f3da57e6ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x83e15c0243980be13105de5a4ddb926fae7b460b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8448e15d0e706c0298deca99f0b4744030e59d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x855a2814e0dff8327f1a52acc9537772b829e226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x856dcc80f75a9737d9d498266e1af013668316fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x861657b006e2ff0fed2836c5a5d5f130725253fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x876316eeefc4ca3d548edbfb14d95645b8052a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8767b516188b3be3727497e4879159aeef2a0f60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x87a2166b90b5a62096a01096d75b60466d850a0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x87aaa8b48876e3a54603040ecc46df1a167d949c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x88eade7ba81276f6329bdb827f36986dca9f5667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x894ecd5c2caa118fdb94146ff112effe2856a071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8971ad43eb2972bf4a894ae77fe8e3c8362024d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x89b31b3a31b3e9a137517c47454bb7df3640d5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a098e32c4e05041a2f17821e7d9a3da3451f69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a83d016306a4b7ab18fbcef5b8f97bb475740f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8cf9efbfe055bcd30edd02baa55adf70c6679d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8e1ad83c779933ff29004a7dfeb6fe03246c6377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8e4b40c45c8284da8167fba9d0926f8d9864d9b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8ea3f385be8fcb98eb4dbfad2d00846860bf648d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x902c736b804b4668f1c8c9a27395863e48fb1876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x903cc770f35d5caced0510ac817e55738bd435c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x90e3e97ffe20e5aabe6f6fcbc1c61a1445fbba79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9171b3a71f1a14a2dfa19ca1b6cff590fae6b7c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x927fb99ef4e79d1e520121847048119bf7b3eddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x93c4fc3e01e00e035337ba5c3788d3f2265b54ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x95b748e1c4d00d207d4f0aa63397a0089ce876d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x965d46d81f0ff25e3de3ec1e1a765062ae49bd90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x96c0750152cc500969cd0a64d73e7a330abe2e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x97897c60e157333f35ccb5a56cb605ec16a74c1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x981589c6371d061008910493493926d012bfde37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x981eb5b42349a00c7f5c395fca706bb71b9ec333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9848eeefd2412061f66f03c657777f7cbae9e8c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x99ee6caceb26de996af3a2a389f112532f9d70df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9a9fc484d3f83b489bc58c2a3eeea8331f21796b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9b4cf3038fc791ec4f3bfb4a2f0a9ccaa41dd8c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9ddfd78887eb7687088fdc1b19fa3faecacd3eed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9f5e91e88bd83ca6cca5a39f4f1a8d7eccbd907b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa02751fa7812f76ce0eff56c03eb3c04e3c3081e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa0bd95dd2570632c8640ab5bc213f3a0ea33e26a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa1752b193c9fabb3a9eae921a6e58c6beb343b88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa184c8fec24ef130174586a0249135bab1bca694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa26a6e012f11008fa0c6d33f1f7a4e91423ae09d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa2fe5d48d2c71ca4f1382731e138addeb13f179d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa4a926f1ca07b9dc7ac6ffcd200aa0d2f5cacc35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa51890f06f5ca7cc02db5d593c94691bb029962f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa5f47df5bb83624fcc5853780e0b689af1b6f34d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa665258da2b94a4b4c8c0c5dc4c2fbf8429d248d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa67bd57e19f8741f5166166907d2ecb09af789fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa70cdcf94d23a0b7c06eac8c54d0819590282378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa71055d672adb0f8e7414bae93386cb1e2dca2cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa9309b30f96ac33e35b781cd17500f368a39407e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa98748087c6a96c05704faf1bf08cadb63dd48c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa9acf89595797fc3f15c4641f560b98c6014c3ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa9db2f2e82402dab9d632eae77a1f73a5cb8bbbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaa057d6e2d8149bd001cfcad4dac547c4f28b1b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaa71f5f6693ee166b529fcbdb9c6a67142bc1a9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaa7be14c6c81dbb833c323ab7b17c1799b40b1dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xab6f51b61adf8b542a569e94e1caa233dd216862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xac3c1902b9e59489a619a77f2a750c102b570c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaea372031875ca036e6b60914b3c5f3c899cf35d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb2a66ac3176fa086d549142db6eeedb908b65413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb4751222d1f8839e4ab44fdffdba96665ec15c80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb4b745d1804ee6d77d5e8189d5fe86cdcf8acc45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb5d15099bd0d7ee7037f03c79b4db2b57b3b3a27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb6133ab655b990e80af3e948852c8ec2a46651a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb7806ea66c1bb9ffeb41dc303601a469ddf3b9c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb7822a62aacee16a74adfb73c97b2bcb127c58cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb8460ec05d4eced2c739630fd0491df5b37541e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb9a0a11cc629b1aa49301091211d429b97f8512f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xba5b3f0643582e75af252e7631de62c046970167` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd1f8e8f476fee7bb0562ebddd2fcf8635576029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd2321610b9df2b9e79d870abc2227a81035663a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbf097a762d4c64b564adeac159e510a7f973b99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbf31b2e7dffd2b43e76466ef734f620d3b7656bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbf5cf13c12652f2f7fed892fa2af0e2d1dc62518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbfd877753f8b4f4117a08ad54dcbe69cf3165d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc1289f49a1972e2c359a0647707a74e24ce73f8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc129bcbc674d431baee65630ceeaed4ced8e72fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc158633aa217119436e6cb4a7eb070bed2ef2b67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc19226919d3947fcc09ca7ab2ed79c6f40488be8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc192b241e5c6ee941c46b0f25bd67a12409f5a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc1d0ed50b4980febf83dd6513a8f99b446919644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc3a7243f076c36a5ac8b11ba482e86025841e8ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc441e98bff10dd35b21aa4eb22f95e6cac2b608f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc48aadf2a34c1a5a16757caa57f7f4f8309cf277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc545fdaccda323d25a9b143878af313011916f39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc66a41efd7f1d2ccefe91d09bf3a00d39a7a8708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc6e5cc0e4a1354ae066db524b2a03eb5e8d8906c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc8e9b6f9a272c2a4bb2bd39c6ee6706680b508af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xca47b8b00e3c6161d182c2d928018237d753dfd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcb1b23a6b9559564024c3f4c9e816a74b939921e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcb80462eb5180e958f8d8c011bf8acb82d2ca735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcc96c6191c3e64335d8507ff26ef31c03274f3bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262215 | `0xcca0dc2a058884e62082312f09541cc7566406f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcde6adb57ecff2b7646393bd38e09152ddc666f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xce7fa5bd06718a8754e121f14f135eb668108402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcf7e187ed1090b9ce8e4a7266b5309d839e85648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcffd292ae28ee721bd06ee278b118d5e583b4fb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd12c02260891c2f6231b4f3059234a2d9bf09e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd188f23f89fb9e9b74df6b53705deab4cfc90586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd39fb77307195722f4c4db90cb6bc6a618fef92f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd8fcf76e9571bcc1b5ab8ce9805b136e33419745` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdbeea0fb5e5d35b6c5522bea3e268b9007801f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe16acab0948a3c350c05d0a97669d348322f2204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe2feb40e7917e682473a1e447e46d5bc4401dacb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe34f40a2ac78ac831fa053b57db08664dd1c2289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe43347e61bf9b2fa95ca8c69921769fc5a707286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe47bcbce970f0e2375adfefb1eb9f417f4e0ff4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe47efc8eba24ce9a2d075021c1e5b98c669cefef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe58e7bf7acd1396d8f9eaf44db3d4fd055dcdb51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe6efae73f271078f014fccecf65700cfe8f205c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe76e7aeb27daf3f1d172d8a69e9f134d369492a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe7a7f6408f580af9b662831a48c6153e21bc861f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe7d03b4b5e7c791633c4c5d86db16d6e577cbc5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe7d07af8adf3b8b04d99b1bbc38cf15faa32360f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe8419644ed1bc4c2b5bfae2c56837eafd1145da5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe9efed866835338138980df09ffef4ba6df5fe8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeaa1de9739e3799ac6f77bf85ad6894f4269378b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeb9ac5ee93147faced1ed63c24883854ab16129b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xed0483078dac22ab01adb40eb35ed354901bc181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xee35bb91567c5e304249323eb00ae6bfc28ec9bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xef17440c5d83dd65a48831b2c330c5b9764a90d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xef54d559ac7aef00bbf4d9a809950e6a9c13e11e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf0964650b62301dc838411ea75c461dae564dc79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf1e6fe4fb95fab1f48cae1ec8dfeda584ef25e3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf2546d6648bd2af6a008a7e7c1542bb240329e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf3d2877866cd8e6771843b96b66afce425b2353c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf4b2b17259bacb6f62690f2998fe27b6da45aa84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf6f5eb6c3835ed87ac70688ad5231079ef173a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf6f67cebcbb7571b1b2fed17345012cb423fb39e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf8be7b3444365fab41a193b4d10011007e24f51f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf8d47df595d09cb637cbf43f7a7d233a8ec46b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf976516d5a5d8718693a8a8d58ca08e21fda7552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfa08fe09a7c537af96de76c2bb2607d6288d7644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfab2594f2e8b2570a5c2d137af85d82b67f6dece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfaf56b924271c3e7f13dfac589972e84d017410e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfcbe1e575cb022159760d64aa31e7bc47780bc9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfd1040bb141696c3ceb74b6baa3aaf9fad97099c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfd64d1bc3d88664dceb75040d839fdb159f3348a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfe4e3df44a8e2e1806c5a196602eb7eb9ab5031e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xffc1938d3d7d6342e7d0b4e240a268451dba4e11` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 486
- Live contracts: 0
- Unknown liveness contracts: 486
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=1, unverified unclassified=485

Showing first 200 of 486 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | UnnamedContract<br>`0xe30269bc61e677cd60ad163a221e464b7022fbf5` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x098f51bdfb5d6d319dd4fdf06b64773d25bd1316` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x0be3b7483f728791eb0c6b2370f63b1455b58937` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x1440eb0dd965524e83b317373366b98c5a604ef3` | non_address_book | unknown | unknown | unverified | n/a | `0xc7de769d23c2b64cf0144da98484feedadfae531` |
| unverified unclassified | UnnamedContract<br>`0x159b36ed5ba327fd269fb93c75918257dcfe686d` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x15c13a1ade048a967456bf9807a4d5bfdb3b651c` | non_address_book | unknown | unknown | unverified | n/a | `0xc7de769d23c2b64cf0144da98484feedadfae531` |
| unverified unclassified | UnnamedContract<br>`0x257bdd093cab1bd39ebf837dcb60f33d031d7d49` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x26fc9fc1c98607e1634f87b47e6798d436823299` | non_address_book | unknown | unknown | unverified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| unverified unclassified | UnnamedContract<br>`0x37d5b903a8fbd0d9f44f9f719fc33603189f2ff5` | non_address_book | unknown | unknown | unverified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| unverified unclassified | UnnamedContract<br>`0x3abd91b5564baf7966dca7a30bd50eacc9abed77` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x3b6669727927b934753b018eb421a84ed4eb0a43` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x3cfe51b61e25750ab1426b0072e5d0cc5c30aafa` | non_address_book | unknown | unknown | unverified | n/a | `0xc7de769d23c2b64cf0144da98484feedadfae531` |
| unverified unclassified | UnnamedContract<br>`0x492c2d6be504511f8ca92d4da51c56b6ec0d9732` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x65ce45cad9cf9880db84637bfa322fdbacf0df8d` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x691c025efa7ea1c87df256f2da9208e5345d40b1` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x6c70cdda7cb2eafaf296d7087e24475d39bf2962` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x710d6ec2b0948def1f423ec77b51b6a55847d2c5` | non_address_book | unknown | unknown | unverified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| unverified unclassified | UnnamedContract<br>`0x716623daf27f2afa8d6051a4eda08e12107a2c83` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x7471215451f6b300e4b771d4cb5b9797e69d17ab` | non_address_book | unknown | unknown | unverified | n/a | `0xc7de769d23c2b64cf0144da98484feedadfae531` |
| unverified unclassified | UnnamedContract<br>`0x74899961224538e423effd1a0ff3346adf3f4c56` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x74b987a253864278ea4ae0cf0850e73c3a5bc4f8` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x7df0e6a8ba609a6cc3ab2fa33d953a3b5584f10c` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x93f6ee78451aacc1db1db49a12abfcc4662b9cc9` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x96b32f2682eb26324226d18df53d64f79af6e1da` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x9a3c886ef554cfd07b2065d69b4b52a3d2379a4a` | non_address_book | unknown | unknown | unverified | n/a | `0xc7de769d23c2b64cf0144da98484feedadfae531` |
| unverified unclassified | UnnamedContract<br>`0x9accfad714a1e670cd1f6dc666fe892d1d5547bd` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x9bc4a93883c522d3c79c81c2999aab52e2268d03` | non_address_book | unknown | unknown | unverified | n/a | `0xc7de769d23c2b64cf0144da98484feedadfae531` |
| unverified unclassified | UnnamedContract<br>`0xab2785e38c3f21670d85f1889ff65cef7f4e8937` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0xb289f0e6fbdff8eee340498a56e1787b303f1b6d` | non_address_book | unknown | unknown | unverified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| unverified unclassified | UnnamedContract<br>`0xb54042f5ba4b048fea54aae70abbbe41ac716299` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0xb9c239eb5702a7bf3a496207ea5a32b6a690a4ca` | non_address_book | unknown | unknown | unverified | n/a | `0xc7de769d23c2b64cf0144da98484feedadfae531` |
| unverified unclassified | UnnamedContract<br>`0xd760e016226836cc02e329addbb6821945dd5100` | non_address_book | unknown | unknown | unverified | n/a | `0xcdb858ce72a31735bff85579603bbdcf85e5e081` |
| unverified unclassified | UnnamedContract<br>`0xeb92ecc81b112d614404dcdec73ad5b87b928645` | non_address_book | unknown | unknown | unverified | n/a | `0xc7de769d23c2b64cf0144da98484feedadfae531` |
| unverified unclassified | UnnamedContract<br>`0xf676cc15eb6d15b794aec65bc20052afb53d9052` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0xf7358ded3aa54cc1be22ba779d558b472ab0036a` | non_address_book | unknown | unknown | unverified | n/a | `0xc7de769d23c2b64cf0144da98484feedadfae531` |
| unverified unclassified | UnnamedContract<br>`0x01ac9005f8446af28b065af87216b85faac5f6e2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x02ae11dc9783467e0830041399a2d48251f63907` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x02e2e694184955432037856e1785a598f2c6eef5` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x0514ba56e9efb43583b02aa91e38c295f7d599b1` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x059c47cdad2c96ca5551921124b75b82119bf73a` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x062b9d1d3f5357ef399948067e93b81f4b85db7a` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x071bf5695afeda65c405794c6574ae63ca8b73c3` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x09bf5d4dff196c000fb735f94e4b22340b25e678` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x0cf086e8714571c85b3e88b541fcac763555b66f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x0d23359086cbdda2f49e29de370ab85b451e81dd` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x0d3cc0e1934add62415243f22c1b1e3dd33d8776` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x0f0a02d56708e01af559f7d80b916c178ca6efa0` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x100bd913a8339250bc0f9ab788baabe0fb7ec7c3` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x103a06d091d53fd25e29348484cc7518215ee672` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x109f6f453a9aa0f45a2353d517504ee3258d23fa` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x110e2d3d4c94596f5698c753d5cd43221d3ec78b` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x13f2b819b7165686f36af81d887e1459d19de3fb` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x1437f115bd1d206c1c0955ac70debafd964eadfe` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x152fe5a19e4a4740699bfd519be89c9f7540927f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x15b7bd2686650eadb6feb1be6e9134c1f9241a95` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x169eb836bd947670d2d26b64157a8723b61744c5` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x1707a724612ecba66a2cb13d4a0a6b72ce2046be` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x17780d40287eb6d9605ec8b324605cf98a625122` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x17dce52b2f7abe4204011196019276d36cd55c71` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x1881dd4589447aaa1d8fd0515878fbed971a6bec` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x1964b041ad6ab83275f3cc9bcafa4e92b13ceff2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x19bfaf6c3c091aa145f7df7d7a687b2c1c1abd10` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x1b0348c67d01a46627ce1d8f9e2e218c9eae9966` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x1c5b8da51e5deef2acc29dffe4c34c781fecf942` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x1f78108fdd0cb4bb0475fc9ce9e9a92688dd2f75` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x201959d07446095cebbb3c162afd9ff7749437a6` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x20e5eb701e8d711d419d444814308f8c2243461f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x223fe000fc6ef0ed36576d912e506b5f572c7ac2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x22df53dc7efb5d74828f19784db2ad375f3b02c4` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x23c5515e7464c15d8f56e3a48cb220d9ee265126` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x248ce8d11c990190642aa4eb34e8af2c832acc13` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x25fa1d8b25160789446300ad987a64cb54376471` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x2869b62af774fe012de271de6dc7bca0cd87145f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x2ac1f91872c2a642ea957f6822afa470194f1904` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x2cd3494bb70a30f042fcfccab4d192f6b7449042` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x2e91cd1bf5ab2104633112ef35a7eb6998ec2695` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x2ffabab31ab17f785b9d03abc9f022fc57775aab` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x315a8234091150f857d3a6bab3c9d13fe6ba0553` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x33805e4ef17cf0f391d25ead14fa9d2b74bbc457` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x35dd0085adea1ae2c1893107b844bfec40b85db6` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x365d2e94e3c0e84e7f7a678482f6029151f35322` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x37673908230360128162aaf9790c90af9540d42c` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x39ce830f258798269080927ba9bf35f32648a050` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x3d938f90ac251c1bcf6b4e399dd72c8c685a9bbc` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x3e2081400517e9ef8436401e0c06dc2cbe9ec2d2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x3eb706053a2f5629edd7f94125b78377b4ddfdf4` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x40d2e77cf5328aade163fbbaf239152d0dc67b39` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x4125737f1af8343a137da77194ee7faaa4b0b078` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x456844e967f823df3aa565d16d8ed7d4d99179ff` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x466df21ffb4b1ca195abf59dfc41a0c98da7b1d7` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x46ad11df6c12e355241dfca7cea5734e0d512e8f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x46eb3f515c72de82a03d28fec263a56943cd581c` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x475506f459c814d6d27c76115a1a95175627ff7b` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x492c2d6be504511f8ca92d4da51c56b6ec0d9732` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x4a0c32e9079bf9e42eeeac31f2a05dccd07e8adb` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x4ab77f4883d099992c69d417ff8708220da171d1` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x4c8b996c61d72a5dc39dd2bc54512612fabfb961` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x4da5beb71f98dbadb86a93ccbaf63093a53eaae2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x4e1461882e72232807f7a65081321b543e2e52c0` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x4e7dfd59060e2c91495b006617f7e429439304ca` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x53ba4b2ed945e1eba48056ac02e610d10616921f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x5483ebc7522c5e2669a887a7a1edf256b3e4440d` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x562e49d53ccbdc7f446f4683e270f6e51e9ec2bc` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x5630622525e50e385126a1134b842c2263a35789` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x5668e5a6b4663dc062db4b437f790909e68fe99a` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x569358ba6579539c6a2dc868aa57ed7e0ad2075e` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x57cba82270fd0eeb3fc76b7c97480a8720bdb2cb` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x5ad43460308287189cf7207f7750373649137bed` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x5be5d4bb56451a27c76f3ea87f7c564f05c20dc3` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x5d1e9fa09ed123660775c395beac281f405befb4` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x5d9a99c1e2b0d7b0a446688ffafb5189bac7dc09` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x5f539a167c85fc428a64ff0a2988ae35a2e0aba4` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x606a84c7241acc02699c5fe9f8f821a39adbfe88` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x60aa15198a3adfc86ff15b941549a6447b2ddb49` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x629a80eda7d31781147709a8e9c7b7111fc6ee47` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x64bdf6b823bcb4b33147fda53d443c2a328628c3` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x65efaf6618405652c400e7d78767d795d2474c47` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x662a928e66a7f874ee06e94eb82d4ede73869728` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x678b9300d4db3c1436dd765c2fb4ddb3321cc69c` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x694beeb84f912d0951e88cfcf76900b7c728b5b5` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x6a0614a055ae3004117face62572398073fc387a` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x6c1878a83884b9f14a342c7d96fc00c9a0d434d2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x6c70cdda7cb2eafaf296d7087e24475d39bf2962` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x6c8ae5a91503cf83996be170284bc609ba7beb75` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x6d9dc1282b9e25a91b266b6b61ef65a38f949f22` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x7057a9ecb283e205b73a5137e6bcb47ee69c2e23` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x73280cc830a4be3f14ab2439660361dc70d024fd` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x73295899f9e5d7c3ac8d631c2ff7432c2e6fa0ee` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x74cacae9801ba4fe0027ed6f58d53797cca7296e` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0x76bbec1b0d287169d102ca985aaad8deac787ed9` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x78eb5d51d620ff9e6c70ef02208e5ac7079c304b` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x794da82f9fb0c758c917fbb074667df6e2254aa7` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x7b81e0bac030a9079e1e2b45d5c089c3e2b93dc1` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x7eb44b224a4cf83f0f72612379ec57dacb651fd4` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x7ffc86c7a61a8874d3819c32b12618235613d1a0` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x832cd194fc518411377e8382bc27b7bcb76c4ca2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x85822764fe473028c753bc1124c5df6607fcb2f0` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8677a74ea1b5404b36e9a9eb1aaf42d1d6e27136` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x88be51f9c26efbf821386ed2c33a95f9a62ecb49` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8b1fcd819828f4df3f3bd7667b502ed6ba15da34` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8b707ce7ab2d9639ebb63cabe14d8d3960e9af64` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8c41d54948bebbe4b7f3178ea842b343f6f0c254` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8cc3f9670d3e0afc779a553f1e9afc699c1ab097` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8d43d510880abca3e8e6fc5b0cd7e469410905b9` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8e0dbc8b165268943121527639889069c92bc339` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8eb7982958d8aa2af98a35b8cda2e6c4e746d250` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8f0563a7987db44dfaea62d156deb8ec79b9ee40` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x8f40f69ceb986aa66fc64f18bad8d6491a3a27ba` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x9065d67115fcc2d52dc1d0c420f27796186e56a2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x91282467dc9d8f1f19112e6ec48e576c130e7570` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x91ed5609e5b9d6991f024570025c872382890018` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x92157163b57da2fac0c1f563bfcf07fd315f89d4` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x9380d8db2cafbb7c9c2c2a47c96db061fc7f368f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x9546320a15179d0f4ac6f5dc0996c43fa87325b0` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x95d0e869271aa731ebc3f4bf6046636493470b3a` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x96f4bf695ed277aecd44fc176d4f2643ba18f57c` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x98216d5f0451b93a3747148b1b6247f6bfe3b385` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x985323cd58346d83e0a90ab6b8fec7025fce20a7` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x9a4dcbcb82fac32580dc419fab3b8226868631ea` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x9ae6d606d9ca14c59b703494bea2d8870e5c97ed` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x9bc06ed9cd3c15eee13b05ce52442d22f060ac2b` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0x9f1837a88cd992b693c266aa6a4254a8644ae99b` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xa033535983d1abcc2648af730edcb198909903d7` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0xa1d0ad01a7ae157d7941fd8a7e67094361a6bdc5` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xa32b572f94eae1638b7076565d06ca196ce6558d` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xa357efdaf20a1b3498400b029314a826b20ae61e` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xa476a54bdd5ff4a900496877ec599f8840034fd7` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xa671d7d0c571e5b92510de6c5d0b5c1635ec8791` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xa83a29e98b0177138dddcc3a4b6536442d22c5c1` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xa9502766df45f1bbdc4ea55a3fc38053be25cc68` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xa98c2e26a22c17d1199327895a737463abd047c3` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xab2785e38c3f21670d85f1889ff65cef7f4e8937` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0xac942b1acbbb080d30421c8a3ab20a73fa519bdb` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xae27e63307963850c4d30bfba78fc1116d7b48c3` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xae898842ee80ffa9c45a4802fabf471f3d50b423` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xb0b0f7f9a860dbd92fe645bb88e90f8b8b2a08b8` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xb229353e8d34349e8e2951d06642902c87f644b1` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xb450162dd2278bf2db6bb53d5010b54b390ce5b7` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xb624888498c057b5398ef34898efc3d0fbf89489` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xb69aa1583aeea760fb18e55572cbfefca6188dde` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xb6f20b02c6e7e7d4594dc1acd76bb20aaa679725` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xb740472c650fe949931b9df0cb253b48c80c82de` | non_address_book | unknown | unknown | unverified | n/a | `0x30fb61178f39c0452ced4ad9a7fec3344cb10b2e` |
| unverified unclassified | UnnamedContract<br>`0xb7f600845e4649ee5b8ee16d44d91bc0ee65f4ea` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xb88d66e7721a20b58e7d18d81cdb9682307399ba` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xba51d09224e14caef5ab6f3c9e8f3b9d7f896eb4` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xbc07ceae5a1d18ad6035b4c904a3b70b6e152f0e` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xbd56909c5261ad1787a561ba031c9fba7d17ef81` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xbd804a38fdeee47695ced968f6416adfb6054921` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xbe76f35bd6676c233bd8b6493fecd3d8e6f615ef` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xc1529e13a5842d790da01f778bf23a3677830986` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xc1593302979e5e8e16e53c3303bf99ffa319d314` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xc21a7b1e58356892f606bee801a00c7bad72edf7` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xc66e94d2acaebab0d0314a01666b64b88ababc42` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xc777eb53b224ab27dd348d2a678bfd20ce913277` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xc8270d4a1c6b552b242db93b10056288b5e23725` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xce02a2fb42d93438e508a32e80555add2fd8daff` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xcf6a209df4c745534c97086e7e4d58ee93fbe689` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xd28490e975a49ce009163bb9feb566133ace4ed2` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xd7e6500dfb81a5b2553b7604cb55305aa7db949f` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |
| unverified unclassified | UnnamedContract<br>`0xd99d9d46af82d7c82913c2a6a21258e829e2f10e` | non_address_book | unknown | unknown | unverified | n/a | `0xbf8d706c844f1849b063870a42417c20227276f6` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [docs.gnosischain.com/bridges/audits](https://docs.gnosischain.com/bridges/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [202510-Gnosis-Bridge-USDS-Upgrade.pdf](https://github.com/OmegaAudits/audits/blob/main/202510-Gnosis-Bridge-USDS-Upgrade.pdf) | Omega | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [bridge-USDS-upgrade3.pdf](https://github.com/cducrest/audit-reports/blob/main/bridge-USDS-upgrade3.pdf) | Gnosis Ltd (internal) | Audit | 2025-11 | fresh | Direct | address | matched | 2 | 0 | 0 | 7 | high |
| [Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf](https://docs.gnosischain.com/assets/files/Omega-Gnosis-Hashi%20Final%20Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf) | Code4rena | Contest | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf](https://docs.gnosischain.com/assets/files/g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf) | g0 | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 55 | high |
| [Omega - Gnosis Bridge - final report-6a87d4840b00d3944437f59f17a58cc1.pdf](https://docs.gnosischain.com/assets/files/Omega%20-%20Gnosis%20Bridge%20-%20final%20report-6a87d4840b00d3944437f59f17a58cc1.pdf) | Omega | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf](https://docs.gnosischain.com/assets/files/dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf) | ChainSafe | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf](https://docs.gnosischain.com/assets/files/ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf) | ChainSecurity | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [TokenBridge Audit by Quantstamp - OmniBridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf](https://docs.gnosischain.com/assets/files/TokenBridge%20Audit%20by%20Quantstamp%20-%20OmniBridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [TokenBridge Audit by Quantstamp - AMB Bridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf](https://docs.gnosischain.com/assets/files/TokenBridge%20Audit%20by%20Quantstamp%20-%20AMB%20Bridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [SmartDec Security Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf](https://docs.gnosischain.com/assets/files/SmartDec%20Security%20Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Peppersec Initial TokenBridge Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf](https://docs.gnosischain.com/assets/files/Peppersec%20Initial%20TokenBridge%20Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf) | Peppersec | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf](https://github.com/omni/tokenbridge/blob/master/audit/quantstamp/POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf) | Quantstamp | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 61 | high |
| [POA-Network-Token-bridge-security-assessment-report.pdf](https://github.com/omni/tokenbridge/blob/73d500210546e2959536dc569f1aec5752077225/audit/quantstamp/POA-Network-Token-bridge-security-assessment-report.pdf) | Quantstamp | Audit | 2020-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |
| [POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf](https://github.com/omni/tokenbridge/blob/73d500210546e2959536dc569f1aec5752077225/audit/smartdec/POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf) | yAudit | Audit | 2019-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 58 | high |
| [POA-Network-Token-bridge-security-assessment-report.pdf](https://github.com/omni/tokenbridge/blob/73d500210546e2959536dc569f1aec5752077225/audit/peppersec/POA-Network-Token-bridge-security-assessment-report.pdf) | Peppersec | Audit | 2018-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [HashiMay2023.pdf](https://github.com/gnosis/hashi/blob/main/audits/HashiMay2023.pdf) | unknown | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [g0-HashiMar2024.pdf](https://github.com/gnosis/hashi/blob/main/audits/g0-HashiMar2024.pdf) | g0 | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21067] docs.gnosischain.com/bridges/audits — no match: The document is a summary page listing multiple audits with links to repositories, but does not provide a clear scope section with specific contract names. The only explicit scope mention is for Hashi integration, which excludes GiriGiriBashi.sol, but no individual contract names are listed. Other audits reference repositories without specifying which contracts are in scope.
- [21068] 202510-Gnosis-Bridge-USDS-Upgrade.pdf — no match: Extracted contract names from scope section and findings headers. Audit date from cover page.
- [21069] bridge-USDS-upgrade3.pdf — matched: All contracts explicitly listed in the Scope section of the audit report.
- [21070] Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf — no match: Extracted all contracts from the scope section and findings. The audit date is from the report title 'GnosisHashi FinalAuditReport June27,2024'.
- [21071] g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf — no match: Extracted contract names from listed files in three GitHub repositories. Audit date inferred from 'March 2024' on cover page.
- [21073] Omega - Gnosis Bridge - final report-6a87d4840b00d3944437f59f17a58cc1.pdf — no match: Scope section states audit concerns Solidity files in repository, and findings are organized by contract file names.
- [21074] dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf — no match: Contracts identified from fixed issues section; no explicit scope table; date inferred from 'August 2023'.
- [21075] ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf — no match: Extracted 25 contract names from the scope section listing files in Omnibridge and Tokenbridge repositories. Audit date found on cover page: September 07, 2021.
- [21077] TokenBridge Audit by Quantstamp - OmniBridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf — no match: The provided text is a 404 error page from Gnosis Chain documentation, not an audit report. No contracts or audit date could be extracted.
- [21078] TokenBridge Audit by Quantstamp - AMB Bridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf — no match: The provided text is a 404 error page from Gnosis Chain documentation, not an audit report. No contracts or audit date could be extracted.
- [21079] SmartDec Security Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf — no match: The provided text is a 404 error page from Gnosis Chain documentation, not an audit report. No contracts or audit date could be extracted.
- [21080] Peppersec Initial TokenBridge Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf — no match: The provided text is a 404 error page from Gnosis Chain documentation, not an audit report. No contracts or audit date could be extracted.
- [21081] POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf — no match: Extracted contract names from the audit report's scope, findings, and file hashes appendix. The report covers the POA Network token bridge contracts.
- [21082] POA-Network-Token-bridge-security-assessment-report.pdf — no match: No reason recorded
- [21083] POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf — no match: All contracts listed in compilation output are considered in scope. The report explicitly states 'The total LOC of audited Solidity sources is 2297' and lists all compiled contracts.
- [21084] POA-Network-Token-bridge-security-assessment-report.pdf — no match: The report lists two smart contracts explicitly: RewardByBlock.sol and HomeBridgeErcToNative. No audit date found in the document.
- [21085] HashiMay2023.pdf — no match: Scope mentions all Solidity files in a GitHub directory, but only two contracts are explicitly named in findings. Audit date inferred from 'May 2023' in title.
- [21086] g0-HashiMar2024.pdf — no match: Scope section lists 9 contracts with file paths. Audit date is March 2024, interpreted as last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | IBridgeValidators | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | IDaiUsds | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | IForeignBridge | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | ISUSDS | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | IWETHOmnibridgeRouter | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | IXDaiBridgePeripheral | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | BridgeRouter | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | SavingsDaiConnector | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | XDaiBridgePeripheral | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | XDaiForeignBridge | unmatched — not counted | — | listed in scope | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | XDaiBridgePeripheralForUsdsPreUsdsUpgrade | unmatched — not counted | — | mentioned in findings section | no |
| 202510-Gnosis-Bridge-USDS-Upgrade.pdf | XDaiBridgePeripheralForDaiPreUsdsUpgrade | unmatched — not counted | — | mentioned in findings section | no |
| bridge-USDS-upgrade3.pdf | BridgeRouter | unmatched — not counted | — | listed in scope as new bridge router implementation contract | no |
| bridge-USDS-upgrade3.pdf | TransparentUpgradeableProxy | own contract | 0x9a8736… (selected) `0x9a873656c19efecbfb4f9fab5b7acdeab466a0b0` — deployed 2025-04-28 13:40:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bridge-USDS-upgrade3.pdf | ProxyAdmin | unmatched — not counted | — | listed in scope as proxy admin for the bridge proxy | no |
| bridge-USDS-upgrade3.pdf | XDaiForeignBridge | unmatched — not counted | — | listed in scope as new bridge implementation contract | no |
| bridge-USDS-upgrade3.pdf | XDaiBridgePeripheral | unmatched — not counted | — | listed in scope with bridge router's address as constructor arguments | no |
| bridge-USDS-upgrade3.pdf | XDaiBridgePeripheralForDaiPreUsdsUpgrade | unmatched — not counted | — | listed in scope with bridge router's address as constructor arguments | no |
| bridge-USDS-upgrade3.pdf | XDaiBridgePeripheralForUsdsPreUsdsUpgrade | unmatched — not counted | — | listed in scope with bridge router's address as constructor arguments | no |
| bridge-USDS-upgrade3.pdf | USDSDepositContract | own contract | 0x5c183c… (selected) `0x5c183c8a49aba6e31049997a56d75600e27ff8c9` — deployed 2025-09-12 14:00:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| bridge-USDS-upgrade3.pdf | HomeBridgeErcToNative | unmatched — not counted | — | listed in scope as new home bridge implementation on Gnosis chain | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | Hashi | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | Yaho | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | Yaru | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | Adapter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | BlockHashAdapter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | DendrETHAdapter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IDendrETH | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | ElectronAdapter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | ILightClient | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | Merkle | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | Receipt | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | TelepathyAdapter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | ITelepathy | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | SimpleSerialize | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | Reporter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IAdapter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IBlockHashAdapter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IHashi | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IHeaderStorage | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IJushin | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IMessage | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IMessageHashCalculator | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IMessageIdCalculator | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IReporter | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IShoyuBashi | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IShuSho | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IYaho | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | IYaru | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | ShoyuBashi | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | ShuSo | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | HeaderStorage | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | MessageHashCalculator | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | MessageIdCalculator | unmatched — not counted | — | listed in scope | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | BasicForeignBridge | unmatched — not counted | — | mentioned in scope as XDAI bridge upgrade | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | BasicHomeBridge | unmatched — not counted | — | mentioned in scope as XDAI bridge upgrade | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | BasicHomeAMB | unmatched — not counted | — | mentioned in scope as AMB upgrade | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | BasicForeignAMB | unmatched — not counted | — | mentioned in scope as AMB upgrade | no |
| Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf | HashiManager | unmatched — not counted | — | mentioned in findings as used by bridges | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Hashi | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Yaho | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Yaru | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | HeaderStorage | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | MessageHashCalculator | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | MessageIdCalculator | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ShoyuBashi | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ShuSo | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | MessageRelay | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | VersionableBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BasicBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Upgradeable | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Validatable | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Ownable | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Claimable | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | DecimalShiftBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ValidatorStorage | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ForeignAMB | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | HomeAMB | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BasicForeignAMB | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BasicHomeAMB | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BasicAMB | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | AsyncInformationProcessor | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ForeignAMBWithGasToken | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | MessageDelivery | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | MessageProcessor | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | VersionableAMB | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | EternalSotrage | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Message | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ArbitraryMessage | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ValidatorsFeeManager | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BlockRewardBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BaseFeeManager | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | FeeTypes | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BlockRewardFeeManager | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ERC20Bridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BasicForeignBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BasicTokenBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | InitializableBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | Initializable | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | OtherSideBridgeStorage | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BasicHomeBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | HomeOverdrawManagement | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BaseOverdrawManagement | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | RewardableBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | GSNForeignERC20Bridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | FeeManagerErcToNative | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | FeeManagerErcToNativePOSDAO | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | ForeignBridgeErcToNative | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | HomeBridgeErcToNative | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | RewardableHomeBridgeErcToNative | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | XDaiForeignBridge | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | SavingsDaiConnector | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | InterestConnector | unmatched — not counted | — | Listed in scope files | no |
| g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf | BaseRelayRecipient | unmatched — not counted | — | Listed in scope files | no |
| Omega - Gnosis Bridge - final report-6a87d4840b00d3944437f59f17a58cc1.pdf | ERC20Bridge | unmatched — not counted | — | Findings section for ERC20Bridge.sol | no |
| Omega - Gnosis Bridge - final report-6a87d4840b00d3944437f59f17a58cc1.pdf | InterestConnector | unmatched — not counted | — | Findings section for InterestConnector.sol | no |
| Omega - Gnosis Bridge - final report-6a87d4840b00d3944437f59f17a58cc1.pdf | SavingsDAIConnector | unmatched — not counted | — | Findings section for SavingsDAIConnector.sol | no |
| dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf | ERC20Bridge | unmatched — not counted | — | mentioned in fixed issues | no |
| dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf | InterestConnector | unmatched — not counted | — | mentioned in fixed issues | no |
| dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf | SavingsDaiConnector | unmatched — not counted | — | mentioned in fixed issues | no |
| dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf | XDaiForeignBridge | unmatched — not counted | — | mentioned in fixed issues | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | BasicOmnibridge | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | InterestConnector | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | OmnibridgeInfo | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | ForeignOmnibridge | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | AAVEInterestERC20 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | CompoundInterestERC20 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | Upgradeable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | BasePaymaster | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | ERC677BridgeToken | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | BaseRelayRecipient | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | TokenPaymaster | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | GsnEip712Library | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | AMBBridgeHelper | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | Erc20ToNativeBridgeHelper | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | ArbitraryMessage | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | PermittableToken | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | AsyncInformationProcessor | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | HomeAMB | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | MessageDelivery | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | CompoundConnector | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | ForeignBridgeErcToNative | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | GSNForeignERC20Bridge | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | InterestReceiverBase | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | InterestReceiverStakeBuyback | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf | InterestReceiverSwapToETH | unmatched — not counted | — | listed in scope table | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeAMBErc20ToNative | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeStakeTokenMediator | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BlockReward | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ArbitraryMessage | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | PermittableToken | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BaseMediatorFeeManager | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ERC677BridgeToken | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | RewardableBridge | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BaseFeeManager | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ERC677BridgeTokenRewardable | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeFeeManagerAMBErc20ToNative | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BasicAMBErc677ToErc677 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | Sacrifice | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | TokenReader | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | InterestReceiver | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BasicAMB | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignAMBErc20ToNative | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignAMBErc677ToErc677 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeAMBErc677ToErc677 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignAMBNativeToErc20 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeAMBNativeToErc20 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignAMB | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeAMB | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ERC677MultiBridgeToken | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignBridge_ERC20_to_ERC20 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeBridge_ERC20_to_ERC20 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignBridge_ERC20_to_Native | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeBridge_ERC20_to_Native | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignMultiAMBErc20ToErc677 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeMultiAMBErc20ToErc677 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignBridge | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeBridge | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | RewardableValidators | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignStakeTokenMediator | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BridgeValidators | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | TokenProxy | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | Address | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | DecimalShiftBridge | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ChaiConnector | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BaseRewardAddressList | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | VersionableBridge | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | VersionableAMB | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BasicMultiTokenBridge | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | Message | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ForeignFeeManagerAMBNativeToErc20 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | HomeFeeManagerAMBNativeToErc20 | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | BaseBridgeValidators | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | MintableToken | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | StakingAuRaTokens | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | OwnedUpgradeabilityProxy | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | EternalStorageProxy | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | Proxy | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | UpgradeabilityOwnerStorage | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | EternalStorage | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | UpgradeabilityProxy | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | UpgradeabilityStorage | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | IPot | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | IAMB | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | ERC677Receiver | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | IRewardableValidators | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf | IGasToken | unmatched — not counted | — | listed in scope and findings | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ERC677BridgeToken | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ERC677BridgeTokenRewardable | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ERC677Receiver | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | IBlockReward | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | IBridgeValidators | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | IBurnableMintableERC677Token | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | IOwnedUpgradeabilityProxy | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | IRewardableValidators | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | Migrations | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | Message | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | SafeMath | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BlockReward | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | Staking | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ClassicEternalStorageProxy | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | EternalStorage | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | EternalStorageProxy | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | OwnedUpgradeabilityProxy | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | Proxy | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | UpgradeabilityOwnerStorage | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | UpgradeabilityProxy | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | UpgradeabilityStorage | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BaseBridgeValidators | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BaseFeeManager | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BasicBridge | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BasicForeignBridge | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BasicHomeBridge | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BlockRewardFeeManager | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BridgeValidators | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ERC677Bridge | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ERC677BridgeForBurnableMintableToken | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | FeeTypes | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | OverdrawManagement | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | Ownable | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | OwnedUpgradeability | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | RewardableBridge | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | RewardableValidators | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | Sacrifice | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | Validatable | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ValidatorsFeeManager | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | BasicForeignBridgeErcToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | FeeManagerErcToErcPOSDAO | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ForeignBridgeErc677ToErc677 | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ForeignBridgeErcToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | HomeBridgeErcToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | POSDAOHomeBridgeErcToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | RewardableHomeBridgeErcToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | FeeManagerErcToNative | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | FeeManagerErcToNativePOSDAO | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ForeignBridgeErcToNative | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | HomeBridgeErcToNative | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | RewardableHomeBridgeErcToNative | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ClassicHomeBridgeNativeToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | FeeManagerNativeToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | FeeManagerNativeToErcBothDirections | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | ForeignBridgeNativeToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | HomeBridgeNativeToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | RewardableForeignBridgeNativeToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf | RewardableHomeBridgeNativeToErc | unmatched — not counted | — | listed in compilation output | no |
| POA-Network-Token-bridge-security-assessment-report.pdf | RewardByBlock | unmatched — not counted | — | Listed in source code section: 'POA consensus. The RewardByBlock smart contract only. RewardByBlock.sol' | no |
| POA-Network-Token-bridge-security-assessment-report.pdf | HomeBridgeErcToNative | unmatched — not counted | — | Mentioned as a contract in the incremental audit section: 'HomeBridgeErcToNative 1. setBlockRewardContract improvement' | no |
| HashiMay2023.pdf | MessageExecutor | unmatched — not counted | — | mentioned in finding 1 | no |
| HashiMay2023.pdf | Yaru | unmatched — not counted | — | mentioned in finding 2 | no |
| g0-HashiMar2024.pdf | Hashi | unmatched — not counted | — | listed in scope | no |
| g0-HashiMar2024.pdf | Yaho | unmatched — not counted | — | listed in scope | no |
| g0-HashiMar2024.pdf | Yaru | unmatched — not counted | — | listed in scope | no |
| g0-HashiMar2024.pdf | HeaderStorage | unmatched — not counted | — | listed in scope | no |
| g0-HashiMar2024.pdf | MessageHashCalculator | unmatched — not counted | — | listed in scope | no |
| g0-HashiMar2024.pdf | MessageIdCalculator | unmatched — not counted | — | listed in scope | no |
| g0-HashiMar2024.pdf | GiriGiriBashi | unmatched — not counted | — | listed in scope | no |
| g0-HashiMar2024.pdf | ShoyuBashi | unmatched — not counted | — | listed in scope | no |
| g0-HashiMar2024.pdf | ShuSo | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 507 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 278 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=5, medium=3
- Match method counts: address=2

Zero-match audit list:

- [21067] docs.gnosischain.com/bridges/audits
- [21068] 202510-Gnosis-Bridge-USDS-Upgrade.pdf
- [21070] Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf
- [21071] g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf
- [21073] Omega - Gnosis Bridge - final report-6a87d4840b00d3944437f59f17a58cc1.pdf
- [21074] dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf
- [21075] ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf
- [21077] TokenBridge Audit by Quantstamp - OmniBridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf
- [21078] TokenBridge Audit by Quantstamp - AMB Bridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf
- [21079] SmartDec Security Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf
- [21080] Peppersec Initial TokenBridge Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf
- [21081] POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf
- [21082] POA-Network-Token-bridge-security-assessment-report.pdf
- [21083] POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf
- [21084] POA-Network-Token-bridge-security-assessment-report.pdf
- [21085] HashiMay2023.pdf
- [21086] g0-HashiMar2024.pdf

Fork inheritance lineage and inherited audits are included when available.
