# Agentic Audit Brief: Mobius Money

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

- Project: Mobius Money (`mobius-money`)
- Website: [https://mobius.finance/](https://mobius.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: celo, ethereum, polygon
- Contract surface: 140 unique implementations (140 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $302,349.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Mobius Money in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0x52850c7f5fe3a7f1ef3b7a65ee09055203cfcec2`, chain 1)
- UnnamedContract (`0x162b21ba1a90dd9384c615192fa4053217d2a8db`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 138 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 140 unique; 138 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 137
- Unique implementations: 140
- Raw deployments: 140
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

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MoolaStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb450940c5297e9b5e7167fac5903fd1e90b439b8` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x23c95678862a229fac088bd9705622d78130bc3e` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0a125d473cd3b1968e728ddf7d424c928c09222a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (137)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-247647 | `0x52850c7f5fe3a7f1ef3b7a65ee09055203cfcec2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-247648 | `0x162b21ba1a90dd9384c615192fa4053217d2a8db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x003af5f67e999ddca307364ad8112240545d8913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x01f1ab3fafa454cd0f2785aed652ec9a694ff2cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0745fcefee0084296d876cdc179369b3a8a67ab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0757c02ba58c0ffc992478b5b8a3cf437a93e7c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0a3ac12422c95f84b5bd18a6d9904d132a161c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0c7136ff3db7c8d70f62d42d6b43f7572f589269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x0d0232032c31f53a485299a794a67634fde980d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x107f94409746e8c8e6eff139a100d17d9ca7fdfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1250d6dd3b51d20c14a8ecb10cc2dd713967767e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x127b524c74c2162ee4bb2e42d8d2eb9050c0293e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x19f0e1f3e97e42830cd75a76e2bb87a86a4c81f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1a648004d8ab84ee34d2d1cd2f2a7a7828d6939f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1a8938a37093d34581b21bad2ae7dc1c19150c05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1bc2dbb8c4d04aacf4a7fefcdb060766964b5237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1d5fbf2b17b35918a71f6c2ab4a9235b1f986f4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1e02cdbba6729b6470de81ad4d2cca4c514521b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x21d0420ccf3bc756f9b01669667a26d83837d8b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2459bdb59a3bf6ab6c412ac0b220e7cda1d4ea26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x25d43677df8062fd28dfd2cfa31d0e1a2a56ef58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x27d9bfa5f864862bedc23cfab7e00b6b94488cc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x289fdd6265a1024e8e2e5d34f3044e9e40427c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2a5867ebb7c162298140b2793e596f7846141a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x2c38b5771033c3e2714d146c8171c7e302c4e92a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x317a87946c0fc0066fbd916b7b3e48f403ee1a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3341e7c3ffccf3f94379e8686b74c4798dacec60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x34defd314fa23821a87fcbf5393311bc5b7608c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3804da7a53fd810cd7f5bfcd1166ea2e0e9e9ae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3a8f565c20ea4d0da648321389f24feffb1316e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3b3b2d26ab9eccb4f65501d1b898a4734ade419a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3c7c941fae8b556389f740768748de12129ceec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3d13a8b64695ae5e4854d3d55f45a21c263b9fd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4294a1b95abc92c050496b6418fc25b8c207d517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4462ee6661fdd5b3e22e2d2105c300c74d0736d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x487c30cb18aa9ced435911e2b414e0e85d7e52bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4e3e91b61c6ca47cf3664aa88ee3f690e3e41185` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4fe5ffcdc93c8e1bad8d877498de4c5f4c2c0ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x52517feb1fc6141d5cf6718111c7cc0fd764fa5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x536cbb53a8b8dccbc4406b063e7b7cad05861fa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5489b2f0a1992b889f47601d71e068fd15c63f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5498248eab20ff314bc465268920b48eed4cdb7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x54bf52862e1fdf0d43d9b19abb5ec72aca0a25a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x54ca8a5535786a99d4c23b7199e06ed1c7bebb31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5551c0cb71a133d9a723bdf0b8f0be244efe43d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5ea9ab65b4fe4d8a866ee119fa07c26ba57b8764` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x5f0200ca03196d5b817e2044a0bb0d837e0a7823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x637271be0d2993f0b9871bd2f63b9c1422b1b141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x66d6575375c4539367660afdae38a1c595ff8f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x66eba8bb26165527fcaf7688c133e8464b4cb9e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6a75bfe67242c4414b38495d39d449e0b4f47cbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6a9000f8b5e8e38d7ae03b0e8ef005bf2c2a45cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6d6434af097a453f68694f2e020babe7cf56a522` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6e4efcba1e5894483e0ad7dd562c88a9c5d0a4da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x70d8bb94f07bc515e5fad321c5a85146d7c66603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x721f77738857f9913da0a72b6cd30102a084141a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x73a210637f6f6b7005512677ba6b3c96bb4aa44b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x73fa425655311cfdf77119a93edc0b05bff35eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x73fda87297627fe985bc1d40c7d68868c2624d67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x74703737c396cb3916ec4081f5fbad1502cafe80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x74ef28d635c6c5800dd3cd62d4c4f8752daacb09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x74fc71ef736feeacfd58aeb2543c5fe4d33adc14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7530e03056d3a8ed0323e61091ea2f17a1ac5c25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x764771ed5bddc8892506336a15d9ab62a10d74f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x78c5a63b87059394b3062c750d87cb70033e183c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7b7a47cc6f7d6eb9635792553a6e314898e3efeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7e193b85e39a7375ec97ed3e7b8e903fa0314708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x81a7ecbb6b2ed86013df25457edda5fb1174e122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x828e1be170ecff099fd86396f76659359abb2b4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x85b5ef9e10ba89eeebda21b535e2ee02f25bb23d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x86e5c8e56f0a239923e94f042a9ab67921613716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8a44f32d37a27d67c5cd99213fd69f1266d35df2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8a7ea00b6b7b191f8c425e1d803efbb5070f6266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8ab6582130b4ec8402583f6303ec74f84245531f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8bea4fe5b730e03f5682352580a51b32c2a55182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8f9ffcbd63dea4288bd5b6434480d6be3cf2201e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x907251d7ed4ba084f8db377696f4a1679e424849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x91d42c28e02f8491b14b1fc518a2fdbaa5e5924c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x95b7f698ae16114fe24f59f23e45c983d4d88b3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9737b33546d8201a50b175b896047e4d51966e27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9906589ea8fd27504974b7e8201df5bbde986b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x99075eed186b7569f3b246708319569681680a71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9a5b788b4a3a128035e7a73e35832cc5b4dfc77e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9fb16c1e884782499a4c52fc4809bd4d465f897a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa00b7f3659a8e5fead7a039e10f18f3a4891b742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa011f74d2f3ba3c74b0ec2332109f917dcf84fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa06a9fc206981eeca570da400a16119a55e5b429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa2f0e57d4ceacf025e81c76f28b9ad6e9fbe8735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa3629788a1a5276dd0586d270b899a32bee4680f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa9c9ff06b8085b3304daa13336ad76039ce28bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xaa8dd9a084dad36c8a816bcaf66d852e7bdddbc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xaab4a154ee836fcdaa706da7be3cd36d116dcf84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xad18fda9b6ebd42d8bade94fe55144a79b2e8edb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xaefc4e8cf655a182e8346b24c8abce45616ee0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xaf225da8bd1323f2f5b77cfada6f731d6daa17f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb29b37fb9dc0e64694d455f814f2c0dffaf3e641` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb314a06985849876b4edc9919427cc0b3143cba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbcb4029fac568f65fa9bde21aadca088ce62b1d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbe00939bec70e58cbbf0a69d26e8daf184ded8ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xbebf24196b54443dc65045856b38afdcab9f448e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc34be652f8d881d3f91a624b24165a31175b6c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc7c41b9e5e02d3ecda665b320aabb1742e56d7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc8b86c28a0026ea72b7624fa3c912ad77f1d5fe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc96aeeaff32129da934149f6134aa7bf291a754e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xcaed243de23264bdd8297c6eeccf320846eee18a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xcce0d62ce14fb3e4363eb92db37ff3630836c252` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xceccdc514070f4efd7f828e0d1e5064d30bb691f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xcf34f4ec5dc9e09428a4f4a45475f6277694166c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd0d57a6689188f854f996beae0cb1949fdb5ff86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd1b3c05fe24bda6f52e704daf1acba8c440d8573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd36eb7c840edec83b5afe735b05156a56b4525fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd38e76e17e66b562b61c149ca0ee53cea1145733` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd40773280abcd4f049afebbde9779363ba184540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd4a3debc32bdfe07b92c7d67297decd00fc4236b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd6753d05345851ffe7d3f356a6a71dd3ff488508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd813a846aa9d572140d7abbb4efac8cd786b4c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd930501a0848dc0aa3e301c7b9b8afe8134d7f5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xda613e5bf84b47cf08ee874b73182b22bc020d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xdaa2ab880b7f3d5697e6f85e63c28b9120aa9e07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe178c875d09f9c083a604c39d081f2d917ef4c4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe1f9d952eecc07cfefa69df9fbb0cef260957119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe2d6095685248f38ae9fef1b360d772b78ea19d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe66470f6fce898754c3dd119919e63a85f23e046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe7195e651cc47853f0054d85c8adfc79d532929f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe965dd2b957448cae3291048a9944fc2f3a693d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe9c1c91828c7f2f1480782ddbe1d237e7b571e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xedd2c93858507a64b29a4af0591bd2c571851829` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xedd9d29d6e2b150bd94e9950d9dbb71eb96a8725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xefdbb163694f6e6d30aaeda3293c4b9888e5962d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf0f4df0cde2c8cb8660ed022d7a22488f723e702` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf2ae5c2d2d2ed13dd324c0942163054fc4a3d4d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf3f65dfe0c8c8f2986da0fec159abe6fd4e700b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf498142538a2c619e55600d49ff4c2dada3f27d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf7d9df9d40463622851e9aa031efc7c8ac696f05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf94847bf134d72a6c5bfa4ae34dd3930696b0600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf9b55ca1f693ec1e19f2dacf204642c99278c2c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfc9e2c63370d8deb3521922a7b2b60f4cff7e75a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 134
- Live contracts: 0
- Unknown liveness contracts: 134
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=134

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x003af5f67e999ddca307364ad8112240545d8913` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x01f1ab3fafa454cd0f2785aed652ec9a694ff2cc` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x0745fcefee0084296d876cdc179369b3a8a67ab2` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x0757c02ba58c0ffc992478b5b8a3cf437a93e7c1` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x0a3ac12422c95f84b5bd18a6d9904d132a161c68` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x0c7136ff3db7c8d70f62d42d6b43f7572f589269` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x0d0232032c31f53a485299a794a67634fde980d3` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x107f94409746e8c8e6eff139a100d17d9ca7fdfe` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x1250d6dd3b51d20c14a8ecb10cc2dd713967767e` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x127b524c74c2162ee4bb2e42d8d2eb9050c0293e` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x19f0e1f3e97e42830cd75a76e2bb87a86a4c81f1` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x1a648004d8ab84ee34d2d1cd2f2a7a7828d6939f` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x1a8938a37093d34581b21bad2ae7dc1c19150c05` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x1bc2dbb8c4d04aacf4a7fefcdb060766964b5237` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x1d5fbf2b17b35918a71f6c2ab4a9235b1f986f4d` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x21d0420ccf3bc756f9b01669667a26d83837d8b3` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x2459bdb59a3bf6ab6c412ac0b220e7cda1d4ea26` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x25d43677df8062fd28dfd2cfa31d0e1a2a56ef58` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x27d9bfa5f864862bedc23cfab7e00b6b94488cc6` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x289fdd6265a1024e8e2e5d34f3044e9e40427c83` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x2a5867ebb7c162298140b2793e596f7846141a68` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x2c38b5771033c3e2714d146c8171c7e302c4e92a` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x317a87946c0fc0066fbd916b7b3e48f403ee1a43` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x3341e7c3ffccf3f94379e8686b74c4798dacec60` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x34defd314fa23821a87fcbf5393311bc5b7608c1` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x3804da7a53fd810cd7f5bfcd1166ea2e0e9e9ae0` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x3a8f565c20ea4d0da648321389f24feffb1316e7` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x3b3b2d26ab9eccb4f65501d1b898a4734ade419a` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x3c7c941fae8b556389f740768748de12129ceec6` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x3d13a8b64695ae5e4854d3d55f45a21c263b9fd5` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x4294a1b95abc92c050496b6418fc25b8c207d517` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x4462ee6661fdd5b3e22e2d2105c300c74d0736d8` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x487c30cb18aa9ced435911e2b414e0e85d7e52bb` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x4e3e91b61c6ca47cf3664aa88ee3f690e3e41185` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x4fe5ffcdc93c8e1bad8d877498de4c5f4c2c0ecc` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x52517feb1fc6141d5cf6718111c7cc0fd764fa5d` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x536cbb53a8b8dccbc4406b063e7b7cad05861fa5` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x5489b2f0a1992b889f47601d71e068fd15c63f26` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x5498248eab20ff314bc465268920b48eed4cdb7c` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x54bf52862e1fdf0d43d9b19abb5ec72aca0a25a6` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x54ca8a5535786a99d4c23b7199e06ed1c7bebb31` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x5551c0cb71a133d9a723bdf0b8f0be244efe43d5` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x5ea9ab65b4fe4d8a866ee119fa07c26ba57b8764` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x5f0200ca03196d5b817e2044a0bb0d837e0a7823` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x637271be0d2993f0b9871bd2f63b9c1422b1b141` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x66d6575375c4539367660afdae38a1c595ff8f04` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x66eba8bb26165527fcaf7688c133e8464b4cb9e6` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x6a75bfe67242c4414b38495d39d449e0b4f47cbe` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x6a9000f8b5e8e38d7ae03b0e8ef005bf2c2a45cd` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x6d6434af097a453f68694f2e020babe7cf56a522` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x6e4efcba1e5894483e0ad7dd562c88a9c5d0a4da` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x70d8bb94f07bc515e5fad321c5a85146d7c66603` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x721f77738857f9913da0a72b6cd30102a084141a` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x73a210637f6f6b7005512677ba6b3c96bb4aa44b` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x73fa425655311cfdf77119a93edc0b05bff35eaa` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x73fda87297627fe985bc1d40c7d68868c2624d67` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x74703737c396cb3916ec4081f5fbad1502cafe80` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x74ef28d635c6c5800dd3cd62d4c4f8752daacb09` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x74fc71ef736feeacfd58aeb2543c5fe4d33adc14` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x7530e03056d3a8ed0323e61091ea2f17a1ac5c25` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x764771ed5bddc8892506336a15d9ab62a10d74f9` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x78c5a63b87059394b3062c750d87cb70033e183c` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x7b7a47cc6f7d6eb9635792553a6e314898e3efeb` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x7e193b85e39a7375ec97ed3e7b8e903fa0314708` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x81a7ecbb6b2ed86013df25457edda5fb1174e122` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x828e1be170ecff099fd86396f76659359abb2b4c` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x85b5ef9e10ba89eeebda21b535e2ee02f25bb23d` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x86e5c8e56f0a239923e94f042a9ab67921613716` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x8a44f32d37a27d67c5cd99213fd69f1266d35df2` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x8a7ea00b6b7b191f8c425e1d803efbb5070f6266` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x8ab6582130b4ec8402583f6303ec74f84245531f` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x8bea4fe5b730e03f5682352580a51b32c2a55182` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x8f9ffcbd63dea4288bd5b6434480d6be3cf2201e` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x907251d7ed4ba084f8db377696f4a1679e424849` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x91d42c28e02f8491b14b1fc518a2fdbaa5e5924c` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x95b7f698ae16114fe24f59f23e45c983d4d88b3c` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x9737b33546d8201a50b175b896047e4d51966e27` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x9906589ea8fd27504974b7e8201df5bbde986b03` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x99075eed186b7569f3b246708319569681680a71` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x9a5b788b4a3a128035e7a73e35832cc5b4dfc77e` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0x9fb16c1e884782499a4c52fc4809bd4d465f897a` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xa00b7f3659a8e5fead7a039e10f18f3a4891b742` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xa011f74d2f3ba3c74b0ec2332109f917dcf84fc8` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xa06a9fc206981eeca570da400a16119a55e5b429` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xa2f0e57d4ceacf025e81c76f28b9ad6e9fbe8735` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xa3629788a1a5276dd0586d270b899a32bee4680f` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xa9c9ff06b8085b3304daa13336ad76039ce28bbc` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xaa8dd9a084dad36c8a816bcaf66d852e7bdddbc4` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xaab4a154ee836fcdaa706da7be3cd36d116dcf84` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xad18fda9b6ebd42d8bade94fe55144a79b2e8edb` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xaefc4e8cf655a182e8346b24c8abce45616ee0d2` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xaf225da8bd1323f2f5b77cfada6f731d6daa17f2` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xb29b37fb9dc0e64694d455f814f2c0dffaf3e641` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xb314a06985849876b4edc9919427cc0b3143cba9` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xbcb4029fac568f65fa9bde21aadca088ce62b1d0` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xbe00939bec70e58cbbf0a69d26e8daf184ded8ec` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xbebf24196b54443dc65045856b38afdcab9f448e` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xc34be652f8d881d3f91a624b24165a31175b6c0f` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xc7c41b9e5e02d3ecda665b320aabb1742e56d7a3` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xc8b86c28a0026ea72b7624fa3c912ad77f1d5fe0` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xc96aeeaff32129da934149f6134aa7bf291a754e` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xcaed243de23264bdd8297c6eeccf320846eee18a` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xcce0d62ce14fb3e4363eb92db37ff3630836c252` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xceccdc514070f4efd7f828e0d1e5064d30bb691f` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xcf34f4ec5dc9e09428a4f4a45475f6277694166c` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xd0d57a6689188f854f996beae0cb1949fdb5ff86` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xd1b3c05fe24bda6f52e704daf1acba8c440d8573` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xd36eb7c840edec83b5afe735b05156a56b4525fd` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xd38e76e17e66b562b61c149ca0ee53cea1145733` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xd40773280abcd4f049afebbde9779363ba184540` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xd4a3debc32bdfe07b92c7d67297decd00fc4236b` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xd6753d05345851ffe7d3f356a6a71dd3ff488508` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xd813a846aa9d572140d7abbb4efac8cd786b4c0e` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xd930501a0848dc0aa3e301c7b9b8afe8134d7f5f` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xda613e5bf84b47cf08ee874b73182b22bc020d1e` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xdaa2ab880b7f3d5697e6f85e63c28b9120aa9e07` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xe178c875d09f9c083a604c39d081f2d917ef4c4f` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xe1f9d952eecc07cfefa69df9fbb0cef260957119` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xe2d6095685248f38ae9fef1b360d772b78ea19d1` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xe66470f6fce898754c3dd119919e63a85f23e046` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xe7195e651cc47853f0054d85c8adfc79d532929f` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xe965dd2b957448cae3291048a9944fc2f3a693d8` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xe9c1c91828c7f2f1480782ddbe1d237e7b571e02` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xedd2c93858507a64b29a4af0591bd2c571851829` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xedd9d29d6e2b150bd94e9950d9dbb71eb96a8725` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xefdbb163694f6e6d30aaeda3293c4b9888e5962d` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xf0f4df0cde2c8cb8660ed022d7a22488f723e702` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xf2ae5c2d2d2ed13dd324c0942163054fc4a3d4d9` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xf3f65dfe0c8c8f2986da0fec159abe6fd4e700b4` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xf498142538a2c619e55600d49ff4c2dada3f27d9` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xf7d9df9d40463622851e9aa031efc7c8ac696f05` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xf94847bf134d72a6c5bfa4ae34dd3930696b0600` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xf9b55ca1f693ec1e19f2dacf204642c99278c2c4` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |
| unverified unclassified | UnnamedContract<br>`0xfc9e2c63370d8deb3521922a7b2b60f4cff7e75a` | non_address_book | unknown | unknown | unverified | n/a | `0x6c0d6fba3bcdb224278474e8d524f19c6bb55850` |

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
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 137 |

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
