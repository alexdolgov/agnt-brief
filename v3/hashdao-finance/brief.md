# Agentic Audit Brief: HashDAO Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: HashDAO Finance (`hashdao-finance`)
- Website: [https://www.hashdao.finance](https://www.hashdao.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, optimism
- Contract surface: 67 unique implementations (125 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,236,912.77
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for HashDAO Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 67 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 26
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/40
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 67
- Raw deployments: 125
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x2c75050d7d380f07e3a9bd77bb43d304e77701c4`; optimism `0xbc19ee05cb03e7837c9ac2412fa4a36671a7da6c` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 7 deployments: optimism `0x40adcc831587eb463d14707fd42438ea9e534021`; optimism `0x54b00b742b4edc775ef929b669bd65e7a198b566`; optimism `0x6736e1f034db01abd42c88800ad079c86b5fb861`; optimism `0x99fe96b9eea24b4e71ac1a56f2c1886bbca22540`; optimism `0xed5061c44bdbde4a16825756570774cad68fd60a`; optimism `0xf96aad4942d8a0394158fd960003397690fb795d`; arbitrum `0x92aee27dcc5373423d13028b1b2bf4ef61e6a39d` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 2 | optimism | n/a | 2 deployments: optimism `0x5556af10c1966ebf0b131295a2af13deec771bce`; optimism `0x584a4fc89f8bba3e836ad14a205fb022de07fca8` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x60d755ba869552662fe2c2c47b917605e6ed3cbe`; optimism `0xeab4c6c26a1f296e8e0033ffb817d5311c51299d` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x9d66c32e137e618bee9669ae096fd59ba925aaa5`; optimism `0xd6c52a5b720d81ed9bab0df34f1e00f7d2c2345b` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0x019622fb05dd0c80751798949e795ff5d5e3a61f`; arbitrum `0xcd7a1b22d239a4395dd8ab8f5dbcdcee2132dbc4` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0f48ac8272edd41e5f21a85ffea0285ff0d28ee5`; arbitrum `0x958882fda110febd41536e45034bebff2a815006` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x278fe1be6202fa12a4c18062a69bcfb42ad1f398`; arbitrum `0x90d11b8de2b30a84cb7e6cf6188581ec08b1bf82` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5905e0eca5f93d8359621feb7c2932d384141c76`; arbitrum `0xb557c071bae7dc3aa2366cd0fc0477b45eb696f1` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x99fe96b9eea24b4e71ac1a56f2c1886bbca22540` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x09f12be3b88587faf2d3d951a9366ab2a7babaf4`; arbitrum `0xa03cae4dc6222690a14fdaa80efeb02d4d6fcf18` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x94ecc84a42af7e8c05b0ac6a4cecbc278ef35096` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x563b9e4556f9057d7ff1a049e28b236f389513da`; arbitrum `0x8bd82036769d7033a703b675e9476167e63eec92` | ⚠️ Unaudited |
| EsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xb7047f8ce977b074434e6379384f6226ac9aef47`; optimism `0xda4f463f4f449a62601f3247e4cd10568054ff87` | ⚠️ Unaudited |
| EsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x20cc0f5701af17effe10cdcc8265abcd5e011fb7`; arbitrum `0xa0172947b886eedc8d8b2177d6213083fd750f11` | ⚠️ Unaudited |
| EsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x375729535a9c4d6d16e36f0466d1a27d05d33700`; arbitrum `0x5c9834b648fa4dbbc2de0438bf6224af0b62abc8` | ⚠️ Unaudited |
| ETHUnwrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xcec45b47f809f7ae4c47fbcd4df37a71a8f9c5d8`; arbitrum `0xec59fb45ed758ef81c638a6f658688e363734fb7` | ⚠️ Unaudited |
| FeeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: optimism `0x2bd9da075cb1a897bd16d20f7c5f19a2741a2d74`; optimism `0x31241aeedb49eba408bcf7b276059ce367785003`; optimism `0xb557c071bae7dc3aa2366cd0fc0477b45eb696f1`; arbitrum `0x1295fdc7615ad94acb8eed07ffed19113acfc32a`; arbitrum `0x133bec4ac9ccbcc479aa9b9cb7a1c916a72485d6` | ⚠️ Unaudited |
| FeeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x426d9385a70859c815d84d3ad2d8937518db7e73`; arbitrum `0x9d66c32e137e618bee9669ae096fd59ba925aaa5` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xaa1919fd3b6f6e11e2c7f22147c48af2b0e4ff03` | ⚠️ Unaudited |
| LiqLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x703b9994c47ba7521b432b8fac0a954cf6f1ebf8` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: optimism `0x048e77257df92787cc1af4015b6e9a7d521775a2`; optimism `0x52d7096812b8d37d351e424e541b9a5424fd63f2`; optimism `0x5dad2ee9e3896172554516e5d7841184eed46125`; optimism `0xfc453553a9bdfe5cefd880aebcc026fd1ed4d881`; arbitrum `0x7d5332df67aec9cb1df73ba8115e6a9211cf021f`; arbitrum `0x947af1d7926de7edf3bd5411ce5f79bd09e551cd` | ⚠️ Unaudited |
| MasterChefV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: optimism `0x958882fda110febd41536e45034bebff2a815006`; arbitrum `0x0517a00f1dbb2ec4adbe422255633d5b0a4beade`; arbitrum `0x72f19de0076573c658651a6b63da510c19436ab1`; arbitrum `0x824321ef6a7e7ce3dc78f6a00b68587e1142f4d6`; arbitrum `0x882105478f2193001f8fed8399af93f31cc42f85`; arbitrum `0xcec45b47f809f7ae4c47fbcd4df37a71a8f9c5d8` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x172ef9fa593a55f01353366462523550762a3002`; arbitrum `0x7e7df88e6d6b65eaeaffb777c453a2d9d2be14f3`; arbitrum `0xb4e0e46cc733106f8f5b9845e2011b128a1ea39a` | ⚠️ Unaudited |
| OrderManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x955bd6d763973d2461f10e12b6ecc4ba7af7776b`; optimism `0xce4e6cf9d565234769d04b20354fd0e7f89872d5` | ⚠️ Unaudited |
| OrderManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x43c10395f89e49347207f3aa0edf21e2da5daf16`; arbitrum `0x4f405dc6210c8a4b0f26ec5c7b2b8e80a990f27d`; arbitrum `0x901c3faa2dc9b5a50a3480fb7283e63214003279`; arbitrum `0xa18be61f04b56d9234603ffa7056f174c951561b` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x3a436d99cb3a72578b2e91bb8a24c32eedd7a853`; optimism `0xd5826be6b7999cf38de403dafd96fff3ec66f006` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x6055896622859f91399b5e69ee45e90cd087f5c3`; optimism `0xf82408058e68941b3088cc22a86785af95434200` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: optimism `0x5476f8424f362c53029ee159b7d9fccb60ad6c51`; optimism `0xc61793892220c76813d08f1574440447225f42f2`; optimism `0xd59a8fff4efc7fc7aef9b1b0ff3e293a0447a530`; arbitrum `0x318b38b9f7b354b1c77e0ea5abe4cbcba517b451`; arbitrum `0xcc79139b99053078119ab7094bbd4e08efc12a0d` | ⚠️ Unaudited |
| PoolHook | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x25e842e8d7dbe6124961e05fd0efe9ce7abb0765`; optimism `0x87566d86e3caea5b8a06d73c4f8ee282f1dbb844` | ⚠️ Unaudited |
| PoolHook | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xb81316233de35fc8d7d3f63452bbade863a341b5`; arbitrum `0xed5061c44bdbde4a16825756570774cad68fd60a` | ⚠️ Unaudited |
| PriceReporter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xcc79139b99053078119ab7094bbd4e08efc12a0d`; optimism `0xcd7a1b22d239a4395dd8ab8f5dbcdcee2132dbc4` | ⚠️ Unaudited |
| PriceReporter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x26180d4fa111dbb122d5756323b3aa4bfdd40232`; arbitrum `0x6ce6fe900d1a0117c74871028666e28742193db4` | ⚠️ Unaudited |
| PriceReporter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xe407c59db7ce2f69738c13cc6b008992f2566f53`; arbitrum `0xe631aa51bf90e9b828f96ea80cd3d868787acf4c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: optimism `0xa0172947b886eedc8d8b2177d6213083fd750f11`; arbitrum `0x7c9d49af6be557f2ae30f907cd111b42eab7c9db` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x20cc0f5701af17effe10cdcc8265abcd5e011fb7`; arbitrum `0x84b7a2a5d7b2028e82ed8f60a48453d70a8fe103` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x2e80259c9071b6176205ff5f5eb6f7ec8361b93f`; arbitrum `0x2e80259c9071b6176205ff5f5eb6f7ec8361b93f` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8dc6efd57a13b7ba3ff7824c9708db24d3190703` | ⚠️ Unaudited |
| VeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x133bec4ac9ccbcc479aa9b9cb7a1c916a72485d6`; arbitrum `0x8b5264f0d38ca099a97fec2d3cf493a8311c73a5` | ⚠️ Unaudited |
| VeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xb7047f8ce977b074434e6379384f6226ac9aef47`; arbitrum `0xda4f463f4f449a62601f3247e4cd10568054ff87` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x989cc0e3726feae27bbea934bb040214ea953476) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x597f5aa40d380acecc4906778180748ebba818f2`; arbitrum `0x989cc0e3726feae27bbea934bb040214ea953476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b9c8b76176957a0448279da9b8cdebe94becd19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x303cc96d589df4d4343cd2391d10174ff58cf6d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x375729535a9c4d6d16e36f0466d1a27d05d33700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x52d510b6c66b10eed524b2ff81732412a55048e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x722b763b2e4f73b62d84a37edad4a16a950984e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x92aee27dcc5373423d13028b1b2bf4ef61e6a39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x95e92446d1339c1eb8f1de672cc40d3b6faec878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x963a0a97726ab86091a3f189e2ab07e2661be81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x98293ef4b96c513b939786e9e7f6686a63bd4972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa18be61f04b56d9234603ffa7056f174c951561b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcd00becadbb0fa418e5858314a289bf20f3a9b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdf40b7f0caf2210279e94033e7cb2da5fdc2a2b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x172ef9fa593a55f01353366462523550762a3002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x286fa4f931b46fe6c404614d3eabae5455fd8b87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x349c06e74dc19dc5d8e20a32449d59363a76c6dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5556af10c1966ebf0b131295a2af13deec771bce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c8210d95a07ff4e7799b7f4fa089bb7a2b64f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f5be32d7e97242d3c0cda9f7c26d447c21b0330` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97d4b001bd708a0da6d85e747795b59475273d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0a60ee81ca507ccb0acb200d4ab65b36d070e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb37c07087769186970e7c52386d7aea7927e1a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6a06dfee703a146d42f7fd8a0dfc70338bd917f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe80cdce96bf4825b32f08e9360a0187e71f1ed51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec161cab9fd373afa422e44cbc9e5e038abeacc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfdacc1aab258dfc598a7859b09b4fa29d354e7a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff0ebb477ef20f3feb921b4513d4dc37b73a0fe8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [HashDAO.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/April_2023/HashDAO.pdf) | unknown | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [app.solidproof.io/projects/hashdao](https://app.solidproof.io/projects/hashdao) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [app.solidproof.io/projects/hashdao](https://app.solidproof.io/projects/hashdao?audit=dc54b5c8-2954-4939-a653-7272083fe7b3) | SolidProof | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3000] HashDAO.pdf — no match: No reason recorded
- [3001] app.solidproof.io/projects/hashdao — no match: No reason recorded
- [3002] app.solidproof.io/projects/hashdao — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| HashDAO.pdf | AdminUpgradeabilityProxy | unmatched — not counted | — | — | no |
| HashDAO.pdf | UpgradeabilityProxy | unmatched — not counted | — | — | no |
| app.solidproof.io/projects/hashdao | Token | unmatched — not counted | — | — | no |
| app.solidproof.io/projects/hashdao | Token | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 1 |
| standard_library | 7 |
| needs_review | 32 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3000] HashDAO.pdf
- [3001] app.solidproof.io/projects/hashdao
- [3002] app.solidproof.io/projects/hashdao

Fork inheritance lineage and inherited audits are included when available.
