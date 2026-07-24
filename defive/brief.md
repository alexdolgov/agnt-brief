# Agentic Audit Brief: DeFive

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

- Project: DeFive (`defive`)
- Website: [https://defive.com/swap](https://defive.com/swap)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: sonic
- Contract surface: 264 unique implementations (264 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $310,753.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for DeFive in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 264 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 247
- Unique implementations: 264
- Raw deployments: 264
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

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BurnToFunBribeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbeb62b3d8111ee0550f5baa6c430885d67934a6a` | ⚠️ Unaudited |
| BurnToFunCampaign | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x09b133cd6e4caefe97d5f0167356b8be6a60fcf5` | ⚠️ Unaudited |
| BurnToFunCampaignFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaf563bc608c1ccfd787434aa14a3716fcc655500` | ⚠️ Unaudited |
| BurnToFunFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1dc2b2c4f1495d30e950ec7ee77a1d3864834de8` | ⚠️ Unaudited |
| BurnToFunTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x096d7a6d17cc011cb3918f3d1574860998b1ca9c` | ⚠️ Unaudited |
| BurnToFunVestingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x089848ed7d61419b9b61408385f1e84e4d8320a0` | ⚠️ Unaudited |
| DeFiveClaiming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0594d73e517aec7a824aa89c1498b26df8c442e9` | ⚠️ Unaudited |
| DeFiveFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x47524ca6578e172878abf6fd6f3e1cd106c551e6` | ⚠️ Unaudited |
| DeFiveLpClaiming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2e5a175591be074a23ae4491bcf4942a9b4d8d9f` | ⚠️ Unaudited |
| DeFiveMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc4c35416ffa712f4cef5ac03d0c505b173e9c8e4` | ⚠️ Unaudited |
| DeFiveRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc159d904ca8c2449df0ae4836197278f2f68c725` | ⚠️ Unaudited |
| FIVE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x15f7a33cc1e4744f100f03bb13d7eb67c5c0a351` | ⚠️ Unaudited |
| LumosCards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xee4c8d3221122aeadf1a08fcdd5aa90fba1682ab` | ⚠️ Unaudited |
| MasterFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0aed2bc9a61f88fd118262094fd10d1723c8832d` | ⚠️ Unaudited |
| RareWiggies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x871b671a8e5da1bab132e1034684b1b8c1225257` | ⚠️ Unaudited |
| SNSToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7b0a41f0c17474e41a0c36c0bf33b9aed06ee9f5` | ⚠️ Unaudited |
| Wiggies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x31e7aac987c7b304ab0822cfad6e736ce7c72f3d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (247)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0061459ffc8a1d5a1f12cad2ef53d2904a5fdccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0526fe6b583dc07a1574d1752810b5d0af9cce30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x053e513ba11080e53f304309f8308349ebef1bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0cdafbfdfe29b76685962fd19828827e69a53115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0d11bc6f7127a895af59af0990443717ea71cd5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0d16580d34177e98b7e3e7b122fba37b48d508ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0d43599e32a729fd85ee031d7e9d02274e27613a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0ec7491ebbb1fff20ba37b97aa0e01c0e439c5a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0fc9db947e141951dcb2c4686bd4c783c695ef4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0ff844223be800a1ae9c0181e622b4d86d451c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x132c1b04b621b1307c9d313f7388c7cc5e6198bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x13763e4f86d421dc01d5786dff2d6fc9b0eeb824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x13b37ffe32046e56cc8060eb5a5e8579a3eb2f2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1415cb20749f55ebd30b0465cbc2199b5cf3f185` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1618e62c14270c0785d465a788ce5081d1e9b396` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x16709231eff1410fecad44e041a4ac75332c74b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1767511c8880c22965f937e68f1f3630e70b100a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x181aca0878d26a826863a36e2be5e1ee5b7d826f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x18d3e822145d58597bdac9f7068a3dba27e4a73a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x18dd977f79fe5409e1e9b2f11b3a4be160703929` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1987600f0cf8fe701cee66a85d1d0c31dee9f671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1a2056a037b8d46e71f26ce334714b7254699c99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ae0609fbba472c7f1feca41fc29ec6742245ab3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1bf31ca13830f96674cd70f7b8ddb606ded2cf5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1bf7cec283180928582ddecb9e683015a9ef2cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1c148d4f30f2c74ceea670084ac4db2dba277ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1c6c63639a06dc2a1f0f204db6043c02d6ec8bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ded89a4c3d64ff3a6b006fd661e23d1af4d5cd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1e00c48954d0c615a5bc9cb3a25ba25edba0f126` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1f59f468fc6979e322159715873b095ddbc572c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x21b6a6aba82817d825de0fd65bb4da889b5c54b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x22e6cd5a7670cbb7a31f155a9d5eda7dc3f67e1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x265b1b1222f9937b681aaaf933f26775c9a08ee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2788d896b304119e721bc98ce32a0dfcb3315773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x282135b61bbe81cd7ed5db0c1d8cf2e78250159b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x283e6389aa73d157b048d00300806812003c90c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x29b0480aaed3a90828843a5abcfbbf556655bb12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x29d8ea83358a5f7c6076ffc2bfc591799fb3da85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2a79c39ea3433174333c8c8dacc6473532a43476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2a7be689c843ccc93ac963ecff65df38028d82bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2b0088ebb3e104f61e610e55a9e17d75560ad3c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2b1cd069cfd921bf9a84a7d820962c59305756e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2be62b2598c254061d1737abce08a79462cb4c46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2c7b4ad7c9b3f45729f21abd7d05b8cf08a43299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2cbf29307ebc806bc98dc16a72466395bcef8be0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2ee1d003ab1bdaf1e6896b3d77ab25aedb1bd2c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x30718083daa01a40eeb4f99d10dc889e75561afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x308b521844f803a533fa6629b1de9faa555a2f9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x31d502855b87cf3f7e258e7b8b41391548fd4c6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x322d63703a93aae3362761dde1b6cb488652e5fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x32576f695b08e96a2d100d7485c4eff64d83ea52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x34ba78b82cd069f12f81acd51992b51709abc2d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x360a943010c8b870aa3d224d706e06f35f949284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x37147e95fb8d90a07873289d0ccc7a4c3f7d8b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x38cd94792d212d56c33416f5de54fda8624af69c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3a686041678765686b100964909ecf1391c6437e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3d4c64c44aa10e9a1ff6a22e74e6133eb4b9b5eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3e113ebecf8563983ba1aeb38eedc7b1f4cb8be1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3ef19639c96a5662a2fcc357670ef161367c17c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3ff290d0aa99931d41881d7786057827cc859d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x40096c4a689a65a70dc2ce5fa633dcf8efd1567a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x402d0a567eb7675eca3d7854026a0a58486578c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4388ec358ef3c395b5259b62b4c6620eff456c64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x43dc8b2abd6984d745b8ab0c54b422260c5f86b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x43de2e17e7e7439deb3f001f781f710259fdc3c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4767f54d4f90af85151ebd9da16b9b8c9f568315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x48152363599849d141dabe260cf101a8cf5aca58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x48b86a16fc14df6a94ca9dfeae3b9d5684dc7f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x493a441ab3e35e234ef3b05573114123208a4e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4ade5608127594cd9ea131f0826aea02fe517461` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4cbd0c133fa20e43b5d72edf9ceb23b0190105ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4dc9919de284365491b2f5862e0e10bf1d1627c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4eec97a85ed6a6b35eeffb3ef22c0cb302bf7893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4f89c34295de6623759977d037e0e6f7b45e5686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x522e4889faace7b69fe81e7b8ea20e96ac043c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x528a2209c4f19d4488ddb4d17ff709e562e02974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x52b56b004f27cfa3b9b7731bbf01526ef38736ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x52c10923ddc48005261953abf3377de4dffb8382` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x541341a37a5e14a195474a896323a890cbd11171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x54443ea51b82ea7dc779fe40b3a64e77b0451fd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5548db5d02e9fe4a56673916db7982a62d16ec34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x55e456ae66e0ff073d7a212aebd65850abc3fc5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x561d648577620e3c0b60ae76d73cf64b8d4a8995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x569f345a451f295dc2a0c40e7452df6f93e9d3c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x57d6700a870c37b71efabc6f6085a5091c7e4e6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5a3ac8cbe69ac87f54870e6d617f73ff001bc971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5b21b2e4b210dc5048f472801d2a1e00f09ffbaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5cbbbfa1b6f09a229de5a597f8830c6b549afd58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5d1c45dfc9d621edf15ce56fd24415f0b68ef782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5dd35f23946217ca456122fb2092c43c5bc50d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5ebb552b09209a742bfe39fa0bb35b15766df3f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5f87aa0d46d3cd1e7a6b29f519e5bacf5b24bd2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x60068b704f754dffdf58e67c95482e3c7ffa7b6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x63017412c09f55418843540cf93b721c66111bcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6531bd837f61d7dc722ab6611b959ad58f74072b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x66b877f902a2066d0e559cc5b6323deb85efdc84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x67c28fbf96031bd658052912bc324fb3e03f08bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x698f4e2846a425e33b15efab19c40822ec907f08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x69904ba916ef2dd39a1c797b2ecc251d2856f19c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6b67779f34d4c73ea3ede2f5c5985d51019507e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6bb2879650aef81e89073de60f2b8c8cd44fb780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6ca17e6732e54e90b90505946c30a1609611e85b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6e9ae59cd9cd9cb173b32e823f9d7ca63eb70b1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6f28396de19ad7142128724155e72bc2bbd66756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x70659a797d7aa6fb9881196ced545c593419d8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x71aaf77deff5fc0c2ec950c77860387464546c96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x71f35837dc5ca14d808eb324acd660af08eca4ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x726c10d3eb921a2ed35b51c1a0a88d470df49d73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7761cbe03035dd21eca2bc040cfb3fd8b44e2b7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7a32c262c297ab8ed217d969f19d50e00caa36b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7adce7fff071b8a0255a0c3a787a05c965280b69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7b02176469e83e997e01db6137f90ab97eabe1e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7c39afa2049688863c7b75545ae2599a1c8c626c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7c6a016d3f0ffc7d1c1868c5fbb3ec3dc4cc6b60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7d5a4d5c9147ce3742a6164fa97a38c782c2107c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7d5aca69dd69fbbbfb8b39c6ab27f1b649721064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7e2b7acd7bc07b00bbfa150655c312974f5c01a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7f16e0b4935b050d8a466dc073adb54cf2b33c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x801f5ef921e9a5ffda31073130bcf97d1174dcda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x804cff5509b987167ce3e892b64bb24c8fbad3df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x809860c04b1b04ba3ff4c5fdc902582c5661285a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x82230f007e3170075ca6f213a9fb5ae6acf6459a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x82958071e0bacf9f1f6a7107c39adae583038f75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x836d1e5919a5f46774efb923e982c593450bd9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x83c1706cfaa6c2ad1f7c6d57e3d39c8056ed6eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x847240076f6a5684ba9f87df09e8d4bdb4fa1369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x84ab69e4e6bf69d0364fddc29e1c1f6ae96fb465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x85b9fb39b2fa2bd640afb9474e29aa2d97ef774b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x866c31bb18647fed30a6498d959372da2894c014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x87b10e725269b562a6268756a2a7a4c475ae3afc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8b1676dd62df3627a50aef0b5d4a5ff0555186f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8baf9772971d4637591d8c7dc30fb01326de755b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8bce18087fa15fa4b0b040352824c71f9a9404d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d1233149e35d9e459498bf926aef0fca8e1393a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d3de76fe20d2340825ab64cb2623eb3195b41a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d923152d9ed0cfd9b85e82b5df40421e4368a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8e1abc5eaf7464160134ba7e9d22283fe8c6b560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8e2a2cbd964b70352acaae530340395245606bbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x914f44349cc19ec1d541c6fb9f0d4e7e8ad2c233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x92f534a387a98ab31eaebb7e54b0fe40b70411f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x936b0447475c9f6bbe5ad4b1219b43def1a67643` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9374d1c18da723f5a4a5bde4dc7f3cc5b8d50ec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x94dc2ca2918315e19264f020cb17f8e4cf3433be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9537f2a93ecce82d2ed3f581bf8d0200063ad82a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x959f25678f9dbdc30eafbde91466ced74e39ec3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x95c9cd9a1aee66cccd5180637734d7127d684406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x95d07a583a9d202e1574c5c7c4a46a9bde62eddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x95e1aad77ef50802fdb3202f08b1aa34c6d4afb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x97ece55906a1fa37267b82ff6f24494b900bfc76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x98b544396e2da49a890b0f977ca5a63f9ea7c68e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x995b7035339a2828c0a23c5f47eacdf68faf2d2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9a491ff52179bc709dcddc5b2896fd004dcc2208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9d83892aef9b18afd9b6bddc7e2f84d3b696731c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa1351b77d0a4c1c6d67922dc060bb5ed48b1dcd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa1566c7e26005059b0759dea70e65b11a65f026f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa1f3d9fb0e16d4c19f72ef70fa684827924732de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa20a88fb6c615f8a300caa3a1c33fed21531b62d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa2b77abb408b95044ea05b9eb8cda26c33f12c66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa399d52789f31ccaf7022937c2ec9aad4a1b5bc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa42f3c25129fc64d3d55ba612e0120e2b4353add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa509c0c3420c10a911a65fff554dedfb27ba831d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa7647f756ab9cbf33f4b79634f8ae35f1ec013ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa85774ac659f964ddcd4b7f5145bfd62025e16ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa8aca94e29880c58386cf57ff2a15d463037f910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa998600184955ed57d0733ec995b188e69d24b54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaa4f7eb79ff242b71ef292effc5aef0e184f1b6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xac396e4842543c5d676c48962d93311a255740c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xacf1069eb66959c22a34611e0735f01b6733a225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaf74c40f2cb7d5fea9806028472dbeeaaa759acb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xafe92befc14b5b626368919078b2a49933d80534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb0695ce12c56aae40894235e2d1888d0b62dd110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb15e0444e097a71112ce4d1b3d49feb566e7469d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb313881baee13eacb7e94f03a266a1fee847ed3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb6a587a6481aa7045dfb39492d5b37851215da72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb6cc39dc59030af314c287152028397599b65985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb6fdc99d5b38ed4bdd3088b220d03ba754133412` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb73664c0cf44b25c831e03ad930ab177fbc051cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb8458925fcd0eccdd16f9e263bc826b01eb593d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb94c619ff49dd8007b603f78362b10ba0adfe9a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xba08d4cf94cbb89c3deae23ce8e15de50e5d902d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbbf61f37a101b8a24db11df50d24b961d29037b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbc47bee4c786fcd5bdb122e13aafb3322b4ec350` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbd47bfbd0ba99c8ca1e2ae9bde4799aaec528e64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbd795f545a516d79fe2fed6ed7b8c7936efb03d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbd85a02f717631624339fb45e8ca367eee05e640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbfa7a77e715e984ea54b7b0639327278e0e8c177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc01b6a4bf1f99697bff5277283120c5f20bec7bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc05cfc021536c2938f950dd61b65f601953c5ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc07f3a2fd65f22a1601f9f99f3c4d963e6a4f7b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc0b944d580f520acac2e6a1a9adc4992e175bc05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc0da8629599b364eb0a8921a477fb80440a68bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc0f9feaa19b601053b653bbb6e3df78fa5aa02db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc0ff685f2453c0504afdecc92ed2052e2771d022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc259252e6e93238fa363d5d99920e7880f0173ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc26b274205ecfbba35bb6d38a73f7b184f126cb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc51c27a1154f6492a613672f6a07d3c1224ba4a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc960ed13ea488cf9fb23b7d379715537f2925102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcaadbd74f6f641283d1b10badf57df341c50f372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcad9feb839459c94c730754d2fe64d92a2075d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcadabd380b1c9ff744b03463a3087cb04f4e2bef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcbe1dced78694e0b9d08f5601e2f83f16209a7a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xce130b46aba83d3d3d3d80a33d9d0cee1c72f919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xce2be62198f8eeef8f76ae1ab0443daf67de6056` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xce3f5182445db2267ed6ff78710099d5ccf24d39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcecd749170606c463c50d9f96939f0504e3d22af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd10780b83e917d96c9b3af58cb10149b2e3a6a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd190629af39e4a1360f2df3cc557e2e2dc7a0c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd2adc0f949430679dc55ea0941cfd70193732ca1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd2add4099b2c03eb85d18eeef5ba98ceed99cd27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd5d6a15e5bba93e553619ca9e6e57b57151fe29c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd6ab978d00ec0c2eeba67b1fc05e658feb1f7075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd750ff1a3820f151d3edc0c3343a611685dc96b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd7a99e7421e0bdb2ec72734671a78cc1e968ccdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd7cd48d863982d07ad3b779cf0ffa0e6195da0b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd848d1d283189e21017d5a9d11477c719d60de4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd894460e39a34ba34bd86593c00192eff0e3793d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xda862546ef357c504117464aceab04aa7bc9f3af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdb67fdcd0781bb9753d3af8821d50cee0779bb5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdbc6c6a250196f9b9fc8960f4bea5ed958371d00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe1361b34bcf2ef78047fbbee4efffe8af667b158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe172ffeb5ea5399bf261306c7b20df5f4f64a9ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe23271863c6d681d98730207c302728f6e7b6823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe2bdfdb4c4461a829c786c9adeeac1600355f4f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe4df8747b4ff0ba162e4d38394760936e6670529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe79e8a1dbcec120a877cdbe7e7576d2a60de5e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe9fa114f23314f8414f899ac36d650d9403768c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xeaab87dd10b644b630a3c11c38296334f44e47d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xeabd76b50ff5af4740b6a9360ad9758931f3b2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xebda383a2ad88d4a42332fda075cacd14f0c8e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xeddcd561db914d64478d89142d7c066d4e1d9d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xee12fff638fe5e4247af4f09e4e9555348f0f91b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xee166ffba3270b4e0d306761eeea9536d211f823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf2b132d1833ea2348cae519104c0ab4f4eeb2017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf324bf7ea2120e18c7feaa921155ae84d0706e83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf38400636f078da5acf9ed27aaf3ce1adfbb4c6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf5c05ecd6dc8e15b86f102ca85d5130aaec63008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf74acfae49d34a035b2e8113c924e9dae464ae23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf848c096c245ae87ad1ceac4bea824ed61de5562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf8501bbef1732f19d7eb5ef97e0d1d09666a4c31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfad62b93a4389cd19eefe392ae71274ecbe70fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfb34dd4d013ab94c7f801aad55936b57c120d268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfbdaaac9be651bba811b44b5cccac09d3f19f901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfc883a9104fb020250be92c322a6406c54693c54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfd5d77f6afeb5f7e344dd5426adb1cc1aa5b9d94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfdaa05b9ef0d17f7cf939d0316db3cfd0c9bf8d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xff07c01f5799bafec7c21675a4a7c70c5ffabbc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xff6977ddde71bc45ce8381c36879ff42c603d456` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 247
- Live contracts: 0
- Unknown liveness contracts: 247
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=247

Showing first 200 of 247 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| sonic | unverified unclassified | UnnamedContract<br>`0xcecd749170606c463c50d9f96939f0504e3d22af` | non_address_book | unknown | unknown | unverified | n/a | `0x344abc443ff04bba05e9bd763365809d9b5bfb57` |
| sonic | unverified unclassified | UnnamedContract<br>`0x0061459ffc8a1d5a1f12cad2ef53d2904a5fdccf` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x0526fe6b583dc07a1574d1752810b5d0af9cce30` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x053e513ba11080e53f304309f8308349ebef1bb5` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x0cdafbfdfe29b76685962fd19828827e69a53115` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x0d11bc6f7127a895af59af0990443717ea71cd5c` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x0d16580d34177e98b7e3e7b122fba37b48d508ef` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x0d43599e32a729fd85ee031d7e9d02274e27613a` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x0ec7491ebbb1fff20ba37b97aa0e01c0e439c5a9` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x0fc9db947e141951dcb2c4686bd4c783c695ef4f` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x0ff844223be800a1ae9c0181e622b4d86d451c14` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x132c1b04b621b1307c9d313f7388c7cc5e6198bc` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x13763e4f86d421dc01d5786dff2d6fc9b0eeb824` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x13b37ffe32046e56cc8060eb5a5e8579a3eb2f2e` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1415cb20749f55ebd30b0465cbc2199b5cf3f185` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1618e62c14270c0785d465a788ce5081d1e9b396` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x16709231eff1410fecad44e041a4ac75332c74b7` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1767511c8880c22965f937e68f1f3630e70b100a` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x181aca0878d26a826863a36e2be5e1ee5b7d826f` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x18d3e822145d58597bdac9f7068a3dba27e4a73a` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x18dd977f79fe5409e1e9b2f11b3a4be160703929` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1987600f0cf8fe701cee66a85d1d0c31dee9f671` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1a2056a037b8d46e71f26ce334714b7254699c99` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1ae0609fbba472c7f1feca41fc29ec6742245ab3` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1bf31ca13830f96674cd70f7b8ddb606ded2cf5a` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1bf7cec283180928582ddecb9e683015a9ef2cde` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1c148d4f30f2c74ceea670084ac4db2dba277ad7` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1c6c63639a06dc2a1f0f204db6043c02d6ec8bb6` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1ded89a4c3d64ff3a6b006fd661e23d1af4d5cd1` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1e00c48954d0c615a5bc9cb3a25ba25edba0f126` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x1f59f468fc6979e322159715873b095ddbc572c2` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x21b6a6aba82817d825de0fd65bb4da889b5c54b1` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x22e6cd5a7670cbb7a31f155a9d5eda7dc3f67e1f` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x265b1b1222f9937b681aaaf933f26775c9a08ee1` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x2788d896b304119e721bc98ce32a0dfcb3315773` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x282135b61bbe81cd7ed5db0c1d8cf2e78250159b` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x283e6389aa73d157b048d00300806812003c90c6` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x29b0480aaed3a90828843a5abcfbbf556655bb12` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x29d8ea83358a5f7c6076ffc2bfc591799fb3da85` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x2a79c39ea3433174333c8c8dacc6473532a43476` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x2a7be689c843ccc93ac963ecff65df38028d82bc` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x2b0088ebb3e104f61e610e55a9e17d75560ad3c3` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x2b1cd069cfd921bf9a84a7d820962c59305756e5` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x2be62b2598c254061d1737abce08a79462cb4c46` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x2c7b4ad7c9b3f45729f21abd7d05b8cf08a43299` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x2cbf29307ebc806bc98dc16a72466395bcef8be0` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x2ee1d003ab1bdaf1e6896b3d77ab25aedb1bd2c5` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x30718083daa01a40eeb4f99d10dc889e75561afd` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x308b521844f803a533fa6629b1de9faa555a2f9a` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x31d502855b87cf3f7e258e7b8b41391548fd4c6d` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x322d63703a93aae3362761dde1b6cb488652e5fb` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x32576f695b08e96a2d100d7485c4eff64d83ea52` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x34ba78b82cd069f12f81acd51992b51709abc2d5` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x360a943010c8b870aa3d224d706e06f35f949284` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x37147e95fb8d90a07873289d0ccc7a4c3f7d8b62` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x38cd94792d212d56c33416f5de54fda8624af69c` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x3a686041678765686b100964909ecf1391c6437e` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x3d4c64c44aa10e9a1ff6a22e74e6133eb4b9b5eb` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x3e113ebecf8563983ba1aeb38eedc7b1f4cb8be1` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x3ef19639c96a5662a2fcc357670ef161367c17c1` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x3ff290d0aa99931d41881d7786057827cc859d81` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x40096c4a689a65a70dc2ce5fa633dcf8efd1567a` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x402d0a567eb7675eca3d7854026a0a58486578c4` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x4388ec358ef3c395b5259b62b4c6620eff456c64` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x43dc8b2abd6984d745b8ab0c54b422260c5f86b5` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x43de2e17e7e7439deb3f001f781f710259fdc3c3` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x4767f54d4f90af85151ebd9da16b9b8c9f568315` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x48152363599849d141dabe260cf101a8cf5aca58` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x48b86a16fc14df6a94ca9dfeae3b9d5684dc7f20` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x493a441ab3e35e234ef3b05573114123208a4e66` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x4ade5608127594cd9ea131f0826aea02fe517461` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x4cbd0c133fa20e43b5d72edf9ceb23b0190105ae` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x4dc9919de284365491b2f5862e0e10bf1d1627c4` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x4eec97a85ed6a6b35eeffb3ef22c0cb302bf7893` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x4f89c34295de6623759977d037e0e6f7b45e5686` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x522e4889faace7b69fe81e7b8ea20e96ac043c4c` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x528a2209c4f19d4488ddb4d17ff709e562e02974` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x52b56b004f27cfa3b9b7731bbf01526ef38736ef` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x52c10923ddc48005261953abf3377de4dffb8382` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x541341a37a5e14a195474a896323a890cbd11171` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x54443ea51b82ea7dc779fe40b3a64e77b0451fd3` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x5548db5d02e9fe4a56673916db7982a62d16ec34` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x55e456ae66e0ff073d7a212aebd65850abc3fc5d` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x561d648577620e3c0b60ae76d73cf64b8d4a8995` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x569f345a451f295dc2a0c40e7452df6f93e9d3c9` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x57d6700a870c37b71efabc6f6085a5091c7e4e6a` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x5a3ac8cbe69ac87f54870e6d617f73ff001bc971` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x5b21b2e4b210dc5048f472801d2a1e00f09ffbaa` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x5cbbbfa1b6f09a229de5a597f8830c6b549afd58` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x5d1c45dfc9d621edf15ce56fd24415f0b68ef782` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x5dd35f23946217ca456122fb2092c43c5bc50d95` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x5ebb552b09209a742bfe39fa0bb35b15766df3f1` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x5f87aa0d46d3cd1e7a6b29f519e5bacf5b24bd2f` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x60068b704f754dffdf58e67c95482e3c7ffa7b6a` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x63017412c09f55418843540cf93b721c66111bcc` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x6531bd837f61d7dc722ab6611b959ad58f74072b` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x66b877f902a2066d0e559cc5b6323deb85efdc84` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x67c28fbf96031bd658052912bc324fb3e03f08bc` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x698f4e2846a425e33b15efab19c40822ec907f08` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x69904ba916ef2dd39a1c797b2ecc251d2856f19c` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x6b67779f34d4c73ea3ede2f5c5985d51019507e3` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x6bb2879650aef81e89073de60f2b8c8cd44fb780` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x6ca17e6732e54e90b90505946c30a1609611e85b` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x6e9ae59cd9cd9cb173b32e823f9d7ca63eb70b1c` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x6f28396de19ad7142128724155e72bc2bbd66756` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x70659a797d7aa6fb9881196ced545c593419d8d4` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x71aaf77deff5fc0c2ec950c77860387464546c96` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x71f35837dc5ca14d808eb324acd660af08eca4ba` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x726c10d3eb921a2ed35b51c1a0a88d470df49d73` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x7761cbe03035dd21eca2bc040cfb3fd8b44e2b7f` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x7a32c262c297ab8ed217d969f19d50e00caa36b4` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x7adce7fff071b8a0255a0c3a787a05c965280b69` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x7b02176469e83e997e01db6137f90ab97eabe1e7` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x7c39afa2049688863c7b75545ae2599a1c8c626c` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x7c6a016d3f0ffc7d1c1868c5fbb3ec3dc4cc6b60` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x7d5a4d5c9147ce3742a6164fa97a38c782c2107c` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x7d5aca69dd69fbbbfb8b39c6ab27f1b649721064` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x7e2b7acd7bc07b00bbfa150655c312974f5c01a4` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x7f16e0b4935b050d8a466dc073adb54cf2b33c56` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x801f5ef921e9a5ffda31073130bcf97d1174dcda` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x804cff5509b987167ce3e892b64bb24c8fbad3df` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x809860c04b1b04ba3ff4c5fdc902582c5661285a` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x82230f007e3170075ca6f213a9fb5ae6acf6459a` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x82958071e0bacf9f1f6a7107c39adae583038f75` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x836d1e5919a5f46774efb923e982c593450bd9a8` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x83c1706cfaa6c2ad1f7c6d57e3d39c8056ed6eaf` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x847240076f6a5684ba9f87df09e8d4bdb4fa1369` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x84ab69e4e6bf69d0364fddc29e1c1f6ae96fb465` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x85b9fb39b2fa2bd640afb9474e29aa2d97ef774b` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x866c31bb18647fed30a6498d959372da2894c014` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x87b10e725269b562a6268756a2a7a4c475ae3afc` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x8b1676dd62df3627a50aef0b5d4a5ff0555186f0` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x8baf9772971d4637591d8c7dc30fb01326de755b` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x8bce18087fa15fa4b0b040352824c71f9a9404d6` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x8d1233149e35d9e459498bf926aef0fca8e1393a` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x8d3de76fe20d2340825ab64cb2623eb3195b41a4` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x8d923152d9ed0cfd9b85e82b5df40421e4368a62` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x8e1abc5eaf7464160134ba7e9d22283fe8c6b560` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x8e2a2cbd964b70352acaae530340395245606bbf` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x914f44349cc19ec1d541c6fb9f0d4e7e8ad2c233` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x92f534a387a98ab31eaebb7e54b0fe40b70411f4` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x936b0447475c9f6bbe5ad4b1219b43def1a67643` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x9374d1c18da723f5a4a5bde4dc7f3cc5b8d50ec9` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x94dc2ca2918315e19264f020cb17f8e4cf3433be` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x9537f2a93ecce82d2ed3f581bf8d0200063ad82a` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x959f25678f9dbdc30eafbde91466ced74e39ec3e` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x95c9cd9a1aee66cccd5180637734d7127d684406` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x95d07a583a9d202e1574c5c7c4a46a9bde62eddf` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x95e1aad77ef50802fdb3202f08b1aa34c6d4afb7` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x97ece55906a1fa37267b82ff6f24494b900bfc76` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x98b544396e2da49a890b0f977ca5a63f9ea7c68e` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x995b7035339a2828c0a23c5f47eacdf68faf2d2c` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x9a491ff52179bc709dcddc5b2896fd004dcc2208` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0x9d83892aef9b18afd9b6bddc7e2f84d3b696731c` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa1351b77d0a4c1c6d67922dc060bb5ed48b1dcd1` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa1566c7e26005059b0759dea70e65b11a65f026f` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa1f3d9fb0e16d4c19f72ef70fa684827924732de` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa20a88fb6c615f8a300caa3a1c33fed21531b62d` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa2b77abb408b95044ea05b9eb8cda26c33f12c66` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa399d52789f31ccaf7022937c2ec9aad4a1b5bc0` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa42f3c25129fc64d3d55ba612e0120e2b4353add` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa509c0c3420c10a911a65fff554dedfb27ba831d` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa7647f756ab9cbf33f4b79634f8ae35f1ec013ea` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa85774ac659f964ddcd4b7f5145bfd62025e16ab` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa8aca94e29880c58386cf57ff2a15d463037f910` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa998600184955ed57d0733ec995b188e69d24b54` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xaa4f7eb79ff242b71ef292effc5aef0e184f1b6c` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xac396e4842543c5d676c48962d93311a255740c4` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xacf1069eb66959c22a34611e0735f01b6733a225` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xaf74c40f2cb7d5fea9806028472dbeeaaa759acb` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xafe92befc14b5b626368919078b2a49933d80534` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb0695ce12c56aae40894235e2d1888d0b62dd110` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb15e0444e097a71112ce4d1b3d49feb566e7469d` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb313881baee13eacb7e94f03a266a1fee847ed3e` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb6a587a6481aa7045dfb39492d5b37851215da72` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb6cc39dc59030af314c287152028397599b65985` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb6fdc99d5b38ed4bdd3088b220d03ba754133412` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb73664c0cf44b25c831e03ad930ab177fbc051cd` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb8458925fcd0eccdd16f9e263bc826b01eb593d9` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb94c619ff49dd8007b603f78362b10ba0adfe9a0` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xba08d4cf94cbb89c3deae23ce8e15de50e5d902d` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xbbf61f37a101b8a24db11df50d24b961d29037b6` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xbc47bee4c786fcd5bdb122e13aafb3322b4ec350` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xbd47bfbd0ba99c8ca1e2ae9bde4799aaec528e64` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xbd795f545a516d79fe2fed6ed7b8c7936efb03d4` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xbd85a02f717631624339fb45e8ca367eee05e640` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xbfa7a77e715e984ea54b7b0639327278e0e8c177` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xc01b6a4bf1f99697bff5277283120c5f20bec7bc` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xc05cfc021536c2938f950dd61b65f601953c5ab1` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xc07f3a2fd65f22a1601f9f99f3c4d963e6a4f7b4` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xc0b944d580f520acac2e6a1a9adc4992e175bc05` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xc0da8629599b364eb0a8921a477fb80440a68bd4` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xc0f9feaa19b601053b653bbb6e3df78fa5aa02db` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xc0ff685f2453c0504afdecc92ed2052e2771d022` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xc259252e6e93238fa363d5d99920e7880f0173ee` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xc26b274205ecfbba35bb6d38a73f7b184f126cb3` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xc51c27a1154f6492a613672f6a07d3c1224ba4a0` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xc960ed13ea488cf9fb23b7d379715537f2925102` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xcaadbd74f6f641283d1b10badf57df341c50f372` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |
| sonic | unverified unclassified | UnnamedContract<br>`0xcad9feb839459c94c730754d2fe64d92a2075d96` | non_address_book | unknown | unknown | unverified | n/a | `0x6571c18ddea876ce67932be7115a4e2d11b5d943` |

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
| native | 17 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 247 |

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
