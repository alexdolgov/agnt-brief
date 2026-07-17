# Agentic Audit Brief: MOBOX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: MOBOX (`mobox`)
- Website: [https://www.mobox.io/home/#/iframe/momo](https://www.mobox.io/home/#/iframe/momo)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc
- Contract surface: 322 unique implementations (430 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $528,771.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for MOBOX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across arbitrum, bsc. Structural roles: 2 core, 2 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (2), unclassified (2)
- Contract kinds: contract (4)
- Detected standards: erc20 (2), erc20permit (1), ownable (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x295f68795e21f8c8b03038317b507124c13d2741`, chain 56)
- UnnamedContract (`0xa9ffb469b2a78a1135dda9d07601fa0f4c068f65`, chain 56)
- UnnamedContract (`0xda661fa59320b808c5a6d23579fcfedf1fd3cf36`, chain 42161)
- MoboxToken (`0x3203c9e46ca618c8c1ce5dc67e7e9d75f5da2377`, chain 56)
- MoMoProxy (`0x3bd6a582698eccf6822db08141818a1a8512c68d`, chain 56)
- MoMoProxy (`0x98387108842a7cfc7ba23e080030351f6ea68ac0`, chain 56)
- PancakePair (`0x8fa59693458289914db0097f5f366d771b7a7c3f`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 317 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 89
- Confirmed-live implementations: 5 of 322 unique; 317 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/77
- Verified + Unaudited implementations: 77
- Verified by bytecode match: 0
- Unverified implementations: 245
- Unique implementations: 322
- Raw deployments: 430
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (77)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| KeyToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85c128ee1feeb39a59490c720a9c563554b51d33` | ⚠️ Unaudited |
| MasterChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5f8c5dbd5f286960b9d90548680ae5ebff07652` | ⚠️ Unaudited |
| MigrationHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x0a64aa2d1449a595932b42f309b601fb9778df38`; bsc `0x1114269a48bcef860c1fb5a526a73bbfccd1f6aa`; bsc `0x185c5ccb00ddf4d06f084b9a19fc96cffe2ed3b0`; bsc `0x64cb693152c73031bcd9422c8178f65e41f99305`; bsc `0x85d388d1e46c2f9f58e3858c8e9914ec8df0bd7c`; bsc `0xcffa4189c391306f809a546463f953b362a81c5f`; bsc `0xd8ae3e6de914719a4d732971842211f1b54add5d` | ⚠️ Unaudited |
| MigrationHelperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x00b3ea589c4e566fe55974ffc129a5803f7d1d3c`; bsc `0x4e24019b743a283b92d3f4b8bc6dc077e50b67c0` | ⚠️ Unaudited |
| MoboxEventPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d32e690872421c911b2f7541895911ce0b0916d` | ⚠️ Unaudited |
| MoboxProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x04ae8b977723e522bd47532e8338bc72a0350e3f`; bsc `0x9f876c13c228b69ad6b4829fdd2b9d29188a4c5a` | ⚠️ Unaudited |
| MoboxProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0d5ee0c54cc11b16dcf18291a54b35cc88d576de`; bsc `0xbc2286100f8deb469a09c603c3e67806cab97732` | ⚠️ Unaudited |
| MoboxProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x33bb024b4276ddfa584bbb8000aa19f475c56b34`; bsc `0x41c0455f82895d0d02dee0ce8ba0339162653265` | ⚠️ Unaudited |
| MoboxProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x42f3311269a870ad41b5ff72281b698a4b8dda10`; bsc `0xc52f76dde242e38c25e7251ed64128d59c5307cd`; bsc `0xda7323d8666667bcb2727e3c1a8564931c534787` | ⚠️ Unaudited |
| MoboxProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4cef76edcd70f4eb12b228d9a1190c3fc04aa4f9`; bsc `0xf346a87c49da78f79e15f38d9a7a763b115afa4f` | ⚠️ Unaudited |
| MoboxProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5a40528886cfe5efd42e320f8ed7af9e881d85c7`; bsc `0xd4e6bd32b8e03abc2d5a54e4de9e703229780af6` | ⚠️ Unaudited |
| MoboxProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5dd8eeb99676dbb94368c605fc174e8fb39c1fc3`; bsc `0x935e8f512c262e4f98e2e5f3538970d43cd44320` | ⚠️ Unaudited |
| MoboxProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7774050befd2956c7f7ccdb20adb0a7d9a18fd20`; bsc `0xd5368a57f21ac889ebe97f397c1d2fbeee602f3c` | ⚠️ Unaudited |
| MoboxProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x7d3d86f61752452476d36fc9d05664e72cb0944f`; bsc `0xd27a3c67bcf915c8a3e6cf2d80ccb5cd4728fc75` | ⚠️ Unaudited |
| MoboxProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x9314cdd422cb6fbfab2954b58b3d911e515a94a1`; bsc `0xdfa4b3c0ccabe35e751cf96213402a8c86295824` | ⚠️ Unaudited |
| MoboxProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd4bddc68c1b85a6c770455bc75b69f981b767e5b`; bsc `0xeeae103c37c38c1ac6dfb23a76bfb258936159b4` | ⚠️ Unaudited |
| MoboxToken | token | project_anchor | own_supporting | 0 | bsc | unit-389088 | `0x3203c9e46ca618c8c1ce5dc67e7e9d75f5da2377` | ⚠️ Unaudited |
| MomoAutoBuybackPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3d5a77dab7f225d8ed32331424b40dd0bbf9d9a` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x008ec89e52dbe64feb391840a7ca9b1b84e3e23a`; bsc `0xdad49e63f97c967955975490a432de3796c699e6` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x01bd0ad1e0bca1de640febec53ed2871fdb60aec`; bsc `0xe097dbaf6c7f87831b168d3b8c513c9da1268716` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0627578d5d388e6ea417080461303af575d3eba2`; bsc `0xa4a959209db6ae2ec8264a726e946e0b0757a4ea` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0af8b21fe7acc25a005cc10cf1491ef26f9e913a`; bsc `0x9442dad1df11c858a900f55291dc1cf645ff66df` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0f32178b78729e1bf8cab33126f34f5e689c952c`; bsc `0x77f040bd6ed8930830f27b83601b4a35969609d8` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0f596f64443e1c2e81c80b93c2a11fa02ee1beac`; bsc `0xf8c1ba88f1e4aed152f945f1df2a8fdc36127b5f` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 3 deployments: bsc `0x10cdb026c52a9713b62a0cd9dbdc9316ed0b0ca4`; bsc `0xda5d712c4e6aa0067a5227f34d97aafcf789113b`; bsc `0xe07a506b3b0157406db7d94fbef32594d109b0d0` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1100fe08470ec04b10166902fd14dac2c6c7c4d0`; bsc `0x688a2692a180a284a16283ab16a399c5d0485cb3` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x110133bdd7739b265b9d256052985010723a33c0`; bsc `0x2625621a924cfa74c660a5061daa91a65441ae7d` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x119d511c62a75e9538229f57aabf3258faf24af5`; bsc `0x8e987b5a7b55fc1eb3bfcf3cdd3ad3571bca9352` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x12207418397900d6a6be70f8cce3bbf1d84e3cb4`; bsc `0xdbb5e0c15f5e9d23df6ae53bfda41721062fe88a` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1846c0ab8d09007154066cbb114315e11d94d4e8`; bsc `0x24a3061c6f3708d789402d92517b87b899bf43e7` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 4 deployments: bsc `0x1bb3d32ed55f19483dec3fde05add11454c09b76`; bsc `0x425f837bdce5beb0b09e4e45f06eb8efb4fd9be0`; bsc `0x55fba98b4faf3121a4cc94ecc94b0e70a4890e01`; bsc `0xbc480cbc625a61b66f99af65767b7c2adabc287c` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1cc40df1e891fb0e0acc476899c83bf1dcc8dabc`; bsc `0xf977c1ac00ebeb2a27570d39dad64d6e6cce5c24` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1d4d9706b057a945fce86ee53b8894bd17ffa0de`; bsc `0xf828447a117aa814e60a36bd62f5d60c9a41b8f6` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1da9b6e37f006dd349089dea21cb8261391593d5`; bsc `0xc1239ae2754782213c6ecf3340522a9347c9a52c` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1fa6b41708bcb6f554d1f9424288d4a5a42ba065`; bsc `0xf4fa698a7f748f5157c5b36aef1bd91ac1481fd5` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x21f126eb7229227fe4de2cfc9deaa9392cb1dbf0`; bsc `0xb3431dee53d3b8cadd66cff9b806d3a33b13545a` | ⚠️ Unaudited |
| MoMoProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x2873d94d21efa8af064b02174413966b357c69e7` | ⚠️ Unaudited |
| MoMoProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-389090 | 2 deployments: bsc `0x295f68795e21f8c8b03038317b507124c13d2741`; bsc `0x98387108842a7cfc7ba23e080030351f6ea68ac0` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x337f7eb0089d858fec7628c88ebfba50361b86fd`; bsc `0x7b4e53126316db92e0faefd1886b4bf988c627c9` | ⚠️ Unaudited |
| MoMoProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-389091 | 2 deployments: bsc `0x3bd6a582698eccf6822db08141818a1a8512c68d`; bsc `0xa9ffb469b2a78a1135dda9d07601fa0f4c068f65` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x41399f42e5d1025af8aedb85d5b9dbd29dad0233`; bsc `0x689b1fccf5b8e6f64b9f0e10be1bfba3039430ba` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 6 deployments: bsc `0x42d06a7147ff1f190f868eaf20c786570fe054ef`; bsc `0x43a70164db8d1265af5c7b5f9447bc7c23b5ab3b`; bsc `0x65d75249438fdc082515e3f3ffe12908f7a5d524`; bsc `0x933fd628beb6dd6011749aab4f4e14391dc646b0`; bsc `0xa0cd00d78a3bfffd7471ab472f9ce6aa1190e373`; bsc `0xbf410608bd893fcfa6991e4518026ec37ca9aa69` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x44024d67596adb0064c5860d50e8aca98698908b`; bsc `0xa66ed7aeb38ca1cb063ad3fdcca351de2d3e17e0` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 15 deployments: bsc `0x44dbf8386bbb03bec1ee1018b77a6bf498498e4d`; bsc `0x4e04ff28c53fde50cb2549a73c34167dc77ad72c`; bsc `0x53cae0de09b7927a8b5dba6599cc684362be06b2`; bsc `0x60eff1c79b70333b7183cd9be108c173cc37e9bd`; bsc `0x62d6e55c1045a1a2866ba3310e1c01d17f8344c9`; bsc `0x6d991bea6b4581d319300f6ea52a20029b0cd362`; bsc `0x70ac5068237aa52b0a29eeb3c55630223fd5907f`; bsc `0x720545a6d21c9918546ff6b23fcf6993ecfb865e`; bsc `0x7f456009bc63698702f8b3542904b23c86cdcb37`; bsc `0x8f2e24c4ad66e2acdb75602532e3676f8bba1cb5`; bsc `0x9b649f50e26b3309105ccbb68f66f09c1ea71608`; bsc `0xa1f55a105cef8f466596b0ddeb24d811747fe390`; bsc `0xacb8c5d0768c27e7b0d85a11c6a943607166b485`; bsc `0xed2067cb6e54a08b8d29af7ef221f9debb37a983`; bsc `0xf573de959513b0dec9c3523252e1d23261fd1244` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | bsc | n/a | 9 deployments: bsc `0x4cad08ca7a8bab80ceda046de39c042a9cc59c3f`; bsc `0x63e760960333931fc75eabb0860a00991f21d91f`; bsc `0x9377d04f61af8ab51bbc4a03495e3dcaacc59249`; bsc `0xc9c71db791fae54f19002341e988dd56d4b5cf42`; bsc `0xcaf6129064d6663ea559785046df3786e96d0ab3`; bsc `0xd03fd9197c55ecd06cb6fbd8b5e554c36674126e`; bsc `0xd5576f705566bd6a4ada6440df980d8f7fccb55a`; bsc `0xe870bd9929298821e7fc400b0e83bca2a4a2aa82`; bsc `0xf03eafef2dd2061ec2d1f541b4700c66793431c5` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x4eededfe89dad70ab8cbf70e4dd140ff8e6e8ce5`; bsc `0xdb2016810eb29f197777b1b0d0276378579ef302` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x50df9f33a893f74d9cff8a5dd097c8ece72a3957` | ⚠️ Unaudited |
| MoMoProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x529e2a515ce4499c41b23102e56e45025e393757` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x56d5306e5bcd7097c8ab4f67d7d5736b5c5b8273`; bsc `0xf91d6e71f6d9e6dbffe92597ce0fdd76058c49a7` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x596b4d1d1205ba3b8b19f883db7ac0de540c25a9`; bsc `0x99aed0004426a00f10b5278d7cd3c09d4bb5af7f` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5c88c9d558403046a293b78399487811c0c19f8e`; bsc `0x9c9a07b1e228d1472f4c17e8ed2831a07b821a35` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5cc9af3deaac89764eb98b0513e8d938d90b073d`; bsc `0x697255b2541bd4372ce7b8d8a4ea0e88e32832c9` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | bsc | n/a | 6 deployments: bsc `0x5ce192da02391eb9755e7eba10878a37f206fd58`; bsc `0x7cd4719482fedf15a58757734a88d95ac61f4cba`; bsc `0x858d89d002443a996ea510b40026041f607aa926`; bsc `0x918530a73c03e7e7024e9f8325618869a32cd8a1`; bsc `0xe8ed0bf5efef4d0f4fe3c7af8f48daed5e756c84`; bsc `0xe90dace4335a3c28cde458a468b89def0c8904eb` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5e7eb57b163b78e93608e773e0f4a88a55d7c28f`; bsc `0xb6ac38a06cb4fc37326f8a6e132046a709c6487d` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x5fb3035d07e5d0e1d8efbc5ae5b7546c15173035`; bsc `0xe00592387a9b92c0e9155d04a82da873261110e6` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6641b6a6ae72d97e9156aaa70882b1e2ed2c4478`; bsc `0x9cfa26eb210446fffd248e6c048f11b51ba61507` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6a0292c09c2288518145aa7630d905873a47f5e6`; bsc `0xae2066f7a92c9e32eccf31bf42819f9445d5070c` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6b7a2c06826599d7cb1d993b5557f14e7970c791`; bsc `0x77303e4986bd95d878f7519357010b91868727d7` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x6cbbc4c7256e68ce52e88984de605c5b4ff59481`; bsc `0xed8711feff83b446158259981fd97645856e82a5` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x70d4697a08b6b056aa7bd60aeacef03c69986a63`; bsc `0xaec271a66feb3d47bdab54dc38c36231657b007b` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x763ace8b98e0dc058d935784c601049cb1a001a5`; bsc `0xeb0020a4156b2aebf854b873c55ba262d7fad5bb` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8198915fa61b45b41bd3ca2dc4e8c68ecadb54c3`; bsc `0xfae911aa353e598908dd2cfd6e88e35de588974f` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x819e97c7da2c784403b790121304db9e6a038de9`; bsc `0xd24216ebcebffb938d815f62413de885519b2b08` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x868f91588e4890f5e03f27b7ede7183be2e942e0`; bsc `0xf7c5b301a7a6c606abce9b810c95b487c12edf47` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x886224d26b235e827958645657f3881ac5cbdf9f`; bsc `0xa008a021dc60ef928e381d76e8bdb74014635746` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8e2133a143adfb99ea4fdeb099243ad7a754463c`; bsc `0xcb0cffc2b12739d4be791b8af7fbf49bc1d6a8c2` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x8e58d72f10f890d35ec10395d4e19998d6e9e9a0`; bsc `0xae5f14a9aed2b56121fb964a84a9dff114296563` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x91a30ec9205b95eedc439653b65577b15dca689e`; bsc `0xd9d81db1ea6a2e373f2ddf807aab4f12c5d8d2e0` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x970093b4167261985621e6f2dc738d2e78ce6ac2`; bsc `0xc5744a8d5c2b5ed003c6776dc722ff7a8f8d012a` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xa11564852273d2892d3e90277466285eab8ba0ae`; bsc `0xb3e968ba01a78ea489292130bcf8bbe6a64be648` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xb4986e78ebbc09badf2d1c200c6300aace6c2d4f`; bsc `0xbe2cbace0a7d3c2009eb7c70ccf006c3016cde8a` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xbd9021329aad8ea54f84312dbae88942c5296aa0`; bsc `0xdd4495fedc8e0c7479fba5115fc18b6a577fc495` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc6b9dd6418b1143dc4861151d8ee7620f0163037`; bsc `0xe42e3797b31fc6c7262614e826e4fee41b467a9c` | ⚠️ Unaudited |
| MoMoProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xdce839ff074c647ec41f5687d698830940c769d7`; bsc `0xe3907caae2d46d8eaf681931db4a56ea6f7861e6` | ⚠️ Unaudited |
| MoMoSetting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bb4d72db22dc38958696bd5db9273f142bbb217` | ⚠️ Unaudited |
| PancakePair | unknown | project_anchor | own_supporting | 0 | bsc | unit-389089 | `0x8fa59693458289914db0097f5f366d771b7a7c3f` | ⚠️ Unaudited |
| V6LotteryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5a9bc68af1f904a114f35fda13c24ce2edc3c6a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (245)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x7aa0e649d5b40872705b55f350bd315282fbcced) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x592e9ef115096f0121202b2a5e30cd5aa228d117`; bsc `0x7aa0e649d5b40872705b55f350bd315282fbcced` | ❓ Unverified |
| Proxy (impl: 0xdb1c49103f55f67fed5a5a30b0e0c7472b8243eb) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x91a9864606246680a6d53b2a2ba975b475d57358`; bsc `0xdb1c49103f55f67fed5a5a30b0e0c7472b8243eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00d805fb9779cb332252c6dce447b8f374039e04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x013875e96ce60d0f2307128c58246b6f2bf00cfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01bfac2b420c8fadc11cee9d8bde9cb46285818d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02d33b88cd99e4482608b6b85c4af734ca28d4da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0369c9a9af82f9bdb0fa76ce940198324d237730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03c50e548522c8ce318afb4468658562a55892eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03ffe1a69ef0d350dbea81d6108c1f24e928427e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04145a4329537f898f59f3e0061d6a914f49570e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x070cff2777fd2f6d0272852c25d5410df7841909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07c0f22817d31cc8a7541e91409e4885cb21eb63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x081c2827a9cf452d32062ce6dfe2d48bb6192e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08b97fa44a404970a3e882282c01ad59ca6849cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b5a22bbd5d7b9998afed837af4e10dd3673aa34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b9e101aa2c3853f4fde0958a4773aa5e3c085c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0beb87cbf27e2f6182e32050a35a65fa954d7084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d7d5662dfa1926455965184ba12c1a0aa96570d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e6826298d337f9a024b2ad826ad1759fdeaae69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x114495e7adfa0624782975b13f1960098e7ad3ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1238d683f9b79a5086acd25237f38bbb1cd1e41e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1240aab72ed872be9b11868cb07dc97f3043efc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13469b6c2fece63ba1c85c0dc86ad59f742fd8c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13d570e43c3eb5afba8b6782264dae1766bc9baa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13e523a3f54fe1b9d2e3fa85f07a15a7199a6c08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14e6ab4c17e76d00f8f0a5b192fd30cc19ffed32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1522c2c9de79bdfc7ee4b7a79017c3325f218d42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x152b9359b5aaee148855922347d33acdf7f2069d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x19842db7f44cf7d9711f760c99de666690106101`; bsc `0x8b50d3e56e627322364709319261794c60401d7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a569bd9b7f05dfb145c7eb0fe0662c318ece4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d33e4b666d984daf247d5243cd117c68052f8a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1dd0159d1d4c1985cc8f817fa0c929283c62fd30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x201d2c4cc971e3c709aefb7d7c77dded58fcd53b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x231caff642ff0101cfb91172f12a843f45e2e8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24a82bcce61752190944a636986d7787d8944b8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x26df4cff13ed515f6af3b218b854898b82946c06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2880fc5e566759f31da220bf2f4e34a43ed85a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x28cc562051f56b2a21bd325b7a755e69b397c102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29838dffba6a4af09376fe166497566fabb0b954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b5d04fa3f983b105789a18f7c87f440a57436a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e403d7e9d9f9b0e886cfd510bf1dd0695740f36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e6bca5a2d4b20c31ada7423fe211b1b485a0fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f9df09d093c7dc1334e05a6d536adc61a964d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fda03f09990a32572d4578da1984ab4ce89235c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3076f20ab8ea0cf1748bddd33f549e324098be23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31d3fb9610e51a7f431b840ab550522508ee497e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3313492131ea83cc430463160d6909adf62f65eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3327f5322709953e798ac0645be6ccc6b821a360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3333f8ac97bfae8506a8cefab00929691c421ff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3384d98664af99c24bdb5b3f8dc0535c6142d6b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x340ce58f976f11f092a291ae820885dc9501d7d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35b470888972d86591ee540ff4265718388a5d26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37c668112369e3e90c4e905b0d901c3a5c3c9f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38023e6c9732dab6a794c3f471685c7cd0361d45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38150344c7006ec4d6a7062f5fe92ea7a489a0ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x381850bceb387b23e226337e5a6f98df07f4a070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x38332f8e2282326a1cbd1414e00ef5c70cd257e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3978fc50c6912a35423d2eb6ae5ad67d01aae081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x399bf8005c471043e33825ba7ae9f1036d0800b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a5128b0840af59a78dad9d21e472fb55ca8da0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c6fb97add9b4d30610c011e7a19518bff4440d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d0c8bdea5119d1426fac84475f58e124996ecc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d42dd82a5d388e4b798dd068479c9c6aa41417a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d634a1580a7fe7fc1f6d4f67c217473c8bff213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3db32cb2d8b7c23a36e3086ff065443a2ddeb98f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fdef067a53fa27bcde19ce1417ca4ce20078c92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40221c373e28239188b5293d46fecada2cf0bded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43bb7596921971cb8fbc7582f517516b4240f493` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44abd171035342e5623e89dd9f4a0aaf4c884837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45469a3e0913bf2b8176136651b8a7931e1a688b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4589618c25ea0d5bba3fa449f612a5838ddac076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x458d739415b7fd911195d62bbc0cee4c39e4da8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x471c1a9e80f3a11ecf3387dccc557115a0f5f923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4803a8abf271f957eafc61e59f79c5443a801240` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x488c3a6d02cfad4faec48a63c317626cfc2d41e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48e2c4d841525fa97a1f0096fe16fa3d01f542ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49cfd2cacbe4bbf59a376409d0529e2128f5cc2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a68719df7e7481ff41bcab7dd64021783a597e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a6f39147ababef94b319cce53ca265d2f968d12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4aedbc4c2998c48b6bb13699c466633cc736f263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f41c640d8983ef6f6ddfea437a30bfa8a7562c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x507b0a1080d3980f059da2a06c207c21c97d72f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x509ef0de13383a62ab13b423046290b56be5f76c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5197a1feaf4557d89a3da0cccccd5f4f089aa8f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x527e9ca8a10477a9d3bcb5c401dc823cd3c796a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52d7c762dff1eee73ff134209d9badac1ffa47c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x533b68498760cc0e062648f3f92abd59817dac80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53fca3ed8b8f3c81af82ec15e079eb8925d28e3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55cf2a0f24ab328f10f1969d7c02d62b653edcd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x560003c3984b03bfe9dff525f2ac7bf00a8cc8f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56be2caf7562260668369dfc46538f704989f153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59020a171b1fbb62e7a001ec77524c632fa27390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59f3075dc464c99058d87011e10c06bd1e72039e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5aa7fde43763d7e13f7f0af16b3367235bff1a62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b2c669953f23308189ea14b20828a06bb19b298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b54c4fe40f97d668bf557e777e0548553750e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b69ffb7ae90cb9c9731e2465769b88dca67b648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b7a5882868c4f9b5680098cb480241b7d3f9b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c445f901b1db6a37905d7ba4514d83343399bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c655095cf6fc4f413e0a214b8e5e6b7c81930cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dcc3bee18146e2115d5755ee1cbaa5fbcdf4bb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dd48fd5307a2b873fc6edaf6ff1f66d5721ed1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5df1bfbaae5122d13ca2effc5af64c85fb243d72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ebb974f0ea2b088ef12a6e2a67cd282cfbdf2f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6004cfb59739099359b73a53e33969ec0da61c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x614cb72c1382e5fa91bb349696df405831da8fab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61fdb8f0a166f0945c4c88cba7b15281acd6d204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62e65fac1d4ab4a2d92c9a5e32317d1cd6517d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6767538392a6fcb52d069dfaa3d696b7ebbc3f7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a449ac5cc7e40c4a0754fde547023ed3fa5db84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ad39885d5db522cc0159696a0e53bbf5ccd796c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c194438a917780b31e502ddfd3695849047b7c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c8675be7c86c0ffcd1e8d35589bf70783cca75d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ca9cecbb59eb605db75450dcc218985e51fc0d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d3849122048fef59b4efc9fd5e9c0552a129781` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6df15c4b290120c3fc2cc815358a3cdaa86930fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ff6530a1dc938c6625c2bab98bea6296a2802bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70d1dba9e7658272f27dc03859ef24888b2a6090` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71ce10628c0cc09a43562972b8f1e97c3ae32368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7204b248915b54179f295d22704295a67c36d981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x729d34b5e081103a5448c84df8c7a1ddccb9c818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72b4386c293a676d000d067dbdc96e09bfa84d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73f220341c8dc0a1b619bed7505ddb30bdec1f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74801810d28f6521d25a85e741b98647e6ed36d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x76352ee1df4afe4e66b2bd07e05d2ed88291ba53`; bsc `0xdc444e7b5f759c17b26ef06cb7e224f643a48f6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77e7cb3652bb2a8e1f8b98600373eaf641d727cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x785c3df50554fcdc31d1999477d60265a93fe60e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x797bfe164a79f0e6f0fa16fd35c9940e772ce239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79d6db8f037697f69c9a698176e321e0a4d40870` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7af49d126141ce863fe551d2274dd323e2e47a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c902a9eda196a8c0137b8ba5d3a962fc735674b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d742bff99fd616bdd3e7845713eae1e8938e471` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d9ffbffce22ca084963104ea0002fe291e6b3f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7db762b620f1e1a4a9b2b248e724d0ad4dd53e46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7dc56014f474b19be7468be9ba2e5421a9f98d76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7dd1c416f1f0384e457764ff6951b0ea3e8c5c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f750892198c150f1915a24f76a0a2954e4a04b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8034fc7af5669950d28d3085c7bcfed18126f98a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81f77631576ff1187f9f3dd16c62493e53b49725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83edc16f600b98b39614ab0f558388d1e2e609bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8415137883c8c490b494f5e6099ab7b32bac613b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84be4584d8220cefb325bbde76a4df7747d49924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85d1d8b4b272f9e5bbe0dd79a89ddfdc033bd0c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x862d09c5ee70337dc88a7f4e2a1f4bfcb55d3e38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88bcda2a54ba56e3fc4de7347a4d6f077aa7257b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b5f582f9004532e2fb06855e00a30b589a7bd41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ba18674c9beca14102a4a8a90f88bee9c97b47f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c410d6578634d650d20b5b403fa8e8d58e764d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8dd8b6631ff44790b3c752098c966d65892bb424` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e9171037fa4f7bef61865192c7b9342f78131a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8eb23d9d0552b9ac6ad51434030b7a7335a58956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f569008d23e1f0c9b1143bbbf01eac0dec09442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8fe4920fb9ef3244a2cf8b9efdcd1f6ea8d78407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x90e1bc27bf1a26e93419427968dc652661ca5df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91739ace0fa856f41b0a91205901f8268f2ab107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9463dc80cfa4d26784cbc85d5ed21e24b3e9cf51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94ddff5cb6e9290d39b89fa3b68b47b85a222edd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96252d83dc3eabe1284250aedd485d1462172ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97aba8a3acb470ca9a4e01d27cdcfbc87cddbc94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x993e811b6ec826ce857fcd4d8d5a78917581452c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b059c955afae75f3c85097016122807f3dc3fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c7cbafdc4ec09b25d3a0464fc4590a34a9026a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d8ded3b841fd4dbd69fe021ba9e472bc9294502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e13d34a417271151d2d1f747665a27f1ca542e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e287b4536f6537b5112ae564c1eacb0a37ddbaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e9c74a62ebb1c41d44918a8e748323ab0b9befe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ec4f220c044ab96ba6f5d382bc03f4267926b2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f613fb793230804b38f176ea89f997000f12665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2a9ba50fd6158a4d6bac31e78dd09924bb4ee41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa524c830c0211f98b1d91add629b38718dcb41d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa594fd44aabfcf4b85927d2f356776c4af20ba4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa75612c0197b74bce2f3f59471c6a987cd8a91d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaaa33537f4d9bd79698e52ba01e6074defa9162a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab07dc516251b3fa21fd386eaa8b03e15dc8ae3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab1a265c2275383561b504e69c5b6c72c1ac55c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab288325b35e8051c604653b766412ad4a4499ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae709513455b338115d5ca2ec63d20b5a3056b31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf72394095832535429bd13511c148c445242152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb10d87ff7d59b6f90b97999506004ee66556dd6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb14de6a26e6dbd1f4a78199574ad21fe11843129` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1e02b8300b9fbfb93cab37f1e9b2e9c2fa08755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3d0e2a8f43a8d02b148f9ff7b94f65b090bd212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4848c64db8849fe9494e29e1567f2e8e2cb5b84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4a6c585da0d8a6355c30b0a428a4670fa90236d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4e5f52dfff8285eb48323eb4d3e828b5798bed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba19bade360a87fcac4e2c2c73472ed7e7814eb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbaab46a0ed6a4f4213fb002563c3f19f3323e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbf98ca37c2caf2c76cea5caf81e98038236ea9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc0211e132999af9851f20bcebc37647492d4f2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc28a6c4d5e443a267cc715718ef1f012079a8f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd63ce9ccfc478d980f4a9af18f701896db9cd8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe363cca482e0e5e3865302ceab098d2e6bdcf51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbea9f532d9ede7f3ba9c1f053d5a7d0b1e3b2668` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf5cfa9c1b5b2fa036df47c033b169ecd4fbbdd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0906acbd2e12ea5af80104042c0df90f1a9516b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0c210ae321bb4d5d503eaf041cd6827760bab25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xc1b7a37a50f5099fb1bd893c2f76f56847411e9e`; bsc `0xeefb223eda152dd940205d4c3455a0541fd5555d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc224f1b1e6de0c1b19c119b7355fa878b136d18e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc26857a5f3ccaec04faee78a0b16b9ab46b12cd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2e7a86f109a5b17bfe6c7561a8a9adc31cf595a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc365c66d2e7cf3e845e3e9d333339d859ddcaf91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4adc7ab5b66991c5f530ed4518f4f5b4343c1a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5f5f9695d8ba219257e30609ba1ad0c1ccfdf79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc61d85a988f5d8a10666069de802c757288ef553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc667e8ac55590d140957df005ca0c2ef69698270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7f2e224aa9adbd797a9851a0098761034ae18a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7f5dd9453ef07947df9a311a08f195c931ab873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfc65028ec08bfc4b3afc41e6e95220596bfe1ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2563f3624a418a0651e1ea2383db61ef3728aa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd529c40dfd080c006ac48123bdf7fd859b49be6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd943c568e6917d6e5bcc9eae5ebdfe28f11d5520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdad96828e2838f8c45e12315fba5e08878e16af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdadab5a87dd135c083760724984a1c34d368540a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb6c8f9c9fc0469733ec87ac0caf63d5a6877eeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb804071e8b04e65d70a6299f3a30f7d9d721219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbb812057abfec8fd4adee51cdf17c09cf544d8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdceb42fce7e9ec7724d89e5f07fba650715f69d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde2950434bf94c696daf9ac0e0de6dab9d74f045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdec390c77dcfdfa786a2ba4ba651282c45b17503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf3d38b70519f86497558822f296353bad4aa786` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe26850f4d4be37417e88db7efcbf689f5fddb92d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe39b3fb518a7892e707c646388d170d3dd7831ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3d82fb8696017a475395c4b555b4245e647b781` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4f2ff19617f08648df075560304edc1ebcc7d5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6fb68fa09cbd4e12911090c3661812e764a0bb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7b6caa4f41aa53220bddd2b93031d0f1870c3e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe821638580c4026bd13077eaded6ac9c654be028` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe86d77ff0c87e7dedeb2da3f97cfd62c36902542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb68c1fb86f91633f8d03cdb6d7d89abb14034d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed100a3d5ca907234389241f4012f39ff4eec022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef178b1ae570bf4bf7dd2ca3e319b1548ef30136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef28e783e741e1f41bc2deedf99b4216f1d01c2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf18e6d807a5df8c97257a71c4ad49094966663fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf30d67da3f8bab054b148eba85efffb3114b8541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3910d184818e54a70ac8eb346b5f2a330383520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3a9bf73cddf1c9693d264ac1395e2029ce20f40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3e3b2d2b24303c5c5ae348c2df08e951c7f6992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3fa56670f6dd1ed5c824f9f6465ba2423c37ee8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5a4d833aad579f289656f16a47cf8c82ea5e860` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6da382573a9ff0e1f9ba67c95e47afd04c863f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf780df994916a300d7de3496b9c558b26372ccc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf90ba175cc1f4f4256e64e5a854af764f03736cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb725c2aef3c5a2b73dd703bcb17dd50abc396d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffe80182caf4d04b12f6b5e8f0a8683086a0a0cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389087 | `0xda661fa59320b808c5a6d23579fcfedf1fd3cf36` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/mobox](https://skynet.certik.com/projects/mobox) | CertiK | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2864] skynet.certik.com/projects/mobox — no match: The provided text is a CertiK Skynet project insight page, not an audit report. It mentions an audit delivered on 5/8/2021 but does not list any contracts in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x3203c9e46ca618c8c1ce5dc67e7e9d75f5da2377` | MoboxToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3bd6a582698eccf6822db08141818a1a8512c68d` | MoMoProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8fa59693458289914db0097f5f366d771b7a7c3f` | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 280 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [2864] skynet.certik.com/projects/mobox

Fork inheritance lineage and inherited audits are included when available.
